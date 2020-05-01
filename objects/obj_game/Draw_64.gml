draw_set_font(fnt_arial);

draw_set_color(c_aqua);

var targets=instance_number(obj_target);

if (targets>0){
	draw_text(10,10,"Target left: "+string(targets));
}else{
	draw_text(10,10,"You win! Press R to restart!");
}


