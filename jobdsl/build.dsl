job('${identifier}') {
    displayName('${name}')
    scm {
        svn('${scm}')
        credentialsId('${scmCredentials}')
    }
    steps {
        maven('clean install')
    }
}