cursor_sprite = spr_cursor
window_set_cursor(cr_none)

audio_sound_gain(snd_room_ambient_1, 1, 0)
audio_play_sound(snd_room_ambient_1, 10, true)

global.READING_NOTE = false
global.BOWL = false
global.BOWL_TIMER = 0
global.BOWL_MAX_TIME = room_speed*2.8
global.TALISMAN_DRAGGED = false
global.TALISMAN_RANGE = 50


//audio_sound_gain(mus_horror_beat_1, 0.7, 0)
//audio_play_sound(mus_horror_beat_1, 10, true)
