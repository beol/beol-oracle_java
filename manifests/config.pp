class oracle_java::config inherits oracle_java {
  oracle_java::update_alternatives { 'java': }
  oracle_java::update_alternatives { 'javac': }
  oracle_java::update_alternatives { 'keytool': }
}
