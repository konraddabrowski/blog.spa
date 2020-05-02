mkdir -p ~/.ssh

echo "-----BEGIN OPENSSH PRIVATE KEY-----" >> ~/.ssh/githubToServer2078551
echo $GITHUB_TO_SERVER_KEY >> ~/.ssh/githubToServer2078551
echo "-----END OPENSSH PRIVATE KEY-----" >> ~/.ssh/githubToServer2078551
chmod 600 ~/.ssh/githubToServer

echo "Host srv $FTP_HOST" >> ~/.ssh/config
echo "  StrictHostKeyChecking no" >> ~/.ssh/config
echo "  HostName $FTP_HOST" >> ~/.ssh/config
echo "  Port $FTP_PORT" >> ~/.ssh/config
echo "  IdentityFile ~/.ssh/githubToServer2078551" >> ~/.ssh/config
echo "  User $FTP_USER" >> ~/.ssh/config
chmod 600 ~/.ssh/config

ls -l ~/.ssh

npm run build
cd dist
scp -r * srv:public_html/blog