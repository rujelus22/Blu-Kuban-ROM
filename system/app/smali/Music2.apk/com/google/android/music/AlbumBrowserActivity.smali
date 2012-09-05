.class public Lcom/google/android/music/AlbumBrowserActivity;
.super Lcom/google/android/music/activitymanagement/MusicFragment;
.source "AlbumBrowserActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Lcom/google/android/music/OfflineMusicManager$AlbumChangedListener;
.implements Lcom/google/android/music/OfflineMusicManager$AvailableSpaceChangedListener;
.implements Lcom/google/android/music/activitymanagement/TopLevelActivity$ManageMusicModeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;,
        Lcom/google/android/music/AlbumBrowserActivity$CheckBoxClickListener;
    }
.end annotation


# static fields
.field private static final LOGV:Z

.field private static final mCursorCols:[Ljava/lang/String;

.field private static mLastListPosCourse:I

.field private static mLastListPosFine:I


# instance fields
.field private mAdapter:Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;

.field private mAlbumCursor:Landroid/database/Cursor;

.field private mAlbumList:Landroid/widget/ListView;

.field private mArtistId:J

.field private mBottomBarChangeListener:Lcom/google/android/music/BottomBarChangeListener;

.field private mCurrentAlbumId:J

.field private mFragmentTitle:Ljava/lang/CharSequence;

.field private mIsStreamingEnabled:Z

.field private mListContainer:Landroid/view/View;

.field private mMediaList:Lcom/google/android/music/medialist/AlbumList;

.field private mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

.field private mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

.field private mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

.field private mPlaybackServiceConnection:Landroid/content/ServiceConnection;

.field private mRestoreScrollPos:I

.field private mStreamabilityChangeListener:Lcom/google/android/music/dl/IStreamabilityChangeListener;

.field private mToken:Lcom/google/android/music/MusicUtils$ServiceToken;

.field private mTrackListListener:Landroid/content/BroadcastReceiver;

.field private mUpdateAllOfflineSelectedStatusesRunnable:Ljava/lang/Runnable;

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v1, -0x1

    .line 74
    const-string v0, "AlbumBrowser"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/AlbumBrowserActivity;->LOGV:Z

    .line 85
    sput v1, Lcom/google/android/music/AlbumBrowserActivity;->mLastListPosCourse:I

    .line 86
    sput v1, Lcom/google/android/music/AlbumBrowserActivity;->mLastListPosFine:I

    .line 94
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "album"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "artist"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "artist_id"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "KeepOnId"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "hasLocal"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "hasRemote"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/music/AlbumBrowserActivity;->mCursorCols:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "base"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/google/android/music/activitymanagement/MusicFragment;-><init>(Landroid/content/Context;)V

    .line 92
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mRestoreScrollPos:I

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mFragmentTitle:Ljava/lang/CharSequence;

    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mIsStreamingEnabled:Z

    .line 219
    new-instance v0, Lcom/google/android/music/AlbumBrowserActivity$1;

    invoke-direct {v0, p0}, Lcom/google/android/music/AlbumBrowserActivity$1;-><init>(Lcom/google/android/music/AlbumBrowserActivity;)V

    iput-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mBottomBarChangeListener:Lcom/google/android/music/BottomBarChangeListener;

    .line 334
    new-instance v0, Lcom/google/android/music/AlbumBrowserActivity$3;

    invoke-direct {v0, p0}, Lcom/google/android/music/AlbumBrowserActivity$3;-><init>(Lcom/google/android/music/AlbumBrowserActivity;)V

    iput-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    .line 428
    new-instance v0, Lcom/google/android/music/AlbumBrowserActivity$4;

    invoke-direct {v0, p0}, Lcom/google/android/music/AlbumBrowserActivity$4;-><init>(Lcom/google/android/music/AlbumBrowserActivity;)V

    iput-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mUpdateAllOfflineSelectedStatusesRunnable:Ljava/lang/Runnable;

    .line 752
    new-instance v0, Lcom/google/android/music/AlbumBrowserActivity$5;

    invoke-direct {v0, p0}, Lcom/google/android/music/AlbumBrowserActivity$5;-><init>(Lcom/google/android/music/AlbumBrowserActivity;)V

    iput-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mPlaybackServiceConnection:Landroid/content/ServiceConnection;

    .line 827
    new-instance v0, Lcom/google/android/music/AlbumBrowserActivity$6;

    invoke-direct {v0, p0}, Lcom/google/android/music/AlbumBrowserActivity$6;-><init>(Lcom/google/android/music/AlbumBrowserActivity;)V

    iput-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mStreamabilityChangeListener:Lcom/google/android/music/dl/IStreamabilityChangeListener;

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/AlbumBrowserActivity;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mListContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/music/AlbumBrowserActivity;)Landroid/database/Cursor;
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/google/android/music/AlbumBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$102(Lcom/google/android/music/AlbumBrowserActivity;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/google/android/music/AlbumBrowserActivity;->mFragmentTitle:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/google/android/music/AlbumBrowserActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mRestoreScrollPos:I

    return v0
.end method

.method static synthetic access$1102(Lcom/google/android/music/AlbumBrowserActivity;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput p1, p0, Lcom/google/android/music/AlbumBrowserActivity;->mRestoreScrollPos:I

    return p1
.end method

.method static synthetic access$1200(Lcom/google/android/music/AlbumBrowserActivity;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/google/android/music/AlbumBrowserActivity;->getAlbumCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/music/AlbumBrowserActivity;)Lcom/google/android/music/medialist/AlbumList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/AlbumList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/music/AlbumBrowserActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/google/android/music/AlbumBrowserActivity;->requestReconfig()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/music/AlbumBrowserActivity;)Landroid/widget/ListView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAlbumList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/music/AlbumBrowserActivity;)Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAdapter:Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/music/AlbumBrowserActivity;)Lcom/google/android/music/OfflineMusicManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/music/AlbumBrowserActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mIsStreamingEnabled:Z

    return v0
.end method

.method static synthetic access$902(Lcom/google/android/music/AlbumBrowserActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/google/android/music/AlbumBrowserActivity;->mIsStreamingEnabled:Z

    return p1
.end method

.method private getAlbumCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .registers 4
    .parameter "filter"

    .prologue
    .line 437
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/AlbumList;

    sget-object v1, Lcom/google/android/music/AlbumBrowserActivity;->mCursorCols:[Ljava/lang/String;

    invoke-virtual {v0, p0, v1, p1}, Lcom/google/android/music/medialist/AlbumList;->getCursor(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/music/medialist/MediaList$MediaCursor;

    move-result-object v0

    return-object v0
.end method

.method private setTitle()V
    .registers 3

    .prologue
    .line 231
    move-object v0, p0

    .line 233
    .local v0, context:Landroid/content/Context;
    new-instance v1, Lcom/google/android/music/AlbumBrowserActivity$2;

    invoke-direct {v1, p0, v0}, Lcom/google/android/music/AlbumBrowserActivity$2;-><init>(Lcom/google/android/music/AlbumBrowserActivity;Landroid/content/Context;)V

    invoke-static {v1}, Lcom/google/android/music/MusicUtils;->runAsyncWithCallback(Lcom/google/android/music/utils/async/AsyncRunner;)V

    .line 243
    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .registers 2

    .prologue
    .line 249
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mView:Landroid/view/View;

    return-object v0
.end method

.method public hasCustomMenuOptions()Z
    .registers 2

    .prologue
    .line 415
    const/4 v0, 0x1

    return v0
.end method

.method public init(Landroid/database/Cursor;)V
    .registers 5
    .parameter "c"

    .prologue
    .line 352
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAdapter:Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;

    if-nez v0, :cond_5

    .line 368
    :cond_4
    :goto_4
    return-void

    .line 355
    :cond_5
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAdapter:Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 357
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_4

    .line 362
    sget v0, Lcom/google/android/music/AlbumBrowserActivity;->mLastListPosCourse:I

    if-ltz v0, :cond_1e

    .line 363
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAlbumList:Landroid/widget/ListView;

    sget v1, Lcom/google/android/music/AlbumBrowserActivity;->mLastListPosCourse:I

    sget v2, Lcom/google/android/music/AlbumBrowserActivity;->mLastListPosFine:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 364
    const/4 v0, -0x1

    sput v0, Lcom/google/android/music/AlbumBrowserActivity;->mLastListPosCourse:I

    .line 367
    :cond_1e
    invoke-direct {p0}, Lcom/google/android/music/AlbumBrowserActivity;->setTitle()V

    goto :goto_4
.end method

.method public initializeState(Lcom/google/android/music/activitymanagement/MusicState;)V
    .registers 15
    .parameter "state"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    const-wide/16 v4, -0x1

    .line 140
    invoke-super {p0, p1}, Lcom/google/android/music/activitymanagement/MusicFragment;->initializeState(Lcom/google/android/music/activitymanagement/MusicState;)V

    .line 142
    invoke-virtual {p1, p0}, Lcom/google/android/music/activitymanagement/MusicState;->getSavedBundle(Lcom/google/android/music/activitymanagement/MusicFragment;)Landroid/os/Bundle;

    move-result-object v10

    .line 143
    .local v10, icicle:Landroid/os/Bundle;
    invoke-virtual {p1}, Lcom/google/android/music/activitymanagement/MusicState;->getIntent()Landroid/content/Intent;

    move-result-object v11

    .line 144
    .local v11, intent:Landroid/content/Intent;
    sget-boolean v0, Lcom/google/android/music/AlbumBrowserActivity;->LOGV:Z

    if-eqz v0, :cond_2b

    const-string v0, "AlbumBrowser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate: intent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_2b
    sget-boolean v0, Lcom/google/android/music/AlbumBrowserActivity;->LOGV:Z

    if-eqz v0, :cond_4b

    const-string v0, "AlbumBrowser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  - extras: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v11}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_4b
    if-eqz v10, :cond_147

    .line 148
    const-string v0, "selectedAlbumId"

    invoke-virtual {v10, v0, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mCurrentAlbumId:J

    .line 149
    const-string v0, "albumArtistId"

    invoke-virtual {v10, v0, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mArtistId:J

    .line 150
    sget-boolean v0, Lcom/google/android/music/AlbumBrowserActivity;->LOGV:Z

    if-eqz v0, :cond_87

    const-string v0, "AlbumBrowser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Restored artist / album from icicle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/music/AlbumBrowserActivity;->mArtistId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/music/AlbumBrowserActivity;->mCurrentAlbumId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_87
    const-string v0, "scrollPos"

    const/4 v1, -0x1

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mRestoreScrollPos:I

    .line 161
    :cond_90
    :goto_90
    if-eqz v10, :cond_183

    .line 162
    const-string v0, "medialist"

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/medialist/AlbumList;

    iput-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/AlbumList;

    .line 166
    :goto_9c
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/AlbumList;

    if-nez v0, :cond_ad

    .line 167
    iget-wide v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mArtistId:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_18f

    .line 168
    new-instance v0, Lcom/google/android/music/medialist/AllAlbumsList;

    invoke-direct {v0}, Lcom/google/android/music/medialist/AllAlbumsList;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/AlbumList;

    .line 174
    :cond_ad
    :goto_ad
    iget-boolean v12, p1, Lcom/google/android/music/activitymanagement/MusicState;->mInTab:Z

    .line 176
    .local v12, isSubView:Z
    if-eqz v12, :cond_19a

    .line 177
    const v0, 0x7f040020

    invoke-virtual {p0, v0}, Lcom/google/android/music/AlbumBrowserActivity;->inflateView(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mView:Landroid/view/View;

    .line 182
    :goto_ba
    const v0, 0x7f10006d

    invoke-virtual {p0, v0}, Lcom/google/android/music/AlbumBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mListContainer:Landroid/view/View;

    .line 183
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mView:Landroid/view/View;

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAlbumList:Landroid/widget/ListView;

    .line 184
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAlbumList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 185
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAlbumList:Landroid/widget/ListView;

    invoke-virtual {v0, v7}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 186
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAlbumList:Landroid/widget/ListView;

    invoke-virtual {v0, v7}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 187
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAlbumList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 188
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAlbumList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 190
    const v0, 0x7f10000b

    invoke-virtual {p0, v0}, Lcom/google/android/music/AlbumBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 191
    .local v8, albumInfo:Landroid/view/View;
    if-eqz v8, :cond_f7

    .line 192
    const/16 v0, 0x8

    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    .line 195
    :cond_f7
    invoke-static {}, Lcom/google/android/music/jumper/MusicPreferences;->isICSOrGreater()Z

    move-result v0

    if-eqz v0, :cond_11a

    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/AlbumList;

    instance-of v0, v0, Lcom/google/android/music/medialist/AllAlbumsList;

    if-eqz v0, :cond_11a

    .line 196
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAlbumList:Landroid/widget/ListView;

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 197
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAlbumList:Landroid/widget/ListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVerticalScrollbarPosition(I)V

    .line 198
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAlbumList:Landroid/widget/ListView;

    const/high16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    .line 201
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAlbumList:Landroid/widget/ListView;

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setFastScrollAlwaysVisible(Z)V

    .line 204
    :cond_11a
    new-instance v0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;

    invoke-virtual {p0}, Lcom/google/android/music/AlbumBrowserActivity;->getApplication()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f040019

    iget-object v5, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    new-array v6, v7, [Ljava/lang/String;

    new-array v7, v7, [I

    move-object v1, p0

    move-object v3, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;-><init>(Lcom/google/android/music/AlbumBrowserActivity;Landroid/content/Context;Lcom/google/android/music/AlbumBrowserActivity;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAdapter:Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;

    .line 212
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAlbumList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAdapter:Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 213
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAlbumList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAdapter:Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 215
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/music/AlbumBrowserActivity;->getAlbumCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 216
    .local v9, c:Landroid/database/Cursor;
    invoke-virtual {p0, v9}, Lcom/google/android/music/AlbumBrowserActivity;->init(Landroid/database/Cursor;)V

    .line 217
    return-void

    .line 155
    .end local v8           #albumInfo:Landroid/view/View;
    .end local v9           #c:Landroid/database/Cursor;
    .end local v12           #isSubView:Z
    :cond_147
    const-string v0, "albumArtistId"

    invoke-virtual {v11, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mArtistId:J

    .line 156
    const-string v0, "selectedAlbumId"

    invoke-virtual {v11, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mCurrentAlbumId:J

    .line 157
    sget-boolean v0, Lcom/google/android/music/AlbumBrowserActivity;->LOGV:Z

    if-eqz v0, :cond_90

    const-string v0, "AlbumBrowser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got artist / album from launch intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/music/AlbumBrowserActivity;->mArtistId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/music/AlbumBrowserActivity;->mCurrentAlbumId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_90

    .line 164
    :cond_183
    const-string v0, "medialist"

    invoke-virtual {v11, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/medialist/AlbumList;

    iput-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/AlbumList;

    goto/16 :goto_9c

    .line 170
    :cond_18f
    new-instance v0, Lcom/google/android/music/medialist/ArtistAlbumList;

    iget-wide v1, p0, Lcom/google/android/music/AlbumBrowserActivity;->mArtistId:J

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/medialist/ArtistAlbumList;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/AlbumList;

    goto/16 :goto_ad

    .line 179
    .restart local v12       #isSubView:Z
    :cond_19a
    const v0, 0x7f040043

    invoke-virtual {p0, v0}, Lcom/google/android/music/AlbumBrowserActivity;->inflateView(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mView:Landroid/view/View;

    goto/16 :goto_ba
.end method

.method public onActionBarConfig(Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;)V
    .registers 3
    .parameter "actionbarConfig"

    .prologue
    .line 270
    invoke-super {p0, p1}, Lcom/google/android/music/activitymanagement/MusicFragment;->onActionBarConfig(Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;)V

    .line 272
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v0}, Lcom/google/android/music/jumper/MusicPreferences;->isTabletMusic()Z

    move-result v0

    if-nez v0, :cond_13

    .line 273
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;->show(I)V

    .line 274
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;->setSplitActionBar(Z)V

    .line 276
    :cond_13
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
    .line 420
    .local p1, albumIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAdapter:Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;

    if-eqz v0, :cond_9

    .line 424
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mUpdateAllOfflineSelectedStatusesRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/music/AlbumBrowserActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 426
    :cond_9
    return-void
.end method

.method public onAvailableSpaceChanged(JJZ)V
    .registers 7
    .parameter "totalSpace"
    .parameter "freeSpace"
    .parameter "availabilityTransition"

    .prologue
    .line 822
    if-eqz p5, :cond_6

    .line 823
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/music/AlbumBrowserActivity;->onAlbumChanged(Ljava/util/List;)V

    .line 825
    :cond_6
    return-void
.end method

.method public onCreate()V
    .registers 3

    .prologue
    .line 124
    invoke-super {p0}, Lcom/google/android/music/activitymanagement/MusicFragment;->onCreate()V

    .line 125
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mPlaybackServiceConnection:Landroid/content/ServiceConnection;

    invoke-static {p0, v0}, Lcom/google/android/music/MusicUtils;->bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;)Lcom/google/android/music/MusicUtils$ServiceToken;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mToken:Lcom/google/android/music/MusicUtils$ServiceToken;

    .line 127
    invoke-static {p0, p0}, Lcom/google/android/music/jumper/MusicPreferences;->getMusicPreferences(Landroid/content/Context;Ljava/lang/Object;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    .line 129
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v0}, Lcom/google/android/music/jumper/MusicPreferences;->isTabletMusic()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 130
    const-string v0, "AlbumBrowser"

    const-string v1, "AlbumBrowserActivity called on XLarge screen"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_20
    new-instance v0, Lcom/google/android/music/NetworkMonitorServiceConnection;

    iget-object v1, p0, Lcom/google/android/music/AlbumBrowserActivity;->mStreamabilityChangeListener:Lcom/google/android/music/dl/IStreamabilityChangeListener;

    invoke-direct {v0, v1}, Lcom/google/android/music/NetworkMonitorServiceConnection;-><init>(Lcom/google/android/music/dl/IStreamabilityChangeListener;)V

    iput-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

    .line 134
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

    invoke-virtual {v0, p0}, Lcom/google/android/music/NetworkMonitorServiceConnection;->bindToService(Landroid/content/Context;)V

    .line 135
    return-void
.end method

.method public onCreateContextMusicMenu(Landroid/view/View;I)V
    .registers 16
    .parameter "view"
    .parameter "position"

    .prologue
    const/4 v7, 0x0

    const/4 v0, 0x1

    .line 376
    iget-object v8, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    invoke-interface {v8, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 378
    iget-object v8, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    iget-object v9, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    const-string v12, "_id"

    invoke-interface {v9, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 380
    .local v1, albumId:J
    iget-object v8, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    iget-object v9, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    const-string v12, "album"

    invoke-interface {v9, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 382
    .local v3, albumName:Ljava/lang/String;
    iget-object v8, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    iget-object v9, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    const-string v12, "artist_id"

    invoke-interface {v9, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 384
    .local v4, artistId:J
    iget-object v8, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    iget-object v9, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    const-string v12, "artist"

    invoke-interface {v9, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 386
    .local v6, artistName:Ljava/lang/String;
    iget-object v8, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    iget-object v9, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    const-string v12, "hasRemote"

    invoke-interface {v9, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-ne v8, v0, :cond_76

    move v10, v0

    .line 388
    .local v10, hasRemote:Z
    :goto_50
    iget-object v8, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    iget-object v9, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    const-string v12, "KeepOnId"

    invoke-interface {v9, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v8, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-nez v8, :cond_78

    move v11, v0

    .line 391
    .local v11, isKept:Z
    :goto_61
    invoke-virtual {p0}, Lcom/google/android/music/AlbumBrowserActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicStateController;->getContextMenuManager()Lcom/google/android/music/utils/ContextMenuManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v7

    invoke-static {p1}, Lcom/google/android/music/utils/ContextMenuManager;->getPopupLocation(Landroid/view/View;)[I

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual/range {v0 .. v11}, Lcom/google/android/music/utils/ContextMenuManager;->showAlbumContextMenu(JLjava/lang/String;JLjava/lang/String;Landroid/view/View;[IIZZ)V

    .line 394
    return-void

    .end local v10           #hasRemote:Z
    .end local v11           #isKept:Z
    :cond_76
    move v10, v7

    .line 386
    goto :goto_50

    .restart local v10       #hasRemote:Z
    :cond_78
    move v11, v7

    .line 388
    goto :goto_61
.end method

.method public onDestroy()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 293
    iget-object v1, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAlbumList:Landroid/widget/ListView;

    if-eqz v1, :cond_1c

    .line 294
    iget-object v1, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAlbumList:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    sput v1, Lcom/google/android/music/AlbumBrowserActivity;->mLastListPosCourse:I

    .line 295
    iget-object v1, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAlbumList:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 296
    .local v0, cv:Landroid/view/View;
    if-eqz v0, :cond_1c

    .line 297
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    sput v1, Lcom/google/android/music/AlbumBrowserActivity;->mLastListPosFine:I

    .line 300
    .end local v0           #cv:Landroid/view/View;
    :cond_1c
    iget-object v1, p0, Lcom/google/android/music/AlbumBrowserActivity;->mToken:Lcom/google/android/music/MusicUtils$ServiceToken;

    invoke-static {v1}, Lcom/google/android/music/MusicUtils;->unbindFromService(Lcom/google/android/music/MusicUtils$ServiceToken;)V

    .line 305
    iget-object v1, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAdapter:Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;

    if-eqz v1, :cond_2a

    .line 306
    iget-object v1, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAdapter:Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;

    invoke-virtual {v1, v3}, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 308
    :cond_2a
    iget-object v1, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAlbumList:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 309
    iput-object v3, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAdapter:Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;

    .line 310
    invoke-static {p0}, Lcom/google/android/music/jumper/MusicPreferences;->releaseMusicPreferences(Ljava/lang/Object;)V

    .line 312
    iget-object v1, p0, Lcom/google/android/music/AlbumBrowserActivity;->mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

    invoke-virtual {v1, p0}, Lcom/google/android/music/NetworkMonitorServiceConnection;->unbindFromService(Landroid/content/Context;)V

    .line 314
    invoke-super {p0}, Lcom/google/android/music/activitymanagement/MusicFragment;->onDestroy()V

    .line 315
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
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
    .line 400
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0}, Lcom/google/android/music/AlbumBrowserActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v0

    new-instance v1, Lcom/google/android/music/medialist/AlbumSongList;

    invoke-direct {v1, p4, p5}, Lcom/google/android/music/medialist/AlbumSongList;-><init>(J)V

    invoke-virtual {v0, v1}, Lcom/google/android/music/activitymanagement/MusicStateController;->startTrackListing(Lcom/google/android/music/medialist/MediaList;)V

    .line 401
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
    .line 371
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0, p2, p3}, Lcom/google/android/music/AlbumBrowserActivity;->onCreateContextMusicMenu(Landroid/view/View;I)V

    .line 372
    const/4 v0, 0x1

    return v0
.end method

.method public onLayoutConfig(Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;)V
    .registers 4
    .parameter "layoutConfig"

    .prologue
    .line 254
    invoke-super {p0, p1}, Lcom/google/android/music/activitymanagement/MusicFragment;->onLayoutConfig(Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;)V

    .line 255
    sget-object v0, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;->MUSIC:Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;

    invoke-virtual {p1, v0}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->setNoMusicView(Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;)V

    .line 256
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mFragmentTitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_24

    .line 257
    const v0, 0x7f0d008d

    invoke-virtual {p0, v0}, Lcom/google/android/music/AlbumBrowserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->setTitle(Ljava/lang/CharSequence;)V

    .line 261
    :goto_16
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAdapter:Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;

    if-eqz v0, :cond_23

    .line 262
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAdapter:Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;

    invoke-virtual {v0}, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->getRepresentativeAlbumId()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->setFocusedAlbumId(J)V

    .line 264
    :cond_23
    return-void

    .line 259
    :cond_24
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mFragmentTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_16
.end method

.method public onManageMusicModeChanged(ZLcom/google/android/music/OfflineMusicManager;)V
    .registers 4
    .parameter "inManageMusicMode"
    .parameter "musicManager"

    .prologue
    .line 802
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    if-eq v0, p2, :cond_20

    .line 803
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    if-eqz v0, :cond_12

    .line 804
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    invoke-virtual {v0, p0}, Lcom/google/android/music/OfflineMusicManager;->unregisterAlbumChangeListener(Lcom/google/android/music/OfflineMusicManager$AlbumChangedListener;)V

    .line 805
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    invoke-virtual {v0, p0}, Lcom/google/android/music/OfflineMusicManager;->removeAvailableSpaceChangedListener(Lcom/google/android/music/OfflineMusicManager$AvailableSpaceChangedListener;)V

    .line 808
    :cond_12
    iput-object p2, p0, Lcom/google/android/music/AlbumBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    .line 810
    if-eqz p1, :cond_20

    .line 811
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    invoke-virtual {v0, p0}, Lcom/google/android/music/OfflineMusicManager;->registerAlbumChangeListener(Lcom/google/android/music/OfflineMusicManager$AlbumChangedListener;)V

    .line 812
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    invoke-virtual {v0, p0}, Lcom/google/android/music/OfflineMusicManager;->addAvailableSpaceChangeListener(Lcom/google/android/music/OfflineMusicManager$AvailableSpaceChangedListener;)V

    .line 815
    :cond_20
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAdapter:Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;

    if-eqz v0, :cond_29

    .line 816
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAdapter:Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;

    invoke-virtual {v0}, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->notifyDataSetChanged()V

    .line 818
    :cond_29
    return-void
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 344
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/google/android/music/AlbumBrowserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 345
    invoke-virtual {p0}, Lcom/google/android/music/AlbumBrowserActivity;->getMusicUIController()Lcom/google/android/music/activitymanagement/MusicUIController;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/AlbumBrowserActivity;->mBottomBarChangeListener:Lcom/google/android/music/BottomBarChangeListener;

    invoke-virtual {v0, v1}, Lcom/google/android/music/activitymanagement/MusicUIController;->unregisterBottomBarChangeListener(Lcom/google/android/music/BottomBarChangeListener;)V

    .line 346
    invoke-virtual {p0}, Lcom/google/android/music/AlbumBrowserActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/music/activitymanagement/MusicStateController;->unregisterManageMusicModeListener(Lcom/google/android/music/activitymanagement/TopLevelActivity$ManageMusicModeListener;)V

    .line 347
    invoke-super {p0}, Lcom/google/android/music/activitymanagement/MusicFragment;->onPause()V

    .line 348
    return-void
.end method

.method public onResume()V
    .registers 4

    .prologue
    .line 319
    invoke-super {p0}, Lcom/google/android/music/activitymanagement/MusicFragment;->onResume()V

    .line 320
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 321
    .local v0, f:Landroid/content/IntentFilter;
    const-string v1, "com.android.music.playstatechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 322
    const-string v1, "com.android.music.metachanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 323
    const-string v1, "com.android.music.queuechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 324
    iget-object v1, p0, Lcom/google/android/music/AlbumBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/music/AlbumBrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 325
    iget-object v1, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAlbumList:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->invalidateViews()V

    .line 326
    invoke-virtual {p0}, Lcom/google/android/music/AlbumBrowserActivity;->getMusicUIController()Lcom/google/android/music/activitymanagement/MusicUIController;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/AlbumBrowserActivity;->mBottomBarChangeListener:Lcom/google/android/music/BottomBarChangeListener;

    invoke-virtual {v1, v2}, Lcom/google/android/music/activitymanagement/MusicUIController;->registerBottomBarChangeListener(Lcom/google/android/music/BottomBarChangeListener;)V

    .line 327
    invoke-virtual {p0}, Lcom/google/android/music/AlbumBrowserActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/android/music/activitymanagement/MusicStateController;->registerManageMusicModeListener(Lcom/google/android/music/activitymanagement/TopLevelActivity$ManageMusicModeListener;)V

    .line 329
    iget-object v1, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAdapter:Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;

    if-eqz v1, :cond_3a

    .line 330
    iget-object v1, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAdapter:Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;

    invoke-virtual {v1}, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->notifyDataSetChanged()V

    .line 332
    :cond_3a
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .parameter "outcicle"

    .prologue
    .line 285
    const-string v0, "selectedAlbumId"

    iget-wide v1, p0, Lcom/google/android/music/AlbumBrowserActivity;->mCurrentAlbumId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 286
    const-string v0, "albumArtistId"

    iget-wide v1, p0, Lcom/google/android/music/AlbumBrowserActivity;->mArtistId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 287
    const-string v0, "scrollPos"

    iget-object v1, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAlbumList:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 288
    invoke-super {p0, p1}, Lcom/google/android/music/activitymanagement/MusicFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 289
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 5
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 764
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 3
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 767
    if-nez p2, :cond_5

    .line 768
    invoke-virtual {p0}, Lcom/google/android/music/AlbumBrowserActivity;->requestReconfig()V

    .line 770
    :cond_5
    return-void
.end method
