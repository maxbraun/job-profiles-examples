job('${id}') {
    displayName('${name}')
    scm {
        svn {
	        location('${scm}') {
	        credentials('${scmCredentials}')
        	}
        }
    }
    steps {
        maven('clean install')
    }
}

job('${id}_IT') {
    displayName('${name} IntegrationTests')
    scm {
        svn {
	        location('${scm}') {
	        credentials('${scmCredentials}')
        	}
        }
    }
    steps {
        maven('clean integration-test')
    }
}
