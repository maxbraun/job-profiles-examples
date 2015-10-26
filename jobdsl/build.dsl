job('${identifier}') {
    displayname('${name}')
    scm {
        svn('${scm}')
        credentialsId('${scmCredentials}')
    }
    steps {
        maven('clean install')
    }
}