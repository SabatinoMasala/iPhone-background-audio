iPhone-audio-in-background
==========================

In this code sample, the iPhone will start playing a sound after a couple of seconds when in the background.

Because of this code, control center will show music controls:
[[UIApplication sharedApplication] beginReceivingRemoteControlEvents];

But without this code, the AVAudioPlayer can't start from within the background.
