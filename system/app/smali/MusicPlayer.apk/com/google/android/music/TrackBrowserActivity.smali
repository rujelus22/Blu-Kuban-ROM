.class public Lcom/google/android/music/TrackBrowserActivity;
.super Lcom/google/android/music/activitymanagement/MusicFragment;
.source "TrackBrowserActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Lcom/google/android/music/BottomBarChangeListener;
.implements Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicModeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;,
        Lcom/google/android/music/TrackBrowserActivity$SortOrderCallback;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;

.field private mAlbumArt:Landroid/widget/ImageView;

.field private mAlbumArtist:Ljava/lang/String;

.field private mAlbumBg:Landroid/widget/ImageView;

.field private mAllTracks:Z

.field private mBuyButton:Landroid/view/View;

.field private mComboIcon:Landroid/view/View;

.field private mContainerContextMenu:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mCurrentMusicState:Lcom/google/android/music/activitymanagement/MusicState;

.field private mCursorCols:[Ljava/lang/String;

.field private mDeletedOneRow:Z

.field private mDropListener:Lcom/google/android/music/TouchInterceptor$DropListener;

.field private mEditMode:Z

.field private mHeaderView:Landroid/view/View;

.field private mIsFinished:Z

.field private mIsLandscape:Z

.field private mIsNowPlaying:Z

.field private mIsStreamingEnabled:Z

.field private mKeepOnCheckBox:Lcom/google/android/music/KeepOnCheckBox;

.field private mListContainer:Landroid/view/View;

.field private volatile mMediaList:Lcom/google/android/music/medialist/SongList;

.field private mMetaDataObserver:Landroid/database/ContentObserver;

.field private mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

.field private mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

.field private mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

.field private mPartyModeAddButton:Landroid/view/View;

.field private mPlaybackServiceListener:Landroid/content/BroadcastReceiver;

.field mQueryComplete:Lcom/google/android/music/medialist/MediaList$OnQueryCompletionHandler;

.field private mQuickContact:Lcom/google/android/music/widgets/QuickContactBadgeComp;

.field private mRemoveListener:Lcom/google/android/music/TouchInterceptor$RemoveListener;

.field private mRestoreScrollPos:I

.field private mSelectedId:J

.field private mSelectedPosition:I

.field private mShowTrackArtist:Z

.field private mShuffleAllListItemIndex:I

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

.field private mStoreSafeConnection:Lcom/google/android/music/utils/SafeServiceConnection;

.field private volatile mStoreService:Lcom/google/android/music/store/IStoreService;

.field private final mStreamabilityChangeListener:Lcom/google/android/music/dl/IStreamabilityChangeListener;

.field private mTitle:Ljava/lang/CharSequence;

.field private mToken:Lcom/google/android/music/MusicUtils$ServiceToken;

.field private mTopLine:Landroid/view/View;

.field private mTrackCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

.field private mTrackList:Landroid/widget/ListView;

.field private mTracker:Lcom/google/android/music/MusicEventLogger;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 178
    invoke-direct {p0, p1}, Lcom/google/android/music/activitymanagement/MusicFragment;-><init>(Landroid/content/Context;)V

    .line 109
    iput-boolean v2, p0, Lcom/google/android/music/TrackBrowserActivity;->mDeletedOneRow:Z

    .line 110
    iput-boolean v2, p0, Lcom/google/android/music/TrackBrowserActivity;->mEditMode:Z

    .line 119
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mSelectedId:J

    .line 130
    iput-boolean v2, p0, Lcom/google/android/music/TrackBrowserActivity;->mIsNowPlaying:Z

    .line 131
    iput-boolean v2, p0, Lcom/google/android/music/TrackBrowserActivity;->mShowTrackArtist:Z

    .line 149
    iput-boolean v2, p0, Lcom/google/android/music/TrackBrowserActivity;->mIsFinished:Z

    .line 151
    iput-object v3, p0, Lcom/google/android/music/TrackBrowserActivity;->mTitle:Ljava/lang/CharSequence;

    .line 153
    iput-object v3, p0, Lcom/google/android/music/TrackBrowserActivity;->mCurrentMusicState:Lcom/google/android/music/activitymanagement/MusicState;

    .line 155
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mRestoreScrollPos:I

    .line 159
    iput-object v3, p0, Lcom/google/android/music/TrackBrowserActivity;->mBuyButton:Landroid/view/View;

    .line 161
    iput-boolean v2, p0, Lcom/google/android/music/TrackBrowserActivity;->mIsStreamingEnabled:Z

    .line 849
    new-instance v0, Lcom/google/android/music/TrackBrowserActivity$5;

    invoke-direct {v0, p0}, Lcom/google/android/music/TrackBrowserActivity$5;-><init>(Lcom/google/android/music/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mStoreSafeConnection:Lcom/google/android/music/utils/SafeServiceConnection;

    .line 1089
    new-instance v0, Lcom/google/android/music/TrackBrowserActivity$8;

    invoke-direct {v0, p0}, Lcom/google/android/music/TrackBrowserActivity$8;-><init>(Lcom/google/android/music/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mDropListener:Lcom/google/android/music/TouchInterceptor$DropListener;

    .line 1096
    new-instance v0, Lcom/google/android/music/TrackBrowserActivity$9;

    invoke-direct {v0, p0}, Lcom/google/android/music/TrackBrowserActivity$9;-><init>(Lcom/google/android/music/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mRemoveListener:Lcom/google/android/music/TouchInterceptor$RemoveListener;

    .line 1124
    new-instance v0, Lcom/google/android/music/TrackBrowserActivity$10;

    invoke-direct {v0, p0}, Lcom/google/android/music/TrackBrowserActivity$10;-><init>(Lcom/google/android/music/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mPlaybackServiceListener:Landroid/content/BroadcastReceiver;

    .line 1442
    new-instance v0, Lcom/google/android/music/TrackBrowserActivity$12;

    invoke-direct {v0, p0}, Lcom/google/android/music/TrackBrowserActivity$12;-><init>(Lcom/google/android/music/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mQueryComplete:Lcom/google/android/music/medialist/MediaList$OnQueryCompletionHandler;

    .line 2144
    new-instance v0, Lcom/google/android/music/TrackBrowserActivity$14;

    invoke-direct {v0, p0}, Lcom/google/android/music/TrackBrowserActivity$14;-><init>(Lcom/google/android/music/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mStreamabilityChangeListener:Lcom/google/android/music/dl/IStreamabilityChangeListener;

    .line 179
    iput-object p1, p0, Lcom/google/android/music/TrackBrowserActivity;->mContext:Landroid/content/Context;

    .line 180
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/medialist/SongList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/android/music/TrackBrowserActivity;Lcom/google/android/music/medialist/SongList;)Lcom/google/android/music/medialist/SongList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/android/music/TrackBrowserActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/google/android/music/TrackBrowserActivity;->setTitle()V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/music/TrackBrowserActivity;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mSortOrderNameList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/android/music/TrackBrowserActivity;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mSortChooser:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/android/music/TrackBrowserActivity;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mSortOrderList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/menu/MusicDropdownMenu;
    .registers 2
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mSortOrderMenu:Lcom/google/android/music/menu/MusicDropdownMenu;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/google/android/music/TrackBrowserActivity;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/google/android/music/TrackBrowserActivity;->getTrackCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/google/android/music/TrackBrowserActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/google/android/music/TrackBrowserActivity;->updateContainerOfflineStatus()V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/android/music/TrackBrowserActivity;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/google/android/music/TrackBrowserActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mShowTrackArtist:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/google/android/music/TrackBrowserActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/google/android/music/TrackBrowserActivity;->mShowTrackArtist:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/google/android/music/TrackBrowserActivity;)Landroid/widget/ListView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/google/android/music/TrackBrowserActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/google/android/music/TrackBrowserActivity;->mAlbumArtist:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/google/android/music/TrackBrowserActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/google/android/music/TrackBrowserActivity;->updateHeaderImage()V

    return-void
.end method

.method static synthetic access$2000(Lcom/google/android/music/TrackBrowserActivity;)Ljava/lang/CharSequence;
    .registers 2
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/google/android/music/TrackBrowserActivity;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/google/android/music/TrackBrowserActivity;->mTitle:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/google/android/music/TrackBrowserActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/google/android/music/TrackBrowserActivity;->requestReconfig()V

    return-void
.end method

.method static synthetic access$2200(Lcom/google/android/music/TrackBrowserActivity;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mSongCount:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/medialist/MediaList$MediaCursor;
    .registers 2
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/google/android/music/TrackBrowserActivity;Lcom/google/android/music/medialist/MediaList$MediaCursor;)Lcom/google/android/music/medialist/MediaList$MediaCursor;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/google/android/music/TrackBrowserActivity;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/google/android/music/TrackBrowserActivity;->removePlaylistItem(I)V

    return-void
.end method

.method static synthetic access$2500(Lcom/google/android/music/TrackBrowserActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/google/android/music/TrackBrowserActivity;->updateIsNowPlaying()V

    return-void
.end method

.method static synthetic access$2600(Lcom/google/android/music/TrackBrowserActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mIsNowPlaying:Z

    return v0
.end method

.method static synthetic access$2700(Lcom/google/android/music/TrackBrowserActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mDeletedOneRow:Z

    return v0
.end method

.method static synthetic access$2702(Lcom/google/android/music/TrackBrowserActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/google/android/music/TrackBrowserActivity;->mDeletedOneRow:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/google/android/music/TrackBrowserActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/google/android/music/TrackBrowserActivity;->cleanMediaList()V

    return-void
.end method

.method static synthetic access$2900(Lcom/google/android/music/TrackBrowserActivity;)[Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mCursorCols:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/NetworkMonitorServiceConnection;
    .registers 2
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/google/android/music/TrackBrowserActivity;Landroid/view/View;I)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/TrackBrowserActivity;->createListContextMusicMenu(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$3300(Lcom/google/android/music/TrackBrowserActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mEditMode:Z

    return v0
.end method

.method static synthetic access$3400(Lcom/google/android/music/TrackBrowserActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mIsStreamingEnabled:Z

    return v0
.end method

.method static synthetic access$3402(Lcom/google/android/music/TrackBrowserActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/google/android/music/TrackBrowserActivity;->mIsStreamingEnabled:Z

    return p1
.end method

.method static synthetic access$3500(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/jumper/MusicPreferences;
    .registers 2
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    invoke-static {p0, p1}, Lcom/google/android/music/TrackBrowserActivity;->setSecondColumnIconVisibility(Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;I)V

    return-void
.end method

.method static synthetic access$3900(Lcom/google/android/music/TrackBrowserActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/google/android/music/TrackBrowserActivity;->showTrackArtist()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/google/android/music/TrackBrowserActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/google/android/music/TrackBrowserActivity;->openSortMenu()V

    return-void
.end method

.method static synthetic access$4000(Lcom/google/android/music/TrackBrowserActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/google/android/music/TrackBrowserActivity;->isFastScrollerAlwaysVisible()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4100(Lcom/google/android/music/TrackBrowserActivity;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/google/android/music/TrackBrowserActivity;->updateTopLineVisibility(I)V

    return-void
.end method

.method static synthetic access$4200(Lcom/google/android/music/TrackBrowserActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/google/android/music/TrackBrowserActivity;->updateShowTrackArtist()V

    return-void
.end method

.method static synthetic access$4300(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/activitymanagement/MusicState;
    .registers 2
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mCurrentMusicState:Lcom/google/android/music/activitymanagement/MusicState;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/google/android/music/TrackBrowserActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mAllTracks:Z

    return v0
.end method

.method static synthetic access$4500(Lcom/google/android/music/TrackBrowserActivity;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mComboIcon:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/google/android/music/TrackBrowserActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 91
    iget v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mRestoreScrollPos:I

    return v0
.end method

.method static synthetic access$4602(Lcom/google/android/music/TrackBrowserActivity;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput p1, p0, Lcom/google/android/music/TrackBrowserActivity;->mRestoreScrollPos:I

    return p1
.end method

.method static synthetic access$500(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/OfflineMusicManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/store/IStoreService;
    .registers 2
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mStoreService:Lcom/google/android/music/store/IStoreService;

    return-object v0
.end method

.method static synthetic access$602(Lcom/google/android/music/TrackBrowserActivity;Lcom/google/android/music/store/IStoreService;)Lcom/google/android/music/store/IStoreService;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/google/android/music/TrackBrowserActivity;->mStoreService:Lcom/google/android/music/store/IStoreService;

    return-object p1
.end method

.method static synthetic access$700(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/KeepOnCheckBox;
    .registers 2
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mKeepOnCheckBox:Lcom/google/android/music/KeepOnCheckBox;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mAdapter:Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/music/TrackBrowserActivity;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mHeaderView:Landroid/view/View;

    return-object v0
.end method

.method private cleanMediaList()V
    .registers 3

    .prologue
    .line 910
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    if-eqz v0, :cond_16

    .line 911
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    invoke-virtual {v0}, Lcom/google/android/music/medialist/SongList;->hasMetaData()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 912
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity;->mMetaDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/music/medialist/SongList;->unregisterMetaDataObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    .line 914
    :cond_13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    .line 916
    :cond_16
    return-void
.end method

.method private cleanState()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 878
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    if-eqz v0, :cond_18

    .line 879
    iget-boolean v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mEditMode:Z

    if-eqz v0, :cond_18

    .line 881
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    check-cast v0, Lcom/google/android/music/TouchInterceptor;

    invoke-virtual {v0, v2}, Lcom/google/android/music/TouchInterceptor;->setDropListener(Lcom/google/android/music/TouchInterceptor$DropListener;)V

    .line 882
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    check-cast v0, Lcom/google/android/music/TouchInterceptor;

    invoke-virtual {v0, v2}, Lcom/google/android/music/TouchInterceptor;->setRemoveListener(Lcom/google/android/music/TouchInterceptor$RemoveListener;)V

    .line 886
    :cond_18
    invoke-direct {p0}, Lcom/google/android/music/TrackBrowserActivity;->cleanMediaList()V

    .line 892
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mAdapter:Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;

    if-eqz v0, :cond_24

    .line 893
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mAdapter:Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;

    invoke-virtual {v0, v2}, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 895
    :cond_24
    invoke-direct {p0, v2}, Lcom/google/android/music/TrackBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 896
    iput-object v2, p0, Lcom/google/android/music/TrackBrowserActivity;->mAdapter:Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;

    .line 897
    iput-object v2, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    .line 898
    iput-object v2, p0, Lcom/google/android/music/TrackBrowserActivity;->mMetaDataObserver:Landroid/database/ContentObserver;

    .line 899
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mSelectedId:J

    .line 900
    iput-boolean v3, p0, Lcom/google/android/music/TrackBrowserActivity;->mEditMode:Z

    .line 901
    iput-object v2, p0, Lcom/google/android/music/TrackBrowserActivity;->mCursorCols:[Ljava/lang/String;

    .line 902
    iput-boolean v3, p0, Lcom/google/android/music/TrackBrowserActivity;->mAllTracks:Z

    .line 903
    iput-boolean v3, p0, Lcom/google/android/music/TrackBrowserActivity;->mIsNowPlaying:Z

    .line 904
    iput-boolean v3, p0, Lcom/google/android/music/TrackBrowserActivity;->mDeletedOneRow:Z

    .line 905
    iput-object v2, p0, Lcom/google/android/music/TrackBrowserActivity;->mTitle:Ljava/lang/CharSequence;

    .line 906
    iput-object v2, p0, Lcom/google/android/music/TrackBrowserActivity;->mCurrentMusicState:Lcom/google/android/music/activitymanagement/MusicState;

    .line 907
    return-void
.end method

.method private containerContextMenuClick(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 1225
    new-instance v0, Lcom/google/android/music/TrackBrowserActivity$11;

    invoke-direct {v0, p0, p1}, Lcom/google/android/music/TrackBrowserActivity$11;-><init>(Lcom/google/android/music/TrackBrowserActivity;Landroid/view/View;)V

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->runAsyncWithCallback(Lcom/google/android/music/utils/async/AsyncRunner;)V

    .line 1304
    return-void
.end method

.method private createListContextMusicMenu(Landroid/view/View;I)V
    .registers 28
    .parameter
    .parameter

    .prologue
    .line 1313
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/google/android/music/medialist/SongList;->isFlagSet(I)Z

    move-result v1

    if-nez v1, :cond_c

    .line 1359
    :cond_b
    :goto_b
    return-void

    .line 1316
    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    sub-int v17, p2, v1

    .line 1317
    if-ltz v17, :cond_b

    .line 1320
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/music/TrackBrowserActivity;->mTrackCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    move/from16 v0, v17

    invoke-virtual {v1, v0}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->moveToPosition(I)Z

    .line 1322
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/music/TrackBrowserActivity;->mTrackCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    const-string v2, "audio_id"

    invoke-virtual {v1, v2}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 1323
    const/4 v1, -0x1

    .line 1324
    if-gez v2, :cond_6b

    .line 1325
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/TrackBrowserActivity;->mTrackCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    const-string v3, "_id"

    invoke-virtual {v2, v3}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 1329
    :goto_38
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/TrackBrowserActivity;->mTrackCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    invoke-virtual {v3, v2}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->getLong(I)J

    move-result-wide v3

    .line 1330
    const-wide/16 v5, 0x0

    cmp-long v2, v3, v5

    if-gtz v2, :cond_76

    .line 1331
    const-string v1, "TrackBrowser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Trying to create a context menu on position: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " with an invalid trackId: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 1327
    :cond_6b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/music/TrackBrowserActivity;->mTrackCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    const-string v3, "_id"

    invoke-virtual {v1, v3}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    goto :goto_38

    .line 1336
    :cond_76
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/TrackBrowserActivity;->mTrackCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/music/TrackBrowserActivity;->mTrackCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    const-string v6, "title"

    invoke-virtual {v5, v6}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1339
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/TrackBrowserActivity;->mTrackCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/music/TrackBrowserActivity;->mTrackCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    const-string v7, "hasRemote"

    invoke-virtual {v6, v7}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->getInt(I)I

    move-result v2

    const/4 v6, 0x1

    if-ne v2, v6, :cond_141

    const/16 v20, 0x1

    .line 1341
    :goto_9f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/TrackBrowserActivity;->mTrackCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/music/TrackBrowserActivity;->mTrackCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    const-string v7, "hasLocal"

    invoke-virtual {v6, v7}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->getInt(I)I

    move-result v2

    const/4 v6, 0x1

    if-ne v2, v6, :cond_145

    const/16 v21, 0x1

    .line 1343
    :goto_b6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/TrackBrowserActivity;->mTrackCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/music/TrackBrowserActivity;->mTrackCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    const-string v7, "AlbumArtistId"

    invoke-virtual {v6, v7}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->getLong(I)J

    move-result-wide v6

    .line 1345
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/TrackBrowserActivity;->mTrackCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/music/TrackBrowserActivity;->mTrackCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    const-string v9, "artist"

    invoke-virtual {v8, v9}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v2, v8}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1347
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/TrackBrowserActivity;->mTrackCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/music/TrackBrowserActivity;->mTrackCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    const-string v10, "artistSort"

    invoke-virtual {v9, v10}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v2, v9}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1349
    const/4 v2, -0x1

    if-ne v1, v2, :cond_149

    const-wide/16 v15, -0x1

    .line 1350
    :goto_f1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/music/TrackBrowserActivity;->mTrackCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/TrackBrowserActivity;->mTrackCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    const-string v10, "StoreId"

    invoke-virtual {v2, v10}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 1353
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/TrackBrowserActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/music/activitymanagement/MusicStateController;->getContextMenuManager()Lcom/google/android/music/utils/ContextMenuManager;

    move-result-object v1

    invoke-static/range {p1 .. p1}, Lcom/google/android/music/utils/ContextMenuManager;->getPopupLocation(Landroid/view/View;)[I

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v11

    const/4 v12, 0x2

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/google/android/music/TrackBrowserActivity;->mEditMode:Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/TrackBrowserActivity;->mTrackCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/music/TrackBrowserActivity;->isMusic(Landroid/database/Cursor;)Z

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity;->mStoreService:Lcom/google/android/music/store/IStoreService;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/TrackBrowserActivity;->mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

    invoke-virtual {v2}, Lcom/google/android/music/NetworkMonitorServiceConnection;->getNetworkMonitor()Lcom/google/android/music/dl/INetworkMonitor;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity;->mTrackCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    move-object/from16 v24, v0

    move-object/from16 v2, p0

    invoke-virtual/range {v1 .. v24}, Lcom/google/android/music/utils/ContextMenuManager;->showTrackContextMenu(Lcom/google/android/music/activitymanagement/MusicFragment;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;[ILandroid/view/View;IZLcom/google/android/music/medialist/SongList;JILjava/lang/String;ZZZLcom/google/android/music/store/IStoreService;Lcom/google/android/music/dl/INetworkMonitor;Lcom/google/android/music/medialist/MediaList$MediaCursor;)V

    goto/16 :goto_b

    .line 1339
    :cond_141
    const/16 v20, 0x0

    goto/16 :goto_9f

    .line 1341
    :cond_145
    const/16 v21, 0x0

    goto/16 :goto_b6

    .line 1349
    :cond_149
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/TrackBrowserActivity;->mTrackCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    invoke-virtual {v2, v1}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->getLong(I)J

    move-result-wide v15

    goto :goto_f1
.end method

.method private getTrackCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .registers 5
    .parameter "filter"

    .prologue
    .line 1450
    invoke-virtual {p0}, Lcom/google/android/music/TrackBrowserActivity;->getAppState()Lcom/google/android/music/activitymanagement/MusicState;

    move-result-object v1

    iget-boolean v1, v1, Lcom/google/android/music/activitymanagement/MusicState;->mInTab:Z

    if-eqz v1, :cond_1e

    invoke-virtual {p0}, Lcom/google/android/music/TrackBrowserActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/music/activitymanagement/MusicStateController;->getCurrentDisplayMode()Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    move-result-object v1

    sget-object v2, Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;->SONGS:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    if-ne v1, v2, :cond_1e

    const/4 v0, 0x1

    .line 1452
    .local v0, isPrimary:Z
    :goto_15
    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    iget-object v2, p0, Lcom/google/android/music/TrackBrowserActivity;->mCursorCols:[Ljava/lang/String;

    invoke-virtual {v1, p0, v2, p1, v0}, Lcom/google/android/music/medialist/SongList;->getCursor(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/music/medialist/MediaList$MediaCursor;

    move-result-object v1

    return-object v1

    .line 1450
    .end local v0           #isPrimary:Z
    :cond_1e
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private initTracks()V
    .registers 9

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 790
    invoke-direct {p0}, Lcom/google/android/music/TrackBrowserActivity;->updateIsNowPlaying()V

    .line 792
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mAdapter:Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;

    if-nez v0, :cond_2c

    .line 793
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    invoke-virtual {v0}, Lcom/google/android/music/medialist/SongList;->getItemLayout()I

    move-result v3

    .line 795
    .local v3, layout:I
    new-instance v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;

    invoke-virtual {p0}, Lcom/google/android/music/TrackBrowserActivity;->getApplication()Landroid/content/Context;

    move-result-object v1

    new-array v5, v2, [Ljava/lang/String;

    new-array v6, v2, [I

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;-><init>(Landroid/content/Context;Lcom/google/android/music/TrackBrowserActivity;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mAdapter:Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;

    .line 802
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mAdapter:Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;

    invoke-direct {p0, v0}, Lcom/google/android/music/TrackBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 803
    invoke-direct {p0, v4}, Lcom/google/android/music/TrackBrowserActivity;->getTrackCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 804
    .local v7, c:Landroid/database/Cursor;
    invoke-virtual {p0, v7}, Lcom/google/android/music/TrackBrowserActivity;->init(Landroid/database/Cursor;)V

    .line 821
    .end local v3           #layout:I
    :goto_2b
    return-void

    .line 807
    .end local v7           #c:Landroid/database/Cursor;
    :cond_2c
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mAdapter:Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;

    invoke-virtual {v0}, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v7

    .line 814
    .restart local v7       #c:Landroid/database/Cursor;
    if-eqz v7, :cond_38

    .line 815
    invoke-virtual {p0, v7}, Lcom/google/android/music/TrackBrowserActivity;->init(Landroid/database/Cursor;)V

    goto :goto_2b

    .line 817
    :cond_38
    invoke-direct {p0, v4}, Lcom/google/android/music/TrackBrowserActivity;->getTrackCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 818
    invoke-virtual {p0, v7}, Lcom/google/android/music/TrackBrowserActivity;->init(Landroid/database/Cursor;)V

    goto :goto_2b
.end method

.method private isFastScrollerAlwaysVisible()Z
    .registers 2

    .prologue
    .line 1456
    invoke-static {}, Lcom/google/android/music/jumper/MusicPreferences;->isHoneycombOrGreater()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->isFastScrollAlwaysVisible()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private isMusic(Landroid/database/Cursor;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1184
    const-string v2, "title"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 1185
    const-string v3, "album"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 1186
    const-string v4, "artist"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 1188
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1189
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1190
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1191
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

    .line 1204
    :goto_36
    return v1

    .line 1199
    :cond_37
    const-string v2, "is_music"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 1201
    if-ltz v2, :cond_47

    .line 1202
    iget-object v3, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    invoke-virtual {v3, v2}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_49

    :cond_47
    :goto_47
    move v1, v0

    .line 1204
    goto :goto_36

    :cond_49
    move v0, v1

    .line 1202
    goto :goto_47
.end method

.method private isOnNowPlayingScreen()Z
    .registers 3

    .prologue
    .line 359
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mCurrentMusicState:Lcom/google/android/music/activitymanagement/MusicState;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mCurrentMusicState:Lcom/google/android/music/activitymanagement/MusicState;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicState;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_20

    const-string v0, "com.google.android.music.PLAYBACK_VIEWER"

    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity;->mCurrentMusicState:Lcom/google/android/music/activitymanagement/MusicState;

    invoke-virtual {v1}, Lcom/google/android/music/activitymanagement/MusicState;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v0, 0x1

    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method private loadView(Lcom/google/android/music/activitymanagement/MusicState;)Landroid/view/View;
    .registers 14
    .parameter "appState"

    .prologue
    .line 376
    invoke-virtual {p1}, Lcom/google/android/music/activitymanagement/MusicState;->isTopLevelState()Z

    move-result v8

    if-nez v8, :cond_a

    iget-boolean v8, p1, Lcom/google/android/music/activitymanagement/MusicState;->mInTab:Z

    if-eqz v8, :cond_17f

    .line 377
    :cond_a
    const v8, 0x7f040054

    invoke-virtual {p0, v8}, Lcom/google/android/music/TrackBrowserActivity;->inflateView(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mView:Landroid/view/View;

    .line 382
    :goto_13
    iget-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mView:Landroid/view/View;

    const v9, 0x7f100050

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mListContainer:Landroid/view/View;

    .line 383
    iget-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mView:Landroid/view/View;

    const v9, 0x102000a

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ListView;

    iput-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    .line 384
    iget-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    invoke-virtual {v8, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 385
    iget-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    invoke-virtual {v8, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 386
    iget-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 387
    iget-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 390
    iget-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 392
    iget-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v8}, Lcom/google/android/music/jumper/MusicPreferences;->isTvMusic()Z

    move-result v8

    if-eqz v8, :cond_18a

    .line 393
    iget-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    const v9, 0x7f02015d

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->setSelector(I)V

    .line 406
    :cond_57
    :goto_57
    iget-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v8}, Lcom/google/android/music/jumper/MusicPreferences;->isTvMusic()Z

    move-result v8

    if-eqz v8, :cond_1be

    invoke-virtual {p1}, Lcom/google/android/music/activitymanagement/MusicState;->isTopLevelState()Z

    move-result v8

    if-nez v8, :cond_1be

    .line 407
    invoke-virtual {p0}, Lcom/google/android/music/TrackBrowserActivity;->getMusicUIController()Lcom/google/android/music/activitymanagement/MusicUIController;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/music/activitymanagement/MusicUIController;->getAlbumInfoView()Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mHeaderView:Landroid/view/View;

    .line 412
    :goto_6f
    const/4 v8, -0x1

    iput v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mShuffleAllListItemIndex:I

    .line 414
    iget-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v8}, Lcom/google/android/music/jumper/MusicPreferences;->isTabletMusicExperience()Z

    move-result v8

    if-eqz v8, :cond_299

    .line 416
    iget-boolean v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mAllTracks:Z

    if-eqz v8, :cond_1cb

    .line 417
    const v8, 0x7f04001b

    invoke-virtual {p0, v8}, Lcom/google/android/music/TrackBrowserActivity;->inflateView(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mTopLine:Landroid/view/View;

    .line 421
    :goto_87
    iget-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mTopLine:Landroid/view/View;

    const v9, 0x7f100054

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mSortChooser:Landroid/widget/TextView;

    .line 422
    iget-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mTopLine:Landroid/view/View;

    const v9, 0x7f100053

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mSortChooserContainer:Landroid/view/View;

    .line 423
    iget-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    invoke-virtual {v8}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v8

    iput v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mShuffleAllListItemIndex:I

    .line 424
    iget-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    iget-object v9, p0, Lcom/google/android/music/TrackBrowserActivity;->mTopLine:Landroid/view/View;

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual {v8, v9, v10, v11}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 426
    iget-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    const/high16 v9, 0x100

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    .line 428
    iget-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v8}, Lcom/google/android/music/jumper/MusicPreferences;->isTvMusic()Z

    move-result v8

    if-eqz v8, :cond_1d6

    iget-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mSortChooser:Landroid/widget/TextView;

    if-eqz v8, :cond_1d6

    .line 429
    iget-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mSortChooser:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 486
    :cond_ca
    :goto_ca
    iget-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mHeaderView:Landroid/view/View;

    if-eqz v8, :cond_154

    .line 487
    iget-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mHeaderView:Landroid/view/View;

    const v9, 0x7f10001d

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mComboIcon:Landroid/view/View;

    .line 489
    iget-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mHeaderView:Landroid/view/View;

    const v9, 0x7f10004e

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mContainerContextMenu:Landroid/view/View;

    .line 491
    iget-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/google/android/music/medialist/SongList;->isFlagSet(I)Z

    move-result v8

    if-nez v8, :cond_2b5

    .line 492
    iget-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mContainerContextMenu:Landroid/view/View;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 501
    :cond_f4
    :goto_f4
    iget-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mHeaderView:Landroid/view/View;

    const v9, 0x7f10000f

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/google/android/music/KeepOnCheckBox;

    iput-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mKeepOnCheckBox:Lcom/google/android/music/KeepOnCheckBox;

    .line 503
    iget-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mKeepOnCheckBox:Lcom/google/android/music/KeepOnCheckBox;

    invoke-virtual {v8, p0}, Lcom/google/android/music/KeepOnCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 504
    iget-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mKeepOnCheckBox:Lcom/google/android/music/KeepOnCheckBox;

    new-instance v9, Lcom/google/android/music/FadingColorDrawable;

    iget-object v10, p0, Lcom/google/android/music/TrackBrowserActivity;->mKeepOnCheckBox:Lcom/google/android/music/KeepOnCheckBox;

    invoke-direct {v9, p0, v10}, Lcom/google/android/music/FadingColorDrawable;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {v8, v9}, Lcom/google/android/music/KeepOnCheckBox;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 505
    iget-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mHeaderView:Landroid/view/View;

    const v9, 0x7f10000b

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mSongCount:Landroid/widget/TextView;

    .line 506
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mPartyModeAddButton:Landroid/view/View;

    .line 509
    iget-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mPartyModeAddButton:Landroid/view/View;

    if-eqz v8, :cond_137

    .line 510
    iget-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mPartyModeAddButton:Landroid/view/View;

    invoke-virtual {v8, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 511
    iget-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mPartyModeAddButton:Landroid/view/View;

    new-instance v9, Lcom/google/android/music/FadingColorDrawable;

    iget-object v10, p0, Lcom/google/android/music/TrackBrowserActivity;->mPartyModeAddButton:Landroid/view/View;

    invoke-direct {v9, p0, v10}, Lcom/google/android/music/FadingColorDrawable;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 514
    :cond_137
    iget-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mHeaderView:Landroid/view/View;

    const v9, 0x7f10001c

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 515
    .local v0, albumIcon:Landroid/view/View;
    if-eqz v0, :cond_147

    .line 516
    const/16 v8, 0x8

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 518
    :cond_147
    iget-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mHeaderView:Landroid/view/View;

    const v9, 0x7f100010

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/google/android/music/widgets/QuickContactBadgeComp;

    iput-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mQuickContact:Lcom/google/android/music/widgets/QuickContactBadgeComp;

    .line 522
    .end local v0           #albumIcon:Landroid/view/View;
    :cond_154
    iget-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    invoke-virtual {v8}, Lcom/google/android/music/medialist/SongList;->getStoreUrl()Ljava/lang/String;

    move-result-object v6

    .line 523
    .local v6, storeUrl:Ljava/lang/String;
    if-eqz v6, :cond_176

    .line 524
    const v8, 0x7f040045

    invoke-virtual {p0, v8}, Lcom/google/android/music/TrackBrowserActivity;->inflateView(I)Landroid/view/View;

    move-result-object v7

    .line 525
    .local v7, v:Landroid/view/View;
    const v8, 0x7f100041

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mBuyButton:Landroid/view/View;

    .line 526
    iget-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mBuyButton:Landroid/view/View;

    invoke-virtual {v8, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 527
    iget-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    invoke-virtual {v8, v7}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 530
    .end local v7           #v:Landroid/view/View;
    :cond_176
    invoke-direct {p0}, Lcom/google/android/music/TrackBrowserActivity;->updateContainerOfflineStatus()V

    .line 532
    invoke-direct {p0}, Lcom/google/android/music/TrackBrowserActivity;->updateHeaderImage()V

    .line 533
    iget-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mView:Landroid/view/View;

    return-object v8

    .line 379
    .end local v6           #storeUrl:Ljava/lang/String;
    :cond_17f
    const v8, 0x7f040055

    invoke-virtual {p0, v8}, Lcom/google/android/music/TrackBrowserActivity;->inflateView(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mView:Landroid/view/View;

    goto/16 :goto_13

    .line 394
    :cond_18a
    iget-boolean v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mEditMode:Z

    if-eqz v8, :cond_1b6

    .line 395
    iget-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    check-cast v8, Lcom/google/android/music/TouchInterceptor;

    iget-object v9, p0, Lcom/google/android/music/TrackBrowserActivity;->mDropListener:Lcom/google/android/music/TouchInterceptor$DropListener;

    invoke-virtual {v8, v9}, Lcom/google/android/music/TouchInterceptor;->setDropListener(Lcom/google/android/music/TouchInterceptor$DropListener;)V

    .line 396
    iget-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    check-cast v8, Lcom/google/android/music/TouchInterceptor;

    iget-object v9, p0, Lcom/google/android/music/TrackBrowserActivity;->mRemoveListener:Lcom/google/android/music/TouchInterceptor$RemoveListener;

    invoke-virtual {v8, v9}, Lcom/google/android/music/TouchInterceptor;->setRemoveListener(Lcom/google/android/music/TouchInterceptor$RemoveListener;)V

    .line 397
    iget-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    const v9, 0x7f0200a5

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->setSelector(I)V

    .line 398
    invoke-static {}, Lcom/google/android/music/jumper/MusicPreferences;->isHoneycombOrGreater()Z

    move-result v8

    if-nez v8, :cond_57

    .line 399
    iget-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_57

    .line 402
    :cond_1b6
    iget-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    goto/16 :goto_57

    .line 409
    :cond_1be
    iget-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mView:Landroid/view/View;

    const v9, 0x7f100006

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mHeaderView:Landroid/view/View;

    goto/16 :goto_6f

    .line 419
    :cond_1cb
    const v8, 0x7f04001c

    invoke-virtual {p0, v8}, Lcom/google/android/music/TrackBrowserActivity;->inflateView(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mTopLine:Landroid/view/View;

    goto/16 :goto_87

    .line 430
    :cond_1d6
    iget-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mSortChooser:Landroid/widget/TextView;

    if-eqz v8, :cond_ca

    .line 431
    iget-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    invoke-virtual {v8}, Lcom/google/android/music/medialist/SongList;->getValidSortOrders()Ljava/util/ArrayList;

    move-result-object v8

    iput-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mSortOrderList:Ljava/util/ArrayList;

    .line 432
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mSortOrderNameList:Ljava/util/ArrayList;

    .line 434
    iget-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mSortOrderList:Ljava/util/ArrayList;

    if-eqz v8, :cond_27a

    .line 435
    iget-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    invoke-virtual {v8}, Lcom/google/android/music/medialist/SongList;->getSortOrder()I

    move-result v1

    .line 436
    .local v1, currentSortOrder:I
    new-instance v8, Lcom/google/android/music/menu/MusicDropdownMenu;

    new-instance v9, Lcom/google/android/music/TrackBrowserActivity$SortOrderCallback;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v10}, Lcom/google/android/music/TrackBrowserActivity$SortOrderCallback;-><init>(Lcom/google/android/music/TrackBrowserActivity;Lcom/google/android/music/TrackBrowserActivity$1;)V

    iget-object v10, p0, Lcom/google/android/music/TrackBrowserActivity;->mSortChooser:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getRootView()Landroid/view/View;

    move-result-object v10

    invoke-direct {v8, p0, v9, v10}, Lcom/google/android/music/menu/MusicDropdownMenu;-><init>(Landroid/content/Context;Lcom/google/android/music/menu/MusicMenu$Callback;Landroid/view/View;)V

    iput-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mSortOrderMenu:Lcom/google/android/music/menu/MusicDropdownMenu;

    .line 438
    iget-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mSortOrderMenu:Lcom/google/android/music/menu/MusicDropdownMenu;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/google/android/music/menu/MusicDropdownMenu;->setRadioButtonsEnabled(Z)V

    .line 439
    const/4 v2, 0x0

    .local v2, i:I
    :goto_20d
    iget-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mSortOrderList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v2, v8, :cond_274

    .line 440
    iget-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mSortOrderList:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 441
    .local v4, order:I
    const/4 v5, 0x0

    .line 442
    .local v5, sortNameResource:I
    const/4 v8, 0x1

    if-ne v4, v8, :cond_257

    .line 443
    const v5, 0x7f0d00dc

    .line 456
    :goto_228
    if-eqz v5, :cond_254

    .line 457
    iget-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mSortOrderNameList:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 458
    iget-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mSortOrderMenu:Lcom/google/android/music/menu/MusicDropdownMenu;

    invoke-virtual {p0}, Lcom/google/android/music/TrackBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v2, v2, v9}, Lcom/google/android/music/menu/MusicDropdownMenu;->add(IILjava/lang/String;)Lcom/google/android/music/menu/MusicMenuItem;

    move-result-object v3

    .line 460
    .local v3, item:Lcom/google/android/music/menu/MusicMenuItem;
    if-ne v1, v4, :cond_254

    .line 461
    iget-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mSortChooser:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/android/music/TrackBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 462
    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Lcom/google/android/music/menu/MusicMenuItem;->setChecked(Z)V

    .line 439
    .end local v3           #item:Lcom/google/android/music/menu/MusicMenuItem;
    :cond_254
    add-int/lit8 v2, v2, 0x1

    goto :goto_20d

    .line 444
    :cond_257
    const/4 v8, 0x3

    if-ne v4, v8, :cond_25e

    .line 445
    const v5, 0x7f0d00dd

    goto :goto_228

    .line 446
    :cond_25e
    const/4 v8, 0x2

    if-ne v4, v8, :cond_265

    .line 447
    const v5, 0x7f0d00de

    goto :goto_228

    .line 448
    :cond_265
    const/4 v8, 0x4

    if-ne v4, v8, :cond_26c

    .line 449
    const v5, 0x7f0d00df

    goto :goto_228

    .line 453
    :cond_26c
    iget-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mSortOrderList:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 454
    add-int/lit8 v2, v2, -0x1

    goto :goto_228

    .line 467
    .end local v4           #order:I
    .end local v5           #sortNameResource:I
    :cond_274
    iget-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mSortChooserContainer:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 469
    .end local v1           #currentSortOrder:I
    .end local v2           #i:I
    :cond_27a
    iget-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mSortOrderList:Ljava/util/ArrayList;

    if-eqz v8, :cond_286

    iget-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mSortOrderList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_28d

    .line 471
    :cond_286
    iget-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mSortChooserContainer:Landroid/view/View;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 473
    :cond_28d
    iget-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mSortChooser:Landroid/widget/TextView;

    new-instance v9, Lcom/google/android/music/TrackBrowserActivity$2;

    invoke-direct {v9, p0}, Lcom/google/android/music/TrackBrowserActivity$2;-><init>(Lcom/google/android/music/TrackBrowserActivity;)V

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_ca

    .line 480
    :cond_299
    iget-boolean v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mAllTracks:Z

    if-nez v8, :cond_ca

    iget-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mHeaderView:Landroid/view/View;

    if-nez v8, :cond_ca

    .line 481
    const v8, 0x7f040004

    invoke-virtual {p0, v8}, Lcom/google/android/music/TrackBrowserActivity;->inflateView(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mHeaderView:Landroid/view/View;

    .line 482
    iget-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    iget-object v9, p0, Lcom/google/android/music/TrackBrowserActivity;->mHeaderView:Landroid/view/View;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    goto/16 :goto_ca

    .line 494
    :cond_2b5
    iget-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mContainerContextMenu:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 495
    iget-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mContainerContextMenu:Landroid/view/View;

    invoke-virtual {v8, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 496
    iget-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mContainerContextMenu:Landroid/view/View;

    instance-of v8, v8, Landroid/widget/ImageView;

    if-eqz v8, :cond_f4

    .line 497
    iget-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mContainerContextMenu:Landroid/view/View;

    new-instance v9, Lcom/google/android/music/FadingColorDrawable;

    iget-object v10, p0, Lcom/google/android/music/TrackBrowserActivity;->mContainerContextMenu:Landroid/view/View;

    invoke-direct {v9, p0, v10}, Lcom/google/android/music/FadingColorDrawable;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_f4
.end method

.method private onKeepOnCheckBoxClicked(Landroid/view/View;)V
    .registers 5
    .parameter "view"

    .prologue
    .line 1307
    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity;->mKeepOnCheckBox:Lcom/google/android/music/KeepOnCheckBox;

    invoke-virtual {v1}, Lcom/google/android/music/KeepOnCheckBox;->isChecked()Z

    move-result v0

    .line 1308
    .local v0, isSelected:Z
    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    iget-object v2, p0, Lcom/google/android/music/TrackBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    invoke-virtual {v1, v2, p0, v0}, Lcom/google/android/music/medialist/SongList;->modifyOfflineStatus(Lcom/google/android/music/OfflineMusicManager;Landroid/content/Context;Z)V

    .line 1310
    return-void
.end method

.method private openSortMenu()V
    .registers 3

    .prologue
    .line 755
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mSortOrderMenu:Lcom/google/android/music/menu/MusicDropdownMenu;

    if-eqz v0, :cond_10

    .line 756
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mSortOrderMenu:Lcom/google/android/music/menu/MusicDropdownMenu;

    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity;->mSortChooser:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/google/android/music/menu/MusicDropdownMenu;->setButtonView(Landroid/view/View;)V

    .line 757
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mSortOrderMenu:Lcom/google/android/music/menu/MusicDropdownMenu;

    invoke-virtual {v0}, Lcom/google/android/music/menu/MusicDropdownMenu;->show()V

    .line 759
    :cond_10
    return-void
.end method

.method private removePlaylistItem(I)V
    .registers 6
    .parameter

    .prologue
    .line 1104
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1105
    if-nez v1, :cond_29

    .line 1106
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

    .line 1122
    :goto_28
    return-void

    .line 1110
    :cond_29
    :try_start_29
    sget-object v0, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    if-eqz v0, :cond_38

    sget-object v0, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v0}, Lcom/google/android/music/IMusicPlaybackService;->getQueuePosition()I

    move-result v0

    if-eq p1, v0, :cond_38

    .line 1112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mDeletedOneRow:Z
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_38} :catch_51

    .line 1117
    :cond_38
    :goto_38
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1118
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 1119
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    invoke-virtual {v0, p1}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->removeItem(I)V

    .line 1120
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1121
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    goto :goto_28

    .line 1114
    :catch_51
    move-exception v0

    .line 1115
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
    .line 768
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    if-eqz v0, :cond_9

    .line 769
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 771
    :cond_9
    return-void
.end method

.method private setSecondColumnIconVisibility(I)V
    .registers 4
    .parameter "viewsVisible"

    .prologue
    .line 637
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mContainerContextMenu:Landroid/view/View;

    if-eqz v0, :cond_e

    .line 638
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mContainerContextMenu:Landroid/view/View;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/google/android/music/TrackBrowserActivity;->viewVisiblility(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 640
    :cond_e
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mPartyModeAddButton:Landroid/view/View;

    if-eqz v0, :cond_1c

    .line 641
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mPartyModeAddButton:Landroid/view/View;

    const/4 v1, 0x4

    invoke-static {p1, v1}, Lcom/google/android/music/TrackBrowserActivity;->viewVisiblility(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 643
    :cond_1c
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mQuickContact:Lcom/google/android/music/widgets/QuickContactBadgeComp;

    if-eqz v0, :cond_2a

    .line 644
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mQuickContact:Lcom/google/android/music/widgets/QuickContactBadgeComp;

    const/4 v1, 0x2

    invoke-static {p1, v1}, Lcom/google/android/music/TrackBrowserActivity;->viewVisiblility(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/music/widgets/QuickContactBadgeComp;->setVisibility(I)V

    .line 646
    :cond_2a
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mKeepOnCheckBox:Lcom/google/android/music/KeepOnCheckBox;

    if-eqz v0, :cond_39

    .line 647
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mKeepOnCheckBox:Lcom/google/android/music/KeepOnCheckBox;

    const/16 v1, 0x10

    invoke-static {p1, v1}, Lcom/google/android/music/TrackBrowserActivity;->viewVisiblility(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/music/KeepOnCheckBox;->setVisibility(I)V

    .line 649
    :cond_39
    return-void
.end method

.method private static setSecondColumnIconVisibility(Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;I)V
    .registers 4
    .parameter "vh"
    .parameter "visibility"

    .prologue
    .line 653
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->contextMenu:Landroid/view/View;

    if-eqz v0, :cond_e

    .line 654
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->contextMenu:Landroid/view/View;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/google/android/music/TrackBrowserActivity;->viewVisiblility(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 656
    :cond_e
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->partyModeAddButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_1c

    .line 657
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->partyModeAddButton:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-static {p1, v1}, Lcom/google/android/music/TrackBrowserActivity;->viewVisiblility(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 659
    :cond_1c
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->syncProgress:Landroid/view/View;

    if-eqz v0, :cond_2b

    .line 660
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->syncProgress:Landroid/view/View;

    const/16 v1, 0x8

    invoke-static {p1, v1}, Lcom/google/android/music/TrackBrowserActivity;->viewVisiblility(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 662
    :cond_2b
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->quickContact:Lcom/google/android/music/widgets/QuickContactBadgeComp;

    if-eqz v0, :cond_39

    .line 663
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->quickContact:Lcom/google/android/music/widgets/QuickContactBadgeComp;

    const/4 v1, 0x2

    invoke-static {p1, v1}, Lcom/google/android/music/TrackBrowserActivity;->viewVisiblility(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/music/widgets/QuickContactBadgeComp;->setVisibility(I)V

    .line 665
    :cond_39
    return-void
.end method

.method private setTitle()V
    .registers 3

    .prologue
    .line 1023
    move-object v0, p0

    .line 1024
    .local v0, context:Landroid/content/Context;
    new-instance v1, Lcom/google/android/music/TrackBrowserActivity$7;

    invoke-direct {v1, p0, v0}, Lcom/google/android/music/TrackBrowserActivity$7;-><init>(Lcom/google/android/music/TrackBrowserActivity;Landroid/content/Context;)V

    invoke-static {v1}, Lcom/google/android/music/MusicUtils;->runAsyncWithCallback(Lcom/google/android/music/utils/async/AsyncRunner;)V

    .line 1087
    return-void
.end method

.method private showTrackArtist()Z
    .registers 2

    .prologue
    .line 1018
    iget-boolean v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mShowTrackArtist:Z

    return v0
.end method

.method private updateContainerOfflineStatus()V
    .registers 5

    .prologue
    .line 592
    iget-object v2, p0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    if-nez v2, :cond_5

    .line 634
    :goto_4
    return-void

    .line 594
    :cond_5
    const/4 v1, 0x0

    .line 595
    .local v1, viewsVisible:I
    invoke-virtual {p0}, Lcom/google/android/music/TrackBrowserActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/music/activitymanagement/MusicStateController;->isInPartyMode()Z

    move-result v0

    .line 596
    .local v0, inPartyMode:Z
    iget-object v2, p0, Lcom/google/android/music/TrackBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    if-eqz v2, :cond_32

    iget-object v2, p0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    invoke-virtual {v2}, Lcom/google/android/music/medialist/SongList;->supportsOfflineCaching()Z

    move-result v2

    if-eqz v2, :cond_32

    iget-object v2, p0, Lcom/google/android/music/TrackBrowserActivity;->mStoreService:Lcom/google/android/music/store/IStoreService;

    if-eqz v2, :cond_32

    .line 600
    iget-object v2, p0, Lcom/google/android/music/TrackBrowserActivity;->mKeepOnCheckBox:Lcom/google/android/music/KeepOnCheckBox;

    if-eqz v2, :cond_2c

    .line 601
    sget-object v2, Lcom/google/android/music/utils/async/AsyncWorkers;->sUIBackgroundWorker:Lcom/google/android/music/Worker;

    new-instance v3, Lcom/google/android/music/TrackBrowserActivity$3;

    invoke-direct {v3, p0}, Lcom/google/android/music/TrackBrowserActivity$3;-><init>(Lcom/google/android/music/TrackBrowserActivity;)V

    invoke-static {v2, v3}, Lcom/google/android/music/utils/async/AsyncWorkers;->runAsyncWithCallback(Lcom/google/android/music/Worker;Lcom/google/android/music/utils/async/AsyncRunner;)V

    .line 622
    :cond_2c
    const/16 v1, 0x10

    .line 633
    :cond_2e
    :goto_2e
    invoke-direct {p0, v1}, Lcom/google/android/music/TrackBrowserActivity;->setSecondColumnIconVisibility(I)V

    goto :goto_4

    .line 624
    :cond_32
    if-eqz v0, :cond_35

    .line 625
    const/4 v1, 0x4

    .line 627
    :cond_35
    iget-object v2, p0, Lcom/google/android/music/TrackBrowserActivity;->mContainerContextMenu:Landroid/view/View;

    if-eqz v2, :cond_2e

    .line 628
    iget-object v2, p0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/music/medialist/SongList;->isFlagSet(I)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 629
    or-int/lit8 v1, v1, 0x1

    goto :goto_2e
.end method

.method private updateHeaderImage()V
    .registers 3

    .prologue
    .line 672
    .line 674
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mHeaderView:Landroid/view/View;

    if-nez v0, :cond_5

    .line 720
    :goto_4
    return-void

    .line 676
    :cond_5
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mHeaderView:Landroid/view/View;

    const v1, 0x7f100007

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mAlbumArt:Landroid/widget/ImageView;

    .line 677
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mAlbumArt:Landroid/widget/ImageView;

    if-eqz v0, :cond_1b

    .line 678
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mAlbumArt:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 680
    :cond_1b
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mHeaderView:Landroid/view/View;

    const v1, 0x7f1000e2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mAlbumBg:Landroid/widget/ImageView;

    .line 681
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mAlbumBg:Landroid/widget/ImageView;

    if-eqz v0, :cond_31

    .line 682
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mAlbumBg:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 684
    :cond_31
    invoke-virtual {p0}, Lcom/google/android/music/TrackBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09002b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 686
    new-instance v1, Lcom/google/android/music/TrackBrowserActivity$4;

    invoke-direct {v1, p0, p0, v0}, Lcom/google/android/music/TrackBrowserActivity$4;-><init>(Lcom/google/android/music/TrackBrowserActivity;Landroid/content/Context;I)V

    invoke-static {v1}, Lcom/google/android/music/MusicUtils;->runAsyncWithCallback(Lcom/google/android/music/utils/async/AsyncRunner;)V

    goto :goto_4
.end method

.method private updateIsNowPlaying()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 774
    sget-object v0, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    .line 775
    if-eqz v0, :cond_1f

    .line 777
    :try_start_5
    invoke-interface {v0}, Lcom/google/android/music/IMusicPlaybackService;->getMediaList()Lcom/google/android/music/medialist/SongList;

    move-result-object v0

    .line 778
    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    invoke-virtual {v1, v0}, Lcom/google/android/music/medialist/SongList;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mIsNowPlaying:Z
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_11} :catch_12

    .line 786
    :goto_11
    return-void

    .line 779
    :catch_12
    move-exception v0

    .line 780
    const-string v1, "TrackBrowser"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 781
    iput-boolean v3, p0, Lcom/google/android/music/TrackBrowserActivity;->mIsNowPlaying:Z

    goto :goto_11

    .line 784
    :cond_1f
    iput-boolean v3, p0, Lcom/google/android/music/TrackBrowserActivity;->mIsNowPlaying:Z

    goto :goto_11
.end method

.method private updateShowTrackArtist()V
    .registers 3

    .prologue
    .line 1002
    sget-object v0, Lcom/google/android/music/utils/async/AsyncWorkers;->sUIBackgroundWorker:Lcom/google/android/music/Worker;

    new-instance v1, Lcom/google/android/music/TrackBrowserActivity$6;

    invoke-direct {v1, p0}, Lcom/google/android/music/TrackBrowserActivity$6;-><init>(Lcom/google/android/music/TrackBrowserActivity;)V

    invoke-static {v0, v1}, Lcom/google/android/music/utils/async/AsyncWorkers;->runAsync(Lcom/google/android/music/Worker;Ljava/lang/Runnable;)V

    .line 1015
    return-void
.end method

.method private updateTopLineVisibility(I)V
    .registers 4
    .parameter "count"

    .prologue
    .line 580
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mTopLine:Landroid/view/View;

    if-eqz v0, :cond_d

    .line 581
    if-nez p1, :cond_e

    .line 582
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mTopLine:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 587
    :cond_d
    :goto_d
    return-void

    .line 584
    :cond_e
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mTopLine:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_d
.end method

.method private static viewVisiblility(II)I
    .registers 3
    .parameter "value"
    .parameter "flag"

    .prologue
    .line 668
    and-int v0, p0, p1

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    const/16 v0, 0x8

    goto :goto_5
.end method


# virtual methods
.method public getLoggerScreenString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 941
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "songs#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .registers 2

    .prologue
    .line 371
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mView:Landroid/view/View;

    return-object v0
.end method

.method public hasCustomMenuOptions()Z
    .registers 2

    .prologue
    .line 2123
    const/4 v0, 0x1

    return v0
.end method

.method public init(Landroid/database/Cursor;)V
    .registers 5
    .parameter

    .prologue
    .line 963
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mAdapter:Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mIsFinished:Z

    if-eqz v0, :cond_9

    .line 998
    :cond_8
    :goto_8
    return-void

    .line 966
    :cond_9
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mAdapter:Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 968
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    if-eqz v0, :cond_8

    .line 972
    invoke-direct {p0}, Lcom/google/android/music/TrackBrowserActivity;->setTitle()V

    .line 974
    iget-boolean v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mIsNowPlaying:Z

    if-eqz v0, :cond_25

    .line 976
    :try_start_19
    sget-object v0, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v0}, Lcom/google/android/music/IMusicPlaybackService;->getQueuePosition()I

    move-result v0

    .line 977
    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity;->mAdapter:Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->setScrollToPosition(II)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_25} :catch_2b

    .line 997
    :cond_25
    :goto_25
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    goto :goto_8

    .line 978
    :catch_2b
    move-exception v0

    .line 979
    const-string v1, "TrackBrowser"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_25
.end method

.method public initializeState(Lcom/google/android/music/activitymanagement/MusicState;)V
    .registers 14
    .parameter "state"

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 208
    invoke-super {p0, p1}, Lcom/google/android/music/activitymanagement/MusicFragment;->initializeState(Lcom/google/android/music/activitymanagement/MusicState;)V

    .line 211
    invoke-direct {p0}, Lcom/google/android/music/TrackBrowserActivity;->cleanState()V

    .line 212
    iput-object p1, p0, Lcom/google/android/music/TrackBrowserActivity;->mCurrentMusicState:Lcom/google/android/music/activitymanagement/MusicState;

    .line 214
    invoke-virtual {p1}, Lcom/google/android/music/activitymanagement/MusicState;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 216
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p1, p0}, Lcom/google/android/music/activitymanagement/MusicState;->getSavedBundle(Lcom/google/android/music/activitymanagement/MusicFragment;)Landroid/os/Bundle;

    move-result-object v0

    .line 217
    .local v0, extras:Landroid/os/Bundle;
    if-nez v0, :cond_1b

    .line 218
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 220
    :cond_1b
    if-eqz v0, :cond_3a

    .line 221
    const-string v4, "medialist"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/google/android/music/medialist/SongList;

    iput-object v4, p0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    .line 222
    const-string v4, "autoscrollTrackId"

    const-wide/16 v5, -0x1

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/music/TrackBrowserActivity;->mSelectedId:J

    .line 223
    const-string v4, "scrollPos"

    const/4 v5, -0x1

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/google/android/music/TrackBrowserActivity;->mRestoreScrollPos:I

    .line 226
    :cond_3a
    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    if-nez v4, :cond_4b

    .line 227
    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v4}, Lcom/google/android/music/jumper/MusicPreferences;->getAllSongsSortOrder()I

    move-result v3

    .line 228
    .local v3, sortOrder:I
    new-instance v4, Lcom/google/android/music/medialist/AllSongsList;

    invoke-direct {v4, v3}, Lcom/google/android/music/medialist/AllSongsList;-><init>(I)V

    iput-object v4, p0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    .line 231
    .end local v3           #sortOrder:I
    :cond_4b
    invoke-virtual {p0}, Lcom/google/android/music/TrackBrowserActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/music/activitymanagement/MusicStateController;->getTracker()Lcom/google/android/music/MusicEventLogger;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/music/TrackBrowserActivity;->mTracker:Lcom/google/android/music/MusicEventLogger;

    .line 233
    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    instance-of v4, v4, Lcom/google/android/music/medialist/AllSongsList;

    iput-boolean v4, p0, Lcom/google/android/music/TrackBrowserActivity;->mAllTracks:Z

    .line 240
    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    invoke-virtual {v4}, Lcom/google/android/music/medialist/SongList;->isEditable()Z

    move-result v4

    if-eqz v4, :cond_65

    .line 241
    iput-boolean v7, p0, Lcom/google/android/music/TrackBrowserActivity;->mEditMode:Z

    .line 244
    :cond_65
    iget-object v2, p0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    .line 246
    .local v2, mSavedMediaList:Lcom/google/android/music/medialist/SongList;
    new-instance v4, Lcom/google/android/music/TrackBrowserActivity$1;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v4, p0, v5, v2}, Lcom/google/android/music/TrackBrowserActivity$1;-><init>(Lcom/google/android/music/TrackBrowserActivity;Landroid/os/Handler;Lcom/google/android/music/medialist/SongList;)V

    iput-object v4, p0, Lcom/google/android/music/TrackBrowserActivity;->mMetaDataObserver:Landroid/database/ContentObserver;

    .line 270
    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    invoke-virtual {v4}, Lcom/google/android/music/medialist/SongList;->hasMetaData()Z

    move-result v4

    if-eqz v4, :cond_82

    .line 271
    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    iget-object v5, p0, Lcom/google/android/music/TrackBrowserActivity;->mMetaDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, p0, v5}, Lcom/google/android/music/medialist/SongList;->registerMetaDataObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    .line 278
    :cond_82
    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    instance-of v4, v4, Lcom/google/android/music/medialist/PlaylistSongList;

    if-eqz v4, :cond_10a

    .line 279
    const/16 v4, 0x11

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "_id"

    aput-object v5, v4, v8

    const-string v5, "title"

    aput-object v5, v4, v7

    const-string v5, "album"

    aput-object v5, v4, v9

    const-string v5, "artist"

    aput-object v5, v4, v10

    const-string v5, "AlbumArtistId"

    aput-object v5, v4, v11

    const/4 v5, 0x5

    const-string v6, "artistSort"

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "duration"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    const-string v6, "play_order"

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string v6, "audio_id"

    aput-object v6, v4, v5

    const/16 v5, 0x9

    const-string v6, "is_music"

    aput-object v6, v4, v5

    const/16 v5, 0xa

    const-string v6, "album_id"

    aput-object v6, v4, v5

    const/16 v5, 0xb

    const-string v6, "hasRemote"

    aput-object v6, v4, v5

    const/16 v5, 0xc

    const-string v6, "hasLocal"

    aput-object v6, v4, v5

    const/16 v5, 0xd

    const-string v6, "year"

    aput-object v6, v4, v5

    const/16 v5, 0xe

    const-string v6, "Genre"

    aput-object v6, v4, v5

    const/16 v5, 0xf

    const-string v6, "StoreId"

    aput-object v6, v4, v5

    const/16 v5, 0x10

    const-string v6, "SongId"

    aput-object v6, v4, v5

    iput-object v4, p0, Lcom/google/android/music/TrackBrowserActivity;->mCursorCols:[Ljava/lang/String;

    .line 321
    :goto_e7
    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity;->mView:Landroid/view/View;

    if-eqz v4, :cond_100

    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_100

    .line 322
    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/google/android/music/TrackBrowserActivity;->mView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 324
    :cond_100
    invoke-direct {p0, p1}, Lcom/google/android/music/TrackBrowserActivity;->loadView(Lcom/google/android/music/activitymanagement/MusicState;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/music/TrackBrowserActivity;->mView:Landroid/view/View;

    .line 326
    invoke-direct {p0}, Lcom/google/android/music/TrackBrowserActivity;->initTracks()V

    .line 327
    return-void

    .line 299
    :cond_10a
    const/16 v4, 0xe

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "_id"

    aput-object v5, v4, v8

    const-string v5, "title"

    aput-object v5, v4, v7

    const-string v5, "album"

    aput-object v5, v4, v9

    const-string v5, "artist"

    aput-object v5, v4, v10

    const-string v5, "AlbumArtistId"

    aput-object v5, v4, v11

    const/4 v5, 0x5

    const-string v6, "artistSort"

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "duration"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    const-string v6, "album_id"

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string v6, "hasRemote"

    aput-object v6, v4, v5

    const/16 v5, 0x9

    const-string v6, "hasLocal"

    aput-object v6, v4, v5

    const/16 v5, 0xa

    const-string v6, "year"

    aput-object v6, v4, v5

    const/16 v5, 0xb

    const-string v6, "Genre"

    aput-object v6, v4, v5

    const/16 v5, 0xc

    const-string v6, "StoreId"

    aput-object v6, v4, v5

    const/16 v5, 0xd

    const-string v6, "SongId"

    aput-object v6, v4, v5

    iput-object v4, p0, Lcom/google/android/music/TrackBrowserActivity;->mCursorCols:[Ljava/lang/String;

    goto :goto_e7
.end method

.method public onActionBarConfig(Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;)V
    .registers 5
    .parameter "actionbarConfig"

    .prologue
    const/16 v2, 0x200

    const/16 v1, 0x8

    .line 346
    invoke-virtual {p0}, Lcom/google/android/music/TrackBrowserActivity;->getAppState()Lcom/google/android/music/activitymanagement/MusicState;

    move-result-object v0

    if-eqz v0, :cond_27

    invoke-virtual {p0}, Lcom/google/android/music/TrackBrowserActivity;->getAppState()Lcom/google/android/music/activitymanagement/MusicState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicState;->isTopLevelState()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 347
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v0}, Lcom/google/android/music/jumper/MusicPreferences;->isTvMusic()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 348
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;->hide(I)V

    .line 350
    :cond_20
    invoke-virtual {p1, v1}, Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;->hide(I)V

    .line 351
    invoke-virtual {p1, v2}, Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;->hide(I)V

    .line 356
    :goto_26
    return-void

    .line 353
    :cond_27
    invoke-virtual {p1, v1}, Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;->show(I)V

    .line 354
    invoke-virtual {p1, v2}, Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;->show(I)V

    goto :goto_26
.end method

.method public onBottomBarChanged()V
    .registers 6

    .prologue
    .line 541
    iget-object v3, p0, Lcom/google/android/music/TrackBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v3}, Lcom/google/android/music/jumper/MusicPreferences;->isTabletMusicExperience()Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 545
    iget-object v2, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    .line 546
    .local v2, viewToSetPaddingOn:Landroid/view/View;
    invoke-virtual {p0}, Lcom/google/android/music/TrackBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900a9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v1, v3

    .line 554
    .local v1, paddingRight:I
    :goto_16
    if-eqz v2, :cond_2c

    .line 556
    iget-object v3, p0, Lcom/google/android/music/TrackBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v3}, Lcom/google/android/music/jumper/MusicPreferences;->isTvMusic()Z

    move-result v3

    if-eqz v3, :cond_31

    const/4 v0, 0x0

    .line 558
    .local v0, bottomPadding:I
    :goto_21
    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    invoke-virtual {v2, v3, v4, v1, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 562
    .end local v0           #bottomPadding:I
    :cond_2c
    return-void

    .line 550
    .end local v1           #paddingRight:I
    .end local v2           #viewToSetPaddingOn:Landroid/view/View;
    :cond_2d
    iget-object v2, p0, Lcom/google/android/music/TrackBrowserActivity;->mListContainer:Landroid/view/View;

    .line 551
    .restart local v2       #viewToSetPaddingOn:Landroid/view/View;
    const/4 v1, 0x0

    .restart local v1       #paddingRight:I
    goto :goto_16

    .line 556
    :cond_31
    invoke-virtual {p0}, Lcom/google/android/music/TrackBrowserActivity;->getMusicUIController()Lcom/google/android/music/activitymanagement/MusicUIController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/music/activitymanagement/MusicUIController;->getBottomBarHeight()I

    move-result v0

    goto :goto_21
.end method

.method public onClick(Landroid/view/View;)V
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 2075
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mAlbumArt:Landroid/widget/ImageView;

    if-eq p1, v0, :cond_9

    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mAlbumBg:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_10

    .line 2076
    :cond_9
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    const/4 v1, -0x1

    invoke-static {p0, v0, v1, v5}, Lcom/google/android/music/MusicUtils;->playMediaList(Lcom/google/android/music/activitymanagement/MusicFragment;Lcom/google/android/music/medialist/SongList;IZ)V

    .line 2119
    :cond_f
    :goto_f
    return-void

    .line 2078
    :cond_10
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mContainerContextMenu:Landroid/view/View;

    if-ne p1, v0, :cond_18

    .line 2079
    invoke-direct {p0, p1}, Lcom/google/android/music/TrackBrowserActivity;->containerContextMenuClick(Landroid/view/View;)V

    goto :goto_f

    .line 2080
    :cond_18
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mKeepOnCheckBox:Lcom/google/android/music/KeepOnCheckBox;

    if-ne p1, v0, :cond_20

    .line 2081
    invoke-direct {p0, p1}, Lcom/google/android/music/TrackBrowserActivity;->onKeepOnCheckBoxClicked(Landroid/view/View;)V

    goto :goto_f

    .line 2082
    :cond_20
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mBuyButton:Landroid/view/View;

    if-ne p1, v0, :cond_55

    .line 2083
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mTracker:Lcom/google/android/music/MusicEventLogger;

    const-string v1, "buy"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "activeScreen"

    aput-object v4, v2, v3

    invoke-virtual {p0}, Lcom/google/android/music/TrackBrowserActivity;->getLoggerScreenString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x2

    const-string v4, "uri"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    invoke-virtual {v4}, Lcom/google/android/music/medialist/SongList;->getStoreUrl()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/MusicEventLogger;->trackEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2086
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    invoke-virtual {v0}, Lcom/google/android/music/medialist/SongList;->getStoreUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/music/dl/IntentConstants;->getStoreBuyIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/music/TrackBrowserActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_f

    .line 2087
    :cond_55
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mPartyModeAddButton:Landroid/view/View;

    if-ne p1, v0, :cond_f

    invoke-virtual {p0}, Lcom/google/android/music/TrackBrowserActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicStateController;->isInPartyMode()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2090
    sget-object v0, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    new-instance v1, Lcom/google/android/music/TrackBrowserActivity$13;

    invoke-direct {v1, p0}, Lcom/google/android/music/TrackBrowserActivity$13;-><init>(Lcom/google/android/music/TrackBrowserActivity;)V

    invoke-static {v0, v1}, Lcom/google/android/music/utils/async/AsyncWorkers;->runAsyncWithCallback(Lcom/google/android/music/Worker;Lcom/google/android/music/utils/async/AsyncRunner;)V

    goto :goto_f
.end method

.method public onCreate()V
    .registers 6

    .prologue
    const/4 v1, 0x1

    .line 185
    invoke-super {p0}, Lcom/google/android/music/activitymanagement/MusicFragment;->onCreate()V

    .line 186
    invoke-static {p0, p0}, Lcom/google/android/music/jumper/MusicPreferences;->getMusicPreferences(Landroid/content/Context;Ljava/lang/Object;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/music/TrackBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    .line 188
    invoke-static {p0, p0}, Lcom/google/android/music/MusicUtils;->bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;)Lcom/google/android/music/MusicUtils$ServiceToken;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/music/TrackBrowserActivity;->mToken:Lcom/google/android/music/MusicUtils$ServiceToken;

    .line 190
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 191
    .local v0, f:Landroid/content/IntentFilter;
    const-string v2, "com.android.music.playstatechanged"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 192
    const-string v2, "com.android.music.metachanged"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 193
    const-string v2, "com.android.music.queuechanged"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 194
    iget-object v2, p0, Lcom/google/android/music/TrackBrowserActivity;->mPlaybackServiceListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/google/android/music/TrackBrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 195
    iget-object v2, p0, Lcom/google/android/music/TrackBrowserActivity;->mStoreSafeConnection:Lcom/google/android/music/utils/SafeServiceConnection;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.google.android.music.STORE_SERVICE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0, v3, v1}, Lcom/google/android/music/utils/SafeServiceConnection;->bindService(Landroid/content/Context;Landroid/content/Intent;I)Z

    .line 198
    new-instance v2, Lcom/google/android/music/NetworkMonitorServiceConnection;

    iget-object v3, p0, Lcom/google/android/music/TrackBrowserActivity;->mStreamabilityChangeListener:Lcom/google/android/music/dl/IStreamabilityChangeListener;

    invoke-direct {v2, v3}, Lcom/google/android/music/NetworkMonitorServiceConnection;-><init>(Lcom/google/android/music/dl/IStreamabilityChangeListener;)V

    iput-object v2, p0, Lcom/google/android/music/TrackBrowserActivity;->mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

    .line 200
    iget-object v2, p0, Lcom/google/android/music/TrackBrowserActivity;->mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

    invoke-virtual {v2, p0}, Lcom/google/android/music/NetworkMonitorServiceConnection;->bindToService(Landroid/content/Context;)V

    .line 201
    invoke-virtual {p0}, Lcom/google/android/music/TrackBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_53

    :goto_50
    iput-boolean v1, p0, Lcom/google/android/music/TrackBrowserActivity;->mIsLandscape:Z

    .line 203
    return-void

    .line 201
    :cond_53
    const/4 v1, 0x0

    goto :goto_50
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 863
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mIsFinished:Z

    .line 865
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mToken:Lcom/google/android/music/MusicUtils$ServiceToken;

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->unbindFromService(Lcom/google/android/music/MusicUtils$ServiceToken;)V

    .line 866
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mPlaybackServiceListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/google/android/music/TrackBrowserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 867
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mStoreSafeConnection:Lcom/google/android/music/utils/SafeServiceConnection;

    invoke-virtual {v0, p0}, Lcom/google/android/music/utils/SafeServiceConnection;->unbindService(Landroid/content/Context;)V

    .line 869
    invoke-direct {p0}, Lcom/google/android/music/TrackBrowserActivity;->cleanState()V

    .line 871
    invoke-static {p0}, Lcom/google/android/music/jumper/MusicPreferences;->releaseMusicPreferences(Ljava/lang/Object;)V

    .line 872
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

    invoke-virtual {v0, p0}, Lcom/google/android/music/NetworkMonitorServiceConnection;->unbindFromService(Landroid/content/Context;)V

    .line 874
    invoke-super {p0}, Lcom/google/android/music/activitymanagement/MusicFragment;->onDestroy()V

    .line 875
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
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
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1391
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mAdapter:Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;

    invoke-virtual {v0}, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_b

    .line 1440
    :cond_a
    :goto_a
    return-void

    .line 1396
    :cond_b
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    invoke-virtual {v0}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_a

    .line 1400
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    .line 1402
    if-ge p3, v0, :cond_2c

    .line 1404
    iget v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mShuffleAllListItemIndex:I

    if-ne p3, v0, :cond_a

    .line 1405
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->shuffleAll(Lcom/google/android/music/medialist/SongList;)V

    .line 1406
    invoke-static {p0}, Lcom/google/android/music/MusicUtils;->startMediaPlayer(Lcom/google/android/music/activitymanagement/MusicFragment;)V

    goto :goto_a

    .line 1412
    :cond_2c
    sub-int v1, p3, v0

    .line 1414
    invoke-virtual {p0}, Lcom/google/android/music/TrackBrowserActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicStateController;->isInPartyMode()Z

    move-result v2

    .line 1415
    invoke-virtual {p0}, Lcom/google/android/music/TrackBrowserActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicStateController;->getAtHomeStateController()Lcom/google/android/music/athome/AtHomeStateController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/athome/AtHomeStateController;->isAtHomeActive()Z

    move-result v3

    .line 1417
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;

    .line 1418
    iget-boolean v4, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->hasRemote:Z

    .line 1419
    iget v5, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->partyModeQueueState:I

    .line 1421
    if-eqz v2, :cond_66

    .line 1422
    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->syncProgress:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1423
    if-nez v4, :cond_60

    .line 1425
    const v0, 0x7f0d003a

    invoke-static {p0, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 1427
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_a

    .line 1430
    :cond_60
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    invoke-static {p0, v0, v1, v6}, Lcom/google/android/music/MusicUtils;->playMediaList(Lcom/google/android/music/activitymanagement/MusicFragment;Lcom/google/android/music/medialist/SongList;IZ)V

    goto :goto_a

    .line 1432
    :cond_66
    if-eqz v3, :cond_6a

    if-eqz v4, :cond_a

    .line 1436
    :cond_6a
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    invoke-virtual {v0, v1}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->moveToPosition(I)Z

    .line 1437
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    invoke-static {p0, v0, v1, v7}, Lcom/google/android/music/MusicUtils;->playMediaList(Lcom/google/android/music/activitymanagement/MusicFragment;Lcom/google/android/music/medialist/SongList;IZ)V

    goto :goto_a
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
    .line 1210
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v0}, Lcom/google/android/music/jumper/MusicPreferences;->isTabletMusicExperience()Z

    move-result v0

    if-nez v0, :cond_15

    .line 1211
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    if-lt p3, v0, :cond_13

    .line 1212
    invoke-direct {p0, p2, p3}, Lcom/google/android/music/TrackBrowserActivity;->createListContextMusicMenu(Landroid/view/View;I)V

    .line 1214
    :cond_13
    const/4 v0, 0x1

    .line 1216
    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public onLayoutConfig(Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;)V
    .registers 3
    .parameter "layoutConfig"

    .prologue
    .line 331
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    instance-of v0, v0, Lcom/google/android/music/medialist/AllSongsList;

    if-eqz v0, :cond_20

    .line 332
    sget-object v0, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;->MUSIC:Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;

    invoke-virtual {p1, v0}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->setNoMusicView(Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;)V

    .line 336
    :goto_b
    invoke-virtual {p0}, Lcom/google/android/music/TrackBrowserActivity;->getAppState()Lcom/google/android/music/activitymanagement/MusicState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicState;->isTopLevelState()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 337
    sget-object v0, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;->TOP_LEVEL:Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;

    invoke-virtual {p1, v0}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->setLevel(Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;)V

    .line 341
    :goto_1a
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->setTitle(Ljava/lang/CharSequence;)V

    .line 342
    return-void

    .line 334
    :cond_20
    sget-object v0, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;->NONE:Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;

    invoke-virtual {p1, v0}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->setNoMusicView(Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;)V

    goto :goto_b

    .line 339
    :cond_26
    sget-object v0, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;->NON_LEVELED:Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;

    invoke-virtual {p1, v0}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->setLevel(Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;)V

    goto :goto_1a
.end method

.method public onMenuItemSelected(Landroid/view/MenuItem;)Z
    .registers 6
    .parameter

    .prologue
    .line 2045
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_5a

    .line 2069
    const/4 v0, 0x0

    .line 2071
    :goto_8
    return v0

    .line 2048
    :sswitch_9
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

    .line 2071
    :cond_21
    :goto_21
    const/4 v0, 0x1

    goto :goto_8

    .line 2052
    :sswitch_23
    iget v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mSelectedPosition:I

    invoke-direct {p0, v0}, Lcom/google/android/music/TrackBrowserActivity;->removePlaylistItem(I)V

    goto :goto_21

    .line 2056
    :sswitch_29
    sget-object v0, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    if-eqz v0, :cond_21

    .line 2057
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->shuffleAll(Lcom/google/android/music/medialist/SongList;)V

    .line 2058
    invoke-virtual {p0}, Lcom/google/android/music/TrackBrowserActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicStateController;->startNowPlayingScreen()V

    goto :goto_21

    .line 2063
    :sswitch_3e
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    instance-of v0, v0, Lcom/google/android/music/medialist/PlaylistSongList;

    if-eqz v0, :cond_56

    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    check-cast v0, Lcom/google/android/music/medialist/PlaylistSongList;

    invoke-virtual {v0}, Lcom/google/android/music/medialist/PlaylistSongList;->getId()J

    move-result-wide v0

    .line 2065
    :goto_4c
    invoke-virtual {p0}, Lcom/google/android/music/TrackBrowserActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    invoke-virtual {v2, v3, v0, v1}, Lcom/google/android/music/activitymanagement/MusicStateController;->showAddToPlaylistDialog(Lcom/google/android/music/medialist/SongList;J)V

    goto :goto_21

    .line 2063
    :cond_56
    const-wide/16 v0, -0x1

    goto :goto_4c

    .line 2045
    nop

    :sswitch_data_5a
    .sparse-switch
        0xa -> :sswitch_29
        0xc9 -> :sswitch_3e
        0xcc -> :sswitch_9
        0x12d -> :sswitch_23
    .end sparse-switch
.end method

.method public onMusicModeChanged(Lcom/google/android/music/activitymanagement/MusicStateController;)V
    .registers 4
    .parameter "musicStateController"

    .prologue
    .line 565
    invoke-virtual {p1}, Lcom/google/android/music/activitymanagement/MusicStateController;->getMusicManager()Lcom/google/android/music/OfflineMusicManager;

    move-result-object v0

    .line 566
    .local v0, offlineMusicManager:Lcom/google/android/music/OfflineMusicManager;
    iput-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    .line 568
    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity;->mAdapter:Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;

    if-eqz v1, :cond_f

    .line 569
    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity;->mAdapter:Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;

    invoke-virtual {v1}, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->notifyDataSetChanged()V

    .line 572
    :cond_f
    invoke-direct {p0}, Lcom/google/android/music/TrackBrowserActivity;->updateContainerOfflineStatus()V

    .line 573
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 946
    invoke-super {p0}, Lcom/google/android/music/activitymanagement/MusicFragment;->onPause()V

    .line 947
    invoke-virtual {p0}, Lcom/google/android/music/TrackBrowserActivity;->getMusicUIController()Lcom/google/android/music/activitymanagement/MusicUIController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/music/activitymanagement/MusicUIController;->unregisterBottomBarChangeListener(Lcom/google/android/music/BottomBarChangeListener;)V

    .line 948
    invoke-virtual {p0}, Lcom/google/android/music/TrackBrowserActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/music/activitymanagement/MusicStateController;->unregisterMusicModeListener(Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicModeListener;)V

    .line 949
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 6
    .parameter "menu"

    .prologue
    const/4 v3, 0x0

    .line 2128
    const/16 v1, 0xa

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 2129
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_15

    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/google/android/music/medialist/SongList;->isFlagSet(I)Z

    move-result v1

    if-nez v1, :cond_15

    .line 2130
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2133
    :cond_15
    const/16 v1, 0x14

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 2134
    if-eqz v0, :cond_2a

    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/google/android/music/medialist/SongList;->isFlagSet(I)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 2135
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2138
    :cond_2a
    const/16 v1, 0x65

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 2139
    if-eqz v0, :cond_3f

    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lcom/google/android/music/medialist/SongList;->isFlagSet(I)Z

    move-result v1

    if-nez v1, :cond_3f

    .line 2140
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2142
    :cond_3f
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 921
    invoke-super {p0}, Lcom/google/android/music/activitymanagement/MusicFragment;->onResume()V

    .line 922
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    if-eqz v0, :cond_c

    .line 923
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 928
    :cond_c
    invoke-direct {p0}, Lcom/google/android/music/TrackBrowserActivity;->updateIsNowPlaying()V

    .line 931
    invoke-virtual {p0}, Lcom/google/android/music/TrackBrowserActivity;->getMusicUIController()Lcom/google/android/music/activitymanagement/MusicUIController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/music/activitymanagement/MusicUIController;->registerBottomBarChangeListener(Lcom/google/android/music/BottomBarChangeListener;)V

    .line 932
    invoke-virtual {p0}, Lcom/google/android/music/TrackBrowserActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/music/activitymanagement/MusicStateController;->registerMusicModeListener(Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicModeListener;)V

    .line 934
    invoke-virtual {p0}, Lcom/google/android/music/TrackBrowserActivity;->getAppState()Lcom/google/android/music/activitymanagement/MusicState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/music/activitymanagement/MusicState;->mInTab:Z

    if-nez v0, :cond_2a

    .line 935
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mTracker:Lcom/google/android/music/MusicEventLogger;

    invoke-virtual {v0, p0}, Lcom/google/android/music/MusicEventLogger;->trackScreenView(Lcom/google/android/music/activitymanagement/MusicFragment;)V

    .line 937
    :cond_2a
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .parameter "outcicle"

    .prologue
    .line 956
    const-string v0, "medialist"

    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 957
    const-string v0, "autoscrollTrackId"

    iget-wide v1, p0, Lcom/google/android/music/TrackBrowserActivity;->mSelectedId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 958
    const-string v0, "scrollPos"

    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 959
    invoke-super {p0, p1}, Lcom/google/android/music/activitymanagement/MusicFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 960
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 825
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    if-eqz v0, :cond_20

    .line 826
    const/4 v0, 0x0

    .line 828
    :try_start_5
    sget-object v1, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v1}, Lcom/google/android/music/IMusicPlaybackService;->getMediaList()Lcom/google/android/music/medialist/SongList;

    move-result-object v1

    .line 829
    iget-object v2, p0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    invoke-virtual {v2, v1}, Lcom/google/android/music/medialist/SongList;->equals(Ljava/lang/Object;)Z
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_10} :catch_21

    move-result v0

    .line 833
    :goto_11
    iget-boolean v1, p0, Lcom/google/android/music/TrackBrowserActivity;->mIsNowPlaying:Z

    if-eq v0, v1, :cond_20

    .line 834
    iput-boolean v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mIsNowPlaying:Z

    .line 835
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    if-eqz v0, :cond_20

    .line 836
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 841
    :cond_20
    return-void

    .line 830
    :catch_21
    move-exception v1

    .line 831
    const-string v2, "TrackBrowser"

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_11
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2
    .parameter "name"

    .prologue
    .line 846
    invoke-virtual {p0}, Lcom/google/android/music/TrackBrowserActivity;->finish()V

    .line 847
    return-void
.end method

.method public showOnMainFrame()Z
    .registers 2

    .prologue
    .line 366
    invoke-direct {p0}, Lcom/google/android/music/TrackBrowserActivity;->isOnNowPlayingScreen()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method
