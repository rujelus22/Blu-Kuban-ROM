.class public Lcom/google/android/music/AudioManagerCompat;
.super Ljava/lang/Object;
.source "AudioManagerCompat.java"


# static fields
.field private static sRegisterRemoteControlClientMethod:Ljava/lang/reflect/Method;

.field private static sRemoteControlAPIsExist:Z

.field private static sUnregisterRemoteControlClient:Ljava/lang/reflect/Method;


# instance fields
.field private final mAudioManager:Landroid/media/AudioManager;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 22
    sput-boolean v0, Lcom/google/android/music/AudioManagerCompat;->sRemoteControlAPIsExist:Z

    .line 30
    invoke-static {}, Lcom/google/android/music/jumper/MusicPreferences;->isICSOrGreater()Z

    move-result v0

    if-eqz v0, :cond_60

    .line 32
    :try_start_9
    const-class v0, Lcom/google/android/music/AudioManagerCompat;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 33
    invoke-static {v0}, Lcom/google/android/music/RemoteControlClientCompat;->getActualRemoteControlClientClass(Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 35
    const-class v1, Landroid/media/AudioManager;

    const-string v2, "registerRemoteControlClient"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/google/android/music/AudioManagerCompat;->sRegisterRemoteControlClientMethod:Ljava/lang/reflect/Method;

    .line 37
    const-class v1, Landroid/media/AudioManager;

    const-string v2, "unregisterRemoteControlClient"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/google/android/music/AudioManagerCompat;->sUnregisterRemoteControlClient:Ljava/lang/reflect/Method;

    .line 40
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/music/AudioManagerCompat;->sRemoteControlAPIsExist:Z
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_36} :catch_42

    .line 44
    :goto_36
    sget-boolean v0, Lcom/google/android/music/AudioManagerCompat;->sRemoteControlAPIsExist:Z

    if-nez v0, :cond_60

    .line 45
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ICS APIs for RemoteControlClient don\'t exist"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :catch_42
    move-exception v0

    .line 42
    const-string v1, "AudioManagerCompat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not get ICS info: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36

    .line 50
    :cond_60
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/google/android/music/AudioManagerCompat;->mAudioManager:Landroid/media/AudioManager;

    .line 54
    return-void
.end method

.method public static getAudioManagerCompat(Landroid/content/Context;)Lcom/google/android/music/AudioManagerCompat;
    .registers 2
    .parameter "context"

    .prologue
    .line 57
    new-instance v0, Lcom/google/android/music/AudioManagerCompat;

    invoke-direct {v0, p0}, Lcom/google/android/music/AudioManagerCompat;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public registerRemoteControlClient(Lcom/google/android/music/RemoteControlClientCompat;)V
    .registers 8
    .parameter "remoteControlClient"

    .prologue
    .line 61
    sget-boolean v1, Lcom/google/android/music/AudioManagerCompat;->sRemoteControlAPIsExist:Z

    if-nez v1, :cond_5

    .line 71
    :goto_4
    return-void

    .line 66
    :cond_5
    :try_start_5
    sget-object v1, Lcom/google/android/music/AudioManagerCompat;->sRegisterRemoteControlClientMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/google/android/music/AudioManagerCompat;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/google/android/music/RemoteControlClientCompat;->getActualRemoteControlClientObject()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_16} :catch_17

    goto :goto_4

    .line 68
    :catch_17
    move-exception v0

    .line 69
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "AudioManagerCompat"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4
.end method

.method public unregisterRemoteControlClient(Lcom/google/android/music/RemoteControlClientCompat;)V
    .registers 8
    .parameter "remoteControlClient"

    .prologue
    .line 75
    sget-boolean v1, Lcom/google/android/music/AudioManagerCompat;->sRemoteControlAPIsExist:Z

    if-nez v1, :cond_5

    .line 85
    :goto_4
    return-void

    .line 80
    :cond_5
    :try_start_5
    sget-object v1, Lcom/google/android/music/AudioManagerCompat;->sUnregisterRemoteControlClient:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/google/android/music/AudioManagerCompat;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/google/android/music/RemoteControlClientCompat;->getActualRemoteControlClientObject()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_16} :catch_17

    goto :goto_4

    .line 82
    :catch_17
    move-exception v0

    .line 83
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "AudioManagerCompat"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4
.end method
