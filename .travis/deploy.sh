mkdir -p ~/.ssh

#echo $GH_TO_SRV >> ~/.ssh/githubToServer
echo $TEST_AAA >> ~/.ssh/githubToServer
chmod 600 ~/.ssh/githubToServer

#echo $SRV_CONFIG >> ~/.ssh/config
#chmod 600 ~/.ssh/config

cat ~/.ssh/githubToServer

#cd ~/build/konraddabrowski/blog.spa/dist
#ls
#scp -r * srv:public_html/blog
