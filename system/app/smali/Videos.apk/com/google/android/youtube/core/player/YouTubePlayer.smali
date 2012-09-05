.class public Lcom/google/android/youtube/core/player/YouTubePlayer;
.super Ljava/lang/Object;
.source "YouTubePlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;,
        Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;,
        Lcom/google/android/youtube/core/player/YouTubePlayer$MediaPlayerThread;,
        Lcom/google/android/youtube/core/player/YouTubePlayer$MediaPlayerFactory;
    }
.end annotation


# static fields
.field public static final DEFAULT_MIME_TYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final FATAL_ERROR_CODES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile buffering:Z

.field private final context:Landroid/content/Context;

.field private disconnectAtHighWaterMark:Z

.field private enableAwfulPlayer:Z

.field private internalForceScreenOn:Z

.field private final internalListener:Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;

.field private final listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private volatile live:Z

.field private mediaPlayerFactory:Lcom/google/android/youtube/core/player/YouTubePlayer$MediaPlayerFactory;

.field private final mediaPlayerRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Landroid/media/MediaPlayer;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaPlayerThread:Lcom/google/android/youtube/core/player/YouTubePlayer$MediaPlayerThread;

.field private pendingStream:Lcom/google/android/youtube/core/model/Stream;

.field private final playerView:Lcom/google/android/youtube/core/player/PlayerView;

.field private volatile playing:Z

.field private volatile prepared:Z

.field private final progressNotifier:Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;

.field private volatile retries:I

.field private volatile retryingPlay:Z

.field private volatile retryingPrepare:Z

.field private screenAlwaysOn:Z

.field private source:Lcom/google/android/youtube/core/model/Stream;

.field private surfaceCreated:Z

.field private final surfaceHolder:Landroid/view/SurfaceHolder;

.field private volatile videoSizeKnown:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 130
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 131
    .local v0, fatalErrorCodes:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    const/16 v2, -0x3e81

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 132
    const/16 v2, -0x3f2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 133
    const/16 v2, -0x7d2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 134
    const/16 v2, -0x7d1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 135
    const/16 v2, -0xbb8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 136
    const/16 v2, -0xbb9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 137
    const/16 v2, -0xbba

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 138
    const/16 v2, -0xbbb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 139
    const/16 v2, -0xbbc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 140
    const/16 v2, -0xbbd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 141
    const/16 v2, -0xbbe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 142
    const/16 v2, 0x1f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 143
    const/16 v2, 0x20

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 144
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    sput-object v2, Lcom/google/android/youtube/core/player/YouTubePlayer;->FATAL_ERROR_CODES:Ljava/util/Set;

    .line 149
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 150
    .local v1, supportedMimeTypes:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const-string v2, "video/mp4"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 151
    const-string v2, "video/3gpp"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 152
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    sput-object v2, Lcom/google/android/youtube/core/player/YouTubePlayer;->DEFAULT_MIME_TYPES:Ljava/util/Set;

    .line 153
    return-void
.end method

.method public constructor <init>(Lcom/google/android/youtube/core/player/PlayerView;)V
    .registers 5
    .parameter "view"

    .prologue
    const/4 v2, 0x0

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    invoke-virtual {p1}, Lcom/google/android/youtube/core/player/PlayerView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->context:Landroid/content/Context;

    .line 208
    iput-object p1, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->playerView:Lcom/google/android/youtube/core/player/PlayerView;

    .line 209
    iget-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->playerView:Lcom/google/android/youtube/core/player/PlayerView;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/PlayerView;->getSurfaceView()Landroid/view/SurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 211
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->mediaPlayerRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 213
    new-instance v0, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;

    invoke-direct {v0, p0, v2}, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;-><init>(Lcom/google/android/youtube/core/player/YouTubePlayer;Lcom/google/android/youtube/core/player/YouTubePlayer$1;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->internalListener:Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;

    .line 214
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->listeners:Ljava/util/ArrayList;

    .line 216
    new-instance v0, Lcom/google/android/youtube/core/player/YouTubePlayer$MediaPlayerThread;

    invoke-direct {v0, p0, v2}, Lcom/google/android/youtube/core/player/YouTubePlayer$MediaPlayerThread;-><init>(Lcom/google/android/youtube/core/player/YouTubePlayer;Lcom/google/android/youtube/core/player/YouTubePlayer$1;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->mediaPlayerThread:Lcom/google/android/youtube/core/player/YouTubePlayer$MediaPlayerThread;

    .line 217
    new-instance v0, Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;-><init>(Lcom/google/android/youtube/core/player/YouTubePlayer;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->progressNotifier:Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;

    .line 219
    iget-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->context:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/YouTubePlayer;->init(Landroid/content/Context;)V

    .line 220
    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/youtube/core/player/YouTubePlayer;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/YouTubePlayer;->blockingStopVideoInternal()V

    return-void
.end method

.method static synthetic access$1102(Lcom/google/android/youtube/core/player/YouTubePlayer;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->surfaceCreated:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/google/android/youtube/core/player/YouTubePlayer;)Lcom/google/android/youtube/core/model/Stream;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->pendingStream:Lcom/google/android/youtube/core/model/Stream;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/google/android/youtube/core/player/YouTubePlayer;Lcom/google/android/youtube/core/model/Stream;)Lcom/google/android/youtube/core/model/Stream;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->pendingStream:Lcom/google/android/youtube/core/model/Stream;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/google/android/youtube/core/player/YouTubePlayer;Lcom/google/android/youtube/core/model/Stream;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/player/YouTubePlayer;->load(Lcom/google/android/youtube/core/model/Stream;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/android/youtube/core/player/YouTubePlayer;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->prepared:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/google/android/youtube/core/player/YouTubePlayer;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->prepared:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/google/android/youtube/core/player/YouTubePlayer;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->retryingPrepare:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/google/android/youtube/core/player/YouTubePlayer;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->retryingPrepare:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/google/android/youtube/core/player/YouTubePlayer;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->retryingPlay:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/google/android/youtube/core/player/YouTubePlayer;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->retryingPlay:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/google/android/youtube/core/player/YouTubePlayer;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/player/YouTubePlayer;->setBuffering(Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/android/youtube/core/player/YouTubePlayer;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/player/YouTubePlayer;->setInternalForceScreenOn(Z)V

    return-void
.end method

.method static synthetic access$1900(Lcom/google/android/youtube/core/player/YouTubePlayer;)Lcom/google/android/youtube/core/player/PlayerView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->playerView:Lcom/google/android/youtube/core/player/PlayerView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/youtube/core/player/YouTubePlayer;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->enableAwfulPlayer:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/google/android/youtube/core/player/YouTubePlayer;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->videoSizeKnown:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/google/android/youtube/core/player/YouTubePlayer;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->videoSizeKnown:Z

    return p1
.end method

.method static synthetic access$202(Lcom/google/android/youtube/core/player/YouTubePlayer;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->enableAwfulPlayer:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/google/android/youtube/core/player/YouTubePlayer;)Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->progressNotifier:Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/google/android/youtube/core/player/YouTubePlayer;III)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/youtube/core/player/YouTubePlayer;->notifyProgress(III)V

    return-void
.end method

.method static synthetic access$2402(Lcom/google/android/youtube/core/player/YouTubePlayer;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->playing:Z

    return p1
.end method

.method static synthetic access$2500()Ljava/util/Set;
    .registers 1

    .prologue
    .line 39
    sget-object v0, Lcom/google/android/youtube/core/player/YouTubePlayer;->FATAL_ERROR_CODES:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/google/android/youtube/core/player/YouTubePlayer;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->retries:I

    return v0
.end method

.method static synthetic access$2602(Lcom/google/android/youtube/core/player/YouTubePlayer;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput p1, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->retries:I

    return p1
.end method

.method static synthetic access$2608(Lcom/google/android/youtube/core/player/YouTubePlayer;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->retries:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->retries:I

    return v0
.end method

.method static synthetic access$2700(Lcom/google/android/youtube/core/player/YouTubePlayer;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->live:Z

    return v0
.end method

.method static synthetic access$2800(Lcom/google/android/youtube/core/player/YouTubePlayer;)Lcom/google/android/youtube/core/model/Stream;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->source:Lcom/google/android/youtube/core/model/Stream;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/google/android/youtube/core/player/YouTubePlayer;II)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/core/player/YouTubePlayer;->notifyError(II)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/youtube/core/player/YouTubePlayer;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/player/YouTubePlayer;->notifyListeners(I)V

    return-void
.end method

.method static synthetic access$3000(Lcom/google/android/youtube/core/player/YouTubePlayer;)Ljava/util/concurrent/atomic/AtomicReference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->mediaPlayerRef:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/youtube/core/player/YouTubePlayer;Landroid/media/MediaPlayer;Landroid/net/Uri;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/core/player/YouTubePlayer;->blockingPrepare(Landroid/media/MediaPlayer;Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/youtube/core/player/YouTubePlayer;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/YouTubePlayer;->blockingPlayVideo()V

    return-void
.end method

.method static synthetic access$800(Lcom/google/android/youtube/core/player/YouTubePlayer;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/YouTubePlayer;->blockingPauseVideo()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/android/youtube/core/player/YouTubePlayer;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/player/YouTubePlayer;->blockingSeekTo(I)V

    return-void
.end method

.method private blockingPauseVideo()V
    .registers 4

    .prologue
    .line 431
    iget-object v2, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->mediaPlayerRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaPlayer;

    .line 432
    .local v1, mediaPlayer:Landroid/media/MediaPlayer;
    if-eqz v1, :cond_21

    invoke-direct {p0}, Lcom/google/android/youtube/core/player/YouTubePlayer;->readyToPlay()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 433
    invoke-static {}, Lcom/google/android/youtube/core/L;->t()V

    .line 435
    :try_start_13
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->pause()V

    .line 436
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->playing:Z

    .line 437
    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lcom/google/android/youtube/core/player/YouTubePlayer;->notifyListeners(I)V

    .line 438
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/google/android/youtube/core/player/YouTubePlayer;->setBuffering(Z)V
    :try_end_21
    .catch Ljava/lang/IllegalStateException; {:try_start_13 .. :try_end_21} :catch_22

    .line 444
    :cond_21
    :goto_21
    return-void

    .line 439
    :catch_22
    move-exception v0

    .line 441
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v2, "Error calling mediaPlayer"

    invoke-static {v2, v0}, Lcom/google/android/youtube/core/L;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_21
.end method

.method private blockingPlayVideo()V
    .registers 5

    .prologue
    .line 386
    iget-object v3, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->mediaPlayerRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaPlayer;

    .line 387
    .local v1, mediaPlayer:Landroid/media/MediaPlayer;
    if-nez v1, :cond_b

    .line 424
    :goto_a
    return-void

    .line 390
    :cond_b
    invoke-static {}, Lcom/google/android/youtube/core/L;->t()V

    .line 392
    :try_start_e
    iget-boolean v3, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->live:Z

    if-eqz v3, :cond_39

    .line 398
    iget-boolean v3, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->playing:Z

    if-nez v3, :cond_20

    iget-boolean v3, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->prepared:Z

    if-eqz v3, :cond_20

    .line 399
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 400
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->playing:Z

    .line 402
    :cond_20
    iget-boolean v3, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->retryingPlay:Z

    if-nez v3, :cond_2e

    invoke-direct {p0}, Lcom/google/android/youtube/core/player/YouTubePlayer;->readyToPlay()Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 403
    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/google/android/youtube/core/player/YouTubePlayer;->notifyListeners(I)V

    .line 419
    :cond_2e
    :goto_2e
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->retryingPlay:Z
    :try_end_31
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_31} :catch_32

    goto :goto_a

    .line 420
    :catch_32
    move-exception v0

    .line 422
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v3, "Error calling mediaPlayer"

    invoke-static {v3, v0}, Lcom/google/android/youtube/core/L;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a

    .line 406
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :cond_39
    :try_start_39
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/YouTubePlayer;->readyToPlay()Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 407
    iget-object v3, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->progressNotifier:Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;

    #getter for: Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;->currentPosition:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v3}, Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;->access$400(Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    .line 408
    .local v2, position:I
    if-eqz v2, :cond_4e

    .line 409
    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 411
    :cond_4e
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 412
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->playing:Z

    .line 413
    iget-boolean v3, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->retryingPlay:Z

    if-nez v3, :cond_5c

    .line 414
    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/google/android/youtube/core/player/YouTubePlayer;->notifyListeners(I)V

    .line 416
    :cond_5c
    iget-object v3, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->progressNotifier:Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;

    invoke-virtual {v3}, Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;->startNotifying()V
    :try_end_61
    .catch Ljava/lang/IllegalStateException; {:try_start_39 .. :try_end_61} :catch_32

    goto :goto_2e
.end method

.method private blockingPrepare(Landroid/media/MediaPlayer;Landroid/net/Uri;)V
    .registers 7
    .parameter "mediaPlayer"
    .parameter "source"

    .prologue
    .line 343
    iget-object v2, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->mediaPlayerRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 344
    if-eqz p1, :cond_44

    if-eqz p2, :cond_44

    .line 346
    :try_start_9
    iget-object v2, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {p1, v2}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 347
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 348
    .local v1, headers:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-boolean v2, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->disconnectAtHighWaterMark:Z

    if-eqz v2, :cond_22

    iget-boolean v2, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->enableAwfulPlayer:Z

    if-nez v2, :cond_22

    .line 349
    const-string v2, "x-disconnect-at-highwatermark"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    :cond_22
    iget-object v2, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->context:Landroid/content/Context;

    invoke-direct {p0, p1, v2, p2, v1}, Lcom/google/android/youtube/core/player/YouTubePlayer;->setDataSource(Landroid/media/MediaPlayer;Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 352
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 357
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 359
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/google/android/youtube/core/player/YouTubePlayer;->setBuffering(Z)V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_32} :catch_33
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_32} :catch_3d

    .line 371
    .end local v1           #headers:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_32
    return-void

    .line 360
    :catch_33
    move-exception v0

    .line 361
    .local v0, e:Ljava/io/IOException;
    const-string v2, "Media Player error preparing video"

    invoke-static {v2, v0}, Lcom/google/android/youtube/core/L;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 362
    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/YouTubePlayer;->notifyError(Ljava/lang/Exception;)V

    goto :goto_32

    .line 363
    .end local v0           #e:Ljava/io/IOException;
    :catch_3d
    move-exception v0

    .line 365
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v2, "Error calling mediaPlayer"

    invoke-static {v2, v0}, Lcom/google/android/youtube/core/L;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_32

    .line 368
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :cond_44
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Media Player null pointer preparing video "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/youtube/core/L;->w(Ljava/lang/String;)V

    .line 369
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    invoke-direct {p0, v2}, Lcom/google/android/youtube/core/player/YouTubePlayer;->notifyError(Ljava/lang/Exception;)V

    goto :goto_32
.end method

.method private blockingSeekTo(I)V
    .registers 5
    .parameter "millis"

    .prologue
    .line 455
    iget-object v2, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->mediaPlayerRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaPlayer;

    .line 456
    .local v1, mediaPlayer:Landroid/media/MediaPlayer;
    if-eqz v1, :cond_1f

    invoke-direct {p0}, Lcom/google/android/youtube/core/player/YouTubePlayer;->readyToPlay()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 458
    :try_start_10
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/player/YouTubePlayer;->notifySeekTo(I)V

    .line 459
    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 460
    iget-object v2, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->progressNotifier:Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;

    #getter for: Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;->currentPosition:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v2}, Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;->access$400(Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_1f
    .catch Ljava/lang/IllegalStateException; {:try_start_10 .. :try_end_1f} :catch_20

    .line 466
    :cond_1f
    :goto_1f
    return-void

    .line 461
    :catch_20
    move-exception v0

    .line 463
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v2, "Error calling mediaPlayer"

    invoke-static {v2, v0}, Lcom/google/android/youtube/core/L;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1f
.end method

.method private blockingStopVideoInternal()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 479
    invoke-static {}, Lcom/google/android/youtube/core/L;->t()V

    .line 480
    iput-boolean v1, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->prepared:Z

    .line 481
    iput-boolean v1, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->playing:Z

    .line 482
    invoke-direct {p0, v1}, Lcom/google/android/youtube/core/player/YouTubePlayer;->setBuffering(Z)V

    .line 483
    iget-object v1, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->mediaPlayerRef:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaPlayer;

    .line 484
    .local v0, mediaPlayer:Landroid/media/MediaPlayer;
    if-eqz v0, :cond_2a

    .line 485
    iget-object v1, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->progressNotifier:Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;->stopNotifying()V

    .line 486
    iget-boolean v1, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->retryingPrepare:Z

    if-nez v1, :cond_27

    iget-boolean v1, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->retryingPlay:Z

    if-nez v1, :cond_27

    .line 487
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/google/android/youtube/core/player/YouTubePlayer;->notifyListeners(I)V

    .line 489
    :cond_27
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 491
    :cond_2a
    return-void
.end method

.method private getDefaultMediaPlayerFactory()Lcom/google/android/youtube/core/player/YouTubePlayer$MediaPlayerFactory;
    .registers 2

    .prologue
    .line 231
    new-instance v0, Lcom/google/android/youtube/core/player/YouTubePlayer$1;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/core/player/YouTubePlayer$1;-><init>(Lcom/google/android/youtube/core/player/YouTubePlayer;)V

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 247
    new-instance v0, Lcom/google/android/youtube/core/player/YouTubePlayer$2;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/core/player/YouTubePlayer$2;-><init>(Lcom/google/android/youtube/core/player/YouTubePlayer;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->mediaPlayerFactory:Lcom/google/android/youtube/core/player/YouTubePlayer$MediaPlayerFactory;

    .line 253
    iget-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->surfaceHolder:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->internalListener:Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 254
    iget-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->surfaceHolder:Landroid/view/SurfaceHolder;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 256
    iget-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->playerView:Lcom/google/android/youtube/core/player/PlayerView;

    new-instance v1, Lcom/google/android/youtube/core/player/YouTubePlayer$3;

    invoke-direct {v1, p0}, Lcom/google/android/youtube/core/player/YouTubePlayer$3;-><init>(Lcom/google/android/youtube/core/player/YouTubePlayer;)V

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/player/PlayerView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 263
    iget-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->mediaPlayerThread:Lcom/google/android/youtube/core/player/YouTubePlayer$MediaPlayerThread;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/YouTubePlayer$MediaPlayerThread;->start()V

    .line 264
    iget-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->progressNotifier:Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;->start()V

    .line 265
    return-void
.end method

.method private load(Lcom/google/android/youtube/core/model/Stream;)V
    .registers 5
    .parameter "stream"

    .prologue
    .line 309
    invoke-static {}, Lcom/google/android/youtube/core/L;->t()V

    .line 310
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/YouTubePlayer;->stopVideo()V

    .line 311
    iget-boolean v1, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->surfaceCreated:Z

    if-nez v1, :cond_d

    .line 312
    iput-object p1, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->pendingStream:Lcom/google/android/youtube/core/model/Stream;

    .line 334
    :goto_c
    return-void

    .line 317
    :cond_d
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/android/youtube/core/player/YouTubePlayer;->setInternalForceScreenOn(Z)V

    .line 320
    iget-object v1, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->mediaPlayerFactory:Lcom/google/android/youtube/core/player/YouTubePlayer$MediaPlayerFactory;

    if-eqz v1, :cond_4e

    iget-object v1, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->mediaPlayerFactory:Lcom/google/android/youtube/core/player/YouTubePlayer$MediaPlayerFactory;

    :goto_17
    iput-object v1, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->mediaPlayerFactory:Lcom/google/android/youtube/core/player/YouTubePlayer$MediaPlayerFactory;

    .line 323
    iget-object v1, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->mediaPlayerFactory:Lcom/google/android/youtube/core/player/YouTubePlayer$MediaPlayerFactory;

    invoke-interface {v1, p1}, Lcom/google/android/youtube/core/player/YouTubePlayer$MediaPlayerFactory;->newMediaPlayer(Lcom/google/android/youtube/core/model/Stream;)Landroid/media/MediaPlayer;

    move-result-object v0

    .line 324
    .local v0, mediaPlayer:Landroid/media/MediaPlayer;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 325
    iget-object v1, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->internalListener:Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 326
    iget-object v1, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->internalListener:Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 327
    iget-object v1, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->internalListener:Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 328
    iget-object v1, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->internalListener:Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 329
    iget-object v1, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->internalListener:Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 330
    iget-object v1, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->internalListener:Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 331
    iget-object v1, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->internalListener:Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 333
    iget-object v1, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->mediaPlayerThread:Lcom/google/android/youtube/core/player/YouTubePlayer$MediaPlayerThread;

    iget-object v2, p1, Lcom/google/android/youtube/core/model/Stream;->uri:Landroid/net/Uri;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/youtube/core/player/YouTubePlayer$MediaPlayerThread;->prepare(Landroid/media/MediaPlayer;Landroid/net/Uri;)V

    goto :goto_c

    .line 320
    .end local v0           #mediaPlayer:Landroid/media/MediaPlayer;
    :cond_4e
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/YouTubePlayer;->getDefaultMediaPlayerFactory()Lcom/google/android/youtube/core/player/YouTubePlayer$MediaPlayerFactory;

    move-result-object v1

    goto :goto_17
.end method

.method private notifyError(II)V
    .registers 6
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 864
    iget-object v2, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 865
    .local v0, handler:Landroid/os/Handler;
    const/16 v2, 0x9

    invoke-static {v0, v2, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_6

    .line 867
    .end local v0           #handler:Landroid/os/Handler;
    :cond_1c
    return-void
.end method

.method private notifyError(Ljava/lang/Exception;)V
    .registers 5
    .parameter "error"

    .prologue
    .line 858
    iget-object v2, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 859
    .local v0, handler:Landroid/os/Handler;
    const/16 v2, 0x9

    invoke-static {v0, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_6

    .line 861
    .end local v0           #handler:Landroid/os/Handler;
    :cond_1c
    return-void
.end method

.method private notifyListeners(I)V
    .registers 5
    .parameter "what"

    .prologue
    .line 852
    iget-object v2, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 853
    .local v0, handler:Landroid/os/Handler;
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_6

    .line 855
    .end local v0           #handler:Landroid/os/Handler;
    :cond_16
    return-void
.end method

.method private notifyProgress(III)V
    .registers 8
    .parameter "currentTime"
    .parameter "bufferedPercent"
    .parameter "totalTime"

    .prologue
    .line 870
    iget-object v2, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 871
    .local v0, handler:Landroid/os/Handler;
    const/4 v2, 0x5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v2, p1, p2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_6

    .line 874
    .end local v0           #handler:Landroid/os/Handler;
    :cond_1f
    return-void
.end method

.method private notifySeekTo(I)V
    .registers 6
    .parameter "millis"

    .prologue
    .line 877
    iget-object v2, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 878
    .local v0, handler:Landroid/os/Handler;
    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-static {v0, v2, p1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_6

    .line 881
    .end local v0           #handler:Landroid/os/Handler;
    :cond_1d
    return-void
.end method

.method private readyToPlay()Z
    .registers 2

    .prologue
    .line 494
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->prepared:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->videoSizeKnown:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private setBuffering(Z)V
    .registers 3
    .parameter "on"

    .prologue
    .line 519
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->live:Z

    if-eqz v0, :cond_5

    .line 527
    :cond_4
    :goto_4
    return-void

    .line 523
    :cond_5
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->buffering:Z

    if-eq v0, p1, :cond_4

    .line 524
    iput-boolean p1, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->buffering:Z

    .line 525
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->buffering:Z

    if-eqz v0, :cond_14

    const/4 v0, 0x6

    :goto_10
    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/YouTubePlayer;->notifyListeners(I)V

    goto :goto_4

    :cond_14
    const/4 v0, 0x7

    goto :goto_10
.end method

.method private setDataSource(Landroid/media/MediaPlayer;Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/MediaPlayer;",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 499
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_4e

    invoke-interface {p4}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4e

    .line 501
    :try_start_c
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setDataSource"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/net/Uri;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Ljava/util/Map;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 503
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/4 v2, 0x2

    aput-object p4, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_37
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_c .. :try_end_37} :catch_38
    .catch Ljava/lang/NoSuchMethodException; {:try_start_c .. :try_end_37} :catch_48
    .catch Ljava/lang/IllegalAccessException; {:try_start_c .. :try_end_37} :catch_52

    .line 516
    :goto_37
    return-void

    .line 505
    :catch_38
    move-exception v0

    .line 506
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/io/IOException;

    if-eqz v1, :cond_4e

    .line 507
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/io/IOException;

    throw v0

    .line 509
    :catch_48
    move-exception v0

    .line 510
    const-string v1, "invoke failed"

    invoke-static {v1, v0}, Lcom/google/android/youtube/core/L;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 515
    :cond_4e
    :goto_4e
    invoke-virtual {p1, p2, p3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_37

    .line 511
    :catch_52
    move-exception v0

    .line 512
    const-string v1, "invoke failed"

    invoke-static {v1, v0}, Lcom/google/android/youtube/core/L;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4e
.end method

.method private setInternalForceScreenOn(Z)V
    .registers 4
    .parameter "forceScreenOn"

    .prologue
    .line 889
    iput-boolean p1, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->internalForceScreenOn:Z

    .line 890
    iget-object v1, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->playerView:Lcom/google/android/youtube/core/player/PlayerView;

    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->screenAlwaysOn:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->internalForceScreenOn:Z

    if-eqz v0, :cond_11

    :cond_c
    const/4 v0, 0x1

    :goto_d
    invoke-virtual {v1, v0}, Lcom/google/android/youtube/core/player/PlayerView;->setKeepScreenOn(Z)V

    .line 891
    return-void

    .line 890
    :cond_11
    const/4 v0, 0x0

    goto :goto_d
.end method


# virtual methods
.method public addListener(Landroid/os/Handler;)V
    .registers 3
    .parameter "handler"

    .prologue
    .line 838
    iget-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 839
    return-void
.end method

.method public blockingStopVideo()V
    .registers 3

    .prologue
    .line 473
    iget-object v1, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->mediaPlayerThread:Lcom/google/android/youtube/core/player/YouTubePlayer$MediaPlayerThread;

    monitor-enter v1

    .line 474
    :try_start_3
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/YouTubePlayer;->blockingStopVideoInternal()V

    .line 475
    monitor-exit v1

    .line 476
    return-void

    .line 475
    :catchall_8
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public getCurrentPosition()I
    .registers 2

    .prologue
    .line 378
    iget-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->progressNotifier:Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;

    #getter for: Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;->currentPosition:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v0}, Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;->access$400(Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getPlayerView()Lcom/google/android/youtube/core/player/PlayerView;
    .registers 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->playerView:Lcom/google/android/youtube/core/player/PlayerView;

    return-object v0
.end method

.method public getStream()Lcom/google/android/youtube/core/model/Stream;
    .registers 2

    .prologue
    .line 268
    iget-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->source:Lcom/google/android/youtube/core/model/Stream;

    return-object v0
.end method

.method public isPlaying()Z
    .registers 2

    .prologue
    .line 374
    iget-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->mediaPlayerRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->playing:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public loadLiveVideo(Lcom/google/android/youtube/core/model/Stream;)V
    .registers 4
    .parameter "stream"

    .prologue
    const/4 v1, 0x0

    .line 300
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->live:Z

    .line 301
    iput-boolean v1, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->videoSizeKnown:Z

    .line 302
    iput-boolean v1, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->enableAwfulPlayer:Z

    .line 303
    iput-object p1, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->source:Lcom/google/android/youtube/core/model/Stream;

    .line 304
    iget-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->progressNotifier:Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;

    #getter for: Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;->currentPosition:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v0}, Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;->access$400(Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 305
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/player/YouTubePlayer;->load(Lcom/google/android/youtube/core/model/Stream;)V

    .line 306
    return-void
.end method

.method public loadVideo(Lcom/google/android/youtube/core/model/Stream;)V
    .registers 3
    .parameter "stream"

    .prologue
    .line 293
    iget-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->source:Lcom/google/android/youtube/core/model/Stream;

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/model/Stream;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->progressNotifier:Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;

    #getter for: Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;->currentPosition:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v0}, Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;->access$400(Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    :goto_12
    invoke-virtual {p0, p1, v0}, Lcom/google/android/youtube/core/player/YouTubePlayer;->loadVideo(Lcom/google/android/youtube/core/model/Stream;I)V

    .line 294
    return-void

    .line 293
    :cond_16
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public loadVideo(Lcom/google/android/youtube/core/model/Stream;I)V
    .registers 5
    .parameter "stream"
    .parameter "position"

    .prologue
    const/4 v1, 0x0

    .line 279
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->videoSizeKnown:Z

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->source:Lcom/google/android/youtube/core/model/Stream;

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/model/Stream;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    const/4 v0, 0x1

    :goto_e
    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->videoSizeKnown:Z

    .line 280
    iput-boolean v1, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->live:Z

    .line 281
    iput-object p1, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->source:Lcom/google/android/youtube/core/model/Stream;

    .line 282
    iget-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->progressNotifier:Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;

    #getter for: Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;->currentPosition:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v0}, Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;->access$400(Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 283
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/player/YouTubePlayer;->load(Lcom/google/android/youtube/core/model/Stream;)V

    .line 284
    return-void

    :cond_21
    move v0, v1

    .line 279
    goto :goto_e
.end method

.method public pauseVideo()V
    .registers 2

    .prologue
    .line 427
    iget-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->mediaPlayerThread:Lcom/google/android/youtube/core/player/YouTubePlayer$MediaPlayerThread;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/YouTubePlayer$MediaPlayerThread;->pauseVideo()V

    .line 428
    return-void
.end method

.method public playVideo()V
    .registers 2

    .prologue
    .line 382
    iget-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->mediaPlayerThread:Lcom/google/android/youtube/core/player/YouTubePlayer$MediaPlayerThread;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/YouTubePlayer$MediaPlayerThread;->playVideo()V

    .line 383
    return-void
.end method

.method public release()V
    .registers 2

    .prologue
    .line 530
    iget-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->progressNotifier:Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;->quit()V

    .line 531
    iget-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->mediaPlayerThread:Lcom/google/android/youtube/core/player/YouTubePlayer$MediaPlayerThread;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/YouTubePlayer$MediaPlayerThread;->quit()V

    .line 532
    return-void
.end method

.method public seekTo(I)V
    .registers 5
    .parameter "millis"

    .prologue
    .line 449
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->live:Z

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->progressNotifier:Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;

    #getter for: Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;->currentPosition:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v0}, Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;->access$400(Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eq v0, p1, :cond_28

    .line 450
    iget-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->mediaPlayerThread:Lcom/google/android/youtube/core/player/YouTubePlayer$MediaPlayerThread;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->progressNotifier:Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;

    #getter for: Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;->duration:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v2}, Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;->access$500(Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/player/YouTubePlayer$MediaPlayerThread;->seekTo(I)V

    .line 452
    :cond_28
    return-void
.end method

.method public setKeepScreenOn(Z)V
    .registers 4
    .parameter "keepScreenOn"

    .prologue
    .line 884
    iput-boolean p1, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->screenAlwaysOn:Z

    .line 885
    iget-object v1, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->playerView:Lcom/google/android/youtube/core/player/PlayerView;

    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->screenAlwaysOn:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->internalForceScreenOn:Z

    if-eqz v0, :cond_11

    :cond_c
    const/4 v0, 0x1

    :goto_d
    invoke-virtual {v1, v0}, Lcom/google/android/youtube/core/player/PlayerView;->setKeepScreenOn(Z)V

    .line 886
    return-void

    .line 885
    :cond_11
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public setMediaPlayerFactory(Lcom/google/android/youtube/core/player/YouTubePlayer$MediaPlayerFactory;)V
    .registers 3
    .parameter "mediaPlayerFactory"

    .prologue
    .line 227
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/player/YouTubePlayer$MediaPlayerFactory;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->mediaPlayerFactory:Lcom/google/android/youtube/core/player/YouTubePlayer$MediaPlayerFactory;

    .line 228
    return-void
.end method

.method public stopVideo()V
    .registers 2

    .prologue
    .line 469
    iget-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->mediaPlayerThread:Lcom/google/android/youtube/core/player/YouTubePlayer$MediaPlayerThread;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/YouTubePlayer$MediaPlayerThread;->stopVideo()V

    .line 470
    return-void
.end method
