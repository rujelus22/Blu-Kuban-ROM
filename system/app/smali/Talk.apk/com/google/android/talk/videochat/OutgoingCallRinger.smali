.class public Lcom/google/android/talk/videochat/OutgoingCallRinger;
.super Ljava/lang/Object;
.source "OutgoingCallRinger.java"

# interfaces
.implements Lcom/google/android/talk/videochat/CallRinger;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsPrepared:Z

.field private mMediaPlayer:Landroid/media/MediaPlayer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 7
    .parameter "context"
    .parameter "handler"

    .prologue
    const/4 v3, 0x0

    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-boolean v3, p0, Lcom/google/android/talk/videochat/OutgoingCallRinger;->mIsPrepared:Z

    .line 32
    iput-object p1, p0, Lcom/google/android/talk/videochat/OutgoingCallRinger;->mContext:Landroid/content/Context;

    .line 33
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/google/android/talk/videochat/OutgoingCallRinger;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 34
    iget-object v1, p0, Lcom/google/android/talk/videochat/OutgoingCallRinger;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 35
    const-string v1, "android.resource://com.google.android.talk/raw/outgoing_call_ring"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/talk/videochat/OutgoingCallRinger;->setCustomRingtoneUri(Landroid/net/Uri;)V

    .line 36
    invoke-direct {p0, v3}, Lcom/google/android/talk/videochat/OutgoingCallRinger;->setStreamType(I)V

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gtalk_vc_ringback_volume"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 43
    .local v0, overrideVolume:I
    if-ltz v0, :cond_39

    const/16 v1, 0x64

    if-gt v0, v1, :cond_39

    .line 44
    int-to-float v1, v0

    const/high16 v2, 0x42c8

    div-float/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/google/android/talk/videochat/OutgoingCallRinger;->setVolume(F)V

    .line 46
    :cond_39
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 123
    const-string v0, "talk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OutgoingCallRinger] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/talk/TalkApp;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method private prepare()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 104
    iget-boolean v2, p0, Lcom/google/android/talk/videochat/OutgoingCallRinger;->mIsPrepared:Z

    if-eqz v2, :cond_6

    .line 114
    :goto_5
    return v1

    .line 109
    :cond_6
    :try_start_6
    iget-object v2, p0, Lcom/google/android/talk/videochat/OutgoingCallRinger;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepare()V

    .line 110
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/talk/videochat/OutgoingCallRinger;->mIsPrepared:Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_e} :catch_f

    goto :goto_5

    .line 112
    :catch_f
    move-exception v0

    .line 113
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to prepare ringer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/talk/videochat/OutgoingCallRinger;->loge(Ljava/lang/String;)V

    .line 114
    const/4 v1, 0x0

    goto :goto_5
.end method

.method private setCustomRingtoneUri(Landroid/net/Uri;)V
    .registers 5
    .parameter "uri"

    .prologue
    .line 73
    iget-boolean v1, p0, Lcom/google/android/talk/videochat/OutgoingCallRinger;->mIsPrepared:Z

    if-eqz v1, :cond_c

    .line 75
    iget-object v1, p0, Lcom/google/android/talk/videochat/OutgoingCallRinger;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 76
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/talk/videochat/OutgoingCallRinger;->mIsPrepared:Z

    .line 80
    :cond_c
    :try_start_c
    iget-object v1, p0, Lcom/google/android/talk/videochat/OutgoingCallRinger;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/google/android/talk/videochat/OutgoingCallRinger;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, p1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_13} :catch_14

    .line 84
    :goto_13
    return-void

    .line 81
    :catch_14
    move-exception v0

    .line 82
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to set data source: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/talk/videochat/OutgoingCallRinger;->loge(Ljava/lang/String;)V

    goto :goto_13
.end method

.method private setStreamType(I)V
    .registers 3
    .parameter "streamType"

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/google/android/talk/videochat/OutgoingCallRinger;->mIsPrepared:Z

    if-eqz v0, :cond_c

    .line 89
    iget-object v0, p0, Lcom/google/android/talk/videochat/OutgoingCallRinger;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/talk/videochat/OutgoingCallRinger;->mIsPrepared:Z

    .line 92
    :cond_c
    iget-object v0, p0, Lcom/google/android/talk/videochat/OutgoingCallRinger;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 93
    return-void
.end method

.method private setVolume(F)V
    .registers 3
    .parameter "volume"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/android/talk/videochat/OutgoingCallRinger;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 101
    return-void
.end method


# virtual methods
.method public startRing()V
    .registers 3

    .prologue
    .line 50
    monitor-enter p0

    .line 51
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/talk/videochat/OutgoingCallRinger;->prepare()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 52
    iget-object v0, p0, Lcom/google/android/talk/videochat/OutgoingCallRinger;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 53
    iget-object v0, p0, Lcom/google/android/talk/videochat/OutgoingCallRinger;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 55
    :cond_14
    iget-object v0, p0, Lcom/google/android/talk/videochat/OutgoingCallRinger;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 56
    iget-object v0, p0, Lcom/google/android/talk/videochat/OutgoingCallRinger;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 58
    :cond_1f
    monitor-exit p0

    .line 59
    return-void

    .line 58
    :catchall_21
    move-exception v0

    monitor-exit p0
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_21

    throw v0
.end method

.method public stopRing()V
    .registers 2

    .prologue
    .line 63
    monitor-enter p0

    .line 66
    :try_start_1
    iget-object v0, p0, Lcom/google/android/talk/videochat/OutgoingCallRinger;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 67
    iget-object v0, p0, Lcom/google/android/talk/videochat/OutgoingCallRinger;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 69
    :cond_e
    monitor-exit p0

    .line 70
    return-void

    .line 69
    :catchall_10
    move-exception v0

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_10

    throw v0
.end method
