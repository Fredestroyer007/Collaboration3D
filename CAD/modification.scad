/*
    FILE   : modification.scad
    
    AUTHOR : Nicolas H.-P. De Coster (Vigon) <ndcoster@meteo.be>
    
    DATE   : 2020-03-20
    
    LICENSE : Creative Commons Attribution-NonCommercial-ShareAlike 3.0 Unported [CC BY-NC-SA 3.0](https://creativecommons.org/licenses/by-nc-sa/3.0/).
    
    CONTRIBUTORS : 
     - Adrien Centonze (Adricen) <adrien.centonze@love-open-design.com> : scad support for pins
     - Pierre Hilson (zorlgups) <zorglups.mailing@gmail.com> : Hooks closure parameters avoid the elastic band to come out so easily
     - Frédéric Larochelle (Collaboration3D) <admin@collaboration3d.ca> : User interface customization and 4.25" North American hole spacing
     
    VERSION NOTES:
        - 3.5 : 2020-04-02 Collaboration3D contribution : customization of the user interface, remove the hexagonal holes for faster print time, 4.25" North American hole spacing and update default settings
        - 3.4 : corrected position/dimensions for Zorglups contribution
        - 3.3 : Zorglups contribution : Enhanced hook fence generation to avoid hook weakness + dash correction where arches meet
        - 3.2 : Adricen contribution : adding support for pins in scad (sup_adri parameter)
        - 3.1 : (printing) layer height as main parameter for stacked distance and piece height automatic rounding (better slicing/printing results with thick layers)
        - 3.0 : 2020-03-25 : automatic calculation no matter the number of pins, placing them properly on circle or temple depending on fix_dist parameter
        - 2.3 : corrected bug : proper hook support
        - 2.1 : corrected bug : no more parity issue with dash line
        - 2.0 : stackable version, automatically calculated dashet support
        - 1.1 : lowered pins (limiting support)
        - 1.0 : added central pin (was avoided previously because more complex punch in transaprent foil but asked explicitely by St Pierre Hospital, thus added)
        - 0.2 : adapted pins size and position
        - 0.1 : second draft : added pins for foil clipping
        - 0.0 : first draft : clipping system
//*/

//Customizer

//Nombre de visière à imprimer une par dessus les autres - Number of shield stack on top of each other
Stack = 3;

//Hauteur de couche d'impression de votre imprimante 3d (en mm) - Printing layer height of your 3d printer (in mm)
Height = 0.28;


/* [Hidden] */
//General params
n_stacked = Stack;    //vertical repeat
layer_h   = Height;  //printing layer height : will be used to adjust sizes so that they remain exact integer multiples of the layer height value. Piece height ([height]) and distance between stacked pieces ([stacked_d]) are the rounding targeted values.
stacked_d = 2*layer_h;  //distance between stacked pieces (better use integer multiple of your layer height)
e=0.01;           //general purpose "epsilon value" for better preview rendering (avoid artifacts)


//Dashes (support for stacking)
dash_l    = .8;    //dash length
dash_int  = 6;     //dash interval
sup_adri  = true; //set to "true", will add vertical supports under pins, (adricen contribution)

//Main parameters
out_d     = 115;  //inside diameter of outer ring
in_d      = 95;   //inside diameter of inner ring
approx_h  = 8;    //height of the module (approximative, will be adjusted to be an integer multiple value of layer_h)
sec       = 5;    //setback from joining branches
th        = 1.2;  //thickness of module (=0.4*3 or 0.6*2 for printing speed optimization)
hook_d    = 4;    //hooks diameter
hook_fence = .6; //fence width (the smaller, the better it holds the elastic bands)


//Fixing pins
fix_n    = 3;     //number of pins
fix_dist = 215.9; // distance between the extreme mounting pins
fix_d = 5.5; //diameter of the mounting pins
fix_h = 3.5;
fix_over = 1.2;


height = round(approx_h/layer_h)*layer_h;
echo("Height : ", height);
out_r = out_d/2;
in_r  = in_d/2;
hook_r = hook_d/2;
holes_d = height/2;
fix_r = fix_d/2;

for(i=[0:n_stacked-1]){
    
translate([0,0,i*(height+stacked_d)])
union(){

  structure(out_d, in_d, hook_d, height, th);

  arc_l = PI*(out_d+2*th)*3/4;
  fix_int = fix_dist/(fix_n-1);
  mid_pos = (fix_n-1)/2;
  alpha_int = 360*fix_int/(PI*(out_d+2*th));
  /*
  // Fixings
  */
  
  for(p = [0:fix_n-1]){
      pos_n = p-mid_pos;
      alpha = pos_n * alpha_int;
      if(alpha < -135){
        translate([(fix_dist-arc_l)/2,0,0])
          rotate([0,0,-135]){
            translate([0,0,height/2])
              rotate([-90,0,135])
              translate([0, 0, out_r ])
              fixing(d=fix_d, h=fix_h+th, over=fix_over);
          if(sup_adri){
            rotate([-90,0,135])
              translate([0, 0, out_r+4 ])
              rotate([90,0,0])
              supports(i);
        }
          }
      }
      else if(alpha > 135){
        translate([0,(fix_dist-arc_l)/2,0])
          rotate([0,0,135]){
            translate([0,0,height/2])
              rotate([-90,0,135])
              translate([0, 0, out_r ])
              fixing(d=fix_d, h=fix_h+th, over=fix_over);
            if(sup_adri){
              rotate([-90,0,135])
                translate([0, 0, out_r+4 ])
                rotate([90,0,0])
                supports(i);
            }
          }
      }
      else{
        rotate([0,0,alpha]){
          translate([0,0,height/2])
            rotate([-90,0,135])
            translate([0, 0, out_r ])
            fixing(d=fix_d, h=fix_h+th, over=fix_over);
          if(sup_adri){
            rotate([-90,0,135])
              translate([0, 0, out_r+4 ])
              rotate([90,0,0])
              supports(i);
          }
        }
      }
  }
/*
  %translate([out_r+th, (fix_dist-arc_l)/2,height/2])
    rotate([0,90,0])
      fixing(d=fix_d, h=fix_h, over=fix_over);
  %translate([(fix_dist-arc_l)/2,out_r+th,height/2])
    rotate([-90,0,0])
      fixing(d=fix_d, h=fix_h, over=fix_over);  
  */

    

}
//support
if(i != n_stacked-1){
  translate([0,0,i*(height+stacked_d)+height])
    structure(out_d, in_d, hook_d, stacked_d, th, isStruct=true);
}
}

/*////////////////
// M O D U L E S 
*/////////////////
module empty_cyl(in_d, th, h, dashed=false){
  difference(){
    cylinder(d=in_d+2*th, h=h);
    translate([0,0,-e])cylinder(d=in_d, h=h+2*e);
    if(dashed){
        circ = PI*(in_d+th/2);
        n_cube_dash = ceil(circ/dash_int);
        alpha = 360/n_cube_dash;
        for(i=[0:n_cube_dash-1]){
            rotate([0,0,i*alpha+30]) //+30 cheating to get proper hooks support (dirty but works)
            translate([in_d/2+th,0,h/2])
              cube([in_d/2+th+e, dash_int-dash_l, h+2*e], center=true);
        }
    }
  }
}

module temple(l,w,h,dashed=false){
  difference(){
    cube([l,w,h]);
    if(dashed){
      n_dash = ceil(l/dash_int);
      for(i=[0:n_dash]){
        translate([dash_l+dash_int*i,-e,-e])cube([dash_int-dash_l, w+2*e, h+2*e]);
      }
    }
  }
}

module arc3_4(in_d, th, h, dashed=false){
  difference(){
    empty_cyl(in_d, th, h, dashed=dashed);
    translate([0,0,-e])cube([in_d, in_d, h+2*e]);
  }
}

module clip(h,w,th,clip_solid){
  difference(){
    cube([w,h,clip_solid]);
    translate([th,th,-e/2])cube([th,h-2*th, clip_solid+e]);
    translate([w-2*th,th,-e/2])cube([th,h-2*th, clip_solid+e]);
    translate([th,h-2*th,-e/2])cube([w-2*th,th, clip_solid+e]);
    translate([3*th,2*th,-e/2])cube([th, h-5*th, clip_solid+e]);
    translate([3*th,th,-e/2])cube([w-6*th, th, clip_solid+e]);
    translate([3*th,2*th+(h-8*th)/3,-e/2])cube([w-6*th, th, clip_solid+e]);
    translate([3*th,2*th+2*((h-8*th)/3)+th,-e/2])cube([w-6*th, th, clip_solid+e]);
    translate([3*th,h-4*th,-e/2])cube([w-6*th, th, clip_solid+e]);
  }
    
}

module fixing(d, h, over){
    sph_d = d+2*over;
    cylinder(d=d, h=h-d/2, $fn=50);
    translate([0,0,h-d/2])difference(){
      sphere(d=sph_d, $fn=50);
    translate([0,0,-sph_d/2])cube([sph_d,sph_d,sph_d], center=true);
    }
}

module structure(out_d, in_d, hook_d, height, th, isStruct=false){
    out_r = out_d/2;
    in_r = in_d/2;
    hook_r = hook_d/2;
    arc_dist = 3*PI*in_d/4;
    n_holes = floor(arc_dist/height);
/*
// Arcs
*/
arc3_4(out_d, th, height, dashed=isStruct,$fn=100);
difference(){
  translate([out_r-in_r, out_r-in_r, 0])arc3_4(in_d, th, height, dashed=isStruct, $fn=100);
}

/*
// Temples
*/
translate([0, out_r, 0])
  temple(out_r+th-sec, th, height, dashed=isStruct);
translate([out_r+th, 0, 0])
  rotate([0,0,90])
  temple(out_r+th-sec, th, height, dashed=isStruct);

/*
// Hooks
*/
translate([hook_r+out_r+th,out_r-sec+th,0]){
    difference() {
        empty_cyl(hook_d, th, height, dashed=isStruct, $fn=30);
        translate([-hook_d/2-e,-hook_d,-e])
            cube([hook_fence, hook_d, height+2*e]);
    }
}
translate([out_r-sec+th, hook_r+out_r+th,0]){
    difference() {
        empty_cyl(hook_d, th, height, dashed=isStruct, $fn=30);
        translate([-hook_d,-hook_d/2-e,-e])
            cube([hook_d, hook_fence, height+2*e]);
    }
}

arc_l = PI*(out_d+2*th)*3/4;
}


/*
// Supports for fixings
// note : Adricen contribution
*/
module supports(iteration){
    if (iteration==0){
        cylinder(r1=th*2, r2=th, h=layer_h*3, $fn=16 );
        cylinder(d=th*1.5, h=height/4, $fn=6);
        translate([0,0, height-height/7.5]){
            translate([0,0, -layer_h*2])
                cylinder(d=th*1.5, h=height/2+layer_h*1.5, $fn=6);
            }
        } else if( iteration !=0 && iteration !=n_stacked-1) {
            translate([0,0, height-height/7.5]){
                translate([0,0, -layer_h*2])
                    cylinder(d=th*1.5, h=height/2+layer_h*1.5, $fn=6);
                }
            }
}
