hello:
	gcc -L/opt/ffmpeg/lib -I/opt/ffmpeg/include/ 0_hello_world.c -lavcodec -lavformat -lavfilter -lavdevice -lswresample -lswscale -lavutil -o hello -g
run_hello: 
	./hello small_bunny_1080p_60fps.mp4

remux: 
	gcc -g -L/opt/ffmpeg/lib -I/opt/ffmpeg/include/ 2_remuxing.c -lavcodec -lavformat -lavfilter -lavdevice -lswresample -lswscale -lavutil -o remux
run_remux: 
	./remux small_bunny_1080p_60fps.mp4 output_test.ts

transcode:
	gcc -g -Wall -L/opt/ffmpeg/lib -I/opt/ffmpeg/include/ 3_transcoding.c video_debugging.c -lavcodec -lavformat -lavfilter -lavdevice -lswresample -lswscale -lavutil -o transcode
run_transcode: 
	./transcode small_bunny_1080p_60fps.mp4 output_test_265.mp4


clean:
	rm -rf hello remux transcode output_test* frame-*