#ifndef _FLUSH_H_
#define _FLUSH_H_

typedef struct {
    const unsigned char const *background_pal;
    const unsigned char const *background_text;
} background_t;

typedef struct {
    void (*init)(void);
    void (*update)(void);
    void (*deinit)(void);
} scene_t;

static void fade_spr_in(const unsigned char *);
static void fade_bg_in(const unsigned char *);
static void fade_screen_in(const unsigned char *);
static void fade_screen_out(void);

static void scene_print_text(const unsigned char *, const unsigned char *);
static void wait_frame_proc(int);
static void wait_frame_or_start(void);
static void raz_scene(void);


static void scn_greets_init(void);
static void scn_greets_update(void);
static void scn_greets_deinit(void);

static void scn_competitions_init(void);
static void scn_competitions_update(void);
static void scn_competitions_deinit(void);

static void scn_thoissey_init(void);
static void scn_thoissey_update(void);
static void scn_thoissey_deinit(void);

static void scn_arrived_thoissey_init(void);
static void scn_arrived_thoissey_update(void);
static void scn_arrived_thoissey_deinit(void);

static void scn_on_road_init(void);
static void scn_on_road_update(void);
static void scn_on_road_deinit(void);

static void scn_ltr_road_init(void);
static void scn_ltr_road_update(void);
static void scn_ltr_road_deinit(void);

static void scn_flush_init(void);
static void scn_flush_update(void);
static void scn_flush_deinit(void);

static void scn_present_init(void);
static void scn_present_update(void);
static void scn_present_deinit(void);

static void scn_home_init(void);
static void scn_home_update(void);
static void scn_home_deinit(void);

static void scn_in_house_init(void);
static void scn_in_house_update(void);
static void scn_in_house_deinit(void);

static void scn_end_init(void);
static void scn_end_update(void);
static void scn_end_deinit(void);


#endif
