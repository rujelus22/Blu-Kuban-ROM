.class public Lcom/google/android/music/GenreAlbumBrowserActivity;
.super Lcom/google/android/music/activitymanagement/MusicFragment;
.source "GenreAlbumBrowserActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Landroid/widget/ExpandableListView$OnChildClickListener;
.implements Lcom/google/android/music/BottomBarChangeListener;
.implements Lcom/google/android/music/OfflineMusicManager$AlbumChangedListener;
.implements Lcom/google/android/music/OfflineMusicManager$AvailableSpaceChangedListener;
.implements Lcom/google/android/music/activitymanagement/TopLevelActivity$ManageMusicModeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/GenreAlbumBrowserActivity$AlbumQuery;,
        Lcom/google/android/music/GenreAlbumBrowserActivity$GenreQuery;,
        Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;,
        Lcom/google/android/music/GenreAlbumBrowserActivity$CheckBoxClickListener;
    }
.end annotation


# static fields
.field private static final LOGV:Z

.field private static mLastListPosCourse:I

.field private static mLastListPosFine:I


# instance fields
.field private mAdapter:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;

.field private mCurrentAlbumId:J

.field private mCurrentAlbumName:Ljava/lang/String;

.field private mCurrentGenreId:J

.field private mCurrentGenreName:Ljava/lang/String;

.field private mGenreCursor:Landroid/database/Cursor;

.field private mIsStreamingEnabled:Z

.field private mList:Lcom/google/android/music/MusicExpandableListView;

.field private mListContainer:Landroid/view/View;

.field private mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

.field private mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

.field private mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

.field private mPlaybackServiceConnection:Landroid/content/ServiceConnection;

.field private mPlaybackServiceToken:Lcom/google/android/music/MusicUtils$ServiceToken;

.field private final mPopulateRespresentativeAlbum:Ljava/lang/Runnable;

.field private volatile mRepresentativeAlbumId:J

.field private mRestoreExpandedGroups:[I

.field private mRestoreScrollPos:I

.field private mStreamabilityChangeListener:Lcom/google/android/music/dl/IStreamabilityChangeListener;

.field private mTrackListListener:Landroid/content/BroadcastReceiver;

.field private mUpdateAllOfflineSelectedStatusesRunnable:Ljava/lang/Runnable;

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, -0x1

    .line 84
    const-string v0, "GenreAlbumBrowser"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/GenreAlbumBrowserActivity;->LOGV:Z

    .line 100
    sput v1, Lcom/google/android/music/GenreAlbumBrowserActivity;->mLastListPosCourse:I

    .line 101
    sput v1, Lcom/google/android/music/GenreAlbumBrowserActivity;->mLastListPosFine:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "base"

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/google/android/music/activitymanagement/MusicFragment;-><init>(Landroid/content/Context;)V

    .line 114
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mRepresentativeAlbumId:J

    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mRestoreExpandedGroups:[I

    .line 117
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mRestoreScrollPos:I

    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mIsStreamingEnabled:Z

    .line 354
    new-instance v0, Lcom/google/android/music/GenreAlbumBrowserActivity$2;

    invoke-direct {v0, p0}, Lcom/google/android/music/GenreAlbumBrowserActivity$2;-><init>(Lcom/google/android/music/GenreAlbumBrowserActivity;)V

    iput-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    .line 507
    new-instance v0, Lcom/google/android/music/GenreAlbumBrowserActivity$3;

    invoke-direct {v0, p0}, Lcom/google/android/music/GenreAlbumBrowserActivity$3;-><init>(Lcom/google/android/music/GenreAlbumBrowserActivity;)V

    iput-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mUpdateAllOfflineSelectedStatusesRunnable:Ljava/lang/Runnable;

    .line 570
    new-instance v0, Lcom/google/android/music/GenreAlbumBrowserActivity$5;

    invoke-direct {v0, p0}, Lcom/google/android/music/GenreAlbumBrowserActivity$5;-><init>(Lcom/google/android/music/GenreAlbumBrowserActivity;)V

    iput-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mPopulateRespresentativeAlbum:Ljava/lang/Runnable;

    .line 1180
    new-instance v0, Lcom/google/android/music/GenreAlbumBrowserActivity$6;

    invoke-direct {v0, p0}, Lcom/google/android/music/GenreAlbumBrowserActivity$6;-><init>(Lcom/google/android/music/GenreAlbumBrowserActivity;)V

    iput-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mPlaybackServiceConnection:Landroid/content/ServiceConnection;

    .line 1190
    new-instance v0, Lcom/google/android/music/GenreAlbumBrowserActivity$7;

    invoke-direct {v0, p0}, Lcom/google/android/music/GenreAlbumBrowserActivity$7;-><init>(Lcom/google/android/music/GenreAlbumBrowserActivity;)V

    iput-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mStreamabilityChangeListener:Lcom/google/android/music/dl/IStreamabilityChangeListener;

    .line 123
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/GenreAlbumBrowserActivity;)Lcom/google/android/music/MusicExpandableListView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mList:Lcom/google/android/music/MusicExpandableListView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/music/GenreAlbumBrowserActivity;)Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mAdapter:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/music/GenreAlbumBrowserActivity;)Landroid/database/Cursor;
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mGenreCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/google/android/music/GenreAlbumBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mGenreCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/google/android/music/GenreAlbumBrowserActivity;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/google/android/music/GenreAlbumBrowserActivity;->getGenreCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/android/music/GenreAlbumBrowserActivity;)[I
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mRestoreExpandedGroups:[I

    return-object v0
.end method

.method static synthetic access$1202(Lcom/google/android/music/GenreAlbumBrowserActivity;[I)[I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mRestoreExpandedGroups:[I

    return-object p1
.end method

.method static synthetic access$1300(Lcom/google/android/music/GenreAlbumBrowserActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mRestoreScrollPos:I

    return v0
.end method

.method static synthetic access$1302(Lcom/google/android/music/GenreAlbumBrowserActivity;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput p1, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mRestoreScrollPos:I

    return p1
.end method

.method static synthetic access$300(Lcom/google/android/music/GenreAlbumBrowserActivity;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 77
    iget-wide v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mRepresentativeAlbumId:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/google/android/music/GenreAlbumBrowserActivity;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-wide p1, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mRepresentativeAlbumId:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/google/android/music/GenreAlbumBrowserActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/google/android/music/GenreAlbumBrowserActivity;->requestReconfig()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/music/GenreAlbumBrowserActivity;)Lcom/google/android/music/OfflineMusicManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/music/GenreAlbumBrowserActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mIsStreamingEnabled:Z

    return v0
.end method

.method static synthetic access$702(Lcom/google/android/music/GenreAlbumBrowserActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mIsStreamingEnabled:Z

    return p1
.end method

.method static synthetic access$800()Z
    .registers 1

    .prologue
    .line 77
    sget-boolean v0, Lcom/google/android/music/GenreAlbumBrowserActivity;->LOGV:Z

    return v0
.end method

.method private getGenreCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .registers 9
    .parameter "filter"

    .prologue
    const/4 v4, 0x0

    .line 550
    if-eqz p1, :cond_f

    .line 551
    const-string v1, "GenreAlbumBrowser"

    const-string v2, "Filtering is not supported"

    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 554
    :cond_f
    new-instance v0, Lcom/google/android/music/AsyncCursor;

    invoke-static {v4}, Lcom/google/android/music/store/MusicContent$Genres;->getGenreUri(Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreQuery;->COLUMNS:[Ljava/lang/String;

    move-object v1, p0

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/music/AsyncCursor;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    .local v0, ret:Landroid/database/Cursor;
    return-object v0
.end method

.method private refreshRepresentativeAlbum()V
    .registers 3

    .prologue
    .line 566
    sget-object v0, Lcom/google/android/music/utils/async/AsyncWorkers;->sUIBackgroundWorker:Lcom/google/android/music/Worker;

    iget-object v1, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mPopulateRespresentativeAlbum:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/google/android/music/utils/async/AsyncWorkers;->runAsync(Lcom/google/android/music/Worker;Ljava/lang/Runnable;)V

    .line 568
    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .registers 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mView:Landroid/view/View;

    return-object v0
.end method

.method public hasCustomMenuOptions()Z
    .registers 2

    .prologue
    .line 230
    const/4 v0, 0x0

    return v0
.end method

.method public init(Landroid/database/Cursor;)V
    .registers 5
    .parameter "c"

    .prologue
    .line 373
    iget-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mAdapter:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;

    if-nez v0, :cond_11

    .line 374
    if-eqz p1, :cond_10

    .line 375
    const-string v0, "GenreAlbumBrowser"

    const-string v1, "null adapter, non-null cursor"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 391
    :cond_10
    :goto_10
    return-void

    .line 380
    :cond_11
    iget-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mAdapter:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 382
    iget-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mGenreCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_10

    .line 387
    sget v0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mLastListPosCourse:I

    if-ltz v0, :cond_10

    .line 388
    iget-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mList:Lcom/google/android/music/MusicExpandableListView;

    sget v1, Lcom/google/android/music/GenreAlbumBrowserActivity;->mLastListPosCourse:I

    sget v2, Lcom/google/android/music/GenreAlbumBrowserActivity;->mLastListPosFine:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/MusicExpandableListView;->setSelectionFromTop(II)V

    .line 389
    const/4 v0, -0x1

    sput v0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mLastListPosCourse:I

    goto :goto_10
.end method

.method public initializeState(Lcom/google/android/music/activitymanagement/MusicState;)V
    .registers 8
    .parameter "state"

    .prologue
    const-wide/16 v4, -0x1

    .line 181
    invoke-super {p0, p1}, Lcom/google/android/music/activitymanagement/MusicFragment;->initializeState(Lcom/google/android/music/activitymanagement/MusicState;)V

    .line 182
    invoke-virtual {p1, p0}, Lcom/google/android/music/activitymanagement/MusicState;->getSavedBundle(Lcom/google/android/music/activitymanagement/MusicFragment;)Landroid/os/Bundle;

    move-result-object v0

    .line 183
    .local v0, icicle:Landroid/os/Bundle;
    invoke-virtual {p1}, Lcom/google/android/music/activitymanagement/MusicState;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 184
    .local v1, launchIntent:Landroid/content/Intent;
    if-eqz v0, :cond_83

    .line 185
    const-string v2, "autoscrollGenreId"

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mCurrentGenreId:J

    .line 186
    const-string v2, "autoscrollGenreName"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mCurrentGenreName:Ljava/lang/String;

    .line 187
    const-string v2, "autoscrollAlbumId"

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mCurrentAlbumId:J

    .line 188
    const-string v2, "autoscrollAlbumName"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    .line 189
    sget-boolean v2, Lcom/google/android/music/GenreAlbumBrowserActivity;->LOGV:Z

    if-eqz v2, :cond_71

    const-string v2, "GenreAlbumBrowser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Restored Genre / album from icicle: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mCurrentGenreId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mCurrentGenreName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mCurrentAlbumId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_71
    const-string v2, "expandedGroups"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mRestoreExpandedGroups:[I

    .line 194
    const-string v2, "scrollPos"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mRestoreScrollPos:I

    .line 205
    :cond_82
    :goto_82
    return-void

    .line 197
    :cond_83
    const-string v2, "autoscrollGenreId"

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mCurrentGenreId:J

    .line 198
    const-string v2, "autoscrollAlbumName"

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mCurrentAlbumId:J

    .line 199
    sget-boolean v2, Lcom/google/android/music/GenreAlbumBrowserActivity;->LOGV:Z

    if-eqz v2, :cond_82

    const-string v2, "GenreAlbumBrowser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got Genre / album from launchIntent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mCurrentAlbumId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_82
.end method

.method public onActionBarConfig(Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;)V
    .registers 2
    .parameter "actionbarConfig"

    .prologue
    .line 219
    invoke-super {p0, p1}, Lcom/google/android/music/activitymanagement/MusicFragment;->onActionBarConfig(Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;)V

    .line 220
    return-void
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
    .line 502
    .local p1, albumIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mAdapter:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;

    if-eqz v0, :cond_9

    .line 503
    iget-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mUpdateAllOfflineSelectedStatusesRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/music/GenreAlbumBrowserActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 505
    :cond_9
    return-void
.end method

.method public onAvailableSpaceChanged(JJZ)V
    .registers 7
    .parameter "totalSpace"
    .parameter "freeSpace"
    .parameter "availabilityTransition"

    .prologue
    .line 267
    if-eqz p5, :cond_6

    .line 268
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/music/GenreAlbumBrowserActivity;->onAlbumChanged(Ljava/util/List;)V

    .line 270
    :cond_6
    return-void
.end method

.method public onBottomBarChanged()V
    .registers 6

    .prologue
    .line 239
    iget-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mListContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mListContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mListContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mListContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/music/GenreAlbumBrowserActivity;->getMusicUIController()Lcom/google/android/music/activitymanagement/MusicUIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/music/activitymanagement/MusicUIController;->getBottomBarHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 242
    return-void
.end method

.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .registers 15
    .parameter "parent"
    .parameter "v"
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "id"

    .prologue
    const-wide/16 v4, 0x0

    const/4 v7, 0x1

    .line 394
    iget-object v3, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mAdapter:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;

    invoke-virtual {v3}, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->notifyDataSetChanged()V

    .line 395
    iput-wide p5, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mCurrentAlbumId:J

    .line 397
    iget-object v3, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mAdapter:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;

    invoke-virtual {v3, p3, p4}, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->getChild(II)Landroid/database/Cursor;

    move-result-object v1

    .line 398
    .local v1, c:Landroid/database/Cursor;
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 401
    .local v0, album:Ljava/lang/String;
    cmp-long v3, p5, v4

    if-gez v3, :cond_45

    .line 403
    iget-object v3, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mGenreCursor:Landroid/database/Cursor;

    invoke-interface {v3, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 404
    iget-object v3, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mGenreCursor:Landroid/database/Cursor;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mCurrentGenreId:J

    .line 405
    iget-object v3, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mGenreCursor:Landroid/database/Cursor;

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mCurrentGenreName:Ljava/lang/String;

    .line 406
    new-instance v2, Lcom/google/android/music/medialist/GenreSongList;

    iget-wide v3, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mCurrentGenreId:J

    iget-object v5, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mCurrentGenreName:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v6}, Lcom/google/android/music/jumper/MusicPreferences;->getGenreSongsSortOrder()I

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/android/music/medialist/GenreSongList;-><init>(JLjava/lang/String;I)V

    .line 416
    .local v2, mediaList:Lcom/google/android/music/medialist/MediaList;
    :goto_3d
    invoke-virtual {p0}, Lcom/google/android/music/GenreAlbumBrowserActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/music/activitymanagement/MusicStateController;->startTrackListing(Lcom/google/android/music/medialist/MediaList;)V

    .line 417
    .end local v2           #mediaList:Lcom/google/android/music/medialist/MediaList;
    :goto_44
    return v7

    .line 408
    :cond_45
    cmp-long v3, p5, v4

    if-ltz v3, :cond_4f

    .line 409
    new-instance v2, Lcom/google/android/music/medialist/AlbumSongList;

    invoke-direct {v2, p5, p6}, Lcom/google/android/music/medialist/AlbumSongList;-><init>(J)V

    .restart local v2       #mediaList:Lcom/google/android/music/medialist/MediaList;
    goto :goto_3d

    .line 411
    .end local v2           #mediaList:Lcom/google/android/music/medialist/MediaList;
    :cond_4f
    const-string v3, "GenreAlbumBrowser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Album ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") was not unknown but id ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") was < 0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_44
.end method

.method public onCreate()V
    .registers 13

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 128
    invoke-super {p0}, Lcom/google/android/music/activitymanagement/MusicFragment;->onCreate()V

    .line 130
    invoke-static {p0, p0}, Lcom/google/android/music/jumper/MusicPreferences;->getMusicPreferences(Landroid/content/Context;Ljava/lang/Object;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    .line 131
    iget-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v0}, Lcom/google/android/music/jumper/MusicPreferences;->isTabletMusic()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 132
    const-string v0, "GenreAlbumBrowser"

    const-string v1, "GenreAlbumBrowserActivity called on XLarge screen"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_1b
    iget-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mPlaybackServiceConnection:Landroid/content/ServiceConnection;

    invoke-static {p0, v0}, Lcom/google/android/music/MusicUtils;->bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;)Lcom/google/android/music/MusicUtils$ServiceToken;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mPlaybackServiceToken:Lcom/google/android/music/MusicUtils$ServiceToken;

    .line 136
    new-instance v0, Lcom/google/android/music/NetworkMonitorServiceConnection;

    iget-object v1, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mStreamabilityChangeListener:Lcom/google/android/music/dl/IStreamabilityChangeListener;

    invoke-direct {v0, v1}, Lcom/google/android/music/NetworkMonitorServiceConnection;-><init>(Lcom/google/android/music/dl/IStreamabilityChangeListener;)V

    iput-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

    .line 139
    const v0, 0x7f040021

    invoke-virtual {p0, v0}, Lcom/google/android/music/GenreAlbumBrowserActivity;->inflateView(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mView:Landroid/view/View;

    .line 140
    iget-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mView:Landroid/view/View;

    const v1, 0x7f10006d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mListContainer:Landroid/view/View;

    .line 142
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/google/android/music/GenreAlbumBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/MusicExpandableListView;

    iput-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mList:Lcom/google/android/music/MusicExpandableListView;

    .line 143
    iget-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mList:Lcom/google/android/music/MusicExpandableListView;

    invoke-virtual {v0, p0}, Lcom/google/android/music/MusicExpandableListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 144
    iget-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mList:Lcom/google/android/music/MusicExpandableListView;

    invoke-virtual {v0, v3}, Lcom/google/android/music/MusicExpandableListView;->setTextFilterEnabled(Z)V

    .line 145
    iget-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mList:Lcom/google/android/music/MusicExpandableListView;

    invoke-virtual {v0, v3}, Lcom/google/android/music/MusicExpandableListView;->setCacheColorHint(I)V

    .line 146
    iget-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mList:Lcom/google/android/music/MusicExpandableListView;

    invoke-virtual {v0, p0}, Lcom/google/android/music/MusicExpandableListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 148
    iget-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mList:Lcom/google/android/music/MusicExpandableListView;

    invoke-virtual {v0, p0}, Lcom/google/android/music/MusicExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 150
    invoke-static {}, Lcom/google/android/music/jumper/MusicPreferences;->isICSOrGreater()Z

    move-result v0

    if-eqz v0, :cond_81

    .line 151
    iget-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mList:Lcom/google/android/music/MusicExpandableListView;

    invoke-virtual {v0, v2}, Lcom/google/android/music/MusicExpandableListView;->setVerticalScrollBarEnabled(Z)V

    .line 152
    iget-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mList:Lcom/google/android/music/MusicExpandableListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/music/MusicExpandableListView;->setVerticalScrollbarPosition(I)V

    .line 153
    iget-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mList:Lcom/google/android/music/MusicExpandableListView;

    const/high16 v1, 0x100

    invoke-virtual {v0, v1}, Lcom/google/android/music/MusicExpandableListView;->setScrollBarStyle(I)V

    .line 156
    iget-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mList:Lcom/google/android/music/MusicExpandableListView;

    invoke-virtual {v0, v2}, Lcom/google/android/music/MusicExpandableListView;->setFastScrollAlwaysVisible(Z)V

    .line 159
    :cond_81
    new-instance v0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;

    invoke-virtual {p0}, Lcom/google/android/music/GenreAlbumBrowserActivity;->getApplication()Landroid/content/Context;

    move-result-object v2

    const v5, 0x7f04001c

    new-array v6, v3, [Ljava/lang/String;

    new-array v7, v3, [I

    const v8, 0x7f04001a

    new-array v9, v3, [Ljava/lang/String;

    new-array v10, v3, [I

    move-object v1, p0

    move-object v3, p0

    invoke-direct/range {v0 .. v10}, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;-><init>(Lcom/google/android/music/GenreAlbumBrowserActivity;Landroid/content/Context;Lcom/google/android/music/GenreAlbumBrowserActivity;Landroid/database/Cursor;I[Ljava/lang/String;[II[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mAdapter:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;

    .line 169
    iget-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mList:Lcom/google/android/music/MusicExpandableListView;

    iget-object v1, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mAdapter:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;

    invoke-virtual {v0, v1}, Lcom/google/android/music/MusicExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 170
    iget-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mList:Lcom/google/android/music/MusicExpandableListView;

    iget-object v1, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mAdapter:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;

    invoke-virtual {v0, v1}, Lcom/google/android/music/MusicExpandableListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 171
    invoke-direct {p0, v4}, Lcom/google/android/music/GenreAlbumBrowserActivity;->getGenreCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 172
    .local v11, c:Landroid/database/Cursor;
    invoke-virtual {p0, v11}, Lcom/google/android/music/GenreAlbumBrowserActivity;->init(Landroid/database/Cursor;)V

    .line 174
    iget-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

    invoke-virtual {v0, p0}, Lcom/google/android/music/NetworkMonitorServiceConnection;->bindToService(Landroid/content/Context;)V

    .line 175
    return-void
.end method

.method public onCreateContextMusicMenu(Landroid/view/View;)V
    .registers 28
    .parameter "view"

    .prologue
    .line 437
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mList:Lcom/google/android/music/MusicExpandableListView;

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Lcom/google/android/music/MusicExpandableListView;->getPositionForView(Landroid/view/View;)I

    move-result v21

    .line 438
    .local v21, flatListPosition:I
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mList:Lcom/google/android/music/MusicExpandableListView;

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Lcom/google/android/music/MusicExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v24

    .line 439
    .local v24, packedPosition:J
    invoke-static/range {v24 .. v25}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v23

    .line 440
    .local v23, itemtype:I
    invoke-static/range {v24 .. v25}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v22

    .line 441
    .local v22, gpos:I
    invoke-static/range {v24 .. v25}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v20

    .line 444
    .local v20, cpos:I
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mList:Lcom/google/android/music/MusicExpandableListView;

    invoke-virtual {v7}, Lcom/google/android/music/MusicExpandableListView;->getHeaderViewsCount()I

    move-result v7

    sub-int v22, v22, v7

    .line 445
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mGenreCursor:Landroid/database/Cursor;

    move/from16 v0, v22

    invoke-interface {v7, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 446
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mGenreCursor:Landroid/database/Cursor;

    const/4 v14, 0x0

    invoke-interface {v7, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 447
    .local v3, genreId:J
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mGenreCursor:Landroid/database/Cursor;

    const/4 v14, 0x1

    invoke-interface {v7, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 448
    .local v5, genreName:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/google/android/music/utils/ContextMenuManager;->getPopupLocation(Landroid/view/View;)[I

    move-result-object v6

    .line 450
    .local v6, location:[I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/GenreAlbumBrowserActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/music/activitymanagement/MusicStateController;->getContextMenuManager()Lcom/google/android/music/utils/ContextMenuManager;

    move-result-object v2

    .line 452
    .local v2, contextMenuManager:Lcom/google/android/music/utils/ContextMenuManager;
    if-nez v23, :cond_69

    .line 453
    const/4 v7, -0x1

    move/from16 v0, v22

    if-ne v0, v7, :cond_60

    .line 455
    const-string v7, "GenreAlbumBrowser"

    const-string v14, "no group"

    invoke-static {v7, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    :cond_5f
    :goto_5f
    return-void

    .line 459
    :cond_60
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v7

    const/4 v8, 0x2

    invoke-virtual/range {v2 .. v8}, Lcom/google/android/music/utils/ContextMenuManager;->showGenreContextMenu(JLjava/lang/String;[ILandroid/view/View;I)V

    goto :goto_5f

    .line 462
    :cond_69
    const/4 v7, 0x1

    move/from16 v0, v23

    if-ne v0, v7, :cond_5f

    .line 463
    const/4 v7, -0x1

    move/from16 v0, v20

    if-ne v0, v7, :cond_7b

    .line 465
    const-string v7, "GenreAlbumBrowser"

    const-string v14, "no child"

    invoke-static {v7, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5f

    .line 468
    :cond_7b
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mAdapter:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;

    move/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v7, v0, v1}, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->getChild(II)Landroid/database/Cursor;

    move-result-object v19

    .line 469
    .local v19, c:Landroid/database/Cursor;
    invoke-interface/range {v19 .. v20}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 471
    const/4 v7, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 473
    .local v8, albumId:J
    const-wide/16 v14, -0x1

    cmp-long v7, v8, v14

    if-nez v7, :cond_a0

    .line 474
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v7

    const/4 v8, 0x2

    invoke-virtual/range {v2 .. v8}, Lcom/google/android/music/utils/ContextMenuManager;->showAllSongsForGenreContextMenu(JLjava/lang/String;[ILandroid/view/View;I)V

    goto :goto_5f

    .line 477
    :cond_a0
    const/4 v7, 0x1

    move-object/from16 v0, v19

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 478
    .local v10, albumName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mList:Lcom/google/android/music/MusicExpandableListView;

    invoke-virtual {v7}, Lcom/google/android/music/MusicExpandableListView;->getHeaderViewsCount()I

    move-result v7

    sub-int v22, v22, v7

    .line 479
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mGenreCursor:Landroid/database/Cursor;

    move/from16 v0, v22

    invoke-interface {v7, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 480
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mGenreCursor:Landroid/database/Cursor;

    const/4 v14, 0x1

    invoke-interface {v7, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 482
    .local v13, artistNameForAlbum:Ljava/lang/String;
    const/4 v7, 0x6

    move-object/from16 v0, v19

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const/4 v14, 0x1

    if-ne v7, v14, :cond_ee

    const/16 v17, 0x1

    .line 483
    .local v17, hasRemote:Z
    :goto_cf
    const/4 v7, 0x4

    move-object/from16 v0, v19

    invoke-interface {v0, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-nez v7, :cond_f1

    const/16 v18, 0x1

    .line 484
    .local v18, isKept:Z
    :goto_da
    const/4 v7, 0x2

    move-object/from16 v0, v19

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 485
    .local v11, artistId:J
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v14

    const/16 v16, 0x2

    move-object v7, v2

    move-object v15, v6

    invoke-virtual/range {v7 .. v18}, Lcom/google/android/music/utils/ContextMenuManager;->showAlbumContextMenu(JLjava/lang/String;JLjava/lang/String;Landroid/view/View;[IIZZ)V

    goto/16 :goto_5f

    .line 482
    .end local v11           #artistId:J
    .end local v17           #hasRemote:Z
    .end local v18           #isKept:Z
    :cond_ee
    const/16 v17, 0x0

    goto :goto_cf

    .line 483
    .restart local v17       #hasRemote:Z
    :cond_f1
    const/16 v18, 0x0

    goto :goto_da
.end method

.method public onDestroy()V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 294
    iget-object v3, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mList:Lcom/google/android/music/MusicExpandableListView;

    if-eqz v3, :cond_1c

    .line 295
    iget-object v3, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mList:Lcom/google/android/music/MusicExpandableListView;

    invoke-virtual {v3}, Lcom/google/android/music/MusicExpandableListView;->getFirstVisiblePosition()I

    move-result v3

    sput v3, Lcom/google/android/music/GenreAlbumBrowserActivity;->mLastListPosCourse:I

    .line 296
    iget-object v3, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mList:Lcom/google/android/music/MusicExpandableListView;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/google/android/music/MusicExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 297
    .local v2, cv:Landroid/view/View;
    if-eqz v2, :cond_1c

    .line 298
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    sput v3, Lcom/google/android/music/GenreAlbumBrowserActivity;->mLastListPosFine:I

    .line 302
    .end local v2           #cv:Landroid/view/View;
    :cond_1c
    iget-object v3, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mPlaybackServiceToken:Lcom/google/android/music/MusicUtils$ServiceToken;

    invoke-static {v3}, Lcom/google/android/music/MusicUtils;->unbindFromService(Lcom/google/android/music/MusicUtils$ServiceToken;)V

    .line 303
    iget-object v3, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

    invoke-virtual {v3, p0}, Lcom/google/android/music/NetworkMonitorServiceConnection;->unbindFromService(Landroid/content/Context;)V

    .line 309
    iget-object v3, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mAdapter:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;

    if-eqz v3, :cond_3d

    .line 310
    iget-object v3, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mAdapter:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;

    invoke-virtual {v3}, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 311
    .local v1, c:Landroid/database/Cursor;
    iget-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mAdapter:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;

    .line 315
    .local v0, adapter:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;
    invoke-virtual {v0, v4}, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 318
    new-instance v3, Lcom/google/android/music/GenreAlbumBrowserActivity$1;

    invoke-direct {v3, p0, v1}, Lcom/google/android/music/GenreAlbumBrowserActivity$1;-><init>(Lcom/google/android/music/GenreAlbumBrowserActivity;Landroid/database/Cursor;)V

    invoke-static {v3}, Lcom/google/android/music/MusicUtils;->runAsync(Ljava/lang/Runnable;)V

    .line 329
    .end local v0           #adapter:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;
    .end local v1           #c:Landroid/database/Cursor;
    :cond_3d
    iget-object v5, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mList:Lcom/google/android/music/MusicExpandableListView;

    move-object v3, v4

    check-cast v3, Landroid/widget/ExpandableListAdapter;

    invoke-virtual {v5, v3}, Lcom/google/android/music/MusicExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 330
    iput-object v4, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mAdapter:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;

    .line 332
    invoke-static {p0}, Lcom/google/android/music/jumper/MusicPreferences;->releaseMusicPreferences(Ljava/lang/Object;)V

    .line 333
    invoke-super {p0}, Lcom/google/android/music/activitymanagement/MusicFragment;->onDestroy()V

    .line 334
    return-void
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
    .line 432
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0, p2}, Lcom/google/android/music/GenreAlbumBrowserActivity;->onCreateContextMusicMenu(Landroid/view/View;)V

    .line 433
    const/4 v0, 0x1

    return v0
.end method

.method public onLayoutConfig(Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;)V
    .registers 6
    .parameter "layoutConfig"

    .prologue
    .line 209
    invoke-super {p0, p1}, Lcom/google/android/music/activitymanagement/MusicFragment;->onLayoutConfig(Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;)V

    .line 210
    sget-object v0, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;->MUSIC:Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;

    invoke-virtual {p1, v0}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->setNoMusicView(Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;)V

    .line 211
    const v0, 0x7f0d004c

    invoke-virtual {p0, v0}, Lcom/google/android/music/GenreAlbumBrowserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->setTitle(Ljava/lang/CharSequence;)V

    .line 212
    iget-wide v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mRepresentativeAlbumId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1f

    .line 213
    iget-wide v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mRepresentativeAlbumId:J

    invoke-virtual {p1, v0, v1}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->setFocusedAlbumId(J)V

    .line 215
    :cond_1f
    return-void
.end method

.method public onManageMusicModeChanged(ZLcom/google/android/music/OfflineMusicManager;)V
    .registers 4
    .parameter "inManageMusicMode"
    .parameter "offlineMusicManager"

    .prologue
    .line 247
    iget-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    if-eq v0, p2, :cond_22

    .line 248
    iget-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    if-eqz v0, :cond_12

    .line 249
    iget-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    invoke-virtual {v0, p0}, Lcom/google/android/music/OfflineMusicManager;->unregisterAlbumChangeListener(Lcom/google/android/music/OfflineMusicManager$AlbumChangedListener;)V

    .line 250
    iget-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    invoke-virtual {v0, p0}, Lcom/google/android/music/OfflineMusicManager;->removeAvailableSpaceChangedListener(Lcom/google/android/music/OfflineMusicManager$AvailableSpaceChangedListener;)V

    .line 253
    :cond_12
    iput-object p2, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    .line 254
    iget-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    if-eqz v0, :cond_22

    .line 255
    iget-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    invoke-virtual {v0, p0}, Lcom/google/android/music/OfflineMusicManager;->registerAlbumChangeListener(Lcom/google/android/music/OfflineMusicManager$AlbumChangedListener;)V

    .line 256
    iget-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    invoke-virtual {v0, p0}, Lcom/google/android/music/OfflineMusicManager;->addAvailableSpaceChangeListener(Lcom/google/android/music/OfflineMusicManager$AvailableSpaceChangedListener;)V

    .line 260
    :cond_22
    iget-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mAdapter:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;

    if-eqz v0, :cond_2b

    .line 261
    iget-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mAdapter:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;

    invoke-virtual {v0}, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->notifyDataSetChanged()V

    .line 263
    :cond_2b
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 364
    iget-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/google/android/music/GenreAlbumBrowserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 366
    invoke-virtual {p0}, Lcom/google/android/music/GenreAlbumBrowserActivity;->getMusicUIController()Lcom/google/android/music/activitymanagement/MusicUIController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/music/activitymanagement/MusicUIController;->unregisterBottomBarChangeListener(Lcom/google/android/music/BottomBarChangeListener;)V

    .line 367
    invoke-virtual {p0}, Lcom/google/android/music/GenreAlbumBrowserActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/music/activitymanagement/MusicStateController;->unregisterManageMusicModeListener(Lcom/google/android/music/activitymanagement/TopLevelActivity$ManageMusicModeListener;)V

    .line 368
    invoke-super {p0}, Lcom/google/android/music/activitymanagement/MusicFragment;->onPause()V

    .line 369
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 338
    invoke-super {p0}, Lcom/google/android/music/activitymanagement/MusicFragment;->onResume()V

    .line 339
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 340
    .local v0, f:Landroid/content/IntentFilter;
    const-string v1, "com.android.music.playstatechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 341
    const-string v1, "com.android.music.metachanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 342
    const-string v1, "com.android.music.queuechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 343
    iget-object v1, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/music/GenreAlbumBrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 344
    iget-object v1, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mList:Lcom/google/android/music/MusicExpandableListView;

    invoke-virtual {v1}, Lcom/google/android/music/MusicExpandableListView;->invalidateViews()V

    .line 346
    invoke-virtual {p0}, Lcom/google/android/music/GenreAlbumBrowserActivity;->getMusicUIController()Lcom/google/android/music/activitymanagement/MusicUIController;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/android/music/activitymanagement/MusicUIController;->registerBottomBarChangeListener(Lcom/google/android/music/BottomBarChangeListener;)V

    .line 347
    invoke-virtual {p0}, Lcom/google/android/music/GenreAlbumBrowserActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/android/music/activitymanagement/MusicStateController;->registerManageMusicModeListener(Lcom/google/android/music/activitymanagement/TopLevelActivity$ManageMusicModeListener;)V

    .line 349
    iget-object v1, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mAdapter:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;

    if-eqz v1, :cond_38

    .line 350
    iget-object v1, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mAdapter:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;

    invoke-virtual {v1}, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->notifyDataSetChanged()V

    .line 352
    :cond_38
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 7
    .parameter "outcicle"

    .prologue
    .line 278
    const-string v2, "autoscrollAlbumId"

    iget-wide v3, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mCurrentAlbumId:J

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 279
    const-string v2, "autoscrollAlbumName"

    iget-object v3, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    const-string v2, "autoscrollGenreId"

    iget-wide v3, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mCurrentGenreId:J

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 281
    const-string v2, "autoscrollGenreName"

    iget-object v3, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mCurrentGenreName:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    iget-object v2, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mList:Lcom/google/android/music/MusicExpandableListView;

    invoke-virtual {v2}, Lcom/google/android/music/MusicExpandableListView;->getExpandedPositions()Ljava/util/Set;

    move-result-object v1

    .line 284
    .local v1, expandedPositions:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    if-eqz v1, :cond_33

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_33

    .line 285
    invoke-static {v1}, Lcom/google/android/music/MusicUtils;->toArray(Ljava/util/Collection;)[I

    move-result-object v0

    .line 286
    .local v0, arr:[I
    const-string v2, "expandedGroups"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 288
    .end local v0           #arr:[I
    :cond_33
    const-string v2, "scrollPos"

    iget-object v3, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mList:Lcom/google/android/music/MusicExpandableListView;

    invoke-virtual {v3}, Lcom/google/android/music/MusicExpandableListView;->getFirstVisiblePosition()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 289
    invoke-super {p0, p1}, Lcom/google/android/music/activitymanagement/MusicFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 290
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 5
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 1209
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 3
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 1212
    if-nez p2, :cond_5

    .line 1213
    invoke-direct {p0}, Lcom/google/android/music/GenreAlbumBrowserActivity;->refreshRepresentativeAlbum()V

    .line 1215
    :cond_5
    return-void
.end method
