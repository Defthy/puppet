class hello {
        file { '/tmp/helloModule':
            content => "Hello World!\n"
        }
}
