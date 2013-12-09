// This path alters the world path. Argument 0 specifies whether to start the path or not

 
    /*if(jump_timer == 0 && keyboard_check(vk_space))
    {
        //show_message("pow")
        world_path_length = 5
    }
    else
        world_path_length = 3*/
    
    storePathSpeed = path_speed
    
    path_end()
        
    should_be_x = obj_world.x + lengthdir_x(WORLD_RADIUS + 16, point_direction(obj_world.x,obj_world.y,x,y))
    should_be_y = obj_world.y + lengthdir_y(WORLD_RADIUS + 16, point_direction(obj_world.x,obj_world.y,x,y))
    
    path_change_point(obj_world.associated_path,2,
                        x+lengthdir_x(10,point_direction(obj_world.x,obj_world.y,should_be_x,should_be_y) + 90 + ((180 * world_path_length)/(WORLD_RADIUS + 16))),
                        y+lengthdir_y(10,point_direction(obj_world.x,obj_world.y,should_be_x,should_be_y) + 90 + ((180 * world_path_length)/(WORLD_RADIUS + 16))),
                        100)

    path_change_point(obj_world.associated_path,1,should_be_x,should_be_y,100)
                        
    path_change_point(obj_world.associated_path,0,
                        x+lengthdir_x(10,point_direction(obj_world.x,obj_world.y,should_be_x,should_be_y) - 90 - ((180 * world_path_length)/(WORLD_RADIUS + 16))),
                        y+lengthdir_y(10,point_direction(obj_world.x,obj_world.y,should_be_x,should_be_y) - 90 - ((180 * world_path_length)/(WORLD_RADIUS + 16))),
                        100) // we ensure that the start of the path is on the right to remain consistent with the other paths
    
    if (argument0 == 1)
    {
        x = should_be_x
        y = should_be_y
        
        movement_path = obj_world.associated_path
        path_start(obj_world.associated_path,storePathSpeed,2,true)
    
        path_position = .25
    }
