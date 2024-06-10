echo 'source /home/vscode/.oh-my-zsh/plugins/gitfast/git-completion.bash' >> ~/.bashrc
git config --global --add safe.directory /workspace
sudo chown -R $USER:$USER /go
echo "(sudo Xvfb :99 -screen 0 1024x768x24 &> /dev/null &) & disown" >> ~/.bashrc
npm install
