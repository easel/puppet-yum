# Class: yum::remi
#
#
class yum::remi {
	yum::managed_repo { "remi":
		descr    => "Les RPM de remi pour Enterpise Linux $releasever - $basearch",
		baseurl  => "http://rpms.famillecollet.com/el$releasever.$basearch/",
		enabled  => 1,
		gpgcheck => 1,
		gpgkey   => "file:///etc/pki/rpm-gpg/RPM-GPG-KEY-remi",
		priority => 1
    }
}