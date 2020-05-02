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
  
#echo $GH_TO_SRV >> ~/.ssh/githubToServer

echo "BLE $TEST_AAA" >> ~/.ssh/test_aaa
echo "TEST $TEST_AAA" >> ~/.ssh/test_aaa
chmod 600 ~/.ssh/test_aaa

#echo $SRV_CONFIG >> ~/.ssh/config
#chmod 600 ~/.ssh/config

cat ~/.ssh/test_aaa

#cd ~/build/konraddabrowski/blog.spa/dist
#ls
#scp -r * srv:public_html/blog
