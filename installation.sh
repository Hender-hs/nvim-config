curl -O https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage &&
		
		git clone --depth 1 https://github.com/wbthomason/packer.nvim\
		 ~/.local/share/nvim/site/pack/packer/start/packer.nvim &&

		 	cd ~/.config/ && 
			git clone git@github.com:Hender-hs/nvim-config.git && 
			mv nvim-config nvim &&

				echo -e '# add opt to PATH \nexport PATH="$PATH:/opt"' >> ~/.bashrc &&
				bash


# after run this file
# execute this command: chmod u+x nvim.appimage
# then move the file to /opt/ directory
