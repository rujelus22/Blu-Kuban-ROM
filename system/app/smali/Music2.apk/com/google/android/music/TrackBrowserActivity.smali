.class public Lcom/google/android/music/TrackBrowserActivity;
.super Lcom/google/android/music/activitymanagement/MusicFragment;
.source "TrackBrowserActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Lcom/google/android/music/BottomBarChangeListener;
.implements Lcom/google/android/music/activitymanagement/TopLevelActivity$ManageMusicModeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;,
        Lcom/google/android/music/TrackBrowserActivity$SortOrderCallback;
    }
.end annotation


# static fields
.field private static final LOGV:Z


# instance fields
.field private mAdapter:Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;

.field private mAlbumArt:Landroid/widget/ImageView;

.field private mAlbumBg:Landroid/widget/ImageView;

.field private mAllTracks:Z

.field private mBuyButton:Landroid/view/View;

.field private mContainerContextMenu:Landroid/view/View;

.field private mCurrentMusicState:Lcom/google/android/music/activitymanagement/MusicState;

.field private mCursorCols:[Ljava/lang/String;

.field private mDeletedOneRow:Z

.field private mDropListener:Lcom/google/android/music/TouchInterceptor$DropListener;

.field private mEditMode:Z

.field private mHeaderView:Landroid/view/View;

.field private mIsFinished:Z

.field private mIsNowPlaying:Z

.field private mIsStreamingEnabled:Z

.field private mKeepOnCheckBox:Lcom/google/android/music/KeepOnCheckBox;

.field private mListContainer:Landroid/view/View;

.field private volatile mMediaList:Lcom/google/android/music/medialist/SongList;

.field private mMetaDataObserver:Landroid/database/ContentObserver;

.field private mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

.field private mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

.field private mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

.field private mPlaybackServiceListener:Landroid/content/BroadcastReceiver;

.field mQueryComplete:Lcom/google/android/music/medialist/MediaList$OnQueryCompletionHandler;

.field private mRemoveListener:Lcom/google/android/music/TouchInterceptor$RemoveListener;

.field private mRestoreScrollPos:I

.field private mSelectedId:J

.field private mSelectedPosition:I

.field private mSongCount:Landroid/widget/TextView;

.field private mSortChooser:Landroid/widget/TextView;

.field private mSortChooserContainer:Landroid/view/View;

.field private mSortOrderList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSortOrderMenu:Lcom/google/android/music/menu/MusicDropdownMenu;

.field private mSortOrderNameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mStoreConnection:Landroid/content/ServiceConnection;

.field private volatile mStoreService:Lcom/google/android/music/store/IStoreService;

.field private final mStreamabilityChangeListener:Lcom/google/android/music/dl/IStreamabilityChangeListener;

.field private mTitle:Ljava/lang/CharSequence;

.field private mToken:Lcom/google/android/music/MusicUtils$ServiceToken;

.field private mTrackCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

.field private mTrackList:Landroid/widget/ListView;

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 87
    const-string v0, "TrackBrowser"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/TrackBrowserActivity;->LOGV:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .parameter "base"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 152
    invoke-direct {p0, p1}, Lcom/google/android/music/activitymanagement/MusicFragment;-><init>(Landroid/content/Context;)V

    .line 98
    iput-boolean v2, p0, Lcom/google/android/music/TrackBrowserActivity;->mDeletedOneRow:Z

    .line 99
    iput-boolean v2, p0, Lcom/google/android/music/TrackBrowserActivity;->mEditMode:Z

    .line 108
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mSelectedId:J

    .line 120
    iput-boolean v2, p0, Lcom/google/android/music/TrackBrowserActivity;->mIsNowPlaying:Z

    .line 135
    iput-boolean v2, p0, Lcom/google/android/music/TrackBrowserActivity;->mIsFinished:Z

    .line 137
    iput-object v3, p0, Lcom/google/android/music/TrackBrowserActivity;->mTitle:Ljava/lang/CharSequence;

    .line 139
    iput-object v3, p0, Lcom/google/android/music/TrackBrowserActivity;->mCurrentMusicState:Lcom/google/android/music/activitymanagement/MusicState;

    .line 141
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mRestoreScrollPos:I

    .line 145
    iput-object v3, p0, Lcom/google/android/music/TrackBrowserActivity;->mBuyButton:Landroid/view/View;

    .line 147
    iput-boolean v2, p0, Lcom/google/android/music/TrackBrowserActivity;->mIsStreamingEnabled:Z

    .line 717
    new-instance v0, Lcom/google/android/music/TrackBrowserActivity$4;

    invoke-direct {v0, p0}, Lcom/google/android/music/TrackBrowserActivity$4;-><init>(Lcom/google/android/music/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mStoreConnection:Landroid/content/ServiceConnection;

    .line 920
    new-instance v0, Lcom/google/android/music/TrackBrowserActivity$6;

    invoke-direct {v0, p0}, Lcom/google/android/music/TrackBrowserActivity$6;-><init>(Lcom/google/android/music/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mDropListener:Lcom/google/android/music/TouchInterceptor$DropListener;

    .line 927
    new-instance v0, Lcom/google/android/music/TrackBrowserActivity$7;

    invoke-direct {v0, p0}, Lcom/google/android/music/TrackBrowserActivity$7;-><init>(Lcom/google/android/music/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mRemoveListener:Lcom/google/android/music/TouchInterceptor$RemoveListener;

    .line 955
    new-instance v0, Lcom/google/android/music/TrackBrowserActivity$8;

    invoke-direct {v0, p0}, Lcom/google/android/music/TrackBrowserActivity$8;-><init>(Lcom/google/android/music/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mPlaybackServiceListener:Landroid/content/BroadcastReceiver;

    .line 1243
    new-instance v0, Lcom/google/android/music/TrackBrowserActivity$10;

    invoke-direct {v0, p0}, Lcom/google/android/music/TrackBrowserActivity$10;-><init>(Lcom/google/android/music/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mQueryComplete:Lcom/google/android/music/medialist/MediaList$OnQueryCompletionHandler;

    .line 1831
    new-instance v0, Lcom/google/android/music/TrackBrowserActivity$11;

    invoke-direct {v0, p0}, Lcom/google/android/music/TrackBrowserActivity$11;-><init>(Lcom/google/android/music/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mStreamabilityChangeListener:Lcom/google/android/music/dl/IStreamabilityChangeListener;

    .line 153
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/medialist/SongList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/android/music/TrackBrowserActivity;Lcom/google/android/music/medialist/SongList;)Lcom/google/android/music/medialist/SongList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/android/music/TrackBrowserActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/google/android/music/TrackBrowserActivity;->setTitle()V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/menu/MusicDropdownMenu;
    .registers 2
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mSortOrderMenu:Lcom/google/android/music/menu/MusicDropdownMenu;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/android/music/TrackBrowserActivity;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/google/android/music/TrackBrowserActivity;->getTrackCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/store/IStoreService;
    .registers 2
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mStoreService:Lcom/google/android/music/store/IStoreService;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/google/android/music/TrackBrowserActivity;Lcom/google/android/music/store/IStoreService;)Lcom/google/android/music/store/IStoreService;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/google/android/music/TrackBrowserActivity;->mStoreService:Lcom/google/android/music/store/IStoreService;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/google/android/music/TrackBrowserActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/google/android/music/TrackBrowserActivity;->updateContainerOfflineStatus()V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/android/music/TrackBrowserActivity;)Ljava/lang/CharSequence;
    .registers 2
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/google/android/music/TrackBrowserActivity;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/google/android/music/TrackBrowserActivity;->mTitle:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/google/android/music/TrackBrowserActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/google/android/music/TrackBrowserActivity;->requestReconfig()V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/android/music/TrackBrowserActivity;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mSongCount:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/medialist/MediaList$MediaCursor;
    .registers 2
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/google/android/music/TrackBrowserActivity;Lcom/google/android/music/medialist/MediaList$MediaCursor;)Lcom/google/android/music/medialist/MediaList$MediaCursor;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/google/android/music/TrackBrowserActivity;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/google/android/music/TrackBrowserActivity;->removePlaylistItem(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/google/android/music/TrackBrowserActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/google/android/music/TrackBrowserActivity;->updateIsNowPlaying()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/music/TrackBrowserActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/google/android/music/TrackBrowserActivity;->updateHeaderImage()V

    return-void
.end method

.method static synthetic access$2000(Lcom/google/android/music/TrackBrowserActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mIsNowPlaying:Z

    return v0
.end method

.method static synthetic access$2100(Lcom/google/android/music/TrackBrowserActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mDeletedOneRow:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/google/android/music/TrackBrowserActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/google/android/music/TrackBrowserActivity;->mDeletedOneRow:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/google/android/music/TrackBrowserActivity;)[Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mCursorCols:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/google/android/music/TrackBrowserActivity;)Landroid/widget/ListView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/google/android/music/TrackBrowserActivity;Landroid/view/View;I)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/TrackBrowserActivity;->onCreateListContextMusicMenu(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$2600(Lcom/google/android/music/TrackBrowserActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mEditMode:Z

    return v0
.end method

.method static synthetic access$2700(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/jumper/MusicPreferences;
    .registers 2
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/google/android/music/TrackBrowserActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mIsStreamingEnabled:Z

    return v0
.end method

.method static synthetic access$2802(Lcom/google/android/music/TrackBrowserActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/google/android/music/TrackBrowserActivity;->mIsStreamingEnabled:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/OfflineMusicManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/activitymanagement/MusicState;
    .registers 2
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mCurrentMusicState:Lcom/google/android/music/activitymanagement/MusicState;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/google/android/music/TrackBrowserActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mAllTracks:Z

    return v0
.end method

.method static synthetic access$3200(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/KeepOnCheckBox;
    .registers 2
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mKeepOnCheckBox:Lcom/google/android/music/KeepOnCheckBox;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/google/android/music/TrackBrowserActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 81
    iget v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mRestoreScrollPos:I

    return v0
.end method

.method static synthetic access$3302(Lcom/google/android/music/TrackBrowserActivity;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput p1, p0, Lcom/google/android/music/TrackBrowserActivity;->mRestoreScrollPos:I

    return p1
.end method

.method static synthetic access$400(Lcom/google/android/music/TrackBrowserActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/google/android/music/TrackBrowserActivity;->openSortMenu()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mAdapter:Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/music/TrackBrowserActivity;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mHeaderView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/music/TrackBrowserActivity;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mSortOrderNameList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/music/TrackBrowserActivity;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mSortChooser:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/music/TrackBrowserActivity;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mSortOrderList:Ljava/util/ArrayList;

    return-object v0
.end method

.method private cleanState()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 747
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    if-eqz v0, :cond_18

    .line 748
    iget-boolean v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mEditMode:Z

    if-eqz v0, :cond_18

    .line 750
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    check-cast v0, Lcom/google/android/music/TouchInterceptor;

    invoke-virtual {v0, v2}, Lcom/google/android/music/TouchInterceptor;->setDropListener(Lcom/google/android/music/TouchInterceptor$DropListener;)V

    .line 751
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    check-cast v0, Lcom/google/android/music/TouchInterceptor;

    invoke-virtual {v0, v2}, Lcom/google/android/music/TouchInterceptor;->setRemoveListener(Lcom/google/android/music/TouchInterceptor$RemoveListener;)V

    .line 756
    :cond_18
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    invoke-virtual {v0}, Lcom/google/android/music/medialist/SongList;->hasMetaData()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 757
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity;->mMetaDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/music/medialist/SongList;->unregisterMetaDataObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    .line 764
    :cond_2b
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mAdapter:Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;

    if-eqz v0, :cond_34

    .line 765
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mAdapter:Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;

    invoke-virtual {v0, v2}, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 767
    :cond_34
    invoke-direct {p0, v2}, Lcom/google/android/music/TrackBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 768
    iput-object v2, p0, Lcom/google/android/music/TrackBrowserActivity;->mAdapter:Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;

    .line 769
    iput-object v2, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    .line 770
    iput-object v2, p0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    .line 771
    iput-object v2, p0, Lcom/google/android/music/TrackBrowserActivity;->mMetaDataObserver:Landroid/database/ContentObserver;

    .line 772
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mSelectedId:J

    .line 773
    iput-boolean v3, p0, Lcom/google/android/music/TrackBrowserActivity;->mEditMode:Z

    .line 774
    iput-object v2, p0, Lcom/google/android/music/TrackBrowserActivity;->mCursorCols:[Ljava/lang/String;

    .line 775
    iput-boolean v3, p0, Lcom/google/android/music/TrackBrowserActivity;->mAllTracks:Z

    .line 776
    iput-boolean v3, p0, Lcom/google/android/music/TrackBrowserActivity;->mIsNowPlaying:Z

    .line 777
    iput-boolean v3, p0, Lcom/google/android/music/TrackBrowserActivity;->mDeletedOneRow:Z

    .line 778
    iput-object v2, p0, Lcom/google/android/music/TrackBrowserActivity;->mTitle:Ljava/lang/CharSequence;

    .line 779
    iput-object v2, p0, Lcom/google/android/music/TrackBrowserActivity;->mCurrentMusicState:Lcom/google/android/music/activitymanagement/MusicState;

    .line 780
    return-void
.end method

.method private containerContextMenuClick(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 1052
    new-instance v0, Lcom/google/android/music/TrackBrowserActivity$9;

    invoke-direct {v0, p0, p1}, Lcom/google/android/music/TrackBrowserActivity$9;-><init>(Lcom/google/android/music/TrackBrowserActivity;Landroid/view/View;)V

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->runAsyncWithCallback(Lcom/google/android/music/utils/async/AsyncRunner;)V

    .line 1121
    return-void
.end method

.method private getTrackCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .registers 4
    .parameter "filter"

    .prologue
    .line 1251
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity;->mCursorCols:[Ljava/lang/String;

    invoke-virtual {v0, p0, v1, p1}, Lcom/google/android/music/medialist/SongList;->getCursor(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/music/medialist/MediaList$MediaCursor;

    move-result-object v0

    return-object v0
.end method

.method private initTracks()V
    .registers 9

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 658
    invoke-direct {p0}, Lcom/google/android/music/TrackBrowserActivity;->updateIsNowPlaying()V

    .line 660
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mAdapter:Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;

    if-nez v0, :cond_2c

    .line 661
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    invoke-virtual {v0}, Lcom/google/android/music/medialist/SongList;->getItemLayout()I

    move-result v3

    .line 663
    .local v3, layout:I
    new-instance v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;

    invoke-virtual {p0}, Lcom/google/android/music/TrackBrowserActivity;->getApplication()Landroid/content/Context;

    move-result-object v1

    new-array v5, v2, [Ljava/lang/String;

    new-array v6, v2, [I

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;-><init>(Landroid/content/Context;Lcom/google/android/music/TrackBrowserActivity;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mAdapter:Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;

    .line 670
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mAdapter:Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;

    invoke-direct {p0, v0}, Lcom/google/android/music/TrackBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 671
    invoke-direct {p0, v4}, Lcom/google/android/music/TrackBrowserActivity;->getTrackCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 672
    .local v7, c:Landroid/database/Cursor;
    invoke-virtual {p0, v7}, Lcom/google/android/music/TrackBrowserActivity;->init(Landroid/database/Cursor;)V

    .line 689
    .end local v3           #layout:I
    :goto_2b
    return-void

    .line 675
    .end local v7           #c:Landroid/database/Cursor;
    :cond_2c
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mAdapter:Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;

    invoke-virtual {v0}, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v7

    .line 682
    .restart local v7       #c:Landroid/database/Cursor;
    if-eqz v7, :cond_38

    .line 683
    invoke-virtual {p0, v7}, Lcom/google/android/music/TrackBrowserActivity;->init(Landroid/database/Cursor;)V

    goto :goto_2b

    .line 685
    :cond_38
    invoke-direct {p0, v4}, Lcom/google/android/music/TrackBrowserActivity;->getTrackCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 686
    invoke-virtual {p0, v7}, Lcom/google/android/music/TrackBrowserActivity;->init(Landroid/database/Cursor;)V

    goto :goto_2b
.end method

.method private isMusic(Landroid/database/Cursor;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1011
    const-string v2, "title"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 1012
    const-string v3, "album"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 1013
    const-string v4, "artist"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 1015
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1016
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1017
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1018
    invoke-static {v3}, Lcom/google/android/music/MusicUtils;->isUnknown(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-static {v4}, Lcom/google/android/music/MusicUtils;->isUnknown(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_37

    if-eqz v2, :cond_37

    const-string v3, "recording"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 1031
    :goto_36
    return v1

    .line 1026
    :cond_37
    const-string v2, "is_music"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 1028
    if-ltz v2, :cond_47

    .line 1029
    iget-object v3, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    invoke-virtual {v3, v2}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_49

    :cond_47
    :goto_47
    move v1, v0

    .line 1031
    goto :goto_36

    :cond_49
    move v0, v1

    .line 1029
    goto :goto_47
.end method

.method private loadView(Lcom/google/android/music/activitymanagement/MusicState;)Landroid/view/View;
    .registers 16
    .parameter "appState"

    .prologue
    const/16 v13, 0x8

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 335
    invoke-virtual {p1}, Lcom/google/android/music/activitymanagement/MusicState;->isTopLevelState()Z

    move-result v8

    if-nez v8, :cond_f

    iget-boolean v8, p1, Lcom/google/android/music/activitymanagement/MusicState;->mInTab:Z

    if-eqz v8, :cond_127

    .line 336
    :cond_f
    const v8, 0x7f040042

    invoke-virtual {p0, v8}, Lcom/google/android/music/TrackBrowserActivity;->inflateView(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mView:Landroid/view/View;

    .line 341
    :goto_18
    iget-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mView:Landroid/view/View;

    const v9, 0x7f10006d

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mListContainer:Landroid/view/View;

    .line 342
    iget-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mView:Landroid/view/View;

    const v9, 0x102000a

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ListView;

    iput-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    .line 343
    iget-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    invoke-virtual {v8, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 344
    iget-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    invoke-virtual {v8, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 345
    iget-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    invoke-virtual {v8, v12}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 346
    iget-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    invoke-virtual {v8, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 347
    iget-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    invoke-virtual {v8, v12}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 349
    iget-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v8}, Lcom/google/android/music/jumper/MusicPreferences;->isTvMusic()Z

    move-result v8

    if-eqz v8, :cond_132

    .line 350
    iget-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    const v9, 0x7f0201e0

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->setSelector(I)V

    .line 363
    :cond_59
    :goto_59
    iget-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v8}, Lcom/google/android/music/jumper/MusicPreferences;->isTvMusic()Z

    move-result v8

    if-eqz v8, :cond_164

    invoke-virtual {p1}, Lcom/google/android/music/activitymanagement/MusicState;->isTopLevelState()Z

    move-result v8

    if-nez v8, :cond_164

    .line 364
    invoke-virtual {p0}, Lcom/google/android/music/TrackBrowserActivity;->getMusicUIController()Lcom/google/android/music/activitymanagement/MusicUIController;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/music/activitymanagement/MusicUIController;->getAlbumInfoView()Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mHeaderView:Landroid/view/View;

    .line 369
    :goto_71
    iget-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v8}, Lcom/google/android/music/jumper/MusicPreferences;->isTabletMusic()Z

    move-result v8

    if-eqz v8, :cond_236

    .line 371
    iget-boolean v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mAllTracks:Z

    if-eqz v8, :cond_171

    .line 372
    const v8, 0x7f040017

    invoke-virtual {p0, v8}, Lcom/google/android/music/TrackBrowserActivity;->inflateView(I)Landroid/view/View;

    move-result-object v6

    .line 376
    .local v6, topLine:Landroid/view/View;
    :goto_84
    const v8, 0x7f10005e

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mSortChooser:Landroid/widget/TextView;

    .line 377
    const v8, 0x7f10005d

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mSortChooserContainer:Landroid/view/View;

    .line 378
    iget-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    invoke-virtual {v8, v6, v10, v11}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 380
    iget-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    const/high16 v9, 0x100

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    .line 382
    iget-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v8}, Lcom/google/android/music/jumper/MusicPreferences;->isTvMusic()Z

    move-result v8

    if-eqz v8, :cond_17a

    iget-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mSortChooser:Landroid/widget/TextView;

    if-eqz v8, :cond_17a

    .line 383
    iget-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mSortChooser:Landroid/widget/TextView;

    invoke-virtual {v8, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 440
    .end local v6           #topLine:Landroid/view/View;
    :cond_b5
    :goto_b5
    iget-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mHeaderView:Landroid/view/View;

    if-eqz v8, :cond_fc

    .line 441
    iget-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mHeaderView:Landroid/view/View;

    const v9, 0x7f100012

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mContainerContextMenu:Landroid/view/View;

    .line 443
    iget-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    invoke-virtual {v8, v11}, Lcom/google/android/music/medialist/SongList;->isFlagSet(I)Z

    move-result v8

    if-nez v8, :cond_250

    .line 444
    iget-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mContainerContextMenu:Landroid/view/View;

    invoke-virtual {v8, v13}, Landroid/view/View;->setVisibility(I)V

    .line 453
    :cond_d1
    :goto_d1
    iget-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mHeaderView:Landroid/view/View;

    const v9, 0x7f10000e

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/google/android/music/KeepOnCheckBox;

    iput-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mKeepOnCheckBox:Lcom/google/android/music/KeepOnCheckBox;

    .line 455
    iget-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mKeepOnCheckBox:Lcom/google/android/music/KeepOnCheckBox;

    invoke-virtual {v8, p0}, Lcom/google/android/music/KeepOnCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 456
    iget-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mKeepOnCheckBox:Lcom/google/android/music/KeepOnCheckBox;

    new-instance v9, Lcom/google/android/music/FadingColorDrawable;

    iget-object v10, p0, Lcom/google/android/music/TrackBrowserActivity;->mKeepOnCheckBox:Lcom/google/android/music/KeepOnCheckBox;

    invoke-direct {v9, p0, v10}, Lcom/google/android/music/FadingColorDrawable;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {v8, v9}, Lcom/google/android/music/KeepOnCheckBox;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 457
    iget-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mHeaderView:Landroid/view/View;

    const v9, 0x7f100011

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mSongCount:Landroid/widget/TextView;

    .line 460
    :cond_fc
    iget-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    invoke-virtual {v8}, Lcom/google/android/music/medialist/SongList;->getStoreUrl()Ljava/lang/String;

    move-result-object v5

    .line 461
    .local v5, storeUrl:Ljava/lang/String;
    if-eqz v5, :cond_11e

    .line 462
    const v8, 0x7f040034

    invoke-virtual {p0, v8}, Lcom/google/android/music/TrackBrowserActivity;->inflateView(I)Landroid/view/View;

    move-result-object v7

    .line 463
    .local v7, v:Landroid/view/View;
    const v8, 0x7f10004b

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mBuyButton:Landroid/view/View;

    .line 464
    iget-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mBuyButton:Landroid/view/View;

    invoke-virtual {v8, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 465
    iget-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    invoke-virtual {v8, v7}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 468
    .end local v7           #v:Landroid/view/View;
    :cond_11e
    invoke-direct {p0}, Lcom/google/android/music/TrackBrowserActivity;->updateContainerOfflineStatus()V

    .line 470
    invoke-direct {p0}, Lcom/google/android/music/TrackBrowserActivity;->updateHeaderImage()V

    .line 471
    iget-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mView:Landroid/view/View;

    return-object v8

    .line 338
    .end local v5           #storeUrl:Ljava/lang/String;
    :cond_127
    const v8, 0x7f040043

    invoke-virtual {p0, v8}, Lcom/google/android/music/TrackBrowserActivity;->inflateView(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mView:Landroid/view/View;

    goto/16 :goto_18

    .line 351
    :cond_132
    iget-boolean v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mEditMode:Z

    if-eqz v8, :cond_15d

    .line 352
    iget-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    check-cast v8, Lcom/google/android/music/TouchInterceptor;

    iget-object v9, p0, Lcom/google/android/music/TrackBrowserActivity;->mDropListener:Lcom/google/android/music/TouchInterceptor$DropListener;

    invoke-virtual {v8, v9}, Lcom/google/android/music/TouchInterceptor;->setDropListener(Lcom/google/android/music/TouchInterceptor$DropListener;)V

    .line 353
    iget-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    check-cast v8, Lcom/google/android/music/TouchInterceptor;

    iget-object v9, p0, Lcom/google/android/music/TrackBrowserActivity;->mRemoveListener:Lcom/google/android/music/TouchInterceptor$RemoveListener;

    invoke-virtual {v8, v9}, Lcom/google/android/music/TouchInterceptor;->setRemoveListener(Lcom/google/android/music/TouchInterceptor$RemoveListener;)V

    .line 354
    iget-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    const v9, 0x7f02014c

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->setSelector(I)V

    .line 355
    invoke-static {}, Lcom/google/android/music/jumper/MusicPreferences;->isHoneycombOrGreater()Z

    move-result v8

    if-nez v8, :cond_59

    .line 356
    iget-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    invoke-virtual {v8, v10}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_59

    .line 359
    :cond_15d
    iget-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    invoke-virtual {v8, v11}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    goto/16 :goto_59

    .line 366
    :cond_164
    iget-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mView:Landroid/view/View;

    const v9, 0x7f10000b

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mHeaderView:Landroid/view/View;

    goto/16 :goto_71

    .line 374
    :cond_171
    const v8, 0x7f040018

    invoke-virtual {p0, v8}, Lcom/google/android/music/TrackBrowserActivity;->inflateView(I)Landroid/view/View;

    move-result-object v6

    .restart local v6       #topLine:Landroid/view/View;
    goto/16 :goto_84

    .line 384
    :cond_17a
    iget-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mSortChooser:Landroid/widget/TextView;

    if-eqz v8, :cond_b5

    .line 385
    iget-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    invoke-virtual {v8}, Lcom/google/android/music/medialist/SongList;->getValidSortOrders()Ljava/util/ArrayList;

    move-result-object v8

    iput-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mSortOrderList:Ljava/util/ArrayList;

    .line 386
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mSortOrderNameList:Ljava/util/ArrayList;

    .line 388
    iget-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mSortOrderList:Ljava/util/ArrayList;

    if-eqz v8, :cond_219

    .line 389
    iget-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    invoke-virtual {v8}, Lcom/google/android/music/medialist/SongList;->getSortOrder()I

    move-result v0

    .line 390
    .local v0, currentSortOrder:I
    new-instance v8, Lcom/google/android/music/menu/MusicDropdownMenu;

    new-instance v9, Lcom/google/android/music/TrackBrowserActivity$SortOrderCallback;

    invoke-direct {v9, p0, v10}, Lcom/google/android/music/TrackBrowserActivity$SortOrderCallback;-><init>(Lcom/google/android/music/TrackBrowserActivity;Lcom/google/android/music/TrackBrowserActivity$1;)V

    iget-object v10, p0, Lcom/google/android/music/TrackBrowserActivity;->mSortChooser:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getRootView()Landroid/view/View;

    move-result-object v10

    invoke-direct {v8, p0, v9, v10}, Lcom/google/android/music/menu/MusicDropdownMenu;-><init>(Landroid/content/Context;Lcom/google/android/music/menu/MusicMenu$Callback;Landroid/view/View;)V

    iput-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mSortOrderMenu:Lcom/google/android/music/menu/MusicDropdownMenu;

    .line 392
    iget-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mSortOrderMenu:Lcom/google/android/music/menu/MusicDropdownMenu;

    invoke-virtual {v8, v11}, Lcom/google/android/music/menu/MusicDropdownMenu;->setRadioButtonsEnabled(Z)V

    .line 393
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1af
    iget-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mSortOrderList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v1, v8, :cond_214

    .line 394
    iget-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mSortOrderList:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 395
    .local v3, order:I
    const/4 v4, 0x0

    .line 396
    .local v4, sortNameResource:I
    if-ne v3, v11, :cond_1f7

    .line 397
    const v4, 0x7f0d00cc

    .line 410
    :goto_1c9
    if-eqz v4, :cond_1f4

    .line 411
    iget-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mSortOrderNameList:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 412
    iget-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mSortOrderMenu:Lcom/google/android/music/menu/MusicDropdownMenu;

    invoke-virtual {p0}, Lcom/google/android/music/TrackBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v1, v1, v9}, Lcom/google/android/music/menu/MusicDropdownMenu;->add(IILjava/lang/String;)Lcom/google/android/music/menu/MusicMenuItem;

    move-result-object v2

    .line 414
    .local v2, item:Lcom/google/android/music/menu/MusicMenuItem;
    if-ne v0, v3, :cond_1f4

    .line 415
    iget-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mSortChooser:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/android/music/TrackBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 416
    invoke-virtual {v2, v11}, Lcom/google/android/music/menu/MusicMenuItem;->setChecked(Z)V

    .line 393
    .end local v2           #item:Lcom/google/android/music/menu/MusicMenuItem;
    :cond_1f4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1af

    .line 398
    :cond_1f7
    const/4 v8, 0x3

    if-ne v3, v8, :cond_1fe

    .line 399
    const v4, 0x7f0d00cd

    goto :goto_1c9

    .line 400
    :cond_1fe
    const/4 v8, 0x2

    if-ne v3, v8, :cond_205

    .line 401
    const v4, 0x7f0d00ce

    goto :goto_1c9

    .line 402
    :cond_205
    const/4 v8, 0x4

    if-ne v3, v8, :cond_20c

    .line 403
    const v4, 0x7f0d00cf

    goto :goto_1c9

    .line 407
    :cond_20c
    iget-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mSortOrderList:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 408
    add-int/lit8 v1, v1, -0x1

    goto :goto_1c9

    .line 421
    .end local v3           #order:I
    .end local v4           #sortNameResource:I
    :cond_214
    iget-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mSortChooserContainer:Landroid/view/View;

    invoke-virtual {v8, v12}, Landroid/view/View;->setVisibility(I)V

    .line 423
    .end local v0           #currentSortOrder:I
    .end local v1           #i:I
    :cond_219
    iget-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mSortOrderList:Ljava/util/ArrayList;

    if-eqz v8, :cond_225

    iget-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mSortOrderList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_22a

    .line 425
    :cond_225
    iget-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mSortChooserContainer:Landroid/view/View;

    invoke-virtual {v8, v13}, Landroid/view/View;->setVisibility(I)V

    .line 427
    :cond_22a
    iget-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mSortChooser:Landroid/widget/TextView;

    new-instance v9, Lcom/google/android/music/TrackBrowserActivity$2;

    invoke-direct {v9, p0}, Lcom/google/android/music/TrackBrowserActivity$2;-><init>(Lcom/google/android/music/TrackBrowserActivity;)V

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_b5

    .line 434
    .end local v6           #topLine:Landroid/view/View;
    :cond_236
    iget-boolean v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mAllTracks:Z

    if-nez v8, :cond_b5

    iget-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mHeaderView:Landroid/view/View;

    if-nez v8, :cond_b5

    .line 435
    const v8, 0x7f040005

    invoke-virtual {p0, v8}, Lcom/google/android/music/TrackBrowserActivity;->inflateView(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mHeaderView:Landroid/view/View;

    .line 436
    iget-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    iget-object v9, p0, Lcom/google/android/music/TrackBrowserActivity;->mHeaderView:Landroid/view/View;

    invoke-virtual {v8, v9, v10, v12}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    goto/16 :goto_b5

    .line 446
    :cond_250
    iget-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mContainerContextMenu:Landroid/view/View;

    invoke-virtual {v8, v12}, Landroid/view/View;->setVisibility(I)V

    .line 447
    iget-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mContainerContextMenu:Landroid/view/View;

    invoke-virtual {v8, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 448
    iget-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mContainerContextMenu:Landroid/view/View;

    instance-of v8, v8, Landroid/widget/ImageView;

    if-eqz v8, :cond_d1

    .line 449
    iget-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mContainerContextMenu:Landroid/view/View;

    new-instance v9, Lcom/google/android/music/FadingColorDrawable;

    iget-object v10, p0, Lcom/google/android/music/TrackBrowserActivity;->mContainerContextMenu:Landroid/view/View;

    invoke-direct {v9, p0, v10}, Lcom/google/android/music/FadingColorDrawable;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_d1
.end method

.method private moveItem(Z)V
    .registers 7
    .parameter "up"

    .prologue
    const/4 v4, 0x1

    .line 1210
    iget-object v2, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    invoke-virtual {v2}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->getCount()I

    move-result v0

    .line 1211
    .local v0, curcount:I
    iget-object v2, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v1

    .line 1212
    .local v1, curpos:I
    if-eqz p1, :cond_11

    if-lt v1, v4, :cond_17

    :cond_11
    if-nez p1, :cond_18

    add-int/lit8 v2, v0, -0x1

    if-lt v1, v2, :cond_18

    .line 1224
    :cond_17
    :goto_17
    return-void

    .line 1216
    :cond_18
    iget-object v3, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    if-eqz p1, :cond_32

    add-int/lit8 v2, v1, -0x1

    :goto_1e
    invoke-virtual {v3, v1, v2}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->moveItem(II)V

    .line 1217
    iget-object v2, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->invalidateViews()V

    .line 1218
    iput-boolean v4, p0, Lcom/google/android/music/TrackBrowserActivity;->mDeletedOneRow:Z

    .line 1219
    if-eqz p1, :cond_35

    .line 1220
    iget-object v2, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_17

    .line 1216
    :cond_32
    add-int/lit8 v2, v1, 0x1

    goto :goto_1e

    .line 1222
    :cond_35
    iget-object v2, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_17
.end method

.method private onCreateListContextMusicMenu(Landroid/view/View;I)V
    .registers 25
    .parameter
    .parameter

    .prologue
    .line 1130
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/google/android/music/medialist/SongList;->isFlagSet(I)Z

    move-result v2

    if-nez v2, :cond_c

    .line 1173
    :cond_b
    :goto_b
    return-void

    .line 1133
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    sub-int v5, p2, v2

    .line 1134
    if-ltz v5, :cond_b

    .line 1137
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/TrackBrowserActivity;->mTrackCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    invoke-virtual {v2, v5}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->moveToPosition(I)Z

    .line 1139
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/TrackBrowserActivity;->mTrackCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    const-string v3, "audio_id"

    invoke-virtual {v2, v3}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 1140
    const/4 v2, -0x1

    .line 1141
    if-gez v3, :cond_67

    .line 1142
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/TrackBrowserActivity;->mTrackCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    const-string v4, "_id"

    invoke-virtual {v3, v4}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 1146
    :goto_36
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/music/TrackBrowserActivity;->mTrackCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    invoke-virtual {v4, v3}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->getLong(I)J

    move-result-wide v3

    .line 1147
    const-wide/16 v6, 0x0

    cmp-long v6, v3, v6

    if-gtz v6, :cond_72

    .line 1148
    const-string v2, "TrackBrowser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Trying to create a context menu on position: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " with an invalid trackId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 1144
    :cond_67
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/TrackBrowserActivity;->mTrackCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    const-string v4, "_id"

    invoke-virtual {v2, v4}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    goto :goto_36

    .line 1153
    :cond_72
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/music/TrackBrowserActivity;->mTrackCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/music/TrackBrowserActivity;->mTrackCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    const-string v7, "title"

    invoke-virtual {v6, v7}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1156
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/music/TrackBrowserActivity;->mTrackCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/music/TrackBrowserActivity;->mTrackCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    const-string v8, "hasRemote"

    invoke-virtual {v7, v8}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->getInt(I)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_129

    const/16 v18, 0x1

    .line 1158
    :goto_9b
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/music/TrackBrowserActivity;->mTrackCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/music/TrackBrowserActivity;->mTrackCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    const-string v8, "hasLocal"

    invoke-virtual {v7, v8}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->getInt(I)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_12d

    const/16 v19, 0x1

    .line 1160
    :goto_b2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/music/TrackBrowserActivity;->mTrackCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/music/TrackBrowserActivity;->mTrackCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    const-string v8, "AlbumArtistId"

    invoke-virtual {v7, v8}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->getLong(I)J

    move-result-wide v6

    .line 1162
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/music/TrackBrowserActivity;->mTrackCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/music/TrackBrowserActivity;->mTrackCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    const-string v10, "artist"

    invoke-virtual {v9, v10}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1164
    const/4 v9, -0x1

    if-ne v2, v9, :cond_130

    const-wide/16 v14, -0x1

    .line 1165
    :goto_db
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/TrackBrowserActivity;->mTrackCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/music/TrackBrowserActivity;->mTrackCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    const-string v10, "StoreId"

    invoke-virtual {v9, v10}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v2, v9}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 1168
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/TrackBrowserActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/music/activitymanagement/MusicStateController;->getContextMenuManager()Lcom/google/android/music/utils/ContextMenuManager;

    move-result-object v2

    invoke-static/range {p1 .. p1}, Lcom/google/android/music/utils/ContextMenuManager;->getPopupLocation(Landroid/view/View;)[I

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v10

    const/4 v11, 0x2

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/google/android/music/TrackBrowserActivity;->mEditMode:Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity;->mTrackCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/google/android/music/TrackBrowserActivity;->isMusic(Landroid/database/Cursor;)Z

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity;->mStoreService:Lcom/google/android/music/store/IStoreService;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity;->mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/music/NetworkMonitorServiceConnection;->getNetworkMonitor()Lcom/google/android/music/dl/INetworkMonitor;

    move-result-object v21

    invoke-virtual/range {v2 .. v21}, Lcom/google/android/music/utils/ContextMenuManager;->showTrackContextMenu(JLjava/lang/String;JLjava/lang/String;[ILandroid/view/View;IZLcom/google/android/music/medialist/SongList;JLjava/lang/String;ZZZLcom/google/android/music/store/IStoreService;Lcom/google/android/music/dl/INetworkMonitor;)V

    goto/16 :goto_b

    .line 1156
    :cond_129
    const/16 v18, 0x0

    goto/16 :goto_9b

    .line 1158
    :cond_12d
    const/16 v19, 0x0

    goto :goto_b2

    .line 1164
    :cond_130
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/music/TrackBrowserActivity;->mTrackCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    invoke-virtual {v9, v2}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->getLong(I)J

    move-result-wide v14

    goto :goto_db
.end method

.method private onKeepOnCheckBoxClicked(Landroid/view/View;)V
    .registers 5
    .parameter "view"

    .prologue
    .line 1124
    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity;->mKeepOnCheckBox:Lcom/google/android/music/KeepOnCheckBox;

    invoke-virtual {v1}, Lcom/google/android/music/KeepOnCheckBox;->isChecked()Z

    move-result v0

    .line 1125
    .local v0, isSelected:Z
    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    iget-object v2, p0, Lcom/google/android/music/TrackBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    invoke-virtual {v1, v2, p0, v0}, Lcom/google/android/music/medialist/SongList;->modifyOfflineStatus(Lcom/google/android/music/OfflineMusicManager;Landroid/content/Context;Z)V

    .line 1127
    return-void
.end method

.method private openSortMenu()V
    .registers 3

    .prologue
    .line 623
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mSortOrderMenu:Lcom/google/android/music/menu/MusicDropdownMenu;

    if-eqz v0, :cond_10

    .line 624
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mSortOrderMenu:Lcom/google/android/music/menu/MusicDropdownMenu;

    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity;->mSortChooser:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/google/android/music/menu/MusicDropdownMenu;->setButtonView(Landroid/view/View;)V

    .line 625
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mSortOrderMenu:Lcom/google/android/music/menu/MusicDropdownMenu;

    invoke-virtual {v0}, Lcom/google/android/music/menu/MusicDropdownMenu;->show()V

    .line 627
    :cond_10
    return-void
.end method

.method private removeItem()V
    .registers 4

    .prologue
    .line 1200
    iget-object v2, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    invoke-virtual {v2}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->getCount()I

    move-result v0

    .line 1201
    .local v0, curcount:I
    iget-object v2, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v1

    .line 1202
    .local v1, curpos:I
    if-eqz v0, :cond_10

    if-gez v1, :cond_11

    .line 1207
    :cond_10
    :goto_10
    return-void

    .line 1206
    :cond_11
    iget-object v2, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    invoke-virtual {v2, v1}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->removeItem(I)V

    goto :goto_10
.end method

.method private removePlaylistItem(I)V
    .registers 6
    .parameter

    .prologue
    .line 935
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 936
    if-nez v1, :cond_29

    .line 937
    const-string v0, "TrackBrowser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No view when removing playlist item "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    :goto_28
    return-void

    .line 941
    :cond_29
    :try_start_29
    sget-object v0, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    if-eqz v0, :cond_38

    sget-object v0, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v0}, Lcom/google/android/music/IMusicPlaybackService;->getQueuePosition()I

    move-result v0

    if-eq p1, v0, :cond_38

    .line 943
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mDeletedOneRow:Z
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_38} :catch_51

    .line 948
    :cond_38
    :goto_38
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 949
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 950
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    invoke-virtual {v0, p1}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->removeItem(I)V

    .line 951
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 952
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    goto :goto_28

    .line 945
    :catch_51
    move-exception v0

    .line 946
    const-string v2, "TrackBrowser"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_38
.end method

.method private final setListAdapter(Landroid/widget/ListAdapter;)V
    .registers 3
    .parameter "adapter"

    .prologue
    .line 636
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    if-eqz v0, :cond_9

    .line 637
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 639
    :cond_9
    return-void
.end method

.method private setTitle()V
    .registers 3

    .prologue
    .line 859
    move-object v0, p0

    .line 861
    .local v0, context:Landroid/content/Context;
    new-instance v1, Lcom/google/android/music/TrackBrowserActivity$5;

    invoke-direct {v1, p0, v0}, Lcom/google/android/music/TrackBrowserActivity$5;-><init>(Lcom/google/android/music/TrackBrowserActivity;Landroid/content/Context;)V

    invoke-static {v1}, Lcom/google/android/music/MusicUtils;->runAsyncWithCallback(Lcom/google/android/music/utils/async/AsyncRunner;)V

    .line 918
    return-void
.end method

.method private updateContainerOfflineStatus()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 511
    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    if-eqz v1, :cond_35

    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    invoke-virtual {v1}, Lcom/google/android/music/medialist/SongList;->supportsOfflineCaching()Z

    move-result v1

    if-eqz v1, :cond_35

    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity;->mStoreService:Lcom/google/android/music/store/IStoreService;

    if-eqz v1, :cond_35

    .line 515
    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    iget-object v2, p0, Lcom/google/android/music/TrackBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    iget-object v3, p0, Lcom/google/android/music/TrackBrowserActivity;->mStoreService:Lcom/google/android/music/store/IStoreService;

    invoke-virtual {v1, p0, v2, v3}, Lcom/google/android/music/medialist/SongList;->isSelectedForOfflineCaching(Landroid/content/Context;Lcom/google/android/music/OfflineMusicManager;Lcom/google/android/music/store/IStoreService;)Z

    move-result v0

    .line 517
    .local v0, selectedForOffline:Z
    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity;->mContainerContextMenu:Landroid/view/View;

    if-eqz v1, :cond_26

    .line 518
    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity;->mContainerContextMenu:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 520
    :cond_26
    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity;->mKeepOnCheckBox:Lcom/google/android/music/KeepOnCheckBox;

    if-eqz v1, :cond_34

    .line 521
    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity;->mKeepOnCheckBox:Lcom/google/android/music/KeepOnCheckBox;

    invoke-virtual {v1, v5}, Lcom/google/android/music/KeepOnCheckBox;->setVisibility(I)V

    .line 522
    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity;->mKeepOnCheckBox:Lcom/google/android/music/KeepOnCheckBox;

    invoke-virtual {v1, v0}, Lcom/google/android/music/KeepOnCheckBox;->setChecked(Z)V

    .line 536
    .end local v0           #selectedForOffline:Z
    :cond_34
    :goto_34
    return-void

    .line 525
    :cond_35
    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity;->mContainerContextMenu:Landroid/view/View;

    if-eqz v1, :cond_47

    .line 526
    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/music/medialist/SongList;->isFlagSet(I)Z

    move-result v1

    if-nez v1, :cond_51

    .line 527
    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity;->mContainerContextMenu:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 532
    :cond_47
    :goto_47
    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity;->mKeepOnCheckBox:Lcom/google/android/music/KeepOnCheckBox;

    if-eqz v1, :cond_34

    .line 533
    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity;->mKeepOnCheckBox:Lcom/google/android/music/KeepOnCheckBox;

    invoke-virtual {v1, v4}, Lcom/google/android/music/KeepOnCheckBox;->setVisibility(I)V

    goto :goto_34

    .line 529
    :cond_51
    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity;->mContainerContextMenu:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_47
.end method

.method private updateHeaderImage()V
    .registers 6

    .prologue
    .line 539
    move-object v0, p0

    .line 541
    .local v0, context:Landroid/content/Context;
    iget-object v3, p0, Lcom/google/android/music/TrackBrowserActivity;->mHeaderView:Landroid/view/View;

    if-nez v3, :cond_6

    .line 588
    :goto_5
    return-void

    .line 542
    :cond_6
    iget-object v3, p0, Lcom/google/android/music/TrackBrowserActivity;->mAlbumArt:Landroid/widget/ImageView;

    if-nez v3, :cond_1c

    .line 543
    iget-object v3, p0, Lcom/google/android/music/TrackBrowserActivity;->mHeaderView:Landroid/view/View;

    const v4, 0x7f10000c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/google/android/music/TrackBrowserActivity;->mAlbumArt:Landroid/widget/ImageView;

    .line 544
    iget-object v3, p0, Lcom/google/android/music/TrackBrowserActivity;->mAlbumArt:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 546
    :cond_1c
    iget-object v3, p0, Lcom/google/android/music/TrackBrowserActivity;->mAlbumBg:Landroid/widget/ImageView;

    if-nez v3, :cond_36

    .line 547
    iget-object v3, p0, Lcom/google/android/music/TrackBrowserActivity;->mHeaderView:Landroid/view/View;

    const v4, 0x7f1000c1

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/google/android/music/TrackBrowserActivity;->mAlbumBg:Landroid/widget/ImageView;

    .line 548
    iget-object v3, p0, Lcom/google/android/music/TrackBrowserActivity;->mAlbumBg:Landroid/widget/ImageView;

    if-eqz v3, :cond_36

    .line 549
    iget-object v3, p0, Lcom/google/android/music/TrackBrowserActivity;->mAlbumBg:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 552
    :cond_36
    invoke-virtual {p0}, Lcom/google/android/music/TrackBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090025

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 553
    .local v2, width:I
    invoke-virtual {p0}, Lcom/google/android/music/TrackBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090026

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 555
    .local v1, height:I
    new-instance v3, Lcom/google/android/music/TrackBrowserActivity$3;

    invoke-direct {v3, p0, v0, v2, v1}, Lcom/google/android/music/TrackBrowserActivity$3;-><init>(Lcom/google/android/music/TrackBrowserActivity;Landroid/content/Context;II)V

    invoke-static {v3}, Lcom/google/android/music/MusicUtils;->runAsyncWithCallback(Lcom/google/android/music/utils/async/AsyncRunner;)V

    goto :goto_5
.end method

.method private updateIsNowPlaying()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 642
    sget-object v2, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    .line 643
    .local v2, service:Lcom/google/android/music/IMusicPlaybackService;
    if-eqz v2, :cond_1f

    .line 645
    :try_start_5
    invoke-interface {v2}, Lcom/google/android/music/IMusicPlaybackService;->getMediaList()Lcom/google/android/music/medialist/SongList;

    move-result-object v0

    .line 646
    .local v0, currentList:Lcom/google/android/music/medialist/SongList;
    iget-object v3, p0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    invoke-virtual {v3, v0}, Lcom/google/android/music/medialist/SongList;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/music/TrackBrowserActivity;->mIsNowPlaying:Z
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_11} :catch_12

    .line 654
    .end local v0           #currentList:Lcom/google/android/music/medialist/SongList;
    :goto_11
    return-void

    .line 647
    :catch_12
    move-exception v1

    .line 648
    .local v1, e:Landroid/os/RemoteException;
    const-string v3, "TrackBrowser"

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 649
    iput-boolean v5, p0, Lcom/google/android/music/TrackBrowserActivity;->mIsNowPlaying:Z

    goto :goto_11

    .line 652
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_1f
    iput-boolean v5, p0, Lcom/google/android/music/TrackBrowserActivity;->mIsNowPlaying:Z

    goto :goto_11
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 4
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 1180
    iget-boolean v1, p0, Lcom/google/android/music/TrackBrowserActivity;->mEditMode:Z

    if-eqz v1, :cond_18

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    if-eqz v1, :cond_18

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_18

    .line 1183
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_2a

    .line 1196
    :cond_18
    invoke-super {p0, p1}, Lcom/google/android/music/activitymanagement/MusicFragment;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_1c
    return v0

    .line 1185
    :sswitch_1d
    invoke-direct {p0, v0}, Lcom/google/android/music/TrackBrowserActivity;->moveItem(Z)V

    goto :goto_1c

    .line 1188
    :sswitch_21
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/google/android/music/TrackBrowserActivity;->moveItem(Z)V

    goto :goto_1c

    .line 1191
    :sswitch_26
    invoke-direct {p0}, Lcom/google/android/music/TrackBrowserActivity;->removeItem()V

    goto :goto_1c

    .line 1183
    :sswitch_data_2a
    .sparse-switch
        0x13 -> :sswitch_1d
        0x14 -> :sswitch_21
        0x43 -> :sswitch_26
    .end sparse-switch
.end method

.method public getView()Landroid/view/View;
    .registers 2

    .prologue
    .line 330
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mView:Landroid/view/View;

    return-object v0
.end method

.method public hasCustomMenuOptions()Z
    .registers 2

    .prologue
    .line 1810
    const/4 v0, 0x1

    return v0
.end method

.method public init(Landroid/database/Cursor;)V
    .registers 5
    .parameter

    .prologue
    .line 818
    sget-boolean v0, Lcom/google/android/music/TrackBrowserActivity;->LOGV:Z

    if-eqz v0, :cond_b

    const-string v0, "TrackBrowser"

    const-string v1, "init()..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    :cond_b
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mAdapter:Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mIsFinished:Z

    if-eqz v0, :cond_14

    .line 855
    :cond_13
    :goto_13
    return-void

    .line 823
    :cond_14
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mAdapter:Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 825
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    if-eqz v0, :cond_13

    .line 829
    invoke-direct {p0}, Lcom/google/android/music/TrackBrowserActivity;->setTitle()V

    .line 831
    iget-boolean v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mIsNowPlaying:Z

    if-eqz v0, :cond_30

    .line 833
    :try_start_24
    sget-object v0, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v0}, Lcom/google/android/music/IMusicPlaybackService;->getQueuePosition()I

    move-result v0

    .line 834
    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity;->mAdapter:Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->setScrollToPosition(II)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_30} :catch_36

    .line 854
    :cond_30
    :goto_30
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    goto :goto_13

    .line 835
    :catch_36
    move-exception v0

    .line 836
    const-string v1, "TrackBrowser"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_30
.end method

.method public initializeState(Lcom/google/android/music/activitymanagement/MusicState;)V
    .registers 13
    .parameter "state"

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, -0x1

    const/4 v6, 0x1

    .line 179
    sget-boolean v3, Lcom/google/android/music/TrackBrowserActivity;->LOGV:Z

    if-eqz v3, :cond_21

    const-string v3, "TrackBrowser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initializeState()..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_21
    invoke-super {p0, p1}, Lcom/google/android/music/activitymanagement/MusicFragment;->initializeState(Lcom/google/android/music/activitymanagement/MusicState;)V

    .line 182
    invoke-direct {p0}, Lcom/google/android/music/TrackBrowserActivity;->cleanState()V

    .line 183
    iput-object p1, p0, Lcom/google/android/music/TrackBrowserActivity;->mCurrentMusicState:Lcom/google/android/music/activitymanagement/MusicState;

    .line 185
    invoke-virtual {p1}, Lcom/google/android/music/activitymanagement/MusicState;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 187
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p1, p0}, Lcom/google/android/music/activitymanagement/MusicState;->getSavedBundle(Lcom/google/android/music/activitymanagement/MusicFragment;)Landroid/os/Bundle;

    move-result-object v0

    .line 188
    .local v0, extras:Landroid/os/Bundle;
    if-nez v0, :cond_37

    .line 189
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 191
    :cond_37
    if-eqz v0, :cond_55

    .line 192
    const-string v3, "medialist"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/google/android/music/medialist/SongList;

    iput-object v3, p0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    .line 193
    const-string v3, "autoscrollTrackId"

    const-wide/16 v4, -0x1

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/music/TrackBrowserActivity;->mSelectedId:J

    .line 194
    const-string v3, "scrollPos"

    invoke-virtual {v0, v3, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/google/android/music/TrackBrowserActivity;->mRestoreScrollPos:I

    .line 197
    :cond_55
    iget-object v3, p0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    if-nez v3, :cond_60

    .line 198
    new-instance v3, Lcom/google/android/music/medialist/AllSongsList;

    invoke-direct {v3, v7}, Lcom/google/android/music/medialist/AllSongsList;-><init>(I)V

    iput-object v3, p0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    .line 201
    :cond_60
    iget-object v3, p0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    instance-of v3, v3, Lcom/google/android/music/medialist/AllSongsList;

    iput-boolean v3, p0, Lcom/google/android/music/TrackBrowserActivity;->mAllTracks:Z

    .line 208
    iget-object v3, p0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    invoke-virtual {v3}, Lcom/google/android/music/medialist/SongList;->isEditable()Z

    move-result v3

    if-eqz v3, :cond_70

    .line 209
    iput-boolean v6, p0, Lcom/google/android/music/TrackBrowserActivity;->mEditMode:Z

    .line 212
    :cond_70
    iget-object v2, p0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    .line 214
    .local v2, mSavedMediaList:Lcom/google/android/music/medialist/SongList;
    new-instance v3, Lcom/google/android/music/TrackBrowserActivity$1;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4, v2}, Lcom/google/android/music/TrackBrowserActivity$1;-><init>(Lcom/google/android/music/TrackBrowserActivity;Landroid/os/Handler;Lcom/google/android/music/medialist/SongList;)V

    iput-object v3, p0, Lcom/google/android/music/TrackBrowserActivity;->mMetaDataObserver:Landroid/database/ContentObserver;

    .line 237
    iget-object v3, p0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    invoke-virtual {v3}, Lcom/google/android/music/medialist/SongList;->hasMetaData()Z

    move-result v3

    if-eqz v3, :cond_8d

    .line 238
    iget-object v3, p0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity;->mMetaDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, p0, v4}, Lcom/google/android/music/medialist/SongList;->registerMetaDataObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    .line 245
    :cond_8d
    iget-object v3, p0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    instance-of v3, v3, Lcom/google/android/music/medialist/PlaylistSongList;

    if-eqz v3, :cond_10a

    .line 246
    const/16 v3, 0xf

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v3, v8

    const-string v4, "title"

    aput-object v4, v3, v6

    const-string v4, "album"

    aput-object v4, v3, v9

    const-string v4, "artist"

    aput-object v4, v3, v10

    const/4 v4, 0x4

    const-string v5, "AlbumArtistId"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "duration"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "play_order"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string v5, "audio_id"

    aput-object v5, v3, v4

    const/16 v4, 0x8

    const-string v5, "is_music"

    aput-object v5, v3, v4

    const/16 v4, 0x9

    const-string v5, "album_id"

    aput-object v5, v3, v4

    const/16 v4, 0xa

    const-string v5, "hasRemote"

    aput-object v5, v3, v4

    const/16 v4, 0xb

    const-string v5, "hasLocal"

    aput-object v5, v3, v4

    const/16 v4, 0xc

    const-string v5, "year"

    aput-object v5, v3, v4

    const/16 v4, 0xd

    const-string v5, "Genre"

    aput-object v5, v3, v4

    const/16 v4, 0xe

    const-string v5, "StoreId"

    aput-object v5, v3, v4

    iput-object v3, p0, Lcom/google/android/music/TrackBrowserActivity;->mCursorCols:[Ljava/lang/String;

    .line 284
    :goto_e7
    iget-object v3, p0, Lcom/google/android/music/TrackBrowserActivity;->mView:Landroid/view/View;

    if-eqz v3, :cond_100

    iget-object v3, p0, Lcom/google/android/music/TrackBrowserActivity;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_100

    .line 285
    iget-object v3, p0, Lcom/google/android/music/TrackBrowserActivity;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity;->mView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 287
    :cond_100
    invoke-direct {p0, p1}, Lcom/google/android/music/TrackBrowserActivity;->loadView(Lcom/google/android/music/activitymanagement/MusicState;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/music/TrackBrowserActivity;->mView:Landroid/view/View;

    .line 289
    invoke-direct {p0}, Lcom/google/android/music/TrackBrowserActivity;->initTracks()V

    .line 290
    return-void

    .line 264
    :cond_10a
    const/16 v3, 0xc

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v3, v8

    const-string v4, "title"

    aput-object v4, v3, v6

    const-string v4, "album"

    aput-object v4, v3, v9

    const-string v4, "artist"

    aput-object v4, v3, v10

    const/4 v4, 0x4

    const-string v5, "AlbumArtistId"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "duration"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "album_id"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string v5, "hasRemote"

    aput-object v5, v3, v4

    const/16 v4, 0x8

    const-string v5, "hasLocal"

    aput-object v5, v3, v4

    const/16 v4, 0x9

    const-string v5, "year"

    aput-object v5, v3, v4

    const/16 v4, 0xa

    const-string v5, "Genre"

    aput-object v5, v3, v4

    const/16 v4, 0xb

    const-string v5, "StoreId"

    aput-object v5, v3, v4

    iput-object v3, p0, Lcom/google/android/music/TrackBrowserActivity;->mCursorCols:[Ljava/lang/String;

    goto :goto_e7
.end method

.method public onActionBarConfig(Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;)V
    .registers 8
    .parameter "actionbarConfig"

    .prologue
    const/16 v5, 0x200

    const/16 v4, 0x8

    const/4 v3, 0x2

    const/4 v1, 0x1

    .line 310
    invoke-virtual {p0}, Lcom/google/android/music/TrackBrowserActivity;->getAppState()Lcom/google/android/music/activitymanagement/MusicState;

    move-result-object v2

    if-eqz v2, :cond_45

    invoke-virtual {p0}, Lcom/google/android/music/TrackBrowserActivity;->getAppState()Lcom/google/android/music/activitymanagement/MusicState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/music/activitymanagement/MusicState;->isTopLevelState()Z

    move-result v2

    if-eqz v2, :cond_45

    .line 311
    iget-object v2, p0, Lcom/google/android/music/TrackBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v2}, Lcom/google/android/music/jumper/MusicPreferences;->isTvMusic()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 312
    invoke-virtual {p1, v1}, Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;->hide(I)V

    .line 314
    :cond_21
    invoke-virtual {p1, v4}, Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;->hide(I)V

    .line 315
    invoke-virtual {p1, v5}, Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;->hide(I)V

    .line 321
    :goto_27
    invoke-virtual {p0}, Lcom/google/android/music/TrackBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v3, :cond_4c

    move v0, v1

    .line 323
    .local v0, isLandscape:Z
    :goto_34
    iget-object v2, p0, Lcom/google/android/music/TrackBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v2}, Lcom/google/android/music/jumper/MusicPreferences;->isTabletMusic()Z

    move-result v2

    if-nez v2, :cond_44

    if-nez v0, :cond_44

    .line 324
    invoke-virtual {p1, v3}, Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;->show(I)V

    .line 325
    invoke-virtual {p1, v1}, Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;->setSplitActionBar(Z)V

    .line 327
    :cond_44
    return-void

    .line 317
    .end local v0           #isLandscape:Z
    :cond_45
    invoke-virtual {p1, v4}, Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;->show(I)V

    .line 318
    invoke-virtual {p1, v5}, Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;->show(I)V

    goto :goto_27

    .line 321
    :cond_4c
    const/4 v0, 0x0

    goto :goto_34
.end method

.method public onBottomBarChanged()V
    .registers 6

    .prologue
    .line 479
    iget-object v2, p0, Lcom/google/android/music/TrackBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v2}, Lcom/google/android/music/jumper/MusicPreferences;->isTabletMusic()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 483
    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    .line 484
    .local v1, viewToSetPaddingOn:Landroid/view/View;
    invoke-virtual {p0}, Lcom/google/android/music/TrackBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090071

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    .line 492
    .local v0, paddingRight:I
    :goto_16
    if-eqz v1, :cond_2b

    .line 493
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/music/TrackBrowserActivity;->getMusicUIController()Lcom/google/android/music/activitymanagement/MusicUIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/music/activitymanagement/MusicUIController;->getBottomBarHeight()I

    move-result v4

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 497
    :cond_2b
    return-void

    .line 488
    .end local v0           #paddingRight:I
    .end local v1           #viewToSetPaddingOn:Landroid/view/View;
    :cond_2c
    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity;->mListContainer:Landroid/view/View;

    .line 489
    .restart local v1       #viewToSetPaddingOn:Landroid/view/View;
    iget-object v2, p0, Lcom/google/android/music/TrackBrowserActivity;->mListContainer:Landroid/view/View;

    if-eqz v2, :cond_39

    iget-object v2, p0, Lcom/google/android/music/TrackBrowserActivity;->mListContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    .restart local v0       #paddingRight:I
    :goto_38
    goto :goto_16

    .end local v0           #paddingRight:I
    :cond_39
    const/4 v0, 0x0

    goto :goto_38
.end method

.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    .line 1782
    iget-object v2, p0, Lcom/google/android/music/TrackBrowserActivity;->mAlbumArt:Landroid/widget/ImageView;

    if-ne p1, v2, :cond_23

    .line 1783
    iget-object v2, p0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    instance-of v2, v2, Lcom/google/android/music/medialist/AlbumSongList;

    if-nez v2, :cond_22

    .line 1784
    iget-object v2, p0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    invoke-virtual {v2, p0}, Lcom/google/android/music/medialist/SongList;->getAlbumId(Landroid/content/Context;)J

    move-result-wide v0

    .line 1785
    .local v0, albumId:J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_22

    .line 1786
    invoke-virtual {p0}, Lcom/google/android/music/TrackBrowserActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v2

    new-instance v3, Lcom/google/android/music/medialist/AlbumSongList;

    invoke-direct {v3, v0, v1}, Lcom/google/android/music/medialist/AlbumSongList;-><init>(J)V

    invoke-virtual {v2, v3}, Lcom/google/android/music/activitymanagement/MusicStateController;->startTrackListing(Lcom/google/android/music/medialist/MediaList;)V

    .line 1796
    .end local v0           #albumId:J
    :cond_22
    :goto_22
    return-void

    .line 1789
    :cond_23
    iget-object v2, p0, Lcom/google/android/music/TrackBrowserActivity;->mContainerContextMenu:Landroid/view/View;

    if-eq p1, v2, :cond_2b

    iget-object v2, p0, Lcom/google/android/music/TrackBrowserActivity;->mAlbumBg:Landroid/widget/ImageView;

    if-ne p1, v2, :cond_2f

    .line 1790
    :cond_2b
    invoke-direct {p0, p1}, Lcom/google/android/music/TrackBrowserActivity;->containerContextMenuClick(Landroid/view/View;)V

    goto :goto_22

    .line 1791
    :cond_2f
    iget-object v2, p0, Lcom/google/android/music/TrackBrowserActivity;->mKeepOnCheckBox:Lcom/google/android/music/KeepOnCheckBox;

    if-ne p1, v2, :cond_37

    .line 1792
    invoke-direct {p0, p1}, Lcom/google/android/music/TrackBrowserActivity;->onKeepOnCheckBoxClicked(Landroid/view/View;)V

    goto :goto_22

    .line 1793
    :cond_37
    iget-object v2, p0, Lcom/google/android/music/TrackBrowserActivity;->mBuyButton:Landroid/view/View;

    if-ne p1, v2, :cond_22

    .line 1794
    iget-object v2, p0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    invoke-virtual {v2}, Lcom/google/android/music/medialist/SongList;->getStoreUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/google/android/music/dl/IntentConstants;->getStoreBuyIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/music/TrackBrowserActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_22
.end method

.method public onCreate()V
    .registers 5

    .prologue
    .line 158
    sget-boolean v1, Lcom/google/android/music/TrackBrowserActivity;->LOGV:Z

    if-eqz v1, :cond_b

    const-string v1, "TrackBrowser"

    const-string v2, "onCreate()..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_b
    invoke-super {p0}, Lcom/google/android/music/activitymanagement/MusicFragment;->onCreate()V

    .line 160
    invoke-static {p0, p0}, Lcom/google/android/music/jumper/MusicPreferences;->getMusicPreferences(Landroid/content/Context;Ljava/lang/Object;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/music/TrackBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    .line 162
    invoke-static {p0, p0}, Lcom/google/android/music/MusicUtils;->bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;)Lcom/google/android/music/MusicUtils$ServiceToken;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/music/TrackBrowserActivity;->mToken:Lcom/google/android/music/MusicUtils$ServiceToken;

    .line 164
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 165
    .local v0, f:Landroid/content/IntentFilter;
    const-string v1, "com.android.music.playstatechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 166
    const-string v1, "com.android.music.metachanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 167
    const-string v1, "com.android.music.queuechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 168
    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity;->mPlaybackServiceListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/music/TrackBrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 169
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.music.STORE_SERVICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/music/TrackBrowserActivity;->mStoreConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/music/TrackBrowserActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 172
    new-instance v1, Lcom/google/android/music/NetworkMonitorServiceConnection;

    iget-object v2, p0, Lcom/google/android/music/TrackBrowserActivity;->mStreamabilityChangeListener:Lcom/google/android/music/dl/IStreamabilityChangeListener;

    invoke-direct {v1, v2}, Lcom/google/android/music/NetworkMonitorServiceConnection;-><init>(Lcom/google/android/music/dl/IStreamabilityChangeListener;)V

    iput-object v1, p0, Lcom/google/android/music/TrackBrowserActivity;->mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

    .line 174
    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity;->mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

    invoke-virtual {v1, p0}, Lcom/google/android/music/NetworkMonitorServiceConnection;->bindToService(Landroid/content/Context;)V

    .line 175
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 731
    sget-boolean v0, Lcom/google/android/music/TrackBrowserActivity;->LOGV:Z

    if-eqz v0, :cond_b

    const-string v0, "TrackBrowser"

    const-string v1, "onDestroy()..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    :cond_b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mIsFinished:Z

    .line 734
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mToken:Lcom/google/android/music/MusicUtils$ServiceToken;

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->unbindFromService(Lcom/google/android/music/MusicUtils$ServiceToken;)V

    .line 735
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mPlaybackServiceListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/google/android/music/TrackBrowserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 736
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mStoreConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/google/android/music/TrackBrowserActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 738
    invoke-direct {p0}, Lcom/google/android/music/TrackBrowserActivity;->cleanState()V

    .line 740
    invoke-static {p0}, Lcom/google/android/music/jumper/MusicPreferences;->releaseMusicPreferences(Ljava/lang/Object;)V

    .line 741
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

    invoke-virtual {v0, p0}, Lcom/google/android/music/NetworkMonitorServiceConnection;->unbindFromService(Landroid/content/Context;)V

    .line 743
    invoke-super {p0}, Lcom/google/android/music/activitymanagement/MusicFragment;->onDestroy()V

    .line 744
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
    .line 1228
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    invoke-virtual {v0}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->getCount()I

    move-result v0

    if-nez v0, :cond_d

    .line 1241
    :cond_c
    :goto_c
    return-void

    .line 1232
    :cond_d
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    sub-int/2addr p3, v0

    .line 1233
    if-gez p3, :cond_1f

    .line 1235
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->shuffleAll(Lcom/google/android/music/medialist/SongList;)V

    .line 1236
    invoke-static {p0}, Lcom/google/android/music/MusicUtils;->startMediaPlayer(Lcom/google/android/music/activitymanagement/MusicFragment;)V

    goto :goto_c

    .line 1238
    :cond_1f
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    invoke-virtual {v0, p3}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->moveToPosition(I)Z

    .line 1239
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    const/4 v1, 0x1

    invoke-static {p0, v0, p3, v1}, Lcom/google/android/music/MusicUtils;->playMediaList(Lcom/google/android/music/activitymanagement/MusicFragment;Lcom/google/android/music/medialist/SongList;IZ)V

    goto :goto_c
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
    .line 1037
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v0}, Lcom/google/android/music/jumper/MusicPreferences;->isTabletMusic()Z

    move-result v0

    if-nez v0, :cond_15

    .line 1038
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    if-lt p3, v0, :cond_13

    .line 1039
    invoke-direct {p0, p2, p3}, Lcom/google/android/music/TrackBrowserActivity;->onCreateListContextMusicMenu(Landroid/view/View;I)V

    .line 1041
    :cond_13
    const/4 v0, 0x1

    .line 1043
    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public onLayoutConfig(Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;)V
    .registers 4
    .parameter "layoutConfig"

    .prologue
    .line 293
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    instance-of v0, v0, Lcom/google/android/music/medialist/AllSongsList;

    if-eqz v0, :cond_2d

    .line 294
    sget-object v0, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;->MUSIC:Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;

    invoke-virtual {p1, v0}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->setNoMusicView(Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;)V

    .line 298
    :goto_b
    invoke-virtual {p0}, Lcom/google/android/music/TrackBrowserActivity;->getAppState()Lcom/google/android/music/activitymanagement/MusicState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicState;->isTopLevelState()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 299
    sget-object v0, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;->TOP_LEVEL:Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;

    invoke-virtual {p1, v0}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->setLevel(Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;)V

    .line 303
    :goto_1a
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->setTitle(Ljava/lang/CharSequence;)V

    .line 304
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mAdapter:Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;

    if-eqz v0, :cond_2c

    .line 305
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mAdapter:Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;

    invoke-virtual {v0}, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->getRepresentativeAlbumId()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->setFocusedAlbumId(J)V

    .line 307
    :cond_2c
    return-void

    .line 296
    :cond_2d
    sget-object v0, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;->NONE:Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;

    invoke-virtual {p1, v0}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->setNoMusicView(Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;)V

    goto :goto_b

    .line 301
    :cond_33
    sget-object v0, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;->TRACK_LISTING:Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;

    invoke-virtual {p1, v0}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->setLevel(Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;)V

    goto :goto_1a
.end method

.method public onManageMusicModeChanged(ZLcom/google/android/music/OfflineMusicManager;)V
    .registers 4
    .parameter "inManageMusicMode"
    .parameter "offlineMusicManager"

    .prologue
    .line 501
    iput-object p2, p0, Lcom/google/android/music/TrackBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    .line 503
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mAdapter:Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;

    if-eqz v0, :cond_b

    .line 504
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mAdapter:Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;

    invoke-virtual {v0}, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->notifyDataSetChanged()V

    .line 507
    :cond_b
    invoke-direct {p0}, Lcom/google/android/music/TrackBrowserActivity;->updateContainerOfflineStatus()V

    .line 508
    return-void
.end method

.method public onMenuItemSelected(Landroid/view/MenuItem;)Z
    .registers 6
    .parameter

    .prologue
    .line 1750
    const-string v0, "TrackBrowser"

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

    .line 1751
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_8a

    .line 1775
    const-string v0, "TrackBrowser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMusicMenuItemSelected: unexpected item id for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1776
    const/4 v0, 0x0

    .line 1778
    :goto_38
    return v0

    .line 1754
    :sswitch_39
    const-string v0, "TrackBrowser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected CONTAINER_SEARCH menu item:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1778
    :cond_51
    :goto_51
    const/4 v0, 0x1

    goto :goto_38

    .line 1758
    :sswitch_53
    iget v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mSelectedPosition:I

    invoke-direct {p0, v0}, Lcom/google/android/music/TrackBrowserActivity;->removePlaylistItem(I)V

    goto :goto_51

    .line 1762
    :sswitch_59
    sget-object v0, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    if-eqz v0, :cond_51

    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    if-eqz v0, :cond_51

    .line 1763
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->shuffleAll(Lcom/google/android/music/medialist/SongList;)V

    .line 1764
    invoke-virtual {p0}, Lcom/google/android/music/TrackBrowserActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicStateController;->startNowPlayingScreen()V

    goto :goto_51

    .line 1769
    :sswitch_6e
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    instance-of v0, v0, Lcom/google/android/music/medialist/PlaylistSongList;

    if-eqz v0, :cond_86

    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    check-cast v0, Lcom/google/android/music/medialist/PlaylistSongList;

    invoke-virtual {v0}, Lcom/google/android/music/medialist/PlaylistSongList;->getId()J

    move-result-wide v0

    .line 1771
    :goto_7c
    invoke-virtual {p0}, Lcom/google/android/music/TrackBrowserActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    invoke-virtual {v2, v3, v0, v1}, Lcom/google/android/music/activitymanagement/MusicStateController;->showAddToPlaylistDialog(Lcom/google/android/music/medialist/SongList;J)V

    goto :goto_51

    .line 1769
    :cond_86
    const-wide/16 v0, -0x1

    goto :goto_7c

    .line 1751
    nop

    :sswitch_data_8a
    .sparse-switch
        0xa -> :sswitch_59
        0xc9 -> :sswitch_6e
        0xcc -> :sswitch_39
        0x12d -> :sswitch_53
    .end sparse-switch
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 801
    invoke-super {p0}, Lcom/google/android/music/activitymanagement/MusicFragment;->onPause()V

    .line 802
    invoke-virtual {p0}, Lcom/google/android/music/TrackBrowserActivity;->getMusicUIController()Lcom/google/android/music/activitymanagement/MusicUIController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/music/activitymanagement/MusicUIController;->unregisterBottomBarChangeListener(Lcom/google/android/music/BottomBarChangeListener;)V

    .line 803
    invoke-virtual {p0}, Lcom/google/android/music/TrackBrowserActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/music/activitymanagement/MusicStateController;->unregisterManageMusicModeListener(Lcom/google/android/music/activitymanagement/TopLevelActivity$ManageMusicModeListener;)V

    .line 804
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 6
    .parameter "menu"

    .prologue
    const/4 v3, 0x0

    .line 1815
    const/16 v1, 0xa

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1816
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_15

    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/google/android/music/medialist/SongList;->isFlagSet(I)Z

    move-result v1

    if-nez v1, :cond_15

    .line 1817
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1820
    :cond_15
    const/16 v1, 0x14

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1821
    if-eqz v0, :cond_2a

    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/google/android/music/medialist/SongList;->isFlagSet(I)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 1822
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1825
    :cond_2a
    const/16 v1, 0x65

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1826
    if-eqz v0, :cond_3f

    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lcom/google/android/music/medialist/SongList;->isFlagSet(I)Z

    move-result v1

    if-nez v1, :cond_3f

    .line 1827
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1829
    :cond_3f
    return-void
.end method

.method public onResume()V
    .registers 4

    .prologue
    .line 784
    sget-boolean v0, Lcom/google/android/music/TrackBrowserActivity;->LOGV:Z

    if-eqz v0, :cond_b

    const-string v0, "TrackBrowser"

    const-string v1, "onResume()..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    :cond_b
    invoke-super {p0}, Lcom/google/android/music/activitymanagement/MusicFragment;->onResume()V

    .line 786
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    if-eqz v0, :cond_17

    .line 787
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 792
    :cond_17
    invoke-direct {p0}, Lcom/google/android/music/TrackBrowserActivity;->updateIsNowPlaying()V

    .line 793
    sget-boolean v0, Lcom/google/android/music/TrackBrowserActivity;->LOGV:Z

    if-eqz v0, :cond_38

    const-string v0, "TrackBrowser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- onResume: refreshed mIsNowPlaying: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/music/TrackBrowserActivity;->mIsNowPlaying:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    :cond_38
    invoke-virtual {p0}, Lcom/google/android/music/TrackBrowserActivity;->getMusicUIController()Lcom/google/android/music/activitymanagement/MusicUIController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/music/activitymanagement/MusicUIController;->registerBottomBarChangeListener(Lcom/google/android/music/BottomBarChangeListener;)V

    .line 796
    invoke-virtual {p0}, Lcom/google/android/music/TrackBrowserActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/music/activitymanagement/MusicStateController;->registerManageMusicModeListener(Lcom/google/android/music/activitymanagement/TopLevelActivity$ManageMusicModeListener;)V

    .line 797
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .parameter "outcicle"

    .prologue
    .line 811
    const-string v0, "medialist"

    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 812
    const-string v0, "autoscrollTrackId"

    iget-wide v1, p0, Lcom/google/android/music/TrackBrowserActivity;->mSelectedId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 813
    const-string v0, "scrollPos"

    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 814
    invoke-super {p0, p1}, Lcom/google/android/music/activitymanagement/MusicFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 815
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 5
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 1800
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 3
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 1803
    if-nez p2, :cond_5

    .line 1804
    invoke-virtual {p0}, Lcom/google/android/music/TrackBrowserActivity;->requestReconfig()V

    .line 1806
    :cond_5
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 692
    sget-boolean v0, Lcom/google/android/music/TrackBrowserActivity;->LOGV:Z

    if-eqz v0, :cond_1c

    const-string v0, "TrackBrowser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceConnected()... name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    :cond_1c
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    if-eqz v0, :cond_3c

    .line 694
    const/4 v0, 0x0

    .line 696
    :try_start_21
    sget-object v1, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v1}, Lcom/google/android/music/IMusicPlaybackService;->getMediaList()Lcom/google/android/music/medialist/SongList;

    move-result-object v1

    .line 697
    iget-object v2, p0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    invoke-virtual {v2, v1}, Lcom/google/android/music/medialist/SongList;->equals(Ljava/lang/Object;)Z
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_2c} :catch_3d

    move-result v0

    .line 701
    :goto_2d
    iget-boolean v1, p0, Lcom/google/android/music/TrackBrowserActivity;->mIsNowPlaying:Z

    if-eq v0, v1, :cond_3c

    .line 702
    iput-boolean v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mIsNowPlaying:Z

    .line 703
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    if-eqz v0, :cond_3c

    .line 704
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 709
    :cond_3c
    return-void

    .line 698
    :catch_3d
    move-exception v1

    .line 699
    const-string v2, "TrackBrowser"

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2d
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5
    .parameter

    .prologue
    .line 713
    sget-boolean v0, Lcom/google/android/music/TrackBrowserActivity;->LOGV:Z

    if-eqz v0, :cond_1c

    const-string v0, "TrackBrowser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceDisconnected()... name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/music/TrackBrowserActivity;->finish()V

    .line 715
    return-void
.end method
