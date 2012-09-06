.class public Lcom/google/android/apps/translate/NetworkTtsPlayer;
.super Ljava/lang/Object;
.source "NetworkTtsPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/translate/NetworkTtsPlayer$1;,
        Lcom/google/android/apps/translate/NetworkTtsPlayer$Thread;,
        Lcom/google/android/apps/translate/NetworkTtsPlayer$Command;,
        Lcom/google/android/apps/translate/NetworkTtsPlayer$TtsNotFoundException;
    }
.end annotation


# static fields
.field private static final NETWORK_BUFFER:[B = null

.field private static final PLAY:I = 0x1

.field private static final PREFETCH:I = 0x3

.field private static final STOP:I = 0x2

.field private static final TAG:Ljava/lang/String; = "NetworkTtsPlayer"

.field private static final TTS_AUDIO_FILE:Ljava/lang/String; = "tts.dat"

.field public static final TTS_TOO_LONG:I = 0x1

.field public static final TTS_UNAVAILABLE:I = 0x0

.field private static final USER_AGENT:Ljava/lang/String; = "AndroidTranslate"


# instance fields
.field private mCmdQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/android/apps/translate/NetworkTtsPlayer$Command;",
            ">;"
        }
    .end annotation
.end field

.field private mLastUri:Landroid/net/Uri;

.field private mPlayer:Landroid/media/MediaPlayer;

.field private mPrefetchedUri:Landroid/net/Uri;

.field private mPrefetchingPlayer:Landroid/media/MediaPlayer;

.field private mState:I

.field private mThread:Lcom/google/android/apps/translate/NetworkTtsPlayer$Thread;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 37
    const/16 v0, 0x200

    new-array v0, v0, [B

    sput-object v0, Lcom/google/android/apps/translate/NetworkTtsPlayer;->NETWORK_BUFFER:[B

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/apps/translate/NetworkTtsPlayer;->mState:I

    .line 73
    invoke-static {}, Lcom/google/android/apps/translate/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/translate/NetworkTtsPlayer;->mCmdQueue:Ljava/util/LinkedList;

    .line 207
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/translate/NetworkTtsPlayer;)Ljava/util/LinkedList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/apps/translate/NetworkTtsPlayer;->mCmdQueue:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/translate/NetworkTtsPlayer;Lcom/google/android/apps/translate/NetworkTtsPlayer$Command;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/google/android/apps/translate/NetworkTtsPlayer;->startSound(Lcom/google/android/apps/translate/NetworkTtsPlayer$Command;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/apps/translate/NetworkTtsPlayer;)Landroid/media/MediaPlayer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/apps/translate/NetworkTtsPlayer;->mPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/translate/NetworkTtsPlayer;Lcom/google/android/apps/translate/NetworkTtsPlayer$Command;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/google/android/apps/translate/NetworkTtsPlayer;->prefetchSound(Lcom/google/android/apps/translate/NetworkTtsPlayer$Command;)V

    return-void
.end method

.method static synthetic access$402(Lcom/google/android/apps/translate/NetworkTtsPlayer;Lcom/google/android/apps/translate/NetworkTtsPlayer$Thread;)Lcom/google/android/apps/translate/NetworkTtsPlayer$Thread;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/google/android/apps/translate/NetworkTtsPlayer;->mThread:Lcom/google/android/apps/translate/NetworkTtsPlayer$Thread;

    return-object p1
.end method

.method static synthetic access$500(Lcom/google/android/apps/translate/NetworkTtsPlayer;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/google/android/apps/translate/NetworkTtsPlayer;->releaseWakeLock()V

    return-void
.end method

.method private acquireWakeLock()V
    .registers 2

    .prologue
    .line 358
    iget-object v0, p0, Lcom/google/android/apps/translate/NetworkTtsPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_9

    .line 359
    iget-object v0, p0, Lcom/google/android/apps/translate/NetworkTtsPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 361
    :cond_9
    return-void
.end method

.method private enqueueLocked(Lcom/google/android/apps/translate/NetworkTtsPlayer$Command;)V
    .registers 3
    .parameter "cmd"

    .prologue
    .line 324
    iget-object v0, p0, Lcom/google/android/apps/translate/NetworkTtsPlayer;->mCmdQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 326
    iget-object v0, p0, Lcom/google/android/apps/translate/NetworkTtsPlayer;->mCmdQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 327
    iget-object v0, p0, Lcom/google/android/apps/translate/NetworkTtsPlayer;->mThread:Lcom/google/android/apps/translate/NetworkTtsPlayer$Thread;

    if-nez v0, :cond_1d

    .line 328
    invoke-direct {p0}, Lcom/google/android/apps/translate/NetworkTtsPlayer;->acquireWakeLock()V

    .line 329
    new-instance v0, Lcom/google/android/apps/translate/NetworkTtsPlayer$Thread;

    invoke-direct {v0, p0}, Lcom/google/android/apps/translate/NetworkTtsPlayer$Thread;-><init>(Lcom/google/android/apps/translate/NetworkTtsPlayer;)V

    iput-object v0, p0, Lcom/google/android/apps/translate/NetworkTtsPlayer;->mThread:Lcom/google/android/apps/translate/NetworkTtsPlayer$Thread;

    .line 330
    iget-object v0, p0, Lcom/google/android/apps/translate/NetworkTtsPlayer;->mThread:Lcom/google/android/apps/translate/NetworkTtsPlayer$Thread;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/NetworkTtsPlayer$Thread;->start()V

    .line 332
    :cond_1d
    return-void
.end method

.method private prefetchSound(Lcom/google/android/apps/translate/NetworkTtsPlayer$Command;)V
    .registers 7
    .parameter "cmd"

    .prologue
    .line 145
    iget-object v2, p0, Lcom/google/android/apps/translate/NetworkTtsPlayer;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/google/android/apps/translate/NetworkTtsPlayer;->mLastUri:Landroid/net/Uri;

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/google/android/apps/translate/NetworkTtsPlayer;->mLastUri:Landroid/net/Uri;

    iget-object v3, p1, Lcom/google/android/apps/translate/NetworkTtsPlayer$Command;->uri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    :cond_12
    iget-object v2, p0, Lcom/google/android/apps/translate/NetworkTtsPlayer;->mPrefetchingPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_25

    iget-object v2, p0, Lcom/google/android/apps/translate/NetworkTtsPlayer;->mPrefetchedUri:Landroid/net/Uri;

    if-eqz v2, :cond_25

    iget-object v2, p0, Lcom/google/android/apps/translate/NetworkTtsPlayer;->mPrefetchedUri:Landroid/net/Uri;

    iget-object v3, p1, Lcom/google/android/apps/translate/NetworkTtsPlayer$Command;->uri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 165
    :cond_24
    :goto_24
    return-void

    .line 154
    :cond_25
    :try_start_25
    iget-object v2, p1, Lcom/google/android/apps/translate/NetworkTtsPlayer$Command;->context:Landroid/content/Context;

    iget-object v3, p1, Lcom/google/android/apps/translate/NetworkTtsPlayer$Command;->uri:Landroid/net/Uri;

    invoke-direct {p0, v2, v3}, Lcom/google/android/apps/translate/NetworkTtsPlayer;->prepareNewStream(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object v1

    .line 155
    .local v1, player:Landroid/media/MediaPlayer;
    iget-object v2, p0, Lcom/google/android/apps/translate/NetworkTtsPlayer;->mPrefetchingPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_36

    .line 156
    iget-object v2, p0, Lcom/google/android/apps/translate/NetworkTtsPlayer;->mPrefetchingPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    .line 159
    :cond_36
    iput-object v1, p0, Lcom/google/android/apps/translate/NetworkTtsPlayer;->mPrefetchingPlayer:Landroid/media/MediaPlayer;

    .line 160
    iget-object v2, p1, Lcom/google/android/apps/translate/NetworkTtsPlayer$Command;->uri:Landroid/net/Uri;

    iput-object v2, p0, Lcom/google/android/apps/translate/NetworkTtsPlayer;->mPrefetchedUri:Landroid/net/Uri;
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_3c} :catch_3d

    goto :goto_24

    .line 162
    .end local v1           #player:Landroid/media/MediaPlayer;
    :catch_3d
    move-exception v0

    .line 163
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "NetworkTtsPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error prefetching sound for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/google/android/apps/translate/NetworkTtsPlayer$Command;->uri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/google/android/apps/translate/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_24
.end method

.method private prepareNewStream(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;
    .registers 5
    .parameter "context"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 168
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    .line 169
    .local v0, player:Landroid/media/MediaPlayer;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 172
    const-string v1, "streamingStart"

    invoke-static {v1}, Lcom/google/android/apps/translate/Logger;->t(Ljava/lang/String;)V

    .line 173
    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/apps/translate/NetworkTtsPlayer;->streamFromServer(Landroid/content/Context;Landroid/media/MediaPlayer;Landroid/net/Uri;)V

    .line 174
    const-string v1, "streamingEnd"

    invoke-static {v1}, Lcom/google/android/apps/translate/Logger;->t(Ljava/lang/String;)V

    .line 176
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 177
    return-object v0
.end method

.method private releaseWakeLock()V
    .registers 2

    .prologue
    .line 364
    iget-object v0, p0, Lcom/google/android/apps/translate/NetworkTtsPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_9

    .line 365
    iget-object v0, p0, Lcom/google/android/apps/translate/NetworkTtsPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 367
    :cond_9
    return-void
.end method

.method private startSound(Lcom/google/android/apps/translate/NetworkTtsPlayer$Command;)V
    .registers 10
    .parameter "cmd"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 77
    :try_start_2
    const-string v3, "NetworkTtsPlayer"

    const-string v4, "Starting playback"

    invoke-static {v3, v4}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object v3, p0, Lcom/google/android/apps/translate/NetworkTtsPlayer;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v3, :cond_3e

    .line 81
    iget-object v3, p0, Lcom/google/android/apps/translate/NetworkTtsPlayer;->mLastUri:Landroid/net/Uri;

    if-eqz v3, :cond_36

    iget-object v3, p0, Lcom/google/android/apps/translate/NetworkTtsPlayer;->mLastUri:Landroid/net/Uri;

    iget-object v4, p1, Lcom/google/android/apps/translate/NetworkTtsPlayer$Command;->uri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z
    :try_end_18
    .catch Lcom/google/android/apps/translate/NetworkTtsPlayer$TtsNotFoundException; {:try_start_2 .. :try_end_18} :catch_75
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_18} :catch_fb

    move-result v3

    if-eqz v3, :cond_36

    .line 83
    :try_start_1b
    iget-object v3, p0, Lcom/google/android/apps/translate/NetworkTtsPlayer;->mPlayer:Landroid/media/MediaPlayer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 84
    iget-object v3, p0, Lcom/google/android/apps/translate/NetworkTtsPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->start()V

    .line 85
    const-string v3, "NetworkTtsPlayer"

    const-string v4, "Cache hit"

    invoke-static {v3, v4}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_2d} :catch_2e
    .catch Lcom/google/android/apps/translate/NetworkTtsPlayer$TtsNotFoundException; {:try_start_1b .. :try_end_2d} :catch_75

    .line 142
    :cond_2d
    :goto_2d
    return-void

    .line 88
    :catch_2e
    move-exception v0

    .line 90
    .local v0, e:Ljava/lang/Exception;
    :try_start_2f
    const-string v3, "NetworkTtsPlayer"

    const-string v4, "Cache replay error"

    invoke-static {v3, v4}, Lcom/google/android/apps/translate/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .end local v0           #e:Ljava/lang/Exception;
    :cond_36
    iget-object v3, p0, Lcom/google/android/apps/translate/NetworkTtsPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->release()V

    .line 94
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/android/apps/translate/NetworkTtsPlayer;->mPlayer:Landroid/media/MediaPlayer;

    .line 98
    :cond_3e
    iget-object v3, p0, Lcom/google/android/apps/translate/NetworkTtsPlayer;->mPrefetchingPlayer:Landroid/media/MediaPlayer;

    if-eqz v3, :cond_9a

    iget-object v3, p0, Lcom/google/android/apps/translate/NetworkTtsPlayer;->mPrefetchedUri:Landroid/net/Uri;

    if-eqz v3, :cond_9a

    iget-object v3, p0, Lcom/google/android/apps/translate/NetworkTtsPlayer;->mPrefetchedUri:Landroid/net/Uri;

    iget-object v4, p1, Lcom/google/android/apps/translate/NetworkTtsPlayer$Command;->uri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9a

    .line 100
    iget-object v3, p0, Lcom/google/android/apps/translate/NetworkTtsPlayer;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v3, :cond_5c

    .line 101
    iget-object v3, p0, Lcom/google/android/apps/translate/NetworkTtsPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->release()V

    .line 102
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/android/apps/translate/NetworkTtsPlayer;->mPlayer:Landroid/media/MediaPlayer;

    .line 105
    :cond_5c
    iget-object v3, p0, Lcom/google/android/apps/translate/NetworkTtsPlayer;->mPrefetchingPlayer:Landroid/media/MediaPlayer;

    iput-object v3, p0, Lcom/google/android/apps/translate/NetworkTtsPlayer;->mPlayer:Landroid/media/MediaPlayer;

    .line 106
    iget-object v3, p0, Lcom/google/android/apps/translate/NetworkTtsPlayer;->mPrefetchedUri:Landroid/net/Uri;

    iput-object v3, p0, Lcom/google/android/apps/translate/NetworkTtsPlayer;->mLastUri:Landroid/net/Uri;

    .line 107
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/android/apps/translate/NetworkTtsPlayer;->mPrefetchingPlayer:Landroid/media/MediaPlayer;

    .line 108
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/android/apps/translate/NetworkTtsPlayer;->mPrefetchedUri:Landroid/net/Uri;

    .line 109
    const-string v3, "NetworkTtsPlayer"

    const-string v4, "Prefetch hit"

    invoke-static {v3, v4}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-direct {p0, p1}, Lcom/google/android/apps/translate/NetworkTtsPlayer;->startSound(Lcom/google/android/apps/translate/NetworkTtsPlayer$Command;)V
    :try_end_74
    .catch Lcom/google/android/apps/translate/NetworkTtsPlayer$TtsNotFoundException; {:try_start_2f .. :try_end_74} :catch_75
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_74} :catch_fb

    goto :goto_2d

    .line 128
    :catch_75
    move-exception v0

    .line 129
    .local v0, e:Lcom/google/android/apps/translate/NetworkTtsPlayer$TtsNotFoundException;
    const-string v3, "NetworkTtsPlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TTS not found for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/google/android/apps/translate/NetworkTtsPlayer$Command;->uri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/google/android/apps/translate/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 130
    iget-object v3, p1, Lcom/google/android/apps/translate/NetworkTtsPlayer$Command;->callback:Lcom/google/android/apps/translate/NetworkTts$Callback;

    if-eqz v3, :cond_2d

    .line 133
    iget-object v3, p1, Lcom/google/android/apps/translate/NetworkTtsPlayer$Command;->callback:Lcom/google/android/apps/translate/NetworkTts$Callback;

    invoke-interface {v3, v7}, Lcom/google/android/apps/translate/NetworkTts$Callback;->onError(I)V

    goto :goto_2d

    .line 114
    .end local v0           #e:Lcom/google/android/apps/translate/NetworkTtsPlayer$TtsNotFoundException;
    :cond_9a
    :try_start_9a
    new-instance v2, Lcom/google/android/apps/translate/CsiTimer;

    const-string v3, "nts"

    invoke-direct {v2, v3}, Lcom/google/android/apps/translate/CsiTimer;-><init>(Ljava/lang/String;)V

    .line 115
    .local v2, ttsRetrivalTimer:Lcom/google/android/apps/translate/CsiTimer;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "t"

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Lcom/google/android/apps/translate/CsiTimer;->begin([Ljava/lang/String;)V

    .line 117
    iget-object v3, p1, Lcom/google/android/apps/translate/NetworkTtsPlayer$Command;->callback:Lcom/google/android/apps/translate/NetworkTts$Callback;

    if-eqz v3, :cond_b5

    iget-object v3, p1, Lcom/google/android/apps/translate/NetworkTtsPlayer$Command;->callback:Lcom/google/android/apps/translate/NetworkTts$Callback;

    invoke-interface {v3}, Lcom/google/android/apps/translate/NetworkTts$Callback;->onPrepare()V

    .line 118
    :cond_b5
    iget-object v3, p1, Lcom/google/android/apps/translate/NetworkTtsPlayer$Command;->context:Landroid/content/Context;

    iget-object v4, p1, Lcom/google/android/apps/translate/NetworkTtsPlayer$Command;->uri:Landroid/net/Uri;

    invoke-direct {p0, v3, v4}, Lcom/google/android/apps/translate/NetworkTtsPlayer;->prepareNewStream(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object v1

    .line 119
    .local v1, player:Landroid/media/MediaPlayer;
    iget-object v3, p1, Lcom/google/android/apps/translate/NetworkTtsPlayer$Command;->callback:Lcom/google/android/apps/translate/NetworkTts$Callback;

    if-eqz v3, :cond_c6

    iget-object v3, p1, Lcom/google/android/apps/translate/NetworkTtsPlayer$Command;->callback:Lcom/google/android/apps/translate/NetworkTts$Callback;

    invoke-interface {v3}, Lcom/google/android/apps/translate/NetworkTts$Callback;->onReady()V

    .line 120
    :cond_c6
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "t"

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Lcom/google/android/apps/translate/CsiTimer;->end([Ljava/lang/String;)V

    .line 121
    iget-object v3, p1, Lcom/google/android/apps/translate/NetworkTtsPlayer$Command;->context:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/google/android/apps/translate/CsiTimer;->report(Landroid/content/Context;)V

    .line 123
    const-string v3, "NetworkTtsPlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Playing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/google/android/apps/translate/NetworkTtsPlayer$Command;->uri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 125
    iput-object v1, p0, Lcom/google/android/apps/translate/NetworkTtsPlayer;->mPlayer:Landroid/media/MediaPlayer;

    .line 126
    iget-object v3, p1, Lcom/google/android/apps/translate/NetworkTtsPlayer$Command;->uri:Landroid/net/Uri;

    iput-object v3, p0, Lcom/google/android/apps/translate/NetworkTtsPlayer;->mLastUri:Landroid/net/Uri;
    :try_end_f9
    .catch Lcom/google/android/apps/translate/NetworkTtsPlayer$TtsNotFoundException; {:try_start_9a .. :try_end_f9} :catch_75
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_f9} :catch_fb

    goto/16 :goto_2d

    .line 136
    .end local v1           #player:Landroid/media/MediaPlayer;
    .end local v2           #ttsRetrivalTimer:Lcom/google/android/apps/translate/CsiTimer;
    :catch_fb
    move-exception v0

    .line 137
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "NetworkTtsPlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error loading sound for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/google/android/apps/translate/NetworkTtsPlayer$Command;->uri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/google/android/apps/translate/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 138
    iget-object v3, p1, Lcom/google/android/apps/translate/NetworkTtsPlayer$Command;->callback:Lcom/google/android/apps/translate/NetworkTts$Callback;

    if-eqz v3, :cond_2d

    .line 139
    iget-object v3, p1, Lcom/google/android/apps/translate/NetworkTtsPlayer$Command;->callback:Lcom/google/android/apps/translate/NetworkTts$Callback;

    invoke-interface {v3, v6}, Lcom/google/android/apps/translate/NetworkTts$Callback;->onError(I)V

    goto/16 :goto_2d
.end method

.method private streamFromServer(Landroid/content/Context;Landroid/media/MediaPlayer;Landroid/net/Uri;)V
    .registers 14
    .parameter "context"
    .parameter "player"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 183
    new-instance v3, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v6

    const-string v7, "tts.dat"

    invoke-direct {v3, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 184
    .local v3, ttsFile:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 186
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 189
    .local v5, ttsOutput:Ljava/io/FileOutputStream;
    const-string v6, "AndroidTranslate"

    invoke-static {v6}, Lcom/google/android/apps/translate/Util;->newHttpClient(Ljava/lang/String;)Lorg/apache/http/client/HttpClient;

    move-result-object v6

    new-instance v7, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-interface {v6, v7}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 190
    .local v1, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    const/16 v7, 0x194

    if-ne v6, v7, :cond_39

    .line 191
    new-instance v6, Lcom/google/android/apps/translate/NetworkTtsPlayer$TtsNotFoundException;

    invoke-direct {v6}, Lcom/google/android/apps/translate/NetworkTtsPlayer$TtsNotFoundException;-><init>()V

    throw v6

    .line 193
    :cond_39
    invoke-static {v1}, Lcom/google/android/apps/translate/Util;->getResponseInputStream(Lorg/apache/http/HttpResponse;)Ljava/io/InputStream;

    move-result-object v0

    .line 194
    .local v0, input:Ljava/io/InputStream;
    if-eqz v0, :cond_4e

    .line 196
    :goto_3f
    sget-object v6, Lcom/google/android/apps/translate/NetworkTtsPlayer;->NETWORK_BUFFER:[B

    invoke-virtual {v0, v6}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, size:I
    const/4 v6, -0x1

    if-le v2, v6, :cond_4e

    .line 197
    sget-object v6, Lcom/google/android/apps/translate/NetworkTtsPlayer;->NETWORK_BUFFER:[B

    invoke-virtual {v5, v6, v9, v2}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_3f

    .line 200
    .end local v2           #size:I
    :cond_4e
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 203
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 204
    .local v4, ttsInput:Ljava/io/FileInputStream;
    invoke-virtual {v4}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-virtual {p2, v6}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 205
    return-void
.end method


# virtual methods
.method public play(Landroid/content/Context;Landroid/net/Uri;)V
    .registers 4
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 286
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/apps/translate/NetworkTtsPlayer;->play(Landroid/content/Context;Landroid/net/Uri;Lcom/google/android/apps/translate/NetworkTts$Callback;)V

    .line 287
    return-void
.end method

.method public play(Landroid/content/Context;Landroid/net/Uri;Lcom/google/android/apps/translate/NetworkTts$Callback;)V
    .registers 7
    .parameter "context"
    .parameter "uri"
    .parameter "callback"

    .prologue
    const/4 v2, 0x1

    .line 268
    const-string v1, "playStart"

    invoke-static {v1}, Lcom/google/android/apps/translate/Logger;->t(Ljava/lang/String;)V

    .line 269
    new-instance v0, Lcom/google/android/apps/translate/NetworkTtsPlayer$Command;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/apps/translate/NetworkTtsPlayer$Command;-><init>(Lcom/google/android/apps/translate/NetworkTtsPlayer$1;)V

    .line 270
    .local v0, cmd:Lcom/google/android/apps/translate/NetworkTtsPlayer$Command;
    iput v2, v0, Lcom/google/android/apps/translate/NetworkTtsPlayer$Command;->code:I

    .line 271
    iput-object p1, v0, Lcom/google/android/apps/translate/NetworkTtsPlayer$Command;->context:Landroid/content/Context;

    .line 272
    iput-object p2, v0, Lcom/google/android/apps/translate/NetworkTtsPlayer$Command;->uri:Landroid/net/Uri;

    .line 273
    iput-object p3, v0, Lcom/google/android/apps/translate/NetworkTtsPlayer$Command;->callback:Lcom/google/android/apps/translate/NetworkTts$Callback;

    .line 274
    iget-object v2, p0, Lcom/google/android/apps/translate/NetworkTtsPlayer;->mCmdQueue:Ljava/util/LinkedList;

    monitor-enter v2

    .line 275
    :try_start_17
    invoke-direct {p0, v0}, Lcom/google/android/apps/translate/NetworkTtsPlayer;->enqueueLocked(Lcom/google/android/apps/translate/NetworkTtsPlayer$Command;)V

    .line 276
    const/4 v1, 0x1

    iput v1, p0, Lcom/google/android/apps/translate/NetworkTtsPlayer;->mState:I

    .line 277
    monitor-exit v2

    .line 278
    return-void

    .line 277
    :catchall_1f
    move-exception v1

    monitor-exit v2
    :try_end_21
    .catchall {:try_start_17 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public prefetch(Landroid/content/Context;Landroid/net/Uri;)V
    .registers 6
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 297
    new-instance v0, Lcom/google/android/apps/translate/NetworkTtsPlayer$Command;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/apps/translate/NetworkTtsPlayer$Command;-><init>(Lcom/google/android/apps/translate/NetworkTtsPlayer$1;)V

    .line 298
    .local v0, cmd:Lcom/google/android/apps/translate/NetworkTtsPlayer$Command;
    const/4 v1, 0x3

    iput v1, v0, Lcom/google/android/apps/translate/NetworkTtsPlayer$Command;->code:I

    .line 299
    iput-object p1, v0, Lcom/google/android/apps/translate/NetworkTtsPlayer$Command;->context:Landroid/content/Context;

    .line 300
    iput-object p2, v0, Lcom/google/android/apps/translate/NetworkTtsPlayer$Command;->uri:Landroid/net/Uri;

    .line 301
    iget-object v2, p0, Lcom/google/android/apps/translate/NetworkTtsPlayer;->mCmdQueue:Ljava/util/LinkedList;

    monitor-enter v2

    .line 302
    :try_start_10
    invoke-direct {p0, v0}, Lcom/google/android/apps/translate/NetworkTtsPlayer;->enqueueLocked(Lcom/google/android/apps/translate/NetworkTtsPlayer$Command;)V

    .line 303
    monitor-exit v2

    .line 304
    return-void

    .line 303
    :catchall_15
    move-exception v1

    monitor-exit v2
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public setUsesWakeLock(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    .line 347
    iget-object v1, p0, Lcom/google/android/apps/translate/NetworkTtsPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/google/android/apps/translate/NetworkTtsPlayer;->mThread:Lcom/google/android/apps/translate/NetworkTtsPlayer$Thread;

    if-eqz v1, :cond_2f

    .line 350
    :cond_8
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "assertion failed mWakeLock="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/translate/NetworkTtsPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mThread="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/translate/NetworkTtsPlayer;->mThread:Lcom/google/android/apps/translate/NetworkTtsPlayer$Thread;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 353
    :cond_2f
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 354
    .local v0, pm:Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "NetworkTtsPlayer"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/translate/NetworkTtsPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 355
    return-void
.end method

.method public stop()V
    .registers 5

    .prologue
    const/4 v3, 0x2

    .line 310
    iget-object v2, p0, Lcom/google/android/apps/translate/NetworkTtsPlayer;->mCmdQueue:Ljava/util/LinkedList;

    monitor-enter v2

    .line 313
    :try_start_4
    iget v1, p0, Lcom/google/android/apps/translate/NetworkTtsPlayer;->mState:I

    if-eq v1, v3, :cond_17

    .line 314
    new-instance v0, Lcom/google/android/apps/translate/NetworkTtsPlayer$Command;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/apps/translate/NetworkTtsPlayer$Command;-><init>(Lcom/google/android/apps/translate/NetworkTtsPlayer$1;)V

    .line 315
    .local v0, cmd:Lcom/google/android/apps/translate/NetworkTtsPlayer$Command;
    const/4 v1, 0x2

    iput v1, v0, Lcom/google/android/apps/translate/NetworkTtsPlayer$Command;->code:I

    .line 316
    invoke-direct {p0, v0}, Lcom/google/android/apps/translate/NetworkTtsPlayer;->enqueueLocked(Lcom/google/android/apps/translate/NetworkTtsPlayer$Command;)V

    .line 317
    const/4 v1, 0x2

    iput v1, p0, Lcom/google/android/apps/translate/NetworkTtsPlayer;->mState:I

    .line 319
    .end local v0           #cmd:Lcom/google/android/apps/translate/NetworkTtsPlayer$Command;
    :cond_17
    monitor-exit v2

    .line 320
    return-void

    .line 319
    :catchall_19
    move-exception v1

    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_19

    throw v1
.end method
