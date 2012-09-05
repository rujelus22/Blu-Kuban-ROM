.class public Lcom/google/android/music/RecentBrowserActivity;
.super Lcom/google/android/music/activitymanagement/MusicFragment;
.source "RecentBrowserActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Lcom/google/android/music/BottomBarChangeListener;
.implements Lcom/google/android/music/OfflineMusicManager$AlbumChangedListener;
.implements Lcom/google/android/music/OfflineMusicManager$AvailableSpaceChangedListener;
.implements Lcom/google/android/music/OfflineMusicManager$PlaylistChangedListener;
.implements Lcom/google/android/music/activitymanagement/TopLevelActivity$ManageMusicModeListener;
.implements Lcom/google/android/music/menu/MusicMenu$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;,
        Lcom/google/android/music/RecentBrowserActivity$CheckBoxClickListener;
    }
.end annotation


# static fields
.field private static final LOGV:Z

.field private static final mCursorCols:[Ljava/lang/String;

.field private static mLastListPosCourse:I

.field private static mLastListPosFine:I


# instance fields
.field private mAdapter:Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;

.field private mContextMenu:Lcom/google/android/music/menu/MusicPopupMenu;

.field private mIsStreamingEnabled:Z

.field private mListContainer:Landroid/view/View;

.field private mMediaList:Lcom/google/android/music/medialist/RecentItemsList;

.field private mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

.field private mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

.field private mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

.field private mPlaybackServiceConnection:Landroid/content/ServiceConnection;

.field private mPlaybackServiceToken:Lcom/google/android/music/MusicUtils$ServiceToken;

.field private final mPopulateRespresentativeAlbum:Ljava/lang/Runnable;

.field private mRecentCursor:Landroid/database/Cursor;

.field private mRecentList:Landroid/widget/ListView;

.field private volatile mRepresentativeAlbumId:J

.field private mRestorePosition:I

.field private mStreamabilityChangeListener:Lcom/google/android/music/dl/IStreamabilityChangeListener;

.field private mTrackListListener:Landroid/content/BroadcastReceiver;

.field private mUpdateAllOfflineSelectedStatusesRunnable:Ljava/lang/Runnable;

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v1, -0x1

    .line 70
    const-string v0, "RecentBrowserActivity"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/RecentBrowserActivity;->LOGV:Z

    .line 78
    sput v1, Lcom/google/android/music/RecentBrowserActivity;->mLastListPosCourse:I

    .line 79
    sput v1, Lcom/google/android/music/RecentBrowserActivity;->mLastListPosFine:I

    .line 179
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "RecentAlbumId"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "album_name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "album_artist_id"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "album_artist"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "RecentListId"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "list_name"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "ListType"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "hasLocal"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "hasRemote"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "KeepOnId"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/music/RecentBrowserActivity;->mCursorCols:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "base"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/google/android/music/activitymanagement/MusicFragment;-><init>(Landroid/content/Context;)V

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mIsStreamingEnabled:Z

    .line 85
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mRepresentativeAlbumId:J

    .line 87
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mRestorePosition:I

    .line 229
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    .line 258
    new-instance v0, Lcom/google/android/music/RecentBrowserActivity$1;

    invoke-direct {v0, p0}, Lcom/google/android/music/RecentBrowserActivity$1;-><init>(Lcom/google/android/music/RecentBrowserActivity;)V

    iput-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mUpdateAllOfflineSelectedStatusesRunnable:Ljava/lang/Runnable;

    .line 299
    new-instance v0, Lcom/google/android/music/RecentBrowserActivity$2;

    invoke-direct {v0, p0}, Lcom/google/android/music/RecentBrowserActivity$2;-><init>(Lcom/google/android/music/RecentBrowserActivity;)V

    iput-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mPopulateRespresentativeAlbum:Ljava/lang/Runnable;

    .line 327
    new-instance v0, Lcom/google/android/music/RecentBrowserActivity$3;

    invoke-direct {v0, p0}, Lcom/google/android/music/RecentBrowserActivity$3;-><init>(Lcom/google/android/music/RecentBrowserActivity;)V

    iput-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    .line 763
    new-instance v0, Lcom/google/android/music/RecentBrowserActivity$4;

    invoke-direct {v0, p0}, Lcom/google/android/music/RecentBrowserActivity$4;-><init>(Lcom/google/android/music/RecentBrowserActivity;)V

    iput-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mPlaybackServiceConnection:Landroid/content/ServiceConnection;

    .line 774
    new-instance v0, Lcom/google/android/music/RecentBrowserActivity$5;

    invoke-direct {v0, p0}, Lcom/google/android/music/RecentBrowserActivity$5;-><init>(Lcom/google/android/music/RecentBrowserActivity;)V

    iput-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mStreamabilityChangeListener:Lcom/google/android/music/dl/IStreamabilityChangeListener;

    .line 93
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/RecentBrowserActivity;)Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mAdapter:Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/music/RecentBrowserActivity;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/google/android/music/RecentBrowserActivity;->getRecentCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/music/RecentBrowserActivity;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mRepresentativeAlbumId:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/google/android/music/RecentBrowserActivity;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-wide p1, p0, Lcom/google/android/music/RecentBrowserActivity;->mRepresentativeAlbumId:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/google/android/music/RecentBrowserActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/google/android/music/RecentBrowserActivity;->requestReconfig()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/music/RecentBrowserActivity;)Landroid/widget/ListView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mRecentList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/music/RecentBrowserActivity;)Lcom/google/android/music/OfflineMusicManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/music/RecentBrowserActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mIsStreamingEnabled:Z

    return v0
.end method

.method static synthetic access$702(Lcom/google/android/music/RecentBrowserActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/google/android/music/RecentBrowserActivity;->mIsStreamingEnabled:Z

    return p1
.end method

.method static synthetic access$800(Lcom/google/android/music/RecentBrowserActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    iget v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mRestorePosition:I

    return v0
.end method

.method static synthetic access$802(Lcom/google/android/music/RecentBrowserActivity;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput p1, p0, Lcom/google/android/music/RecentBrowserActivity;->mRestorePosition:I

    return p1
.end method

.method static synthetic access$900(Lcom/google/android/music/RecentBrowserActivity;)Landroid/database/Cursor;
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mRecentCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$902(Lcom/google/android/music/RecentBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/google/android/music/RecentBrowserActivity;->mRecentCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method private getRecentCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .registers 4
    .parameter "filter"

    .prologue
    .line 364
    iget-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/RecentItemsList;

    sget-object v1, Lcom/google/android/music/RecentBrowserActivity;->mCursorCols:[Ljava/lang/String;

    invoke-virtual {v0, p0, v1, p1}, Lcom/google/android/music/medialist/RecentItemsList;->getCursor(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/music/medialist/MediaList$MediaCursor;

    move-result-object v0

    return-object v0
.end method

.method private refreshRepresentativeAlbum()V
    .registers 3

    .prologue
    .line 295
    sget-object v0, Lcom/google/android/music/utils/async/AsyncWorkers;->sUIBackgroundWorker:Lcom/google/android/music/Worker;

    iget-object v1, p0, Lcom/google/android/music/RecentBrowserActivity;->mPopulateRespresentativeAlbum:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/google/android/music/utils/async/AsyncWorkers;->runAsync(Lcom/google/android/music/Worker;Ljava/lang/Runnable;)V

    .line 297
    return-void
.end method


# virtual methods
.method public closeContextMusicMenu()V
    .registers 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mContextMenu:Lcom/google/android/music/menu/MusicPopupMenu;

    if-eqz v0, :cond_c

    .line 215
    iget-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mContextMenu:Lcom/google/android/music/menu/MusicPopupMenu;

    invoke-virtual {v0}, Lcom/google/android/music/menu/MusicPopupMenu;->close()V

    .line 216
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mContextMenu:Lcom/google/android/music/menu/MusicPopupMenu;

    .line 218
    :cond_c
    return-void
.end method

.method public getView()Landroid/view/View;
    .registers 2

    .prologue
    .line 801
    iget-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mView:Landroid/view/View;

    return-object v0
.end method

.method public hasCustomMenuOptions()Z
    .registers 2

    .prologue
    .line 807
    const/4 v0, 0x0

    return v0
.end method

.method public init(Landroid/database/Cursor;)V
    .registers 5
    .parameter "c"

    .prologue
    .line 346
    iget-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mAdapter:Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;

    if-nez v0, :cond_5

    .line 361
    :cond_4
    :goto_4
    return-void

    .line 349
    :cond_5
    iget-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mAdapter:Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 351
    iget-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mRecentCursor:Landroid/database/Cursor;

    if-nez v0, :cond_12

    .line 352
    invoke-virtual {p0}, Lcom/google/android/music/RecentBrowserActivity;->closeContextMusicMenu()V

    goto :goto_4

    .line 357
    :cond_12
    sget v0, Lcom/google/android/music/RecentBrowserActivity;->mLastListPosCourse:I

    if-ltz v0, :cond_4

    .line 358
    iget-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mRecentList:Landroid/widget/ListView;

    sget v1, Lcom/google/android/music/RecentBrowserActivity;->mLastListPosCourse:I

    sget v2, Lcom/google/android/music/RecentBrowserActivity;->mLastListPosFine:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 359
    const/4 v0, -0x1

    sput v0, Lcom/google/android/music/RecentBrowserActivity;->mLastListPosCourse:I

    goto :goto_4
.end method

.method public initializeState(Lcom/google/android/music/activitymanagement/MusicState;)V
    .registers 4
    .parameter "state"

    .prologue
    .line 148
    invoke-super {p0, p1}, Lcom/google/android/music/activitymanagement/MusicFragment;->initializeState(Lcom/google/android/music/activitymanagement/MusicState;)V

    .line 149
    invoke-virtual {p1, p0}, Lcom/google/android/music/activitymanagement/MusicState;->getSavedBundle(Lcom/google/android/music/activitymanagement/MusicFragment;)Landroid/os/Bundle;

    move-result-object v0

    .line 150
    .local v0, savedBundle:Landroid/os/Bundle;
    if-eqz v0, :cond_1a

    const-string v1, "savedScrollPos"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 151
    const-string v1, "savedScrollPos"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/music/RecentBrowserActivity;->mRestorePosition:I

    .line 155
    :goto_19
    return-void

    .line 153
    :cond_1a
    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/music/RecentBrowserActivity;->mRestorePosition:I

    goto :goto_19
.end method

.method public onAlbumChanged(Ljava/util/List;)V
    .registers 3
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
    .line 268
    .local p1, albumIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mAdapter:Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;

    if-eqz v0, :cond_9

    .line 269
    iget-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mUpdateAllOfflineSelectedStatusesRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/music/RecentBrowserActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 271
    :cond_9
    return-void
.end method

.method public onAvailableSpaceChanged(JJZ)V
    .registers 7
    .parameter "totalSpace"
    .parameter "freeSpace"
    .parameter "availabilityTransition"

    .prologue
    .line 253
    if-eqz p5, :cond_6

    .line 254
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/music/RecentBrowserActivity;->onAlbumChanged(Ljava/util/List;)V

    .line 256
    :cond_6
    return-void
.end method

.method public onBottomBarChanged()V
    .registers 6

    .prologue
    .line 224
    iget-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mListContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/music/RecentBrowserActivity;->mListContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/music/RecentBrowserActivity;->mListContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/music/RecentBrowserActivity;->mListContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/music/RecentBrowserActivity;->getMusicUIController()Lcom/google/android/music/activitymanagement/MusicUIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/music/activitymanagement/MusicUIController;->getBottomBarHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 227
    return-void
.end method

.method public onCreate()V
    .registers 10

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 98
    invoke-super {p0}, Lcom/google/android/music/activitymanagement/MusicFragment;->onCreate()V

    .line 100
    invoke-static {p0, p0}, Lcom/google/android/music/jumper/MusicPreferences;->getMusicPreferences(Landroid/content/Context;Ljava/lang/Object;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    .line 102
    iget-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v0}, Lcom/google/android/music/jumper/MusicPreferences;->isTabletMusic()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 103
    const-string v0, "RecentBrowserActivity"

    const-string v1, "RecentBrowserActivity called on XLarge screen"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_1a
    iget-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mPlaybackServiceConnection:Landroid/content/ServiceConnection;

    invoke-static {p0, v0}, Lcom/google/android/music/MusicUtils;->bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;)Lcom/google/android/music/MusicUtils$ServiceToken;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mPlaybackServiceToken:Lcom/google/android/music/MusicUtils$ServiceToken;

    .line 108
    const v0, 0x7f040020

    invoke-virtual {p0, v0}, Lcom/google/android/music/RecentBrowserActivity;->inflateView(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mView:Landroid/view/View;

    .line 110
    new-instance v0, Lcom/google/android/music/medialist/RecentItemsList;

    invoke-direct {v0}, Lcom/google/android/music/medialist/RecentItemsList;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/RecentItemsList;

    .line 112
    const v0, 0x7f10006d

    invoke-virtual {p0, v0}, Lcom/google/android/music/RecentBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mListContainer:Landroid/view/View;

    .line 113
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/google/android/music/RecentBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mRecentList:Landroid/widget/ListView;

    .line 114
    iget-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mRecentList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 115
    iget-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mRecentList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 116
    iget-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mRecentList:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 117
    iget-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mRecentList:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 118
    iget-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mRecentList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 120
    invoke-static {}, Lcom/google/android/music/jumper/MusicPreferences;->isICSOrGreater()Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 121
    iget-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mRecentList:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 122
    iget-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mRecentList:Landroid/widget/ListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVerticalScrollbarPosition(I)V

    .line 123
    iget-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mRecentList:Landroid/widget/ListView;

    const/high16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    .line 126
    iget-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mRecentList:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setFastScrollAlwaysVisible(Z)V

    .line 129
    :cond_7c
    new-instance v0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;

    invoke-virtual {p0}, Lcom/google/android/music/RecentBrowserActivity;->getApplication()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f040019

    iget-object v5, p0, Lcom/google/android/music/RecentBrowserActivity;->mRecentCursor:Landroid/database/Cursor;

    new-array v6, v3, [Ljava/lang/String;

    new-array v7, v3, [I

    move-object v1, p0

    move-object v3, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;-><init>(Lcom/google/android/music/RecentBrowserActivity;Landroid/content/Context;Lcom/google/android/music/RecentBrowserActivity;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mAdapter:Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;

    .line 137
    iget-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mRecentList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/google/android/music/RecentBrowserActivity;->mAdapter:Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 138
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/music/RecentBrowserActivity;->getRecentCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 139
    .local v8, c:Landroid/database/Cursor;
    invoke-virtual {p0, v8}, Lcom/google/android/music/RecentBrowserActivity;->init(Landroid/database/Cursor;)V

    .line 141
    new-instance v0, Lcom/google/android/music/NetworkMonitorServiceConnection;

    iget-object v1, p0, Lcom/google/android/music/RecentBrowserActivity;->mStreamabilityChangeListener:Lcom/google/android/music/dl/IStreamabilityChangeListener;

    invoke-direct {v0, v1}, Lcom/google/android/music/NetworkMonitorServiceConnection;-><init>(Lcom/google/android/music/dl/IStreamabilityChangeListener;)V

    iput-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

    .line 143
    iget-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

    invoke-virtual {v0, p0}, Lcom/google/android/music/NetworkMonitorServiceConnection;->bindToService(Landroid/content/Context;)V

    .line 144
    return-void
.end method

.method public onCreateContextMusicMenu(Landroid/view/View;I)V
    .registers 3
    .parameter "view"
    .parameter "position"

    .prologue
    .line 211
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 165
    iget-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mPlaybackServiceToken:Lcom/google/android/music/MusicUtils$ServiceToken;

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->unbindFromService(Lcom/google/android/music/MusicUtils$ServiceToken;)V

    .line 167
    iget-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

    invoke-virtual {v0, p0}, Lcom/google/android/music/NetworkMonitorServiceConnection;->unbindFromService(Landroid/content/Context;)V

    .line 169
    iget-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mAdapter:Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;

    if-eqz v0, :cond_14

    .line 170
    iget-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mAdapter:Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;

    invoke-virtual {v0, v1}, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 172
    :cond_14
    iget-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mRecentList:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 173
    iput-object v1, p0, Lcom/google/android/music/RecentBrowserActivity;->mAdapter:Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;

    .line 174
    invoke-static {p0}, Lcom/google/android/music/jumper/MusicPreferences;->releaseMusicPreferences(Ljava/lang/Object;)V

    .line 176
    invoke-super {p0}, Lcom/google/android/music/activitymanagement/MusicFragment;->onDestroy()V

    .line 177
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 12
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const-wide/16 v4, 0x0

    .line 729
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;

    .line 730
    .local v1, vh:Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;
    if-eqz v1, :cond_3f

    .line 731
    const/4 v0, 0x0

    .line 732
    .local v0, mediaList:Lcom/google/android/music/medialist/MediaList;
    iget-wide v2, v1, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->albumId:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_40

    .line 733
    sget-boolean v2, Lcom/google/android/music/RecentBrowserActivity;->LOGV:Z

    if-eqz v2, :cond_2f

    const-string v2, "RecentBrowserActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "opening album list "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v1, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->albumId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    :cond_2f
    new-instance v0, Lcom/google/android/music/medialist/AlbumSongList;

    .end local v0           #mediaList:Lcom/google/android/music/medialist/MediaList;
    iget-wide v2, v1, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->albumId:J

    invoke-direct {v0, v2, v3}, Lcom/google/android/music/medialist/AlbumSongList;-><init>(J)V

    .line 739
    .restart local v0       #mediaList:Lcom/google/android/music/medialist/MediaList;
    :cond_36
    :goto_36
    if-eqz v0, :cond_3f

    .line 740
    invoke-virtual {p0}, Lcom/google/android/music/RecentBrowserActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/music/activitymanagement/MusicStateController;->startTrackListing(Lcom/google/android/music/medialist/MediaList;)V

    .line 743
    .end local v0           #mediaList:Lcom/google/android/music/medialist/MediaList;
    :cond_3f
    return-void

    .line 735
    .restart local v0       #mediaList:Lcom/google/android/music/medialist/MediaList;
    :cond_40
    iget-wide v2, v1, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->playlistId:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_36

    .line 736
    sget-boolean v2, Lcom/google/android/music/RecentBrowserActivity;->LOGV:Z

    if-eqz v2, :cond_64

    const-string v2, "RecentBrowserActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "opening playlist "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v1, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->playlistId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    :cond_64
    new-instance v0, Lcom/google/android/music/medialist/PlaylistSongList;

    .end local v0           #mediaList:Lcom/google/android/music/medialist/MediaList;
    iget-wide v2, v1, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->playlistId:J

    iget-object v4, v1, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->playlistName:Ljava/lang/String;

    iget v5, v1, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->playlistType:I

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/music/medialist/PlaylistSongList;-><init>(JLjava/lang/String;I)V

    .restart local v0       #mediaList:Lcom/google/android/music/medialist/MediaList;
    goto :goto_36
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .registers 7
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 205
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0, p2, p3}, Lcom/google/android/music/RecentBrowserActivity;->onCreateContextMusicMenu(Landroid/view/View;I)V

    .line 206
    const/4 v0, 0x1

    return v0
.end method

.method public onLayoutConfig(Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;)V
    .registers 6
    .parameter "layoutConfig"

    .prologue
    .line 282
    sget-object v0, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;->MUSIC:Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;

    invoke-virtual {p1, v0}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->setNoMusicView(Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;)V

    .line 283
    iget-wide v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mRepresentativeAlbumId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_12

    .line 284
    iget-wide v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mRepresentativeAlbumId:J

    invoke-virtual {p1, v0, v1}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->setFocusedAlbumId(J)V

    .line 286
    :cond_12
    return-void
.end method

.method public onManageMusicModeChanged(ZLcom/google/android/music/OfflineMusicManager;)V
    .registers 4
    .parameter "inManageMusicMode"
    .parameter "musicManager"

    .prologue
    .line 232
    iget-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    if-eq v0, p2, :cond_20

    .line 233
    iget-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    if-eqz v0, :cond_12

    .line 234
    iget-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    invoke-virtual {v0, p0}, Lcom/google/android/music/OfflineMusicManager;->unregisterAlbumChangeListener(Lcom/google/android/music/OfflineMusicManager$AlbumChangedListener;)V

    .line 235
    iget-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    invoke-virtual {v0, p0}, Lcom/google/android/music/OfflineMusicManager;->removeAvailableSpaceChangedListener(Lcom/google/android/music/OfflineMusicManager$AvailableSpaceChangedListener;)V

    .line 238
    :cond_12
    iput-object p2, p0, Lcom/google/android/music/RecentBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    .line 240
    if-eqz p1, :cond_20

    .line 241
    iget-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    invoke-virtual {v0, p0}, Lcom/google/android/music/OfflineMusicManager;->registerAlbumChangeListener(Lcom/google/android/music/OfflineMusicManager$AlbumChangedListener;)V

    .line 242
    iget-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    invoke-virtual {v0, p0}, Lcom/google/android/music/OfflineMusicManager;->addAvailableSpaceChangeListener(Lcom/google/android/music/OfflineMusicManager$AvailableSpaceChangedListener;)V

    .line 246
    :cond_20
    iget-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mAdapter:Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;

    if-eqz v0, :cond_29

    .line 247
    iget-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mAdapter:Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;

    invoke-virtual {v0}, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->notifyDataSetChanged()V

    .line 249
    :cond_29
    return-void
.end method

.method public onMenuItemSelected(Lcom/google/android/music/menu/MusicMenuItem;)Z
    .registers 5
    .parameter "item"

    .prologue
    .line 758
    sget-boolean v0, Lcom/google/android/music/RecentBrowserActivity;->LOGV:Z

    if-eqz v0, :cond_1c

    const-string v0, "RecentBrowserActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMenuItemSelected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method public onMusicMenuItemSelected(Lcom/google/android/music/menu/MusicMenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 746
    invoke-virtual {p0, p1}, Lcom/google/android/music/RecentBrowserActivity;->onMenuItemSelected(Lcom/google/android/music/menu/MusicMenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 337
    iget-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/google/android/music/RecentBrowserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 339
    invoke-virtual {p0}, Lcom/google/android/music/RecentBrowserActivity;->getMusicUIController()Lcom/google/android/music/activitymanagement/MusicUIController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/music/activitymanagement/MusicUIController;->unregisterBottomBarChangeListener(Lcom/google/android/music/BottomBarChangeListener;)V

    .line 340
    invoke-virtual {p0}, Lcom/google/android/music/RecentBrowserActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/music/activitymanagement/MusicStateController;->unregisterManageMusicModeListener(Lcom/google/android/music/activitymanagement/TopLevelActivity$ManageMusicModeListener;)V

    .line 342
    invoke-super {p0}, Lcom/google/android/music/activitymanagement/MusicFragment;->onPause()V

    .line 343
    return-void
.end method

.method public onPlaylistChanged(Ljava/util/List;)V
    .registers 3
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
    .line 275
    .local p1, playlistIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mAdapter:Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;

    if-eqz v0, :cond_9

    .line 276
    iget-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mUpdateAllOfflineSelectedStatusesRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/music/RecentBrowserActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 278
    :cond_9
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 315
    invoke-super {p0}, Lcom/google/android/music/activitymanagement/MusicFragment;->onResume()V

    .line 316
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 317
    .local v0, f:Landroid/content/IntentFilter;
    const-string v1, "com.android.music.playstatechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 318
    const-string v1, "com.android.music.metachanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 319
    const-string v1, "com.android.music.queuechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 320
    iget-object v1, p0, Lcom/google/android/music/RecentBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/music/RecentBrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 321
    iget-object v1, p0, Lcom/google/android/music/RecentBrowserActivity;->mRecentList:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->invalidateViews()V

    .line 323
    invoke-virtual {p0}, Lcom/google/android/music/RecentBrowserActivity;->getMusicUIController()Lcom/google/android/music/activitymanagement/MusicUIController;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/android/music/activitymanagement/MusicUIController;->registerBottomBarChangeListener(Lcom/google/android/music/BottomBarChangeListener;)V

    .line 324
    invoke-virtual {p0}, Lcom/google/android/music/RecentBrowserActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/android/music/activitymanagement/MusicStateController;->registerManageMusicModeListener(Lcom/google/android/music/activitymanagement/TopLevelActivity$ManageMusicModeListener;)V

    .line 325
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 159
    invoke-super {p0, p1}, Lcom/google/android/music/activitymanagement/MusicFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 160
    const-string v0, "savedScrollPos"

    iget-object v1, p0, Lcom/google/android/music/RecentBrowserActivity;->mRecentList:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 161
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 5
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 791
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 3
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 794
    if-nez p2, :cond_5

    .line 795
    invoke-direct {p0}, Lcom/google/android/music/RecentBrowserActivity;->refreshRepresentativeAlbum()V

    .line 797
    :cond_5
    return-void
.end method
