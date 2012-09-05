.class public Lcom/google/android/music/RemoteControlClientCompat;
.super Ljava/lang/Object;
.source "RemoteControlClientCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/RemoteControlClientCompat$1;,
        Lcom/google/android/music/RemoteControlClientCompat$MetadataEditorCompat;
    }
.end annotation


# static fields
.field public static FLAG_KEY_MEDIA_FAST_FORWARD:I

.field public static FLAG_KEY_MEDIA_NEXT:I

.field public static FLAG_KEY_MEDIA_PAUSE:I

.field public static FLAG_KEY_MEDIA_PLAY:I

.field public static FLAG_KEY_MEDIA_PLAY_PAUSE:I

.field public static FLAG_KEY_MEDIA_PREVIOUS:I

.field public static FLAG_KEY_MEDIA_REWIND:I

.field public static FLAG_KEY_MEDIA_STOP:I

.field public static PLAYSTATE_BUFFERING:I

.field public static PLAYSTATE_ERROR:I

.field public static PLAYSTATE_FAST_FORWARDING:I

.field public static PLAYSTATE_PAUSED:I

.field public static PLAYSTATE_PLAYING:I

.field public static PLAYSTATE_REWINDING:I

.field public static PLAYSTATE_SKIPPING_BACKWARDS:I

.field public static PLAYSTATE_SKIPPING_FORWARDS:I

.field public static PLAYSTATE_STOPPED:I

.field private static sHasRemoteControlAPIs:Z

.field private static sRCCEditMetadataMethod:Ljava/lang/reflect/Method;

.field private static sRCCSetPlayStateMethod:Ljava/lang/reflect/Method;

.field private static sRCCSetTransportControlFlags:Ljava/lang/reflect/Method;

.field private static sRemoteControlClientClass:Ljava/lang/Class;


# instance fields
.field private mActualRemoteControlClient:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 20
    sput v2, Lcom/google/android/music/RemoteControlClientCompat;->PLAYSTATE_STOPPED:I

    .line 21
    sput v3, Lcom/google/android/music/RemoteControlClientCompat;->PLAYSTATE_PAUSED:I

    .line 22
    const/4 v1, 0x3

    sput v1, Lcom/google/android/music/RemoteControlClientCompat;->PLAYSTATE_PLAYING:I

    .line 23
    sput v4, Lcom/google/android/music/RemoteControlClientCompat;->PLAYSTATE_FAST_FORWARDING:I

    .line 24
    const/4 v1, 0x5

    sput v1, Lcom/google/android/music/RemoteControlClientCompat;->PLAYSTATE_REWINDING:I

    .line 25
    const/4 v1, 0x6

    sput v1, Lcom/google/android/music/RemoteControlClientCompat;->PLAYSTATE_SKIPPING_FORWARDS:I

    .line 26
    const/4 v1, 0x7

    sput v1, Lcom/google/android/music/RemoteControlClientCompat;->PLAYSTATE_SKIPPING_BACKWARDS:I

    .line 27
    sput v5, Lcom/google/android/music/RemoteControlClientCompat;->PLAYSTATE_BUFFERING:I

    .line 28
    const/16 v1, 0x9

    sput v1, Lcom/google/android/music/RemoteControlClientCompat;->PLAYSTATE_ERROR:I

    .line 30
    sput v2, Lcom/google/android/music/RemoteControlClientCompat;->FLAG_KEY_MEDIA_PREVIOUS:I

    .line 31
    sput v3, Lcom/google/android/music/RemoteControlClientCompat;->FLAG_KEY_MEDIA_REWIND:I

    .line 32
    sput v4, Lcom/google/android/music/RemoteControlClientCompat;->FLAG_KEY_MEDIA_PLAY:I

    .line 33
    sput v5, Lcom/google/android/music/RemoteControlClientCompat;->FLAG_KEY_MEDIA_PLAY_PAUSE:I

    .line 34
    const/16 v1, 0x10

    sput v1, Lcom/google/android/music/RemoteControlClientCompat;->FLAG_KEY_MEDIA_PAUSE:I

    .line 35
    const/16 v1, 0x20

    sput v1, Lcom/google/android/music/RemoteControlClientCompat;->FLAG_KEY_MEDIA_STOP:I

    .line 36
    const/16 v1, 0x40

    sput v1, Lcom/google/android/music/RemoteControlClientCompat;->FLAG_KEY_MEDIA_FAST_FORWARD:I

    .line 37
    const/16 v1, 0x80

    sput v1, Lcom/google/android/music/RemoteControlClientCompat;->FLAG_KEY_MEDIA_NEXT:I

    .line 46
    sput-boolean v0, Lcom/google/android/music/RemoteControlClientCompat;->sHasRemoteControlAPIs:Z

    .line 49
    invoke-static {}, Lcom/google/android/music/jumper/MusicPreferences;->isICSOrGreater()Z

    move-result v1

    if-eqz v1, :cond_a8

    .line 51
    :try_start_3e
    const-class v1, Lcom/google/android/music/RemoteControlClientCompat;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 52
    invoke-static {v1}, Lcom/google/android/music/RemoteControlClientCompat;->getActualRemoteControlClientClass(Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/google/android/music/RemoteControlClientCompat;->sRemoteControlClientClass:Ljava/lang/Class;

    .line 55
    const-class v1, Lcom/google/android/music/RemoteControlClientCompat;

    invoke-virtual {v1}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_52
    if-ge v1, v3, :cond_13f

    aget-object v4, v2, v1
    :try_end_56
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3e .. :try_end_56} :catch_8b
    .catch Ljava/lang/SecurityException; {:try_start_3e .. :try_end_56} :catch_d5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3e .. :try_end_56} :catch_120

    .line 57
    :try_start_56
    sget-object v0, Lcom/google/android/music/RemoteControlClientCompat;->sRemoteControlClientClass:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 58
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 59
    const/4 v5, 0x0

    invoke-virtual {v4, v5, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_69
    .catch Ljava/lang/NoSuchFieldException; {:try_start_56 .. :try_end_69} :catch_6d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_56 .. :try_end_69} :catch_a9
    .catch Ljava/lang/IllegalAccessException; {:try_start_56 .. :try_end_69} :catch_f3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_56 .. :try_end_69} :catch_8b
    .catch Ljava/lang/SecurityException; {:try_start_56 .. :try_end_69} :catch_d5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_56 .. :try_end_69} :catch_120

    .line 55
    :goto_69
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_52

    .line 60
    :catch_6d
    move-exception v0

    .line 61
    :try_start_6e
    const-string v0, "RemoteControlCompat"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not get real field: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6e .. :try_end_8a} :catch_8b
    .catch Ljava/lang/SecurityException; {:try_start_6e .. :try_end_8a} :catch_d5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6e .. :try_end_8a} :catch_120

    goto :goto_69

    .line 80
    :catch_8b
    move-exception v0

    .line 81
    const-string v1, "RemoteControlCompat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not find class. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_a8
    :goto_a8
    return-void

    .line 62
    :catch_a9
    move-exception v0

    .line 63
    :try_start_aa
    const-string v5, "RemoteControlCompat"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error trying to pull field value for: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_aa .. :try_end_d4} :catch_8b
    .catch Ljava/lang/SecurityException; {:try_start_aa .. :try_end_d4} :catch_d5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_aa .. :try_end_d4} :catch_120

    goto :goto_69

    .line 82
    :catch_d5
    move-exception v0

    .line 83
    const-string v1, "RemoteControlCompat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Security Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a8

    .line 65
    :catch_f3
    move-exception v0

    .line 66
    :try_start_f4
    const-string v5, "RemoteControlCompat"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error trying to pull field value for: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_f4 .. :try_end_11e} :catch_8b
    .catch Ljava/lang/SecurityException; {:try_start_f4 .. :try_end_11e} :catch_d5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_f4 .. :try_end_11e} :catch_120

    goto/16 :goto_69

    .line 84
    :catch_120
    move-exception v0

    .line 85
    const-string v1, "RemoteControlCompat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No Such Method Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_a8

    .line 72
    :cond_13f
    :try_start_13f
    sget-object v0, Lcom/google/android/music/RemoteControlClientCompat;->sRemoteControlClientClass:Ljava/lang/Class;

    const-string v1, "editMetadata"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/google/android/music/RemoteControlClientCompat;->sRCCEditMetadataMethod:Ljava/lang/reflect/Method;

    .line 74
    sget-object v0, Lcom/google/android/music/RemoteControlClientCompat;->sRemoteControlClientClass:Ljava/lang/Class;

    const-string v1, "setPlaybackState"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/google/android/music/RemoteControlClientCompat;->sRCCSetPlayStateMethod:Ljava/lang/reflect/Method;

    .line 76
    sget-object v0, Lcom/google/android/music/RemoteControlClientCompat;->sRemoteControlClientClass:Ljava/lang/Class;

    const-string v1, "setTransportControlFlags"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/google/android/music/RemoteControlClientCompat;->sRCCSetTransportControlFlags:Ljava/lang/reflect/Method;

    .line 79
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/music/RemoteControlClientCompat;->sHasRemoteControlAPIs:Z
    :try_end_178
    .catch Ljava/lang/ClassNotFoundException; {:try_start_13f .. :try_end_178} :catch_8b
    .catch Ljava/lang/SecurityException; {:try_start_13f .. :try_end_178} :catch_d5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_13f .. :try_end_178} :catch_120

    goto/16 :goto_a8
.end method

.method public constructor <init>(Landroid/app/PendingIntent;Landroid/os/Looper;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    sget-boolean v0, Lcom/google/android/music/RemoteControlClientCompat;->sHasRemoteControlAPIs:Z

    if-nez v0, :cond_8

    .line 123
    :goto_7
    return-void

    .line 117
    :cond_8
    :try_start_8
    sget-object v0, Lcom/google/android/music/RemoteControlClientCompat;->sRemoteControlClientClass:Ljava/lang/Class;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Landroid/app/PendingIntent;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Landroid/os/Looper;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/RemoteControlClientCompat;->mActualRemoteControlClient:Ljava/lang/Object;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_2a} :catch_2b

    goto :goto_7

    .line 120
    :catch_2b
    move-exception v0

    .line 121
    const-string v1, "RemoteControlCompat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error creating new instance of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/google/android/music/RemoteControlClientCompat;->sRemoteControlClientClass:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method

.method static synthetic access$000()Z
    .registers 1

    .prologue
    .line 16
    sget-boolean v0, Lcom/google/android/music/RemoteControlClientCompat;->sHasRemoteControlAPIs:Z

    return v0
.end method

.method public static getActualRemoteControlClientClass(Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .registers 2
    .parameter "classLoader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 92
    const-string v0, "android.media.RemoteControlClient"

    invoke-virtual {p0, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public editMetadata(Z)Lcom/google/android/music/RemoteControlClientCompat$MetadataEditorCompat;
    .registers 9
    .parameter "startEmpty"

    .prologue
    .line 218
    sget-boolean v2, Lcom/google/android/music/RemoteControlClientCompat;->sHasRemoteControlAPIs:Z

    if-eqz v2, :cond_24

    .line 220
    :try_start_4
    sget-object v2, Lcom/google/android/music/RemoteControlClientCompat;->sRCCEditMetadataMethod:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/google/android/music/RemoteControlClientCompat;->mActualRemoteControlClient:Ljava/lang/Object;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_15} :catch_1d

    move-result-object v1

    .line 228
    :goto_16
    new-instance v2, Lcom/google/android/music/RemoteControlClientCompat$MetadataEditorCompat;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v1, v3}, Lcom/google/android/music/RemoteControlClientCompat$MetadataEditorCompat;-><init>(Lcom/google/android/music/RemoteControlClientCompat;Ljava/lang/Object;Lcom/google/android/music/RemoteControlClientCompat$1;)V

    return-object v2

    .line 222
    :catch_1d
    move-exception v0

    .line 223
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 226
    .end local v0           #e:Ljava/lang/Exception;
    :cond_24
    const/4 v1, 0x0

    .local v1, metadataEditor:Ljava/lang/Object;
    goto :goto_16
.end method

.method public final getActualRemoteControlClientObject()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/google/android/music/RemoteControlClientCompat;->mActualRemoteControlClient:Ljava/lang/Object;

    return-object v0
.end method

.method public setPlaybackState(I)V
    .registers 8
    .parameter "state"

    .prologue
    .line 232
    sget-boolean v1, Lcom/google/android/music/RemoteControlClientCompat;->sHasRemoteControlAPIs:Z

    if-eqz v1, :cond_15

    .line 234
    :try_start_4
    sget-object v1, Lcom/google/android/music/RemoteControlClientCompat;->sRCCSetPlayStateMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/google/android/music/RemoteControlClientCompat;->mActualRemoteControlClient:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_15} :catch_16

    .line 239
    :cond_15
    return-void

    .line 235
    :catch_16
    move-exception v0

    .line 236
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setTransportControlFlags(I)V
    .registers 8
    .parameter "flags"

    .prologue
    .line 242
    sget-boolean v1, Lcom/google/android/music/RemoteControlClientCompat;->sHasRemoteControlAPIs:Z

    if-eqz v1, :cond_15

    .line 244
    :try_start_4
    sget-object v1, Lcom/google/android/music/RemoteControlClientCompat;->sRCCSetTransportControlFlags:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/google/android/music/RemoteControlClientCompat;->mActualRemoteControlClient:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_15} :catch_16

    .line 249
    :cond_15
    return-void

    .line 245
    :catch_16
    move-exception v0

    .line 246
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
