.class public Lcom/samsung/swift/service/webserver/WebServerJNI;
.super Ljava/lang/Object;
.source "WebServerJNI.java"

# interfaces
.implements Lcom/samsung/swift/service/webserver/WebServer;


# static fields
.field private static final TAGNAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 105
    const-class v0, Lcom/samsung/swift/service/webserver/WebServerJNI;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/swift/service/webserver/WebServerJNI;->TAGNAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    invoke-static {}, Lcom/samsung/swift/service/NativeComponents;->instance()Lcom/samsung/swift/service/NativeComponents;

    .line 110
    sget-object v0, Lcom/samsung/swift/util/SwiftConfig;->INSTANCE:Lcom/samsung/swift/util/SwiftConfig;

    const-string v1, "TEST_LIGHTTPD_CONFIG"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/swift/util/SwiftConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 112
    invoke-direct {p0}, Lcom/samsung/swift/service/webserver/WebServerJNI;->testConfiguration()V

    .line 114
    :cond_19
    return-void
.end method

.method private testConfiguration()V
    .registers 8

    .prologue
    .line 118
    sget-object v4, Lcom/samsung/swift/service/webserver/WebServerJNI;->TAGNAME:Ljava/lang/String;

    const-string v5, "Testing configuration"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    new-instance v2, Lcom/samsung/swift/util/ProcessRunner;

    invoke-direct {v2}, Lcom/samsung/swift/util/ProcessRunner;-><init>()V

    .line 120
    .local v2, processRunnerTest:Lcom/samsung/swift/util/ProcessRunner;
    const/4 v4, 0x4

    new-array v0, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "lighttpd"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    const/4 v4, 0x1

    const-string v5, "-f"

    aput-object v5, v0, v4

    const/4 v4, 0x2

    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "lighttpd.conf"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    const/4 v4, 0x3

    const-string v5, "-t"

    aput-object v5, v0, v4

    .line 126
    .local v0, TEST_ARGS:[Ljava/lang/String;
    invoke-virtual {v2, v0}, Lcom/samsung/swift/util/ProcessRunner;->setCommandLine([Ljava/lang/String;)Lcom/samsung/swift/util/ProcessRunner;

    .line 128
    :try_start_3e
    invoke-virtual {v2}, Lcom/samsung/swift/util/ProcessRunner;->execute()Lcom/samsung/swift/util/ProcessRunner;

    .line 129
    invoke-virtual {v2}, Lcom/samsung/swift/util/ProcessRunner;->waitFinish()I

    move-result v3

    .line 130
    .local v3, rc:I
    sget-object v4, Lcom/samsung/swift/service/webserver/WebServerJNI;->TAGNAME:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Test process returns "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    if-eqz v3, :cond_6e

    .line 133
    new-instance v4, Ljava/lang/AssertionError;

    const-string v5, "Error in lighttpd_android_jni.conf"

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_67} :catch_67

    .line 135
    .end local v3           #rc:I
    :catch_67
    move-exception v1

    .line 137
    .local v1, e:Ljava/io/IOException;
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 139
    .end local v1           #e:Ljava/io/IOException;
    .restart local v3       #rc:I
    :cond_6e
    return-void
.end method


# virtual methods
.method public native isRunning()Z
.end method

.method public native join()V
.end method

.method public native start()V
.end method

.method public native stop()V
.end method
