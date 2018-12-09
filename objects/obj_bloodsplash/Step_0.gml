if sound_played_index < sound_repeat{
	audio_sound_pitch(snd_bone_breaking, random_range(0.5, 1.5))
	audio_play_sound(snd_bone_breaking, 1, false)
	sound_played_index += 1
}