.class public Lcom/google/android/music/PlaylistBrowserActivity;
.super Lcom/google/android/music/activitymanagement/MusicFragment;
.source "PlaylistBrowserActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Lcom/google/android/music/BottomBarChangeListener;
.implements Lcom/google/android/music/OfflineMusicManager$AvailableSpaceChangedListener;
.implements Lcom/google/android/music/OfflineMusicManager$PlaylistChangedListener;
.implements Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicModeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;,
        Lcom/google/android/music/PlaylistBrowserActivity$CheckBoxClickListener;,
        Lcom/google/android/music/PlaylistBrowserActivity$CursorColumns;
    }
.end annotation


# static fields
.field private static final LOGV:Z

.field private static mLastListPosCoarse:I

.field private static mLastListPosFine:I


# instance fields
.field private mAdapter:Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

.field private mCreateShortcut:Z

.field private mHasPlaylists:Z

.field private mIsStreamingEnabled:Z

.field private mList:Landroid/widget/ListView;

.field private mListContainer:Landroid/view/View;

.field private mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

.field private mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

.field private mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

.field private mPlaylistCursor:Landroid/database/Cursor;

.field private mRestoreScrollPos:I

.field private mStreamabilityChangeListener:Lcom/google/android/music/dl/IStreamabilityChangeListener;

.field private mToken:Lcom/google/android/music/MusicUtils$ServiceToken;

.field private mTracker:Lcom/google/android/music/MusicEventLogger;

.field private mUpdateAllOfflineSelectedStatusesRunnable:Ljava/lang/Runnable;

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, -0x1

    .line 66
    const-string v0, "PlaylistBrowserActivity"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/PlaylistBrowserActivity;->LOGV:Z

    .line 71
    sput v1, Lcom/google/android/music/PlaylistBrowserActivity;->mLastListPosCoarse:I

    .line 72
    sput v1, Lcom/google/android/music/PlaylistBrowserActivity;->mLastListPosFine:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 112
    invoke-direct {p0, p1}, Lcom/google/android/music/activitymanagement/MusicFragment;-><init>(Landroid/content/Context;)V

    .line 83
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mRestoreScrollPos:I

    .line 87
    iput-boolean v1, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mHasPlaylists:Z

    .line 91
    iput-boolean v1, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mIsStreamingEnabled:Z

    .line 93
    new-instance v0, Lcom/google/android/music/PlaylistBrowserActivity$1;

    invoke-direct {v0, p0}, Lcom/google/android/music/PlaylistBrowserActivity$1;-><init>(Lcom/google/android/music/PlaylistBrowserActivity;)V

    iput-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mStreamabilityChangeListener:Lcom/google/android/music/dl/IStreamabilityChangeListener;

    .line 275
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    .line 429
    new-instance v0, Lcom/google/android/music/PlaylistBrowserActivity$3;

    invoke-direct {v0, p0}, Lcom/google/android/music/PlaylistBrowserActivity$3;-><init>(Lcom/google/android/music/PlaylistBrowserActivity;)V

    iput-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mUpdateAllOfflineSelectedStatusesRunnable:Ljava/lang/Runnable;

    .line 113
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/PlaylistBrowserActivity;)Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mAdapter:Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/music/PlaylistBrowserActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mIsStreamingEnabled:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/google/android/music/PlaylistBrowserActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/google/android/music/PlaylistBrowserActivity;->requestReconfig()V

    return-void
.end method

.method static synthetic access$102(Lcom/google/android/music/PlaylistBrowserActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mIsStreamingEnabled:Z

    return p1
.end method

.method static synthetic access$200(Lcom/google/android/music/PlaylistBrowserActivity;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/google/android/music/PlaylistBrowserActivity;->getPlaylistCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/music/PlaylistBrowserActivity;)Lcom/google/android/music/jumper/MusicPreferences;
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/music/PlaylistBrowserActivity;)Lcom/google/android/music/OfflineMusicManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/music/PlaylistBrowserActivity;)Landroid/widget/ListView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/music/PlaylistBrowserActivity;)Landroid/database/Cursor;
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$702(Lcom/google/android/music/PlaylistBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$800(Lcom/google/android/music/PlaylistBrowserActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    iget v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mRestoreScrollPos:I

    return v0
.end method

.method static synthetic access$802(Lcom/google/android/music/PlaylistBrowserActivity;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput p1, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mRestoreScrollPos:I

    return p1
.end method

.method static synthetic access$900(Lcom/google/android/music/PlaylistBrowserActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mHasPlaylists:Z

    return v0
.end method

.method static synthetic access$902(Lcom/google/android/music/PlaylistBrowserActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mHasPlaylists:Z

    return p1
.end method

.method private getAutoPlaylistCursor()Landroid/database/Cursor;
    .registers 4

    .prologue
    .line 523
    new-instance v0, Lcom/google/android/music/PlaylistBrowserActivity$4;

    sget-object v1, Lcom/google/android/music/PlaylistBrowserActivity$CursorColumns;->COLUMN_NAMES:[Ljava/lang/String;

    iget-boolean v2, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mCreateShortcut:Z

    invoke-direct {v0, p0, p0, v1, v2}, Lcom/google/android/music/PlaylistBrowserActivity$4;-><init>(Lcom/google/android/music/PlaylistBrowserActivity;Landroid/content/Context;[Ljava/lang/String;Z)V

    return-object v0
.end method

.method private getPlaylistCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .registers 11
    .parameter "filterstring"

    .prologue
    const/4 v5, 0x0

    .line 476
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 478
    .local v8, where:Ljava/lang/StringBuilder;
    if-eqz p1, :cond_14

    .line 479
    const-string v1, "PlaylistBrowserActivity"

    const-string v2, "Filtering is not supported"

    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 482
    :cond_14
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 484
    .local v4, whereclause:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/music/PlaylistBrowserActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/music/activitymanagement/MusicStateController;->getCurrentDisplayMode()Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    move-result-object v1

    sget-object v2, Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;->PLAYLISTS:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    if-ne v1, v2, :cond_35

    const/4 v7, 0x1

    .line 486
    .local v7, isPrimary:Z
    :goto_25
    new-instance v0, Lcom/google/android/music/AsyncCursor;

    sget-object v2, Lcom/google/android/music/store/MusicContent$Playlists;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/google/android/music/PlaylistBrowserActivity$CursorColumns;->COLUMN_NAMES:[Ljava/lang/String;

    move-object v1, p0

    move-object v6, v5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/music/AsyncCursor;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)V

    .line 489
    .local v0, c:Landroid/database/Cursor;
    invoke-direct {p0, v0}, Lcom/google/android/music/PlaylistBrowserActivity;->mergedCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1

    .line 484
    .end local v0           #c:Landroid/database/Cursor;
    .end local v7           #isPrimary:Z
    :cond_35
    const/4 v7, 0x0

    goto :goto_25
.end method

.method private mergedCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .registers 6
    .parameter "c"

    .prologue
    .line 509
    if-nez p1, :cond_4

    .line 510
    const/4 p1, 0x0

    .line 519
    .end local p1
    :goto_3
    return-object p1

    .line 513
    .restart local p1
    :cond_4
    instance-of v0, p1, Landroid/database/MergeCursor;

    if-eqz v0, :cond_10

    .line 515
    const-string v0, "PlaylistBrowserActivity"

    const-string v1, "Already wrapped"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 519
    :cond_10
    new-instance v0, Landroid/database/MergeCursor;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/database/Cursor;

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/google/android/music/PlaylistBrowserActivity;->getAutoPlaylistCursor()Landroid/database/Cursor;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-direct {v0, v1}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    move-object p1, v0

    goto :goto_3
.end method

.method private openPlaylist(JLjava/lang/String;I)V
    .registers 8
    .parameter "id"
    .parameter "name"
    .parameter "playlistType"

    .prologue
    .line 441
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_38

    .line 442
    const-string v0, "PlaylistBrowserActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid playlist id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 447
    :goto_37
    return-void

    .line 446
    :cond_38
    invoke-virtual {p0}, Lcom/google/android/music/PlaylistBrowserActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v0

    new-instance v1, Lcom/google/android/music/medialist/PlaylistSongList;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/google/android/music/medialist/PlaylistSongList;-><init>(JLjava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/google/android/music/activitymanagement/MusicStateController;->startTrackListing(Lcom/google/android/music/medialist/MediaList;)V

    goto :goto_37
.end method


# virtual methods
.method public createContextMusicMenu(Landroid/view/View;I)V
    .registers 22
    .parameter "view"
    .parameter "position"

    .prologue
    .line 353
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/music/PlaylistBrowserActivity;->mCreateShortcut:Z

    if-eqz v1, :cond_7

    .line 381
    :goto_6
    return-void

    .line 357
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/music/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    move/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 358
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/music/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    const-string v3, "_id"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 361
    .local v18, id:I
    invoke-static/range {p1 .. p1}, Lcom/google/android/music/utils/ContextMenuManager;->getPopupLocation(Landroid/view/View;)[I

    move-result-object v5

    .line 362
    .local v5, location:[I
    move/from16 v0, v18

    int-to-long v1, v0

    invoke-static {v1, v2}, Lcom/google/android/music/AutoPlaylists;->isAutoPlaylistId(J)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 363
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/PlaylistBrowserActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/music/activitymanagement/MusicStateController;->getContextMenuManager()Lcom/google/android/music/utils/ContextMenuManager;

    move-result-object v1

    move/from16 v0, v18

    int-to-long v3, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x2

    move-object/from16 v2, p0

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/music/utils/ContextMenuManager;->showAutoPlaylistContextMenu(Lcom/google/android/music/activitymanagement/MusicFragment;J[ILandroid/view/View;I)V

    goto :goto_6

    .line 366
    :cond_45
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/music/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    const-string v3, "name"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 368
    .local v10, playlistName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/music/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    const-string v3, "ListType"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 370
    .local v11, playlistType:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/music/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    const-string v3, "hasRemote"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_af

    const/4 v15, 0x1

    .line 372
    .local v15, hasRemote:Z
    :goto_7f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/music/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    const-string v3, "KeepOnId"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_b1

    const/16 v16, 0x1

    .line 376
    .local v16, isKept:Z
    :goto_95
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/PlaylistBrowserActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/music/activitymanagement/MusicStateController;->getContextMenuManager()Lcom/google/android/music/utils/ContextMenuManager;

    move-result-object v6

    move/from16 v0, v18

    int-to-long v8, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v13

    const/4 v14, 0x2

    const/16 v17, 0x0

    move-object/from16 v7, p0

    move-object v12, v5

    invoke-virtual/range {v6 .. v17}, Lcom/google/android/music/utils/ContextMenuManager;->showPlaylistContextMenu(Lcom/google/android/music/activitymanagement/MusicFragment;JLjava/lang/String;I[ILandroid/view/View;IZZLcom/google/android/music/dl/INetworkMonitor;)V

    goto/16 :goto_6

    .line 370
    .end local v15           #hasRemote:Z
    .end local v16           #isKept:Z
    :cond_af
    const/4 v15, 0x0

    goto :goto_7f

    .line 372
    .restart local v15       #hasRemote:Z
    :cond_b1
    const/16 v16, 0x0

    goto :goto_95
.end method

.method public getLoggerScreenString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 256
    const-string v0, "playlists"

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .registers 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mView:Landroid/view/View;

    return-object v0
.end method

.method public hasCustomMenuOptions()Z
    .registers 2

    .prologue
    .line 205
    const/4 v0, 0x1

    return v0
.end method

.method public init(Landroid/database/Cursor;)V
    .registers 5
    .parameter "cursor"

    .prologue
    .line 305
    iget-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mAdapter:Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    if-nez v0, :cond_5

    .line 319
    :cond_4
    :goto_4
    return-void

    .line 308
    :cond_5
    iget-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mAdapter:Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 310
    iget-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_4

    .line 315
    sget v0, Lcom/google/android/music/PlaylistBrowserActivity;->mLastListPosCoarse:I

    if-ltz v0, :cond_4

    .line 316
    iget-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mList:Landroid/widget/ListView;

    sget v1, Lcom/google/android/music/PlaylistBrowserActivity;->mLastListPosCoarse:I

    sget v2, Lcom/google/android/music/PlaylistBrowserActivity;->mLastListPosFine:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 317
    const/4 v0, -0x1

    sput v0, Lcom/google/android/music/PlaylistBrowserActivity;->mLastListPosCoarse:I

    goto :goto_4
.end method

.method public initializeState(Lcom/google/android/music/activitymanagement/MusicState;)V
    .registers 5
    .parameter "state"

    .prologue
    .line 172
    invoke-super {p0, p1}, Lcom/google/android/music/activitymanagement/MusicFragment;->initializeState(Lcom/google/android/music/activitymanagement/MusicState;)V

    .line 173
    const-string v1, "android.intent.action.CREATE_SHORTCUT"

    invoke-virtual {p1}, Lcom/google/android/music/activitymanagement/MusicState;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mCreateShortcut:Z

    .line 174
    invoke-virtual {p1, p0}, Lcom/google/android/music/activitymanagement/MusicState;->getSavedBundle(Lcom/google/android/music/activitymanagement/MusicFragment;)Landroid/os/Bundle;

    move-result-object v0

    .line 175
    .local v0, savedState:Landroid/os/Bundle;
    if-eqz v0, :cond_22

    .line 176
    const-string v1, "scrollPos"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mRestoreScrollPos:I

    .line 179
    :cond_22
    invoke-virtual {p0}, Lcom/google/android/music/PlaylistBrowserActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/music/activitymanagement/MusicStateController;->getTracker()Lcom/google/android/music/MusicEventLogger;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mTracker:Lcom/google/android/music/MusicEventLogger;

    .line 180
    return-void
.end method

.method public onAvailableSpaceChanged(JJZ)V
    .registers 7
    .parameter "totalSpace"
    .parameter "freeSpace"
    .parameter "availabilityTransition"

    .prologue
    .line 298
    if-eqz p5, :cond_6

    .line 299
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/music/PlaylistBrowserActivity;->onPlaylistChanged(Ljava/util/List;)V

    .line 301
    :cond_6
    return-void
.end method

.method public onBottomBarChanged()V
    .registers 6

    .prologue
    .line 270
    iget-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mListContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mListContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mListContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mListContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/music/PlaylistBrowserActivity;->getMusicUIController()Lcom/google/android/music/activitymanagement/MusicUIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/music/activitymanagement/MusicUIController;->getBottomBarHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 273
    return-void
.end method

.method public onCreate()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 117
    invoke-super {p0}, Lcom/google/android/music/activitymanagement/MusicFragment;->onCreate()V

    .line 119
    invoke-static {p0, p0}, Lcom/google/android/music/MusicUtils;->bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;)Lcom/google/android/music/MusicUtils$ServiceToken;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mToken:Lcom/google/android/music/MusicUtils$ServiceToken;

    .line 121
    invoke-static {p0, p0}, Lcom/google/android/music/jumper/MusicPreferences;->getMusicPreferences(Landroid/content/Context;Ljava/lang/Object;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    .line 122
    iget-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v0}, Lcom/google/android/music/jumper/MusicPreferences;->isTabletMusicExperience()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 123
    const-string v0, "PlaylistBrowserActivity"

    const-string v1, "PlaylistBrowserActivity called on XLarge screen"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_20
    new-instance v0, Lcom/google/android/music/NetworkMonitorServiceConnection;

    iget-object v1, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mStreamabilityChangeListener:Lcom/google/android/music/dl/IStreamabilityChangeListener;

    invoke-direct {v0, v1}, Lcom/google/android/music/NetworkMonitorServiceConnection;-><init>(Lcom/google/android/music/dl/IStreamabilityChangeListener;)V

    iput-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

    .line 128
    iget-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

    invoke-virtual {v0, p0}, Lcom/google/android/music/NetworkMonitorServiceConnection;->bindToService(Landroid/content/Context;)V

    .line 130
    const v0, 0x7f040029

    invoke-virtual {p0, v0}, Lcom/google/android/music/PlaylistBrowserActivity;->inflateView(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mView:Landroid/view/View;

    .line 131
    iget-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mView:Landroid/view/View;

    const v1, 0x7f100050

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mListContainer:Landroid/view/View;

    .line 132
    iget-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mView:Landroid/view/View;

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mList:Landroid/widget/ListView;

    .line 133
    iget-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 134
    iget-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 135
    iget-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 136
    iget-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 138
    invoke-static {}, Lcom/google/android/music/jumper/MusicPreferences;->isICSOrGreater()Z

    move-result v0

    if-eqz v0, :cond_80

    .line 139
    iget-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, v7}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 140
    iget-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mList:Landroid/widget/ListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVerticalScrollbarPosition(I)V

    .line 141
    iget-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mList:Landroid/widget/ListView;

    const/high16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    .line 144
    iget-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, v7}, Landroid/widget/ListView;->setFastScrollAlwaysVisible(Z)V

    .line 147
    :cond_80
    new-instance v0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    invoke-virtual {p0}, Lcom/google/android/music/PlaylistBrowserActivity;->getApplication()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f04001d

    iget-object v5, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    new-array v6, v7, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v6, v3

    new-array v7, v7, [I

    const v1, 0x1020014

    aput v1, v7, v3

    move-object v1, p0

    move-object v3, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;-><init>(Lcom/google/android/music/PlaylistBrowserActivity;Landroid/content/Context;Lcom/google/android/music/PlaylistBrowserActivity;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mAdapter:Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    .line 154
    iget-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mAdapter:Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 156
    new-instance v0, Lcom/google/android/music/PlaylistBrowserActivity$2;

    invoke-direct {v0, p0}, Lcom/google/android/music/PlaylistBrowserActivity$2;-><init>(Lcom/google/android/music/PlaylistBrowserActivity;)V

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->runAsyncWithCallback(Lcom/google/android/music/utils/async/AsyncRunner;)V

    .line 167
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)V
    .registers 2
    .parameter "menu"

    .prologue
    .line 324
    return-void
.end method

.method public onDestroy()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 216
    iget-object v1, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mList:Landroid/widget/ListView;

    if-eqz v1, :cond_1c

    .line 217
    iget-object v1, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    sput v1, Lcom/google/android/music/PlaylistBrowserActivity;->mLastListPosCoarse:I

    .line 218
    iget-object v1, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mList:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 219
    .local v0, cv:Landroid/view/View;
    if-eqz v0, :cond_1c

    .line 220
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    sput v1, Lcom/google/android/music/PlaylistBrowserActivity;->mLastListPosFine:I

    .line 223
    .end local v0           #cv:Landroid/view/View;
    :cond_1c
    iget-object v1, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mToken:Lcom/google/android/music/MusicUtils$ServiceToken;

    invoke-static {v1}, Lcom/google/android/music/MusicUtils;->unbindFromService(Lcom/google/android/music/MusicUtils$ServiceToken;)V

    .line 228
    iget-object v1, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mAdapter:Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    if-eqz v1, :cond_2a

    .line 229
    iget-object v1, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mAdapter:Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    invoke-virtual {v1, v3}, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 231
    :cond_2a
    iget-object v1, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 232
    iput-object v3, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mAdapter:Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    .line 234
    iget-object v1, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

    invoke-virtual {v1, p0}, Lcom/google/android/music/NetworkMonitorServiceConnection;->unbindFromService(Landroid/content/Context;)V

    .line 235
    invoke-static {p0}, Lcom/google/android/music/jumper/MusicPreferences;->releaseMusicPreferences(Ljava/lang/Object;)V

    .line 236
    invoke-super {p0}, Lcom/google/android/music/activitymanagement/MusicFragment;->onDestroy()V

    .line 237
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 13
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
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 384
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v4, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mAdapter:Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    invoke-virtual {v4}, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->getCount()I

    move-result v4

    if-nez v4, :cond_9

    .line 420
    :goto_8
    return-void

    .line 389
    :cond_9
    iget-boolean v4, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mCreateShortcut:Z

    if-eqz v4, :cond_5c

    .line 390
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 391
    .local v3, shortcut:Landroid/content/Intent;
    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 392
    sget-object v4, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v5, "vnd.android.cursor.dir/vnd.google.music.playlist"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 395
    const/high16 v4, 0x400

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 396
    const-string v4, "playlist"

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 398
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 400
    .local v0, intent:Landroid/content/Intent;
    const-string v4, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 401
    const-string v5, "android.intent.extra.shortcut.NAME"

    const v4, 0x7f10003d

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 402
    const-string v4, "android.intent.extra.shortcut.ICON_RESOURCE"

    const v5, 0x7f030001

    invoke-static {p0, v5}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 405
    const/4 v4, -0x1

    invoke-virtual {p0, v4, v0}, Lcom/google/android/music/PlaylistBrowserActivity;->setResult(ILandroid/content/Intent;)V

    .line 406
    invoke-virtual {p0}, Lcom/google/android/music/PlaylistBrowserActivity;->finish()V

    goto :goto_8

    .line 410
    .end local v0           #intent:Landroid/content/Intent;
    .end local v3           #shortcut:Landroid/content/Intent;
    :cond_5c
    invoke-static {p4, p5}, Lcom/google/android/music/AutoPlaylists;->isAutoPlaylistId(J)Z

    move-result v4

    if-eqz v4, :cond_6a

    .line 411
    invoke-virtual {p0}, Lcom/google/android/music/PlaylistBrowserActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v4

    invoke-virtual {v4, p4, p5}, Lcom/google/android/music/activitymanagement/MusicStateController;->startTrackListingForAutoPlaylist(J)V

    goto :goto_8

    .line 413
    :cond_6a
    iget-object v4, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v4, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 414
    iget-object v4, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    iget-object v5, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    const-string v6, "name"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 416
    .local v2, name:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    iget-object v5, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    const-string v6, "ListType"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 418
    .local v1, listType:I
    invoke-direct {p0, p4, p5, v2, v1}, Lcom/google/android/music/PlaylistBrowserActivity;->openPlaylist(JLjava/lang/String;I)V

    goto/16 :goto_8
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
    .line 348
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0, p2, p3}, Lcom/google/android/music/PlaylistBrowserActivity;->createContextMusicMenu(Landroid/view/View;I)V

    .line 349
    const/4 v0, 0x1

    return v0
.end method

.method public onLayoutConfig(Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;)V
    .registers 3
    .parameter "layoutConfig"

    .prologue
    .line 195
    const v0, 0x7f0d005e

    invoke-virtual {p0, v0}, Lcom/google/android/music/PlaylistBrowserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->setTitle(Ljava/lang/CharSequence;)V

    .line 196
    iget-boolean v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mHasPlaylists:Z

    if-eqz v0, :cond_14

    .line 197
    sget-object v0, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;->NONE:Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;

    invoke-virtual {p1, v0}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->setNoMusicView(Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;)V

    .line 201
    :goto_13
    return-void

    .line 199
    :cond_14
    sget-object v0, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;->MUSIC:Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;

    invoke-virtual {p1, v0}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->setNoMusicView(Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;)V

    goto :goto_13
.end method

.method public onMenuItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    .line 339
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/16 v1, 0x17

    if-ne v0, v1, :cond_18

    .line 340
    invoke-virtual {p0}, Lcom/google/android/music/PlaylistBrowserActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v0

    const v1, 0x7f0d0054

    invoke-static {v1, p0}, Lcom/google/android/music/dl/IntentConstants;->getHelpIntent(ILandroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/music/activitymanagement/MusicStateController;->superStartActivity(Landroid/content/Intent;)V

    .line 342
    const/4 v0, 0x1

    .line 344
    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public onMusicModeChanged(Lcom/google/android/music/activitymanagement/MusicStateController;)V
    .registers 5
    .parameter "musicStateController"

    .prologue
    .line 278
    invoke-virtual {p1}, Lcom/google/android/music/activitymanagement/MusicStateController;->getMusicManager()Lcom/google/android/music/OfflineMusicManager;

    move-result-object v1

    .line 279
    .local v1, musicManager:Lcom/google/android/music/OfflineMusicManager;
    iget-object v2, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    if-eq v2, v1, :cond_1e

    .line 280
    iget-object v2, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    if-eqz v2, :cond_11

    .line 281
    iget-object v2, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    invoke-virtual {v2, p0}, Lcom/google/android/music/OfflineMusicManager;->removeAvailableSpaceChangedListener(Lcom/google/android/music/OfflineMusicManager$AvailableSpaceChangedListener;)V

    .line 284
    :cond_11
    iput-object v1, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    .line 285
    invoke-virtual {p1}, Lcom/google/android/music/activitymanagement/MusicStateController;->isInManageMusicMode()Z

    move-result v0

    .line 286
    .local v0, inManageMusicMode:Z
    if-eqz v0, :cond_1e

    .line 287
    iget-object v2, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    invoke-virtual {v2, p0}, Lcom/google/android/music/OfflineMusicManager;->addAvailableSpaceChangeListener(Lcom/google/android/music/OfflineMusicManager$AvailableSpaceChangedListener;)V

    .line 291
    .end local v0           #inManageMusicMode:Z
    :cond_1e
    iget-object v2, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mAdapter:Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    if-eqz v2, :cond_27

    .line 292
    iget-object v2, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mAdapter:Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    invoke-virtual {v2}, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->notifyDataSetChanged()V

    .line 294
    :cond_27
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 261
    invoke-virtual {p0}, Lcom/google/android/music/PlaylistBrowserActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/music/activitymanagement/MusicStateController;->unregisterMusicModeListener(Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicModeListener;)V

    .line 262
    invoke-virtual {p0}, Lcom/google/android/music/PlaylistBrowserActivity;->getMusicUIController()Lcom/google/android/music/activitymanagement/MusicUIController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/music/activitymanagement/MusicUIController;->unregisterBottomBarChangeListener(Lcom/google/android/music/BottomBarChangeListener;)V

    .line 263
    invoke-super {p0}, Lcom/google/android/music/activitymanagement/MusicFragment;->onPause()V

    .line 264
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
    .line 424
    .local p1, playlistIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mAdapter:Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    if-eqz v0, :cond_9

    .line 425
    iget-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mUpdateAllOfflineSelectedStatusesRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/music/PlaylistBrowserActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 427
    :cond_9
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 5
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    .line 329
    iget-object v1, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v1}, Lcom/google/android/music/jumper/MusicPreferences;->isOfflineFeatureAvailable()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 330
    const/16 v1, 0x14

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 331
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_14

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 333
    .end local v0           #item:Landroid/view/MenuItem;
    :cond_14
    const/4 v1, 0x4

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 334
    .restart local v0       #item:Landroid/view/MenuItem;
    if-eqz v0, :cond_1e

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 335
    :cond_1e
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 241
    invoke-super {p0}, Lcom/google/android/music/activitymanagement/MusicFragment;->onResume()V

    .line 242
    invoke-virtual {p0}, Lcom/google/android/music/PlaylistBrowserActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/music/activitymanagement/MusicStateController;->registerMusicModeListener(Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicModeListener;)V

    .line 243
    invoke-virtual {p0}, Lcom/google/android/music/PlaylistBrowserActivity;->getMusicUIController()Lcom/google/android/music/activitymanagement/MusicUIController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/music/activitymanagement/MusicUIController;->registerBottomBarChangeListener(Lcom/google/android/music/BottomBarChangeListener;)V

    .line 244
    iget-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mAdapter:Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    if-eqz v0, :cond_1a

    .line 247
    iget-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mAdapter:Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    invoke-virtual {v0}, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->notifyDataSetChanged()V

    .line 250
    :cond_1a
    invoke-virtual {p0}, Lcom/google/android/music/PlaylistBrowserActivity;->getAppState()Lcom/google/android/music/activitymanagement/MusicState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/music/activitymanagement/MusicState;->mInTab:Z

    if-nez v0, :cond_27

    .line 251
    iget-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mTracker:Lcom/google/android/music/MusicEventLogger;

    invoke-virtual {v0, p0}, Lcom/google/android/music/MusicEventLogger;->trackScreenView(Lcom/google/android/music/activitymanagement/MusicFragment;)V

    .line 253
    :cond_27
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outcicle"

    .prologue
    .line 184
    invoke-super {p0, p1}, Lcom/google/android/music/activitymanagement/MusicFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 185
    const-string v0, "scrollPos"

    iget-object v1, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 186
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 3
    .parameter "classname"
    .parameter "obj"

    .prologue
    .line 209
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2
    .parameter "classname"

    .prologue
    .line 212
    return-void
.end method
