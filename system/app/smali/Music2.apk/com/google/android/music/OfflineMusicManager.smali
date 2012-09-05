.class public Lcom/google/android/music/OfflineMusicManager;
.super Ljava/lang/Object;
.source "OfflineMusicManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/OfflineMusicManager$AvailableSpaceChangedListener;,
        Lcom/google/android/music/OfflineMusicManager$UpdateFreespaceTask;,
        Lcom/google/android/music/OfflineMusicManager$GetFreeSpaceTask;,
        Lcom/google/android/music/OfflineMusicManager$PlaylistChangedListener;,
        Lcom/google/android/music/OfflineMusicManager$ArtistChangedListener;,
        Lcom/google/android/music/OfflineMusicManager$AlbumChangedListener;,
        Lcom/google/android/music/OfflineMusicManager$ForEachAlbumFromArtistTask;,
        Lcom/google/android/music/OfflineMusicManager$DeselectArtistsOfAlbumTask;
    }
.end annotation


# instance fields
.field private mAlbumListeners:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/music/OfflineMusicManager$AlbumChangedListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mAlbumLock:Ljava/lang/Object;

.field private mArtistListeners:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/music/OfflineMusicManager$ArtistChangedListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mArtistLock:Ljava/lang/Object;

.field private mAvailabilityTransition:Z

.field private mContext:Landroid/content/Context;

.field private mDLManagerConnected:Z

.field private final mDeselectedAlbums:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeselectedArtists:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeselectedPlaylists:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mDownloadManager:Lcom/google/android/music/dl/IDownloadManager;

.field private mFreeSpace:J

.field private mIsActive:Z

.field private mListeners:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/music/OfflineMusicManager$AvailableSpaceChangedListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

.field private mPlaylistListeners:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/music/OfflineMusicManager$PlaylistChangedListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mSelectedAlbums:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mSelectedArtists:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mSelectedPlaylists:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mSpaceVariablesLock:Ljava/lang/Object;

.field private mStoreConnection:Landroid/content/ServiceConnection;

.field private mStoreService:Lcom/google/android/music/store/IStoreService;

.field private mStoreServiceConnected:Z

.field private mTotalSpace:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 330
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/music/OfflineMusicManager;-><init>(Landroid/content/Context;Lcom/google/android/music/activitymanagement/MusicStateController;)V

    .line 331
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/music/activitymanagement/MusicStateController;)V
    .registers 7
    .parameter "context"
    .parameter "appController"

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mAlbumLock:Ljava/lang/Object;

    .line 75
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mSelectedAlbums:Ljava/util/TreeSet;

    .line 76
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mDeselectedAlbums:Ljava/util/TreeSet;

    .line 79
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mArtistLock:Ljava/lang/Object;

    .line 80
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mSelectedArtists:Ljava/util/TreeSet;

    .line 81
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mDeselectedArtists:Ljava/util/TreeSet;

    .line 83
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mSelectedPlaylists:Ljava/util/TreeSet;

    .line 84
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mDeselectedPlaylists:Ljava/util/TreeSet;

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/OfflineMusicManager;->mIsActive:Z

    .line 91
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mSpaceVariablesLock:Ljava/lang/Object;

    .line 92
    iput-wide v2, p0, Lcom/google/android/music/OfflineMusicManager;->mTotalSpace:J

    .line 97
    iput-wide v2, p0, Lcom/google/android/music/OfflineMusicManager;->mFreeSpace:J

    .line 99
    iput-boolean v1, p0, Lcom/google/android/music/OfflineMusicManager;->mAvailabilityTransition:Z

    .line 101
    iput-boolean v1, p0, Lcom/google/android/music/OfflineMusicManager;->mDLManagerConnected:Z

    .line 102
    iput-boolean v1, p0, Lcom/google/android/music/OfflineMusicManager;->mStoreServiceConnected:Z

    .line 108
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mAlbumListeners:Ljava/util/LinkedList;

    .line 110
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mArtistListeners:Ljava/util/LinkedList;

    .line 112
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mPlaylistListeners:Ljava/util/LinkedList;

    .line 289
    new-instance v0, Lcom/google/android/music/OfflineMusicManager$1;

    invoke-direct {v0, p0}, Lcom/google/android/music/OfflineMusicManager$1;-><init>(Lcom/google/android/music/OfflineMusicManager;)V

    iput-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mStoreConnection:Landroid/content/ServiceConnection;

    .line 789
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mListeners:Ljava/util/LinkedList;

    .line 335
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mContext:Landroid/content/Context;

    .line 337
    iput-object p2, p0, Lcom/google/android/music/OfflineMusicManager;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    .line 339
    invoke-direct {p0}, Lcom/google/android/music/OfflineMusicManager;->bindToServices()V

    .line 340
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/OfflineMusicManager;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/google/android/music/OfflineMusicManager;->waitForStoreConnection()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/music/OfflineMusicManager;)Lcom/google/android/music/store/IStoreService;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mStoreService:Lcom/google/android/music/store/IStoreService;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/music/OfflineMusicManager;)Landroid/content/ServiceConnection;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mStoreConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/android/music/OfflineMusicManager;Lcom/google/android/music/store/IStoreService;)Lcom/google/android/music/store/IStoreService;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/google/android/music/OfflineMusicManager;->mStoreService:Lcom/google/android/music/store/IStoreService;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/google/android/music/OfflineMusicManager;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/google/android/music/OfflineMusicManager;->mStoreServiceConnected:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/google/android/music/OfflineMusicManager;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/google/android/music/OfflineMusicManager;)Ljava/util/TreeSet;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mDeselectedArtists:Ljava/util/TreeSet;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/google/android/music/OfflineMusicManager;)Ljava/util/TreeSet;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mDeselectedAlbums:Ljava/util/TreeSet;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/google/android/music/OfflineMusicManager;)Ljava/util/TreeSet;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mDeselectedPlaylists:Ljava/util/TreeSet;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/google/android/music/OfflineMusicManager;)Ljava/util/TreeSet;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mSelectedArtists:Ljava/util/TreeSet;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/google/android/music/OfflineMusicManager;)Ljava/util/TreeSet;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mSelectedAlbums:Ljava/util/TreeSet;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/google/android/music/OfflineMusicManager;)Ljava/util/TreeSet;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mSelectedPlaylists:Ljava/util/TreeSet;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/google/android/music/OfflineMusicManager;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mSpaceVariablesLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/google/android/music/OfflineMusicManager;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-wide p1, p0, Lcom/google/android/music/OfflineMusicManager;->mTotalSpace:J

    return-wide p1
.end method

.method static synthetic access$2200(Lcom/google/android/music/OfflineMusicManager;)Lcom/google/android/music/dl/IDownloadManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mDownloadManager:Lcom/google/android/music/dl/IDownloadManager;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/google/android/music/OfflineMusicManager;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/google/android/music/OfflineMusicManager;->mFreeSpace:J

    return-wide v0
.end method

.method static synthetic access$2302(Lcom/google/android/music/OfflineMusicManager;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-wide p1, p0, Lcom/google/android/music/OfflineMusicManager;->mFreeSpace:J

    return-wide p1
.end method

.method static synthetic access$2314(Lcom/google/android/music/OfflineMusicManager;J)J
    .registers 5
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/google/android/music/OfflineMusicManager;->mFreeSpace:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/android/music/OfflineMusicManager;->mFreeSpace:J

    return-wide v0
.end method

.method static synthetic access$2322(Lcom/google/android/music/OfflineMusicManager;J)J
    .registers 5
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/google/android/music/OfflineMusicManager;->mFreeSpace:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/android/music/OfflineMusicManager;->mFreeSpace:J

    return-wide v0
.end method

.method static synthetic access$2400(Lcom/google/android/music/OfflineMusicManager;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/google/android/music/OfflineMusicManager;->notifyAvailableSpaceChangedListener()V

    return-void
.end method

.method static synthetic access$2502(Lcom/google/android/music/OfflineMusicManager;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/google/android/music/OfflineMusicManager;->mAvailabilityTransition:Z

    return p1
.end method

.method static synthetic access$300(Lcom/google/android/music/OfflineMusicManager;Ljava/util/List;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/google/android/music/OfflineMusicManager;->notifyArtistChangedListeners(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/music/OfflineMusicManager;JJ)Z
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/music/OfflineMusicManager;->clearArtistsOfAlbum(JJ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/google/android/music/OfflineMusicManager;J)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/OfflineMusicManager;->markAlbum(J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/google/android/music/OfflineMusicManager;J)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/OfflineMusicManager;->clearAlbum(J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/google/android/music/OfflineMusicManager;Ljava/util/List;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/google/android/music/OfflineMusicManager;->notifyAlbumChangedListeners(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/android/music/OfflineMusicManager;JLjava/util/List;Z)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/music/OfflineMusicManager;->submitUpdateFreespaceTaskForArtist(JLjava/util/List;Z)V

    return-void
.end method

.method private bindToServices()V
    .registers 5

    .prologue
    .line 350
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/android/music/OfflineMusicManager;->mContext:Landroid/content/Context;

    const-class v3, Lcom/google/android/music/dl/DownloadManager$DownloadManagerService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 351
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.music.STORE_SERVICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/music/OfflineMusicManager;->mStoreConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 353
    return-void
.end method

.method private checkActive()V
    .registers 3

    .prologue
    .line 397
    iget-boolean v0, p0, Lcom/google/android/music/OfflineMusicManager;->mIsActive:Z

    if-nez v0, :cond_c

    .line 398
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can not make changes once a session is committed or cancelled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 401
    :cond_c
    return-void
.end method

.method private clearAlbum(J)Z
    .registers 6
    .parameter "albumId"

    .prologue
    .line 965
    iget-object v1, p0, Lcom/google/android/music/OfflineMusicManager;->mAlbumLock:Ljava/lang/Object;

    monitor-enter v1

    .line 966
    :try_start_3
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mSelectedAlbums:Ljava/util/TreeSet;

    iget-object v2, p0, Lcom/google/android/music/OfflineMusicManager;->mDeselectedAlbums:Ljava/util/TreeSet;

    invoke-direct {p0, p1, p2, v0, v2}, Lcom/google/android/music/OfflineMusicManager;->moveIdFromTo(JLjava/util/TreeSet;Ljava/util/TreeSet;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 967
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0
.end method

.method private clearAlbumAndNotify(J)V
    .registers 5
    .parameter "albumId"

    .prologue
    .line 975
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/OfflineMusicManager;->clearAlbum(J)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 976
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/music/OfflineMusicManager;->notifyAlbumChangedListeners(Ljava/util/List;)V

    .line 977
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/music/OfflineMusicManager;->submitUpdateFreespaceTask(JIZ)V

    .line 979
    :cond_16
    return-void
.end method

.method private clearAllChangeListeners()V
    .registers 3

    .prologue
    .line 861
    iget-object v1, p0, Lcom/google/android/music/OfflineMusicManager;->mAlbumListeners:Ljava/util/LinkedList;

    monitor-enter v1

    .line 862
    :try_start_3
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mAlbumListeners:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 863
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_1c

    .line 864
    iget-object v1, p0, Lcom/google/android/music/OfflineMusicManager;->mArtistListeners:Ljava/util/LinkedList;

    monitor-enter v1

    .line 865
    :try_start_c
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mArtistListeners:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 866
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_1f

    .line 868
    iget-object v1, p0, Lcom/google/android/music/OfflineMusicManager;->mPlaylistListeners:Ljava/util/LinkedList;

    monitor-enter v1

    .line 869
    :try_start_15
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mPlaylistListeners:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 870
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_15 .. :try_end_1b} :catchall_22

    .line 871
    return-void

    .line 863
    :catchall_1c
    move-exception v0

    :try_start_1d
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v0

    .line 866
    :catchall_1f
    move-exception v0

    :try_start_20
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v0

    .line 870
    :catchall_22
    move-exception v0

    :try_start_23
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v0
.end method

.method private clearArtist(J)Z
    .registers 6
    .parameter "artistId"

    .prologue
    .line 930
    iget-object v1, p0, Lcom/google/android/music/OfflineMusicManager;->mArtistLock:Ljava/lang/Object;

    monitor-enter v1

    .line 931
    :try_start_3
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mSelectedArtists:Ljava/util/TreeSet;

    iget-object v2, p0, Lcom/google/android/music/OfflineMusicManager;->mDeselectedArtists:Ljava/util/TreeSet;

    invoke-direct {p0, p1, p2, v0, v2}, Lcom/google/android/music/OfflineMusicManager;->moveIdFromTo(JLjava/util/TreeSet;Ljava/util/TreeSet;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 932
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0
.end method

.method private clearArtistsOfAlbum(JJ)Z
    .registers 16
    .parameter "albumId"
    .parameter "skipArtistId"

    .prologue
    .line 1013
    const/4 v4, 0x0

    .line 1014
    .local v4, changed:Z
    invoke-direct {p0}, Lcom/google/android/music/OfflineMusicManager;->waitForStoreConnection()V

    .line 1016
    :try_start_4
    iget-object v8, p0, Lcom/google/android/music/OfflineMusicManager;->mStoreService:Lcom/google/android/music/store/IStoreService;

    invoke-interface {v8, p1, p2}, Lcom/google/android/music/store/IStoreService;->getArtistIdsForAlbum(J)[J

    move-result-object v3

    .line 1017
    .local v3, artists:[J
    if-eqz v3, :cond_3e

    .line 1018
    move-object v0, v3

    .local v0, arr$:[J
    array-length v7, v0

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_f
    if-ge v6, v7, :cond_3e

    aget-wide v1, v0, v6

    .line 1019
    .local v1, artistId:J
    cmp-long v8, v1, p3

    if-nez v8, :cond_1a

    .line 1018
    :cond_17
    :goto_17
    add-int/lit8 v6, v6, 0x1

    goto :goto_f

    .line 1022
    :cond_1a
    invoke-direct {p0, v1, v2}, Lcom/google/android/music/OfflineMusicManager;->clearArtist(J)Z
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_1d} :catch_24

    move-result v8

    if-eqz v8, :cond_17

    if-nez v4, :cond_17

    .line 1023
    const/4 v4, 0x1

    goto :goto_17

    .line 1027
    .end local v0           #arr$:[J
    .end local v1           #artistId:J
    .end local v3           #artists:[J
    .end local v6           #i$:I
    .end local v7           #len$:I
    :catch_24
    move-exception v5

    .line 1028
    .local v5, e:Landroid/os/RemoteException;
    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Remote error trying to get Artist ids for album: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 1031
    .end local v5           #e:Landroid/os/RemoteException;
    .restart local v3       #artists:[J
    :cond_3e
    return v4
.end method

.method private isAvailableSpaceInitialized()Z
    .registers 7

    .prologue
    const-wide/16 v4, 0x0

    .line 690
    iget-object v1, p0, Lcom/google/android/music/OfflineMusicManager;->mSpaceVariablesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 691
    :try_start_5
    iget-wide v2, p0, Lcom/google/android/music/OfflineMusicManager;->mFreeSpace:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_14

    iget-wide v2, p0, Lcom/google/android/music/OfflineMusicManager;->mTotalSpace:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_12
    monitor-exit v1

    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_12

    .line 692
    :catchall_16
    move-exception v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private markAlbum(J)Z
    .registers 6
    .parameter "albumId"

    .prologue
    .line 942
    iget-object v1, p0, Lcom/google/android/music/OfflineMusicManager;->mAlbumLock:Ljava/lang/Object;

    monitor-enter v1

    .line 943
    :try_start_3
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mDeselectedAlbums:Ljava/util/TreeSet;

    iget-object v2, p0, Lcom/google/android/music/OfflineMusicManager;->mSelectedAlbums:Ljava/util/TreeSet;

    invoke-direct {p0, p1, p2, v0, v2}, Lcom/google/android/music/OfflineMusicManager;->moveIdFromTo(JLjava/util/TreeSet;Ljava/util/TreeSet;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 944
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0
.end method

.method private markAlbumAndNotify(J)V
    .registers 5
    .parameter "albumId"

    .prologue
    const/4 v1, 0x1

    .line 952
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/OfflineMusicManager;->markAlbum(J)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 953
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/music/OfflineMusicManager;->notifyAlbumChangedListeners(Ljava/util/List;)V

    .line 954
    invoke-direct {p0, p1, p2, v1, v1}, Lcom/google/android/music/OfflineMusicManager;->submitUpdateFreespaceTask(JIZ)V

    .line 956
    :cond_15
    return-void
.end method

.method private markArtist(J)Z
    .registers 6
    .parameter "artistId"

    .prologue
    .line 920
    iget-object v1, p0, Lcom/google/android/music/OfflineMusicManager;->mArtistLock:Ljava/lang/Object;

    monitor-enter v1

    .line 921
    :try_start_3
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mDeselectedArtists:Ljava/util/TreeSet;

    iget-object v2, p0, Lcom/google/android/music/OfflineMusicManager;->mSelectedArtists:Ljava/util/TreeSet;

    invoke-direct {p0, p1, p2, v0, v2}, Lcom/google/android/music/OfflineMusicManager;->moveIdFromTo(JLjava/util/TreeSet;Ljava/util/TreeSet;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 922
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0
.end method

.method private moveIdFromTo(JLjava/util/TreeSet;Ljava/util/TreeSet;)Z
    .registers 7
    .parameter "id"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/TreeSet",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/TreeSet",
            "<",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 984
    .local p3, fromSet:Ljava/util/TreeSet;,"Ljava/util/TreeSet<Ljava/lang/Long;>;"
    .local p4, toSet:Ljava/util/TreeSet;,"Ljava/util/TreeSet<Ljava/lang/Long;>;"
    const/4 v0, 0x0

    .line 986
    .local v0, insert:Z
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 987
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 988
    const/4 v0, 0x1

    .line 990
    :cond_13
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 991
    return v0
.end method

.method private notifyAlbumChangedListeners(Ljava/util/List;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 874
    .local p1, albumids:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v3, p0, Lcom/google/android/music/OfflineMusicManager;->mAlbumListeners:Ljava/util/LinkedList;

    monitor-enter v3

    .line 875
    :try_start_3
    iget-object v2, p0, Lcom/google/android/music/OfflineMusicManager;->mAlbumListeners:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 876
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/google/android/music/OfflineMusicManager$AlbumChangedListener;>;>;"
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 877
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/OfflineMusicManager$AlbumChangedListener;

    .line 878
    .local v1, listener:Lcom/google/android/music/OfflineMusicManager$AlbumChangedListener;
    if-nez v1, :cond_24

    .line 879
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_9

    .line 884
    .end local v0           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/google/android/music/OfflineMusicManager$AlbumChangedListener;>;>;"
    .end local v1           #listener:Lcom/google/android/music/OfflineMusicManager$AlbumChangedListener;
    :catchall_21
    move-exception v2

    monitor-exit v3
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v2

    .line 881
    .restart local v0       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/google/android/music/OfflineMusicManager$AlbumChangedListener;>;>;"
    .restart local v1       #listener:Lcom/google/android/music/OfflineMusicManager$AlbumChangedListener;
    :cond_24
    :try_start_24
    invoke-interface {v1, p1}, Lcom/google/android/music/OfflineMusicManager$AlbumChangedListener;->onAlbumChanged(Ljava/util/List;)V

    goto :goto_9

    .line 884
    .end local v1           #listener:Lcom/google/android/music/OfflineMusicManager$AlbumChangedListener;
    :cond_28
    monitor-exit v3
    :try_end_29
    .catchall {:try_start_24 .. :try_end_29} :catchall_21

    .line 885
    return-void
.end method

.method private notifyArtistChangedListeners(Ljava/util/List;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 888
    .local p1, artistIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v3, p0, Lcom/google/android/music/OfflineMusicManager;->mArtistListeners:Ljava/util/LinkedList;

    monitor-enter v3

    .line 889
    :try_start_3
    iget-object v2, p0, Lcom/google/android/music/OfflineMusicManager;->mArtistListeners:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 890
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/google/android/music/OfflineMusicManager$ArtistChangedListener;>;>;"
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 891
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/OfflineMusicManager$ArtistChangedListener;

    .line 892
    .local v1, listener:Lcom/google/android/music/OfflineMusicManager$ArtistChangedListener;
    if-nez v1, :cond_24

    .line 893
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_9

    .line 898
    .end local v0           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/google/android/music/OfflineMusicManager$ArtistChangedListener;>;>;"
    .end local v1           #listener:Lcom/google/android/music/OfflineMusicManager$ArtistChangedListener;
    :catchall_21
    move-exception v2

    monitor-exit v3
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v2

    .line 895
    .restart local v0       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/google/android/music/OfflineMusicManager$ArtistChangedListener;>;>;"
    .restart local v1       #listener:Lcom/google/android/music/OfflineMusicManager$ArtistChangedListener;
    :cond_24
    :try_start_24
    invoke-interface {v1, p1}, Lcom/google/android/music/OfflineMusicManager$ArtistChangedListener;->onArtistChanged(Ljava/util/List;)V

    goto :goto_9

    .line 898
    .end local v1           #listener:Lcom/google/android/music/OfflineMusicManager$ArtistChangedListener;
    :cond_28
    monitor-exit v3
    :try_end_29
    .catchall {:try_start_24 .. :try_end_29} :catchall_21

    .line 899
    return-void
.end method

.method private notifyAvailableSpaceChangedListener()V
    .registers 10

    .prologue
    .line 820
    iget-object v8, p0, Lcom/google/android/music/OfflineMusicManager;->mSpaceVariablesLock:Ljava/lang/Object;

    monitor-enter v8

    .line 821
    :try_start_3
    iget-wide v1, p0, Lcom/google/android/music/OfflineMusicManager;->mTotalSpace:J

    .line 822
    .local v1, totalSpace:J
    iget-wide v3, p0, Lcom/google/android/music/OfflineMusicManager;->mFreeSpace:J

    .line 823
    .local v3, freeSpace:J
    iget-boolean v5, p0, Lcom/google/android/music/OfflineMusicManager;->mAvailabilityTransition:Z

    .line 824
    .local v5, transition:Z
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/google/android/music/OfflineMusicManager;->mAvailabilityTransition:Z

    .line 825
    monitor-exit v8
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_31

    .line 826
    iget-object v8, p0, Lcom/google/android/music/OfflineMusicManager;->mListeners:Ljava/util/LinkedList;

    monitor-enter v8

    .line 827
    :try_start_10
    iget-object v7, p0, Lcom/google/android/music/OfflineMusicManager;->mListeners:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 828
    .local v6, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/google/android/music/OfflineMusicManager$AvailableSpaceChangedListener;>;>;"
    :goto_16
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_38

    .line 829
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/OfflineMusicManager$AvailableSpaceChangedListener;

    .line 830
    .local v0, listener:Lcom/google/android/music/OfflineMusicManager$AvailableSpaceChangedListener;
    if-nez v0, :cond_34

    .line 831
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    goto :goto_16

    .line 836
    .end local v0           #listener:Lcom/google/android/music/OfflineMusicManager$AvailableSpaceChangedListener;
    .end local v6           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/google/android/music/OfflineMusicManager$AvailableSpaceChangedListener;>;>;"
    :catchall_2e
    move-exception v7

    monitor-exit v8
    :try_end_30
    .catchall {:try_start_10 .. :try_end_30} :catchall_2e

    throw v7

    .line 825
    .end local v1           #totalSpace:J
    .end local v3           #freeSpace:J
    .end local v5           #transition:Z
    :catchall_31
    move-exception v7

    :try_start_32
    monitor-exit v8
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw v7

    .line 833
    .restart local v0       #listener:Lcom/google/android/music/OfflineMusicManager$AvailableSpaceChangedListener;
    .restart local v1       #totalSpace:J
    .restart local v3       #freeSpace:J
    .restart local v5       #transition:Z
    .restart local v6       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/google/android/music/OfflineMusicManager$AvailableSpaceChangedListener;>;>;"
    :cond_34
    :try_start_34
    invoke-interface/range {v0 .. v5}, Lcom/google/android/music/OfflineMusicManager$AvailableSpaceChangedListener;->onAvailableSpaceChanged(JJZ)V

    goto :goto_16

    .line 836
    .end local v0           #listener:Lcom/google/android/music/OfflineMusicManager$AvailableSpaceChangedListener;
    :cond_38
    monitor-exit v8
    :try_end_39
    .catchall {:try_start_34 .. :try_end_39} :catchall_2e

    .line 837
    return-void
.end method

.method private notifyPlaylistChangedListeners(Ljava/util/List;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 902
    .local p1, playlistIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v3, p0, Lcom/google/android/music/OfflineMusicManager;->mPlaylistListeners:Ljava/util/LinkedList;

    monitor-enter v3

    .line 903
    :try_start_3
    iget-object v2, p0, Lcom/google/android/music/OfflineMusicManager;->mPlaylistListeners:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 904
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/google/android/music/OfflineMusicManager$PlaylistChangedListener;>;>;"
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 905
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/OfflineMusicManager$PlaylistChangedListener;

    .line 906
    .local v1, listener:Lcom/google/android/music/OfflineMusicManager$PlaylistChangedListener;
    if-nez v1, :cond_24

    .line 907
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_9

    .line 912
    .end local v0           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/google/android/music/OfflineMusicManager$PlaylistChangedListener;>;>;"
    .end local v1           #listener:Lcom/google/android/music/OfflineMusicManager$PlaylistChangedListener;
    :catchall_21
    move-exception v2

    monitor-exit v3
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v2

    .line 909
    .restart local v0       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/google/android/music/OfflineMusicManager$PlaylistChangedListener;>;>;"
    .restart local v1       #listener:Lcom/google/android/music/OfflineMusicManager$PlaylistChangedListener;
    :cond_24
    :try_start_24
    invoke-interface {v1, p1}, Lcom/google/android/music/OfflineMusicManager$PlaylistChangedListener;->onPlaylistChanged(Ljava/util/List;)V

    goto :goto_9

    .line 912
    .end local v1           #listener:Lcom/google/android/music/OfflineMusicManager$PlaylistChangedListener;
    :cond_28
    monitor-exit v3
    :try_end_29
    .catchall {:try_start_24 .. :try_end_29} :catchall_21

    .line 913
    return-void
.end method

.method private submitUpdateFreespaceTask(JIZ)V
    .registers 7
    .parameter "id"
    .parameter "type"
    .parameter "added"

    .prologue
    .line 664
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 665
    .local v0, ids:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 666
    invoke-direct {p0, v0, p3, p4}, Lcom/google/android/music/OfflineMusicManager;->submitUpdateFreespaceTask(Ljava/util/List;IZ)V

    .line 667
    return-void
.end method

.method private submitUpdateFreespaceTask(Ljava/util/List;IZ)V
    .registers 5
    .parameter
    .parameter "type"
    .parameter "added"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    .line 680
    .local p1, ids:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static {}, Lcom/google/android/music/MusicUtils;->assertUiThread()V

    .line 681
    invoke-direct {p0}, Lcom/google/android/music/OfflineMusicManager;->isAvailableSpaceInitialized()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 682
    new-instance v0, Lcom/google/android/music/OfflineMusicManager$UpdateFreespaceTask;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/music/OfflineMusicManager$UpdateFreespaceTask;-><init>(Lcom/google/android/music/OfflineMusicManager;Ljava/util/List;IZ)V

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->runAsyncWithCallback(Lcom/google/android/music/utils/async/AsyncRunner;)V

    .line 684
    :cond_11
    return-void
.end method

.method private submitUpdateFreespaceTaskForArtist(JLjava/util/List;Z)V
    .registers 7
    .parameter "artistId"
    .parameter
    .parameter "added"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 671
    .local p3, albumIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static {}, Lcom/google/android/music/MusicUtils;->assertUiThread()V

    .line 672
    invoke-direct {p0}, Lcom/google/android/music/OfflineMusicManager;->isAvailableSpaceInitialized()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 673
    new-instance v0, Lcom/google/android/music/OfflineMusicManager$UpdateFreespaceTask;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p3, v1, p4}, Lcom/google/android/music/OfflineMusicManager$UpdateFreespaceTask;-><init>(Lcom/google/android/music/OfflineMusicManager;Ljava/util/List;IZ)V

    .line 675
    .local v0, freespaceTask:Lcom/google/android/music/OfflineMusicManager$UpdateFreespaceTask;
    invoke-virtual {v0, p1, p2}, Lcom/google/android/music/OfflineMusicManager$UpdateFreespaceTask;->markAsFromArtist(J)V

    .line 676
    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->runAsyncWithCallback(Lcom/google/android/music/utils/async/AsyncRunner;)V

    .line 678
    .end local v0           #freespaceTask:Lcom/google/android/music/OfflineMusicManager$UpdateFreespaceTask;
    :cond_15
    return-void
.end method

.method private declared-synchronized unbindFromServices()V
    .registers 3

    .prologue
    .line 356
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/music/OfflineMusicManager;->mDLManagerConnected:Z

    if-eqz v0, :cond_d

    .line 358
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/OfflineMusicManager;->mDLManagerConnected:Z

    .line 359
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 362
    :cond_d
    iget-boolean v0, p0, Lcom/google/android/music/OfflineMusicManager;->mStoreServiceConnected:Z

    if-eqz v0, :cond_1b

    .line 363
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/OfflineMusicManager;->mStoreServiceConnected:Z

    .line 364
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/music/OfflineMusicManager;->mStoreConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1d

    .line 366
    :cond_1b
    monitor-exit p0

    return-void

    .line 356
    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private waitForStoreConnection()V
    .registers 5

    .prologue
    .line 369
    iget-object v1, p0, Lcom/google/android/music/OfflineMusicManager;->mStoreConnection:Landroid/content/ServiceConnection;

    monitor-enter v1

    .line 370
    :try_start_3
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mStoreService:Lcom/google/android/music/store/IStoreService;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_1a

    if-nez v0, :cond_1d

    .line 372
    :try_start_7
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mStoreConnection:Landroid/content/ServiceConnection;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_1a
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_e} :catch_1f

    .line 377
    :goto_e
    :try_start_e
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mStoreService:Lcom/google/android/music/store/IStoreService;

    if-nez v0, :cond_1d

    .line 378
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Could not connect to store service"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 382
    :catchall_1a
    move-exception v0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_e .. :try_end_1c} :catchall_1a

    throw v0

    :cond_1d
    :try_start_1d
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1a

    .line 383
    return-void

    .line 373
    :catch_1f
    move-exception v0

    goto :goto_e
.end method


# virtual methods
.method public addAvailableSpaceChangeListener(Lcom/google/android/music/OfflineMusicManager$AvailableSpaceChangedListener;)V
    .registers 8
    .parameter "listener"

    .prologue
    .line 793
    iget-object v1, p0, Lcom/google/android/music/OfflineMusicManager;->mListeners:Ljava/util/LinkedList;

    monitor-enter v1

    .line 794
    :try_start_3
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mListeners:Ljava/util/LinkedList;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 795
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_1f

    .line 797
    invoke-direct {p0}, Lcom/google/android/music/OfflineMusicManager;->isAvailableSpaceInitialized()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 798
    iget-wide v1, p0, Lcom/google/android/music/OfflineMusicManager;->mTotalSpace:J

    iget-wide v3, p0, Lcom/google/android/music/OfflineMusicManager;->mFreeSpace:J

    iget-boolean v5, p0, Lcom/google/android/music/OfflineMusicManager;->mAvailabilityTransition:Z

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/google/android/music/OfflineMusicManager$AvailableSpaceChangedListener;->onAvailableSpaceChanged(JJZ)V

    .line 800
    :cond_1e
    return-void

    .line 795
    :catchall_1f
    move-exception v0

    :try_start_20
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v0
.end method

.method public commitChanges()V
    .registers 2

    .prologue
    .line 529
    invoke-direct {p0}, Lcom/google/android/music/OfflineMusicManager;->checkActive()V

    .line 530
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/OfflineMusicManager;->mIsActive:Z

    .line 531
    invoke-direct {p0}, Lcom/google/android/music/OfflineMusicManager;->unbindFromServices()V

    .line 532
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    if-eqz v0, :cond_12

    .line 533
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicStateController;->exitManageMusicMode()V

    .line 535
    :cond_12
    invoke-direct {p0}, Lcom/google/android/music/OfflineMusicManager;->clearAllChangeListeners()V

    .line 542
    new-instance v0, Lcom/google/android/music/OfflineMusicManager$2;

    invoke-direct {v0, p0}, Lcom/google/android/music/OfflineMusicManager$2;-><init>(Lcom/google/android/music/OfflineMusicManager;)V

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->runAsync(Ljava/lang/Runnable;)V

    .line 549
    return-void
.end method

.method public deselectAlbum(JJ)V
    .registers 11
    .parameter "albumId"
    .parameter "artistId"

    .prologue
    .line 465
    invoke-direct {p0}, Lcom/google/android/music/OfflineMusicManager;->checkActive()V

    .line 466
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/OfflineMusicManager;->clearAlbumAndNotify(J)V

    .line 470
    invoke-direct {p0, p3, p4}, Lcom/google/android/music/OfflineMusicManager;->clearArtist(J)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 471
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/music/OfflineMusicManager;->notifyArtistChangedListeners(Ljava/util/List;)V

    .line 475
    :cond_17
    new-instance v0, Lcom/google/android/music/OfflineMusicManager$DeselectArtistsOfAlbumTask;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/music/OfflineMusicManager$DeselectArtistsOfAlbumTask;-><init>(Lcom/google/android/music/OfflineMusicManager;JJ)V

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->runAsyncWithCallback(Lcom/google/android/music/utils/async/AsyncRunner;)V

    .line 478
    return-void
.end method

.method public deselectArtist(J)V
    .registers 5
    .parameter "id"

    .prologue
    .line 417
    invoke-direct {p0}, Lcom/google/android/music/OfflineMusicManager;->checkActive()V

    .line 419
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/OfflineMusicManager;->clearArtist(J)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 420
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/music/OfflineMusicManager;->notifyArtistChangedListeners(Ljava/util/List;)V

    .line 426
    :cond_14
    new-instance v0, Lcom/google/android/music/OfflineMusicManager$ForEachAlbumFromArtistTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/android/music/OfflineMusicManager$ForEachAlbumFromArtistTask;-><init>(Lcom/google/android/music/OfflineMusicManager;JZ)V

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->runAsyncWithCallback(Lcom/google/android/music/utils/async/AsyncRunner;)V

    .line 427
    return-void
.end method

.method public deselectPlaylist(J)V
    .registers 5
    .parameter "id"

    .prologue
    .line 507
    invoke-direct {p0}, Lcom/google/android/music/OfflineMusicManager;->checkActive()V

    .line 508
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mSelectedPlaylists:Ljava/util/TreeSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 509
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mDeselectedPlaylists:Ljava/util/TreeSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 511
    :cond_18
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/music/OfflineMusicManager;->submitUpdateFreespaceTask(JIZ)V

    .line 512
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/music/OfflineMusicManager;->notifyPlaylistChangedListeners(Ljava/util/List;)V

    .line 513
    return-void
.end method

.method public isAlbumSelected(JJ)Ljava/lang/Boolean;
    .registers 8
    .parameter "albumId"
    .parameter "artistId"

    .prologue
    .line 481
    iget-object v1, p0, Lcom/google/android/music/OfflineMusicManager;->mArtistLock:Ljava/lang/Object;

    monitor-enter v1

    .line 482
    :try_start_3
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mSelectedArtists:Ljava/util/TreeSet;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 483
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    monitor-exit v1

    .line 493
    :goto_15
    return-object v0

    .line 485
    :cond_16
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_30

    .line 487
    iget-object v1, p0, Lcom/google/android/music/OfflineMusicManager;->mAlbumLock:Ljava/lang/Object;

    monitor-enter v1

    .line 488
    :try_start_1a
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mSelectedAlbums:Ljava/util/TreeSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 489
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    monitor-exit v1

    goto :goto_15

    .line 495
    :catchall_2d
    move-exception v0

    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_1a .. :try_end_2f} :catchall_2d

    throw v0

    .line 485
    :catchall_30
    move-exception v0

    :try_start_31
    monitor-exit v1
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw v0

    .line 490
    :cond_33
    :try_start_33
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mDeselectedAlbums:Ljava/util/TreeSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 491
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    monitor-exit v1

    goto :goto_15

    .line 493
    :cond_46
    const/4 v0, 0x0

    monitor-exit v1
    :try_end_48
    .catchall {:try_start_33 .. :try_end_48} :catchall_2d

    goto :goto_15
.end method

.method public isAnyChangeMade()Z
    .registers 4

    .prologue
    .line 557
    const/4 v0, 0x0

    .line 559
    .local v0, totalChanges:I
    iget-object v1, p0, Lcom/google/android/music/OfflineMusicManager;->mDeselectedArtists:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->size()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/music/OfflineMusicManager;->mDeselectedAlbums:Ljava/util/TreeSet;

    invoke-virtual {v2}, Ljava/util/TreeSet;->size()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/google/android/music/OfflineMusicManager;->mDeselectedPlaylists:Ljava/util/TreeSet;

    invoke-virtual {v2}, Ljava/util/TreeSet;->size()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 562
    iget-object v1, p0, Lcom/google/android/music/OfflineMusicManager;->mSelectedArtists:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->size()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/music/OfflineMusicManager;->mSelectedAlbums:Ljava/util/TreeSet;

    invoke-virtual {v2}, Ljava/util/TreeSet;->size()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/google/android/music/OfflineMusicManager;->mSelectedPlaylists:Ljava/util/TreeSet;

    invoke-virtual {v2}, Ljava/util/TreeSet;->size()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 565
    if-lez v0, :cond_2f

    const/4 v1, 0x1

    :goto_2e
    return v1

    :cond_2f
    const/4 v1, 0x0

    goto :goto_2e
.end method

.method public isArtistSelected(J)Ljava/lang/Boolean;
    .registers 6
    .parameter "id"

    .prologue
    .line 430
    iget-object v1, p0, Lcom/google/android/music/OfflineMusicManager;->mArtistLock:Ljava/lang/Object;

    monitor-enter v1

    .line 431
    :try_start_3
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mDeselectedArtists:Ljava/util/TreeSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 432
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    monitor-exit v1

    .line 436
    :goto_15
    return-object v0

    .line 433
    :cond_16
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mSelectedArtists:Ljava/util/TreeSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 434
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    monitor-exit v1

    goto :goto_15

    .line 438
    :catchall_29
    move-exception v0

    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    throw v0

    .line 436
    :cond_2c
    const/4 v0, 0x0

    :try_start_2d
    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_29

    goto :goto_15
.end method

.method public isOutOfSpace()Z
    .registers 7

    .prologue
    .line 658
    iget-object v1, p0, Lcom/google/android/music/OfflineMusicManager;->mSpaceVariablesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 659
    :try_start_3
    iget-wide v2, p0, Lcom/google/android/music/OfflineMusicManager;->mFreeSpace:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_e

    const/4 v0, 0x1

    :goto_c
    monitor-exit v1

    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_c

    .line 660
    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public isPlaylistSelected(J)Ljava/lang/Boolean;
    .registers 5
    .parameter "id"

    .prologue
    .line 516
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mDeselectedPlaylists:Ljava/util/TreeSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 517
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 521
    :goto_11
    return-object v0

    .line 518
    :cond_12
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mSelectedPlaylists:Ljava/util/TreeSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 519
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_11

    .line 521
    :cond_24
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .parameter "name"
    .parameter "service"

    .prologue
    .line 386
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/OfflineMusicManager;->mDLManagerConnected:Z

    .line 387
    invoke-static {p2}, Lcom/google/android/music/dl/IDownloadManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/music/dl/IDownloadManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mDownloadManager:Lcom/google/android/music/dl/IDownloadManager;

    .line 388
    new-instance v0, Lcom/google/android/music/OfflineMusicManager$GetFreeSpaceTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/music/OfflineMusicManager$GetFreeSpaceTask;-><init>(Lcom/google/android/music/OfflineMusicManager;Lcom/google/android/music/OfflineMusicManager$1;)V

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->runAsyncWithCallback(Lcom/google/android/music/utils/async/AsyncRunner;)V

    .line 389
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3
    .parameter "name"

    .prologue
    .line 392
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/OfflineMusicManager;->mDLManagerConnected:Z

    .line 393
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mDownloadManager:Lcom/google/android/music/dl/IDownloadManager;

    .line 394
    return-void
.end method

.method public registerAlbumChangeListener(Lcom/google/android/music/OfflineMusicManager$AlbumChangedListener;)V
    .registers 5
    .parameter "listener"

    .prologue
    .line 582
    iget-object v1, p0, Lcom/google/android/music/OfflineMusicManager;->mAlbumListeners:Ljava/util/LinkedList;

    monitor-enter v1

    .line 583
    :try_start_3
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mAlbumListeners:Ljava/util/LinkedList;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 584
    monitor-exit v1

    .line 585
    return-void

    .line 584
    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public registerArtistChangeListener(Lcom/google/android/music/OfflineMusicManager$ArtistChangedListener;)V
    .registers 5
    .parameter "listener"

    .prologue
    .line 607
    iget-object v1, p0, Lcom/google/android/music/OfflineMusicManager;->mArtistListeners:Ljava/util/LinkedList;

    monitor-enter v1

    .line 608
    :try_start_3
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mArtistListeners:Ljava/util/LinkedList;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 609
    monitor-exit v1

    .line 610
    return-void

    .line 609
    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public removeAvailableSpaceChangedListener(Lcom/google/android/music/OfflineMusicManager$AvailableSpaceChangedListener;)V
    .registers 6
    .parameter "listener"

    .prologue
    .line 803
    iget-object v3, p0, Lcom/google/android/music/OfflineMusicManager;->mListeners:Ljava/util/LinkedList;

    monitor-enter v3

    .line 804
    :try_start_3
    iget-object v2, p0, Lcom/google/android/music/OfflineMusicManager;->mListeners:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 805
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/google/android/music/OfflineMusicManager$AvailableSpaceChangedListener;>;>;"
    :cond_9
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 806
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/OfflineMusicManager$AvailableSpaceChangedListener;

    .line 807
    .local v1, possibleRemove:Lcom/google/android/music/OfflineMusicManager$AvailableSpaceChangedListener;
    if-nez v1, :cond_24

    .line 808
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_9

    .line 814
    .end local v0           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/google/android/music/OfflineMusicManager$AvailableSpaceChangedListener;>;>;"
    .end local v1           #possibleRemove:Lcom/google/android/music/OfflineMusicManager$AvailableSpaceChangedListener;
    :catchall_21
    move-exception v2

    monitor-exit v3
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v2

    .line 809
    .restart local v0       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/google/android/music/OfflineMusicManager$AvailableSpaceChangedListener;>;>;"
    .restart local v1       #possibleRemove:Lcom/google/android/music/OfflineMusicManager$AvailableSpaceChangedListener;
    :cond_24
    if-ne v1, p1, :cond_9

    .line 810
    :try_start_26
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 811
    monitor-exit v3

    .line 815
    .end local v1           #possibleRemove:Lcom/google/android/music/OfflineMusicManager$AvailableSpaceChangedListener;
    :goto_2a
    return-void

    .line 814
    :cond_2b
    monitor-exit v3
    :try_end_2c
    .catchall {:try_start_26 .. :try_end_2c} :catchall_21

    goto :goto_2a
.end method

.method public selectAlbum(J)V
    .registers 5
    .parameter "albumId"

    .prologue
    .line 442
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/android/music/OfflineMusicManager;->selectAlbum(JJ)V

    .line 443
    return-void
.end method

.method public selectAlbum(JJ)V
    .registers 5
    .parameter "albumId"
    .parameter "artistId"

    .prologue
    .line 447
    invoke-direct {p0}, Lcom/google/android/music/OfflineMusicManager;->checkActive()V

    .line 448
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/OfflineMusicManager;->markAlbumAndNotify(J)V

    .line 462
    return-void
.end method

.method public selectArtist(J)V
    .registers 5
    .parameter "id"

    .prologue
    .line 404
    invoke-direct {p0}, Lcom/google/android/music/OfflineMusicManager;->checkActive()V

    .line 406
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/OfflineMusicManager;->markArtist(J)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 407
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/music/OfflineMusicManager;->notifyArtistChangedListeners(Ljava/util/List;)V

    .line 413
    :cond_14
    new-instance v0, Lcom/google/android/music/OfflineMusicManager$ForEachAlbumFromArtistTask;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/android/music/OfflineMusicManager$ForEachAlbumFromArtistTask;-><init>(Lcom/google/android/music/OfflineMusicManager;JZ)V

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->runAsyncWithCallback(Lcom/google/android/music/utils/async/AsyncRunner;)V

    .line 414
    return-void
.end method

.method public selectPlaylist(J)V
    .registers 5
    .parameter "id"

    .prologue
    .line 500
    invoke-direct {p0}, Lcom/google/android/music/OfflineMusicManager;->checkActive()V

    .line 501
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mSelectedPlaylists:Ljava/util/TreeSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 502
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/music/OfflineMusicManager;->submitUpdateFreespaceTask(JIZ)V

    .line 503
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/music/OfflineMusicManager;->notifyPlaylistChangedListeners(Ljava/util/List;)V

    .line 504
    return-void
.end method

.method public unregisterAlbumChangeListener(Lcom/google/android/music/OfflineMusicManager$AlbumChangedListener;)V
    .registers 6
    .parameter "listener"

    .prologue
    .line 592
    iget-object v3, p0, Lcom/google/android/music/OfflineMusicManager;->mAlbumListeners:Ljava/util/LinkedList;

    monitor-enter v3

    .line 593
    :try_start_3
    iget-object v2, p0, Lcom/google/android/music/OfflineMusicManager;->mAlbumListeners:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 594
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/google/android/music/OfflineMusicManager$AlbumChangedListener;>;>;"
    :cond_9
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 595
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/OfflineMusicManager$AlbumChangedListener;

    .line 596
    .local v1, possibleRemove:Lcom/google/android/music/OfflineMusicManager$AlbumChangedListener;
    if-nez v1, :cond_24

    .line 597
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_9

    .line 603
    .end local v0           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/google/android/music/OfflineMusicManager$AlbumChangedListener;>;>;"
    .end local v1           #possibleRemove:Lcom/google/android/music/OfflineMusicManager$AlbumChangedListener;
    :catchall_21
    move-exception v2

    monitor-exit v3
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v2

    .line 598
    .restart local v0       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/google/android/music/OfflineMusicManager$AlbumChangedListener;>;>;"
    .restart local v1       #possibleRemove:Lcom/google/android/music/OfflineMusicManager$AlbumChangedListener;
    :cond_24
    if-ne v1, p1, :cond_9

    .line 599
    :try_start_26
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 600
    monitor-exit v3

    .line 604
    .end local v1           #possibleRemove:Lcom/google/android/music/OfflineMusicManager$AlbumChangedListener;
    :goto_2a
    return-void

    .line 603
    :cond_2b
    monitor-exit v3
    :try_end_2c
    .catchall {:try_start_26 .. :try_end_2c} :catchall_21

    goto :goto_2a
.end method

.method public unregisterArtistChangeListener(Lcom/google/android/music/OfflineMusicManager$ArtistChangedListener;)V
    .registers 6
    .parameter "listener"

    .prologue
    .line 617
    iget-object v3, p0, Lcom/google/android/music/OfflineMusicManager;->mArtistListeners:Ljava/util/LinkedList;

    monitor-enter v3

    .line 618
    :try_start_3
    iget-object v2, p0, Lcom/google/android/music/OfflineMusicManager;->mArtistListeners:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 619
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/google/android/music/OfflineMusicManager$ArtistChangedListener;>;>;"
    :cond_9
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 620
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/OfflineMusicManager$ArtistChangedListener;

    .line 621
    .local v1, possibleRemove:Lcom/google/android/music/OfflineMusicManager$ArtistChangedListener;
    if-nez v1, :cond_24

    .line 622
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_9

    .line 628
    .end local v0           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/google/android/music/OfflineMusicManager$ArtistChangedListener;>;>;"
    .end local v1           #possibleRemove:Lcom/google/android/music/OfflineMusicManager$ArtistChangedListener;
    :catchall_21
    move-exception v2

    monitor-exit v3
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v2

    .line 623
    .restart local v0       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/google/android/music/OfflineMusicManager$ArtistChangedListener;>;>;"
    .restart local v1       #possibleRemove:Lcom/google/android/music/OfflineMusicManager$ArtistChangedListener;
    :cond_24
    if-ne v1, p1, :cond_9

    .line 624
    :try_start_26
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 625
    monitor-exit v3

    .line 629
    .end local v1           #possibleRemove:Lcom/google/android/music/OfflineMusicManager$ArtistChangedListener;
    :goto_2a
    return-void

    .line 628
    :cond_2b
    monitor-exit v3
    :try_end_2c
    .catchall {:try_start_26 .. :try_end_2c} :catchall_21

    goto :goto_2a
.end method
