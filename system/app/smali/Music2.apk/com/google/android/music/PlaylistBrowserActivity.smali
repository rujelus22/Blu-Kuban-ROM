.class public Lcom/google/android/music/PlaylistBrowserActivity;
.super Lcom/google/android/music/activitymanagement/MusicFragment;
.source "PlaylistBrowserActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Lcom/google/android/music/BottomBarChangeListener;
.implements Lcom/google/android/music/OfflineMusicManager$AvailableSpaceChangedListener;
.implements Lcom/google/android/music/OfflineMusicManager$PlaylistChangedListener;
.implements Lcom/google/android/music/activitymanagement/TopLevelActivity$ManageMusicModeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;,
        Lcom/google/android/music/PlaylistBrowserActivity$CheckBoxClickListener;,
        Lcom/google/android/music/PlaylistBrowserActivity$NotifyingMatrixCursor;
    }
.end annotation


# static fields
.field private static final LOGV:Z

.field private static final mCols:[Ljava/lang/String;

.field private static mLastListPosCourse:I

.field private static mLastListPosFine:I


# instance fields
.field private mAdapter:Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

.field private mCreateShortcut:Z

.field private mList:Landroid/widget/ListView;

.field private mListContainer:Landroid/view/View;

.field private mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

.field private mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

.field private mPlaylistCursor:Landroid/database/Cursor;

.field private final mPopulateRespresentativeAlbum:Ljava/lang/Runnable;

.field private volatile mRepresentativeAlbumId:J

.field private mRestoreScrollPos:I

.field private mToken:Lcom/google/android/music/MusicUtils$ServiceToken;

.field private mUpdateAllOfflineSelectedStatusesRunnable:Ljava/lang/Runnable;

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v1, -0x1

    .line 67
    const-string v0, "PlaylistBrowserActivity"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/PlaylistBrowserActivity;->LOGV:Z

    .line 72
    sput v1, Lcom/google/android/music/PlaylistBrowserActivity;->mLastListPosCourse:I

    .line 73
    sput v1, Lcom/google/android/music/PlaylistBrowserActivity;->mLastListPosFine:I

    .line 411
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "ListType"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "KeepOnId"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "hasRemote"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "hasLocal"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/music/PlaylistBrowserActivity;->mCols:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/google/android/music/activitymanagement/MusicFragment;-><init>(Landroid/content/Context;)V

    .line 84
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mRepresentativeAlbumId:J

    .line 86
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mRestoreScrollPos:I

    .line 243
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    .line 390
    new-instance v0, Lcom/google/android/music/PlaylistBrowserActivity$2;

    invoke-direct {v0, p0}, Lcom/google/android/music/PlaylistBrowserActivity$2;-><init>(Lcom/google/android/music/PlaylistBrowserActivity;)V

    iput-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mUpdateAllOfflineSelectedStatusesRunnable:Ljava/lang/Runnable;

    .line 523
    new-instance v0, Lcom/google/android/music/PlaylistBrowserActivity$3;

    invoke-direct {v0, p0}, Lcom/google/android/music/PlaylistBrowserActivity$3;-><init>(Lcom/google/android/music/PlaylistBrowserActivity;)V

    iput-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mPopulateRespresentativeAlbum:Ljava/lang/Runnable;

    .line 90
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/PlaylistBrowserActivity;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/google/android/music/PlaylistBrowserActivity;->getPlaylistCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/music/PlaylistBrowserActivity;)Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mAdapter:Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/music/PlaylistBrowserActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mRestoreScrollPos:I

    return v0
.end method

.method static synthetic access$1002(Lcom/google/android/music/PlaylistBrowserActivity;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput p1, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mRestoreScrollPos:I

    return p1
.end method

.method static synthetic access$200(Lcom/google/android/music/PlaylistBrowserActivity;)Lcom/google/android/music/OfflineMusicManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/music/PlaylistBrowserActivity;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mRepresentativeAlbumId:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/google/android/music/PlaylistBrowserActivity;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-wide p1, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mRepresentativeAlbumId:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/google/android/music/PlaylistBrowserActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/google/android/music/PlaylistBrowserActivity;->requestReconfig()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/music/PlaylistBrowserActivity;)Landroid/widget/ListView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/music/PlaylistBrowserActivity;)Lcom/google/android/music/jumper/MusicPreferences;
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/music/PlaylistBrowserActivity;)Landroid/database/Cursor;
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$802(Lcom/google/android/music/PlaylistBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$900(Landroid/content/Context;Lcom/google/android/music/jumper/MusicPreferences;J[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 61
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/music/PlaylistBrowserActivity;->createAutoPlaylistCursor(Landroid/content/Context;Lcom/google/android/music/jumper/MusicPreferences;J[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private static createAutoPlaylistCursor(Landroid/content/Context;Lcom/google/android/music/jumper/MusicPreferences;J[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 7
    .parameter "context"
    .parameter "prefs"
    .parameter "playlistId"
    .parameter "cols"

    .prologue
    .line 408
    const/4 v0, 0x1

    invoke-static {p2, p3, v0, p1}, Lcom/google/android/music/AutoPlaylists;->getAutoPlaylist(JZLcom/google/android/music/jumper/MusicPreferences;)Lcom/google/android/music/medialist/AutoPlaylist;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p4, v1}, Lcom/google/android/music/medialist/AutoPlaylist;->getCursor(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/music/medialist/MediaList$MediaCursor;

    move-result-object v0

    return-object v0
.end method

.method private getAutoPlaylistCursorEntry(J)Ljava/util/ArrayList;
    .registers 7
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 475
    iget-object v2, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-static {p1, p2, v3, v2}, Lcom/google/android/music/AutoPlaylists;->getAutoPlaylist(JZLcom/google/android/music/jumper/MusicPreferences;)Lcom/google/android/music/medialist/AutoPlaylist;

    move-result-object v1

    .line 477
    .local v1, playlist:Lcom/google/android/music/medialist/AutoPlaylist;
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x6

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 478
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 479
    invoke-virtual {v1, p0}, Lcom/google/android/music/medialist/AutoPlaylist;->getListingName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 480
    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 481
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 482
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 483
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 484
    return-object v0
.end method

.method private getPlaylistCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .registers 10
    .parameter "filterstring"

    .prologue
    const/4 v5, 0x0

    .line 422
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 424
    .local v7, where:Ljava/lang/StringBuilder;
    if-eqz p1, :cond_14

    .line 425
    const-string v1, "PlaylistBrowserActivity"

    const-string v2, "Filtering is not supported"

    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 428
    :cond_14
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 430
    .local v4, whereclause:Ljava/lang/String;
    new-instance v0, Lcom/google/android/music/AsyncCursor;

    sget-object v2, Lcom/google/android/music/store/MusicContent$Playlists;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/google/android/music/PlaylistBrowserActivity;->mCols:[Ljava/lang/String;

    move-object v1, p0

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/music/AsyncCursor;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    .local v0, c:Landroid/database/Cursor;
    invoke-direct {p0, v0}, Lcom/google/android/music/PlaylistBrowserActivity;->mergedCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method private mergedCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .registers 13
    .parameter "c"

    .prologue
    .line 453
    if-nez p1, :cond_4

    .line 454
    const/4 p1, 0x0

    .line 471
    .end local p1
    :goto_3
    return-object p1

    .line 457
    .restart local p1
    :cond_4
    instance-of v8, p1, Landroid/database/MergeCursor;

    if-eqz v8, :cond_10

    .line 459
    const-string v8, "PlaylistBrowserActivity"

    const-string v9, "Already wrapped"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 462
    :cond_10
    new-instance v4, Lcom/google/android/music/PlaylistBrowserActivity$NotifyingMatrixCursor;

    sget-object v8, Lcom/google/android/music/PlaylistBrowserActivity;->mCols:[Ljava/lang/String;

    invoke-direct {v4, v8}, Lcom/google/android/music/PlaylistBrowserActivity$NotifyingMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 464
    .local v4, autoplaylistscursor:Lcom/google/android/music/PlaylistBrowserActivity$NotifyingMatrixCursor;
    iget-object v8, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {p0}, Lcom/google/android/music/PlaylistBrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    iget-boolean v10, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mCreateShortcut:Z

    invoke-static {v8, v9, v10}, Lcom/google/android/music/AutoPlaylists;->getAutoPlaylistsToShow(Lcom/google/android/music/jumper/MusicPreferences;Landroid/content/ContentResolver;Z)[J

    move-result-object v3

    .line 466
    .local v3, autoPlaylists:[J
    move-object v0, v3

    .local v0, arr$:[J
    array-length v7, v0

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_26
    if-ge v6, v7, :cond_34

    aget-wide v1, v0, v6

    .line 467
    .local v1, autoPlaylistId:J
    invoke-direct {p0, v1, v2}, Lcom/google/android/music/PlaylistBrowserActivity;->getAutoPlaylistCursorEntry(J)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/google/android/music/PlaylistBrowserActivity$NotifyingMatrixCursor;->addRow(Ljava/lang/Iterable;)V

    .line 466
    add-int/lit8 v6, v6, 0x1

    goto :goto_26

    .line 470
    .end local v1           #autoPlaylistId:J
    :cond_34
    new-instance v5, Landroid/database/MergeCursor;

    const/4 v8, 0x2

    new-array v8, v8, [Landroid/database/Cursor;

    const/4 v9, 0x0

    aput-object v4, v8, v9

    const/4 v9, 0x1

    aput-object p1, v8, v9

    invoke-direct {v5, v8}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .local v5, cc:Landroid/database/Cursor;
    move-object p1, v5

    .line 471
    goto :goto_3
.end method

.method private openPlaylist(JLjava/lang/String;I)V
    .registers 7
    .parameter "id"
    .parameter "name"
    .parameter "playlistType"

    .prologue
    .line 402
    invoke-virtual {p0}, Lcom/google/android/music/PlaylistBrowserActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v0

    new-instance v1, Lcom/google/android/music/medialist/PlaylistSongList;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/google/android/music/medialist/PlaylistSongList;-><init>(JLjava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/google/android/music/activitymanagement/MusicStateController;->startTrackListing(Lcom/google/android/music/medialist/MediaList;)V

    .line 403
    return-void
.end method

.method private refreshRepresentativeAlbum()V
    .registers 3

    .prologue
    .line 519
    sget-object v0, Lcom/google/android/music/utils/async/AsyncWorkers;->sUIBackgroundWorker:Lcom/google/android/music/Worker;

    iget-object v1, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mPopulateRespresentativeAlbum:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/google/android/music/utils/async/AsyncWorkers;->runAsync(Lcom/google/android/music/Worker;Ljava/lang/Runnable;)V

    .line 521
    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .registers 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mView:Landroid/view/View;

    return-object v0
.end method

.method public hasCustomMenuOptions()Z
    .registers 2

    .prologue
    .line 183
    const/4 v0, 0x1

    return v0
.end method

.method public init(Landroid/database/Cursor;)V
    .registers 5
    .parameter "cursor"

    .prologue
    .line 273
    iget-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mAdapter:Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    if-nez v0, :cond_5

    .line 287
    :cond_4
    :goto_4
    return-void

    .line 276
    :cond_5
    iget-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mAdapter:Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 278
    iget-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_4

    .line 283
    sget v0, Lcom/google/android/music/PlaylistBrowserActivity;->mLastListPosCourse:I

    if-ltz v0, :cond_4

    .line 284
    iget-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mList:Landroid/widget/ListView;

    sget v1, Lcom/google/android/music/PlaylistBrowserActivity;->mLastListPosCourse:I

    sget v2, Lcom/google/android/music/PlaylistBrowserActivity;->mLastListPosFine:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 285
    const/4 v0, -0x1

    sput v0, Lcom/google/android/music/PlaylistBrowserActivity;->mLastListPosCourse:I

    goto :goto_4
.end method

.method public initializeState(Lcom/google/android/music/activitymanagement/MusicState;)V
    .registers 5
    .parameter "state"

    .prologue
    .line 146
    invoke-super {p0, p1}, Lcom/google/android/music/activitymanagement/MusicFragment;->initializeState(Lcom/google/android/music/activitymanagement/MusicState;)V

    .line 147
    const-string v1, "android.intent.action.CREATE_SHORTCUT"

    invoke-virtual {p1}, Lcom/google/android/music/activitymanagement/MusicState;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mCreateShortcut:Z

    .line 148
    invoke-virtual {p1, p0}, Lcom/google/android/music/activitymanagement/MusicState;->getSavedBundle(Lcom/google/android/music/activitymanagement/MusicFragment;)Landroid/os/Bundle;

    move-result-object v0

    .line 149
    .local v0, savedState:Landroid/os/Bundle;
    if-eqz v0, :cond_22

    .line 150
    const-string v1, "scrollPos"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mRestoreScrollPos:I

    .line 152
    :cond_22
    return-void
.end method

.method public onActionBarConfig(Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;)V
    .registers 3
    .parameter "actionbarConfig"

    .prologue
    .line 178
    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;->show(I)V

    .line 179
    return-void
.end method

.method public onAvailableSpaceChanged(JJZ)V
    .registers 7
    .parameter "totalSpace"
    .parameter "freeSpace"
    .parameter "availabilityTransition"

    .prologue
    .line 266
    if-eqz p5, :cond_6

    .line 267
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/music/PlaylistBrowserActivity;->onPlaylistChanged(Ljava/util/List;)V

    .line 269
    :cond_6
    return-void
.end method

.method public onBottomBarChanged()V
    .registers 6

    .prologue
    .line 238
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

    .line 241
    return-void
.end method

.method public onCreate()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 94
    invoke-super {p0}, Lcom/google/android/music/activitymanagement/MusicFragment;->onCreate()V

    .line 96
    invoke-static {p0, p0}, Lcom/google/android/music/MusicUtils;->bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;)Lcom/google/android/music/MusicUtils$ServiceToken;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mToken:Lcom/google/android/music/MusicUtils$ServiceToken;

    .line 98
    invoke-static {p0, p0}, Lcom/google/android/music/jumper/MusicPreferences;->getMusicPreferences(Landroid/content/Context;Ljava/lang/Object;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    .line 99
    iget-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v0}, Lcom/google/android/music/jumper/MusicPreferences;->isTabletMusic()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 100
    const-string v0, "PlaylistBrowserActivity"

    const-string v1, "PlaylistBrowserActivity called on XLarge screen"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_20
    const v0, 0x7f040020

    invoke-virtual {p0, v0}, Lcom/google/android/music/PlaylistBrowserActivity;->inflateView(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mView:Landroid/view/View;

    .line 104
    iget-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mView:Landroid/view/View;

    const v1, 0x7f10006d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mListContainer:Landroid/view/View;

    .line 105
    iget-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mView:Landroid/view/View;

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mList:Landroid/widget/ListView;

    .line 106
    iget-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 107
    iget-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 108
    iget-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 109
    iget-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 110
    iget-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 112
    invoke-static {}, Lcom/google/android/music/jumper/MusicPreferences;->isICSOrGreater()Z

    move-result v0

    if-eqz v0, :cond_77

    .line 113
    iget-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, v7}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 114
    iget-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mList:Landroid/widget/ListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVerticalScrollbarPosition(I)V

    .line 115
    iget-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mList:Landroid/widget/ListView;

    const/high16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    .line 118
    iget-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, v7}, Landroid/widget/ListView;->setFastScrollAlwaysVisible(Z)V

    .line 121
    :cond_77
    new-instance v0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    invoke-virtual {p0}, Lcom/google/android/music/PlaylistBrowserActivity;->getApplication()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f040019

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

    .line 128
    iget-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mAdapter:Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 130
    new-instance v0, Lcom/google/android/music/PlaylistBrowserActivity$1;

    invoke-direct {v0, p0}, Lcom/google/android/music/PlaylistBrowserActivity$1;-><init>(Lcom/google/android/music/PlaylistBrowserActivity;)V

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->runAsyncWithCallback(Lcom/google/android/music/utils/async/AsyncRunner;)V

    .line 141
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)V
    .registers 2
    .parameter "menu"

    .prologue
    .line 292
    return-void
.end method

.method public onDestroy()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 194
    iget-object v1, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mList:Landroid/widget/ListView;

    if-eqz v1, :cond_1c

    .line 195
    iget-object v1, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    sput v1, Lcom/google/android/music/PlaylistBrowserActivity;->mLastListPosCourse:I

    .line 196
    iget-object v1, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mList:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 197
    .local v0, cv:Landroid/view/View;
    if-eqz v0, :cond_1c

    .line 198
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    sput v1, Lcom/google/android/music/PlaylistBrowserActivity;->mLastListPosFine:I

    .line 201
    .end local v0           #cv:Landroid/view/View;
    :cond_1c
    iget-object v1, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mToken:Lcom/google/android/music/MusicUtils$ServiceToken;

    invoke-static {v1}, Lcom/google/android/music/MusicUtils;->unbindFromService(Lcom/google/android/music/MusicUtils$ServiceToken;)V

    .line 206
    iget-object v1, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mAdapter:Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    if-eqz v1, :cond_2a

    .line 207
    iget-object v1, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mAdapter:Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    invoke-virtual {v1, v3}, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 209
    :cond_2a
    iget-object v1, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 210
    iput-object v3, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mAdapter:Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    .line 211
    invoke-static {p0}, Lcom/google/android/music/jumper/MusicPreferences;->releaseMusicPreferences(Ljava/lang/Object;)V

    .line 212
    invoke-super {p0}, Lcom/google/android/music/activitymanagement/MusicFragment;->onDestroy()V

    .line 213
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
    .line 351
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-boolean v4, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mCreateShortcut:Z

    if-eqz v4, :cond_53

    .line 352
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 353
    .local v3, shortcut:Landroid/content/Intent;
    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 354
    sget-object v4, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v5, "vnd.android.cursor.dir/vnd.google.music.playlist"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 357
    const/high16 v4, 0x400

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 358
    const-string v4, "playlist"

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 360
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 362
    .local v0, intent:Landroid/content/Intent;
    const-string v4, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 363
    const-string v5, "android.intent.extra.shortcut.NAME"

    const v4, 0x7f10003d

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 364
    const-string v4, "android.intent.extra.shortcut.ICON_RESOURCE"

    const v5, 0x7f030001

    invoke-static {p0, v5}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 367
    const/4 v4, -0x1

    invoke-virtual {p0, v4, v0}, Lcom/google/android/music/PlaylistBrowserActivity;->setResult(ILandroid/content/Intent;)V

    .line 368
    invoke-virtual {p0}, Lcom/google/android/music/PlaylistBrowserActivity;->finish()V

    .line 381
    .end local v0           #intent:Landroid/content/Intent;
    .end local v3           #shortcut:Landroid/content/Intent;
    :goto_52
    return-void

    .line 371
    :cond_53
    invoke-static {p4, p5}, Lcom/google/android/music/AutoPlaylists;->isAutoPlaylistId(J)Z

    move-result v4

    if-eqz v4, :cond_61

    .line 372
    invoke-virtual {p0}, Lcom/google/android/music/PlaylistBrowserActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v4

    invoke-virtual {v4, p4, p5}, Lcom/google/android/music/activitymanagement/MusicStateController;->startTrackListingForAutoPlaylist(J)V

    goto :goto_52

    .line 374
    :cond_61
    iget-object v4, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v4, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 375
    iget-object v4, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    iget-object v5, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    const-string v6, "name"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 377
    .local v2, name:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    iget-object v5, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    const-string v6, "ListType"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 379
    .local v1, listType:I
    invoke-direct {p0, p4, p5, v2, v1}, Lcom/google/android/music/PlaylistBrowserActivity;->openPlaylist(JLjava/lang/String;I)V

    goto :goto_52
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
    .line 316
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0, p2, p3}, Lcom/google/android/music/PlaylistBrowserActivity;->showContextMusicMenu(Landroid/view/View;I)V

    .line 317
    const/4 v0, 0x1

    return v0
.end method

.method public onLayoutConfig(Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;)V
    .registers 6
    .parameter "layoutConfig"

    .prologue
    .line 167
    const v0, 0x7f0d004e

    invoke-virtual {p0, v0}, Lcom/google/android/music/PlaylistBrowserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->setTitle(Ljava/lang/CharSequence;)V

    .line 170
    sget-object v0, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;->NONE:Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;

    invoke-virtual {p1, v0}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->setNoMusicView(Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;)V

    .line 171
    iget-wide v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mRepresentativeAlbumId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1c

    .line 172
    iget-wide v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mRepresentativeAlbumId:J

    invoke-virtual {p1, v0, v1}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->setFocusedAlbumId(J)V

    .line 174
    :cond_1c
    return-void
.end method

.method public onManageMusicModeChanged(ZLcom/google/android/music/OfflineMusicManager;)V
    .registers 4
    .parameter "inManageMusicMode"
    .parameter "musicManager"

    .prologue
    .line 247
    iget-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    if-eq v0, p2, :cond_16

    .line 248
    iget-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    if-eqz v0, :cond_d

    .line 249
    iget-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    invoke-virtual {v0, p0}, Lcom/google/android/music/OfflineMusicManager;->removeAvailableSpaceChangedListener(Lcom/google/android/music/OfflineMusicManager$AvailableSpaceChangedListener;)V

    .line 252
    :cond_d
    iput-object p2, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    .line 254
    if-eqz p1, :cond_16

    .line 255
    iget-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    invoke-virtual {v0, p0}, Lcom/google/android/music/OfflineMusicManager;->addAvailableSpaceChangeListener(Lcom/google/android/music/OfflineMusicManager$AvailableSpaceChangedListener;)V

    .line 259
    :cond_16
    iget-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mAdapter:Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    if-eqz v0, :cond_1f

    .line 260
    iget-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mAdapter:Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    invoke-virtual {v0}, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->notifyDataSetChanged()V

    .line 262
    :cond_1f
    return-void
.end method

.method public onMenuItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    .line 307
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/16 v1, 0x17

    if-ne v0, v1, :cond_18

    .line 308
    invoke-virtual {p0}, Lcom/google/android/music/PlaylistBrowserActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v0

    const v1, 0x7f0d0044

    invoke-static {v1, p0}, Lcom/google/android/music/dl/IntentConstants;->getHelpIntent(ILandroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/music/activitymanagement/MusicStateController;->superStartActivity(Landroid/content/Intent;)V

    .line 310
    const/4 v0, 0x1

    .line 312
    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/google/android/music/PlaylistBrowserActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/music/activitymanagement/MusicStateController;->unregisterManageMusicModeListener(Lcom/google/android/music/activitymanagement/TopLevelActivity$ManageMusicModeListener;)V

    .line 230
    invoke-virtual {p0}, Lcom/google/android/music/PlaylistBrowserActivity;->getMusicUIController()Lcom/google/android/music/activitymanagement/MusicUIController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/music/activitymanagement/MusicUIController;->unregisterBottomBarChangeListener(Lcom/google/android/music/BottomBarChangeListener;)V

    .line 231
    invoke-super {p0}, Lcom/google/android/music/activitymanagement/MusicFragment;->onPause()V

    .line 232
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
    .line 385
    .local p1, playlistIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mAdapter:Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    if-eqz v0, :cond_9

    .line 386
    iget-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mUpdateAllOfflineSelectedStatusesRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/music/PlaylistBrowserActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 388
    :cond_9
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 5
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    .line 297
    iget-object v1, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v1}, Lcom/google/android/music/jumper/MusicPreferences;->isOfflineFeatureAvailable()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 298
    const/16 v1, 0x14

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 299
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_14

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 301
    .end local v0           #item:Landroid/view/MenuItem;
    :cond_14
    const/4 v1, 0x4

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 302
    .restart local v0       #item:Landroid/view/MenuItem;
    if-eqz v0, :cond_1e

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 303
    :cond_1e
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 217
    invoke-super {p0}, Lcom/google/android/music/activitymanagement/MusicFragment;->onResume()V

    .line 218
    invoke-virtual {p0}, Lcom/google/android/music/PlaylistBrowserActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/music/activitymanagement/MusicStateController;->registerManageMusicModeListener(Lcom/google/android/music/activitymanagement/TopLevelActivity$ManageMusicModeListener;)V

    .line 219
    invoke-virtual {p0}, Lcom/google/android/music/PlaylistBrowserActivity;->getMusicUIController()Lcom/google/android/music/activitymanagement/MusicUIController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/music/activitymanagement/MusicUIController;->registerBottomBarChangeListener(Lcom/google/android/music/BottomBarChangeListener;)V

    .line 220
    iget-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mAdapter:Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    if-eqz v0, :cond_1a

    .line 223
    iget-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mAdapter:Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    invoke-virtual {v0}, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->notifyDataSetChanged()V

    .line 225
    :cond_1a
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outcicle"

    .prologue
    .line 156
    invoke-super {p0, p1}, Lcom/google/android/music/activitymanagement/MusicFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 157
    const-string v0, "scrollPos"

    iget-object v1, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 158
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 5
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 796
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 3
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 799
    if-nez p2, :cond_5

    .line 800
    invoke-direct {p0}, Lcom/google/android/music/PlaylistBrowserActivity;->refreshRepresentativeAlbum()V

    .line 802
    :cond_5
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 3
    .parameter "classname"
    .parameter "obj"

    .prologue
    .line 187
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2
    .parameter "classname"

    .prologue
    .line 190
    return-void
.end method

.method public showContextMusicMenu(Landroid/view/View;I)V
    .registers 19
    .parameter "view"
    .parameter "position"

    .prologue
    .line 321
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/music/PlaylistBrowserActivity;->mCreateShortcut:Z

    if-eqz v1, :cond_7

    .line 348
    :goto_6
    return-void

    .line 325
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/music/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    move/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 326
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/music/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    const-string v3, "_id"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 329
    .local v15, id:I
    invoke-static/range {p1 .. p1}, Lcom/google/android/music/utils/ContextMenuManager;->getPopupLocation(Landroid/view/View;)[I

    move-result-object v4

    .line 330
    .local v4, location:[I
    int-to-long v1, v15

    invoke-static {v1, v2}, Lcom/google/android/music/AutoPlaylists;->isAutoPlaylistId(J)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 331
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/PlaylistBrowserActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/music/activitymanagement/MusicStateController;->getContextMenuManager()Lcom/google/android/music/utils/ContextMenuManager;

    move-result-object v1

    int-to-long v2, v15

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/music/utils/ContextMenuManager;->showAutoPlaylistContextMenu(J[ILandroid/view/View;I)V

    goto :goto_6

    .line 334
    :cond_3f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/music/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    const-string v3, "name"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 336
    .local v8, playlistName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/music/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    const-string v3, "ListType"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 338
    .local v9, playlistType:I
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

    if-ne v1, v2, :cond_a2

    const/4 v13, 0x1

    .line 340
    .local v13, hasRemote:Z
    :goto_79
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/music/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    const-string v3, "KeepOnId"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_a4

    const/4 v14, 0x1

    .line 343
    .local v14, isKept:Z
    :goto_8e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/PlaylistBrowserActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/music/activitymanagement/MusicStateController;->getContextMenuManager()Lcom/google/android/music/utils/ContextMenuManager;

    move-result-object v5

    int-to-long v6, v15

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v11

    const/4 v12, 0x2

    move-object v10, v4

    invoke-virtual/range {v5 .. v14}, Lcom/google/android/music/utils/ContextMenuManager;->showPlaylistContextMenu(JLjava/lang/String;I[ILandroid/view/View;IZZ)V

    goto/16 :goto_6

    .line 338
    .end local v13           #hasRemote:Z
    .end local v14           #isKept:Z
    :cond_a2
    const/4 v13, 0x0

    goto :goto_79

    .line 340
    .restart local v13       #hasRemote:Z
    :cond_a4
    const/4 v14, 0x0

    goto :goto_8e
.end method
