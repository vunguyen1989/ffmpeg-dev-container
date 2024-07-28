hello:
	gcc -L/opt/ffmpeg/lib -I/opt/ffmpeg/include/ 0_hello_world.c -lavcodec -lavformat -lavfilter -lavdevice -lswresample -lswscale -lavutil -o hello -g
run_hello: 
	./hello small_bunny_1080p_60fps.mp4

remuxing: 
	gcc -L/opt/ffmpeg/lib -I/opt/ffmpeg/include/ 2_remuxing.c -lavcodec -lavformat -lavfilter -lavdevice -lswresample -lswscale -lavutil -o remuxing

transcoding:
	gcc -g -Wall -L/opt/ffmpeg/lib -I/opt/ffmpeg/include/ 3_transcoding.c video_debugging.c -lavcodec -lavformat -lavfilter -lavdevice -lswresample -lswscale -lavutil -o 3_transcoding
