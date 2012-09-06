.class public Lcom/google/android/music/OfflineMusicManager;
.super Ljava/lang/Object;
.source "OfflineMusicManager.java"


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

.field private mDLManagerBound:Z

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

.field private volatile mDownloadManager:Lcom/google/android/music/dl/IDownloadManager;

.field private mDownloadManagerSafeConnection:Lcom/google/android/music/utils/SafeServiceConnection;

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

.field private mStoreSafeConnection:Lcom/google/android/music/utils/SafeServiceConnection;

.field private mStoreService:Lcom/google/android/music/store/IStoreService;

.field private mStoreServiceBound:Z

.field private mTotalSpace:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 339
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/music/OfflineMusicManager;-><init>(Landroid/content/Context;Lcom/google/android/music/activitymanagement/MusicStateController;)V

    .line 340
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/music/activitymanagement/MusicStateController;)V
    .registers 8
    .parameter "context"
    .parameter "appController"

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 342
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
    iput-boolean v2, p0, Lcom/google/android/music/OfflineMusicManager;->mIsActive:Z

    .line 91
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mSpaceVariablesLock:Ljava/lang/Object;

    .line 92
    iput-wide v3, p0, Lcom/google/android/music/OfflineMusicManager;->mTotalSpace:J

    .line 97
    iput-wide v3, p0, Lcom/google/android/music/OfflineMusicManager;->mFreeSpace:J

    .line 99
    iput-boolean v2, p0, Lcom/google/android/music/OfflineMusicManager;->mAvailabilityTransition:Z

    .line 101
    iput-boolean v1, p0, Lcom/google/android/music/OfflineMusicManager;->mDLManagerBound:Z

    .line 102
    iput-boolean v1, p0, Lcom/google/android/music/OfflineMusicManager;->mStoreServiceBound:Z

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

    iput-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mStoreSafeConnection:Lcom/google/android/music/utils/SafeServiceConnection;

    .line 305
    new-instance v0, Lcom/google/android/music/OfflineMusicManager$2;

    invoke-direct {v0, p0}, Lcom/google/android/music/OfflineMusicManager$2;-><init>(Lcom/google/android/music/OfflineMusicManager;)V

    iput-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mDownloadManagerSafeConnection:Lcom/google/android/music/utils/SafeServiceConnection;

    .line 811
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mListeners:Ljava/util/LinkedList;

    .line 344
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mContext:Landroid/content/Context;

    .line 346
    iput-object p2, p0, Lcom/google/android/music/OfflineMusicManager;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    .line 348
    invoke-direct {p0}, Lcom/google/android/music/OfflineMusicManager;->bindToServices()V

    .line 349
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

.method static synthetic access$1000(Lcom/google/android/music/OfflineMusicManager;)Lcom/google/android/music/utils/SafeServiceConnection;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mStoreSafeConnection:Lcom/google/android/music/utils/SafeServiceConnection;

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

.method static synthetic access$1100(Lcom/google/android/music/OfflineMusicManager;)Lcom/google/android/music/dl/IDownloadManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mDownloadManager:Lcom/google/android/music/dl/IDownloadManager;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/google/android/music/OfflineMusicManager;Lcom/google/android/music/dl/IDownloadManager;)Lcom/google/android/music/dl/IDownloadManager;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/google/android/music/OfflineMusicManager;->mDownloadManager:Lcom/google/android/music/dl/IDownloadManager;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/google/android/music/OfflineMusicManager;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/google/android/music/OfflineMusicManager;->unbindFromServices()V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/android/music/OfflineMusicManager;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/google/android/music/OfflineMusicManager;)Ljava/util/TreeSet;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mDeselectedArtists:Ljava/util/TreeSet;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/google/android/music/OfflineMusicManager;)Ljava/util/TreeSet;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mDeselectedAlbums:Ljava/util/TreeSet;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/google/android/music/OfflineMusicManager;)Ljava/util/TreeSet;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mDeselectedPlaylists:Ljava/util/TreeSet;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/google/android/music/OfflineMusicManager;)Ljava/util/TreeSet;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mSelectedArtists:Ljava/util/TreeSet;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/google/android/music/OfflineMusicManager;)Ljava/util/TreeSet;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mSelectedAlbums:Ljava/util/TreeSet;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/google/android/music/OfflineMusicManager;)Ljava/util/TreeSet;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mSelectedPlaylists:Ljava/util/TreeSet;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/google/android/music/OfflineMusicManager;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mSpaceVariablesLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/google/android/music/OfflineMusicManager;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-wide p1, p0, Lcom/google/android/music/OfflineMusicManager;->mTotalSpace:J

    return-wide p1
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
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 369
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mDownloadManagerSafeConnection:Lcom/google/android/music/utils/SafeServiceConnection;

    iget-object v1, p0, Lcom/google/android/music/OfflineMusicManager;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/google/android/music/OfflineMusicManager;->mContext:Landroid/content/Context;

    const-class v4, Lcom/google/android/music/dl/DownloadManager$DownloadManagerService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/music/utils/SafeServiceConnection;->bindServiceOrFail(Landroid/content/Context;Landroid/content/Intent;I)V

    .line 371
    iput-boolean v5, p0, Lcom/google/android/music/OfflineMusicManager;->mDLManagerBound:Z

    .line 372
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mStoreSafeConnection:Lcom/google/android/music/utils/SafeServiceConnection;

    iget-object v1, p0, Lcom/google/android/music/OfflineMusicManager;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.google.android.music.STORE_SERVICE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v5}, Lcom/google/android/music/utils/SafeServiceConnection;->bindServiceOrFail(Landroid/content/Context;Landroid/content/Intent;I)V

    .line 374
    iput-boolean v5, p0, Lcom/google/android/music/OfflineMusicManager;->mStoreServiceBound:Z

    .line 375
    return-void
.end method

.method private checkActive()V
    .registers 3

    .prologue
    .line 408
    iget-boolean v0, p0, Lcom/google/android/music/OfflineMusicManager;->mIsActive:Z

    if-nez v0, :cond_c

    .line 409
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can not make changes once a session is committed or cancelled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 412
    :cond_c
    return-void
.end method

.method private clearAlbum(J)Z
    .registers 6
    .parameter "albumId"

    .prologue
    .line 987
    iget-object v1, p0, Lcom/google/android/music/OfflineMusicManager;->mAlbumLock:Ljava/lang/Object;

    monitor-enter v1

    .line 988
    :try_start_3
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mSelectedAlbums:Ljava/util/TreeSet;

    iget-object v2, p0, Lcom/google/android/music/OfflineMusicManager;->mDeselectedAlbums:Ljava/util/TreeSet;

    invoke-direct {p0, p1, p2, v0, v2}, Lcom/google/android/music/OfflineMusicManager;->moveIdFromTo(JLjava/util/TreeSet;Ljava/util/TreeSet;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 989
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
    .line 997
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/OfflineMusicManager;->clearAlbum(J)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 998
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/music/OfflineMusicManager;->notifyAlbumChangedListeners(Ljava/util/List;)V

    .line 999
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/music/OfflineMusicManager;->submitUpdateFreespaceTask(JIZ)V

    .line 1001
    :cond_16
    return-void
.end method

.method private clearAllChangeListeners()V
    .registers 3

    .prologue
    .line 883
    iget-object v1, p0, Lcom/google/android/music/OfflineMusicManager;->mAlbumListeners:Ljava/util/LinkedList;

    monitor-enter v1

    .line 884
    :try_start_3
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mAlbumListeners:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 885
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_1c

    .line 886
    iget-object v1, p0, Lcom/google/android/music/OfflineMusicManager;->mArtistListeners:Ljava/util/LinkedList;

    monitor-enter v1

    .line 887
    :try_start_c
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mArtistListeners:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 888
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_1f

    .line 890
    iget-object v1, p0, Lcom/google/android/music/OfflineMusicManager;->mPlaylistListeners:Ljava/util/LinkedList;

    monitor-enter v1

    .line 891
    :try_start_15
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mPlaylistListeners:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 892
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_15 .. :try_end_1b} :catchall_22

    .line 893
    return-void

    .line 885
    :catchall_1c
    move-exception v0

    :try_start_1d
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v0

    .line 888
    :catchall_1f
    move-exception v0

    :try_start_20
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v0

    .line 892
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
    .line 952
    iget-object v1, p0, Lcom/google/android/music/OfflineMusicManager;->mArtistLock:Ljava/lang/Object;

    monitor-enter v1

    .line 953
    :try_start_3
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mSelectedArtists:Ljava/util/TreeSet;

    iget-object v2, p0, Lcom/google/android/music/OfflineMusicManager;->mDeselectedArtists:Ljava/util/TreeSet;

    invoke-direct {p0, p1, p2, v0, v2}, Lcom/google/android/music/OfflineMusicManager;->moveIdFromTo(JLjava/util/TreeSet;Ljava/util/TreeSet;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 954
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
    .line 1035
    const/4 v4, 0x0

    .line 1036
    .local v4, changed:Z
    invoke-direct {p0}, Lcom/google/android/music/OfflineMusicManager;->waitForStoreConnection()V

    .line 1038
    :try_start_4
    iget-object v8, p0, Lcom/google/android/music/OfflineMusicManager;->mStoreService:Lcom/google/android/music/store/IStoreService;

    invoke-interface {v8, p1, p2}, Lcom/google/android/music/store/IStoreService;->getArtistIdsForAlbum(J)[J

    move-result-object v3

    .line 1039
    .local v3, artists:[J
    if-eqz v3, :cond_3e

    .line 1040
    move-object v0, v3

    .local v0, arr$:[J
    array-length v7, v0

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_f
    if-ge v6, v7, :cond_3e

    aget-wide v1, v0, v6

    .line 1041
    .local v1, artistId:J
    cmp-long v8, v1, p3

    if-nez v8, :cond_1a

    .line 1040
    :cond_17
    :goto_17
    add-int/lit8 v6, v6, 0x1

    goto :goto_f

    .line 1044
    :cond_1a
    invoke-direct {p0, v1, v2}, Lcom/google/android/music/OfflineMusicManager;->clearArtist(J)Z
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_1d} :catch_24

    move-result v8

    if-eqz v8, :cond_17

    if-nez v4, :cond_17

    .line 1045
    const/4 v4, 0x1

    goto :goto_17

    .line 1049
    .end local v0           #arr$:[J
    .end local v1           #artistId:J
    .end local v3           #artists:[J
    .end local v6           #i$:I
    .end local v7           #len$:I
    :catch_24
    move-exception v5

    .line 1050
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

    .line 1053
    .end local v5           #e:Landroid/os/RemoteException;
    .restart local v3       #artists:[J
    :cond_3e
    return v4
.end method

.method private isAvailableSpaceInitialized()Z
    .registers 7

    .prologue
    const-wide/16 v4, 0x0

    .line 708
    iget-object v1, p0, Lcom/google/android/music/OfflineMusicManager;->mSpaceVariablesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 709
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

    .line 710
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
    .line 964
    iget-object v1, p0, Lcom/google/android/music/OfflineMusicManager;->mAlbumLock:Ljava/lang/Object;

    monitor-enter v1

    .line 965
    :try_start_3
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mDeselectedAlbums:Ljava/util/TreeSet;

    iget-object v2, p0, Lcom/google/android/music/OfflineMusicManager;->mSelectedAlbums:Ljava/util/TreeSet;

    invoke-direct {p0, p1, p2, v0, v2}, Lcom/google/android/music/OfflineMusicManager;->moveIdFromTo(JLjava/util/TreeSet;Ljava/util/TreeSet;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 966
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

    .line 974
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/OfflineMusicManager;->markAlbum(J)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 975
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/music/OfflineMusicManager;->notifyAlbumChangedListeners(Ljava/util/List;)V

    .line 976
    invoke-direct {p0, p1, p2, v1, v1}, Lcom/google/android/music/OfflineMusicManager;->submitUpdateFreespaceTask(JIZ)V

    .line 978
    :cond_15
    return-void
.end method

.method private markArtist(J)Z
    .registers 6
    .parameter "artistId"

    .prologue
    .line 942
    iget-object v1, p0, Lcom/google/android/music/OfflineMusicManager;->mArtistLock:Ljava/lang/Object;

    monitor-enter v1

    .line 943
    :try_start_3
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mDeselectedArtists:Ljava/util/TreeSet;

    iget-object v2, p0, Lcom/google/android/music/OfflineMusicManager;->mSelectedArtists:Ljava/util/TreeSet;

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
    .line 1006
    .local p3, fromSet:Ljava/util/TreeSet;,"Ljava/util/TreeSet<Ljava/lang/Long;>;"
    .local p4, toSet:Ljava/util/TreeSet;,"Ljava/util/TreeSet<Ljava/lang/Long;>;"
    const/4 v0, 0x0

    .line 1008
    .local v0, insert:Z
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 1009
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 1010
    const/4 v0, 0x1

    .line 1012
    :cond_13
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 1013
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
    .line 896
    .local p1, albumids:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v3, p0, Lcom/google/android/music/OfflineMusicManager;->mAlbumListeners:Ljava/util/LinkedList;

    monitor-enter v3

    .line 897
    :try_start_3
    iget-object v2, p0, Lcom/google/android/music/OfflineMusicManager;->mAlbumListeners:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 898
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/google/android/music/OfflineMusicManager$AlbumChangedListener;>;>;"
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 899
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/OfflineMusicManager$AlbumChangedListener;

    .line 900
    .local v1, listener:Lcom/google/android/music/OfflineMusicManager$AlbumChangedListener;
    if-nez v1, :cond_24

    .line 901
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_9

    .line 906
    .end local v0           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/google/android/music/OfflineMusicManager$AlbumChangedListener;>;>;"
    .end local v1           #listener:Lcom/google/android/music/OfflineMusicManager$AlbumChangedListener;
    :catchall_21
    move-exception v2

    monitor-exit v3
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v2

    .line 903
    .restart local v0       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/google/android/music/OfflineMusicManager$AlbumChangedListener;>;>;"
    .restart local v1       #listener:Lcom/google/android/music/OfflineMusicManager$AlbumChangedListener;
    :cond_24
    :try_start_24
    invoke-interface {v1, p1}, Lcom/google/android/music/OfflineMusicManager$AlbumChangedListener;->onAlbumChanged(Ljava/util/List;)V

    goto :goto_9

    .line 906
    .end local v1           #listener:Lcom/google/android/music/OfflineMusicManager$AlbumChangedListener;
    :cond_28
    monitor-exit v3
    :try_end_29
    .catchall {:try_start_24 .. :try_end_29} :catchall_21

    .line 907
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
    .line 910
    .local p1, artistIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v3, p0, Lcom/google/android/music/OfflineMusicManager;->mArtistListeners:Ljava/util/LinkedList;

    monitor-enter v3

    .line 911
    :try_start_3
    iget-object v2, p0, Lcom/google/android/music/OfflineMusicManager;->mArtistListeners:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 912
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/google/android/music/OfflineMusicManager$ArtistChangedListener;>;>;"
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 913
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/OfflineMusicManager$ArtistChangedListener;

    .line 914
    .local v1, listener:Lcom/google/android/music/OfflineMusicManager$ArtistChangedListener;
    if-nez v1, :cond_24

    .line 915
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_9

    .line 920
    .end local v0           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/google/android/music/OfflineMusicManager$ArtistChangedListener;>;>;"
    .end local v1           #listener:Lcom/google/android/music/OfflineMusicManager$ArtistChangedListener;
    :catchall_21
    move-exception v2

    monitor-exit v3
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v2

    .line 917
    .restart local v0       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/google/android/music/OfflineMusicManager$ArtistChangedListener;>;>;"
    .restart local v1       #listener:Lcom/google/android/music/OfflineMusicManager$ArtistChangedListener;
    :cond_24
    :try_start_24
    invoke-interface {v1, p1}, Lcom/google/android/music/OfflineMusicManager$ArtistChangedListener;->onArtistChanged(Ljava/util/List;)V

    goto :goto_9

    .line 920
    .end local v1           #listener:Lcom/google/android/music/OfflineMusicManager$ArtistChangedListener;
    :cond_28
    monitor-exit v3
    :try_end_29
    .catchall {:try_start_24 .. :try_end_29} :catchall_21

    .line 921
    return-void
.end method

.method private notifyAvailableSpaceChangedListener()V
    .registers 10

    .prologue
    .line 842
    iget-object v8, p0, Lcom/google/android/music/OfflineMusicManager;->mSpaceVariablesLock:Ljava/lang/Object;

    monitor-enter v8

    .line 843
    :try_start_3
    iget-wide v1, p0, Lcom/google/android/music/OfflineMusicManager;->mTotalSpace:J

    .line 844
    .local v1, totalSpace:J
    iget-wide v3, p0, Lcom/google/android/music/OfflineMusicManager;->mFreeSpace:J

    .line 845
    .local v3, freeSpace:J
    iget-boolean v5, p0, Lcom/google/android/music/OfflineMusicManager;->mAvailabilityTransition:Z

    .line 846
    .local v5, transition:Z
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/google/android/music/OfflineMusicManager;->mAvailabilityTransition:Z

    .line 847
    monitor-exit v8
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_31

    .line 848
    iget-object v8, p0, Lcom/google/android/music/OfflineMusicManager;->mListeners:Ljava/util/LinkedList;

    monitor-enter v8

    .line 849
    :try_start_10
    iget-object v7, p0, Lcom/google/android/music/OfflineMusicManager;->mListeners:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 850
    .local v6, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/google/android/music/OfflineMusicManager$AvailableSpaceChangedListener;>;>;"
    :goto_16
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_38

    .line 851
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/OfflineMusicManager$AvailableSpaceChangedListener;

    .line 852
    .local v0, listener:Lcom/google/android/music/OfflineMusicManager$AvailableSpaceChangedListener;
    if-nez v0, :cond_34

    .line 853
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    goto :goto_16

    .line 858
    .end local v0           #listener:Lcom/google/android/music/OfflineMusicManager$AvailableSpaceChangedListener;
    .end local v6           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/google/android/music/OfflineMusicManager$AvailableSpaceChangedListener;>;>;"
    :catchall_2e
    move-exception v7

    monitor-exit v8
    :try_end_30
    .catchall {:try_start_10 .. :try_end_30} :catchall_2e

    throw v7

    .line 847
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

    .line 855
    .restart local v0       #listener:Lcom/google/android/music/OfflineMusicManager$AvailableSpaceChangedListener;
    .restart local v1       #totalSpace:J
    .restart local v3       #freeSpace:J
    .restart local v5       #transition:Z
    .restart local v6       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/google/android/music/OfflineMusicManager$AvailableSpaceChangedListener;>;>;"
    :cond_34
    :try_start_34
    invoke-interface/range {v0 .. v5}, Lcom/google/android/music/OfflineMusicManager$AvailableSpaceChangedListener;->onAvailableSpaceChanged(JJZ)V

    goto :goto_16

    .line 858
    .end local v0           #listener:Lcom/google/android/music/OfflineMusicManager$AvailableSpaceChangedListener;
    :cond_38
    monitor-exit v8
    :try_end_39
    .catchall {:try_start_34 .. :try_end_39} :catchall_2e

    .line 859
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
    .line 924
    .local p1, playlistIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v3, p0, Lcom/google/android/music/OfflineMusicManager;->mPlaylistListeners:Ljava/util/LinkedList;

    monitor-enter v3

    .line 925
    :try_start_3
    iget-object v2, p0, Lcom/google/android/music/OfflineMusicManager;->mPlaylistListeners:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 926
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/google/android/music/OfflineMusicManager$PlaylistChangedListener;>;>;"
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 927
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/OfflineMusicManager$PlaylistChangedListener;

    .line 928
    .local v1, listener:Lcom/google/android/music/OfflineMusicManager$PlaylistChangedListener;
    if-nez v1, :cond_24

    .line 929
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_9

    .line 934
    .end local v0           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/google/android/music/OfflineMusicManager$PlaylistChangedListener;>;>;"
    .end local v1           #listener:Lcom/google/android/music/OfflineMusicManager$PlaylistChangedListener;
    :catchall_21
    move-exception v2

    monitor-exit v3
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v2

    .line 931
    .restart local v0       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/google/android/music/OfflineMusicManager$PlaylistChangedListener;>;>;"
    .restart local v1       #listener:Lcom/google/android/music/OfflineMusicManager$PlaylistChangedListener;
    :cond_24
    :try_start_24
    invoke-interface {v1, p1}, Lcom/google/android/music/OfflineMusicManager$PlaylistChangedListener;->onPlaylistChanged(Ljava/util/List;)V

    goto :goto_9

    .line 934
    .end local v1           #listener:Lcom/google/android/music/OfflineMusicManager$PlaylistChangedListener;
    :cond_28
    monitor-exit v3
    :try_end_29
    .catchall {:try_start_24 .. :try_end_29} :catchall_21

    .line 935
    return-void
.end method

.method private submitUpdateFreespaceTask(JIZ)V
    .registers 7
    .parameter "id"
    .parameter "type"
    .parameter "added"

    .prologue
    .line 682
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 683
    .local v0, ids:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 684
    invoke-direct {p0, v0, p3, p4}, Lcom/google/android/music/OfflineMusicManager;->submitUpdateFreespaceTask(Ljava/util/List;IZ)V

    .line 685
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
    .line 698
    .local p1, ids:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static {}, Lcom/google/android/music/MusicUtils;->assertUiThread()V

    .line 699
    invoke-direct {p0}, Lcom/google/android/music/OfflineMusicManager;->isAvailableSpaceInitialized()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 700
    new-instance v0, Lcom/google/android/music/OfflineMusicManager$UpdateFreespaceTask;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/music/OfflineMusicManager$UpdateFreespaceTask;-><init>(Lcom/google/android/music/OfflineMusicManager;Ljava/util/List;IZ)V

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->runAsyncWithCallback(Lcom/google/android/music/utils/async/AsyncRunner;)V

    .line 702
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
    .line 689
    .local p3, albumIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static {}, Lcom/google/android/music/MusicUtils;->assertUiThread()V

    .line 690
    invoke-direct {p0}, Lcom/google/android/music/OfflineMusicManager;->isAvailableSpaceInitialized()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 691
    new-instance v0, Lcom/google/android/music/OfflineMusicManager$UpdateFreespaceTask;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p3, v1, p4}, Lcom/google/android/music/OfflineMusicManager$UpdateFreespaceTask;-><init>(Lcom/google/android/music/OfflineMusicManager;Ljava/util/List;IZ)V

    .line 693
    .local v0, freespaceTask:Lcom/google/android/music/OfflineMusicManager$UpdateFreespaceTask;
    invoke-virtual {v0, p1, p2}, Lcom/google/android/music/OfflineMusicManager$UpdateFreespaceTask;->markAsFromArtist(J)V

    .line 694
    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->runAsyncWithCallback(Lcom/google/android/music/utils/async/AsyncRunner;)V

    .line 696
    .end local v0           #freespaceTask:Lcom/google/android/music/OfflineMusicManager$UpdateFreespaceTask;
    :cond_15
    return-void
.end method

.method private declared-synchronized unbindFromServices()V
    .registers 3

    .prologue
    .line 378
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/music/OfflineMusicManager;->mDLManagerBound:Z

    if-eqz v0, :cond_f

    .line 380
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/OfflineMusicManager;->mDLManagerBound:Z

    .line 381
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mDownloadManagerSafeConnection:Lcom/google/android/music/utils/SafeServiceConnection;

    iget-object v1, p0, Lcom/google/android/music/OfflineMusicManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/music/utils/SafeServiceConnection;->unbindService(Landroid/content/Context;)V

    .line 384
    :cond_f
    iget-boolean v0, p0, Lcom/google/android/music/OfflineMusicManager;->mStoreServiceBound:Z

    if-eqz v0, :cond_1d

    .line 385
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/OfflineMusicManager;->mStoreServiceBound:Z

    .line 386
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mStoreSafeConnection:Lcom/google/android/music/utils/SafeServiceConnection;

    iget-object v1, p0, Lcom/google/android/music/OfflineMusicManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/music/utils/SafeServiceConnection;->unbindService(Landroid/content/Context;)V
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1f

    .line 388
    :cond_1d
    monitor-exit p0

    return-void

    .line 378
    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private waitForStoreConnection()V
    .registers 5

    .prologue
    .line 391
    iget-object v1, p0, Lcom/google/android/music/OfflineMusicManager;->mStoreSafeConnection:Lcom/google/android/music/utils/SafeServiceConnection;

    monitor-enter v1

    .line 392
    :try_start_3
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mStoreService:Lcom/google/android/music/store/IStoreService;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_1a

    if-nez v0, :cond_1d

    .line 394
    :try_start_7
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mStoreSafeConnection:Lcom/google/android/music/utils/SafeServiceConnection;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_1a
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_e} :catch_1f

    .line 399
    :goto_e
    :try_start_e
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mStoreService:Lcom/google/android/music/store/IStoreService;

    if-nez v0, :cond_1d

    .line 400
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Could not connect to store service"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 404
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

    .line 405
    return-void

    .line 395
    :catch_1f
    move-exception v0

    goto :goto_e
.end method


# virtual methods
.method public addAvailableSpaceChangeListener(Lcom/google/android/music/OfflineMusicManager$AvailableSpaceChangedListener;)V
    .registers 8
    .parameter "listener"

    .prologue
    .line 815
    iget-object v1, p0, Lcom/google/android/music/OfflineMusicManager;->mListeners:Ljava/util/LinkedList;

    monitor-enter v1

    .line 816
    :try_start_3
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mListeners:Ljava/util/LinkedList;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 817
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_1f

    .line 819
    invoke-direct {p0}, Lcom/google/android/music/OfflineMusicManager;->isAvailableSpaceInitialized()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 820
    iget-wide v1, p0, Lcom/google/android/music/OfflineMusicManager;->mTotalSpace:J

    iget-wide v3, p0, Lcom/google/android/music/OfflineMusicManager;->mFreeSpace:J

    iget-boolean v5, p0, Lcom/google/android/music/OfflineMusicManager;->mAvailabilityTransition:Z

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/google/android/music/OfflineMusicManager$AvailableSpaceChangedListener;->onAvailableSpaceChanged(JJZ)V

    .line 822
    :cond_1e
    return-void

    .line 817
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
    .line 540
    invoke-direct {p0}, Lcom/google/android/music/OfflineMusicManager;->checkActive()V

    .line 541
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/OfflineMusicManager;->mIsActive:Z

    .line 543
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    if-eqz v0, :cond_f

    .line 544
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicStateController;->exitManageMusicMode()V

    .line 546
    :cond_f
    invoke-direct {p0}, Lcom/google/android/music/OfflineMusicManager;->clearAllChangeListeners()V

    .line 553
    new-instance v0, Lcom/google/android/music/OfflineMusicManager$3;

    invoke-direct {v0, p0}, Lcom/google/android/music/OfflineMusicManager$3;-><init>(Lcom/google/android/music/OfflineMusicManager;)V

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->runAsync(Ljava/lang/Runnable;)V

    .line 561
    return-void
.end method

.method public deselectAlbum(JJ)V
    .registers 11
    .parameter "albumId"
    .parameter "artistId"

    .prologue
    .line 476
    invoke-direct {p0}, Lcom/google/android/music/OfflineMusicManager;->checkActive()V

    .line 477
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/OfflineMusicManager;->clearAlbumAndNotify(J)V

    .line 481
    invoke-direct {p0, p3, p4}, Lcom/google/android/music/OfflineMusicManager;->clearArtist(J)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 482
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/music/OfflineMusicManager;->notifyArtistChangedListeners(Ljava/util/List;)V

    .line 486
    :cond_17
    new-instance v0, Lcom/google/android/music/OfflineMusicManager$DeselectArtistsOfAlbumTask;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/music/OfflineMusicManager$DeselectArtistsOfAlbumTask;-><init>(Lcom/google/android/music/OfflineMusicManager;JJ)V

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->runAsyncWithCallback(Lcom/google/android/music/utils/async/AsyncRunner;)V

    .line 489
    return-void
.end method

.method public deselectArtist(J)V
    .registers 5
    .parameter "id"

    .prologue
    .line 428
    invoke-direct {p0}, Lcom/google/android/music/OfflineMusicManager;->checkActive()V

    .line 430
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/OfflineMusicManager;->clearArtist(J)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 431
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/music/OfflineMusicManager;->notifyArtistChangedListeners(Ljava/util/List;)V

    .line 437
    :cond_14
    new-instance v0, Lcom/google/android/music/OfflineMusicManager$ForEachAlbumFromArtistTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/android/music/OfflineMusicManager$ForEachAlbumFromArtistTask;-><init>(Lcom/google/android/music/OfflineMusicManager;JZ)V

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->runAsyncWithCallback(Lcom/google/android/music/utils/async/AsyncRunner;)V

    .line 438
    return-void
.end method

.method public deselectPlaylist(J)V
    .registers 5
    .parameter "id"

    .prologue
    .line 518
    invoke-direct {p0}, Lcom/google/android/music/OfflineMusicManager;->checkActive()V

    .line 519
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mSelectedPlaylists:Ljava/util/TreeSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 520
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mDeselectedPlaylists:Ljava/util/TreeSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 522
    :cond_18
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/music/OfflineMusicManager;->submitUpdateFreespaceTask(JIZ)V

    .line 523
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/music/OfflineMusicManager;->notifyPlaylistChangedListeners(Ljava/util/List;)V

    .line 524
    return-void
.end method

.method public isAlbumSelected(JJ)Ljava/lang/Boolean;
    .registers 8
    .parameter "albumId"
    .parameter "artistId"

    .prologue
    .line 492
    iget-object v1, p0, Lcom/google/android/music/OfflineMusicManager;->mArtistLock:Ljava/lang/Object;

    monitor-enter v1

    .line 493
    :try_start_3
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mSelectedArtists:Ljava/util/TreeSet;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 494
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    monitor-exit v1

    .line 504
    :goto_15
    return-object v0

    .line 496
    :cond_16
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_30

    .line 498
    iget-object v1, p0, Lcom/google/android/music/OfflineMusicManager;->mAlbumLock:Ljava/lang/Object;

    monitor-enter v1

    .line 499
    :try_start_1a
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mSelectedAlbums:Ljava/util/TreeSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 500
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    monitor-exit v1

    goto :goto_15

    .line 506
    :catchall_2d
    move-exception v0

    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_1a .. :try_end_2f} :catchall_2d

    throw v0

    .line 496
    :catchall_30
    move-exception v0

    :try_start_31
    monitor-exit v1
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw v0

    .line 501
    :cond_33
    :try_start_33
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mDeselectedAlbums:Ljava/util/TreeSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 502
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    monitor-exit v1

    goto :goto_15

    .line 504
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
    .line 569
    const/4 v0, 0x0

    .line 571
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

    .line 574
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

    .line 577
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
    .line 441
    iget-object v1, p0, Lcom/google/android/music/OfflineMusicManager;->mArtistLock:Ljava/lang/Object;

    monitor-enter v1

    .line 442
    :try_start_3
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mDeselectedArtists:Ljava/util/TreeSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 443
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    monitor-exit v1

    .line 447
    :goto_15
    return-object v0

    .line 444
    :cond_16
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mSelectedArtists:Ljava/util/TreeSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 445
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    monitor-exit v1

    goto :goto_15

    .line 449
    :catchall_29
    move-exception v0

    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    throw v0

    .line 447
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
    .line 676
    iget-object v1, p0, Lcom/google/android/music/OfflineMusicManager;->mSpaceVariablesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 677
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

    .line 678
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
    .line 527
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mDeselectedPlaylists:Ljava/util/TreeSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 528
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 532
    :goto_11
    return-object v0

    .line 529
    :cond_12
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mSelectedPlaylists:Ljava/util/TreeSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 530
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_11

    .line 532
    :cond_24
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 352
    invoke-direct {p0}, Lcom/google/android/music/OfflineMusicManager;->unbindFromServices()V

    .line 353
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    .line 354
    return-void
.end method

.method public prepareToBeSaved()V
    .registers 2

    .prologue
    .line 357
    invoke-direct {p0}, Lcom/google/android/music/OfflineMusicManager;->unbindFromServices()V

    .line 358
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    .line 359
    return-void
.end method

.method public registerAlbumChangeListener(Lcom/google/android/music/OfflineMusicManager$AlbumChangedListener;)V
    .registers 5
    .parameter "listener"

    .prologue
    .line 600
    iget-object v1, p0, Lcom/google/android/music/OfflineMusicManager;->mAlbumListeners:Ljava/util/LinkedList;

    monitor-enter v1

    .line 601
    :try_start_3
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mAlbumListeners:Ljava/util/LinkedList;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 602
    monitor-exit v1

    .line 603
    return-void

    .line 602
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
    .line 625
    iget-object v1, p0, Lcom/google/android/music/OfflineMusicManager;->mArtistListeners:Ljava/util/LinkedList;

    monitor-enter v1

    .line 626
    :try_start_3
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mArtistListeners:Ljava/util/LinkedList;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 627
    monitor-exit v1

    .line 628
    return-void

    .line 627
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
    .line 825
    iget-object v3, p0, Lcom/google/android/music/OfflineMusicManager;->mListeners:Ljava/util/LinkedList;

    monitor-enter v3

    .line 826
    :try_start_3
    iget-object v2, p0, Lcom/google/android/music/OfflineMusicManager;->mListeners:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 827
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/google/android/music/OfflineMusicManager$AvailableSpaceChangedListener;>;>;"
    :cond_9
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 828
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/OfflineMusicManager$AvailableSpaceChangedListener;

    .line 829
    .local v1, possibleRemove:Lcom/google/android/music/OfflineMusicManager$AvailableSpaceChangedListener;
    if-nez v1, :cond_24

    .line 830
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_9

    .line 836
    .end local v0           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/google/android/music/OfflineMusicManager$AvailableSpaceChangedListener;>;>;"
    .end local v1           #possibleRemove:Lcom/google/android/music/OfflineMusicManager$AvailableSpaceChangedListener;
    :catchall_21
    move-exception v2

    monitor-exit v3
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v2

    .line 831
    .restart local v0       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/google/android/music/OfflineMusicManager$AvailableSpaceChangedListener;>;>;"
    .restart local v1       #possibleRemove:Lcom/google/android/music/OfflineMusicManager$AvailableSpaceChangedListener;
    :cond_24
    if-ne v1, p1, :cond_9

    .line 832
    :try_start_26
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 833
    monitor-exit v3

    .line 837
    .end local v1           #possibleRemove:Lcom/google/android/music/OfflineMusicManager$AvailableSpaceChangedListener;
    :goto_2a
    return-void

    .line 836
    :cond_2b
    monitor-exit v3
    :try_end_2c
    .catchall {:try_start_26 .. :try_end_2c} :catchall_21

    goto :goto_2a
.end method

.method public restoreMusicActivityManager(Landroid/content/Context;Lcom/google/android/music/activitymanagement/MusicStateController;)V
    .registers 3
    .parameter "context"
    .parameter "appController"

    .prologue
    .line 363
    iput-object p2, p0, Lcom/google/android/music/OfflineMusicManager;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    .line 364
    iput-object p1, p0, Lcom/google/android/music/OfflineMusicManager;->mContext:Landroid/content/Context;

    .line 365
    invoke-direct {p0}, Lcom/google/android/music/OfflineMusicManager;->bindToServices()V

    .line 366
    return-void
.end method

.method public selectAlbum(J)V
    .registers 5
    .parameter "albumId"

    .prologue
    .line 453
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/android/music/OfflineMusicManager;->selectAlbum(JJ)V

    .line 454
    return-void
.end method

.method public selectAlbum(JJ)V
    .registers 5
    .parameter "albumId"
    .parameter "artistId"

    .prologue
    .line 458
    invoke-direct {p0}, Lcom/google/android/music/OfflineMusicManager;->checkActive()V

    .line 459
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/OfflineMusicManager;->markAlbumAndNotify(J)V

    .line 473
    return-void
.end method

.method public selectArtist(J)V
    .registers 5
    .parameter "id"

    .prologue
    .line 415
    invoke-direct {p0}, Lcom/google/android/music/OfflineMusicManager;->checkActive()V

    .line 417
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/OfflineMusicManager;->markArtist(J)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 418
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/music/OfflineMusicManager;->notifyArtistChangedListeners(Ljava/util/List;)V

    .line 424
    :cond_14
    new-instance v0, Lcom/google/android/music/OfflineMusicManager$ForEachAlbumFromArtistTask;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/android/music/OfflineMusicManager$ForEachAlbumFromArtistTask;-><init>(Lcom/google/android/music/OfflineMusicManager;JZ)V

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->runAsyncWithCallback(Lcom/google/android/music/utils/async/AsyncRunner;)V

    .line 425
    return-void
.end method

.method public selectPlaylist(J)V
    .registers 5
    .parameter "id"

    .prologue
    .line 511
    invoke-direct {p0}, Lcom/google/android/music/OfflineMusicManager;->checkActive()V

    .line 512
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mSelectedPlaylists:Ljava/util/TreeSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 513
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/music/OfflineMusicManager;->submitUpdateFreespaceTask(JIZ)V

    .line 514
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/music/OfflineMusicManager;->notifyPlaylistChangedListeners(Ljava/util/List;)V

    .line 515
    return-void
.end method

.method public unregisterAlbumChangeListener(Lcom/google/android/music/OfflineMusicManager$AlbumChangedListener;)V
    .registers 6
    .parameter "listener"

    .prologue
    .line 610
    iget-object v3, p0, Lcom/google/android/music/OfflineMusicManager;->mAlbumListeners:Ljava/util/LinkedList;

    monitor-enter v3

    .line 611
    :try_start_3
    iget-object v2, p0, Lcom/google/android/music/OfflineMusicManager;->mAlbumListeners:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 612
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/google/android/music/OfflineMusicManager$AlbumChangedListener;>;>;"
    :cond_9
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 613
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/OfflineMusicManager$AlbumChangedListener;

    .line 614
    .local v1, possibleRemove:Lcom/google/android/music/OfflineMusicManager$AlbumChangedListener;
    if-nez v1, :cond_24

    .line 615
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_9

    .line 621
    .end local v0           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/google/android/music/OfflineMusicManager$AlbumChangedListener;>;>;"
    .end local v1           #possibleRemove:Lcom/google/android/music/OfflineMusicManager$AlbumChangedListener;
    :catchall_21
    move-exception v2

    monitor-exit v3
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v2

    .line 616
    .restart local v0       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/google/android/music/OfflineMusicManager$AlbumChangedListener;>;>;"
    .restart local v1       #possibleRemove:Lcom/google/android/music/OfflineMusicManager$AlbumChangedListener;
    :cond_24
    if-ne v1, p1, :cond_9

    .line 617
    :try_start_26
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 618
    monitor-exit v3

    .line 622
    .end local v1           #possibleRemove:Lcom/google/android/music/OfflineMusicManager$AlbumChangedListener;
    :goto_2a
    return-void

    .line 621
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
    .line 635
    iget-object v3, p0, Lcom/google/android/music/OfflineMusicManager;->mArtistListeners:Ljava/util/LinkedList;

    monitor-enter v3

    .line 636
    :try_start_3
    iget-object v2, p0, Lcom/google/android/music/OfflineMusicManager;->mArtistListeners:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 637
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/google/android/music/OfflineMusicManager$ArtistChangedListener;>;>;"
    :cond_9
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 638
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/OfflineMusicManager$ArtistChangedListener;

    .line 639
    .local v1, possibleRemove:Lcom/google/android/music/OfflineMusicManager$ArtistChangedListener;
    if-nez v1, :cond_24

    .line 640
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_9

    .line 646
    .end local v0           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/google/android/music/OfflineMusicManager$ArtistChangedListener;>;>;"
    .end local v1           #possibleRemove:Lcom/google/android/music/OfflineMusicManager$ArtistChangedListener;
    :catchall_21
    move-exception v2

    monitor-exit v3
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v2

    .line 641
    .restart local v0       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/google/android/music/OfflineMusicManager$ArtistChangedListener;>;>;"
    .restart local v1       #possibleRemove:Lcom/google/android/music/OfflineMusicManager$ArtistChangedListener;
    :cond_24
    if-ne v1, p1, :cond_9

    .line 642
    :try_start_26
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 643
    monitor-exit v3

    .line 647
    .end local v1           #possibleRemove:Lcom/google/android/music/OfflineMusicManager$ArtistChangedListener;
    :goto_2a
    return-void

    .line 646
    :cond_2b
    monitor-exit v3
    :try_end_2c
    .catchall {:try_start_26 .. :try_end_2c} :catchall_21

    goto :goto_2a
.end method
