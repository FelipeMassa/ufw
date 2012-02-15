maintainer       "Woods Hole Marine Biological Laboratory"
maintainer_email "pcryer@mbl.edu"
license          "Apache 2.0"
description      "Installs/Configures ufw"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.rdoc'))
version          "0.0.1"
#depends          "firewall", ">= 0.8"

%w{ ubuntu }.each do |os|
  supports os
end

attribute "firewall/rules",
  :display_name => "List of firewall rules for the node.",
  :description => "List of firewall rules for the node. Possibly set by node, roles or data bags.",
  :type => "array"

attribute "firewall/securitylevel",
  :display_name => "Security level of the node.",
  :description => "Security level of the node, may be set by node, roles or environment."
