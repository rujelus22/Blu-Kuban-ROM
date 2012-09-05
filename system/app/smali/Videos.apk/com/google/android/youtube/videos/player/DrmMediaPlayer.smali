.class public Lcom/google/android/youtube/videos/player/DrmMediaPlayer;
.super Landroid/media/MediaPlayer;
.source "DrmMediaPlayer.java"

# interfaces
.implements Lcom/google/android/youtube/videos/DrmManager$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/videos/player/DrmMediaPlayer$1;
    }
.end annotation


# instance fields
.field private final drmManager:Lcom/google/android/youtube/videos/DrmManager;

.field protected errorListener:Landroid/media/MediaPlayer$OnErrorListener;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/videos/DrmManager;)V
    .registers 2
    .parameter "drmManager"

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/media/MediaPlayer;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/google/android/youtube/videos/player/DrmMediaPlayer;->drmManager:Lcom/google/android/youtube/videos/DrmManager;

    .line 33
    invoke-virtual {p1, p0}, Lcom/google/android/youtube/videos/DrmManager;->setListener(Lcom/google/android/youtube/videos/DrmManager$Listener;)V

    .line 34
    return-void
.end method

.method private toMediaPlayerErrorCode(I)I
    .registers 3
    .parameter "cgiError"

    .prologue
    .line 74
    packed-switch p1, :pswitch_data_18

    .line 88
    const/16 v0, -0xbbe

    :goto_5
    return v0

    .line 76
    :pswitch_6
    const/16 v0, -0xbb8

    goto :goto_5

    .line 78
    :pswitch_9
    const/16 v0, -0xbb9

    goto :goto_5

    .line 80
    :pswitch_c
    const/16 v0, -0xbba

    goto :goto_5

    .line 82
    :pswitch_f
    const/16 v0, -0xbbb

    goto :goto_5

    .line 84
    :pswitch_12
    const/16 v0, -0xbbc

    goto :goto_5

    .line 86
    :pswitch_15
    const/16 v0, -0xbbd

    goto :goto_5

    .line 74
    :pswitch_data_18
    .packed-switch 0x201
        :pswitch_6
        :pswitch_9
        :pswitch_c
        :pswitch_f
        :pswitch_12
        :pswitch_15
    .end packed-switch
.end method


# virtual methods
.method public final onHeartbeatError(Ljava/lang/String;I)V
    .registers 6
    .parameter "assetPath"
    .parameter "cgiError"

    .prologue
    .line 56
    invoke-direct {p0, p2}, Lcom/google/android/youtube/videos/player/DrmMediaPlayer;->toMediaPlayerErrorCode(I)I

    move-result v0

    .line 57
    .local v0, mediaPlayerError:I
    iget-object v1, p0, Lcom/google/android/youtube/videos/player/DrmMediaPlayer;->errorListener:Landroid/media/MediaPlayer$OnErrorListener;

    const/4 v2, 0x1

    invoke-interface {v1, p0, v2, v0}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    .line 58
    return-void
.end method

.method public final onPlaybackStopped(Ljava/lang/String;Lcom/google/android/youtube/videos/DrmManager$StopReason;)V
    .registers 6
    .parameter "assetPath"
    .parameter "reason"

    .prologue
    const/4 v2, 0x1

    .line 61
    sget-object v0, Lcom/google/android/youtube/videos/player/DrmMediaPlayer$1;->$SwitchMap$com$google$android$youtube$videos$DrmManager$StopReason:[I

    invoke-virtual {p2}, Lcom/google/android/youtube/videos/DrmManager$StopReason;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1e

    .line 71
    :goto_c
    return-void

    .line 63
    :pswitch_d
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/DrmMediaPlayer;->errorListener:Landroid/media/MediaPlayer$OnErrorListener;

    const/16 v1, 0x1f

    invoke-interface {v0, p0, v2, v1}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    goto :goto_c

    .line 67
    :pswitch_15
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/DrmMediaPlayer;->errorListener:Landroid/media/MediaPlayer$OnErrorListener;

    const/16 v1, 0x20

    invoke-interface {v0, p0, v2, v1}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    goto :goto_c

    .line 61
    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_d
        :pswitch_15
    .end packed-switch
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    .registers 7
    .parameter "context"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 39
    iget-object v1, p0, Lcom/google/android/youtube/videos/player/DrmMediaPlayer;->drmManager:Lcom/google/android/youtube/videos/DrmManager;

    invoke-virtual {v1, p2}, Lcom/google/android/youtube/videos/DrmManager;->getPlayableUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 40
    .local v0, playableUri:Landroid/net/Uri;
    if-nez v0, :cond_21

    .line 42
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t obtain playable stream for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 44
    :cond_21
    invoke-super {p0, p1, v0}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 46
    return-void
.end method

.method public final setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .registers 2
    .parameter "errorListener"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/google/android/youtube/videos/player/DrmMediaPlayer;->errorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 51
    invoke-super {p0, p1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 52
    return-void
.end method
