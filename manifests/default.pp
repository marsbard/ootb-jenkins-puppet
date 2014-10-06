

# fix locales
exec{ "fix-locales":
    command => "locale-gen en_GB.UTF-8",
    path => "/usr/sbin:/bin",
}
exec{ "dpkg-reconfigure locales":
    path => "/bin:/usr/bin:/usr/sbin",
    require => Exec["fix-locales"],
}

exec { "apt-get update":
    path => "/bin:/usr/bin",
    before => Class["jenkins"],
}



jenkins::plugin {
    "git" : ;
}

jenkins::plugin {
    "parameterized-trigger" : ;
}

jenkins::plugin {
    "token-macro" : ;
}

jenkins::plugin {
    "scm-api" : ;
}

jenkins::plugin {
    "credentials" : ;
}

jenkins::plugin {
    "multiple-scms" : ;
}

jenkins::plugin {
    "ssh-credentials" : ;
}

jenkins::plugin {
    "git-client" : ;
}

jenkins::plugin {
    "promoted-builds" : ;
}

jenkins::plugin {
    "conditional-buildstep" : ;
}

jenkins::plugin {
    "subversion" : ;
}

jenkins::plugin {
    "maven-plugin" : ;
}

#jenkins::plugin {
#    "" : ;
#}
#





include "jenkins"
