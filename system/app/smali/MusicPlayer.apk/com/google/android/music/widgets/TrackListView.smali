.class public Lcom/google/android/music/widgets/TrackListView;
.super Lcom/google/android/music/TouchInterceptor;
.source "TrackListView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicModeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/widgets/TrackListView$ViewHolder;,
        Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;,
        Lcom/google/android/music/widgets/TrackListView$ScrollPosition;
    }
.end annotation


# static fields
.field private static final sSubmitterStatsCols:[Ljava/lang/String;


# instance fields
.field private mAdapter:Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;

.field private mAttachedToWindow:Z

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mEditMode:Z

.field private mFragment:Lcom/google/android/music/activitymanagement/MusicFragment;

.field private mHasMultiSubmitterPhotos:Z

.field private mInManageMusicMode:Z

.field private mIsAtHomePartyMode:Z

.field private mIsNowPlaying:Z

.field private volatile mIsStreamingEnabled:Z

.field private mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

.field private mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

.field private final mNotifyDataSetChanged:Ljava/lang/Runnable;

.field private mNotifyDataSetChangedWhenAttached:Z

.field private mPlaybackService:Lcom/google/android/music/IMusicPlaybackService;

.field private mPlaybackServiceConnection:Landroid/content/ServiceConnection;

.field private mPlaybackServiceToken:Lcom/google/android/music/MusicUtils$ServiceToken;

.field private mQuickContactBadgeHeight:I

.field private mQuickContactBadgeWidth:I

.field private mScrollSetTimeNs:J

.field private mScrollToPosition:Lcom/google/android/music/widgets/TrackListView$ScrollPosition;

.field private final mSetIsNowPlayingFalse:Ljava/lang/Runnable;

.field private final mSetIsNowPlayingTrue:Ljava/lang/Runnable;

.field private mShowTrackArtist:Z

.field private mSmoothScrollToPosition:Z

.field private mSongList:Lcom/google/android/music/medialist/SongList;

.field private mStoreSafeConnection:Lcom/google/android/music/utils/SafeServiceConnection;

.field private volatile mStoreService:Lcom/google/android/music/store/IStoreService;

.field private final mStreamabilityChangeListener:Lcom/google/android/music/dl/IStreamabilityChangeListener;

.field private mUpdateNowPlayingWhenAttached:Z

.field private mUpdateNowPlayingWhenAttachedState:Z

.field private mUpdateShowTrackArtistsRunnable:Ljava/lang/Runnable;

.field private mUpdateSubmitterStats:Lcom/google/android/music/utils/async/AsyncRunner;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 173
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "hasMultiSubmitterPhotos"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/music/widgets/TrackListView;->sSubmitterStatsCols:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    .line 254
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/TouchInterceptor;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 104
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/music/widgets/TrackListView;->mIsStreamingEnabled:Z

    .line 112
    iput-boolean v3, p0, Lcom/google/android/music/widgets/TrackListView;->mIsNowPlaying:Z

    .line 114
    iput-boolean v3, p0, Lcom/google/android/music/widgets/TrackListView;->mEditMode:Z

    .line 116
    iput-boolean v3, p0, Lcom/google/android/music/widgets/TrackListView;->mInManageMusicMode:Z

    .line 118
    iput-boolean v3, p0, Lcom/google/android/music/widgets/TrackListView;->mIsAtHomePartyMode:Z

    .line 120
    iput-boolean v3, p0, Lcom/google/android/music/widgets/TrackListView;->mShowTrackArtist:Z

    .line 126
    sget-object v1, Lcom/google/android/music/widgets/TrackListView$ScrollPosition;->NONE:Lcom/google/android/music/widgets/TrackListView$ScrollPosition;

    iput-object v1, p0, Lcom/google/android/music/widgets/TrackListView;->mScrollToPosition:Lcom/google/android/music/widgets/TrackListView$ScrollPosition;

    .line 127
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/google/android/music/widgets/TrackListView;->mScrollSetTimeNs:J

    .line 129
    iput-boolean v3, p0, Lcom/google/android/music/widgets/TrackListView;->mSmoothScrollToPosition:Z

    .line 150
    new-instance v1, Lcom/google/android/music/widgets/TrackListView$1;

    invoke-direct {v1, p0}, Lcom/google/android/music/widgets/TrackListView$1;-><init>(Lcom/google/android/music/widgets/TrackListView;)V

    iput-object v1, p0, Lcom/google/android/music/widgets/TrackListView;->mSetIsNowPlayingTrue:Ljava/lang/Runnable;

    .line 156
    new-instance v1, Lcom/google/android/music/widgets/TrackListView$2;

    invoke-direct {v1, p0}, Lcom/google/android/music/widgets/TrackListView$2;-><init>(Lcom/google/android/music/widgets/TrackListView;)V

    iput-object v1, p0, Lcom/google/android/music/widgets/TrackListView;->mSetIsNowPlayingFalse:Ljava/lang/Runnable;

    .line 162
    new-instance v1, Lcom/google/android/music/widgets/TrackListView$3;

    invoke-direct {v1, p0}, Lcom/google/android/music/widgets/TrackListView$3;-><init>(Lcom/google/android/music/widgets/TrackListView;)V

    iput-object v1, p0, Lcom/google/android/music/widgets/TrackListView;->mNotifyDataSetChanged:Ljava/lang/Runnable;

    .line 171
    iput-boolean v3, p0, Lcom/google/android/music/widgets/TrackListView;->mHasMultiSubmitterPhotos:Z

    .line 178
    new-instance v1, Lcom/google/android/music/widgets/TrackListView$4;

    invoke-direct {v1, p0}, Lcom/google/android/music/widgets/TrackListView$4;-><init>(Lcom/google/android/music/widgets/TrackListView;)V

    iput-object v1, p0, Lcom/google/android/music/widgets/TrackListView;->mStreamabilityChangeListener:Lcom/google/android/music/dl/IStreamabilityChangeListener;

    .line 189
    new-instance v1, Lcom/google/android/music/widgets/TrackListView$5;

    invoke-direct {v1, p0}, Lcom/google/android/music/widgets/TrackListView$5;-><init>(Lcom/google/android/music/widgets/TrackListView;)V

    iput-object v1, p0, Lcom/google/android/music/widgets/TrackListView;->mUpdateShowTrackArtistsRunnable:Ljava/lang/Runnable;

    .line 201
    new-instance v1, Lcom/google/android/music/widgets/TrackListView$6;

    invoke-direct {v1, p0}, Lcom/google/android/music/widgets/TrackListView$6;-><init>(Lcom/google/android/music/widgets/TrackListView;)V

    iput-object v1, p0, Lcom/google/android/music/widgets/TrackListView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 216
    new-instance v1, Lcom/google/android/music/widgets/TrackListView$7;

    invoke-direct {v1, p0}, Lcom/google/android/music/widgets/TrackListView$7;-><init>(Lcom/google/android/music/widgets/TrackListView;)V

    iput-object v1, p0, Lcom/google/android/music/widgets/TrackListView;->mPlaybackServiceConnection:Landroid/content/ServiceConnection;

    .line 227
    new-instance v1, Lcom/google/android/music/widgets/TrackListView$8;

    invoke-direct {v1, p0}, Lcom/google/android/music/widgets/TrackListView$8;-><init>(Lcom/google/android/music/widgets/TrackListView;)V

    iput-object v1, p0, Lcom/google/android/music/widgets/TrackListView;->mUpdateSubmitterStats:Lcom/google/android/music/utils/async/AsyncRunner;

    .line 1140
    new-instance v1, Lcom/google/android/music/widgets/TrackListView$9;

    invoke-direct {v1, p0}, Lcom/google/android/music/widgets/TrackListView$9;-><init>(Lcom/google/android/music/widgets/TrackListView;)V

    iput-object v1, p0, Lcom/google/android/music/widgets/TrackListView;->mStoreSafeConnection:Lcom/google/android/music/utils/SafeServiceConnection;

    .line 256
    new-instance v1, Lcom/google/android/music/NetworkMonitorServiceConnection;

    iget-object v2, p0, Lcom/google/android/music/widgets/TrackListView;->mStreamabilityChangeListener:Lcom/google/android/music/dl/IStreamabilityChangeListener;

    invoke-direct {v1, v2}, Lcom/google/android/music/NetworkMonitorServiceConnection;-><init>(Lcom/google/android/music/dl/IStreamabilityChangeListener;)V

    iput-object v1, p0, Lcom/google/android/music/widgets/TrackListView;->mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

    .line 258
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 259
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f09007e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/music/widgets/TrackListView;->mQuickContactBadgeWidth:I

    .line 260
    const v1, 0x7f09007f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/music/widgets/TrackListView;->mQuickContactBadgeHeight:I

    .line 261
    new-instance v1, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;

    invoke-direct {v1, p0, p1}, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;-><init>(Lcom/google/android/music/widgets/TrackListView;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/music/widgets/TrackListView;->mAdapter:Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;

    .line 262
    iget-object v1, p0, Lcom/google/android/music/widgets/TrackListView;->mAdapter:Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;

    invoke-virtual {p0, v1}, Lcom/google/android/music/widgets/TrackListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 263
    iput-object p1, p0, Lcom/google/android/music/widgets/TrackListView;->mContext:Landroid/content/Context;

    .line 264
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/widgets/TrackListView;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/google/android/music/widgets/TrackListView;->setIsNowPlaying(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/music/widgets/TrackListView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/google/android/music/widgets/TrackListView;->notifyDataSetChanged()V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/music/widgets/TrackListView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/music/widgets/TrackListView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 65
    sget-object v0, Lcom/google/android/music/widgets/TrackListView;->sSubmitterStatsCols:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/android/music/widgets/TrackListView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/google/android/music/widgets/TrackListView;->mHasMultiSubmitterPhotos:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/google/android/music/widgets/TrackListView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/google/android/music/widgets/TrackListView;->mHasMultiSubmitterPhotos:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/google/android/music/widgets/TrackListView;Lcom/google/android/music/medialist/MediaList$MediaCursor;Landroid/view/View;I)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/music/widgets/TrackListView;->createListItemContextMusicMenu(Lcom/google/android/music/medialist/MediaList$MediaCursor;Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/google/android/music/widgets/TrackListView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/google/android/music/widgets/TrackListView;->mIsAtHomePartyMode:Z

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/music/widgets/TrackListView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/google/android/music/widgets/TrackListView;->mIsStreamingEnabled:Z

    return v0
.end method

.method static synthetic access$202(Lcom/google/android/music/widgets/TrackListView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/google/android/music/widgets/TrackListView;->mIsStreamingEnabled:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/google/android/music/widgets/TrackListView;)Lcom/google/android/music/jumper/MusicPreferences;
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/music/widgets/TrackListView;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/google/android/music/widgets/TrackListView;)Lcom/google/android/music/activitymanagement/MusicFragment;
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/music/widgets/TrackListView;->mFragment:Lcom/google/android/music/activitymanagement/MusicFragment;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/google/android/music/widgets/TrackListView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/google/android/music/widgets/TrackListView;->mInManageMusicMode:Z

    return v0
.end method

.method static synthetic access$2302(Lcom/google/android/music/widgets/TrackListView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/google/android/music/widgets/TrackListView;->mInManageMusicMode:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/google/android/music/widgets/TrackListView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/google/android/music/widgets/TrackListView;->isFastScrollerAlwaysVisible()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/google/android/music/widgets/TrackListView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/google/android/music/widgets/TrackListView;->updateSubmitterStatsAsync()V

    return-void
.end method

.method static synthetic access$2802(Lcom/google/android/music/widgets/TrackListView;Lcom/google/android/music/store/IStoreService;)Lcom/google/android/music/store/IStoreService;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/google/android/music/widgets/TrackListView;->mStoreService:Lcom/google/android/music/store/IStoreService;

    return-object p1
.end method

.method static synthetic access$300(Lcom/google/android/music/widgets/TrackListView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/google/android/music/widgets/TrackListView;->postDataSetChanged()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/music/widgets/TrackListView;)Lcom/google/android/music/medialist/SongList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/music/widgets/TrackListView;->mSongList:Lcom/google/android/music/medialist/SongList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/music/widgets/TrackListView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/google/android/music/widgets/TrackListView;->mShowTrackArtist:Z

    return v0
.end method

.method static synthetic access$502(Lcom/google/android/music/widgets/TrackListView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/google/android/music/widgets/TrackListView;->mShowTrackArtist:Z

    return p1
.end method

.method static synthetic access$600(Lcom/google/android/music/widgets/TrackListView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/google/android/music/widgets/TrackListView;->updateIsNowPlaying()V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/music/widgets/TrackListView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/google/android/music/widgets/TrackListView;->mIsNowPlaying:Z

    return v0
.end method

.method static synthetic access$802(Lcom/google/android/music/widgets/TrackListView;Lcom/google/android/music/IMusicPlaybackService;)Lcom/google/android/music/IMusicPlaybackService;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/google/android/music/widgets/TrackListView;->mPlaybackService:Lcom/google/android/music/IMusicPlaybackService;

    return-object p1
.end method

.method static synthetic access$900(Lcom/google/android/music/widgets/TrackListView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/google/android/music/widgets/TrackListView;->processScrollPosition()V

    return-void
.end method

.method private createListItemContextMusicMenu(Lcom/google/android/music/medialist/MediaList$MediaCursor;Landroid/view/View;I)V
    .registers 32
    .parameter "cursor"
    .parameter "view"
    .parameter "position"

    .prologue
    .line 1058
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/widgets/TrackListView;->mSongList:Lcom/google/android/music/medialist/SongList;

    if-nez v2, :cond_7

    .line 1111
    :cond_6
    :goto_6
    return-void

    .line 1061
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/widgets/TrackListView;->mSongList:Lcom/google/android/music/medialist/SongList;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/google/android/music/medialist/SongList;->isFlagSet(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1064
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/widgets/TrackListView;->getHeaderViewsCount()I

    move-result v2

    sub-int p3, p3, v2

    .line 1065
    if-ltz p3, :cond_6

    .line 1068
    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->moveToPosition(I)Z

    move-result v2

    if-nez v2, :cond_4d

    .line 1069
    const-string v2, "TrackListView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to move cursor of size "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->getCount()I

    move-result v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v11, " to position "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1074
    :cond_4d
    const-string v2, "audio_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v26

    .line 1075
    .local v26, id_idx:I
    const/16 v27, -0x1

    .line 1076
    .local v27, idxIdInParent:I
    if-gez v26, :cond_95

    .line 1077
    const-string v2, "_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v26

    .line 1081
    :goto_61
    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->getLong(I)J

    move-result-wide v4

    .line 1082
    .local v4, trackId:J
    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-gtz v2, :cond_9e

    .line 1083
    const-string v2, "TrackListView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Trying to create a context menu on position: "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v11, " with an invalid trackId: "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 1079
    .end local v4           #trackId:J
    :cond_95
    const-string v2, "_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v27

    goto :goto_61

    .line 1088
    .restart local v4       #trackId:J
    :cond_9e
    const-string v2, "title"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1091
    .local v6, trackName:Ljava/lang/String;
    const-string v2, "hasRemote"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_14f

    const/16 v21, 0x1

    .line 1093
    .local v21, hasRemote:Z
    :goto_bf
    const-string v2, "hasLocal"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_153

    const/16 v22, 0x1

    .line 1095
    .local v22, hasLocal:Z
    :goto_d2
    const-string v2, "AlbumArtistId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->getLong(I)J

    move-result-wide v7

    .line 1097
    .local v7, artistId:J
    const-string v2, "artist"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1099
    .local v9, artistName:Ljava/lang/String;
    const-string v2, "artistSort"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1101
    .local v10, sortableAlbumArtistName:Ljava/lang/String;
    const/4 v2, -0x1

    move/from16 v0, v27

    if-ne v0, v2, :cond_157

    const-wide/16 v16, -0x1

    .line 1102
    .local v16, idInParent:J
    :goto_103
    const-string v2, "StoreId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 1105
    .local v19, storeId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/widgets/TrackListView;->mFragment:Lcom/google/android/music/activitymanagement/MusicFragment;

    invoke-virtual {v2}, Lcom/google/android/music/activitymanagement/MusicFragment;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/music/activitymanagement/MusicStateController;->getContextMenuManager()Lcom/google/android/music/utils/ContextMenuManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/widgets/TrackListView;->mFragment:Lcom/google/android/music/activitymanagement/MusicFragment;

    invoke-static/range {p2 .. p2}, Lcom/google/android/music/utils/ContextMenuManager;->getPopupLocation(Landroid/view/View;)[I

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v12

    const/4 v13, 0x2

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/google/android/music/widgets/TrackListView;->mEditMode:Z

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/music/widgets/TrackListView;->mSongList:Lcom/google/android/music/medialist/SongList;

    invoke-direct/range {p0 .. p1}, Lcom/google/android/music/widgets/TrackListView;->isMusic(Landroid/database/Cursor;)Z

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/widgets/TrackListView;->mStoreService:Lcom/google/android/music/store/IStoreService;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/widgets/TrackListView;->mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/music/NetworkMonitorServiceConnection;->getNetworkMonitor()Lcom/google/android/music/dl/INetworkMonitor;

    move-result-object v24

    move/from16 v18, p3

    move-object/from16 v25, p1

    invoke-virtual/range {v2 .. v25}, Lcom/google/android/music/utils/ContextMenuManager;->showTrackContextMenu(Lcom/google/android/music/activitymanagement/MusicFragment;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;[ILandroid/view/View;IZLcom/google/android/music/medialist/SongList;JILjava/lang/String;ZZZLcom/google/android/music/store/IStoreService;Lcom/google/android/music/dl/INetworkMonitor;Lcom/google/android/music/medialist/MediaList$MediaCursor;)V

    goto/16 :goto_6

    .line 1091
    .end local v7           #artistId:J
    .end local v9           #artistName:Ljava/lang/String;
    .end local v10           #sortableAlbumArtistName:Ljava/lang/String;
    .end local v16           #idInParent:J
    .end local v19           #storeId:Ljava/lang/String;
    .end local v21           #hasRemote:Z
    .end local v22           #hasLocal:Z
    :cond_14f
    const/16 v21, 0x0

    goto/16 :goto_bf

    .line 1093
    .restart local v21       #hasRemote:Z
    :cond_153
    const/16 v22, 0x0

    goto/16 :goto_d2

    .line 1101
    .restart local v7       #artistId:J
    .restart local v9       #artistName:Ljava/lang/String;
    .restart local v10       #sortableAlbumArtistName:Ljava/lang/String;
    .restart local v22       #hasLocal:Z
    :cond_157
    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->getLong(I)J

    move-result-wide v16

    goto :goto_103
.end method

.method private isFastScrollerAlwaysVisible()Z
    .registers 2

    .prologue
    .line 522
    invoke-static {}, Lcom/google/android/music/jumper/MusicPreferences;->isHoneycombOrGreater()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/google/android/music/widgets/TrackListView;->isFastScrollAlwaysVisible()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private isMusic(Landroid/database/Cursor;)Z
    .registers 12
    .parameter "c"

    .prologue
    const/4 v8, 0x0

    .line 1117
    const-string v9, "title"

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 1118
    .local v7, titleidx:I
    const-string v9, "album"

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 1119
    .local v1, albumidx:I
    const-string v9, "artist"

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 1121
    .local v3, artistidx:I
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1122
    .local v6, title:Ljava/lang/String;
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1123
    .local v0, album:Ljava/lang/String;
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1124
    .local v2, artist:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->isUnknown(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_36

    invoke-static {v2}, Lcom/google/android/music/MusicUtils;->isUnknown(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_36

    if-eqz v6, :cond_36

    const-string v9, "recording"

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_36

    .line 1137
    :goto_35
    return v8

    .line 1132
    :cond_36
    const-string v9, "is_music"

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 1133
    .local v5, ismusic_idx:I
    const/4 v4, 0x1

    .line 1134
    .local v4, ismusic:Z
    if-ltz v5, :cond_46

    .line 1135
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    if-eqz v9, :cond_48

    const/4 v4, 0x1

    :cond_46
    :goto_46
    move v8, v4

    .line 1137
    goto :goto_35

    :cond_48
    move v4, v8

    .line 1135
    goto :goto_46
.end method

.method private notifyDataSetChanged()V
    .registers 2

    .prologue
    .line 515
    invoke-static {}, Lcom/google/android/music/MusicUtils;->assertUiThread()V

    .line 516
    iget-object v0, p0, Lcom/google/android/music/widgets/TrackListView;->mAdapter:Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;

    if-eqz v0, :cond_c

    .line 517
    iget-object v0, p0, Lcom/google/android/music/widgets/TrackListView;->mAdapter:Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;

    invoke-virtual {v0}, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->notifyDataSetChanged()V

    .line 519
    :cond_c
    return-void
.end method

.method private postDataSetChanged()V
    .registers 3

    .prologue
    .line 497
    iget-object v0, p0, Lcom/google/android/music/widgets/TrackListView;->mAdapter:Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;

    if-eqz v0, :cond_21

    .line 498
    invoke-static {}, Lcom/google/android/music/MusicUtils;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 499
    invoke-direct {p0}, Lcom/google/android/music/widgets/TrackListView;->notifyDataSetChanged()V

    .line 512
    :goto_d
    return-void

    .line 501
    :cond_e
    monitor-enter p0

    .line 502
    :try_start_f
    iget-boolean v0, p0, Lcom/google/android/music/widgets/TrackListView;->mAttachedToWindow:Z

    if-eqz v0, :cond_1d

    .line 503
    iget-object v0, p0, Lcom/google/android/music/widgets/TrackListView;->mNotifyDataSetChanged:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/music/widgets/TrackListView;->post(Ljava/lang/Runnable;)Z

    .line 507
    :goto_18
    monitor-exit p0

    goto :goto_d

    :catchall_1a
    move-exception v0

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_f .. :try_end_1c} :catchall_1a

    throw v0

    .line 505
    :cond_1d
    const/4 v0, 0x1

    :try_start_1e
    iput-boolean v0, p0, Lcom/google/android/music/widgets/TrackListView;->mNotifyDataSetChangedWhenAttached:Z
    :try_end_20
    .catchall {:try_start_1e .. :try_end_20} :catchall_1a

    goto :goto_18

    .line 510
    :cond_21
    const-string v0, "TrackListView"

    const-string v1, "postDataSetChanged not executing since mAdapter == null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d
.end method

.method private processScrollPosition()V
    .registers 9

    .prologue
    .line 354
    invoke-static {}, Lcom/google/android/music/MusicUtils;->assertUiThread()V

    .line 361
    iget-object v4, p0, Lcom/google/android/music/widgets/TrackListView;->mScrollToPosition:Lcom/google/android/music/widgets/TrackListView$ScrollPosition;

    sget-object v5, Lcom/google/android/music/widgets/TrackListView$ScrollPosition;->NONE:Lcom/google/android/music/widgets/TrackListView$ScrollPosition;

    if-eq v4, v5, :cond_26

    iget-boolean v4, p0, Lcom/google/android/music/widgets/TrackListView;->mIsNowPlaying:Z

    if-eqz v4, :cond_26

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    const-wide/32 v6, 0xf4240

    add-long/2addr v4, v6

    iget-wide v6, p0, Lcom/google/android/music/widgets/TrackListView;->mScrollSetTimeNs:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_26

    .line 363
    iget-object v4, p0, Lcom/google/android/music/widgets/TrackListView;->mPlaybackService:Lcom/google/android/music/IMusicPlaybackService;

    if-nez v4, :cond_27

    .line 364
    const-string v4, "TrackListView"

    const-string v5, "processScrollPosition() not executing since playbackService == null"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    :cond_26
    :goto_26
    return-void

    .line 369
    :cond_27
    :try_start_27
    iget-object v4, p0, Lcom/google/android/music/widgets/TrackListView;->mPlaybackService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v4}, Lcom/google/android/music/IMusicPlaybackService;->getQueuePosition()I

    move-result v2

    .line 370
    .local v2, playbackPosition:I
    iget-object v4, p0, Lcom/google/android/music/widgets/TrackListView;->mScrollToPosition:Lcom/google/android/music/widgets/TrackListView$ScrollPosition;

    sget-object v5, Lcom/google/android/music/widgets/TrackListView$ScrollPosition;->NOW_PLAYING:Lcom/google/android/music/widgets/TrackListView$ScrollPosition;

    if-ne v4, v5, :cond_68

    .line 371
    move v3, v2

    .line 383
    .local v3, scrollToPosition:I
    :goto_34
    invoke-virtual {p0}, Lcom/google/android/music/widgets/TrackListView;->getCount()I

    move-result v0

    .line 384
    .local v0, adapterCount:I
    if-le v3, v0, :cond_98

    .line 385
    const-string v4, "TrackListView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Need to scroll to: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " which is larger than the current list size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5c
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_5c} :catch_5d

    goto :goto_26

    .line 395
    .end local v0           #adapterCount:I
    .end local v2           #playbackPosition:I
    .end local v3           #scrollToPosition:I
    :catch_5d
    move-exception v1

    .line 396
    .local v1, e:Landroid/os/RemoteException;
    const-string v4, "TrackListView"

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_26

    .line 372
    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v2       #playbackPosition:I
    :cond_68
    :try_start_68
    iget-object v4, p0, Lcom/google/android/music/widgets/TrackListView;->mScrollToPosition:Lcom/google/android/music/widgets/TrackListView$ScrollPosition;

    sget-object v5, Lcom/google/android/music/widgets/TrackListView$ScrollPosition;->AFTER_NOW_PLAYING:Lcom/google/android/music/widgets/TrackListView$ScrollPosition;

    if-ne v4, v5, :cond_7d

    .line 373
    iget-object v4, p0, Lcom/google/android/music/widgets/TrackListView;->mPlaybackService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v4}, Lcom/google/android/music/IMusicPlaybackService;->getQueueSize()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v2, v4, :cond_7b

    .line 374
    add-int/lit8 v3, v2, 0x1

    .restart local v3       #scrollToPosition:I
    goto :goto_34

    .line 376
    .end local v3           #scrollToPosition:I
    :cond_7b
    move v3, v2

    .restart local v3       #scrollToPosition:I
    goto :goto_34

    .line 379
    .end local v3           #scrollToPosition:I
    :cond_7d
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown scroll state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/music/widgets/TrackListView;->mScrollToPosition:Lcom/google/android/music/widgets/TrackListView$ScrollPosition;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 389
    .restart local v0       #adapterCount:I
    .restart local v3       #scrollToPosition:I
    :cond_98
    iget-boolean v4, p0, Lcom/google/android/music/widgets/TrackListView;->mSmoothScrollToPosition:Z

    if-eqz v4, :cond_a3

    .line 390
    invoke-virtual {p0, v3}, Lcom/google/android/music/widgets/TrackListView;->smoothScrollToPosition(I)V

    .line 391
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/google/android/music/widgets/TrackListView;->mSmoothScrollToPosition:Z

    goto :goto_26

    .line 393
    :cond_a3
    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/google/android/music/widgets/TrackListView;->setSelectionFromTop(II)V
    :try_end_a7
    .catch Landroid/os/RemoteException; {:try_start_68 .. :try_end_a7} :catch_5d

    goto/16 :goto_26
.end method

.method private setIsNowPlaying(Z)V
    .registers 3
    .parameter "newIsNowPlaying"

    .prologue
    .line 337
    invoke-static {}, Lcom/google/android/music/MusicUtils;->assertUiThread()V

    .line 338
    iget-boolean v0, p0, Lcom/google/android/music/widgets/TrackListView;->mIsNowPlaying:Z

    if-eq p1, v0, :cond_f

    .line 339
    iput-boolean p1, p0, Lcom/google/android/music/widgets/TrackListView;->mIsNowPlaying:Z

    .line 340
    invoke-direct {p0}, Lcom/google/android/music/widgets/TrackListView;->processScrollPosition()V

    .line 341
    invoke-direct {p0}, Lcom/google/android/music/widgets/TrackListView;->postDataSetChanged()V

    .line 343
    :cond_f
    return-void
.end method

.method private updateIsNowPlaying()V
    .registers 6

    .prologue
    const/4 v2, 0x1

    .line 301
    const/4 v0, 0x0

    .line 302
    .local v0, currentList:Lcom/google/android/music/medialist/SongList;
    iget-object v3, p0, Lcom/google/android/music/widgets/TrackListView;->mPlaybackService:Lcom/google/android/music/IMusicPlaybackService;

    if-eqz v3, :cond_2d

    .line 304
    :try_start_6
    iget-object v3, p0, Lcom/google/android/music/widgets/TrackListView;->mPlaybackService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v3}, Lcom/google/android/music/IMusicPlaybackService;->getMediaList()Lcom/google/android/music/medialist/SongList;
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_22

    move-result-object v0

    .line 313
    iget-object v3, p0, Lcom/google/android/music/widgets/TrackListView;->mSongList:Lcom/google/android/music/medialist/SongList;

    if-eqz v3, :cond_35

    iget-object v3, p0, Lcom/google/android/music/widgets/TrackListView;->mSongList:Lcom/google/android/music/medialist/SongList;

    invoke-virtual {v3, v0}, Lcom/google/android/music/medialist/SongList;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 315
    .local v2, newNowPlaying:Z
    :goto_18
    invoke-static {}, Lcom/google/android/music/MusicUtils;->isMainThread()Z

    move-result v3

    if-eqz v3, :cond_37

    .line 316
    invoke-direct {p0, v2}, Lcom/google/android/music/widgets/TrackListView;->setIsNowPlaying(Z)V

    .line 328
    .end local v2           #newNowPlaying:Z
    :goto_21
    return-void

    .line 305
    :catch_22
    move-exception v1

    .line 306
    .local v1, e:Landroid/os/RemoteException;
    const-string v3, "TrackListView"

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_21

    .line 310
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_2d
    const-string v3, "TrackListView"

    const-string v4, "updateIsNowPlaying() not executing since playbackService == null"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21

    .line 313
    :cond_35
    const/4 v2, 0x0

    goto :goto_18

    .line 318
    .restart local v2       #newNowPlaying:Z
    :cond_37
    monitor-enter p0

    .line 319
    :try_start_38
    iget-boolean v3, p0, Lcom/google/android/music/widgets/TrackListView;->mAttachedToWindow:Z

    if-eqz v3, :cond_4b

    .line 320
    if-eqz v2, :cond_48

    iget-object v3, p0, Lcom/google/android/music/widgets/TrackListView;->mSetIsNowPlayingTrue:Ljava/lang/Runnable;

    :goto_40
    invoke-virtual {p0, v3}, Lcom/google/android/music/widgets/TrackListView;->post(Ljava/lang/Runnable;)Z

    .line 326
    :goto_43
    monitor-exit p0

    goto :goto_21

    :catchall_45
    move-exception v3

    monitor-exit p0
    :try_end_47
    .catchall {:try_start_38 .. :try_end_47} :catchall_45

    throw v3

    .line 320
    :cond_48
    :try_start_48
    iget-object v3, p0, Lcom/google/android/music/widgets/TrackListView;->mSetIsNowPlayingFalse:Ljava/lang/Runnable;

    goto :goto_40

    .line 323
    :cond_4b
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/google/android/music/widgets/TrackListView;->mUpdateNowPlayingWhenAttached:Z

    .line 324
    iput-boolean v2, p0, Lcom/google/android/music/widgets/TrackListView;->mUpdateNowPlayingWhenAttachedState:Z
    :try_end_50
    .catchall {:try_start_48 .. :try_end_50} :catchall_45

    goto :goto_43
.end method

.method private updateShowTrackArtistAsync()V
    .registers 3

    .prologue
    .line 297
    sget-object v0, Lcom/google/android/music/utils/async/AsyncWorkers;->sUIBackgroundWorker:Lcom/google/android/music/Worker;

    iget-object v1, p0, Lcom/google/android/music/widgets/TrackListView;->mUpdateShowTrackArtistsRunnable:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/google/android/music/utils/async/AsyncWorkers;->runAsync(Lcom/google/android/music/Worker;Ljava/lang/Runnable;)V

    .line 298
    return-void
.end method

.method private updateSubmitterStatsAsync()V
    .registers 3

    .prologue
    .line 331
    invoke-static {}, Lcom/google/android/music/MusicUtils;->assertUiThread()V

    .line 332
    sget-object v0, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    iget-object v1, p0, Lcom/google/android/music/widgets/TrackListView;->mUpdateSubmitterStats:Lcom/google/android/music/utils/async/AsyncRunner;

    invoke-static {v0, v1}, Lcom/google/android/music/utils/async/AsyncWorkers;->runAsyncWithCallback(Lcom/google/android/music/Worker;Lcom/google/android/music/utils/async/AsyncRunner;)V

    .line 334
    return-void
.end method


# virtual methods
.method public getSongList()Lcom/google/android/music/medialist/SongList;
    .registers 2

    .prologue
    .line 292
    iget-object v0, p0, Lcom/google/android/music/widgets/TrackListView;->mSongList:Lcom/google/android/music/medialist/SongList;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .registers 6

    .prologue
    .line 448
    invoke-super {p0}, Lcom/google/android/music/TouchInterceptor;->onAttachedToWindow()V

    .line 449
    const/4 v1, 0x0

    .line 450
    .local v1, updateNowPlayingWhenAttached:Z
    const/4 v2, 0x0

    .line 451
    .local v2, updateNowPlayingWhenAttachedState:Z
    const/4 v0, 0x0

    .line 452
    .local v0, notfiyDataSetChangedWhenAttached:Z
    monitor-enter p0

    .line 453
    const/4 v3, 0x1

    :try_start_8
    iput-boolean v3, p0, Lcom/google/android/music/widgets/TrackListView;->mAttachedToWindow:Z

    .line 455
    iget-boolean v3, p0, Lcom/google/android/music/widgets/TrackListView;->mUpdateNowPlayingWhenAttached:Z

    if-eqz v3, :cond_15

    .line 456
    iget-boolean v1, p0, Lcom/google/android/music/widgets/TrackListView;->mUpdateNowPlayingWhenAttached:Z

    .line 457
    iget-boolean v2, p0, Lcom/google/android/music/widgets/TrackListView;->mUpdateNowPlayingWhenAttachedState:Z

    .line 458
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/google/android/music/widgets/TrackListView;->mUpdateNowPlayingWhenAttached:Z

    .line 461
    :cond_15
    iget-boolean v3, p0, Lcom/google/android/music/widgets/TrackListView;->mNotifyDataSetChangedWhenAttached:Z

    if-eqz v3, :cond_1b

    .line 462
    iget-boolean v0, p0, Lcom/google/android/music/widgets/TrackListView;->mNotifyDataSetChangedWhenAttached:Z

    .line 464
    :cond_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_30

    .line 466
    if-eqz v1, :cond_21

    .line 467
    invoke-direct {p0, v2}, Lcom/google/android/music/widgets/TrackListView;->setIsNowPlaying(Z)V

    .line 470
    :cond_21
    if-eqz v0, :cond_26

    .line 471
    invoke-direct {p0}, Lcom/google/android/music/widgets/TrackListView;->notifyDataSetChanged()V

    .line 474
    :cond_26
    iget-object v3, p0, Lcom/google/android/music/widgets/TrackListView;->mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

    invoke-virtual {p0}, Lcom/google/android/music/widgets/TrackListView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/music/NetworkMonitorServiceConnection;->bindToService(Landroid/content/Context;)V

    .line 475
    return-void

    .line 464
    :catchall_30
    move-exception v3

    :try_start_31
    monitor-exit p0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw v3
.end method

.method public onCreate()V
    .registers 6

    .prologue
    .line 415
    iget-object v1, p0, Lcom/google/android/music/widgets/TrackListView;->mFragment:Lcom/google/android/music/activitymanagement/MusicFragment;

    if-nez v1, :cond_c

    .line 416
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "setFragment must be called before attaching this view to the window"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 420
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/music/widgets/TrackListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/google/android/music/jumper/MusicPreferences;->getMusicPreferences(Landroid/content/Context;Ljava/lang/Object;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/music/widgets/TrackListView;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    .line 421
    iget-object v1, p0, Lcom/google/android/music/widgets/TrackListView;->mFragment:Lcom/google/android/music/activitymanagement/MusicFragment;

    invoke-virtual {v1}, Lcom/google/android/music/activitymanagement/MusicFragment;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/android/music/activitymanagement/MusicStateController;->registerMusicModeListener(Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicModeListener;)V

    .line 423
    iget-object v1, p0, Lcom/google/android/music/widgets/TrackListView;->mStoreSafeConnection:Lcom/google/android/music/utils/SafeServiceConnection;

    iget-object v2, p0, Lcom/google/android/music/widgets/TrackListView;->mFragment:Lcom/google/android/music/activitymanagement/MusicFragment;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.google.android.music.STORE_SERVICE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/music/utils/SafeServiceConnection;->bindService(Landroid/content/Context;Landroid/content/Intent;I)Z

    .line 426
    invoke-virtual {p0}, Lcom/google/android/music/widgets/TrackListView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/widgets/TrackListView;->mPlaybackServiceConnection:Landroid/content/ServiceConnection;

    invoke-static {v1, v2}, Lcom/google/android/music/MusicUtils;->bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;)Lcom/google/android/music/MusicUtils$ServiceToken;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/music/widgets/TrackListView;->mPlaybackServiceToken:Lcom/google/android/music/MusicUtils$ServiceToken;

    .line 427
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 428
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.android.music.queuechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 429
    const-string v1, "com.android.music.metachanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 430
    invoke-virtual {p0}, Lcom/google/android/music/widgets/TrackListView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/widgets/TrackListView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 431
    invoke-direct {p0}, Lcom/google/android/music/widgets/TrackListView;->updateSubmitterStatsAsync()V

    .line 432
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 436
    invoke-static {p0}, Lcom/google/android/music/jumper/MusicPreferences;->releaseMusicPreferences(Ljava/lang/Object;)V

    .line 437
    iget-object v0, p0, Lcom/google/android/music/widgets/TrackListView;->mFragment:Lcom/google/android/music/activitymanagement/MusicFragment;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicFragment;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/music/activitymanagement/MusicStateController;->unregisterMusicModeListener(Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicModeListener;)V

    .line 439
    iget-object v0, p0, Lcom/google/android/music/widgets/TrackListView;->mStoreSafeConnection:Lcom/google/android/music/utils/SafeServiceConnection;

    iget-object v1, p0, Lcom/google/android/music/widgets/TrackListView;->mFragment:Lcom/google/android/music/activitymanagement/MusicFragment;

    invoke-virtual {v0, v1}, Lcom/google/android/music/utils/SafeServiceConnection;->unbindService(Landroid/content/Context;)V

    .line 441
    iget-object v0, p0, Lcom/google/android/music/widgets/TrackListView;->mPlaybackServiceToken:Lcom/google/android/music/MusicUtils$ServiceToken;

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->unbindFromService(Lcom/google/android/music/MusicUtils$ServiceToken;)V

    .line 442
    invoke-virtual {p0}, Lcom/google/android/music/widgets/TrackListView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/widgets/TrackListView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 443
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/music/widgets/TrackListView;->setSongList(Lcom/google/android/music/medialist/SongList;)V

    .line 444
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 482
    iget-boolean v0, p0, Lcom/google/android/music/widgets/TrackListView;->mAttachedToWindow:Z

    if-eqz v0, :cond_d

    .line 483
    iget-object v0, p0, Lcom/google/android/music/widgets/TrackListView;->mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

    invoke-virtual {p0}, Lcom/google/android/music/widgets/TrackListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/music/NetworkMonitorServiceConnection;->unbindFromService(Landroid/content/Context;)V

    .line 485
    :cond_d
    monitor-enter p0

    .line 486
    const/4 v0, 0x0

    :try_start_f
    iput-boolean v0, p0, Lcom/google/android/music/widgets/TrackListView;->mAttachedToWindow:Z

    .line 489
    iget-object v0, p0, Lcom/google/android/music/widgets/TrackListView;->mSetIsNowPlayingTrue:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/music/widgets/TrackListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 490
    iget-object v0, p0, Lcom/google/android/music/widgets/TrackListView;->mSetIsNowPlayingFalse:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/music/widgets/TrackListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 491
    iget-object v0, p0, Lcom/google/android/music/widgets/TrackListView;->mNotifyDataSetChanged:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/music/widgets/TrackListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 492
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_f .. :try_end_21} :catchall_25

    .line 493
    invoke-super {p0}, Lcom/google/android/music/TouchInterceptor;->onDetachedFromWindow()V

    .line 494
    return-void

    .line 492
    :catchall_25
    move-exception v0

    :try_start_26
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v0
.end method

.method protected onFinishInflate()V
    .registers 1

    .prologue
    .line 408
    invoke-super {p0}, Lcom/google/android/music/TouchInterceptor;->onFinishInflate()V

    .line 409
    invoke-virtual {p0, p0}, Lcom/google/android/music/widgets/TrackListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 410
    invoke-virtual {p0, p0}, Lcom/google/android/music/widgets/TrackListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 411
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 15
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
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const v8, 0x7f0d003a

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1188
    iget-object v5, p0, Lcom/google/android/music/widgets/TrackListView;->mAdapter:Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;

    invoke-virtual {v5}, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->getCount()I

    move-result v5

    if-eqz v5, :cond_11

    iget-object v5, p0, Lcom/google/android/music/widgets/TrackListView;->mFragment:Lcom/google/android/music/activitymanagement/MusicFragment;

    if-nez v5, :cond_12

    .line 1219
    :cond_11
    :goto_11
    return-void

    .line 1194
    :cond_12
    invoke-virtual {p0}, Lcom/google/android/music/widgets/TrackListView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1196
    .local v0, context:Landroid/content/Context;
    iget-object v5, p0, Lcom/google/android/music/widgets/TrackListView;->mFragment:Lcom/google/android/music/activitymanagement/MusicFragment;

    invoke-virtual {v5}, Lcom/google/android/music/activitymanagement/MusicFragment;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/music/activitymanagement/MusicStateController;->isInPartyMode()Z

    move-result v2

    .line 1197
    .local v2, inPartyMode:Z
    iget-object v5, p0, Lcom/google/android/music/widgets/TrackListView;->mFragment:Lcom/google/android/music/activitymanagement/MusicFragment;

    invoke-virtual {v5}, Lcom/google/android/music/activitymanagement/MusicFragment;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/music/activitymanagement/MusicStateController;->getAtHomeStateController()Lcom/google/android/music/athome/AtHomeStateController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/music/athome/AtHomeStateController;->isAtHomeActive()Z

    move-result v3

    .line 1199
    .local v3, isAtHomeConnected:Z
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/music/widgets/TrackListView$ViewHolder;

    .line 1200
    .local v4, vh:Lcom/google/android/music/widgets/TrackListView$ViewHolder;
    iget-boolean v1, v4, Lcom/google/android/music/widgets/TrackListView$ViewHolder;->hasRemote:Z

    .line 1201
    .local v1, hasRemote:Z
    if-eqz v2, :cond_4f

    .line 1202
    iget-object v5, v4, Lcom/google/android/music/widgets/TrackListView$ViewHolder;->syncProgress:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1203
    if-nez v1, :cond_47

    .line 1205
    invoke-static {v0, v8, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_11

    .line 1209
    :cond_47
    iget-object v5, p0, Lcom/google/android/music/widgets/TrackListView;->mFragment:Lcom/google/android/music/activitymanagement/MusicFragment;

    iget-object v6, p0, Lcom/google/android/music/widgets/TrackListView;->mSongList:Lcom/google/android/music/medialist/SongList;

    invoke-static {v5, v6, p3, v7}, Lcom/google/android/music/MusicUtils;->playMediaList(Lcom/google/android/music/activitymanagement/MusicFragment;Lcom/google/android/music/medialist/SongList;IZ)V

    goto :goto_11

    .line 1211
    :cond_4f
    if-eqz v3, :cond_5b

    if-nez v1, :cond_5b

    .line 1213
    invoke-static {v0, v8, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_11

    .line 1216
    :cond_5b
    iget-object v5, p0, Lcom/google/android/music/widgets/TrackListView;->mFragment:Lcom/google/android/music/activitymanagement/MusicFragment;

    iget-object v6, p0, Lcom/google/android/music/widgets/TrackListView;->mSongList:Lcom/google/android/music/medialist/SongList;

    invoke-static {v5, v6, p3, v7}, Lcom/google/android/music/MusicUtils;->playMediaList(Lcom/google/android/music/activitymanagement/MusicFragment;Lcom/google/android/music/medialist/SongList;IZ)V

    goto :goto_11
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
    .line 1222
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/google/android/music/widgets/TrackListView;->mAdapter:Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;

    #getter for: Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->mTrackCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;
    invoke-static {v0}, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->access$1600(Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;)Lcom/google/android/music/medialist/MediaList$MediaCursor;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 1223
    iget-object v0, p0, Lcom/google/android/music/widgets/TrackListView;->mAdapter:Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;

    #getter for: Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->mTrackCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;
    invoke-static {v0}, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->access$1600(Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;)Lcom/google/android/music/medialist/MediaList$MediaCursor;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/google/android/music/widgets/TrackListView;->createListItemContextMusicMenu(Lcom/google/android/music/medialist/MediaList$MediaCursor;Landroid/view/View;I)V

    .line 1225
    :cond_11
    const/4 v0, 0x1

    return v0
.end method

.method public onMusicModeChanged(Lcom/google/android/music/activitymanagement/MusicStateController;)V
    .registers 4
    .parameter "musicStateController"

    .prologue
    .line 1151
    invoke-virtual {p1}, Lcom/google/android/music/activitymanagement/MusicStateController;->isInManageMusicMode()Z

    move-result v0

    .line 1152
    .local v0, inManageMusicMode:Z
    new-instance v1, Lcom/google/android/music/widgets/TrackListView$10;

    invoke-direct {v1, p0, v0}, Lcom/google/android/music/widgets/TrackListView$10;-><init>(Lcom/google/android/music/widgets/TrackListView;Z)V

    invoke-virtual {p0, v1}, Lcom/google/android/music/widgets/TrackListView;->post(Ljava/lang/Runnable;)Z

    .line 1160
    return-void
.end method

.method public setFragment(Lcom/google/android/music/activitymanagement/MusicFragment;)V
    .registers 2
    .parameter "fragment"

    .prologue
    .line 402
    invoke-static {}, Lcom/google/android/music/MusicUtils;->assertUiThread()V

    .line 403
    iput-object p1, p0, Lcom/google/android/music/widgets/TrackListView;->mFragment:Lcom/google/android/music/activitymanagement/MusicFragment;

    .line 404
    return-void
.end method

.method public setScrollPosition(Lcom/google/android/music/widgets/TrackListView$ScrollPosition;Z)V
    .registers 5
    .parameter "scrollPosition"
    .parameter "smoothScroll"

    .prologue
    .line 346
    invoke-static {}, Lcom/google/android/music/MusicUtils;->assertUiThread()V

    .line 347
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/music/widgets/TrackListView;->mScrollSetTimeNs:J

    .line 348
    iput-boolean p2, p0, Lcom/google/android/music/widgets/TrackListView;->mSmoothScrollToPosition:Z

    .line 349
    iput-object p1, p0, Lcom/google/android/music/widgets/TrackListView;->mScrollToPosition:Lcom/google/android/music/widgets/TrackListView$ScrollPosition;

    .line 350
    invoke-direct {p0}, Lcom/google/android/music/widgets/TrackListView;->processScrollPosition()V

    .line 351
    return-void
.end method

.method public setSongList(Lcom/google/android/music/medialist/SongList;)V
    .registers 3
    .parameter "songList"

    .prologue
    .line 267
    invoke-static {}, Lcom/google/android/music/MusicUtils;->assertUiThread()V

    .line 268
    iput-object p1, p0, Lcom/google/android/music/widgets/TrackListView;->mSongList:Lcom/google/android/music/medialist/SongList;

    .line 269
    iget-object v0, p0, Lcom/google/android/music/widgets/TrackListView;->mSongList:Lcom/google/android/music/medialist/SongList;

    instance-of v0, v0, Lcom/google/android/music/athome/AtHomeSongList;

    iput-boolean v0, p0, Lcom/google/android/music/widgets/TrackListView;->mIsAtHomePartyMode:Z

    .line 270
    iget-object v0, p0, Lcom/google/android/music/widgets/TrackListView;->mSongList:Lcom/google/android/music/medialist/SongList;

    if-eqz v0, :cond_49

    .line 271
    iget-object v0, p0, Lcom/google/android/music/widgets/TrackListView;->mSongList:Lcom/google/android/music/medialist/SongList;

    invoke-virtual {v0}, Lcom/google/android/music/medialist/SongList;->isEditable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/music/widgets/TrackListView;->mEditMode:Z

    .line 275
    :goto_17
    iget-boolean v0, p0, Lcom/google/android/music/widgets/TrackListView;->mEditMode:Z

    if-eqz v0, :cond_4d

    .line 276
    iget-object v0, p0, Lcom/google/android/music/widgets/TrackListView;->mAdapter:Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;

    #getter for: Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->mDropListener:Lcom/google/android/music/TouchInterceptor$DropListener;
    invoke-static {v0}, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->access$1300(Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;)Lcom/google/android/music/TouchInterceptor$DropListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/music/widgets/TrackListView;->setDropListener(Lcom/google/android/music/TouchInterceptor$DropListener;)V

    .line 277
    iget-object v0, p0, Lcom/google/android/music/widgets/TrackListView;->mAdapter:Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;

    #getter for: Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->mRemoveListener:Lcom/google/android/music/TouchInterceptor$RemoveListener;
    invoke-static {v0}, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->access$1400(Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;)Lcom/google/android/music/TouchInterceptor$RemoveListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/music/widgets/TrackListView;->setRemoveListener(Lcom/google/android/music/TouchInterceptor$RemoveListener;)V

    .line 278
    const v0, 0x7f0200a5

    invoke-virtual {p0, v0}, Lcom/google/android/music/widgets/TrackListView;->setSelector(I)V

    .line 279
    invoke-static {}, Lcom/google/android/music/jumper/MusicPreferences;->isHoneycombOrGreater()Z

    move-result v0

    if-nez v0, :cond_3d

    .line 280
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/music/widgets/TrackListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 285
    :cond_3d
    :goto_3d
    invoke-direct {p0}, Lcom/google/android/music/widgets/TrackListView;->updateShowTrackArtistAsync()V

    .line 286
    invoke-direct {p0}, Lcom/google/android/music/widgets/TrackListView;->updateIsNowPlaying()V

    .line 288
    iget-object v0, p0, Lcom/google/android/music/widgets/TrackListView;->mAdapter:Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;

    #calls: Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->notifySongListChanged()V
    invoke-static {v0}, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->access$1500(Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;)V

    .line 289
    return-void

    .line 273
    :cond_49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/widgets/TrackListView;->mEditMode:Z

    goto :goto_17

    .line 283
    :cond_4d
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/music/widgets/TrackListView;->setTextFilterEnabled(Z)V

    goto :goto_3d
.end method
