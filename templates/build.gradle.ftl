// Top-level build file where you can add configuration options common to all sub-projects/modules.

apply from: './wayto.core/lib/find_module.gradle'
apply from: allGradle.androidx
apply from: allGradle.qiniu
apply from: allGradle.pgyer

buildscript {
    repositories {
        maven { url 'http://maven.aliyun.com/nexus/content/groups/public/' }

        google()
        jcenter()
        maven { url 'https://jitpack.io' }
    }
    dependencies {
        classpath 'com.android.tools.build:gradle:3.2.1'
        classpath "org.jetbrains.kotlin:kotlin-gradle-plugin:$kotlin_version"
        // NOTE: Do not place your application dependencies here; they belong
        // in the individual module build.gradle files

        classpath "com.qihoo360.replugin:replugin-host-gradle:$replugin_version"

        classpath "com.qihoo360.replugin:replugin-plugin-gradle:$replugin_version"

        classpath "io.objectbox:objectbox-gradle-plugin:$objectboxVersion"

//        classpath 'com.qihoo360.argusapm:argus-apm-gradle-asm:3.0.1.1001'
    }
}

allprojects {
    repositories {
        maven { url 'http://maven.aliyun.com/nexus/content/groups/public/' }

        google()
        jcenter()
        maven { url 'https://jitpack.io' }
        maven { url 'https://esri.bintray.com/arcgis' }
    }
}

task clean(type: Delete) {
    delete rootProject.buildDir
}
