.class public Lcom/google/android/music/athome/AtHomePlaybackActivity;
.super Lcom/google/android/music/activitymanagement/MusicFragment;
.source "AtHomePlaybackActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicModeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/athome/AtHomePlaybackActivity$AtHomeListAdapter;
    }
.end annotation


# static fields
.field private static final LOGV:Z

.field private static final sCursorCols:[Ljava/lang/String;

.field private static final sSubmitterCols:[Ljava/lang/String;

.field private static final sSubmitterStatsCols:[Ljava/lang/String;


# instance fields
.field private mAlbumArt:Lcom/google/android/music/AsyncAlbumArtImageView;

.field private mAlbumArtOverlay:Landroid/view/View;

.field private final mAnimationDuration:I

.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mCurrentPlaySubmitterId:J

.field private mCurrentPlaySubmitterPhotoSet:Z

.field private mCurrentQueuePosition:I

.field private mDropListener:Lcom/google/android/music/TouchInterceptor$DropListener;

.field private mErrorText:Landroid/widget/TextView;

.field private mHasEnteredPartyMode:Z

.field private mHasMultiSubmitterPhotos:Z

.field private mListAdapter:Lcom/google/android/music/athome/AtHomePlaybackActivity$AtHomeListAdapter;

.field private mListView:Lcom/google/android/music/TouchInterceptor;

.field private mMediaList:Lcom/google/android/music/athome/AtHomeSongList;

.field private mNeedToScrollToCurrent:Z

.field private mNextButton:Lcom/google/android/music/RepeatingImageButton;

.field private mPauseButton:Lcom/google/android/music/PlayPauseButton;

.field private mPlayQueueCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

.field private mPlaybackControls:Lcom/google/android/music/PlaybackControls;

.field private mPlaybackServiceConnectionToken:Lcom/google/android/music/MusicUtils$ServiceToken;

.field private mPopAlbumArt:Lcom/google/android/music/AsyncAlbumArtImageView;

.field private mPopupMenuHeader:Landroid/view/View;

.field private mPopupPrimaryLabel:Landroid/widget/TextView;

.field private mPopupSecondaryLabel:Landroid/widget/TextView;

.field private mPopupTertiaryLabel:Landroid/widget/TextView;

.field private mPrevButton:Lcom/google/android/music/RepeatingImageButton;

.field private mPrimaryLabel:Landroid/widget/TextView;

.field private mProgressBar:Lcom/google/android/music/SafePostProgressBar;

.field private mQuickContact:Landroid/widget/QuickContactBadge;

.field private mQuickContactBadgeHeight:I

.field private mQuickContactBadgeWidth:I

.field private mRemoveListener:Lcom/google/android/music/TouchInterceptor$RemoveListener;

.field private mRepeatButton:Landroid/widget/ImageView;

.field private mSecondaryLabel:Landroid/widget/TextView;

.field private mService:Lcom/google/android/music/IMusicPlaybackService;

.field private mShuffleButton:Landroid/widget/ImageView;

.field private mStatusListener:Landroid/content/BroadcastReceiver;

.field private mSubmitter:Landroid/widget/TextView;

.field private mTracker:Lcom/google/android/music/MusicEventLogger;

.field private final mUnknownAlbum:Ljava/lang/String;

.field private final mUnknownArtist:Ljava/lang/String;

.field private final mUnknownSubmitter:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 63
    const-string v0, "AtHomePlaybackActivity"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->LOGV:Z

    .line 111
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "title"

    aput-object v1, v0, v4

    const-string v1, "album"

    aput-object v1, v0, v5

    const-string v1, "album_id"

    aput-object v1, v0, v6

    const-string v1, "artist"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "submitterId"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "submitterGivenName"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "submitterFamilyName"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "submitterPictureUrl"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->sCursorCols:[Ljava/lang/String;

    .line 131
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "submitterId"

    aput-object v1, v0, v3

    const-string v1, "submitterGivenName"

    aput-object v1, v0, v4

    const-string v1, "submitterFamilyName"

    aput-object v1, v0, v5

    const-string v1, "submitterPictureUrl"

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->sSubmitterCols:[Ljava/lang/String;

    .line 142
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "hasMultiSubmitterPhotos"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->sSubmitterStatsCols:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 154
    invoke-direct {p0, p1}, Lcom/google/android/music/activitymanagement/MusicFragment;-><init>(Landroid/content/Context;)V

    .line 77
    iput-boolean v4, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mCurrentPlaySubmitterPhotoSet:Z

    .line 78
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mCurrentQueuePosition:I

    .line 79
    iput-boolean v4, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mNeedToScrollToCurrent:Z

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    .line 107
    new-instance v0, Lcom/google/android/music/athome/AtHomeSongList;

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/music/athome/AtHomeSongList;-><init>(JZI)V

    iput-object v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mMediaList:Lcom/google/android/music/athome/AtHomeSongList;

    .line 109
    iput-boolean v4, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mHasEnteredPartyMode:Z

    .line 327
    new-instance v0, Lcom/google/android/music/athome/AtHomePlaybackActivity$1;

    invoke-direct {v0, p0}, Lcom/google/android/music/athome/AtHomePlaybackActivity$1;-><init>(Lcom/google/android/music/athome/AtHomePlaybackActivity;)V

    iput-object v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mDropListener:Lcom/google/android/music/TouchInterceptor$DropListener;

    .line 334
    new-instance v0, Lcom/google/android/music/athome/AtHomePlaybackActivity$2;

    invoke-direct {v0, p0}, Lcom/google/android/music/athome/AtHomePlaybackActivity$2;-><init>(Lcom/google/android/music/athome/AtHomePlaybackActivity;)V

    iput-object v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mRemoveListener:Lcom/google/android/music/TouchInterceptor$RemoveListener;

    .line 341
    new-instance v0, Lcom/google/android/music/athome/AtHomePlaybackActivity$3;

    invoke-direct {v0, p0}, Lcom/google/android/music/athome/AtHomePlaybackActivity$3;-><init>(Lcom/google/android/music/athome/AtHomePlaybackActivity;)V

    iput-object v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mStatusListener:Landroid/content/BroadcastReceiver;

    .line 155
    iput-object p1, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mContext:Landroid/content/Context;

    .line 156
    const v0, 0x7f0d0075

    invoke-virtual {p0, v0}, Lcom/google/android/music/athome/AtHomePlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mUnknownAlbum:Ljava/lang/String;

    .line 157
    const v0, 0x7f0d0074

    invoke-virtual {p0, v0}, Lcom/google/android/music/athome/AtHomePlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mUnknownArtist:Ljava/lang/String;

    .line 158
    const v0, 0x7f0d0077

    invoke-virtual {p0, v0}, Lcom/google/android/music/athome/AtHomePlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mUnknownSubmitter:Ljava/lang/String;

    .line 159
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mAnimationDuration:I

    .line 160
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/athome/AtHomePlaybackActivity;)Lcom/google/android/music/athome/AtHomePlaybackActivity$AtHomeListAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mListAdapter:Lcom/google/android/music/athome/AtHomePlaybackActivity$AtHomeListAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/music/athome/AtHomePlaybackActivity;)Lcom/google/android/music/PlaybackControls;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mPlaybackControls:Lcom/google/android/music/PlaybackControls;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/music/athome/AtHomePlaybackActivity;Landroid/widget/QuickContactBadge;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/google/android/music/athome/AtHomePlaybackActivity;->setDefaultQuickContactPicture(Landroid/widget/QuickContactBadge;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/android/music/athome/AtHomePlaybackActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mUnknownAlbum:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/android/music/athome/AtHomePlaybackActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mUnknownArtist:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/google/android/music/athome/AtHomePlaybackActivity;)Lcom/google/android/music/IMusicPlaybackService;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/google/android/music/athome/AtHomePlaybackActivity;Landroid/content/Context;Lcom/google/android/music/athome/AtHomePlaybackActivity$AtHomeListAdapter$ViewHolder;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/athome/AtHomePlaybackActivity;->setViewHolderQuickContactPicture(Landroid/content/Context;Lcom/google/android/music/athome/AtHomePlaybackActivity$AtHomeListAdapter$ViewHolder;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/android/music/athome/AtHomePlaybackActivity;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mPrimaryLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/google/android/music/athome/AtHomePlaybackActivity;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mSecondaryLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/google/android/music/athome/AtHomePlaybackActivity;)Lcom/google/android/music/AsyncAlbumArtImageView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mAlbumArt:Lcom/google/android/music/AsyncAlbumArtImageView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/google/android/music/athome/AtHomePlaybackActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mNeedToScrollToCurrent:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/google/android/music/athome/AtHomePlaybackActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mUnknownSubmitter:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/music/athome/AtHomePlaybackActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomePlaybackActivity;->updateCurrentPlaying()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 58
    sget-object v0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->sSubmitterCols:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/google/android/music/athome/AtHomePlaybackActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/athome/AtHomePlaybackActivity;->getContactDisplayName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/google/android/music/athome/AtHomePlaybackActivity;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mCurrentPlaySubmitterId:J

    return-wide v0
.end method

.method static synthetic access$2202(Lcom/google/android/music/athome/AtHomePlaybackActivity;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-wide p1, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mCurrentPlaySubmitterId:J

    return-wide p1
.end method

.method static synthetic access$2300(Lcom/google/android/music/athome/AtHomePlaybackActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mCurrentPlaySubmitterPhotoSet:Z

    return v0
.end method

.method static synthetic access$2302(Lcom/google/android/music/athome/AtHomePlaybackActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mCurrentPlaySubmitterPhotoSet:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/google/android/music/athome/AtHomePlaybackActivity;Landroid/content/Context;Ljava/lang/String;J)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/music/athome/AtHomePlaybackActivity;->setCurrentPlayQuickContactPicture(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$2500(Lcom/google/android/music/athome/AtHomePlaybackActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomePlaybackActivity;->setDefaultCurrentPlayQuickContactPicture()V

    return-void
.end method

.method static synthetic access$2600(Lcom/google/android/music/athome/AtHomePlaybackActivity;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mSubmitter:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/music/athome/AtHomePlaybackActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomePlaybackActivity;->updateStatus()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/music/athome/AtHomePlaybackActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomePlaybackActivity;->updateSubmitterStats()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/music/athome/AtHomePlaybackActivity;)Lcom/google/android/music/TouchInterceptor;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mListView:Lcom/google/android/music/TouchInterceptor;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/music/athome/AtHomePlaybackActivity;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 58
    sget-object v0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->sSubmitterStatsCols:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/music/athome/AtHomePlaybackActivity;)Lcom/google/android/music/athome/AtHomeSongList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mMediaList:Lcom/google/android/music/athome/AtHomeSongList;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/music/athome/AtHomePlaybackActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mHasMultiSubmitterPhotos:Z

    return v0
.end method

.method static synthetic access$902(Lcom/google/android/music/athome/AtHomePlaybackActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mHasMultiSubmitterPhotos:Z

    return p1
.end method

.method private createContextMenuOnClick(Landroid/view/View;I)V
    .registers 17
    .parameter "view"
    .parameter "position"

    .prologue
    .line 310
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/music/athome/AtHomePlaybackActivity$AtHomeListAdapter$ViewHolder;

    .line 311
    .local v13, vh:Lcom/google/android/music/athome/AtHomePlaybackActivity$AtHomeListAdapter$ViewHolder;
    iget-object v12, v13, Lcom/google/android/music/athome/AtHomePlaybackActivity$AtHomeListAdapter$ViewHolder;->trackTitle:Ljava/lang/String;

    .line 312
    .local v12, title:Ljava/lang/String;
    iget-object v4, v13, Lcom/google/android/music/athome/AtHomePlaybackActivity$AtHomeListAdapter$ViewHolder;->albumName:Ljava/lang/String;

    .line 313
    .local v4, album:Ljava/lang/String;
    iget-object v3, v13, Lcom/google/android/music/athome/AtHomePlaybackActivity$AtHomeListAdapter$ViewHolder;->artistName:Ljava/lang/String;

    .line 314
    .local v3, artist:Ljava/lang/String;
    iget-wide v1, v13, Lcom/google/android/music/athome/AtHomePlaybackActivity$AtHomeListAdapter$ViewHolder;->albumId:J

    .line 316
    .local v1, albumId:J
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mPopupPrimaryLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mPopupSecondaryLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 318
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mPopupTertiaryLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    if-eqz v0, :cond_28

    .line 320
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mPopAlbumArt:Lcom/google/android/music/AsyncAlbumArtImageView;

    iget-object v5, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/music/AsyncAlbumArtImageView;->setServiceAlbumArt(JLjava/lang/String;Ljava/lang/String;Lcom/google/android/music/IMusicPlaybackService;)V

    .line 323
    :cond_28
    invoke-virtual {p0}, Lcom/google/android/music/athome/AtHomePlaybackActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicStateController;->getContextMenuManager()Lcom/google/android/music/utils/ContextMenuManager;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mContentView:Landroid/view/View;

    iget-object v8, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mMediaList:Lcom/google/android/music/athome/AtHomeSongList;

    iget-object v10, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mPlayQueueCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    iget-object v11, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mPopupMenuHeader:Landroid/view/View;

    move-object v7, p0

    move/from16 v9, p2

    invoke-virtual/range {v5 .. v11}, Lcom/google/android/music/utils/ContextMenuManager;->showAtHomePartyModeMenu(Landroid/view/View;Lcom/google/android/music/activitymanagement/MusicFragment;Lcom/google/android/music/medialist/SongList;ILcom/google/android/music/medialist/MediaList$MediaCursor;Landroid/view/View;)V

    .line 325
    return-void
.end method

.method private getContactDisplayName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "givenName"
    .parameter "familyName"

    .prologue
    .line 551
    if-eqz p1, :cond_22

    .line 552
    move-object v0, p1

    .line 554
    .local v0, displayName:Ljava/lang/String;
    if-eqz p2, :cond_21

    .line 555
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 563
    :cond_21
    :goto_21
    return-object v0

    .line 557
    .end local v0           #displayName:Ljava/lang/String;
    :cond_22
    if-eqz p2, :cond_26

    .line 558
    move-object v0, p2

    .restart local v0       #displayName:Ljava/lang/String;
    goto :goto_21

    .line 560
    .end local v0           #displayName:Ljava/lang/String;
    :cond_26
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mUnknownSubmitter:Ljava/lang/String;

    .restart local v0       #displayName:Ljava/lang/String;
    goto :goto_21
.end method

.method private setCurrentPlayQuickContactPicture(Landroid/content/Context;Ljava/lang/String;J)V
    .registers 5
    .parameter "context"
    .parameter "url"
    .parameter "submitterId"

    .prologue
    .line 665
    if-nez p2, :cond_5

    .line 666
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomePlaybackActivity;->setDefaultCurrentPlayQuickContactPicture()V

    .line 671
    :cond_5
    return-void
.end method

.method private setDefaultCurrentPlayQuickContactPicture()V
    .registers 2

    .prologue
    .line 658
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mCurrentPlaySubmitterPhotoSet:Z

    .line 659
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mQuickContact:Landroid/widget/QuickContactBadge;

    invoke-direct {p0, v0}, Lcom/google/android/music/athome/AtHomePlaybackActivity;->setDefaultQuickContactPicture(Landroid/widget/QuickContactBadge;)V

    .line 660
    return-void
.end method

.method private setDefaultQuickContactPicture(Landroid/widget/QuickContactBadge;)V
    .registers 4
    .parameter "quickContact"

    .prologue
    .line 650
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_d

    .line 651
    const v0, 0x7f0200e8

    invoke-virtual {p1, v0}, Landroid/widget/QuickContactBadge;->setImageResource(I)V

    .line 655
    :goto_c
    return-void

    .line 653
    :cond_d
    invoke-virtual {p1}, Landroid/widget/QuickContactBadge;->setImageToDefault()V

    goto :goto_c
.end method

.method private setViewHolderQuickContactPicture(Landroid/content/Context;Lcom/google/android/music/athome/AtHomePlaybackActivity$AtHomeListAdapter$ViewHolder;)V
    .registers 4
    .parameter "context"
    .parameter "vh"

    .prologue
    .line 675
    iget-object v0, p2, Lcom/google/android/music/athome/AtHomePlaybackActivity$AtHomeListAdapter$ViewHolder;->submitterPictureUrl:Ljava/lang/String;

    if-nez v0, :cond_9

    .line 676
    iget-object v0, p2, Lcom/google/android/music/athome/AtHomePlaybackActivity$AtHomeListAdapter$ViewHolder;->quick_contact:Landroid/widget/QuickContactBadge;

    invoke-direct {p0, v0}, Lcom/google/android/music/athome/AtHomePlaybackActivity;->setDefaultQuickContactPicture(Landroid/widget/QuickContactBadge;)V

    .line 678
    :cond_9
    return-void
.end method

.method private updateCurrentPlaying()Z
    .registers 11

    .prologue
    .line 567
    const/4 v4, 0x0

    .line 568
    .local v4, trackName:Ljava/lang/String;
    const/4 v3, 0x0

    .line 569
    .local v3, artistName:Ljava/lang/String;
    const-wide/16 v1, -0x1

    .line 570
    .local v1, albumId:J
    const/4 v6, 0x0

    .line 573
    .local v6, audioId:Lcom/google/android/music/dl/ContentIdentifier;
    :try_start_5
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    if-eqz v0, :cond_37

    .line 574
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v0}, Lcom/google/android/music/IMusicPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v4

    .line 575
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v0}, Lcom/google/android/music/IMusicPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v3

    .line 576
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v0}, Lcom/google/android/music/IMusicPlaybackService;->getAlbumId()J

    move-result-wide v1

    .line 577
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v0}, Lcom/google/android/music/IMusicPlaybackService;->getAudioId()Lcom/google/android/music/dl/ContentIdentifier;

    move-result-object v6

    .line 578
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mAlbumArt:Lcom/google/android/music/AsyncAlbumArtImageView;

    iget-object v5, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/music/AsyncAlbumArtImageView;->setServiceAlbumArt(JLjava/lang/String;Ljava/lang/String;Lcom/google/android/music/IMusicPlaybackService;)V

    .line 579
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v0}, Lcom/google/android/music/IMusicPlaybackService;->getQueuePosition()I

    move-result v0

    iput v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mCurrentQueuePosition:I

    .line 580
    iget-boolean v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mNeedToScrollToCurrent:Z

    if-eqz v0, :cond_37

    .line 581
    invoke-virtual {p0}, Lcom/google/android/music/athome/AtHomePlaybackActivity;->scrollToCurrentPlaying()V
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_37} :catch_48

    .line 589
    :cond_37
    :goto_37
    if-eqz v6, :cond_62

    invoke-virtual {v6}, Lcom/google/android/music/dl/ContentIdentifier;->isAtHomePartyDomain()Z

    move-result v0

    if-nez v0, :cond_62

    .line 590
    invoke-virtual {p0}, Lcom/google/android/music/athome/AtHomePlaybackActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicStateController;->goHome()V

    .line 591
    const/4 v0, 0x0

    .line 646
    .end local v3           #artistName:Ljava/lang/String;
    .end local v4           #trackName:Ljava/lang/String;
    :goto_47
    return v0

    .line 584
    .restart local v3       #artistName:Ljava/lang/String;
    .restart local v4       #trackName:Ljava/lang/String;
    :catch_48
    move-exception v7

    .line 585
    .local v7, e:Landroid/os/RemoteException;
    const-string v0, "AtHomePlaybackActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Get info from PlaybackService failed: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_37

    .line 594
    .end local v7           #e:Landroid/os/RemoteException;
    :cond_62
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mPrimaryLabel:Landroid/widget/TextView;

    invoke-static {v4}, Lcom/google/android/music/MusicUtils;->isUnknown(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6c

    iget-object v4, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mUnknownArtist:Ljava/lang/String;

    .end local v4           #trackName:Ljava/lang/String;
    :cond_6c
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 595
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mSecondaryLabel:Landroid/widget/TextView;

    invoke-static {v3}, Lcom/google/android/music/MusicUtils;->isUnknown(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_79

    iget-object v3, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mUnknownArtist:Ljava/lang/String;

    .end local v3           #artistName:Ljava/lang/String;
    :cond_79
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 597
    move-object v8, v6

    .line 598
    .local v8, fAudioId:Lcom/google/android/music/dl/ContentIdentifier;
    sget-object v0, Lcom/google/android/music/utils/async/AsyncWorkers;->sUIBackgroundWorker:Lcom/google/android/music/Worker;

    new-instance v5, Lcom/google/android/music/athome/AtHomePlaybackActivity$5;

    invoke-direct {v5, p0, v8}, Lcom/google/android/music/athome/AtHomePlaybackActivity$5;-><init>(Lcom/google/android/music/athome/AtHomePlaybackActivity;Lcom/google/android/music/dl/ContentIdentifier;)V

    invoke-static {v0, v5}, Lcom/google/android/music/utils/async/AsyncWorkers;->runAsyncWithCallback(Lcom/google/android/music/Worker;Lcom/google/android/music/utils/async/AsyncRunner;)V

    .line 646
    const/4 v0, 0x1

    goto :goto_47
.end method

.method private updateStatus()V
    .registers 12

    .prologue
    const/16 v10, 0x8

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 380
    iget-object v6, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    if-eqz v6, :cond_54

    .line 381
    const/4 v0, 0x0

    .line 383
    .local v0, buffering:Z
    :try_start_9
    iget-object v6, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v6}, Lcom/google/android/music/IMusicPlaybackService;->isPreparing()Z

    move-result v6

    if-eqz v6, :cond_55

    iget-object v6, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v6}, Lcom/google/android/music/IMusicPlaybackService;->isStreaming()Z

    move-result v6

    if-eqz v6, :cond_55

    move v0, v4

    .line 384
    :goto_1a
    iget-object v4, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v4}, Lcom/google/android/music/IMusicPlaybackService;->isInErrorState()Z

    move-result v4

    if-eqz v4, :cond_90

    .line 385
    iget-object v4, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v4}, Lcom/google/android/music/IMusicPlaybackService;->getErrorType()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/music/ErrorInfo;->createErrorInfo(I)Lcom/google/android/music/ErrorInfo;

    move-result-object v1

    .line 386
    .local v1, errorHandler:Lcom/google/android/music/ErrorInfo;
    invoke-virtual {v1}, Lcom/google/android/music/ErrorInfo;->hasInlineText()Z

    move-result v4

    if-eqz v4, :cond_57

    .line 387
    invoke-virtual {v1}, Lcom/google/android/music/ErrorInfo;->getInlineResId()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/google/android/music/athome/AtHomePlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 388
    .local v2, errorText:Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 389
    iget-object v4, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mErrorText:Landroid/widget/TextView;

    const/4 v6, 0x1

    iget v7, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mAnimationDuration:I

    int-to-long v7, v7

    invoke-static {v4, v6, v2, v7, v8}, Lcom/google/android/music/utils/AnimationUtils;->animateErrorTextAnimation(Landroid/widget/TextView;ZLjava/lang/CharSequence;J)V
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_48} :catch_76

    .line 403
    .end local v1           #errorHandler:Lcom/google/android/music/ErrorInfo;
    .end local v2           #errorText:Ljava/lang/CharSequence;
    :goto_48
    if-eqz v0, :cond_9b

    .line 404
    iget-object v4, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mAlbumArtOverlay:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 405
    iget-object v4, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mProgressBar:Lcom/google/android/music/SafePostProgressBar;

    invoke-virtual {v4, v5}, Lcom/google/android/music/SafePostProgressBar;->setVisibility(I)V

    .line 411
    .end local v0           #buffering:Z
    :cond_54
    :goto_54
    return-void

    .restart local v0       #buffering:Z
    :cond_55
    move v0, v5

    .line 383
    goto :goto_1a

    .line 392
    .restart local v1       #errorHandler:Lcom/google/android/music/ErrorInfo;
    :cond_57
    :try_start_57
    const-string v4, "AtHomePlaybackActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Missing inline text for error: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v7}, Lcom/google/android/music/IMusicPlaybackService;->getErrorType()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_75
    .catch Landroid/os/RemoteException; {:try_start_57 .. :try_end_75} :catch_76

    goto :goto_48

    .line 399
    .end local v1           #errorHandler:Lcom/google/android/music/ErrorInfo;
    :catch_76
    move-exception v3

    .line 400
    .local v3, re:Landroid/os/RemoteException;
    const-string v4, "AtHomePlaybackActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RemoteException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_48

    .line 396
    .end local v3           #re:Landroid/os/RemoteException;
    :cond_90
    :try_start_90
    iget-object v4, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mErrorText:Landroid/widget/TextView;

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget v8, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mAnimationDuration:I

    int-to-long v8, v8

    invoke-static {v4, v6, v7, v8, v9}, Lcom/google/android/music/utils/AnimationUtils;->animateErrorTextAnimation(Landroid/widget/TextView;ZLjava/lang/CharSequence;J)V
    :try_end_9a
    .catch Landroid/os/RemoteException; {:try_start_90 .. :try_end_9a} :catch_76

    goto :goto_48

    .line 407
    :cond_9b
    iget-object v4, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mAlbumArtOverlay:Landroid/view/View;

    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    .line 408
    iget-object v4, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mProgressBar:Lcom/google/android/music/SafePostProgressBar;

    invoke-virtual {v4, v10}, Lcom/google/android/music/SafePostProgressBar;->setVisibility(I)V

    goto :goto_54
.end method

.method private updateSubmitterStats()V
    .registers 3

    .prologue
    .line 354
    sget-object v0, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    new-instance v1, Lcom/google/android/music/athome/AtHomePlaybackActivity$4;

    invoke-direct {v1, p0}, Lcom/google/android/music/athome/AtHomePlaybackActivity$4;-><init>(Lcom/google/android/music/athome/AtHomePlaybackActivity;)V

    invoke-static {v0, v1}, Lcom/google/android/music/utils/async/AsyncWorkers;->runAsyncWithCallback(Lcom/google/android/music/Worker;Lcom/google/android/music/utils/async/AsyncRunner;)V

    .line 377
    return-void
.end method


# virtual methods
.method public getLoggerScreenString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 277
    const-string v0, "atHomePlayback"

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .registers 2

    .prologue
    .line 292
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 718
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_14

    .line 727
    :goto_7
    return-void

    .line 721
    :sswitch_8
    invoke-virtual {p0}, Lcom/google/android/music/athome/AtHomePlaybackActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicStateController;->goHome()V

    goto :goto_7

    .line 724
    :sswitch_10
    invoke-virtual {p0}, Lcom/google/android/music/athome/AtHomePlaybackActivity;->scrollToCurrentPlaying()V

    goto :goto_7

    .line 718
    :sswitch_data_14
    .sparse-switch
        0x7f100006 -> :sswitch_10
        0x7f10001a -> :sswitch_8
    .end sparse-switch
.end method

.method public onCreate()V
    .registers 15

    .prologue
    const v13, 0x7f100009

    const v12, 0x7f100008

    const v11, 0x7f100007

    const/4 v7, 0x0

    .line 165
    invoke-super {p0}, Lcom/google/android/music/activitymanagement/MusicFragment;->onCreate()V

    .line 167
    invoke-virtual {p0}, Lcom/google/android/music/athome/AtHomePlaybackActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicStateController;->getTracker()Lcom/google/android/music/MusicEventLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mTracker:Lcom/google/android/music/MusicEventLogger;

    .line 168
    const v0, 0x7f040007

    invoke-virtual {p0, v0}, Lcom/google/android/music/athome/AtHomePlaybackActivity;->inflateView(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mContentView:Landroid/view/View;

    .line 169
    const v0, 0x7f040008

    invoke-virtual {p0, v0}, Lcom/google/android/music/athome/AtHomePlaybackActivity;->inflateView(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mPopupMenuHeader:Landroid/view/View;

    .line 170
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mMediaList:Lcom/google/android/music/athome/AtHomeSongList;

    sget-object v1, Lcom/google/android/music/athome/AtHomePlaybackActivity;->sCursorCols:[Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/google/android/music/athome/AtHomeSongList;->getCursor(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/music/medialist/MediaList$MediaCursor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mPlayQueueCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    .line 171
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mContentView:Landroid/view/View;

    const v1, 0x7f100006

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 172
    .local v8, headerView:Landroid/view/View;
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mContentView:Landroid/view/View;

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/TouchInterceptor;

    iput-object v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mListView:Lcom/google/android/music/TouchInterceptor;

    .line 173
    new-instance v0, Lcom/google/android/music/athome/AtHomePlaybackActivity$AtHomeListAdapter;

    const v3, 0x7f040009

    iget-object v4, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mPlayQueueCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    new-array v5, v7, [Ljava/lang/String;

    new-array v6, v7, [I

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/music/athome/AtHomePlaybackActivity$AtHomeListAdapter;-><init>(Lcom/google/android/music/athome/AtHomePlaybackActivity;Lcom/google/android/music/athome/AtHomePlaybackActivity;ILcom/google/android/music/medialist/MediaList$MediaCursor;[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mListAdapter:Lcom/google/android/music/athome/AtHomePlaybackActivity$AtHomeListAdapter;

    .line 179
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mListView:Lcom/google/android/music/TouchInterceptor;

    const v1, 0x7f100019

    invoke-virtual {p0, v1}, Lcom/google/android/music/athome/AtHomePlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/music/TouchInterceptor;->setEmptyView(Landroid/view/View;)V

    .line 181
    const v0, 0x7f10001a

    invoke-virtual {p0, v0}, Lcom/google/android/music/athome/AtHomePlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 182
    .local v9, helpView:Landroid/view/View;
    new-instance v0, Lcom/google/android/music/FadingColorDrawable;

    invoke-direct {v0, p0, v9}, Lcom/google/android/music/FadingColorDrawable;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {v9, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 183
    invoke-virtual {v9, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    invoke-virtual {v8, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mListView:Lcom/google/android/music/TouchInterceptor;

    const v1, 0x7f0200a5

    invoke-virtual {v0, v1}, Lcom/google/android/music/TouchInterceptor;->setSelector(I)V

    .line 188
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mListView:Lcom/google/android/music/TouchInterceptor;

    iget-object v1, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mListAdapter:Lcom/google/android/music/athome/AtHomePlaybackActivity$AtHomeListAdapter;

    invoke-virtual {v0, v1}, Lcom/google/android/music/TouchInterceptor;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 189
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mListView:Lcom/google/android/music/TouchInterceptor;

    invoke-virtual {v0, v7}, Lcom/google/android/music/TouchInterceptor;->setCacheColorHint(I)V

    .line 190
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mListView:Lcom/google/android/music/TouchInterceptor;

    iget-object v1, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mDropListener:Lcom/google/android/music/TouchInterceptor$DropListener;

    invoke-virtual {v0, v1}, Lcom/google/android/music/TouchInterceptor;->setDropListener(Lcom/google/android/music/TouchInterceptor$DropListener;)V

    .line 191
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mListView:Lcom/google/android/music/TouchInterceptor;

    iget-object v1, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mRemoveListener:Lcom/google/android/music/TouchInterceptor$RemoveListener;

    invoke-virtual {v0, v1}, Lcom/google/android/music/TouchInterceptor;->setRemoveListener(Lcom/google/android/music/TouchInterceptor$RemoveListener;)V

    .line 192
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mListView:Lcom/google/android/music/TouchInterceptor;

    invoke-virtual {v0, p0}, Lcom/google/android/music/TouchInterceptor;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 193
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mListView:Lcom/google/android/music/TouchInterceptor;

    invoke-virtual {v0, p0}, Lcom/google/android/music/TouchInterceptor;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 195
    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/AsyncAlbumArtImageView;

    iput-object v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mAlbumArt:Lcom/google/android/music/AsyncAlbumArtImageView;

    .line 197
    const v0, 0x7f10000c

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mAlbumArtOverlay:Landroid/view/View;

    .line 198
    const v0, 0x7f10000d

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/SafePostProgressBar;

    iput-object v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mProgressBar:Lcom/google/android/music/SafePostProgressBar;

    .line 199
    invoke-virtual {v8, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mPrimaryLabel:Landroid/widget/TextView;

    .line 200
    invoke-virtual {v8, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mSecondaryLabel:Landroid/widget/TextView;

    .line 201
    const v0, 0x7f100013

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mErrorText:Landroid/widget/TextView;

    .line 203
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mPopupMenuHeader:Landroid/view/View;

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mPopupPrimaryLabel:Landroid/widget/TextView;

    .line 204
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mPopupMenuHeader:Landroid/view/View;

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mPopupSecondaryLabel:Landroid/widget/TextView;

    .line 205
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mPopupMenuHeader:Landroid/view/View;

    const v1, 0x7f10001b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mPopupTertiaryLabel:Landroid/widget/TextView;

    .line 206
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mPopupMenuHeader:Landroid/view/View;

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/AsyncAlbumArtImageView;

    iput-object v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mPopAlbumArt:Lcom/google/android/music/AsyncAlbumArtImageView;

    .line 208
    const v0, 0x7f100011

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mSubmitter:Landroid/widget/TextView;

    .line 209
    const v0, 0x7f100010

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/QuickContactBadge;

    iput-object v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mQuickContact:Landroid/widget/QuickContactBadge;

    .line 210
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 211
    .local v10, resources:Landroid/content/res/Resources;
    const v0, 0x7f09007e

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mQuickContactBadgeWidth:I

    .line 212
    const v0, 0x7f09007f

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mQuickContactBadgeHeight:I

    .line 213
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomePlaybackActivity;->setDefaultCurrentPlayQuickContactPicture()V

    .line 215
    const v0, 0x7f100065

    invoke-virtual {p0, v0}, Lcom/google/android/music/athome/AtHomePlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/RepeatingImageButton;

    iput-object v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mPrevButton:Lcom/google/android/music/RepeatingImageButton;

    .line 216
    const v0, 0x7f100064

    invoke-virtual {p0, v0}, Lcom/google/android/music/athome/AtHomePlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/PlayPauseButton;

    iput-object v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mPauseButton:Lcom/google/android/music/PlayPauseButton;

    .line 217
    const v0, 0x7f100066

    invoke-virtual {p0, v0}, Lcom/google/android/music/athome/AtHomePlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/RepeatingImageButton;

    iput-object v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mNextButton:Lcom/google/android/music/RepeatingImageButton;

    .line 218
    const v0, 0x7f1000bb

    invoke-virtual {p0, v0}, Lcom/google/android/music/athome/AtHomePlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mShuffleButton:Landroid/widget/ImageView;

    .line 219
    const v0, 0x7f1000bc

    invoke-virtual {p0, v0}, Lcom/google/android/music/athome/AtHomePlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mRepeatButton:Landroid/widget/ImageView;

    .line 220
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mShuffleButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 221
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mRepeatButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 222
    new-instance v0, Lcom/google/android/music/PlaybackControls;

    iget-object v2, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mPrevButton:Lcom/google/android/music/RepeatingImageButton;

    iget-object v3, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mPauseButton:Lcom/google/android/music/PlayPauseButton;

    iget-object v4, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mNextButton:Lcom/google/android/music/RepeatingImageButton;

    iget-object v5, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mRepeatButton:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mShuffleButton:Landroid/widget/ImageView;

    move-object v1, p0

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/music/PlaybackControls;-><init>(Landroid/content/Context;Lcom/google/android/music/RepeatingImageButton;Lcom/google/android/music/PlayPauseButton;Lcom/google/android/music/RepeatingImageButton;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/google/android/music/activitymanagement/MusicFragment;)V

    iput-object v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mPlaybackControls:Lcom/google/android/music/PlaybackControls;

    .line 225
    invoke-static {p0, p0}, Lcom/google/android/music/MusicUtils;->bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;)Lcom/google/android/music/MusicUtils$ServiceToken;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mPlaybackServiceConnectionToken:Lcom/google/android/music/MusicUtils$ServiceToken;

    .line 226
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 230
    invoke-super {p0}, Lcom/google/android/music/activitymanagement/MusicFragment;->onDestroy()V

    .line 231
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mPlaybackServiceConnectionToken:Lcom/google/android/music/MusicUtils$ServiceToken;

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->unbindFromService(Lcom/google/android/music/MusicUtils$ServiceToken;)V

    .line 232
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mPlayQueueCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    invoke-virtual {v0}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->close()V

    .line 233
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
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
    .line 298
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    :try_start_0
    iget-object v1, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    iget-object v2, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mMediaList:Lcom/google/android/music/athome/AtHomeSongList;

    const/4 v3, 0x1

    invoke-interface {v1, v2, p3, v3}, Lcom/google/android/music/IMusicPlaybackService;->open(Lcom/google/android/music/medialist/SongList;IZ)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    .line 302
    :goto_8
    return-void

    .line 299
    :catch_9
    move-exception v0

    .line 300
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "AtHomePlaybackActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onItemClick failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .registers 7
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
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 305
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-direct {p0, p2, p3}, Lcom/google/android/music/athome/AtHomePlaybackActivity;->createContextMenuOnClick(Landroid/view/View;I)V

    .line 306
    const/4 v0, 0x1

    return v0
.end method

.method public onLayoutConfig(Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;)V
    .registers 4
    .parameter "layoutConfig"

    .prologue
    const/4 v1, 0x0

    .line 282
    sget-object v0, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;->NON_LEVELED:Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;

    invoke-virtual {p1, v0}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->setLevel(Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;)V

    .line 283
    const v0, 0x7f0d018e

    invoke-virtual {p0, v0}, Lcom/google/android/music/athome/AtHomePlaybackActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->setTitle(Ljava/lang/CharSequence;)V

    .line 284
    invoke-virtual {p1, v1}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->setManageMusicBarEnabled(Z)V

    .line 285
    invoke-virtual {p1, v1}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->setNowPlayingBarEnabled(Z)V

    .line 286
    invoke-virtual {p1, v1}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->setManageMusicModeEnabled(Z)V

    .line 287
    invoke-virtual {p1, v1}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->setAllowShopTutorial(Z)V

    .line 288
    return-void
.end method

.method public onMusicModeChanged(Lcom/google/android/music/activitymanagement/MusicStateController;)V
    .registers 4
    .parameter "musicStateController"

    .prologue
    .line 700
    iget-boolean v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mHasEnteredPartyMode:Z

    if-eqz v0, :cond_11

    invoke-virtual {p1}, Lcom/google/android/music/activitymanagement/MusicStateController;->isBrowsingMode()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 701
    invoke-virtual {p0}, Lcom/google/android/music/athome/AtHomePlaybackActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicStateController;->goHome()V

    .line 703
    :cond_11
    iget-boolean v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mHasEnteredPartyMode:Z

    invoke-virtual {p0}, Lcom/google/android/music/athome/AtHomePlaybackActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/music/activitymanagement/MusicStateController;->isInPartyMode()Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mHasEnteredPartyMode:Z

    .line 704
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 237
    invoke-super {p0}, Lcom/google/android/music/activitymanagement/MusicFragment;->onPause()V

    .line 238
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mStatusListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/google/android/music/athome/AtHomePlaybackActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 239
    invoke-virtual {p0}, Lcom/google/android/music/athome/AtHomePlaybackActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/music/activitymanagement/MusicStateController;->unregisterMusicModeListener(Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicModeListener;)V

    .line 240
    return-void
.end method

.method public onResume()V
    .registers 5

    .prologue
    .line 244
    invoke-super {p0}, Lcom/google/android/music/activitymanagement/MusicFragment;->onResume()V

    .line 246
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 247
    .local v0, f:Landroid/content/IntentFilter;
    const-string v1, "com.android.music.playstatechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 248
    const-string v1, "com.android.music.metachanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 249
    const-string v1, "com.android.music.asyncopencomplete"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 250
    const-string v1, "com.android.music.asyncopenstart"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 251
    const-string v1, "com.android.music.playbackfailed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 252
    const-string v1, "com.google.android.music.shufflemodechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 253
    const-string v1, "com.google.android.music.repeatmodechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 254
    iget-object v1, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mStatusListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/music/athome/AtHomePlaybackActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 258
    iget-object v1, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mMediaList:Lcom/google/android/music/athome/AtHomeSongList;

    sget-object v2, Lcom/google/android/music/athome/AtHomePlaybackActivity;->sCursorCols:[Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v2, v3}, Lcom/google/android/music/athome/AtHomeSongList;->getCursor(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/music/medialist/MediaList$MediaCursor;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mPlayQueueCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    .line 259
    iget-object v1, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mListAdapter:Lcom/google/android/music/athome/AtHomePlaybackActivity$AtHomeListAdapter;

    iget-object v2, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mPlayQueueCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    invoke-virtual {v1, v2}, Lcom/google/android/music/athome/AtHomePlaybackActivity$AtHomeListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 260
    iget-object v1, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mListView:Lcom/google/android/music/TouchInterceptor;

    iget-object v2, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mListAdapter:Lcom/google/android/music/athome/AtHomePlaybackActivity$AtHomeListAdapter;

    invoke-virtual {v1, v2}, Lcom/google/android/music/TouchInterceptor;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 263
    iget-object v1, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mPlaybackControls:Lcom/google/android/music/PlaybackControls;

    invoke-virtual {v1}, Lcom/google/android/music/PlaybackControls;->refreshButtonImages()V

    .line 264
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomePlaybackActivity;->updateStatus()V

    .line 265
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomePlaybackActivity;->updateSubmitterStats()V

    .line 266
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomePlaybackActivity;->updateCurrentPlaying()Z

    move-result v1

    if-eqz v1, :cond_6b

    .line 269
    invoke-virtual {p0}, Lcom/google/android/music/athome/AtHomePlaybackActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/android/music/activitymanagement/MusicStateController;->registerMusicModeListener(Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicModeListener;)V

    .line 270
    invoke-virtual {p0}, Lcom/google/android/music/athome/AtHomePlaybackActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/music/activitymanagement/MusicStateController;->isInPartyMode()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mHasEnteredPartyMode:Z

    .line 272
    :cond_6b
    invoke-virtual {p0}, Lcom/google/android/music/athome/AtHomePlaybackActivity;->scrollToCurrentPlaying()V

    .line 273
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4
    .parameter "name"
    .parameter "service"

    .prologue
    .line 681
    invoke-static {p2}, Lcom/google/android/music/IMusicPlaybackService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/music/IMusicPlaybackService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    .line 682
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mPlaybackControls:Lcom/google/android/music/PlaybackControls;

    invoke-virtual {v0}, Lcom/google/android/music/PlaybackControls;->refreshButtonImages()V

    .line 683
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomePlaybackActivity;->updateStatus()V

    .line 684
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomePlaybackActivity;->updateSubmitterStats()V

    .line 685
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomePlaybackActivity;->updateCurrentPlaying()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 686
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mListView:Lcom/google/android/music/TouchInterceptor;

    invoke-virtual {v0}, Lcom/google/android/music/TouchInterceptor;->invalidateViews()V

    .line 688
    :cond_1c
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5
    .parameter "name"

    .prologue
    .line 691
    sget-boolean v0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->LOGV:Z

    if-eqz v0, :cond_1c

    .line 692
    const-string v0, "AtHomePlaybackActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceDisconnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    :cond_1c
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    .line 695
    return-void
.end method

.method public scrollToCurrentPlaying()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 707
    iget v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mCurrentQueuePosition:I

    .line 708
    .local v0, scrollTo:I
    iget-object v1, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mListView:Lcom/google/android/music/TouchInterceptor;

    invoke-virtual {v1}, Lcom/google/android/music/TouchInterceptor;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_16

    const/4 v1, -0x1

    if-eq v0, v1, :cond_16

    .line 710
    iget-object v1, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mListView:Lcom/google/android/music/TouchInterceptor;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/music/TouchInterceptor;->setSelectionFromTop(II)V

    .line 711
    iput-boolean v2, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mNeedToScrollToCurrent:Z

    .line 715
    :goto_15
    return-void

    .line 713
    :cond_16
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity;->mNeedToScrollToCurrent:Z

    goto :goto_15
.end method
