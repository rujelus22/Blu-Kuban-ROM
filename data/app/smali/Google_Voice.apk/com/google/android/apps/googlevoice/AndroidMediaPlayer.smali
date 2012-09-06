.class public Lcom/google/android/apps/googlevoice/AndroidMediaPlayer;
.super Ljava/lang/Object;
.source "AndroidMediaPlayer.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/MediaPlayer;


# instance fields
.field private androidPlayer:Landroid/media/MediaPlayer;

.field private buildIsDonutOrEarlier:Z


# direct methods
.method public constructor <init>(Z)V
    .registers 3
    .parameter "buildIsDonutOrEarlier"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidMediaPlayer;->androidPlayer:Landroid/media/MediaPlayer;

    .line 27
    iput-boolean p1, p0, Lcom/google/android/apps/googlevoice/AndroidMediaPlayer;->buildIsDonutOrEarlier:Z

    .line 28
    return-void
.end method


# virtual methods
.method public done()V
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidMediaPlayer;->androidPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_19

    .line 33
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidMediaPlayer;->androidPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 34
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidMediaPlayer;->androidPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 36
    :cond_11
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidMediaPlayer;->androidPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidMediaPlayer;->androidPlayer:Landroid/media/MediaPlayer;

    .line 39
    :cond_19
    return-void
.end method

.method public isPlaying()Z
    .registers 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidMediaPlayer;->androidPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidMediaPlayer;->androidPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isPrepared()Z
    .registers 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidMediaPlayer;->androidPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public pause()V
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidMediaPlayer;->androidPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_9

    .line 44
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidMediaPlayer;->androidPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 46
    :cond_9
    return-void
.end method

.method public prepareToPlayFile(Landroid/content/Context;Ljava/lang/String;I)Z
    .registers 11
    .parameter "context"
    .parameter "filename"
    .parameter "streamtype"

    .prologue
    .line 57
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/AndroidMediaPlayer;->androidPlayer:Landroid/media/MediaPlayer;

    if-eqz v5, :cond_c

    .line 58
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/AndroidMediaPlayer;->androidPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->release()V

    .line 59
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/google/android/apps/googlevoice/AndroidMediaPlayer;->androidPlayer:Landroid/media/MediaPlayer;

    .line 61
    :cond_c
    const/4 v0, 0x0

    .line 62
    .local v0, didPrepare:Z
    const/4 v2, 0x0

    .line 64
    .local v2, player:Landroid/media/MediaPlayer;
    :try_start_e
    sget-boolean v5, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v5, :cond_17

    .line 65
    const-string v5, "Creating input stream"

    invoke-static {v5}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 67
    :cond_17
    invoke-virtual {p1, p2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v4

    .line 68
    .local v4, stream:Ljava/io/FileInputStream;
    sget-boolean v5, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v5, :cond_24

    .line 69
    const-string v5, "Creating media player"

    invoke-static {v5}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 71
    :cond_24
    new-instance v3, Landroid/media/MediaPlayer;

    invoke-direct {v3}, Landroid/media/MediaPlayer;-><init>()V
    :try_end_29
    .catchall {:try_start_e .. :try_end_29} :catchall_9a
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_29} :catch_63
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_29} :catch_6e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_29} :catch_79
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_29} :catch_84
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_29} :catch_8f

    .line 72
    .end local v2           #player:Landroid/media/MediaPlayer;
    .local v3, player:Landroid/media/MediaPlayer;
    :try_start_29
    sget-boolean v5, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v5, :cond_32

    .line 73
    const-string v5, "setting data source"

    invoke-static {v5}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 75
    :cond_32
    invoke-virtual {v4}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 76
    iget-boolean v5, p0, Lcom/google/android/apps/googlevoice/AndroidMediaPlayer;->buildIsDonutOrEarlier:Z

    if-nez v5, :cond_49

    .line 78
    sget-boolean v5, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v5, :cond_46

    .line 79
    const-string v5, "Eclair or later: setting stream type"

    invoke-static {v5}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 81
    :cond_46
    invoke-virtual {v3, p3}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 83
    :cond_49
    const/high16 v5, 0x3f80

    const/high16 v6, 0x3f80

    invoke-virtual {v3, v5, v6}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 84
    sget-boolean v5, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v5, :cond_59

    .line 85
    const-string v5, "Preparing media player"

    invoke-static {v5}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 87
    :cond_59
    invoke-virtual {v3}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_5c
    .catchall {:try_start_29 .. :try_end_5c} :catchall_a0
    .catch Ljava/lang/NullPointerException; {:try_start_29 .. :try_end_5c} :catch_af
    .catch Ljava/io/FileNotFoundException; {:try_start_29 .. :try_end_5c} :catch_ac
    .catch Ljava/lang/IllegalArgumentException; {:try_start_29 .. :try_end_5c} :catch_a9
    .catch Ljava/lang/IllegalStateException; {:try_start_29 .. :try_end_5c} :catch_a6
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_5c} :catch_a3

    .line 88
    const/4 v0, 0x1

    .line 100
    if-eqz v0, :cond_b2

    .line 101
    iput-object v3, p0, Lcom/google/android/apps/googlevoice/AndroidMediaPlayer;->androidPlayer:Landroid/media/MediaPlayer;

    move-object v2, v3

    .line 104
    .end local v3           #player:Landroid/media/MediaPlayer;
    .end local v4           #stream:Ljava/io/FileInputStream;
    .restart local v2       #player:Landroid/media/MediaPlayer;
    :cond_62
    :goto_62
    return v0

    .line 89
    :catch_63
    move-exception v1

    .line 90
    .local v1, e:Ljava/lang/NullPointerException;
    :goto_64
    :try_start_64
    const-string v5, "prepareToPlayFile"

    invoke-static {v5, v1}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_69
    .catchall {:try_start_64 .. :try_end_69} :catchall_9a

    .line 100
    if-eqz v0, :cond_62

    .line 101
    iput-object v2, p0, Lcom/google/android/apps/googlevoice/AndroidMediaPlayer;->androidPlayer:Landroid/media/MediaPlayer;

    goto :goto_62

    .line 91
    .end local v1           #e:Ljava/lang/NullPointerException;
    :catch_6e
    move-exception v1

    .line 92
    .local v1, e:Ljava/io/FileNotFoundException;
    :goto_6f
    :try_start_6f
    const-string v5, "prepareToPlayFile"

    invoke-static {v5, v1}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_74
    .catchall {:try_start_6f .. :try_end_74} :catchall_9a

    .line 100
    if-eqz v0, :cond_62

    .line 101
    iput-object v2, p0, Lcom/google/android/apps/googlevoice/AndroidMediaPlayer;->androidPlayer:Landroid/media/MediaPlayer;

    goto :goto_62

    .line 93
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_79
    move-exception v1

    .line 94
    .local v1, e:Ljava/lang/IllegalArgumentException;
    :goto_7a
    :try_start_7a
    const-string v5, "prepareToPlayFile"

    invoke-static {v5, v1}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7f
    .catchall {:try_start_7a .. :try_end_7f} :catchall_9a

    .line 100
    if-eqz v0, :cond_62

    .line 101
    iput-object v2, p0, Lcom/google/android/apps/googlevoice/AndroidMediaPlayer;->androidPlayer:Landroid/media/MediaPlayer;

    goto :goto_62

    .line 95
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_84
    move-exception v1

    .line 96
    .local v1, e:Ljava/lang/IllegalStateException;
    :goto_85
    :try_start_85
    const-string v5, "prepareToPlayFile"

    invoke-static {v5, v1}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8a
    .catchall {:try_start_85 .. :try_end_8a} :catchall_9a

    .line 100
    if-eqz v0, :cond_62

    .line 101
    iput-object v2, p0, Lcom/google/android/apps/googlevoice/AndroidMediaPlayer;->androidPlayer:Landroid/media/MediaPlayer;

    goto :goto_62

    .line 97
    .end local v1           #e:Ljava/lang/IllegalStateException;
    :catch_8f
    move-exception v1

    .line 98
    .local v1, e:Ljava/io/IOException;
    :goto_90
    :try_start_90
    const-string v5, "prepareToPlayFile"

    invoke-static {v5, v1}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_95
    .catchall {:try_start_90 .. :try_end_95} :catchall_9a

    .line 100
    if-eqz v0, :cond_62

    .line 101
    iput-object v2, p0, Lcom/google/android/apps/googlevoice/AndroidMediaPlayer;->androidPlayer:Landroid/media/MediaPlayer;

    goto :goto_62

    .line 100
    .end local v1           #e:Ljava/io/IOException;
    :catchall_9a
    move-exception v5

    :goto_9b
    if-eqz v0, :cond_9f

    .line 101
    iput-object v2, p0, Lcom/google/android/apps/googlevoice/AndroidMediaPlayer;->androidPlayer:Landroid/media/MediaPlayer;

    :cond_9f
    throw v5

    .line 100
    .end local v2           #player:Landroid/media/MediaPlayer;
    .restart local v3       #player:Landroid/media/MediaPlayer;
    .restart local v4       #stream:Ljava/io/FileInputStream;
    :catchall_a0
    move-exception v5

    move-object v2, v3

    .end local v3           #player:Landroid/media/MediaPlayer;
    .restart local v2       #player:Landroid/media/MediaPlayer;
    goto :goto_9b

    .line 97
    .end local v2           #player:Landroid/media/MediaPlayer;
    .restart local v3       #player:Landroid/media/MediaPlayer;
    :catch_a3
    move-exception v1

    move-object v2, v3

    .end local v3           #player:Landroid/media/MediaPlayer;
    .restart local v2       #player:Landroid/media/MediaPlayer;
    goto :goto_90

    .line 95
    .end local v2           #player:Landroid/media/MediaPlayer;
    .restart local v3       #player:Landroid/media/MediaPlayer;
    :catch_a6
    move-exception v1

    move-object v2, v3

    .end local v3           #player:Landroid/media/MediaPlayer;
    .restart local v2       #player:Landroid/media/MediaPlayer;
    goto :goto_85

    .line 93
    .end local v2           #player:Landroid/media/MediaPlayer;
    .restart local v3       #player:Landroid/media/MediaPlayer;
    :catch_a9
    move-exception v1

    move-object v2, v3

    .end local v3           #player:Landroid/media/MediaPlayer;
    .restart local v2       #player:Landroid/media/MediaPlayer;
    goto :goto_7a

    .line 91
    .end local v2           #player:Landroid/media/MediaPlayer;
    .restart local v3       #player:Landroid/media/MediaPlayer;
    :catch_ac
    move-exception v1

    move-object v2, v3

    .end local v3           #player:Landroid/media/MediaPlayer;
    .restart local v2       #player:Landroid/media/MediaPlayer;
    goto :goto_6f

    .line 89
    .end local v2           #player:Landroid/media/MediaPlayer;
    .restart local v3       #player:Landroid/media/MediaPlayer;
    :catch_af
    move-exception v1

    move-object v2, v3

    .end local v3           #player:Landroid/media/MediaPlayer;
    .restart local v2       #player:Landroid/media/MediaPlayer;
    goto :goto_64

    .end local v2           #player:Landroid/media/MediaPlayer;
    .restart local v3       #player:Landroid/media/MediaPlayer;
    :cond_b2
    move-object v2, v3

    .end local v3           #player:Landroid/media/MediaPlayer;
    .restart local v2       #player:Landroid/media/MediaPlayer;
    goto :goto_62
.end method

.method public seekTo(I)V
    .registers 3
    .parameter "position"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidMediaPlayer;->androidPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_9

    .line 110
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidMediaPlayer;->androidPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 112
    :cond_9
    return-void
.end method

.method public start()V
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidMediaPlayer;->androidPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_9

    .line 51
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidMediaPlayer;->androidPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 53
    :cond_9
    return-void
.end method

.method public stop()V
    .registers 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidMediaPlayer;->androidPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_11

    .line 117
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidMediaPlayer;->androidPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 118
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidMediaPlayer;->androidPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 121
    :cond_11
    return-void
.end method
