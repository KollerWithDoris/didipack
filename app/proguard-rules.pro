# Add project specific ProGuard rules here.
# By default, the flags in this file are appended to flags specified
# in D:\MyWork\adt-bundle-windows-x86_64-20140702\sdk/tools/proguard/proguard-android.txt
# You can edit the include path and order by changing the proguardFiles
# directive in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# Add any project specific keep options here:

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}

#Umeng
-keepclassmembers class * {
   public <init> (org.json.JSONObject);
}

-keep public class com.dnj.didipack.R$*{
public static final int *;
}

-keepclassmembers enum * {
    public static **[] values();
    public static ** valueOf(java.lang.String);
}

#-libraryjars libs/fastjson-1.2.9.jar
#-libraryjars libs/isoparser-1.1.9.jar
#-libraryjars libs/isoparser-1.1.9-javadoc.jar
#-libraryjars libs/isoparser-1.1.9-sources.jar



# removes such information by default, so configure it to keep all of it.
#-keepattributes Signature
# Gson specific classes
#-keep class sun.misc.Unsafe { *; }
#-keep class com.google.gson.stream.** { *; }
# Application classes that will be serialized/deserialized over Gson
#-keep class com.google.gson.examples.android.model.** { *; }
#-keep class com.google.gson.** { *;}
#这句非常重要，主要是滤掉 com.dnj.didipack.bean包下的所有.class文件不进行混淆编译
-keep class com.dnj.didipack.bean.** {*;}



#butterknife
-keep class butterknife.** { *; }
-dontwarn butterknife.internal.**
-keep class **$$ViewBinder { *; }

-keepclasseswithmembernames class * {
    @butterknife.* <fields>;
}

-keepclasseswithmembernames class * {
    @butterknife.* <methods>;
}



# fastjson

-optimizationpasses 5
-dontusemixedcaseclassnames
-dontskipnonpubliclibraryclasses
-dontpreverify

-keep public class * extends android.app.Activity
-keep public class * extends android.app.Application
-keep public class * extends android.app.Service
-keep public class * extends android.content.BroadcastReceiver
-keep public class * extends android.content.ContentProvider
-keep public class * extends android.app.backup.BackupAgentHelper
-keep public class * extends android.preference.Preference
-keep public class com.android.vending.licensing.ILicensingService

-keep public class * extends android.view.View {
    public <init>(android.content.Context);
    public <init>(android.content.Context, android.util.AttributeSet);
    public <init>(android.content.Context, android.util.AttributeSet, int);
    public void set*(...);
    public void get*(...);
}

-keepclasseswithmembers class * {
    public <init>(android.content.Context, android.util.AttributeSet);
}

-keepclasseswithmembers class * {
    public <init>(android.content.Context, android.util.AttributeSet, int);
}

-keepclassmembers class * implements android.os.Parcelable {
    static android.os.Parcelable$Creator CREATOR;
}

-keepclassmembers class **.R$* {
    public static <fields>;
}

-keepclassmembers class * {
    public <methods>;
}

-keepclasseswithmembernames class * {
    native <methods>;
}

#-keepnames class * implements java.io.Serializable

-keep public class * implements java.io.Serializable {
        public *;
}

-keep public class * implements SerializeFilter{
        public *;
}

-keepclassmembers class * implements java.io.Serializable {
    static final long serialVersionUID;
    private static final java.io.ObjectStreamField[] serialPersistentFields;
    private void writeObject(java.io.ObjectOutputStream);
    private void readObject(java.io.ObjectInputStream);
    java.lang.Object writeReplace();
    java.lang.Object readResolve();
}
-dontwarn android.support.**
-dontwarn com.alibaba.fastjson.**
-dontwarn com.googlecode.mp4parser.**
# keep 泛型
-keepattributes Signature
-keepattributes *Annotation

-dontskipnonpubliclibraryclassmembers

-dontskipnonpubliclibraryclasses

#-dontwarn com.alibaba.fastjson.**
-keep class com.alibaba.fastjson.**{*;}
-keep class com.googlecode.mp4parser.**{*;}
# keep 所有的 javabean
#-keep class com.goldnet.mobile.entity.**{*;}
#-keep class * implements java.io.Serializable { *; }


#VLC
-keep class com.dnj.didipack.org.videolan.libvlc.** {*;}
-keep class com.dnj.didipack.org.videolan.vlc.util.** {*;}

#-libraryjars jniLibs/armeabi-v7a/libiomx-gingerbread.so
#-libraryjars jniLibs/armeabi-v7a/libiomx-hc.so
#-libraryjars jniLibs/armeabi-v7a/libiomx-ics.so
#-libraryjars jniLibs/armeabi-v7a/libswscale.so
#-libraryjars jniLibs/armeabi-v7a/libvlcjni.so