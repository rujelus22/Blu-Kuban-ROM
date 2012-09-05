.class public Lcom/samsung/swift/service/NativeComponents;
.super Ljava/lang/Object;
.source "NativeComponents.java"


# static fields
.field private static final TAGNAME:Ljava/lang/String;

.field private static instance:Lcom/samsung/swift/service/NativeComponents;

.field private static loading:Z

.field private static monitor:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 91
    const-class v0, Lcom/samsung/swift/service/NativeComponents;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/swift/service/NativeComponents;->TAGNAME:Ljava/lang/String;

    .line 93
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/swift/service/NativeComponents;->loading:Z

    .line 94
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/swift/service/NativeComponents;->monitor:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    const-string v0, "libwebserver.so"

    invoke-direct {p0, v0}, Lcom/samsung/swift/service/NativeComponents;->LoadLibrary(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/swift/service/NativeComponents;->init(Ljava/lang/ClassLoader;)V

    .line 155
    const-string v0, "libsecuritymgr.so"

    invoke-direct {p0, v0}, Lcom/samsung/swift/service/NativeComponents;->LoadLibrary(Ljava/lang/String;)V

    .line 156
    invoke-static {}, Lcom/samsung/swift/security/SecurityManagerImpl;->start()V

    .line 157
    const-string v0, "libmsgqcore.so"

    invoke-direct {p0, v0}, Lcom/samsung/swift/service/NativeComponents;->LoadLibrary(Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method private LoadLibrary(Ljava/lang/String;)V
    .registers 7
    .parameter "s"

    .prologue
    .line 131
    :try_start_0
    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_f} :catch_5e

    .line 149
    :goto_f
    return-void

    .line 133
    :catch_10
    move-exception v0

    .line 135
    .local v0, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_3b

    .line 137
    sget-object v2, Lcom/samsung/swift/service/NativeComponents;->TAGNAME:Ljava/lang/String;

    const-string v3, "Swift.getApplicationContext() is null "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_1e
    :goto_1e
    sget-object v2, Lcom/samsung/swift/service/NativeComponents;->TAGNAME:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception :::: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 139
    :cond_3b
    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_1e

    .line 141
    sget-object v2, Lcom/samsung/swift/service/NativeComponents;->TAGNAME:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot find "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    .line 145
    .end local v0           #e:Ljava/lang/Exception;
    :catch_5e
    move-exception v1

    .line 147
    .local v1, err:Ljava/lang/Error;
    invoke-virtual {v1}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_f
.end method

.method public static getInstance()Lcom/samsung/swift/service/NativeComponents;
    .registers 4

    .prologue
    .line 110
    sget-object v1, Lcom/samsung/swift/service/NativeComponents;->instance:Lcom/samsung/swift/service/NativeComponents;

    if-nez v1, :cond_12

    .line 114
    :try_start_4
    sget-object v1, Lcom/samsung/swift/service/NativeComponents;->TAGNAME:Ljava/lang/String;

    const-string v2, "NativeComponents getInstance, creating plugin instance"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    new-instance v1, Lcom/samsung/swift/service/NativeComponents;

    invoke-direct {v1}, Lcom/samsung/swift/service/NativeComponents;-><init>()V

    sput-object v1, Lcom/samsung/swift/service/NativeComponents;->instance:Lcom/samsung/swift/service/NativeComponents;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_12} :catch_15

    .line 123
    .local v0, e:Ljava/lang/Exception;
    :cond_12
    :goto_12
    sget-object v1, Lcom/samsung/swift/service/NativeComponents;->instance:Lcom/samsung/swift/service/NativeComponents;

    return-object v1

    .line 117
    .end local v0           #e:Ljava/lang/Exception;
    :catch_15
    move-exception v0

    .line 119
    .restart local v0       #e:Ljava/lang/Exception;
    const/4 v1, 0x0

    sput-object v1, Lcom/samsung/swift/service/NativeComponents;->instance:Lcom/samsung/swift/service/NativeComponents;

    .line 120
    sget-object v1, Lcom/samsung/swift/service/NativeComponents;->TAGNAME:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NativeComponents instance failed. Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12
.end method

.method private native init(Ljava/lang/ClassLoader;)V
.end method

.method public static instance()Lcom/samsung/swift/service/NativeComponents;
    .registers 4

    .prologue
    .line 162
    sget-object v1, Lcom/samsung/swift/service/NativeComponents;->instance:Lcom/samsung/swift/service/NativeComponents;

    if-nez v1, :cond_36

    .line 164
    sget-object v1, Lcom/samsung/swift/service/NativeComponents;->TAGNAME:Ljava/lang/String;

    const-string v2, "Initializing native components..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    sget-object v2, Lcom/samsung/swift/service/NativeComponents;->monitor:Ljava/lang/Object;

    monitor-enter v2

    .line 169
    :try_start_e
    sget-boolean v1, Lcom/samsung/swift/service/NativeComponents;->loading:Z

    if-eqz v1, :cond_1c

    .line 171
    sget-object v1, Lcom/samsung/swift/service/NativeComponents;->TAGNAME:Ljava/lang/String;

    const-string v3, "Recursive call to NativeComponents::instance returning null"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const/4 v1, 0x0

    monitor-exit v2

    .line 188
    .local v0, e:Ljava/lang/Exception;
    :goto_1b
    return-object v1

    .line 174
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1c
    const/4 v1, 0x1

    sput-boolean v1, Lcom/samsung/swift/service/NativeComponents;->loading:Z
    :try_end_1f
    .catchall {:try_start_e .. :try_end_1f} :catchall_3e

    .line 177
    :try_start_1f
    new-instance v1, Lcom/samsung/swift/service/NativeComponents;

    invoke-direct {v1}, Lcom/samsung/swift/service/NativeComponents;-><init>()V

    sput-object v1, Lcom/samsung/swift/service/NativeComponents;->instance:Lcom/samsung/swift/service/NativeComponents;
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_3e
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_26} :catch_39

    .line 183
    .restart local v0       #e:Ljava/lang/Exception;
    :goto_26
    const/4 v1, 0x0

    :try_start_27
    sput-boolean v1, Lcom/samsung/swift/service/NativeComponents;->loading:Z

    .line 184
    sget-object v1, Lcom/samsung/swift/service/NativeComponents;->monitor:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 185
    sget-object v1, Lcom/samsung/swift/service/NativeComponents;->TAGNAME:Ljava/lang/String;

    const-string v3, "Native components online"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    monitor-exit v2
    :try_end_36
    .catchall {:try_start_27 .. :try_end_36} :catchall_3e

    .line 188
    :cond_36
    sget-object v1, Lcom/samsung/swift/service/NativeComponents;->instance:Lcom/samsung/swift/service/NativeComponents;

    goto :goto_1b

    .line 179
    .end local v0           #e:Ljava/lang/Exception;
    :catch_39
    move-exception v0

    .line 180
    .restart local v0       #e:Ljava/lang/Exception;
    :try_start_3a
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_26

    .line 186
    :catchall_3e
    move-exception v1

    monitor-exit v2
    :try_end_40
    .catchall {:try_start_3a .. :try_end_40} :catchall_3e

    throw v1
.end method
