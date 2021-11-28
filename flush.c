#include "neslib.h"

#include "flush.h"

#include "screens/01_flush.h"
#include "screens/02_present.h"
#include "screens/03_flush_family_home.h"
#include "screens/04_in_house.h"
#include "screens/04-01_son_talk.h"
#include "screens/04-02_mom_talk.h"
#include "screens/04-03_son_talk.h"
#include "screens/05_later_on_the_road.h"
#include "screens/06_road1.h"
#include "screens/06_road2.h"
#include "screens/07_arrived_in_thoissey.h"
#include "screens/08_thoissey.h"
#include "screens/09_vip_competitions.h"
#include "screens/10_greets.h"
#include "screens/11_end.h"
#include "palettes.h"


#define WAIT_FRAME              150
#define BK_FLUSH                0
#define BK_PRESENT              1
#define BK_HOME                 2
#define BK_IN_HOUSE             3
#define BK_LTR_ROAD             4
#define BK_ON_ROAD_1            5
#define BK_ARRIVED_THOISSEY     6
#define BK_THOISSEY             7
#define BK_COMPETITIONS         8
#define BK_GREETS               9
#define BK_END                  10

#define BANK_GENERAL            0
#define BANK_ROAD               1
#define BANK_THOISSEY           2

static volatile unsigned char *bank_switch = (unsigned char *) 0x8000;

static const unsigned char *son_mom_dialog[] = {
        n01_son_talk,
        n02_mom_talk,
        n03_son_talk
};


scene_t scene[] = {
    {
        scn_flush_init,
        scn_flush_update,
        scn_flush_deinit
    },
    {
        scn_present_init,
        scn_present_update,
        scn_present_deinit
    },
    {
        scn_home_init,
        scn_home_update,
        scn_home_deinit
    },
    {
        scn_in_house_init,
        scn_in_house_update,
        scn_in_house_deinit
    },
    {
        scn_ltr_road_init,
        scn_ltr_road_update,
        scn_ltr_road_deinit
    },
    {
        scn_on_road_init,
        scn_on_road_update,
        scn_on_road_deinit
    },
    {
        scn_arrived_thoissey_init,
        scn_arrived_thoissey_update,
        scn_arrived_thoissey_deinit
    },
    {
        scn_thoissey_init,
        scn_thoissey_update,
        scn_thoissey_deinit
    },
    {
        scn_competitions_init,
        scn_competitions_update,
        scn_competitions_deinit
    },
    {
        scn_greets_init,
        scn_greets_update,
        scn_greets_deinit
    },
    {
        scn_end_init,
        scn_end_update,
        scn_end_deinit
    }
};

static background_t background[] = {
    {
        paletteScreen,
        flush
    },
    {
        paletteScreen,
        present
    },
    {
        paletteHome,
        home
    },
    {
        paletteScreen,
        in_house
    },
    {
        paletteScreen,
        later_on_the_road
    },
    {
        paletteRoad,
        road1
    },
    {
        paletteScreen,
        arrived_in_thoissey
    },
    {
        paletteThoissey,
        thoissey
    },
    {
        paletteScreen,
        vip_competitions
    },
    {
        paletteScreen,
        greets
    },
    {
        paletteScreen,
        end
    }
};

static unsigned char i;
static int wait_frame;
static unsigned char index_scene;
static unsigned char mother_x;
static unsigned char mother_y;
static unsigned char son_x;
static unsigned char son_y;

static unsigned char mother_speed=1;
static unsigned char mother_enabled=1;
static unsigned char son_speed=1;
static unsigned char son_enabled=1;
static unsigned char scn_on_road_finished=0;



void fade_spr_in(const unsigned char *pal)
{
    unsigned int i;
    for (i=0 ; i < 16 ; i++) {
        ppu_waitnmi();
        if (!(i & 3)) {
            pal_fade_to_spr(pal);
        }
    }
}
void fade_bg_in(const unsigned char *pal)
{
    unsigned int i;
    for (i=0 ; i < 16 ; i++) {
        ppu_waitnmi();
        if (!(i & 3)) {
            pal_fade_to_bg(pal);
        }
    }
}
void fade_screen_in(const unsigned char *pal)
{
    unsigned int i;
    for(i=0;i<16;i++)
    {
        ppu_waitnmi();
        if(!(i&3))
        {
            pal_fade_to_bg(pal);
            pal_fade_to_spr(pal);
        }
    }
}

void fade_screen_out(void)
{
    unsigned int i;
    for(i=0;i<16;i++)
    {
        ppu_waitnmi();
        if(!(i&3)) pal_fade();
    }
}

void raz_scene(void) {
    fade_screen_out();
    wait_frame = 0;
}

void wait_frame_proc(int value) {
    while(1) {
        ppu_waitnmi();

        if (!value) break;

        value--;
    }
}

void wait_frame_or_start() {
    while (1) {
        ppu_waitnmi();
        i=pad_trigger();

        wait_frame--;

        if (!wait_frame || ((i&PAD_START))) break;
    }
}

void scene_print_text(const unsigned char *background_text,
                      const unsigned char *background_pal)
{
    ppu_off();
    pal_clear();
    wait_frame = WAIT_FRAME;
    unrle_vram(background_text, 0x2000);
    ppu_on_bg();
    fade_screen_in(background_pal);
}

void scn_greets_init() {
    scene_print_text(
        background[BK_GREETS].background_text,
        background[BK_GREETS].background_pal
    );
}

void scn_greets_update() {
    wait_frame_proc(WAIT_FRAME);
    wait_frame_proc(WAIT_FRAME);
    wait_frame_proc(WAIT_FRAME);
    wait_frame_or_start();
}

void scn_greets_deinit() {
    raz_scene();
    scroll(0,0);
}



void scn_end_init() {
    scene_print_text(
        background[BK_END].background_text,
        background[BK_END].background_pal
    );
}

void scn_end_update() {
    wait_frame_or_start();
}

void scn_end_deinit() {
    while(1);
}

void scn_competitions_init() {
    scene_print_text(
        background[BK_COMPETITIONS].background_text,
        background[BK_COMPETITIONS].background_pal
    );
}

void scn_competitions_update() {
    wait_frame_proc(WAIT_FRAME);
    wait_frame_proc(WAIT_FRAME);
    wait_frame_proc(WAIT_FRAME);
    wait_frame_or_start();
}

void scn_competitions_deinit() {
    raz_scene();
}

void scn_thoissey_init() {
    /* the following is the bank switching
     * to chr bank number 2
     */
    *bank_switch = BANK_THOISSEY;
    ppu_off();
    pal_clear();
    oam_clear();
    wait_frame = WAIT_FRAME;
    unrle_vram(background[BK_THOISSEY].background_text, 0x2000);
    ppu_on_bg();
    fade_bg_in(background[BK_THOISSEY].background_pal);
}

void scn_thoissey_update() {
    wait_frame_proc(WAIT_FRAME);
    wait_frame_or_start();
}

void scn_thoissey_deinit() {
    raz_scene();
    /* bank switching to chr bank number 0 */
    *bank_switch = BANK_GENERAL;
}


void scn_arrived_thoissey_init() {
    scene_print_text(
        background[BK_ARRIVED_THOISSEY].background_text,
        background[BK_ARRIVED_THOISSEY].background_pal
    );
    fade_screen_in(background[BK_ARRIVED_THOISSEY].background_pal);
}

void scn_arrived_thoissey_update() {
    wait_frame_or_start();
}

void scn_arrived_thoissey_deinit() {
    raz_scene();
}

void scn_on_road_init() {
    /* switch to chr bank 1 */
    *bank_switch = BANK_ROAD;
    ppu_off();
    pal_clear();
    oam_clear();
    wait_frame = WAIT_FRAME;
    unrle_vram(background[BK_ON_ROAD_1].background_text, 0x2000);
    bank_spr(1);
    mother_x = 255-32;
    mother_y =/*16*/(((32-5)/2)-1)*8+40;
    son_x = 255-32;
    son_y = /*128*/((((32-4)/2)-1)*8)+40;
    oam_meta_spr(mother_x, mother_y, 0, ghosts2_list[SPR_MOTHER]);

    ppu_on_bg();
    ppu_on_spr();
    fade_bg_in(background[BK_ON_ROAD_1].background_pal);
    fade_spr_in(ghosts2Pal);
}

void scn_on_road_update() {
    unsigned char bank[] = {0,1};
    while(1)
    {
        ppu_waitnmi();
        i=pad_trigger();

        if (scn_on_road_finished || (i&PAD_START)) break;


        if (mother_x > 0) {
            mother_x -=  mother_speed;
        } else {
            mother_enabled = 0;
        }

        if (son_enabled) {
            if (mother_x < 181) { //255 - (mother width - mother width) - 1Opx
                if (son_x > 42) { // 32+10 mother width in pixels + 10px
                    son_x -= son_speed;
                } else {
                    son_enabled = 0;
                }
            }
        }

        if (!mother_enabled && !son_enabled) {
            scn_on_road_finished = 1;
        }


        oam_meta_spr(mother_x, mother_y, 0, ghosts2_list[SPR_MOTHER]);
        if (mother_enabled && mother_x < 181) {

            oam_meta_spr(son_x, son_y, 36, ghosts2_list[SPR_SON]);
        }
        ppu_on_spr();

    }
}

void scn_on_road_deinit() {
    scroll(0,0);
    raz_scene();
    /* switching to chr bank 0 */
    *bank_switch = BANK_GENERAL;
}


void scn_ltr_road_init() {
    scene_print_text(
        background[BK_LTR_ROAD].background_text,
        background[BK_LTR_ROAD].background_pal
    );
}

void scn_ltr_road_update() {
    wait_frame_or_start();
}

void scn_ltr_road_deinit() {
    raz_scene();
}


void scn_in_house_init() {
    int i;
    ppu_off();
    pal_clear();
    oam_clear();
    vram_adr(0x2000);
    for (i = 0 ; i < (960 + 64) ; i++) {
        vram_put(0);
    }
    vram_adr(0x2000);
    unrle_vram(son_mom_dialog[0], 0x2400);
    bank_spr(1);
    oam_meta_spr(16,(((32-5)/2)-1)*8+32,0,ghosts2_list[SPR_MOTHER]);
    oam_meta_spr(128,((((32-4)/2)-1)*8)+32,36,ghosts2_list[SPR_SON]);

    ppu_on_bg();
    ppu_on_spr();
    fade_bg_in(paletteScreen);
    fade_spr_in(ghosts2Pal);
}

void scn_in_house_update() {
    scroll(255,0);
    wait_frame_proc(WAIT_FRAME);

    ppu_off();
    unrle_vram(son_mom_dialog[1], 0x2000);
    unrle_vram(son_mom_dialog[2], 0x2400);
    ppu_on_bg();
    ppu_on_spr();
    scroll(0,0);

    wait_frame_proc(WAIT_FRAME);
    wait_frame_proc(WAIT_FRAME);
    ppu_off();
    scroll(255,0);
    ppu_on_bg();
    ppu_on_spr();
    wait_frame_proc(WAIT_FRAME);
}
void scn_in_house_deinit() {
    raz_scene();
    scroll(0,0);
}

void scn_home_init() {
    scene_print_text(
        background[BK_HOME].background_text,
        background[BK_HOME].background_pal
    );
}

void scn_home_update() {
    wait_frame_proc(WAIT_FRAME);
    wait_frame_or_start();
}

void scn_home_deinit() {
    raz_scene();
}

void scn_present_init() {
    scene_print_text(
        background[BK_PRESENT].background_text,
        background[BK_PRESENT].background_pal
    );
}

void scn_present_update() {
    wait_frame_proc(WAIT_FRAME);
    wait_frame_or_start();
}

void scn_present_deinit() {
    raz_scene();
}

void scn_flush_init() {
    scene_print_text(
        background[BK_FLUSH].background_text,
        background[BK_FLUSH].background_pal
    );
}

void scn_flush_update() {
    wait_frame_or_start();
}

void scn_flush_deinit() {
    raz_scene();
}

void main (void)
{
    wait_frame = 0;
    for (index_scene = 0 ;
        index_scene < (sizeof(scene)/sizeof(scene[0])) ;
        index_scene++) {
        scene[index_scene].init();
        scene[index_scene].update();
        scene[index_scene].deinit();
    }

    while (1)
    {
    }
}
