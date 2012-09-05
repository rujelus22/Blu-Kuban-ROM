.class Lcom/vlingo/client/android/core/audio/MediaPlayerTonePlayer$Player;
.super Ljava/lang/Object;
.source "MediaPlayerTonePlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/android/core/audio/MediaPlayerTonePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Player"
.end annotation


# instance fields
.field private listener:Lcom/vlingo/client/android/core/audio/MediaPlayerTonePlayer$TonePlayerListener;

.field private mp:Landroid/media/MediaPlayer;

.field private final startTime:J

.field final synthetic this$0:Lcom/vlingo/client/android/core/audio/MediaPlayerTonePlayer;


# direct methods
.method private constructor <init>(Lcom/vlingo/client/android/core/audio/MediaPlayerTonePlayer;Landroid/media/MediaPlayer;Lcom/vlingo/client/android/core/audio/MediaPlayerTonePlayer$TonePlayerListener;J)V
    .registers 6
    .parameter
    .parameter "mp"
    .parameter "listener"
    .parameter "startTime"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/vlingo/client/android/core/audio/MediaPlayerTonePlayer$Player;->this$0:Lcom/vlingo/client/android/core/audio/MediaPlayerTonePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p2, p0, Lcom/vlingo/client/android/core/audio/MediaPlayerTonePlayer$Player;->mp:Landroid/media/MediaPlayer;

    .line 76
    iput-object p3, p0, Lcom/vlingo/client/android/core/audio/MediaPlayerTonePlayer$Player;->listener:Lcom/vlingo/client/android/core/audio/MediaPlayerTonePlayer$TonePlayerListener;

    .line 77
    iput-wide p4, p0, Lcom/vlingo/client/android/core/audio/MediaPlayerTonePlayer$Player;->startTime:J

    .line 78
    invoke-virtual {p2, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 79
    invoke-virtual {p2, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 80
    invoke-virtual {p2, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 81
    invoke-virtual {p2, p0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 82
    invoke-virtual {p2, p0}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 83
    invoke-virtual {p2, p0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 84
    return-void
.end method

.method synthetic constructor <init>(Lcom/vlingo/client/android/core/audio/MediaPlayerTonePlayer;Landroid/media/MediaPlayer;Lcom/vlingo/client/android/core/audio/MediaPlayerTonePlayer$TonePlayerListener;JLcom/vlingo/client/android/core/audio/MediaPlayerTonePlayer$1;)V
    .registers 7
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 62
    invoke-direct/range {p0 .. p5}, Lcom/vlingo/client/android/core/audio/MediaPlayerTonePlayer$Player;-><init>(Lcom/vlingo/client/android/core/audio/MediaPlayerTonePlayer;Landroid/media/MediaPlayer;Lcom/vlingo/client/android/core/audio/MediaPlayerTonePlayer$TonePlayerListener;J)V

    return-void
.end method

.method static synthetic access$100(Lcom/vlingo/client/android/core/audio/MediaPlayerTonePlayer$Player;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/vlingo/client/android/core/audio/MediaPlayerTonePlayer$Player;->play()V

    return-void
.end method

.method private declared-synchronized notifyListener()V
    .registers 2

    .prologue
    .line 102
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/vlingo/client/android/core/audio/MediaPlayerTonePlayer$Player;->listener:Lcom/vlingo/client/android/core/audio/MediaPlayerTonePlayer$TonePlayerListener;

    if-eqz v0, :cond_d

    .line 105
    iget-object v0, p0, Lcom/vlingo/client/android/core/audio/MediaPlayerTonePlayer$Player;->listener:Lcom/vlingo/client/android/core/audio/MediaPlayerTonePlayer$TonePlayerListener;

    invoke-interface {v0}, Lcom/vlingo/client/android/core/audio/MediaPlayerTonePlayer$TonePlayerListener;->onToneComplete()V

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vlingo/client/android/core/audio/MediaPlayerTonePlayer$Player;->listener:Lcom/vlingo/client/android/core/audio/MediaPlayerTonePlayer$TonePlayerListener;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 108
    :cond_d
    monitor-exit p0

    return-void

    .line 102
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private play()V
    .registers 3

    .prologue
    .line 90
    :try_start_0
    iget-object v1, p0, Lcom/vlingo/client/android/core/audio/MediaPlayerTonePlayer$Player;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 97
    :goto_5
    return-void

    .line 91
    :catch_6
    move-exception v0

    .line 94
    .local v0, ex:Ljava/lang/Exception;
    invoke-direct {p0}, Lcom/vlingo/client/android/core/audio/MediaPlayerTonePlayer$Player;->release()V

    .line 95
    invoke-direct {p0}, Lcom/vlingo/client/android/core/audio/MediaPlayerTonePlayer$Player;->notifyListener()V

    goto :goto_5
.end method

.method private declared-synchronized release()V
    .registers 3

    .prologue
    .line 129
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/vlingo/client/android/core/audio/MediaPlayerTonePlayer$Player;->mp:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_a

    .line 130
    iget-object v0, p0, Lcom/vlingo/client/android/core/audio/MediaPlayerTonePlayer$Player;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_17
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_f

    .line 138
    :cond_a
    const/4 v0, 0x0

    :try_start_b
    iput-object v0, p0, Lcom/vlingo/client/android/core/audio/MediaPlayerTonePlayer$Player;->mp:Landroid/media/MediaPlayer;
    :try_end_d
    .catchall {:try_start_b .. :try_end_d} :catchall_14

    .line 142
    :goto_d
    monitor-exit p0

    return-void

    .line 133
    :catch_f
    move-exception v0

    .line 138
    const/4 v0, 0x0

    :try_start_11
    iput-object v0, p0, Lcom/vlingo/client/android/core/audio/MediaPlayerTonePlayer$Player;->mp:Landroid/media/MediaPlayer;
    :try_end_13
    .catchall {:try_start_11 .. :try_end_13} :catchall_14

    goto :goto_d

    .line 129
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0

    .line 138
    :catchall_17
    move-exception v0

    const/4 v1, 0x0

    :try_start_19
    iput-object v1, p0, Lcom/vlingo/client/android/core/audio/MediaPlayerTonePlayer$Player;->mp:Landroid/media/MediaPlayer;

    throw v0
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_14
.end method


# virtual methods
.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .registers 3
    .parameter "mp"
    .parameter "percent"

    .prologue
    .line 162
    return-void
.end method

.method public declared-synchronized onCompletion(Landroid/media/MediaPlayer;)V
    .registers 3
    .parameter "mp"

    .prologue
    .line 113
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/vlingo/client/android/core/audio/MediaPlayerTonePlayer$Player;->release()V

    .line 114
    invoke-direct {p0}, Lcom/vlingo/client/android/core/audio/MediaPlayerTonePlayer$Player;->notifyListener()V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 115
    monitor-exit p0

    return-void

    .line 113
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onError(Landroid/media/MediaPlayer;II)Z
    .registers 5
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 120
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/vlingo/client/android/core/audio/MediaPlayerTonePlayer$Player;->release()V

    .line 121
    invoke-direct {p0}, Lcom/vlingo/client/android/core/audio/MediaPlayerTonePlayer$Player;->notifyListener()V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_a

    .line 122
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 120
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .registers 5
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 151
    const/4 v0, 0x0

    return v0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 2
    .parameter "mp"

    .prologue
    .line 167
    return-void
.end method

.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .registers 2
    .parameter "mp"

    .prologue
    .line 157
    return-void
.end method
