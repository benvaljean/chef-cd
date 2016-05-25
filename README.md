# chef-cd
Chef repo and librarian directory navigator

When working on Chef with librarian I find it tiresome to navigate between the librarian-chef installed files and those from our chef repo. This short bash function allows this to be achieved much more easily.

## Example

Presuming your dir for your cookbooks is `~/git/chef-repo/cookbook-src/` and your librarian-chef and knife `cookbook_path` is `~/git/chef-repo/cookbooks` :

	[bgoodacre@yuko ~]$ cdc s dashboard
	[bgoodacre@yuko ~/git/chef-repo/cookbook-src/dashboard]$ ls
	.           ..          attributes  metadata.rb README.md   recipes     templates
	[bgoodacre@yuko ~/git/chef-repo/cookbook-src/dashboard]$ cdc c d
	daemontools  dashboard    database     dev_web_vm   dhcp         dmg          docker
	[bgoodacre@yuko ~/git/chef-repo/cookbook-src/dashboard]$ cdc c dashboard
	[bgoodacre@yuko ~/git/chef-repo/cookbooks/dashboard]$ cdc	

## Usage

cdc s|c cookbook

Where:

`s` cookbook repo dir of cookbook
`c` librarian-chef and knife `cookbook_path` of cookbook

Tab completion is done but it is imperfect at the moment 

