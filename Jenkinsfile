node{
	stage('git checkout'){
		// code for checkout
		git credentialsId: '543848ce-c858-4cac-88c8-729f1ba0020b', url: 'https://github.com/zuhair30/war-test.git'
	}
	
	stage('mvn build and test'){
		// code for build
    //	maven : 'maven 3.3.9' not needed mvn is local on cloud build server
		sh "mvn clean package"
	
	}


	stage ('build deployed to remote tomcat server'){
    // code for googlecloud appserver deployment
  deploy adapters: [tomcat8(credentialsId: 'de79ffb0-87ae-4f58-8474-b3bb0aa793f7', path: '', url: 'http://34.105.136.239:8080')], contextPath: '/target/war-test.war', war: '**/*.war'
	} 
	
}