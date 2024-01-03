
Directions shortest_path_direc(Map* M, int startGridx, int startGridy, int endGridx, int endGridy) {


static int8_t queue_x[QUEUE_SIZE];
static int8_t queue_y[QUEUE_SIZE];
static    uint16_t front;
static    uint16_t end;

    static Directions steped[MAX_WALL_NUM_H][MAX_WALL_NUM_W];
    memset(steped, 0, sizeof(steped)); // set as NONE;

    front = end = 0;
    queue_x[end] = startGridx;
    queue_y[end] = startGridy;
    steped[startGridy][startGridx] = 1; /*    for dummy just means that startGrid have been visited.    */ 

    end++;

    for (size_t i = 0; i < 4; i++) {
        int8_t x = queue_x[front] + four_probe[i][0];
        int8_t y = queue_y[front] + four_probe[i][1];
        if (is_wall_block(M, x, y) || steped[y][x])
            continue;
        queue_x[end] = x;
        queue_y[end] = y;
        switch (i) {
            case 0:
                steped[y][x] = RIGHT;
                break;
            case 1:
                steped[y][x] = DOWN;
                break;
            case 2:
                steped[y][x] = LEFT;
                break;
            case 3:
                steped[y][x] = UP;
                break;
            default:
                break;
        }
        end++;
    }
    front++;

    while (front != end && steped[endGridy][endGridx] == NONE) {

        for (size_t i = 0; i < 4; i++) {
            int8_t x = queue_x[front] + four_probe[i][0];
            int8_t y = queue_y[front] + four_probe[i][1];
            if (is_wall_block(M, x, y) || steped[y][x])
                continue;
            queue_x[end] = x;
            queue_y[end] = y;
            steped[y][x] = steped[queue_y[front]][queue_x[front]];
            end++;
        }
        front++;
    }
    return steped[endGridy][endGridx];
}
