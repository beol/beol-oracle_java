class oracle_java::install inherits oracle_java {
  exec { 'download_rpm':
    command => '/usr/bin/curl -s -j -L -O -b oraclelicense=accept-securebackup-cookie http://download.oracle.com/otn-pub/java/jdk/8u65-b17/jdk-8u65-linux-x64.rpm',
    cwd     => '/tmp',
    unless  => [
        '/usr/bin/test `/bin/rpm -qa 2>/dev/null | grep jdk`',
        '/usr/bin/test -f /tmp/jdk-8u65-linux-x64.rpm'
    ],
    before  => Package['jdk1.8.0_65'],
  }

  package { 'jdk1.8.0_65':
    provider => 'rpm',
    ensure   => present,
    source   => '/tmp/jdk-8u65-linux-x64.rpm',
  }
}
