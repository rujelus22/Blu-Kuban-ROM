.class Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;
.super Ljava/lang/Object;
.source "AtHomeDevicePlayback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Callbacks"
.end annotation


# instance fields
.field private mAppendSongsHandler:Lcom/google/android/music/athome/api/MusicConnector$OnAppendSongs;

.field private mIgnore:Z

.field private mInsertAndPositionSongsHandler:Lcom/google/android/music/athome/api/MusicConnector$OnInsertAndPositionSongs;

.field private mInsertSongsHandler:Lcom/google/android/music/athome/api/MusicConnector$OnInsertSongs;

.field private mPrependSongsHandler:Lcom/google/android/music/athome/api/MusicConnector$OnPrependSongs;

.field private mQueueLoaderErrorHandler:Landroid/support/place/rpc/RpcErrorHandler;

.field private mRemoveSongsInRangeHandler:Lcom/google/android/music/athome/api/MusicConnector$OnRemoveSongsInRange;

.field final synthetic this$1:Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;


# direct methods
.method private constructor <init>(Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;)V
    .registers 3
    .parameter

    .prologue
    .line 190
    iput-object p1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;->this$1:Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;->mIgnore:Z

    .line 198
    new-instance v0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks$1;

    invoke-direct {v0, p0}, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks$1;-><init>(Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;)V

    iput-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;->mAppendSongsHandler:Lcom/google/android/music/athome/api/MusicConnector$OnAppendSongs;

    .line 227
    new-instance v0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks$2;

    invoke-direct {v0, p0}, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks$2;-><init>(Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;)V

    iput-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;->mInsertSongsHandler:Lcom/google/android/music/athome/api/MusicConnector$OnInsertSongs;

    .line 242
    new-instance v0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks$3;

    invoke-direct {v0, p0}, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks$3;-><init>(Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;)V

    iput-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;->mInsertAndPositionSongsHandler:Lcom/google/android/music/athome/api/MusicConnector$OnInsertAndPositionSongs;

    .line 257
    new-instance v0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks$4;

    invoke-direct {v0, p0}, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks$4;-><init>(Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;)V

    iput-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;->mPrependSongsHandler:Lcom/google/android/music/athome/api/MusicConnector$OnPrependSongs;

    .line 272
    new-instance v0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks$5;

    invoke-direct {v0, p0}, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks$5;-><init>(Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;)V

    iput-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;->mRemoveSongsInRangeHandler:Lcom/google/android/music/athome/api/MusicConnector$OnRemoveSongsInRange;

    .line 287
    new-instance v0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks$6;

    invoke-direct {v0, p0}, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks$6;-><init>(Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;)V

    iput-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;->mQueueLoaderErrorHandler:Landroid/support/place/rpc/RpcErrorHandler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;Lcom/google/android/music/athome/AtHomeDevicePlayback$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 190
    invoke-direct {p0, p1}, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;-><init>(Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;->mIgnore:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 190
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;->ignore()V

    return-void
.end method

.method static synthetic access$2700(Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;)Landroid/support/place/rpc/RpcErrorHandler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 190
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;->mQueueLoaderErrorHandler:Landroid/support/place/rpc/RpcErrorHandler;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;)Lcom/google/android/music/athome/api/MusicConnector$OnRemoveSongsInRange;
    .registers 2
    .parameter "x0"

    .prologue
    .line 190
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;->mRemoveSongsInRangeHandler:Lcom/google/android/music/athome/api/MusicConnector$OnRemoveSongsInRange;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;)Lcom/google/android/music/athome/api/MusicConnector$OnPrependSongs;
    .registers 2
    .parameter "x0"

    .prologue
    .line 190
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;->mPrependSongsHandler:Lcom/google/android/music/athome/api/MusicConnector$OnPrependSongs;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;)Lcom/google/android/music/athome/api/MusicConnector$OnInsertSongs;
    .registers 2
    .parameter "x0"

    .prologue
    .line 190
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;->mInsertSongsHandler:Lcom/google/android/music/athome/api/MusicConnector$OnInsertSongs;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;)Lcom/google/android/music/athome/api/MusicConnector$OnInsertAndPositionSongs;
    .registers 2
    .parameter "x0"

    .prologue
    .line 190
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;->mInsertAndPositionSongsHandler:Lcom/google/android/music/athome/api/MusicConnector$OnInsertAndPositionSongs;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;)Lcom/google/android/music/athome/api/MusicConnector$OnAppendSongs;
    .registers 2
    .parameter "x0"

    .prologue
    .line 190
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;->mAppendSongsHandler:Lcom/google/android/music/athome/api/MusicConnector$OnAppendSongs;

    return-object v0
.end method

.method private declared-synchronized ignore()V
    .registers 2

    .prologue
    .line 195
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;->mIgnore:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 196
    monitor-exit p0

    return-void

    .line 195
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method
