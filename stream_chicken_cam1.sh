ffmpeg -i http://192.168.10.41/video/mjpg.cgi -f x11grab -f pulse -r 15 -vcodec rawvideo -pix_fmt yuv420p -acodec aac -ac 2 -ab 32k -ar 44100 -threads 0 -f v4l2 /dev/video4
