var up, down, left, right;

if (round(x) mod grid_size == 0 && round(y) mod grid_size == 0) {
    left = keyboard_check(vk_left);
    right = keyboard_check(vk_right);
    up = keyboard_check(vk_up);
    down = keyboard_check(vk_down);

    velv = (down - up) * vel;
    velh = (right - left) * vel;

    if (velh != 0 && velv != 0) {
        velv = 0;  
    }

    if (place_meeting(x + sign(velh) * grid_size, y, obj_block)) {
        velh = 0;
    }

    if (place_meeting(x, y + sign(velv) * grid_size, obj_block)) {
        velv = 0;
    }
}

 
x += velh;
y +=velv;