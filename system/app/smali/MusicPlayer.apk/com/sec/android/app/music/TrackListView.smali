.class public Lcom/sec/android/app/music/TrackListView;
.super Lcom/sec/android/app/music/widget/CommonMusicListView;
.source "TrackListView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/sec/android/app/music/widget/SweepableListView$OnItemDragListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/music/TrackListView$TrackListAdapter;,
        Lcom/sec/android/app/music/TrackListView$ListItemInfo;
    }
.end annotation


# static fields
.field private static final CLASSNAME:Ljava/lang/String;

.field private static sSavedAlbumIndex:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAdapter:Lcom/sec/android/app/music/TrackListView$TrackListAdapter;

.field private mAlbumIdIdx:I

.field private mArtistIdx:I

.field private mAudioIdIdx:I

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mDrmManager:Lcom/sec/android/app/music/common/manager/MusicDrmManager;

.field private mDurationIdx:I

.field private mEnableQuery:Z

.field protected mHandler:Landroid/os/Handler;

.field private mIndexColumnString:Ljava/lang/String;

.field private mIndexIdx:I

.field private mIsNowPlayingList:Z

.field private mIsOneLineLayout:Z

.field private mIsReorderMode:Z

.field private mIsSelectMode:Z

.field private mIsSelectedAll:Z

.field private mIsShowCountOfSongs:Z

.field private mKeyWord:Ljava/lang/String;

.field private mMusicPlayerDrmToast:Landroid/widget/Toast;

.field protected mNowPlayingProgressBar:Landroid/widget/ProgressBar;

.field protected mNowplayingProgressUpdateHandler:Landroid/os/Handler;

.field mProgress:Landroid/app/ProgressDialog;

.field private mQueryArgs:Lcom/sec/android/app/music/MusicUtils$QueryArgs;

.field private mSoftButton:Landroid/widget/Button;

.field private mTabId:I

.field protected mThumbnailButton:Landroid/widget/ImageView;

.field private mTitleIdx:I

.field private mTrackListCursor:Landroid/database/Cursor;

.field private mTrackListCursorCount:I

.field private mWmDrmAcquistionCnt:I

.field private mWmDrmPosition:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 68
    const-class v0, Lcom/sec/android/app/music/TrackListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/music/TrackListView;->CLASSNAME:Ljava/lang/String;

    .line 314
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/app/music/TrackListView;->sSavedAlbumIndex:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;ZZ)V
    .registers 9
    .parameter "context"
    .parameter "tabFrom"
    .parameter "keyWord"
    .parameter "isSelectMode"
    .parameter "isReorderMode"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 146
    invoke-direct {p0, p1}, Lcom/sec/android/app/music/widget/CommonMusicListView;-><init>(Landroid/content/Context;)V

    .line 100
    iput-boolean v0, p0, Lcom/sec/android/app/music/TrackListView;->mIsOneLineLayout:Z

    .line 102
    iput-boolean v1, p0, Lcom/sec/android/app/music/TrackListView;->mIsShowCountOfSongs:Z

    .line 108
    iput-boolean v0, p0, Lcom/sec/android/app/music/TrackListView;->mIsReorderMode:Z

    .line 110
    iput-boolean v0, p0, Lcom/sec/android/app/music/TrackListView;->mIsSelectMode:Z

    .line 112
    iput-boolean v0, p0, Lcom/sec/android/app/music/TrackListView;->mIsSelectedAll:Z

    .line 114
    iput-boolean v0, p0, Lcom/sec/android/app/music/TrackListView;->mIsNowPlayingList:Z

    .line 119
    iput-boolean v1, p0, Lcom/sec/android/app/music/TrackListView;->mEnableQuery:Z

    .line 121
    iput-object v2, p0, Lcom/sec/android/app/music/TrackListView;->mMusicPlayerDrmToast:Landroid/widget/Toast;

    .line 123
    iput v0, p0, Lcom/sec/android/app/music/TrackListView;->mWmDrmAcquistionCnt:I

    .line 125
    iput v0, p0, Lcom/sec/android/app/music/TrackListView;->mWmDrmPosition:I

    .line 127
    iput-object v2, p0, Lcom/sec/android/app/music/TrackListView;->mProgress:Landroid/app/ProgressDialog;

    .line 899
    new-instance v0, Lcom/sec/android/app/music/TrackListView$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/TrackListView$2;-><init>(Lcom/sec/android/app/music/TrackListView;)V

    iput-object v0, p0, Lcom/sec/android/app/music/TrackListView;->mHandler:Landroid/os/Handler;

    .line 949
    new-instance v0, Lcom/sec/android/app/music/TrackListView$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/TrackListView$3;-><init>(Lcom/sec/android/app/music/TrackListView;)V

    iput-object v0, p0, Lcom/sec/android/app/music/TrackListView;->mNowplayingProgressUpdateHandler:Landroid/os/Handler;

    .line 147
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/app/music/TrackListView;->initListView(Landroid/content/Context;ILjava/lang/String;ZZ)V

    .line 148
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;ZZZ)V
    .registers 10
    .parameter "context"
    .parameter "tabFrom"
    .parameter "keyWord"
    .parameter "isSelectMode"
    .parameter "isReorderMode"
    .parameter "isNowPlayingList"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 152
    invoke-direct {p0, p1}, Lcom/sec/android/app/music/widget/CommonMusicListView;-><init>(Landroid/content/Context;)V

    .line 100
    iput-boolean v0, p0, Lcom/sec/android/app/music/TrackListView;->mIsOneLineLayout:Z

    .line 102
    iput-boolean v1, p0, Lcom/sec/android/app/music/TrackListView;->mIsShowCountOfSongs:Z

    .line 108
    iput-boolean v0, p0, Lcom/sec/android/app/music/TrackListView;->mIsReorderMode:Z

    .line 110
    iput-boolean v0, p0, Lcom/sec/android/app/music/TrackListView;->mIsSelectMode:Z

    .line 112
    iput-boolean v0, p0, Lcom/sec/android/app/music/TrackListView;->mIsSelectedAll:Z

    .line 114
    iput-boolean v0, p0, Lcom/sec/android/app/music/TrackListView;->mIsNowPlayingList:Z

    .line 119
    iput-boolean v1, p0, Lcom/sec/android/app/music/TrackListView;->mEnableQuery:Z

    .line 121
    iput-object v2, p0, Lcom/sec/android/app/music/TrackListView;->mMusicPlayerDrmToast:Landroid/widget/Toast;

    .line 123
    iput v0, p0, Lcom/sec/android/app/music/TrackListView;->mWmDrmAcquistionCnt:I

    .line 125
    iput v0, p0, Lcom/sec/android/app/music/TrackListView;->mWmDrmPosition:I

    .line 127
    iput-object v2, p0, Lcom/sec/android/app/music/TrackListView;->mProgress:Landroid/app/ProgressDialog;

    .line 899
    new-instance v0, Lcom/sec/android/app/music/TrackListView$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/TrackListView$2;-><init>(Lcom/sec/android/app/music/TrackListView;)V

    iput-object v0, p0, Lcom/sec/android/app/music/TrackListView;->mHandler:Landroid/os/Handler;

    .line 949
    new-instance v0, Lcom/sec/android/app/music/TrackListView$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/TrackListView$3;-><init>(Lcom/sec/android/app/music/TrackListView;)V

    iput-object v0, p0, Lcom/sec/android/app/music/TrackListView;->mNowplayingProgressUpdateHandler:Landroid/os/Handler;

    .line 153
    iput-boolean p6, p0, Lcom/sec/android/app/music/TrackListView;->mIsNowPlayingList:Z

    .line 154
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/app/music/TrackListView;->initListView(Landroid/content/Context;ILjava/lang/String;ZZ)V

    .line 156
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 7
    .parameter "context"
    .parameter "isSelectMode"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 130
    invoke-direct {p0, p1}, Lcom/sec/android/app/music/widget/CommonMusicListView;-><init>(Landroid/content/Context;)V

    .line 100
    iput-boolean v1, p0, Lcom/sec/android/app/music/TrackListView;->mIsOneLineLayout:Z

    .line 102
    iput-boolean v2, p0, Lcom/sec/android/app/music/TrackListView;->mIsShowCountOfSongs:Z

    .line 108
    iput-boolean v1, p0, Lcom/sec/android/app/music/TrackListView;->mIsReorderMode:Z

    .line 110
    iput-boolean v1, p0, Lcom/sec/android/app/music/TrackListView;->mIsSelectMode:Z

    .line 112
    iput-boolean v1, p0, Lcom/sec/android/app/music/TrackListView;->mIsSelectedAll:Z

    .line 114
    iput-boolean v1, p0, Lcom/sec/android/app/music/TrackListView;->mIsNowPlayingList:Z

    .line 119
    iput-boolean v2, p0, Lcom/sec/android/app/music/TrackListView;->mEnableQuery:Z

    .line 121
    iput-object v3, p0, Lcom/sec/android/app/music/TrackListView;->mMusicPlayerDrmToast:Landroid/widget/Toast;

    .line 123
    iput v1, p0, Lcom/sec/android/app/music/TrackListView;->mWmDrmAcquistionCnt:I

    .line 125
    iput v1, p0, Lcom/sec/android/app/music/TrackListView;->mWmDrmPosition:I

    .line 127
    iput-object v3, p0, Lcom/sec/android/app/music/TrackListView;->mProgress:Landroid/app/ProgressDialog;

    .line 899
    new-instance v0, Lcom/sec/android/app/music/TrackListView$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/TrackListView$2;-><init>(Lcom/sec/android/app/music/TrackListView;)V

    iput-object v0, p0, Lcom/sec/android/app/music/TrackListView;->mHandler:Landroid/os/Handler;

    .line 949
    new-instance v0, Lcom/sec/android/app/music/TrackListView$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/TrackListView$3;-><init>(Lcom/sec/android/app/music/TrackListView;)V

    iput-object v0, p0, Lcom/sec/android/app/music/TrackListView;->mNowplayingProgressUpdateHandler:Landroid/os/Handler;

    .line 131
    iput-boolean p2, p0, Lcom/sec/android/app/music/TrackListView;->mIsSelectMode:Z

    .line 132
    iput-boolean v1, p0, Lcom/sec/android/app/music/TrackListView;->mIsReorderMode:Z

    .line 133
    invoke-static {v1, v3}, Lcom/sec/android/app/music/MusicUtils;->getTrackListArgsForQuery(ILjava/lang/String;)Lcom/sec/android/app/music/MusicUtils$QueryArgs;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/music/TrackListView;->mQueryArgs:Lcom/sec/android/app/music/MusicUtils$QueryArgs;

    .line 134
    invoke-direct {p0, p1, v2}, Lcom/sec/android/app/music/TrackListView;->setTrackAdapter(Landroid/content/Context;Z)V

    .line 135
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 66
    sget-object v0, Lcom/sec/android/app/music/TrackListView;->CLASSNAME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/music/TrackListView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Lcom/sec/android/app/music/TrackListView;->mTabId:I

    return v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/music/TrackListView;)Landroid/database/Cursor;
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/app/music/TrackListView;->mTrackListCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/sec/android/app/music/TrackListView;Landroid/database/Cursor;)Landroid/database/Cursor;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/sec/android/app/music/TrackListView;->mTrackListCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/sec/android/app/music/TrackListView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Lcom/sec/android/app/music/TrackListView;->mTrackListCursorCount:I

    return v0
.end method

.method static synthetic access$1102(Lcom/sec/android/app/music/TrackListView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput p1, p0, Lcom/sec/android/app/music/TrackListView;->mTrackListCursorCount:I

    return p1
.end method

.method static synthetic access$1200(Lcom/sec/android/app/music/TrackListView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/sec/android/app/music/TrackListView;->mIsShowCountOfSongs:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/sec/android/app/music/TrackListView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/sec/android/app/music/TrackListView;->mIsSelectMode:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/sec/android/app/music/TrackListView;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/app/music/TrackListView;->mSoftButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/android/app/music/TrackListView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/sec/android/app/music/TrackListView;->mIsOneLineLayout:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/sec/android/app/music/TrackListView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/sec/android/app/music/TrackListView;->mIsReorderMode:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/sec/android/app/music/TrackListView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Lcom/sec/android/app/music/TrackListView;->mTitleIdx:I

    return v0
.end method

.method static synthetic access$1800(Lcom/sec/android/app/music/TrackListView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Lcom/sec/android/app/music/TrackListView;->mDurationIdx:I

    return v0
.end method

.method static synthetic access$1900(Lcom/sec/android/app/music/TrackListView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Lcom/sec/android/app/music/TrackListView;->mAlbumIdIdx:I

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/music/TrackListView;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/app/music/TrackListView;->mKeyWord:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000()Ljava/util/HashMap;
    .registers 1

    .prologue
    .line 66
    sget-object v0, Lcom/sec/android/app/music/TrackListView;->sSavedAlbumIndex:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/sec/android/app/music/TrackListView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Lcom/sec/android/app/music/TrackListView;->mArtistIdx:I

    return v0
.end method

.method static synthetic access$2200(Lcom/sec/android/app/music/TrackListView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Lcom/sec/android/app/music/TrackListView;->mAudioIdIdx:I

    return v0
.end method

.method static synthetic access$2300(Lcom/sec/android/app/music/TrackListView;J)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/music/TrackListView;->isDrmFile(J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/sec/android/app/music/TrackListView;II)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/music/TrackListView;->isValidDrm(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/music/TrackListView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Lcom/sec/android/app/music/TrackListView;->mWmDrmAcquistionCnt:I

    return v0
.end method

.method static synthetic access$302(Lcom/sec/android/app/music/TrackListView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput p1, p0, Lcom/sec/android/app/music/TrackListView;->mWmDrmAcquistionCnt:I

    return p1
.end method

.method static synthetic access$400(Lcom/sec/android/app/music/TrackListView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Lcom/sec/android/app/music/TrackListView;->mWmDrmPosition:I

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/music/TrackListView;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/sec/android/app/music/TrackListView;->startMusicActivity(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/app/music/TrackListView;)Landroid/widget/Toast;
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/app/music/TrackListView;->mMusicPlayerDrmToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$602(Lcom/sec/android/app/music/TrackListView;Landroid/widget/Toast;)Landroid/widget/Toast;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/sec/android/app/music/TrackListView;->mMusicPlayerDrmToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$700(Lcom/sec/android/app/music/TrackListView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/app/music/TrackListView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/music/TrackListView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/app/music/TrackListView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/music/TrackListView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/sec/android/app/music/TrackListView;->updateNowPlayingProgressBar()V

    return-void
.end method

.method private getColumnIndices(Landroid/database/Cursor;)V
    .registers 7
    .parameter "c"

    .prologue
    .line 446
    if-eqz p1, :cond_d2

    .line 450
    iget v2, p0, Lcom/sec/android/app/music/TrackListView;->mTabId:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_dd

    .line 451
    iget-object v2, p0, Lcom/sec/android/app/music/TrackListView;->mKeyWord:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 452
    .local v0, id:J
    const-wide/16 v2, -0xe

    cmp-long v2, v0, v2

    if-eqz v2, :cond_23

    const-wide/16 v2, -0xd

    cmp-long v2, v0, v2

    if-eqz v2, :cond_23

    const-wide/16 v2, -0xc

    cmp-long v2, v0, v2

    if-nez v2, :cond_d3

    .line 455
    :cond_23
    const-string v2, "_id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/music/TrackListView;->mAudioIdIdx:I

    .line 462
    .end local v0           #id:J
    :goto_2b
    const-string v2, "album_id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/music/TrackListView;->mAlbumIdIdx:I

    .line 463
    iget v2, p0, Lcom/sec/android/app/music/TrackListView;->mTabId:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_e7

    .line 464
    const-string v2, "_display_name"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/music/TrackListView;->mTitleIdx:I

    .line 468
    :goto_40
    const-string v2, "artist"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/music/TrackListView;->mArtistIdx:I

    .line 469
    iget-boolean v2, p0, Lcom/sec/android/app/music/TrackListView;->mIsOneLineLayout:Z

    if-eqz v2, :cond_54

    .line 470
    const-string v2, "duration"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/music/TrackListView;->mDurationIdx:I

    .line 472
    :cond_54
    iget-object v2, p0, Lcom/sec/android/app/music/TrackListView;->mIndexColumnString:Ljava/lang/String;

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/music/TrackListView;->mIndexIdx:I

    .line 475
    sget-object v2, Lcom/sec/android/app/music/TrackListView;->CLASSNAME:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getColumnIndices mTabId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/music/TrackListView;->mTabId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mKeyWord : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/music/TrackListView;->mKeyWord:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mAudioIdIdx : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/music/TrackListView;->mAudioIdIdx:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n   mAlbumIdIdx : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/music/TrackListView;->mAlbumIdIdx:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n     mTitleIdx : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/music/TrackListView;->mTitleIdx:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n   mArtistIdx : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/music/TrackListView;->mArtistIdx:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n   mDurationIdx : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/music/TrackListView;->mDurationIdx:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    iget v2, p0, Lcom/sec/android/app/music/TrackListView;->mIndexIdx:I

    invoke-virtual {p0}, Lcom/sec/android/app/music/TrackListView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090099

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, v2, v3}, Lcom/sec/android/app/music/TrackListView;->setIndexer(Landroid/database/Cursor;ILjava/lang/String;)V

    .line 483
    :cond_d2
    return-void

    .line 457
    .restart local v0       #id:J
    :cond_d3
    const-string v2, "audio_id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/music/TrackListView;->mAudioIdIdx:I

    goto/16 :goto_2b

    .line 460
    .end local v0           #id:J
    :cond_dd
    const-string v2, "_id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/music/TrackListView;->mAudioIdIdx:I

    goto/16 :goto_2b

    .line 466
    :cond_e7
    const-string v2, "title"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/music/TrackListView;->mTitleIdx:I

    goto/16 :goto_40
.end method

.method private getCursor(Lcom/sec/android/app/music/widget/SimpleQueryCursorAdapter$TrackQueryHandler;Lcom/sec/android/app/music/MusicUtils$QueryArgs;Z)Landroid/database/Cursor;
    .registers 11
    .parameter "queryHandler"
    .parameter "args"
    .parameter "isAsync"

    .prologue
    .line 487
    sget-object v0, Lcom/sec/android/app/music/TrackListView;->CLASSNAME:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCursor mTabId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/music/TrackListView;->mTabId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mKeyWord : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/music/TrackListView;->mKeyWord:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isAsync : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    iget-object v1, p2, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->uri:Landroid/net/Uri;

    iget-object v2, p2, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->projection:[Ljava/lang/String;

    iget-object v3, p2, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->selection:Ljava/lang/String;

    iget-object v4, p2, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->selectionArgs:[Ljava/lang/String;

    iget-object v5, p2, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->orderBy:Ljava/lang/String;

    move-object v0, p1

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/music/widget/SimpleQueryCursorAdapter$TrackQueryHandler;->doQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private initListView(Landroid/content/Context;ILjava/lang/String;ZZ)V
    .registers 8
    .parameter "context"
    .parameter "tabFrom"
    .parameter "keyWord"
    .parameter "isSelectMode"
    .parameter "isReorderMode"

    .prologue
    .line 161
    iput-boolean p4, p0, Lcom/sec/android/app/music/TrackListView;->mIsSelectMode:Z

    .line 162
    if-eqz p5, :cond_7

    .line 163
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/music/TrackListView;->mIsShowCountOfSongs:Z

    .line 165
    :cond_7
    iput-boolean p5, p0, Lcom/sec/android/app/music/TrackListView;->mIsReorderMode:Z

    .line 166
    iput p2, p0, Lcom/sec/android/app/music/TrackListView;->mTabId:I

    .line 167
    iput-object p3, p0, Lcom/sec/android/app/music/TrackListView;->mKeyWord:Ljava/lang/String;

    .line 170
    invoke-static {p2, p3}, Lcom/sec/android/app/music/MusicUtils;->getTrackListArgsForQuery(ILjava/lang/String;)Lcom/sec/android/app/music/MusicUtils$QueryArgs;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/music/TrackListView;->mQueryArgs:Lcom/sec/android/app/music/MusicUtils$QueryArgs;

    .line 172
    const/4 v0, 0x1

    .line 173
    .local v0, enableQuery:Z
    const-string v1, ""

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 174
    const/4 v0, 0x0

    .line 176
    :cond_1d
    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/music/TrackListView;->setTrackAdapter(Landroid/content/Context;Z)V

    .line 177
    return-void
.end method

.method private isDrmFile(J)Z
    .registers 9
    .parameter "audioId"

    .prologue
    .line 798
    sget-object v3, Lcom/sec/android/app/music/TrackListView;->CLASSNAME:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isDrmFile audio id : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    const/4 v1, 0x0

    .line 802
    .local v1, isDrmFile:Z
    iget-object v3, p0, Lcom/sec/android/app/music/TrackListView;->mDrmManager:Lcom/sec/android/app/music/common/manager/MusicDrmManager;

    if-nez v3, :cond_28

    .line 803
    new-instance v3, Lcom/sec/android/app/music/common/manager/MusicDrmManager;

    invoke-virtual {p0}, Lcom/sec/android/app/music/TrackListView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/sec/android/app/music/common/manager/MusicDrmManager;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/sec/android/app/music/TrackListView;->mDrmManager:Lcom/sec/android/app/music/common/manager/MusicDrmManager;

    .line 805
    :cond_28
    invoke-virtual {p0}, Lcom/sec/android/app/music/TrackListView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/android/app/music/MusicUtils;->getFilePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 810
    .local v2, path:Ljava/lang/String;
    :try_start_3a
    iget-object v3, p0, Lcom/sec/android/app/music/TrackListView;->mDrmManager:Lcom/sec/android/app/music/common/manager/MusicDrmManager;

    invoke-virtual {v3, v2}, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->isDrmFile(Ljava/lang/String;)Z
    :try_end_3f
    .catch Ljava/io/FileNotFoundException; {:try_start_3a .. :try_end_3f} :catch_41

    move-result v1

    .line 816
    :goto_40
    return v1

    .line 811
    :catch_41
    move-exception v0

    .line 812
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 813
    invoke-virtual {p0}, Lcom/sec/android/app/music/TrackListView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f09004d

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_40
.end method

.method private isValidDrm(II)Z
    .registers 14
    .parameter
    .parameter

    .prologue
    const v10, 0x7f0900db

    const/4 v9, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 826
    .line 827
    new-array v2, v9, [I

    .line 828
    new-array v3, v9, [Lcom/sec/android/app/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;

    .line 830
    iget-object v4, p0, Lcom/sec/android/app/music/TrackListView;->mDrmManager:Lcom/sec/android/app/music/common/manager/MusicDrmManager;

    invoke-virtual {v4}, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->isValidFile()Z

    move-result v4

    .line 831
    iget-object v5, p0, Lcom/sec/android/app/music/TrackListView;->mDrmManager:Lcom/sec/android/app/music/common/manager/MusicDrmManager;

    invoke-virtual {v5}, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->getDrmType()I

    move-result v5

    .line 834
    sget-object v6, Lcom/sec/android/app/music/TrackListView;->CLASSNAME:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isValidDrm() drmType = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    sget-object v6, Lcom/sec/android/app/music/TrackListView;->CLASSNAME:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isValidDrm() misValidFile = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    if-nez v4, :cond_d5

    if-ne v5, v9, :cond_d5

    .line 838
    iget-object v2, p0, Lcom/sec/android/app/music/TrackListView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/app/music/MusicUtils;->checkIsNetworkConnected(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_84

    .line 839
    iget-object v2, p0, Lcom/sec/android/app/music/TrackListView;->mProgress:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_66

    iget-object v2, p0, Lcom/sec/android/app/music/TrackListView;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_66

    .line 840
    iget-object v2, p0, Lcom/sec/android/app/music/TrackListView;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 841
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/app/music/TrackListView;->mProgress:Landroid/app/ProgressDialog;

    .line 844
    :cond_66
    iget-object v2, p0, Lcom/sec/android/app/music/TrackListView;->mMusicPlayerDrmToast:Landroid/widget/Toast;

    if-eqz v2, :cond_75

    .line 845
    iget-object v1, p0, Lcom/sec/android/app/music/TrackListView;->mMusicPlayerDrmToast:Landroid/widget/Toast;

    invoke-virtual {v1, v10}, Landroid/widget/Toast;->setText(I)V

    .line 851
    :goto_6f
    iget-object v1, p0, Lcom/sec/android/app/music/TrackListView;->mMusicPlayerDrmToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 896
    :cond_74
    :goto_74
    return v0

    .line 847
    :cond_75
    iget-object v2, p0, Lcom/sec/android/app/music/TrackListView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/android/app/music/TrackListView;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/music/TrackListView;->mMusicPlayerDrmToast:Landroid/widget/Toast;

    goto :goto_6f

    .line 853
    :cond_84
    iget v2, p0, Lcom/sec/android/app/music/TrackListView;->mWmDrmAcquistionCnt:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sec/android/app/music/TrackListView;->mWmDrmAcquistionCnt:I

    .line 854
    iput p1, p0, Lcom/sec/android/app/music/TrackListView;->mWmDrmPosition:I

    .line 855
    iget-object v2, p0, Lcom/sec/android/app/music/TrackListView;->mDrmManager:Lcom/sec/android/app/music/common/manager/MusicDrmManager;

    iget-object v2, v2, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->mFilePath:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->getDrmMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 856
    new-instance v3, Landroid/drm/DrmInfoRequest;

    const/4 v4, 0x3

    invoke-direct {v3, v4, v2}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 858
    const-string v2, "drm_path"

    iget-object v4, p0, Lcom/sec/android/app/music/TrackListView;->mDrmManager:Lcom/sec/android/app/music/common/manager/MusicDrmManager;

    iget-object v4, v4, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->mFilePath:Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 860
    iget-object v2, p0, Lcom/sec/android/app/music/TrackListView;->mDrmManager:Lcom/sec/android/app/music/common/manager/MusicDrmManager;

    iget-object v4, p0, Lcom/sec/android/app/music/TrackListView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->acquireRights(Landroid/drm/DrmInfoRequest;Landroid/os/Handler;)I

    .line 863
    iget-object v2, p0, Lcom/sec/android/app/music/TrackListView;->mProgress:Landroid/app/ProgressDialog;

    if-nez v2, :cond_74

    .line 864
    new-instance v2, Landroid/app/ProgressDialog;

    iget-object v3, p0, Lcom/sec/android/app/music/TrackListView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/app/music/TrackListView;->mProgress:Landroid/app/ProgressDialog;

    .line 865
    iget-object v2, p0, Lcom/sec/android/app/music/TrackListView;->mProgress:Landroid/app/ProgressDialog;

    iget-object v3, p0, Lcom/sec/android/app/music/TrackListView;->mContext:Landroid/content/Context;

    const v4, 0x7f0900df

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 866
    iget-object v2, p0, Lcom/sec/android/app/music/TrackListView;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 867
    iget-object v1, p0, Lcom/sec/android/app/music/TrackListView;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 869
    iget-object v1, p0, Lcom/sec/android/app/music/TrackListView;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    goto :goto_74

    .line 875
    :cond_d5
    iget-object v4, p0, Lcom/sec/android/app/music/TrackListView;->mDrmManager:Lcom/sec/android/app/music/common/manager/MusicDrmManager;

    invoke-virtual {v4, v1, v2, v3}, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->getDrmPopup(Z[I[Lcom/sec/android/app/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;)I

    move-result v3

    .line 876
    if-eqz v3, :cond_11a

    const/16 v4, 0x16

    if-eq v3, v4, :cond_11a

    .line 879
    new-instance v4, Lcom/sec/android/app/music/common/util/DrmServicePopup$DrmPopupData;

    invoke-direct {v4}, Lcom/sec/android/app/music/common/util/DrmServicePopup$DrmPopupData;-><init>()V

    .line 880
    iput-object v2, v4, Lcom/sec/android/app/music/common/util/DrmServicePopup$DrmPopupData;->popupStrings:[I

    .line 881
    iget-object v2, p0, Lcom/sec/android/app/music/TrackListView;->mDrmManager:Lcom/sec/android/app/music/common/manager/MusicDrmManager;

    invoke-virtual {v2}, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->getRemainedCounts()I

    move-result v2

    iput v2, v4, Lcom/sec/android/app/music/common/util/DrmServicePopup$DrmPopupData;->remainCount:I

    .line 882
    iput v3, v4, Lcom/sec/android/app/music/common/util/DrmServicePopup$DrmPopupData;->popupType:I

    .line 883
    iget-object v2, p0, Lcom/sec/android/app/music/TrackListView;->mDrmManager:Lcom/sec/android/app/music/common/manager/MusicDrmManager;

    iget-object v2, v2, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->mFilePath:Ljava/lang/String;

    iput-object v2, v4, Lcom/sec/android/app/music/common/util/DrmServicePopup$DrmPopupData;->popupFilePath:Ljava/lang/String;

    .line 884
    iput p2, v4, Lcom/sec/android/app/music/common/util/DrmServicePopup$DrmPopupData;->popupFrom:I

    .line 888
    iget-object v2, p0, Lcom/sec/android/app/music/TrackListView;->mTrackListCursor:Landroid/database/Cursor;

    invoke-static {v2, v1}, Lcom/sec/android/app/music/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;Z)[J

    move-result-object v1

    iput-object v1, v4, Lcom/sec/android/app/music/common/util/DrmServicePopup$DrmPopupData;->list:[J

    .line 889
    iput p1, v4, Lcom/sec/android/app/music/common/util/DrmServicePopup$DrmPopupData;->position:I

    .line 890
    iget v1, p0, Lcom/sec/android/app/music/TrackListView;->mTabId:I

    iput v1, v4, Lcom/sec/android/app/music/common/util/DrmServicePopup$DrmPopupData;->tabId:I

    .line 891
    iget-object v1, p0, Lcom/sec/android/app/music/TrackListView;->mKeyWord:Ljava/lang/String;

    iput-object v1, v4, Lcom/sec/android/app/music/common/util/DrmServicePopup$DrmPopupData;->keyWord:Ljava/lang/String;

    .line 892
    new-instance v1, Lcom/sec/android/app/music/common/util/DrmServicePopup;

    invoke-virtual {p0}, Lcom/sec/android/app/music/TrackListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v4}, Lcom/sec/android/app/music/common/util/DrmServicePopup;-><init>(Landroid/content/Context;Lcom/sec/android/app/music/common/util/DrmServicePopup$DrmPopupData;)V

    .line 893
    invoke-virtual {v1}, Lcom/sec/android/app/music/common/util/DrmServicePopup;->show()V

    goto/16 :goto_74

    :cond_11a
    move v0, v1

    goto/16 :goto_74
.end method

.method private makeNumberOfView(Landroid/database/Cursor;)Landroid/database/Cursor;
    .registers 11
    .parameter "c"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 355
    if-nez p1, :cond_7

    .line 356
    const/4 p1, 0x0

    .line 390
    .end local p1
    :cond_6
    :goto_6
    return-object p1

    .line 358
    .restart local p1
    :cond_7
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 359
    .local v0, count:I
    if-eqz v0, :cond_6

    .line 364
    const/16 v4, 0xa

    new-array v3, v4, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v3, v6

    const-string v4, "count"

    aput-object v4, v3, v7

    const-string v4, "dummy1"

    aput-object v4, v3, v8

    const/4 v4, 0x3

    const-string v5, "dummy2"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "dummy3"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "dummy4"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "dummy5"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string v5, "dummy6"

    aput-object v5, v3, v4

    const/16 v4, 0x8

    const-string v5, "dummy7"

    aput-object v5, v3, v4

    const/16 v4, 0x9

    const-string v5, "dummy8"

    aput-object v5, v3, v4

    .line 375
    .local v3, numberOfProjection:[Ljava/lang/String;
    new-instance v2, Landroid/database/MatrixCursor;

    invoke-direct {v2, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 376
    .local v2, countOfItems:Landroid/database/MatrixCursor;
    new-instance v1, Ljava/util/ArrayList;

    array-length v4, v3

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 377
    .local v1, countItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const-wide/16 v4, -0x5

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 380
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 381
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 382
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 383
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 384
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 385
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 388
    invoke-virtual {v2, v1}, Landroid/database/MatrixCursor;->addRow(Ljava/lang/Iterable;)V

    .line 390
    new-instance v4, Landroid/database/MergeCursor;

    new-array v5, v8, [Landroid/database/Cursor;

    aput-object p1, v5, v6

    aput-object v2, v5, v7

    invoke-direct {v4, v5}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    move-object p1, v4

    goto/16 :goto_6
.end method

.method private saveAlbumIndex(Landroid/database/Cursor;)V
    .registers 8
    .parameter "c"

    .prologue
    .line 322
    if-eqz p1, :cond_8

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_9

    .line 348
    :cond_8
    :goto_8
    return-void

    .line 325
    :cond_9
    sget-object v3, Lcom/sec/android/app/music/TrackListView;->sSavedAlbumIndex:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 326
    const/4 v1, -0x1

    .line 327
    .local v1, position:I
    const/4 v0, -0x1

    .line 328
    .local v0, albumId:I
    const/4 v2, -0x1

    .line 329
    .local v2, savedAlbumId:I
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 338
    :cond_14
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    .line 339
    const-string v3, "album_id"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 340
    sget-object v3, Lcom/sec/android/app/music/TrackListView;->CLASSNAME:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mTabId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/music/TrackListView;->mTabId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mKeyWord : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/music/TrackListView;->mKeyWord:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " position = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bindView albumId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    if-eq v0, v2, :cond_6c

    .line 344
    move v2, v0

    .line 345
    sget-object v3, Lcom/sec/android/app/music/TrackListView;->sSavedAlbumIndex:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    :cond_6c
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_14

    goto :goto_8
.end method

.method private setTrackAdapter(Landroid/content/Context;Z)V
    .registers 12
    .parameter "context"
    .parameter "enableQuery"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v8, 0x1

    .line 180
    iget-boolean v0, p0, Lcom/sec/android/app/music/TrackListView;->mIsSelectMode:Z

    if-eqz v0, :cond_5e

    .line 181
    invoke-virtual {p0, v2}, Lcom/sec/android/app/music/TrackListView;->setItemsCanFocus(Z)V

    .line 182
    invoke-virtual {p0, v8}, Lcom/sec/android/app/music/TrackListView;->setSelected(Z)V

    .line 183
    invoke-virtual {p0, v3}, Lcom/sec/android/app/music/TrackListView;->setChoiceMode(I)V

    .line 184
    invoke-virtual {p0, v2}, Lcom/sec/android/app/music/TrackListView;->setLongClickable(Z)V

    .line 189
    :goto_13
    iget-object v0, p0, Lcom/sec/android/app/music/TrackListView;->mQueryArgs:Lcom/sec/android/app/music/MusicUtils$QueryArgs;

    iget-object v0, v0, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->indexBy:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/music/TrackListView;->mIndexColumnString:Ljava/lang/String;

    .line 191
    const/4 v4, -0x1

    .line 193
    .local v4, layout:I
    iget v0, p0, Lcom/sec/android/app/music/TrackListView;->mTabId:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_23

    iget v0, p0, Lcom/sec/android/app/music/TrackListView;->mTabId:I

    if-ne v0, v3, :cond_62

    .line 194
    :cond_23
    const v4, 0x7f03000a

    .line 195
    iput-boolean v8, p0, Lcom/sec/android/app/music/TrackListView;->mIsOneLineLayout:Z

    .line 209
    :goto_28
    iget-object v0, p0, Lcom/sec/android/app/music/TrackListView;->mAdapter:Lcom/sec/android/app/music/TrackListView$TrackListAdapter;

    if-nez v0, :cond_76

    .line 210
    new-instance v0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter;

    const/4 v5, 0x0

    new-array v6, v2, [Ljava/lang/String;

    new-array v7, v2, [I

    move-object v1, p0

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/music/TrackListView$TrackListAdapter;-><init>(Lcom/sec/android/app/music/TrackListView;Landroid/content/Context;Landroid/view/View;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/sec/android/app/music/TrackListView;->mAdapter:Lcom/sec/android/app/music/TrackListView$TrackListAdapter;

    .line 216
    iget-object v0, p0, Lcom/sec/android/app/music/TrackListView;->mAdapter:Lcom/sec/android/app/music/TrackListView$TrackListAdapter;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/TrackListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 217
    if-eqz p2, :cond_4d

    .line 219
    iget-object v0, p0, Lcom/sec/android/app/music/TrackListView;->mAdapter:Lcom/sec/android/app/music/TrackListView$TrackListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/music/TrackListView$TrackListAdapter;->getQueryHandler()Lcom/sec/android/app/music/widget/SimpleQueryCursorAdapter$TrackQueryHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/music/TrackListView;->mQueryArgs:Lcom/sec/android/app/music/MusicUtils$QueryArgs;

    invoke-direct {p0, v0, v1, v8}, Lcom/sec/android/app/music/TrackListView;->getCursor(Lcom/sec/android/app/music/widget/SimpleQueryCursorAdapter$TrackQueryHandler;Lcom/sec/android/app/music/MusicUtils$QueryArgs;Z)Landroid/database/Cursor;

    .line 221
    :cond_4d
    iput-boolean p2, p0, Lcom/sec/android/app/music/TrackListView;->mEnableQuery:Z

    .line 239
    :goto_4f
    invoke-virtual {p0, p0}, Lcom/sec/android/app/music/TrackListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 242
    iget-boolean v0, p0, Lcom/sec/android/app/music/TrackListView;->mIsReorderMode:Z

    if-nez v0, :cond_5d

    iget-boolean v0, p0, Lcom/sec/android/app/music/TrackListView;->mIsSelectMode:Z

    if-nez v0, :cond_5d

    .line 243
    invoke-virtual {p0, p0}, Lcom/sec/android/app/music/TrackListView;->setOnDragListener(Lcom/sec/android/app/music/widget/SweepableListView$OnItemDragListener;)V

    .line 246
    :cond_5d
    return-void

    .line 186
    .end local v4           #layout:I
    :cond_5e
    invoke-virtual {p0, v8}, Lcom/sec/android/app/music/TrackListView;->setLongClickable(Z)V

    goto :goto_13

    .line 197
    .restart local v4       #layout:I
    :cond_62
    iget-boolean v0, p0, Lcom/sec/android/app/music/TrackListView;->mIsSelectMode:Z

    if-eqz v0, :cond_6a

    .line 198
    const v4, 0x7f030009

    goto :goto_28

    .line 201
    :cond_6a
    iget-boolean v0, p0, Lcom/sec/android/app/music/TrackListView;->mIsReorderMode:Z

    if-eqz v0, :cond_72

    .line 202
    const v4, 0x7f03000b

    goto :goto_28

    .line 204
    :cond_72
    const v4, 0x7f030007

    goto :goto_28

    .line 227
    :cond_76
    sget-object v0, Lcom/sec/android/app/music/TrackListView;->CLASSNAME:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTabId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/music/TrackListView;->mTabId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mKeyWord : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/music/TrackListView;->mKeyWord:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mAdapter is not null, so just get cursor!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v0, p0, Lcom/sec/android/app/music/TrackListView;->mAdapter:Lcom/sec/android/app/music/TrackListView$TrackListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/music/TrackListView$TrackListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/music/TrackListView;->mTrackListCursor:Landroid/database/Cursor;

    .line 231
    iget-object v0, p0, Lcom/sec/android/app/music/TrackListView;->mTrackListCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_b4

    .line 232
    iget-object v0, p0, Lcom/sec/android/app/music/TrackListView;->mTrackListCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/TrackListView;->init(Landroid/database/Cursor;)V

    goto :goto_4f

    .line 235
    :cond_b4
    iget-object v0, p0, Lcom/sec/android/app/music/TrackListView;->mAdapter:Lcom/sec/android/app/music/TrackListView$TrackListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/music/TrackListView$TrackListAdapter;->getQueryHandler()Lcom/sec/android/app/music/widget/SimpleQueryCursorAdapter$TrackQueryHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/music/TrackListView;->mQueryArgs:Lcom/sec/android/app/music/MusicUtils$QueryArgs;

    invoke-direct {p0, v0, v1, v8}, Lcom/sec/android/app/music/TrackListView;->getCursor(Lcom/sec/android/app/music/widget/SimpleQueryCursorAdapter$TrackQueryHandler;Lcom/sec/android/app/music/MusicUtils$QueryArgs;Z)Landroid/database/Cursor;

    goto :goto_4f
.end method

.method private startMusicActivity(I)V
    .registers 9
    .parameter

    .prologue
    .line 741
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sec/android/app/music/TrackListView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Lcom/sec/android/app/music/MusicPlayer;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 742
    const/high16 v0, 0x400

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 743
    const/high16 v0, 0x1000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 745
    sget-object v0, Lcom/sec/android/app/music/MusicUtils;->sService:Lcom/sec/android/app/music/ICorePlayerService;

    .line 746
    invoke-virtual {p0, p1}, Lcom/sec/android/app/music/TrackListView;->getAudioId(I)J

    move-result-wide v2

    .line 749
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gez v4, :cond_44

    .line 750
    sget-object v0, Lcom/sec/android/app/music/TrackListView;->CLASSNAME:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onItemClick :: getAuidoId["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "] is "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    :cond_43
    :goto_43
    return-void

    .line 754
    :cond_44
    :try_start_44
    invoke-interface {v0}, Lcom/sec/android/app/music/ICorePlayerService;->getAudioId()J

    move-result-wide v4

    .line 755
    cmp-long v6, v4, v2

    if-nez v6, :cond_5e

    cmp-long v4, v4, v2

    if-nez v4, :cond_56

    invoke-interface {v0}, Lcom/sec/android/app/music/ICorePlayerService;->getQueuePosition()I

    move-result v4

    if-ne p1, v4, :cond_5e

    :cond_56
    invoke-interface {v0}, Lcom/sec/android/app/music/ICorePlayerService;->getTabFrom()I

    move-result v4

    iget v5, p0, Lcom/sec/android/app/music/TrackListView;->mTabId:I

    if-eq v4, v5, :cond_a6

    .line 758
    :cond_5e
    invoke-direct {p0, v2, v3}, Lcom/sec/android/app/music/TrackListView;->isDrmFile(J)Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 760
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/music/TrackListView;->isValidDrm(II)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 766
    :cond_6b
    const-string v0, "list"

    iget-object v2, p0, Lcom/sec/android/app/music/TrackListView;->mTrackListCursor:Landroid/database/Cursor;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/sec/android/app/music/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;Z)[J

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 768
    const-string v0, "list_position"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 769
    const-string v0, "tabFrom"

    iget v2, p0, Lcom/sec/android/app/music/TrackListView;->mTabId:I

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 770
    const-string v0, "keyword"

    iget-object v2, p0, Lcom/sec/android/app/music/TrackListView;->mKeyWord:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_8a
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_8a} :catch_c7

    .line 787
    :cond_8a
    :goto_8a
    iget-object v0, p0, Lcom/sec/android/app/music/TrackListView;->mProgress:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_9e

    iget-object v0, p0, Lcom/sec/android/app/music/TrackListView;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_9e

    .line 788
    iget-object v0, p0, Lcom/sec/android/app/music/TrackListView;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 789
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/music/TrackListView;->mProgress:Landroid/app/ProgressDialog;

    .line 791
    :cond_9e
    invoke-virtual {p0}, Lcom/sec/android/app/music/TrackListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_43

    .line 771
    :cond_a6
    :try_start_a6
    invoke-interface {v0}, Lcom/sec/android/app/music/ICorePlayerService;->isPlaying()Z

    move-result v4

    if-nez v4, :cond_8a

    .line 774
    invoke-direct {p0, v2, v3}, Lcom/sec/android/app/music/TrackListView;->isDrmFile(J)Z

    move-result v2

    if-eqz v2, :cond_c3

    invoke-interface {v0}, Lcom/sec/android/app/music/ICorePlayerService;->position()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_c3

    .line 775
    const/4 v2, 0x4

    invoke-direct {p0, p1, v2}, Lcom/sec/android/app/music/TrackListView;->isValidDrm(II)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 781
    :cond_c3
    invoke-interface {v0}, Lcom/sec/android/app/music/ICorePlayerService;->play()V
    :try_end_c6
    .catch Landroid/os/RemoteException; {:try_start_a6 .. :try_end_c6} :catch_c7

    goto :goto_8a

    .line 783
    :catch_c7
    move-exception v0

    .line 784
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_8a
.end method

.method private updateNowPlayingProgressBar()V
    .registers 9

    .prologue
    const/4 v7, 0x4

    .line 961
    iget-object v0, p0, Lcom/sec/android/app/music/TrackListView;->mNowPlayingProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_6e

    .line 962
    sget-object v0, Lcom/sec/android/app/music/MusicUtils;->sService:Lcom/sec/android/app/music/ICorePlayerService;

    .line 964
    :try_start_7
    invoke-interface {v0}, Lcom/sec/android/app/music/ICorePlayerService;->duration()J

    move-result-wide v1

    .line 965
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_af

    .line 966
    invoke-interface {v0}, Lcom/sec/android/app/music/ICorePlayerService;->position()J

    move-result-wide v3

    long-to-double v3, v3

    const-wide v5, 0x408f400000000000L

    mul-double/2addr v3, v5

    long-to-double v1, v1

    div-double v1, v3, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v1, v1

    .line 967
    sget-object v2, Lcom/sec/android/app/music/TrackListView;->CLASSNAME:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mTabId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/music/TrackListView;->mTabId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mKeyWord : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/music/TrackListView;->mKeyWord:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " updateNowPlayingProgressBar.......... do update. progress : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    iget-object v2, p0, Lcom/sec/android/app/music/TrackListView;->mNowPlayingProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 971
    invoke-virtual {p0}, Lcom/sec/android/app/music/TrackListView;->startNowplayingProgress()V

    .line 973
    iget-object v1, p0, Lcom/sec/android/app/music/TrackListView;->mThumbnailButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_82

    .line 974
    invoke-interface {v0}, Lcom/sec/android/app/music/ICorePlayerService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 975
    iget-object v0, p0, Lcom/sec/android/app/music/TrackListView;->mThumbnailButton:Landroid/widget/ImageView;

    const v1, 0x7f020038

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 993
    :cond_6e
    :goto_6e
    return-void

    .line 977
    :cond_6f
    iget-object v0, p0, Lcom/sec/android/app/music/TrackListView;->mThumbnailButton:Landroid/widget/ImageView;

    const v1, 0x7f020039

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_77
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_77} :catch_78

    goto :goto_6e

    .line 988
    :catch_78
    move-exception v0

    .line 989
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 990
    iget-object v0, p0, Lcom/sec/android/app/music/TrackListView;->mNowPlayingProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_6e

    .line 980
    :cond_82
    :try_start_82
    sget-object v0, Lcom/sec/android/app/music/TrackListView;->CLASSNAME:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTabId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/music/TrackListView;->mTabId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mKeyWord : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/music/TrackListView;->mKeyWord:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " updateNowPlayingProgressBar - mThumbnailButton is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6e

    .line 984
    :cond_af
    sget-object v0, Lcom/sec/android/app/music/TrackListView;->CLASSNAME:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTabId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/music/TrackListView;->mTabId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mKeyWord : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/music/TrackListView;->mKeyWord:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " updateNowPlayingProgressBar.......... stop update & hide "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    iget-object v0, p0, Lcom/sec/android/app/music/TrackListView;->mNowPlayingProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V
    :try_end_e1
    .catch Landroid/os/RemoteException; {:try_start_82 .. :try_end_e1} :catch_78

    goto :goto_6e
.end method


# virtual methods
.method public closeCursor()V
    .registers 4

    .prologue
    .line 306
    sget-object v0, Lcom/sec/android/app/music/TrackListView;->CLASSNAME:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTabId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/music/TrackListView;->mTabId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mKeyWord : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/music/TrackListView;->mKeyWord:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " closeCursor()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget-object v0, p0, Lcom/sec/android/app/music/TrackListView;->mAdapter:Lcom/sec/android/app/music/TrackListView$TrackListAdapter;

    if-eqz v0, :cond_36

    .line 309
    iget-object v0, p0, Lcom/sec/android/app/music/TrackListView;->mAdapter:Lcom/sec/android/app/music/TrackListView$TrackListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/music/TrackListView$TrackListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 311
    :cond_36
    return-void
.end method

.method public getAlignedSelectedItemId()[J
    .registers 9

    .prologue
    .line 536
    invoke-virtual {p0}, Lcom/sec/android/app/music/TrackListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v4

    .line 537
    .local v4, sp:Landroid/util/SparseBooleanArray;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 538
    .local v2, idStates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_a
    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->size()I

    move-result v5

    if-ge v1, v5, :cond_6a

    .line 540
    sget-object v5, Lcom/sec/android/app/music/TrackListView;->CLASSNAME:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mTabId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/sec/android/app/music/TrackListView;->mTabId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mKeyWord : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/music/TrackListView;->mKeyWord:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " getAlignedSelectedItemId position "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isSelected = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    invoke-virtual {v4, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v5

    if-eqz v5, :cond_67

    .line 546
    invoke-virtual {v4, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/sec/android/app/music/TrackListView;->getAudioId(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 538
    :cond_67
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 549
    :cond_6a
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 550
    .local v0, count:I
    new-array v3, v0, [J

    .line 552
    .local v3, ids:[J
    const/4 v1, 0x0

    :goto_71
    if-ge v1, v0, :cond_82

    .line 553
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    aput-wide v5, v3, v1

    .line 552
    add-int/lit8 v1, v1, 0x1

    goto :goto_71

    .line 555
    :cond_82
    return-object v3
.end method

.method public getAudioId(I)J
    .registers 6
    .parameter "position"

    .prologue
    .line 565
    const-wide/16 v0, -0x1

    .line 566
    .local v0, audioId:J
    iget-object v2, p0, Lcom/sec/android/app/music/TrackListView;->mTrackListCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_16

    iget-object v2, p0, Lcom/sec/android/app/music/TrackListView;->mTrackListCursor:Landroid/database/Cursor;

    invoke-interface {v2, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 567
    iget-object v2, p0, Lcom/sec/android/app/music/TrackListView;->mTrackListCursor:Landroid/database/Cursor;

    iget v3, p0, Lcom/sec/android/app/music/TrackListView;->mAudioIdIdx:I

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 569
    :cond_16
    return-wide v0
.end method

.method public getIsSelectedAll()Z
    .registers 2

    .prologue
    .line 510
    iget-boolean v0, p0, Lcom/sec/android/app/music/TrackListView;->mIsSelectedAll:Z

    return v0
.end method

.method public getListItemInfo(I)Lcom/sec/android/app/music/TrackListView$ListItemInfo;
    .registers 6
    .parameter "position"

    .prologue
    .line 615
    new-instance v1, Lcom/sec/android/app/music/TrackListView$ListItemInfo;

    invoke-direct {v1, p0}, Lcom/sec/android/app/music/TrackListView$ListItemInfo;-><init>(Lcom/sec/android/app/music/TrackListView;)V

    .line 616
    .local v1, li:Lcom/sec/android/app/music/TrackListView$ListItemInfo;
    const-wide/16 v2, -0x1

    iput-wide v2, v1, Lcom/sec/android/app/music/TrackListView$ListItemInfo;->itemId:J

    .line 617
    iget-object v2, p0, Lcom/sec/android/app/music/TrackListView;->mTrackListCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_22

    .line 618
    iget-object v2, p0, Lcom/sec/android/app/music/TrackListView;->mTrackListCursor:Landroid/database/Cursor;

    invoke-interface {v2, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 619
    iget-object v2, p0, Lcom/sec/android/app/music/TrackListView;->mTrackListCursor:Landroid/database/Cursor;

    const-string v3, "_id"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 621
    .local v0, colidx:I
    iget-object v2, p0, Lcom/sec/android/app/music/TrackListView;->mTrackListCursor:Landroid/database/Cursor;

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/sec/android/app/music/TrackListView$ListItemInfo;->itemId:J

    .line 623
    .end local v0           #colidx:I
    :cond_22
    iget-object v2, p0, Lcom/sec/android/app/music/TrackListView;->mKeyWord:Ljava/lang/String;

    iput-object v2, v1, Lcom/sec/android/app/music/TrackListView$ListItemInfo;->keyWord:Ljava/lang/String;

    .line 624
    return-object v1
.end method

.method public getListItems()[J
    .registers 4

    .prologue
    .line 578
    const/4 v0, 0x0

    .line 579
    .local v0, list:[J
    iget-object v1, p0, Lcom/sec/android/app/music/TrackListView;->mTrackListCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_c

    .line 580
    iget-object v1, p0, Lcom/sec/android/app/music/TrackListView;->mTrackListCursor:Landroid/database/Cursor;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/sec/android/app/music/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;Z)[J

    move-result-object v0

    .line 582
    :cond_c
    return-object v0
.end method

.method protected init(Landroid/database/Cursor;)V
    .registers 5
    .parameter "newCursor"

    .prologue
    .line 251
    sget-object v0, Lcom/sec/android/app/music/TrackListView;->CLASSNAME:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTabId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/music/TrackListView;->mTabId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mKeyWord : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/music/TrackListView;->mKeyWord:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " init() changeCursor & set indexer..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget v0, p0, Lcom/sec/android/app/music/TrackListView;->mTabId:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_34

    .line 255
    invoke-direct {p0, p1}, Lcom/sec/android/app/music/TrackListView;->saveAlbumIndex(Landroid/database/Cursor;)V

    .line 257
    :cond_34
    iget-boolean v0, p0, Lcom/sec/android/app/music/TrackListView;->mIsShowCountOfSongs:Z

    if-eqz v0, :cond_3c

    .line 258
    invoke-direct {p0, p1}, Lcom/sec/android/app/music/TrackListView;->makeNumberOfView(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object p1

    .line 260
    :cond_3c
    iget-object v0, p0, Lcom/sec/android/app/music/TrackListView;->mAdapter:Lcom/sec/android/app/music/TrackListView$TrackListAdapter;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/music/TrackListView$TrackListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 261
    invoke-direct {p0, p1}, Lcom/sec/android/app/music/TrackListView;->getColumnIndices(Landroid/database/Cursor;)V

    .line 262
    iput-object p1, p0, Lcom/sec/android/app/music/TrackListView;->mTrackListCursor:Landroid/database/Cursor;

    .line 263
    iget-object v0, p0, Lcom/sec/android/app/music/TrackListView;->mTrackListCursor:Landroid/database/Cursor;

    if-nez v0, :cond_4e

    .line 264
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/music/TrackListView;->mTrackListCursorCount:I

    .line 268
    :goto_4d
    return-void

    .line 266
    :cond_4e
    iget-object v0, p0, Lcom/sec/android/app/music/TrackListView;->mTrackListCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/music/TrackListView;->mTrackListCursorCount:I

    goto :goto_4d
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
    .line 704
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    sget-object v3, Lcom/sec/android/app/music/TrackListView;->CLASSNAME:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mTabId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/music/TrackListView;->mTabId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mKeyWord : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/music/TrackListView;->mKeyWord:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " onItemClick mTrackListCursorCount : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/music/TrackListView;->mTrackListCursorCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " onItemClick position="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    invoke-virtual {p0}, Lcom/sec/android/app/music/TrackListView;->getCheckedItemIds()[J

    move-result-object v1

    .line 709
    .local v1, items:[J
    invoke-virtual {p0}, Lcom/sec/android/app/music/TrackListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v2

    .line 710
    .local v2, sp:Landroid/util/SparseBooleanArray;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4f
    array-length v3, v1

    if-ge v0, v3, :cond_9f

    .line 711
    sget-object v3, Lcom/sec/android/app/music/TrackListView;->CLASSNAME:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mTabId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/music/TrackListView;->mTabId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mKeyWord : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/music/TrackListView;->mKeyWord:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " onItemClick i:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " item Ids="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-wide v5, v1, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " sparse array : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    add-int/lit8 v0, v0, 0x1

    goto :goto_4f

    .line 717
    :cond_9f
    iget-boolean v3, p0, Lcom/sec/android/app/music/TrackListView;->mIsReorderMode:Z

    if-eqz v3, :cond_a4

    .line 725
    :goto_a3
    return-void

    .line 720
    :cond_a4
    iget-boolean v3, p0, Lcom/sec/android/app/music/TrackListView;->mIsSelectMode:Z

    if-eqz v3, :cond_ac

    .line 721
    invoke-virtual {p0}, Lcom/sec/android/app/music/TrackListView;->refreshCheckedItemsView()V

    goto :goto_a3

    .line 724
    :cond_ac
    invoke-direct {p0, p3}, Lcom/sec/android/app/music/TrackListView;->startMusicActivity(I)V

    goto :goto_a3
.end method

.method public reQueryListCursor(Z)V
    .registers 4
    .parameter "async"

    .prologue
    .line 397
    iget-object v0, p0, Lcom/sec/android/app/music/TrackListView;->mAdapter:Lcom/sec/android/app/music/TrackListView$TrackListAdapter;

    if-eqz v0, :cond_17

    .line 398
    iget-boolean v0, p0, Lcom/sec/android/app/music/TrackListView;->mEnableQuery:Z

    if-eqz v0, :cond_17

    .line 399
    iget-object v0, p0, Lcom/sec/android/app/music/TrackListView;->mAdapter:Lcom/sec/android/app/music/TrackListView$TrackListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/music/TrackListView$TrackListAdapter;->getQueryHandler()Lcom/sec/android/app/music/widget/SimpleQueryCursorAdapter$TrackQueryHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/music/TrackListView;->mQueryArgs:Lcom/sec/android/app/music/MusicUtils$QueryArgs;

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/android/app/music/TrackListView;->getCursor(Lcom/sec/android/app/music/widget/SimpleQueryCursorAdapter$TrackQueryHandler;Lcom/sec/android/app/music/MusicUtils$QueryArgs;Z)Landroid/database/Cursor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/TrackListView;->init(Landroid/database/Cursor;)V

    .line 402
    :cond_17
    return-void
.end method

.method public reQuerySplitView(Ljava/lang/String;)V
    .registers 6
    .parameter "keyWord"

    .prologue
    const/4 v3, 0x0

    .line 272
    sget-object v0, Lcom/sec/android/app/music/TrackListView;->CLASSNAME:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reQuerySplitView mTabId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/music/TrackListView;->mTabId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mKeyWord : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/music/TrackListView;->mKeyWord:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 275
    iput-boolean v3, p0, Lcom/sec/android/app/music/TrackListView;->mEnableQuery:Z

    .line 279
    :goto_31
    invoke-virtual {p0}, Lcom/sec/android/app/music/TrackListView;->closeCursor()V

    .line 280
    iput-object p1, p0, Lcom/sec/android/app/music/TrackListView;->mKeyWord:Ljava/lang/String;

    .line 281
    iget v0, p0, Lcom/sec/android/app/music/TrackListView;->mTabId:I

    invoke-static {v0, p1}, Lcom/sec/android/app/music/MusicUtils;->getTrackListArgsForQuery(ILjava/lang/String;)Lcom/sec/android/app/music/MusicUtils$QueryArgs;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/music/TrackListView;->mQueryArgs:Lcom/sec/android/app/music/MusicUtils$QueryArgs;

    .line 282
    invoke-virtual {p0, v3}, Lcom/sec/android/app/music/TrackListView;->reQueryListCursor(Z)V

    .line 283
    return-void

    .line 277
    :cond_42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/music/TrackListView;->mEnableQuery:Z

    goto :goto_31
.end method

.method public refreshCheckedItemsView()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1014
    invoke-virtual {p0}, Lcom/sec/android/app/music/TrackListView;->getCheckedItemIds()[J

    move-result-object v1

    array-length v0, v1

    .line 1015
    .local v0, length:I
    iget v1, p0, Lcom/sec/android/app/music/TrackListView;->mTrackListCursorCount:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1c

    .line 1016
    iget-object v1, p0, Lcom/sec/android/app/music/TrackListView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1017
    iput-boolean v3, p0, Lcom/sec/android/app/music/TrackListView;->mIsSelectedAll:Z

    .line 1023
    :goto_14
    if-lez v0, :cond_24

    .line 1024
    iget-object v1, p0, Lcom/sec/android/app/music/TrackListView;->mSoftButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1028
    :goto_1b
    return-void

    .line 1019
    :cond_1c
    iget-object v1, p0, Lcom/sec/android/app/music/TrackListView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1020
    iput-boolean v2, p0, Lcom/sec/android/app/music/TrackListView;->mIsSelectedAll:Z

    goto :goto_14

    .line 1026
    :cond_24
    iget-object v1, p0, Lcom/sec/android/app/music/TrackListView;->mSoftButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1b
.end method

.method public restoreCheckedItem(I)V
    .registers 3
    .parameter "position"

    .prologue
    .line 527
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/music/TrackListView;->setItemChecked(IZ)V

    .line 528
    return-void
.end method

.method public setAllItemChecked(Z)V
    .registers 5
    .parameter "check"

    .prologue
    .line 515
    invoke-virtual {p0}, Lcom/sec/android/app/music/TrackListView;->getCount()I

    move-result v0

    .line 516
    .local v0, count:I
    if-lez v0, :cond_18

    .line 517
    iput-boolean p1, p0, Lcom/sec/android/app/music/TrackListView;->mIsSelectedAll:Z

    .line 518
    iget-object v2, p0, Lcom/sec/android/app/music/TrackListView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 520
    const/4 v1, 0x0

    .local v1, i:I
    :goto_e
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_18

    .line 521
    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/music/TrackListView;->setItemChecked(IZ)V

    .line 520
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 524
    .end local v1           #i:I
    :cond_18
    return-void
.end method

.method public setAutoReQuery(Z)V
    .registers 5
    .parameter "autoRequery"

    .prologue
    .line 294
    iget-object v0, p0, Lcom/sec/android/app/music/TrackListView;->mAdapter:Lcom/sec/android/app/music/TrackListView$TrackListAdapter;

    if-eqz v0, :cond_39

    .line 296
    sget-object v0, Lcom/sec/android/app/music/TrackListView;->CLASSNAME:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAutoReQuery() autoRequery : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mTabId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/music/TrackListView;->mTabId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mKeyWord : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/music/TrackListView;->mKeyWord:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget-object v0, p0, Lcom/sec/android/app/music/TrackListView;->mAdapter:Lcom/sec/android/app/music/TrackListView$TrackListAdapter;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/music/TrackListView$TrackListAdapter;->setAutoReQuery(Z)V

    .line 301
    :cond_39
    return-void
.end method

.method public setCheckBoxView(Landroid/widget/CheckBox;)V
    .registers 2
    .parameter "checkBox"

    .prologue
    .line 505
    iput-object p1, p0, Lcom/sec/android/app/music/TrackListView;->mCheckBox:Landroid/widget/CheckBox;

    .line 506
    return-void
.end method

.method public setContentChangedListenHandler(Landroid/os/Handler;)V
    .registers 3
    .parameter "h"

    .prologue
    .line 287
    iget-object v0, p0, Lcom/sec/android/app/music/TrackListView;->mAdapter:Lcom/sec/android/app/music/TrackListView$TrackListAdapter;

    if-eqz v0, :cond_9

    .line 288
    iget-object v0, p0, Lcom/sec/android/app/music/TrackListView;->mAdapter:Lcom/sec/android/app/music/TrackListView$TrackListAdapter;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/music/TrackListView$TrackListAdapter;->setContentChangedListenHandler(Landroid/os/Handler;)V

    .line 290
    :cond_9
    return-void
.end method

.method public setSoftButton(Landroid/widget/Button;)V
    .registers 2
    .parameter "button"

    .prologue
    .line 500
    iput-object p1, p0, Lcom/sec/android/app/music/TrackListView;->mSoftButton:Landroid/widget/Button;

    .line 501
    return-void
.end method

.method public startNowplayingProgress()V
    .registers 5

    .prologue
    .line 1005
    iget-object v0, p0, Lcom/sec/android/app/music/TrackListView;->mNowplayingProgressUpdateHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1006
    iget-object v0, p0, Lcom/sec/android/app/music/TrackListView;->mNowplayingProgressUpdateHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1007
    return-void
.end method

.method public stopNowplayingProgress()V
    .registers 3

    .prologue
    .line 1001
    iget-object v0, p0, Lcom/sec/android/app/music/TrackListView;->mNowplayingProgressUpdateHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1002
    return-void
.end method

.method public updatePlayOrder()V
    .registers 12

    .prologue
    const/4 v3, 0x0

    const/4 v10, 0x0

    .line 633
    sget-object v5, Lcom/sec/android/app/music/TrackListView;->CLASSNAME:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mTabId = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, p0, Lcom/sec/android/app/music/TrackListView;->mTabId:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " mKeyWord : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Lcom/sec/android/app/music/TrackListView;->mKeyWord:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " updatePlayOrder"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    iget-object v5, p0, Lcom/sec/android/app/music/TrackListView;->mTrackListCursor:Landroid/database/Cursor;

    if-nez v5, :cond_33

    .line 691
    :goto_32
    return-void

    .line 638
    :cond_33
    invoke-virtual {p0}, Lcom/sec/android/app/music/TrackListView;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {p0}, Lcom/sec/android/app/music/TrackListView;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f090081

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v6, v8}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v7

    .line 640
    .local v7, loading:Landroid/app/ProgressDialog;
    invoke-virtual {p0, v10}, Lcom/sec/android/app/music/TrackListView;->setAutoReQuery(Z)V

    .line 641
    const-string v5, "external"

    iget-object v6, p0, Lcom/sec/android/app/music/TrackListView;->mKeyWord:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v5, v8, v9}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    .line 643
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/sec/android/app/music/TrackListView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 644
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v5, 0x2

    new-array v2, v5, [Ljava/lang/String;

    const-string v5, "_id"

    aput-object v5, v2, v10

    const/4 v5, 0x1

    const-string v6, "play_order"

    aput-object v6, v2, v5

    const-string v5, "play_order"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 648
    .local v4, c:Landroid/database/Cursor;
    new-instance v2, Lcom/sec/android/app/music/TrackListView$1;

    move-object v3, p0

    move-object v5, v0

    move-object v6, v1

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/app/music/TrackListView$1;-><init>(Lcom/sec/android/app/music/TrackListView;Landroid/database/Cursor;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/app/ProgressDialog;)V

    .line 690
    .local v2, t:Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_32
.end method
