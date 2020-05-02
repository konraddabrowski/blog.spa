mkdir -p ~/.ssh

echo GH_TO_SRV >> ~/.ssh/githubToServer
chmod 600 ~/.ssh/githubToServer

echo SRV_CONFIG >> ~/.ssh/config
chmod 600 ~/.ssh/config

cd ~/build/konraddabrowski/blog.spa/dist
ls
#scp -r * srv:public_html/blog
