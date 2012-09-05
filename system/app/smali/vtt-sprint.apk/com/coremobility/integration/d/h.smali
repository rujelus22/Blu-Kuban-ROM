.class public final Lcom/coremobility/integration/d/h;
.super Ljava/lang/Object;


# static fields
.field public static a:I

.field private static b:Z

.field private static c:Ljava/lang/reflect/Method;

.field private static d:Ljava/lang/Object;

.field private static e:Z

.field private static f:Z

.field private static g:Ljava/lang/reflect/Method;

.field private static h:Ljava/lang/reflect/Method;

.field private static i:I

.field private static j:I

.field private static k:Lcom/coremobility/integration/d/i;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput v1, Lcom/coremobility/integration/d/h;->a:I

    sput-boolean v1, Lcom/coremobility/integration/d/h;->b:Z

    sput-object v0, Lcom/coremobility/integration/d/h;->c:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/coremobility/integration/d/h;->d:Ljava/lang/Object;

    sput-boolean v1, Lcom/coremobility/integration/d/h;->e:Z

    sput-boolean v1, Lcom/coremobility/integration/d/h;->f:Z

    sput-object v0, Lcom/coremobility/integration/d/h;->g:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/coremobility/integration/d/h;->h:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/coremobility/integration/d/h;->k:Lcom/coremobility/integration/d/i;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()I
    .registers 5

    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->a()Lcom/coremobility/integration/app/CM_App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/integration/app/CM_App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    :try_start_10
    invoke-static {v0}, Lcom/coremobility/integration/d/h;->c(Landroid/media/AudioManager;)I
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_13} :catch_15

    move-result v0

    :goto_14
    return v0

    :catch_15
    move-exception v0

    const/16 v1, 0x17

    const-string v2, "CM_Sound.GetOutputDevice Ex: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x7

    goto :goto_14
.end method

.method public static a(Ljava/lang/String;)I
    .registers 9

    const/4 v2, 0x0

    const/16 v7, 0x17

    const/4 v1, 0x0

    :try_start_4
    new-instance v4, Landroid/media/MediaPlayer;

    invoke-direct {v4}, Landroid/media/MediaPlayer;-><init>()V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_c3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_9} :catch_91

    :try_start_9
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_62

    move v0, v1

    :goto_13
    if-eqz v0, :cond_64

    :goto_15
    const/16 v0, 0x17

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CM_Sound.GetPlaybackDuration File: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0, v3, v5}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_35
    .catchall {:try_start_9 .. :try_end_35} :catchall_d5
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_35} :catch_dd

    :try_start_35
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->prepare()V

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->getDuration()I
    :try_end_42
    .catchall {:try_start_35 .. :try_end_42} :catchall_d7
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_42} :catch_e0

    move-result v0

    :try_start_43
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_8c

    :goto_46
    invoke-virtual {v4}, Landroid/media/MediaPlayer;->release()V

    :goto_49
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CM_Sound.GetPlaybackDuration: Result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v7, v2, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_62
    const/4 v0, 0x1

    goto :goto_13

    :cond_64
    :try_start_64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->a()Lcom/coremobility/integration/app/CM_App;

    move-result-object v3

    invoke-virtual {v3}, Lcom/coremobility/integration/app/CM_App;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_8a
    .catchall {:try_start_64 .. :try_end_8a} :catchall_d5
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_8a} :catch_dd

    move-result-object p0

    goto :goto_15

    :catch_8c
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_46

    :catch_91
    move-exception v0

    move-object v3, v2

    :goto_93
    const/16 v4, 0x17

    :try_start_95
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CM_Sound.GetPlaybackDuration error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v0, v5}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_b2
    .catchall {:try_start_95 .. :try_end_b2} :catchall_da

    if-eqz v2, :cond_b7

    :try_start_b4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_b7
    .catch Ljava/io/IOException; {:try_start_b4 .. :try_end_b7} :catch_be

    :cond_b7
    :goto_b7
    if-eqz v3, :cond_e4

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->release()V

    move v0, v1

    goto :goto_49

    :catch_be
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b7

    :catchall_c3
    move-exception v0

    move-object v4, v2

    :goto_c5
    if-eqz v2, :cond_ca

    :try_start_c7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_ca
    .catch Ljava/io/IOException; {:try_start_c7 .. :try_end_ca} :catch_d0

    :cond_ca
    :goto_ca
    if-eqz v4, :cond_cf

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->release()V

    :cond_cf
    throw v0

    :catch_d0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_ca

    :catchall_d5
    move-exception v0

    goto :goto_c5

    :catchall_d7
    move-exception v0

    move-object v2, v3

    goto :goto_c5

    :catchall_da
    move-exception v0

    move-object v4, v3

    goto :goto_c5

    :catch_dd
    move-exception v0

    move-object v3, v4

    goto :goto_93

    :catch_e0
    move-exception v0

    move-object v2, v3

    move-object v3, v4

    goto :goto_93

    :cond_e4
    move v0, v1

    goto/16 :goto_49
.end method

.method public static a(Landroid/media/AudioManager;)V
    .registers 9

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/16 v7, 0x17

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CM_Sound PauseMusicPlayer, RefCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/coremobility/integration/d/h;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v7, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/coremobility/integration/a/a;->a()Lcom/coremobility/integration/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/integration/a/a;->d()I

    move-result v0

    if-ne v0, v4, :cond_51

    move v0, v2

    :goto_2a
    if-eqz v0, :cond_53

    const-string v0, "com.htc.music.musicservicecommand"

    :goto_2e
    if-eqz v0, :cond_4e

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "command"

    const-string v4, "pause"

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->a()Lcom/coremobility/integration/app/CM_App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/integration/app/CM_App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v0, "CM_Sound CM_MUSIC_PAUSE_CMD_STRING"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v7, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_4e
    sput v2, Lcom/coremobility/integration/d/h;->a:I

    return-void

    :cond_51
    move v0, v3

    goto :goto_2a

    :cond_53
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_c1

    const-string v1, "com.android.music.musicservicecommand"

    :try_start_5b
    invoke-static {}, Lcom/coremobility/integration/d/h;->g()Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_95

    sget-object v4, Lcom/coremobility/integration/d/h;->k:Lcom/coremobility/integration/d/i;

    if-nez v4, :cond_6c

    new-instance v4, Lcom/coremobility/integration/d/i;

    invoke-direct {v4}, Lcom/coremobility/integration/d/i;-><init>()V

    sput-object v4, Lcom/coremobility/integration/d/h;->k:Lcom/coremobility/integration/d/i;

    :cond_6c
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v6, Lcom/coremobility/integration/d/h;->k:Lcom/coremobility/integration/d/i;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget v6, Lcom/coremobility/integration/d/h;->i:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    sget v6, Lcom/coremobility/integration/d/h;->j:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x17

    const-string v4, "CM_Sound requestAudioFocus"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_2e

    :cond_95
    const/16 v0, 0x17

    const-string v4, "CM_Sound Don\'t have requestAudioFocus "

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_9f} :catch_a1

    move-object v0, v1

    goto :goto_2e

    :catch_a1
    move-exception v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CM_Sound "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v7, v0, v4}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    goto/16 :goto_2e

    :cond_c1
    const-string v0, "com.android.music.musicservicecommand"

    goto/16 :goto_2e
.end method

.method public static a(I)Z
    .registers 8

    const/16 v6, 0x17

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->a()Lcom/coremobility/integration/app/CM_App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/integration/app/CM_App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "audio"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v3, 0x4

    if-ne p0, v3, :cond_23

    const/16 v0, 0x17

    :try_start_19
    const-string v3, "Calling setRoute with routes = 4"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_21
    :goto_21
    move v0, v1

    :goto_22
    return v0

    :cond_23
    const/4 v3, 0x5

    if-ne p0, v3, :cond_41

    const/16 v0, 0x17

    const-string v3, "Calling setRoute with routes = 16"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_30} :catch_31

    goto :goto_21

    :catch_31
    move-exception v0

    const-string v3, "CM_Sound.SetOutputDevice Ex: %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v6, v3, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    move v0, v2

    goto :goto_22

    :cond_41
    const/16 v3, 0x17

    :try_start_43
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calling setRoute with routes = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    if-ne p0, v1, :cond_63

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    goto :goto_21

    :cond_63
    if-nez p0, :cond_6a

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    goto :goto_21

    :cond_6a
    const/4 v3, 0x2

    if-ne p0, v3, :cond_21

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_71} :catch_31

    goto :goto_21
.end method

.method public static b(Landroid/media/AudioManager;)V
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v7, 0x17

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CM_Sound ResumeMusicPlayer, RefCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/coremobility/integration/d/h;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v7, v3, v4}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    sget v3, Lcom/coremobility/integration/d/h;->a:I

    if-nez v3, :cond_2b

    const-string v0, "CM_Sound ResumeMusicPlayer [IGNORED]"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v7, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_2a
    return-void

    :cond_2b
    invoke-static {}, Lcom/coremobility/integration/a/a;->a()Lcom/coremobility/integration/a/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/coremobility/integration/a/a;->d()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5d

    :goto_36
    if-eqz v1, :cond_5f

    const-string v0, "com.htc.music.musicservicecommand"

    :goto_3a
    if-eqz v0, :cond_5a

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "command"

    const-string v3, "togglepause"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->a()Lcom/coremobility/integration/app/CM_App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/integration/app/CM_App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v0, "CM_Sound CM_MUSIC_RESUME_CMD_STRING"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v7, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_5a
    sput v2, Lcom/coremobility/integration/d/h;->a:I

    goto :goto_2a

    :cond_5d
    move v1, v2

    goto :goto_36

    :cond_5f
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x8

    if-lt v1, v3, :cond_a9

    const-string v1, "com.android.music.musicservicecommand"

    :try_start_67
    invoke-static {}, Lcom/coremobility/integration/d/h;->f()Ljava/lang/reflect/Method;

    move-result-object v3

    if-eqz v3, :cond_ac

    sget-object v4, Lcom/coremobility/integration/d/h;->k:Lcom/coremobility/integration/d/i;

    if-eqz v4, :cond_ac

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v6, Lcom/coremobility/integration/d/h;->k:Lcom/coremobility/integration/d/i;

    aput-object v6, v4, v5

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x0

    sput-object v3, Lcom/coremobility/integration/d/h;->k:Lcom/coremobility/integration/d/i;

    const/16 v3, 0x17

    const-string v4, "CM_Sound abandonAudioFocus"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_89} :catch_8a

    goto :goto_3a

    :catch_8a
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CM_Sound "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v7, v0, v3}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_3a

    :cond_a9
    const-string v0, "com.android.music.musicservicecommand"

    goto :goto_3a

    :cond_ac
    move-object v0, v1

    goto :goto_3a
.end method

.method public static b()Z
    .registers 6

    const/4 v5, 0x1

    :try_start_1
    new-instance v0, Landroid/media/ToneGenerator;

    const/4 v1, 0x2

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Landroid/media/ToneGenerator;-><init>(II)V

    const/16 v1, 0x1b

    invoke-virtual {v0, v1}, Landroid/media/ToneGenerator;->startTone(I)Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_e} :catch_f

    :goto_e
    return v5

    :catch_f
    move-exception v0

    const/16 v1, 0x17

    const-string v2, "ToneGen exception %s"

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_e
.end method

.method public static c(Landroid/media/AudioManager;)I
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v0, 0x5

    :cond_8
    :goto_8
    return v0

    :cond_9
    invoke-static {}, Lcom/coremobility/integration/d/h;->d()I

    move-result v1

    if-eq v1, v0, :cond_15

    invoke-virtual {p0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v1

    if-eqz v1, :cond_17

    :cond_15
    const/4 v0, 0x4

    goto :goto_8

    :cond_17
    invoke-virtual {p0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v1

    if-eqz v1, :cond_1f

    const/4 v0, 0x2

    goto :goto_8

    :cond_1f
    invoke-virtual {p0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v1

    if-nez v1, :cond_8

    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static c()Z
    .registers 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/coremobility/integration/d/h;->e()Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method public static d()I
    .registers 6

    const/16 v5, 0x17

    const/4 v1, 0x0

    :try_start_3
    invoke-static {}, Lcom/coremobility/integration/d/h;->e()Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_63

    sget-object v2, Lcom/coremobility/integration/d/h;->d:Ljava/lang/Object;

    if-eqz v2, :cond_38

    sget-object v2, Lcom/coremobility/integration/d/h;->d:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    :goto_18
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1b} :catch_41

    move-result v0

    const/16 v2, 0x17

    :try_start_1e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AudioModeMethod returned "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_37} :catch_61

    :goto_37
    return v0

    :cond_38
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_3a
    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_40} :catch_41

    goto :goto_18

    :catch_41
    move-exception v0

    move-object v2, v0

    move v0, v1

    :goto_44
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AudioModeMethod returned "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v5, v2, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_37

    :catch_61
    move-exception v2

    goto :goto_44

    :cond_63
    move v0, v1

    goto :goto_37
.end method

.method private static e()Ljava/lang/reflect/Method;
    .registers 8

    const/4 v7, 0x1

    const/16 v6, 0x17

    const/4 v5, 0x0

    const/4 v4, 0x0

    sget-boolean v0, Lcom/coremobility/integration/d/h;->b:Z

    if-nez v0, :cond_6f

    :try_start_9
    const-string v0, "com.sprint.hardware.bluetooth"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "audioMode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/coremobility/integration/d/h;->c:Ljava/lang/reflect/Method;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_18} :catch_72

    :goto_18
    sget-object v0, Lcom/coremobility/integration/d/h;->c:Ljava/lang/reflect/Method;

    if-nez v0, :cond_2b

    :try_start_1c
    const-string v0, "com.sprint.hardware.Bluetooth"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "audioMode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/coremobility/integration/d/h;->c:Ljava/lang/reflect/Method;
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_2b} :catch_92

    :cond_2b
    :goto_2b
    sget-object v0, Lcom/coremobility/integration/d/h;->c:Ljava/lang/reflect/Method;

    if-nez v0, :cond_62

    :try_start_2f
    const-string v0, "com.sprint.hardware.Bluetooth"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Landroid/content/Context;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->a()Lcom/coremobility/integration/app/CM_App;

    move-result-object v3

    invoke-virtual {v3}, Lcom/coremobility/integration/app/CM_App;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/coremobility/integration/d/h;->d:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getAudioMode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/coremobility/integration/d/h;->c:Ljava/lang/reflect/Method;
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_62} :catch_b3

    :cond_62
    :goto_62
    sget-object v0, Lcom/coremobility/integration/d/h;->c:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_d5

    const-string v0, "Has AudioModeMethod"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v6, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_6d
    sput-boolean v7, Lcom/coremobility/integration/d/h;->b:Z

    :cond_6f
    sget-object v0, Lcom/coremobility/integration/d/h;->c:Ljava/lang/reflect/Method;

    return-object v0

    :catch_72
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioModeMethod returned "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v6, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    sput-object v5, Lcom/coremobility/integration/d/h;->c:Ljava/lang/reflect/Method;

    goto :goto_18

    :catch_92
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioModeMethod returned "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v6, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    sput-object v5, Lcom/coremobility/integration/d/h;->c:Ljava/lang/reflect/Method;

    goto/16 :goto_2b

    :catch_b3
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioModeMethod returned "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v6, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    sput-object v5, Lcom/coremobility/integration/d/h;->c:Ljava/lang/reflect/Method;

    sput-object v5, Lcom/coremobility/integration/d/h;->d:Ljava/lang/Object;

    goto :goto_62

    :cond_d5
    const-string v0, "Dont have AudioModeMethod"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v6, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6d
.end method

.method private static f()Ljava/lang/reflect/Method;
    .registers 8

    const/4 v7, 0x1

    const/16 v6, 0x17

    const/4 v5, 0x0

    sget-boolean v0, Lcom/coremobility/integration/d/h;->e:Z

    if-nez v0, :cond_3d

    :try_start_8
    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->a()Lcom/coremobility/integration/app/CM_App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/integration/app/CM_App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const-string v1, "android.media.AudioManager$OnAudioFocusChangeListener"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "abandonAudioFocus"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/coremobility/integration/d/h;->h:Ljava/lang/reflect/Method;
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_30} :catch_40

    :goto_30
    sget-object v0, Lcom/coremobility/integration/d/h;->h:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_5e

    const-string v0, "Has abandonAudioFocus method"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v6, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_3b
    sput-boolean v7, Lcom/coremobility/integration/d/h;->e:Z

    :cond_3d
    sget-object v0, Lcom/coremobility/integration/d/h;->h:Ljava/lang/reflect/Method;

    return-object v0

    :catch_40
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CM_Sound "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v6, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_30

    :cond_5e
    const-string v0, "Dont have abandonAudioFocus method"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v6, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3b
.end method

.method private static g()Ljava/lang/reflect/Method;
    .registers 8

    const/4 v7, 0x1

    const/16 v6, 0x17

    const/4 v5, 0x0

    sget-boolean v0, Lcom/coremobility/integration/d/h;->f:Z

    if-nez v0, :cond_67

    :try_start_8
    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->a()Lcom/coremobility/integration/app/CM_App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/integration/app/CM_App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const-string v1, "android.media.AudioManager$OnAudioFocusChangeListener"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "requestAudioFocus"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v1

    const/4 v1, 0x2

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v1

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/coremobility/integration/d/h;->g:Ljava/lang/reflect/Method;

    const-class v0, Landroid/media/AudioManager;

    const-string v1, "STREAM_MUSIC"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const-class v1, Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/coremobility/integration/d/h;->i:I

    const-class v0, Landroid/media/AudioManager;

    const-string v1, "AUDIOFOCUS_GAIN"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const-class v1, Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/coremobility/integration/d/h;->j:I
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_5a} :catch_6a

    :goto_5a
    sget-object v0, Lcom/coremobility/integration/d/h;->g:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_88

    const-string v0, "Has requestAudioFocus method"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v6, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_65
    sput-boolean v7, Lcom/coremobility/integration/d/h;->f:Z

    :cond_67
    sget-object v0, Lcom/coremobility/integration/d/h;->g:Ljava/lang/reflect/Method;

    return-object v0

    :catch_6a
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CM_Sound  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v6, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5a

    :cond_88
    const-string v0, "Dont have requestAudioFocus method"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v6, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_65
.end method
