mkdir -p ~/.ssh

echo "-----BEGIN OPENSSH PRIVATE KEY-----" >> ~/.ssh/githubToServer
echo $GITHUB_TO_SERVER_KEY >> ~/.ssh/githubToServer
echo "-----END OPENSSH PRIVATE KEY-----" >> ~/.ssh/githubToServer
chmod 600 ~/.ssh/githubToServer

echo "Host srv $FTP_HOST" >> ~/.ssh/config
echo "  HostName $FTP_HOST" >> ~/.ssh/config
echo "  Port $FTP_PORT" >> ~/.ssh/config
echo "  IdentityFile ~/.ssh/githubToServer" >> ~/.ssh/config
echo "  User $FTP_USER" >> ~/.ssh/config
chmod 600 ~/.ssh/config

#cd ~/build/konraddabrowski/blog.spa/dist
#ls
#scp -r * srv:public_html/blog
