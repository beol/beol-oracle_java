define oracle_java::update_alternatives(
) {
  exec { "update-alternatives-${name}":
    command => "/usr/sbin/update-alternatives --install /usr/bin/${name} ${name} /usr/java/jdk1.8.0_65/bin/${name} 1",
    unless  => "/usr/sbin/update-alternatives --display ${name}",
  }
}
