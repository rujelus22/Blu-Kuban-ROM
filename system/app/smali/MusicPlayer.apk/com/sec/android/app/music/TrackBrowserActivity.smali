.class public Lcom/sec/android/app/music/TrackBrowserActivity;
.super Landroid/app/Activity;
.source "TrackBrowserActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Lcom/sec/android/app/music/common/util/OnLowBatteryListener;
.implements Lcom/sec/android/app/music/widget/OnMusicPlayListItemClickListener;


# static fields
.field private static final CLASSNAME:Ljava/lang/String;


# instance fields
.field private mBatteryChecker:Lcom/sec/android/app/music/common/util/BatteryChecker;

.field private mCorePlayerService:Lcom/sec/android/app/music/ICorePlayerService;

.field private mFastforwardLongPress:Z

.field private final mHandler:Landroid/os/Handler;

.field private mHeadTitle:Ljava/lang/String;

.field private mIsCurrentPlayingList:Z

.field private mIsNowPlayingList:Z

.field private mIsSlectMode:Z

.field private mKeyWord:Ljava/lang/String;

.field private mListFocus:I

.field private mListView:Lcom/sec/android/app/music/MusicContentListView;

.field private mLoadingProgress:Landroid/app/ProgressDialog;

.field private final mLoadingProgressBarHandler:Landroid/os/Handler;

.field private final mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

.field private mMode:I

.field private mNowPlayingButton:Landroid/view/View;

.field private mNowPlayingPosition:I

.field private mNowPlayingProgressBar:Landroid/widget/ProgressBar;

.field private final mNowPlayingProgressBarHandler:Landroid/os/Handler;

.field private mPlayListAlbumArt:Landroid/graphics/Bitmap;

.field private final mPlayListImageEditerListener:Landroid/view/View$OnClickListener;

.field private final mPlayerStatusListener:Landroid/content/BroadcastReceiver;

.field private final mRequeryHandler:Landroid/os/Handler;

.field private mRewindLongPress:Z

.field private final mScanListener:Landroid/content/BroadcastReceiver;

.field private mSelectedId:J

.field private mSelectedIds:[J

.field private mSelectedPosition:I

.field private mStart:Z

.field private mTabFrom:I

.field private mToast:Landroid/widget/Toast;

.field private final mToastMessageHandler:Landroid/os/Handler;

.field private mToken:Lcom/sec/android/app/music/MusicUtils$ServiceToken;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 93
    const-class v0, Lcom/sec/android/app/music/TrackBrowserActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/music/TrackBrowserActivity;->CLASSNAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 90
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 135
    const/16 v0, 0x13

    iput v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mMode:I

    .line 137
    iput-boolean v1, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mIsSlectMode:Z

    .line 139
    iput v2, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mTabFrom:I

    .line 145
    iput-boolean v1, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mIsNowPlayingList:Z

    .line 168
    new-instance v0, Lcom/sec/android/app/music/TrackBrowserActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/TrackBrowserActivity$1;-><init>(Lcom/sec/android/app/music/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mPlayerStatusListener:Landroid/content/BroadcastReceiver;

    .line 198
    new-instance v0, Lcom/sec/android/app/music/TrackBrowserActivity$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/TrackBrowserActivity$2;-><init>(Lcom/sec/android/app/music/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    .line 234
    new-instance v0, Lcom/sec/android/app/music/TrackBrowserActivity$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/TrackBrowserActivity$3;-><init>(Lcom/sec/android/app/music/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

    .line 998
    new-instance v0, Lcom/sec/android/app/music/TrackBrowserActivity$16;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/TrackBrowserActivity$16;-><init>(Lcom/sec/android/app/music/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mPlayListImageEditerListener:Landroid/view/View$OnClickListener;

    .line 1205
    iput-boolean v1, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mIsCurrentPlayingList:Z

    .line 1207
    iput v2, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mNowPlayingPosition:I

    .line 1542
    iput-boolean v1, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mStart:Z

    .line 2194
    new-instance v0, Lcom/sec/android/app/music/TrackBrowserActivity$31;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/TrackBrowserActivity$31;-><init>(Lcom/sec/android/app/music/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mLoadingProgressBarHandler:Landroid/os/Handler;

    .line 2227
    new-instance v0, Lcom/sec/android/app/music/TrackBrowserActivity$32;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/TrackBrowserActivity$32;-><init>(Lcom/sec/android/app/music/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mToastMessageHandler:Landroid/os/Handler;

    .line 2374
    new-instance v0, Lcom/sec/android/app/music/TrackBrowserActivity$40;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/TrackBrowserActivity$40;-><init>(Lcom/sec/android/app/music/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mNowPlayingProgressBarHandler:Landroid/os/Handler;

    .line 2487
    new-instance v0, Lcom/sec/android/app/music/TrackBrowserActivity$41;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/TrackBrowserActivity$41;-><init>(Lcom/sec/android/app/music/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mRequeryHandler:Landroid/os/Handler;

    .line 2580
    new-instance v0, Lcom/sec/android/app/music/TrackBrowserActivity$46;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/TrackBrowserActivity$46;-><init>(Lcom/sec/android/app/music/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 90
    sget-object v0, Lcom/sec/android/app/music/TrackBrowserActivity;->CLASSNAME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/music/TrackBrowserActivity;)Lcom/sec/android/app/music/MusicContentListView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mListView:Lcom/sec/android/app/music/MusicContentListView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/music/TrackBrowserActivity;)Landroid/graphics/Bitmap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mPlayListAlbumArt:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/music/TrackBrowserActivity;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mLoadingProgressBarHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/android/app/music/TrackBrowserActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mNowPlayingPosition:I

    return v0
.end method

.method static synthetic access$1202(Lcom/sec/android/app/music/TrackBrowserActivity;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput p1, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mNowPlayingPosition:I

    return p1
.end method

.method static synthetic access$1300(Lcom/sec/android/app/music/TrackBrowserActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mKeyWord:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/android/app/music/TrackBrowserActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mIsCurrentPlayingList:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/sec/android/app/music/TrackBrowserActivity;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 90
    iget-wide v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mSelectedId:J

    return-wide v0
.end method

.method static synthetic access$1600(Lcom/sec/android/app/music/TrackBrowserActivity;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mToastMessageHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sec/android/app/music/TrackBrowserActivity;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mRequeryHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/sec/android/app/music/TrackBrowserActivity;[II)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/music/TrackBrowserActivity;->setTone([II)V

    return-void
.end method

.method static synthetic access$1900(Lcom/sec/android/app/music/TrackBrowserActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mTabFrom:I

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/music/TrackBrowserActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/sec/android/app/music/TrackBrowserActivity;->updateNowPlayingView()V

    return-void
.end method

.method static synthetic access$2000(Lcom/sec/android/app/music/TrackBrowserActivity;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mLoadingProgress:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/sec/android/app/music/TrackBrowserActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mLoadingProgress:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/sec/android/app/music/TrackBrowserActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mIsNowPlayingList:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/sec/android/app/music/TrackBrowserActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mFastforwardLongPress:Z

    return v0
.end method

.method static synthetic access$2202(Lcom/sec/android/app/music/TrackBrowserActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mFastforwardLongPress:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/sec/android/app/music/TrackBrowserActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mRewindLongPress:Z

    return v0
.end method

.method static synthetic access$2302(Lcom/sec/android/app/music/TrackBrowserActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mRewindLongPress:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/sec/android/app/music/TrackBrowserActivity;)Landroid/widget/ProgressBar;
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mNowPlayingProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/sec/android/app/music/TrackBrowserActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mStart:Z

    return v0
.end method

.method static synthetic access$2600(Lcom/sec/android/app/music/TrackBrowserActivity;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mNowPlayingProgressBarHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/sec/android/app/music/TrackBrowserActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/sec/android/app/music/TrackBrowserActivity;->finishActivityIfNoItem()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/music/TrackBrowserActivity;)Lcom/sec/android/app/music/common/util/BatteryChecker;
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mBatteryChecker:Lcom/sec/android/app/music/common/util/BatteryChecker;

    return-object v0
.end method

.method static synthetic access$302(Lcom/sec/android/app/music/TrackBrowserActivity;Lcom/sec/android/app/music/common/util/BatteryChecker;)Lcom/sec/android/app/music/common/util/BatteryChecker;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mBatteryChecker:Lcom/sec/android/app/music/common/util/BatteryChecker;

    return-object p1
.end method

.method static synthetic access$402(Lcom/sec/android/app/music/TrackBrowserActivity;[J)[J
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mSelectedIds:[J

    return-object p1
.end method

.method static synthetic access$500(Lcom/sec/android/app/music/TrackBrowserActivity;)Landroid/widget/Toast;
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$502(Lcom/sec/android/app/music/TrackBrowserActivity;Landroid/widget/Toast;)Landroid/widget/Toast;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$600(Lcom/sec/android/app/music/TrackBrowserActivity;Ljava/lang/String;)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/sec/android/app/music/TrackBrowserActivity;->idForplaylist(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/music/TrackBrowserActivity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 90
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/music/TrackBrowserActivity;->savePlayList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/android/app/music/TrackBrowserActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mMode:I

    return v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/music/TrackBrowserActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/sec/android/app/music/TrackBrowserActivity;->clearPlayListBitmap()V

    return-void
.end method

.method private clearPlayListBitmap()V
    .registers 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mPlayListAlbumArt:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_c

    .line 163
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mPlayListAlbumArt:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 164
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mPlayListAlbumArt:Landroid/graphics/Bitmap;

    .line 166
    :cond_c
    return-void
.end method

.method private finishActivityIfNoItem()V
    .registers 5

    .prologue
    .line 2558
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mListView:Lcom/sec/android/app/music/MusicContentListView;

    new-instance v1, Lcom/sec/android/app/music/TrackBrowserActivity$45;

    invoke-direct {v1, p0}, Lcom/sec/android/app/music/TrackBrowserActivity$45;-><init>(Lcom/sec/android/app/music/TrackBrowserActivity;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/music/MusicContentListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2566
    return-void
.end method

.method private idForplaylist(Ljava/lang/String;)I
    .registers 9
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 1318
    sget-object v1, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v6

    const-string v3, "name=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v6

    const-string v5, "name"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1324
    const/4 v0, -0x1

    .line 1325
    if-eqz v1, :cond_2a

    .line 1326
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1327
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_27

    .line 1328
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1330
    :cond_27
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1332
    :cond_2a
    return v0
.end method

.method private makeAddToPlayListHeader()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 650
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f09003c

    invoke-virtual {p0, v6}, Lcom/sec/android/app/music/TrackBrowserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/sec/android/app/music/TrackBrowserActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 651
    const v5, 0x7f0c0026

    invoke-virtual {p0, v5}, Lcom/sec/android/app/music/TrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 652
    .local v2, headerView:Landroid/view/View;
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 655
    const v5, 0x7f0c0028

    invoke-virtual {p0, v5}, Lcom/sec/android/app/music/TrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 656
    .local v1, checkBox:Landroid/widget/CheckBox;
    iget-object v5, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mListView:Lcom/sec/android/app/music/MusicContentListView;

    invoke-virtual {v5, v1}, Lcom/sec/android/app/music/MusicContentListView;->setCheckBoxView(Landroid/widget/CheckBox;)V

    .line 659
    const v5, 0x7f0c002a

    invoke-virtual {p0, v5}, Lcom/sec/android/app/music/TrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 660
    .local v0, buttonView:Landroid/view/View;
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 661
    const v5, 0x7f0c002b

    invoke-virtual {p0, v5}, Lcom/sec/android/app/music/TrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 662
    .local v3, leftButton:Landroid/widget/Button;
    const v5, 0x7f09003f

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setText(I)V

    .line 663
    invoke-virtual {v3, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 664
    iget-object v5, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mListView:Lcom/sec/android/app/music/MusicContentListView;

    invoke-virtual {v5, v3}, Lcom/sec/android/app/music/MusicContentListView;->setSoftButton(Landroid/widget/Button;)V

    .line 665
    new-instance v5, Lcom/sec/android/app/music/TrackBrowserActivity$5;

    invoke-direct {v5, p0}, Lcom/sec/android/app/music/TrackBrowserActivity$5;-><init>(Lcom/sec/android/app/music/TrackBrowserActivity;)V

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 677
    const v5, 0x7f0c002c

    invoke-virtual {p0, v5}, Lcom/sec/android/app/music/TrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 678
    .local v4, rightButton:Landroid/widget/Button;
    const v5, 0x7f0900ee

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    .line 679
    new-instance v5, Lcom/sec/android/app/music/TrackBrowserActivity$6;

    invoke-direct {v5, p0}, Lcom/sec/android/app/music/TrackBrowserActivity$6;-><init>(Lcom/sec/android/app/music/TrackBrowserActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 685
    new-instance v5, Lcom/sec/android/app/music/TrackBrowserActivity$7;

    invoke-direct {v5, p0, v3}, Lcom/sec/android/app/music/TrackBrowserActivity$7;-><init>(Lcom/sec/android/app/music/TrackBrowserActivity;Landroid/widget/Button;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 703
    return-void
.end method

.method private makeAddToThisPlayListHeader()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 706
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f09003c

    invoke-virtual {p0, v6}, Lcom/sec/android/app/music/TrackBrowserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/sec/android/app/music/TrackBrowserActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 707
    const v5, 0x7f0c0026

    invoke-virtual {p0, v5}, Lcom/sec/android/app/music/TrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 708
    .local v2, headerView:Landroid/view/View;
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 711
    const v5, 0x7f0c0028

    invoke-virtual {p0, v5}, Lcom/sec/android/app/music/TrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 712
    .local v1, checkBox:Landroid/widget/CheckBox;
    iget-object v5, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mListView:Lcom/sec/android/app/music/MusicContentListView;

    invoke-virtual {v5, v1}, Lcom/sec/android/app/music/MusicContentListView;->setCheckBoxView(Landroid/widget/CheckBox;)V

    .line 715
    const v5, 0x7f0c002a

    invoke-virtual {p0, v5}, Lcom/sec/android/app/music/TrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 716
    .local v0, buttonView:Landroid/view/View;
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 717
    const v5, 0x7f0c002b

    invoke-virtual {p0, v5}, Lcom/sec/android/app/music/TrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 718
    .local v3, leftButton:Landroid/widget/Button;
    const v5, 0x7f09003f

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setText(I)V

    .line 719
    invoke-virtual {v3, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 720
    iget-object v5, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mListView:Lcom/sec/android/app/music/MusicContentListView;

    invoke-virtual {v5, v3}, Lcom/sec/android/app/music/MusicContentListView;->setSoftButton(Landroid/widget/Button;)V

    .line 721
    new-instance v5, Lcom/sec/android/app/music/TrackBrowserActivity$8;

    invoke-direct {v5, p0}, Lcom/sec/android/app/music/TrackBrowserActivity$8;-><init>(Lcom/sec/android/app/music/TrackBrowserActivity;)V

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 730
    const v5, 0x7f0c002c

    invoke-virtual {p0, v5}, Lcom/sec/android/app/music/TrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 731
    .local v4, rightButton:Landroid/widget/Button;
    const v5, 0x7f0900ee

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    .line 732
    new-instance v5, Lcom/sec/android/app/music/TrackBrowserActivity$9;

    invoke-direct {v5, p0}, Lcom/sec/android/app/music/TrackBrowserActivity$9;-><init>(Lcom/sec/android/app/music/TrackBrowserActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 738
    new-instance v5, Lcom/sec/android/app/music/TrackBrowserActivity$10;

    invoke-direct {v5, p0, v3}, Lcom/sec/android/app/music/TrackBrowserActivity$10;-><init>(Lcom/sec/android/app/music/TrackBrowserActivity;Landroid/widget/Button;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 758
    return-void
.end method

.method private makeChangeOrderHeader(I)V
    .registers 10
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f09013f

    invoke-virtual {p0, v1}, Lcom/sec/android/app/music/TrackBrowserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/TrackBrowserActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1213
    const v0, 0x7f0c002a

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/TrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1214
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1215
    const v0, 0x7f0c002b

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/TrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1216
    const v1, 0x7f0900a1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 1217
    iget-object v1, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mListView:Lcom/sec/android/app/music/MusicContentListView;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/music/MusicContentListView;->setSoftButton(Landroid/widget/Button;)V

    .line 1219
    sget-object v4, Lcom/sec/android/app/music/MusicUtils;->sService:Lcom/sec/android/app/music/ICorePlayerService;

    .line 1220
    const/4 v3, -0x1

    .line 1221
    const/4 v1, 0x0

    .line 1223
    :try_start_41
    invoke-interface {v4}, Lcom/sec/android/app/music/ICorePlayerService;->getTabFrom()I
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_44} :catch_8a

    move-result v2

    .line 1224
    :try_start_45
    invoke-interface {v4}, Lcom/sec/android/app/music/ICorePlayerService;->getKeyWord()Ljava/lang/String;
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_48} :catch_97

    move-result-object v1

    .line 1228
    :goto_49
    iput-boolean v5, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mIsCurrentPlayingList:Z

    .line 1231
    if-ne v2, v6, :cond_60

    iget-object v2, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mKeyWord:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_60

    .line 1232
    iput-boolean v6, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mIsCurrentPlayingList:Z

    .line 1235
    :try_start_57
    invoke-interface {v4}, Lcom/sec/android/app/music/ICorePlayerService;->getAudioId()J

    .line 1236
    invoke-interface {v4}, Lcom/sec/android/app/music/ICorePlayerService;->getQueuePosition()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mNowPlayingPosition:I
    :try_end_60
    .catch Landroid/os/RemoteException; {:try_start_57 .. :try_end_60} :catch_92

    .line 1242
    :cond_60
    :goto_60
    iget-object v1, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mListView:Lcom/sec/android/app/music/MusicContentListView;

    new-instance v2, Lcom/sec/android/app/music/TrackBrowserActivity$20;

    invoke-direct {v2, p0}, Lcom/sec/android/app/music/TrackBrowserActivity$20;-><init>(Lcom/sec/android/app/music/TrackBrowserActivity;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/app/music/MusicContentListView;->setDropListener(Lcom/sec/android/app/music/widget/ChangeOrderListView$DropListener;)V

    .line 1257
    new-instance v1, Lcom/sec/android/app/music/TrackBrowserActivity$21;

    invoke-direct {v1, p0}, Lcom/sec/android/app/music/TrackBrowserActivity$21;-><init>(Lcom/sec/android/app/music/TrackBrowserActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1296
    const v0, 0x7f0c002c

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/TrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1297
    const v1, 0x7f0900ee

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 1298
    new-instance v1, Lcom/sec/android/app/music/TrackBrowserActivity$22;

    invoke-direct {v1, p0}, Lcom/sec/android/app/music/TrackBrowserActivity$22;-><init>(Lcom/sec/android/app/music/TrackBrowserActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1315
    return-void

    .line 1225
    :catch_8a
    move-exception v2

    move-object v7, v2

    move v2, v3

    move-object v3, v7

    .line 1226
    :goto_8e
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_49

    .line 1237
    :catch_92
    move-exception v1

    .line 1238
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_60

    .line 1225
    :catch_97
    move-exception v3

    goto :goto_8e
.end method

.method private makeCreatePlayListHeader()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 787
    invoke-virtual {p0}, Lcom/sec/android/app/music/TrackBrowserActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x14

    invoke-virtual {v6, v7}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 792
    const v6, 0x7f0c002a

    invoke-virtual {p0, v6}, Lcom/sec/android/app/music/TrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 793
    .local v0, buttonView:Landroid/view/View;
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 796
    const v6, 0x7f0c0019

    invoke-virtual {p0, v6}, Lcom/sec/android/app/music/TrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 797
    .local v2, headerView:Landroid/view/View;
    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 800
    const v6, 0x7f0c001b

    invoke-virtual {p0, v6}, Lcom/sec/android/app/music/TrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 801
    .local v3, imageView:Landroid/widget/ImageView;
    const v6, 0x7f0200d0

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 802
    iget-object v6, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mPlayListImageEditerListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 806
    const v6, 0x7f0c0022

    invoke-virtual {p0, v6}, Lcom/sec/android/app/music/TrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 808
    .local v1, edit:Landroid/widget/EditText;
    invoke-virtual {v1, v8}, Landroid/widget/EditText;->setVisibility(I)V

    .line 809
    invoke-direct {p0}, Lcom/sec/android/app/music/TrackBrowserActivity;->makePlaylistName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 810
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 813
    const v6, 0x7f0c002b

    invoke-virtual {p0, v6}, Lcom/sec/android/app/music/TrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 814
    .local v4, leftButton:Landroid/widget/Button;
    const v6, 0x7f0900ec

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setText(I)V

    .line 815
    new-instance v6, Lcom/sec/android/app/music/TrackBrowserActivity$12;

    invoke-direct {v6, p0, v1}, Lcom/sec/android/app/music/TrackBrowserActivity$12;-><init>(Lcom/sec/android/app/music/TrackBrowserActivity;Landroid/widget/EditText;)V

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 870
    const v6, 0x7f0c002c

    invoke-virtual {p0, v6}, Lcom/sec/android/app/music/TrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 871
    .local v5, rightButton:Landroid/widget/Button;
    const v6, 0x7f0900ee

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(I)V

    .line 872
    new-instance v6, Lcom/sec/android/app/music/TrackBrowserActivity$13;

    invoke-direct {v6, p0}, Lcom/sec/android/app/music/TrackBrowserActivity$13;-><init>(Lcom/sec/android/app/music/TrackBrowserActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 878
    return-void
.end method

.method private makeDeleteItemsHeader(ILjava/lang/String;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const v5, 0x7f090041

    const v4, 0x7f090038

    const/4 v3, 0x0

    .line 1089
    const v0, 0x7f0c0026

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/TrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1090
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1093
    const v0, 0x7f0c0028

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/TrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 1094
    iget-object v1, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mListView:Lcom/sec/android/app/music/MusicContentListView;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/music/MusicContentListView;->setCheckBoxView(Landroid/widget/CheckBox;)V

    .line 1097
    const v0, 0x7f0c002a

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/TrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1098
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1099
    const v0, 0x7f0c002b

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/TrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1101
    const/4 v1, 0x1

    if-ne p1, v1, :cond_6b

    .line 1102
    invoke-virtual {p0, v4}, Lcom/sec/android/app/music/TrackBrowserActivity;->setTitle(I)V

    .line 1103
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(I)V

    .line 1109
    :goto_3b
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1110
    iget-object v1, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mListView:Lcom/sec/android/app/music/MusicContentListView;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/music/MusicContentListView;->setSoftButton(Landroid/widget/Button;)V

    .line 1111
    new-instance v1, Lcom/sec/android/app/music/TrackBrowserActivity$17;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/android/app/music/TrackBrowserActivity$17;-><init>(Lcom/sec/android/app/music/TrackBrowserActivity;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1177
    const v1, 0x7f0c002c

    invoke-virtual {p0, v1}, Lcom/sec/android/app/music/TrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 1178
    const v3, 0x7f0900ee

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(I)V

    .line 1179
    new-instance v3, Lcom/sec/android/app/music/TrackBrowserActivity$18;

    invoke-direct {v3, p0}, Lcom/sec/android/app/music/TrackBrowserActivity$18;-><init>(Lcom/sec/android/app/music/TrackBrowserActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1185
    new-instance v1, Lcom/sec/android/app/music/TrackBrowserActivity$19;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/app/music/TrackBrowserActivity$19;-><init>(Lcom/sec/android/app/music/TrackBrowserActivity;Landroid/widget/Button;)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1203
    return-void

    .line 1105
    :cond_6b
    invoke-virtual {p0, v5}, Lcom/sec/android/app/music/TrackBrowserActivity;->setTitle(I)V

    .line 1106
    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(I)V

    goto :goto_3b
.end method

.method private makeEditItemPlayListHeader()V
    .registers 3

    .prologue
    .line 912
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f090043

    invoke-virtual {p0, v1}, Lcom/sec/android/app/music/TrackBrowserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/TrackBrowserActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 913
    return-void
.end method

.method private makeEditPlayListHeader(Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .parameter "title"
    .parameter "playlistId"

    .prologue
    const/4 v9, 0x0

    .line 917
    invoke-virtual {p0}, Lcom/sec/android/app/music/TrackBrowserActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x14

    invoke-virtual {v6, v7}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 922
    const v6, 0x7f0c002a

    invoke-virtual {p0, v6}, Lcom/sec/android/app/music/TrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 923
    .local v0, buttonView:Landroid/view/View;
    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 926
    const v6, 0x7f0c0019

    invoke-virtual {p0, v6}, Lcom/sec/android/app/music/TrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 927
    .local v2, headerView:Landroid/view/View;
    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 930
    const v6, 0x7f0c001b

    invoke-virtual {p0, v6}, Lcom/sec/android/app/music/TrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 931
    .local v3, imageView:Landroid/widget/ImageView;
    invoke-direct {p0}, Lcom/sec/android/app/music/TrackBrowserActivity;->clearPlayListBitmap()V

    .line 932
    invoke-virtual {p0}, Lcom/sec/android/app/music/TrackBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {p2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v6, v7, v8}, Lcom/sec/android/app/music/MusicUtils;->getPlayListArtwork(Landroid/content/Context;J)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mPlayListAlbumArt:Landroid/graphics/Bitmap;

    .line 934
    iget-object v6, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mPlayListAlbumArt:Landroid/graphics/Bitmap;

    if-nez v6, :cond_8d

    .line 935
    const v6, 0x7f0200d0

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 939
    :goto_46
    iget-object v6, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mPlayListImageEditerListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 942
    const v6, 0x7f0c0022

    invoke-virtual {p0, v6}, Lcom/sec/android/app/music/TrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 944
    .local v1, edit:Landroid/widget/EditText;
    invoke-virtual {v1, v9}, Landroid/widget/EditText;->setVisibility(I)V

    .line 945
    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 946
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 949
    const v6, 0x7f0c002b

    invoke-virtual {p0, v6}, Lcom/sec/android/app/music/TrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 950
    .local v4, leftButton:Landroid/widget/Button;
    const v6, 0x7f0900ec

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setText(I)V

    .line 951
    new-instance v6, Lcom/sec/android/app/music/TrackBrowserActivity$14;

    invoke-direct {v6, p0, v1, p1, p2}, Lcom/sec/android/app/music/TrackBrowserActivity$14;-><init>(Lcom/sec/android/app/music/TrackBrowserActivity;Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 987
    const v6, 0x7f0c002c

    invoke-virtual {p0, v6}, Lcom/sec/android/app/music/TrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 988
    .local v5, rightButton:Landroid/widget/Button;
    const v6, 0x7f0900ee

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(I)V

    .line 989
    new-instance v6, Lcom/sec/android/app/music/TrackBrowserActivity$15;

    invoke-direct {v6, p0}, Lcom/sec/android/app/music/TrackBrowserActivity$15;-><init>(Lcom/sec/android/app/music/TrackBrowserActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 996
    return-void

    .line 937
    .end local v1           #edit:Landroid/widget/EditText;
    .end local v4           #leftButton:Landroid/widget/Button;
    .end local v5           #rightButton:Landroid/widget/Button;
    :cond_8d
    iget-object v6, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mPlayListAlbumArt:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_46
.end method

.method private makePlayListHeader(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "headerText"
    .parameter "albumIdForAlbumArt"

    .prologue
    .line 389
    invoke-virtual {p0}, Lcom/sec/android/app/music/TrackBrowserActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 390
    iget v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mTabFrom:I

    if-nez v0, :cond_2b

    .line 391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0900a7

    invoke-virtual {p0, v1}, Lcom/sec/android/app/music/TrackBrowserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/TrackBrowserActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 395
    :goto_2a
    return-void

    .line 394
    :cond_2b
    invoke-direct {p0}, Lcom/sec/android/app/music/TrackBrowserActivity;->setHeaderTitle()V

    goto :goto_2a
.end method

.method private makePlaylistName()Ljava/lang/String;
    .registers 12

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1337
    const v0, 0x7f0900a8

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1340
    new-array v2, v6, [Ljava/lang/String;

    const-string v0, "name"

    aput-object v0, v2, v7

    .line 1343
    invoke-virtual {p0}, Lcom/sec/android/app/music/TrackBrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1344
    const-string v3, "name != \'\'"

    .line 1345
    sget-object v1, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v5, "name"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 1348
    if-nez v3, :cond_22

    .line 1376
    :goto_21
    return-object v4

    .line 1352
    :cond_22
    const-string v0, "%s %03d"

    new-array v1, v8, [Ljava/lang/Object;

    aput-object v9, v1, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move v2, v7

    move v1, v8

    .line 1363
    :goto_34
    if-nez v2, :cond_64

    .line 1365
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move v2, v1

    move-object v1, v0

    move v0, v6

    .line 1366
    :goto_3c
    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_69

    .line 1367
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1368
    invoke-virtual {v4, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_60

    .line 1369
    const-string v1, "%s %03d"

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v9, v4, v7

    add-int/lit8 v0, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v6

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move v2, v0

    move v0, v7

    .line 1372
    :cond_60
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_3c

    .line 1375
    :cond_64
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    move-object v4, v0

    .line 1376
    goto :goto_21

    :cond_69
    move v10, v0

    move-object v0, v1

    move v1, v2

    move v2, v10

    goto :goto_34
.end method

.method private makeSelectPlayListHeader()V
    .registers 5

    .prologue
    .line 761
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f09003c

    invoke-virtual {p0, v3}, Lcom/sec/android/app/music/TrackBrowserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/music/TrackBrowserActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 762
    const v2, 0x7f0c0023

    invoke-virtual {p0, v2}, Lcom/sec/android/app/music/TrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 763
    .local v0, headerView2:Landroid/view/View;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 765
    const v2, 0x7f0c0025

    invoke-virtual {p0, v2}, Lcom/sec/android/app/music/TrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 766
    .local v1, text:Landroid/widget/TextView;
    const v2, 0x7f0900f3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 769
    new-instance v2, Lcom/sec/android/app/music/TrackBrowserActivity$11;

    invoke-direct {v2, p0}, Lcom/sec/android/app/music/TrackBrowserActivity$11;-><init>(Lcom/sec/android/app/music/TrackBrowserActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 783
    return-void
.end method

.method private prepareContextMenu(Landroid/view/ContextMenu;)V
    .registers 11
    .parameter

    .prologue
    const/16 v8, 0x16

    const/4 v7, 0x3

    const/4 v6, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1801
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mSelectedId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/android/app/music/MusicUtils;->getFilePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 1805
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1806
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_51

    .line 1807
    const/16 v0, 0xb

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1808
    invoke-interface {p1, v7}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1809
    invoke-interface {p1, v6}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1810
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1811
    invoke-interface {p1, v8}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1812
    const/16 v0, 0x17

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1874
    :goto_50
    return-void

    .line 1818
    :cond_51
    invoke-virtual {p0}, Lcom/sec/android/app/music/TrackBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-wide v4, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mSelectedId:J

    invoke-static {v1, v4, v5}, Lcom/sec/android/app/music/MusicUtils;->isItemInQuickList(Landroid/content/Context;J)Z

    move-result v4

    .line 1819
    if-nez v0, :cond_b0

    move v0, v2

    move v1, v2

    .line 1843
    :goto_5f
    if-eqz v1, :cond_d9

    .line 1844
    invoke-interface {p1, v6}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1848
    :goto_68
    if-eqz v0, :cond_e1

    .line 1849
    invoke-interface {p1, v7}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1853
    :goto_71
    const-wide/16 v0, -0x1

    .line 1854
    iget-object v5, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mKeyWord:Ljava/lang/String;

    if-eqz v5, :cond_8f

    iget v5, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mTabFrom:I

    if-eq v5, v6, :cond_8f

    iget v5, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mTabFrom:I

    const/4 v6, 0x6

    if-eq v5, v6, :cond_8f

    iget v5, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mTabFrom:I

    const/4 v6, 0x7

    if-eq v5, v6, :cond_8f

    .line 1857
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mKeyWord:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 1864
    :cond_8f
    const-wide/16 v5, -0xb

    cmp-long v5, v0, v5

    if-eqz v5, :cond_9f

    sget-wide v5, Lcom/sec/android/app/music/MusicUtils;->sQuickPlayListId:J

    cmp-long v0, v0, v5

    if-nez v0, :cond_e9

    iget v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mTabFrom:I

    if-ne v0, v3, :cond_e9

    .line 1865
    :cond_9f
    invoke-interface {p1, v8}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1866
    const/16 v0, 0x17

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_50

    .line 1823
    :cond_b0
    new-instance v1, Lcom/sec/android/app/music/common/manager/MusicDrmManager;

    invoke-direct {v1, p0}, Lcom/sec/android/app/music/common/manager/MusicDrmManager;-><init>(Landroid/content/Context;)V

    .line 1826
    :try_start_b5
    invoke-virtual {v1, v0}, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->isDrmFile(Ljava/lang/String;)Z
    :try_end_b8
    .catch Ljava/io/FileNotFoundException; {:try_start_b5 .. :try_end_b8} :catch_c4

    move-result v0

    .line 1832
    if-eqz v0, :cond_ff

    .line 1833
    invoke-virtual {v1}, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->getOptionInfo()Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmOption;

    move-result-object v0

    .line 1834
    if-nez v0, :cond_d4

    move v0, v2

    move v1, v2

    .line 1836
    goto :goto_5f

    .line 1827
    :catch_c4
    move-exception v0

    .line 1828
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 1829
    const v0, 0x7f09004d

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_50

    .line 1838
    :cond_d4
    iget-boolean v1, v0, Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmOption;->bRingtone:Z

    .line 1839
    iget-boolean v0, v0, Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmOption;->bSendAs:Z

    goto :goto_5f

    .line 1846
    :cond_d9
    invoke-interface {p1, v6}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_68

    .line 1851
    :cond_e1
    invoke-interface {p1, v7}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_71

    .line 1868
    :cond_e9
    if-eqz v4, :cond_f4

    .line 1869
    invoke-interface {p1, v8}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_50

    .line 1871
    :cond_f4
    const/16 v0, 0x17

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_50

    :cond_ff
    move v0, v3

    move v1, v3

    goto/16 :goto_5f
.end method

.method private registerNowPlayingButtons()V
    .registers 4

    .prologue
    .line 2262
    const v0, 0x7f0c0038

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/TrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mNowPlayingProgressBar:Landroid/widget/ProgressBar;

    .line 2263
    const v0, 0x7f0c0032

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/TrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mNowPlayingButton:Landroid/view/View;

    .line 2264
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mNowPlayingButton:Landroid/view/View;

    new-instance v1, Lcom/sec/android/app/music/TrackBrowserActivity$33;

    invoke-direct {v1, p0}, Lcom/sec/android/app/music/TrackBrowserActivity$33;-><init>(Lcom/sec/android/app/music/TrackBrowserActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2275
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2276
    invoke-virtual {p0}, Lcom/sec/android/app/music/TrackBrowserActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 2277
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 2278
    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v1, 0x140

    if-ne v0, v1, :cond_87

    .line 2279
    const v0, 0x7f0c0039

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/TrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2280
    new-instance v1, Lcom/sec/android/app/music/TrackBrowserActivity$34;

    invoke-direct {v1, p0}, Lcom/sec/android/app/music/TrackBrowserActivity$34;-><init>(Lcom/sec/android/app/music/TrackBrowserActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2290
    const v0, 0x7f0c003b

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/TrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2291
    new-instance v1, Lcom/sec/android/app/music/TrackBrowserActivity$35;

    invoke-direct {v1, p0}, Lcom/sec/android/app/music/TrackBrowserActivity$35;-><init>(Lcom/sec/android/app/music/TrackBrowserActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2306
    const v0, 0x7f0c003c

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/TrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2307
    new-instance v1, Lcom/sec/android/app/music/TrackBrowserActivity$36;

    invoke-direct {v1, p0}, Lcom/sec/android/app/music/TrackBrowserActivity$36;-><init>(Lcom/sec/android/app/music/TrackBrowserActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 2315
    new-instance v1, Lcom/sec/android/app/music/TrackBrowserActivity$37;

    invoke-direct {v1, p0}, Lcom/sec/android/app/music/TrackBrowserActivity$37;-><init>(Lcom/sec/android/app/music/TrackBrowserActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2337
    const v0, 0x7f0c003a

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/TrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2338
    new-instance v1, Lcom/sec/android/app/music/TrackBrowserActivity$38;

    invoke-direct {v1, p0}, Lcom/sec/android/app/music/TrackBrowserActivity$38;-><init>(Lcom/sec/android/app/music/TrackBrowserActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 2349
    new-instance v1, Lcom/sec/android/app/music/TrackBrowserActivity$39;

    invoke-direct {v1, p0}, Lcom/sec/android/app/music/TrackBrowserActivity$39;-><init>(Lcom/sec/android/app/music/TrackBrowserActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2372
    :cond_87
    return-void
.end method

.method private savePlayList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 888
    new-instance v1, Landroid/content/ContentValues;

    const/4 v0, 0x2

    invoke-direct {v1, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 889
    const-string v0, "name"

    invoke-virtual {v1, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 891
    const/4 v0, 0x0

    .line 892
    iget-object v2, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mPlayListAlbumArt:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_16

    .line 893
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mPlayListAlbumArt:Landroid/graphics/Bitmap;

    invoke-static {v0, p3}, Lcom/sec/android/app/music/MusicUtils;->savePlayListArtwork(Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 895
    :cond_16
    const-string v2, "mini_thumb_data"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    if-nez p3, :cond_3c

    .line 897
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 905
    :goto_26
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 906
    const-string v1, "headTitle"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 907
    const-string v1, "keyword"

    iget-object v2, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mKeyWord:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 908
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/music/TrackBrowserActivity;->setResult(ILandroid/content/Intent;)V

    .line 909
    return-void

    .line 900
    :cond_3c
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p3, v4, v5

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_26
.end method

.method private setHeaderTitle()V
    .registers 26

    .prologue
    .line 428
    const v2, 0x7f0c0019

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/music/TrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    .line 429
    .local v17, headerView:Landroid/view/View;
    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 430
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/music/TrackBrowserActivity;->mTabFrom:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/music/TrackBrowserActivity;->mKeyWord:Ljava/lang/String;

    invoke-static {v2, v5}, Lcom/sec/android/app/music/MusicUtils;->getTrackListArgsForQuery(ILjava/lang/String;)Lcom/sec/android/app/music/MusicUtils$QueryArgs;

    move-result-object v13

    .line 431
    .local v13, args:Lcom/sec/android/app/music/MusicUtils$QueryArgs;
    iget-object v2, v13, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->uri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v5, "limit"

    const-string v6, "1"

    invoke-virtual {v2, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 432
    .local v3, limituri:Landroid/net/Uri;
    const/4 v15, 0x0

    .line 433
    .local v15, c:Landroid/database/Cursor;
    const-wide/16 v10, -0x1

    .line 434
    .local v10, albumId:J
    const/16 v19, 0x0

    .line 435
    .local v19, text1:Ljava/lang/String;
    const/16 v20, 0x0

    .line 436
    .local v20, text2:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/music/TrackBrowserActivity;->mTabFrom:I

    packed-switch v2, :pswitch_data_330

    :cond_3b
    move-wide v7, v10

    .line 573
    .end local v10           #albumId:J
    .local v7, albumId:J
    :goto_3c
    if-eqz v15, :cond_41

    .line 574
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 591
    :cond_41
    const v2, 0x7f0c001b

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/music/TrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    .line 592
    .local v12, albumart:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/music/TrackBrowserActivity;->mTabFrom:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_284

    .line 593
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8, v12}, Lcom/sec/android/app/music/TrackBrowserActivity;->setPlayListAlbumArt(JLandroid/widget/ImageView;)V

    .line 622
    :goto_58
    const v2, 0x7f0c001f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/music/TrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    .line 623
    .local v22, textView2:Landroid/widget/TextView;
    const v2, 0x7f0c0020

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/music/TrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    .line 624
    .local v21, textView1:Landroid/widget/TextView;
    if-nez v20, :cond_311

    if-eqz v19, :cond_311

    .line 625
    const v2, 0x7f0c0021

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/music/TrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    .line 626
    .local v23, textView3:Landroid/widget/TextView;
    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 629
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/music/TrackBrowserActivity;->mHeadTitle:Ljava/lang/String;

    if-nez v2, :cond_90

    .line 630
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/music/TrackBrowserActivity;->mHeadTitle:Ljava/lang/String;

    .line 632
    :cond_90
    const/4 v2, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 647
    .end local v12           #albumart:Landroid/widget/ImageView;
    .end local v21           #textView1:Landroid/widget/TextView;
    .end local v22           #textView2:Landroid/widget/TextView;
    .end local v23           #textView3:Landroid/widget/TextView;
    :goto_96
    return-void

    .line 438
    .end local v7           #albumId:J
    .restart local v10       #albumId:J
    :pswitch_97
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/music/TrackBrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v5, 0x3

    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "album_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "album"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "artist"

    aput-object v6, v4, v5

    iget-object v5, v13, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->selection:Ljava/lang/String;

    iget-object v6, v13, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->selectionArgs:[Ljava/lang/String;

    const-string v7, "title COLLATE LOCALIZED ASC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 444
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_c4

    .line 445
    if-eqz v15, :cond_c2

    .line 446
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_c2
    move-wide v7, v10

    .line 448
    .end local v10           #albumId:J
    .restart local v7       #albumId:J
    goto :goto_96

    .line 450
    .end local v7           #albumId:J
    .restart local v10       #albumId:J
    :cond_c4
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    .line 451
    const-string v2, "album_id"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 452
    .end local v10           #albumId:J
    .restart local v7       #albumId:J
    const-string v2, "album"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 453
    const-string v2, "artist"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 454
    goto/16 :goto_3c

    .line 456
    .end local v7           #albumId:J
    .restart local v10       #albumId:J
    :pswitch_e7
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/music/TrackBrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v5, 0x1

    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "artist"

    aput-object v6, v4, v5

    iget-object v5, v13, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->selection:Ljava/lang/String;

    iget-object v6, v13, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->selectionArgs:[Ljava/lang/String;

    const-string v7, "album COLLATE LOCALIZED ASC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 459
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_10a

    .line 460
    if-eqz v15, :cond_108

    .line 461
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_108
    move-wide v7, v10

    .line 463
    .end local v10           #albumId:J
    .restart local v7       #albumId:J
    goto :goto_96

    .line 465
    .end local v7           #albumId:J
    .restart local v10       #albumId:J
    :cond_10a
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    .line 468
    const-string v2, "artist"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-wide v7, v10

    .line 469
    .end local v10           #albumId:J
    .restart local v7       #albumId:J
    goto/16 :goto_3c

    .line 471
    .end local v7           #albumId:J
    .restart local v10       #albumId:J
    :pswitch_11a
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/music/TrackBrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v5, 0x2

    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "album_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "composer"

    aput-object v6, v4, v5

    iget-object v5, v13, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->selection:Ljava/lang/String;

    iget-object v6, v13, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->selectionArgs:[Ljava/lang/String;

    const-string v7, "title COLLATE LOCALIZED ASC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 474
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_143

    .line 475
    if-eqz v15, :cond_140

    .line 476
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_140
    move-wide v7, v10

    .line 478
    .end local v10           #albumId:J
    .restart local v7       #albumId:J
    goto/16 :goto_96

    .line 480
    .end local v7           #albumId:J
    .restart local v10       #albumId:J
    :cond_143
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    .line 481
    const-string v2, "album_id"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 482
    .end local v10           #albumId:J
    .restart local v7       #albumId:J
    const-string v2, "composer"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 483
    goto/16 :goto_3c

    .line 485
    .end local v7           #albumId:J
    .restart local v10       #albumId:J
    :pswitch_15c
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/music/TrackBrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v5, 0x3

    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_data"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "album_id"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "bucket_display_name"

    aput-object v6, v4, v5

    iget-object v5, v13, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->selection:Ljava/lang/String;

    iget-object v6, v13, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->selectionArgs:[Ljava/lang/String;

    const-string v7, "title COLLATE LOCALIZED ASC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 491
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_18a

    .line 492
    if-eqz v15, :cond_187

    .line 493
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_187
    move-wide v7, v10

    .line 495
    .end local v10           #albumId:J
    .restart local v7       #albumId:J
    goto/16 :goto_96

    .line 497
    .end local v7           #albumId:J
    .restart local v10       #albumId:J
    :cond_18a
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    .line 498
    const-string v2, "album_id"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 501
    .end local v10           #albumId:J
    .restart local v7       #albumId:J
    const-string v2, "bucket_display_name"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 508
    goto/16 :goto_3c

    .line 510
    .end local v7           #albumId:J
    .restart local v10       #albumId:J
    :pswitch_1a3
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/music/TrackBrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v5, 0x2

    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "genre_name"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "album_id"

    aput-object v6, v4, v5

    iget-object v5, v13, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->selection:Ljava/lang/String;

    iget-object v6, v13, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->selectionArgs:[Ljava/lang/String;

    const-string v7, "title COLLATE LOCALIZED ASC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 513
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_1cc

    .line 514
    if-eqz v15, :cond_1c9

    .line 515
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_1c9
    move-wide v7, v10

    .line 517
    .end local v10           #albumId:J
    .restart local v7       #albumId:J
    goto/16 :goto_96

    .line 519
    .end local v7           #albumId:J
    .restart local v10       #albumId:J
    :cond_1cc
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    .line 520
    const-string v2, "album_id"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 521
    .end local v10           #albumId:J
    .restart local v7       #albumId:J
    const-string v2, "genre_name"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 522
    goto/16 :goto_3c

    .line 524
    .end local v7           #albumId:J
    .restart local v10       #albumId:J
    :pswitch_1e5
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/music/TrackBrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v5, 0x3

    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "year"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "album_id"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "year_name"

    aput-object v6, v4, v5

    iget-object v5, v13, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->selection:Ljava/lang/String;

    iget-object v6, v13, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->selectionArgs:[Ljava/lang/String;

    const-string v7, "title COLLATE LOCALIZED ASC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 530
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_213

    .line 531
    if-eqz v15, :cond_210

    .line 532
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_210
    move-wide v7, v10

    .line 534
    .end local v10           #albumId:J
    .restart local v7       #albumId:J
    goto/16 :goto_96

    .line 536
    .end local v7           #albumId:J
    .restart local v10       #albumId:J
    :cond_213
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    .line 537
    const-string v2, "album_id"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 539
    .end local v10           #albumId:J
    .restart local v7       #albumId:J
    const-string v2, "year_name"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 547
    goto/16 :goto_3c

    .line 549
    .end local v7           #albumId:J
    .restart local v10       #albumId:J
    :pswitch_22c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/music/TrackBrowserActivity;->mKeyWord:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 550
    const-wide/16 v5, 0x0

    cmp-long v2, v10, v5

    if-ltz v2, :cond_3b

    sget-wide v5, Lcom/sec/android/app/music/MusicUtils;->sQuickPlayListId:J

    cmp-long v2, v10, v5

    if-nez v2, :cond_247

    move-wide v7, v10

    .line 553
    .end local v10           #albumId:J
    .restart local v7       #albumId:J
    goto/16 :goto_3c

    .line 555
    .end local v7           #albumId:J
    .restart local v10       #albumId:J
    :cond_247
    sget-object v2, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/music/TrackBrowserActivity;->mKeyWord:Ljava/lang/String;

    invoke-static {v2, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 557
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/music/TrackBrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v5, 0x1

    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "name"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 560
    if-eqz v15, :cond_26c

    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_274

    .line 561
    :cond_26c
    if-eqz v15, :cond_271

    .line 562
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_271
    move-wide v7, v10

    .line 564
    .end local v10           #albumId:J
    .restart local v7       #albumId:J
    goto/16 :goto_96

    .line 566
    .end local v7           #albumId:J
    .restart local v10       #albumId:J
    :cond_274
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    .line 567
    const-string v2, "name"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-wide v7, v10

    .line 568
    .end local v10           #albumId:J
    .restart local v7       #albumId:J
    goto/16 :goto_3c

    .line 594
    .restart local v12       #albumart:Landroid/widget/ImageView;
    :cond_284
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/music/TrackBrowserActivity;->mTabFrom:I

    const/4 v5, 0x3

    if-ne v2, v5, :cond_2b7

    .line 595
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/music/TrackBrowserActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 596
    const v2, 0x7f0c0019

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/music/TrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    .line 597
    .local v18, layout:Landroid/view/View;
    const/16 v2, 0x8

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_58

    .line 599
    .end local v18           #layout:Landroid/view/View;
    :cond_2b7
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/music/TrackBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 600
    .local v4, context:Landroid/content/Context;
    const-wide/16 v5, -0x1

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lcom/sec/android/app/music/MusicUtils;->getArtwork(Landroid/content/Context;JJZ)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 601
    .local v14, bm:Landroid/graphics/Bitmap;
    if-nez v14, :cond_2c8

    .line 602
    invoke-static {v4, v7, v8}, Lcom/sec/android/app/music/MusicUtils;->getDefaultBitmapImage(Landroid/content/Context;J)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 604
    :cond_2c8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/music/TrackBrowserActivity;->mTabFrom:I

    const/4 v5, 0x4

    if-ne v2, v5, :cond_2e8

    .line 605
    invoke-static/range {v19 .. v19}, Lcom/sec/android/app/music/common/util/R2vsUtil;->getSecGenre(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/music/common/util/R2vsUtil;->getGenreThumbnailResourceId(Ljava/lang/String;)I

    move-result v24

    .line 606
    .local v24, thumbnailId:I
    const/4 v2, -0x1

    move/from16 v0, v24

    if-eq v0, v2, :cond_2e3

    .line 607
    move/from16 v0, v24

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_58

    .line 609
    :cond_2e3
    invoke-virtual {v12, v14}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_58

    .line 611
    .end local v24           #thumbnailId:I
    :cond_2e8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/music/TrackBrowserActivity;->mTabFrom:I

    const/4 v5, 0x5

    if-ne v2, v5, :cond_30c

    .line 612
    const/16 v2, 0x8

    invoke-virtual {v12, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 613
    const v2, 0x7f0c001c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/music/TrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/ImageView;

    .line 614
    .local v16, folderImage:Landroid/widget/ImageView;
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 615
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_58

    .line 617
    .end local v16           #folderImage:Landroid/widget/ImageView;
    :cond_30c
    invoke-virtual {v12, v14}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_58

    .line 634
    .end local v4           #context:Landroid/content/Context;
    .end local v14           #bm:Landroid/graphics/Bitmap;
    .restart local v21       #textView1:Landroid/widget/TextView;
    .restart local v22       #textView2:Landroid/widget/TextView;
    :cond_311
    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 635
    if-eqz v19, :cond_321

    .line 636
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 638
    :cond_321
    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 639
    const/4 v2, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_96

    .line 436
    nop

    :pswitch_data_330
    .packed-switch 0x1
        :pswitch_22c
        :pswitch_97
        :pswitch_e7
        :pswitch_1a3
        :pswitch_15c
        :pswitch_11a
        :pswitch_1e5
    .end packed-switch
.end method

.method private setPlayListAlbumArt(JLandroid/widget/ImageView;)V
    .registers 9
    .parameter "albumId"
    .parameter "albumart"

    .prologue
    const/4 v4, 0x0

    .line 399
    const v3, 0x7f0c0019

    invoke-virtual {p0, v3}, Lcom/sec/android/app/music/TrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 400
    .local v1, headerView:Landroid/view/View;
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 402
    const v3, 0x7f0c0021

    invoke-virtual {p0, v3}, Lcom/sec/android/app/music/TrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 403
    .local v2, textView3:Landroid/widget/TextView;
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 404
    const-wide/16 v3, -0xb

    cmp-long v3, p1, v3

    if-eqz v3, :cond_23

    sget-wide v3, Lcom/sec/android/app/music/MusicUtils;->sQuickPlayListId:J

    cmp-long v3, p1, v3

    if-nez v3, :cond_30

    .line 405
    :cond_23
    const v3, 0x7f0200d5

    invoke-virtual {p3, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 406
    const v3, 0x7f090028

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 424
    :goto_2f
    return-void

    .line 407
    :cond_30
    const-wide/16 v3, -0xc

    cmp-long v3, p1, v3

    if-nez v3, :cond_43

    .line 408
    const v3, 0x7f0200ce

    invoke-virtual {p3, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 409
    const v3, 0x7f090029

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2f

    .line 410
    :cond_43
    const-wide/16 v3, -0xd

    cmp-long v3, p1, v3

    if-nez v3, :cond_56

    .line 411
    const v3, 0x7f0200d2

    invoke-virtual {p3, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 412
    const v3, 0x7f09002a

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2f

    .line 413
    :cond_56
    const-wide/16 v3, -0xe

    cmp-long v3, p1, v3

    if-nez v3, :cond_69

    .line 414
    const v3, 0x7f0200c3

    invoke-virtual {p3, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 415
    const v3, 0x7f09002b

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2f

    .line 417
    :cond_69
    invoke-virtual {p0}, Lcom/sec/android/app/music/TrackBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p1, p2}, Lcom/sec/android/app/music/MusicUtils;->getPlayListArtwork(Landroid/content/Context;J)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 418
    .local v0, bm:Landroid/graphics/Bitmap;
    if-nez v0, :cond_7a

    .line 419
    const v3, 0x7f0200d0

    invoke-virtual {p3, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2f

    .line 421
    :cond_7a
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2f
.end method

.method private setTone([II)V
    .registers 11
    .parameter
    .parameter

    .prologue
    const v7, 0x7f090056

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1987
    sget-object v0, Lcom/sec/android/app/music/TrackBrowserActivity;->CLASSNAME:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setTone(position="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1989
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mSelectedId:J

    invoke-static {v0, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 1991
    invoke-virtual {p0}, Lcom/sec/android/app/music/TrackBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-wide v5, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mSelectedId:J

    aget v0, p1, p2

    if-ne v0, v7, :cond_78

    move v0, v1

    :goto_36
    invoke-static {v4, v5, v6, v0}, Lcom/sec/android/app/music/MusicUtils;->setRingtone(Landroid/content/Context;JZ)V

    .line 1994
    aget v0, p1, p2

    const v4, 0x7f090054

    if-ne v0, v4, :cond_7a

    .line 1995
    invoke-static {p0, v1, v3}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 1997
    invoke-virtual {p0}, Lcom/sec/android/app/music/TrackBrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "DEBUG_RINGTONE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/sec/android/app/music/TrackBrowserActivity;->CLASSNAME:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1999
    const v0, 0x7f090059

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2015
    :cond_77
    :goto_77
    return-void

    :cond_78
    move v0, v2

    .line 1991
    goto :goto_36

    .line 2000
    :cond_7a
    aget v0, p1, p2

    const v1, 0x7f090055

    if-ne v0, v1, :cond_a7

    .line 2001
    invoke-virtual {p0}, Lcom/sec/android/app/music/TrackBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/sec/android/app/music/MusicUtils;->getFilePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 2002
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2003
    const-string v2, "vnd.android.cursor.item/contact"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 2004
    const-string v2, "ringtone_filepath"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2005
    const-string v0, "ringtone_uri"

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2006
    invoke-virtual {p0, v1}, Lcom/sec/android/app/music/TrackBrowserActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_77

    .line 2007
    :cond_a7
    aget v0, p1, p2

    if-ne v0, v7, :cond_77

    .line 2008
    invoke-virtual {p0}, Lcom/sec/android/app/music/TrackBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/sec/android/app/music/MusicUtils;->getFilePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 2009
    const-string v1, "content://com.sec.android.app.clockpackage/alarmlist/"

    .line 2010
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v4, "content://com.sec.android.app.clockpackage/alarmlist/"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2011
    const-string v2, "set_alarm"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2012
    const-string v0, "alarm_uri"

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2013
    invoke-virtual {p0, v1}, Lcom/sec/android/app/music/TrackBrowserActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_77
.end method

.method private showDeleteDialog()V
    .registers 4

    .prologue
    .line 2529
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2531
    const v1, 0x7f090041

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2532
    const v1, 0x7f090146

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2533
    const v1, 0x7f0900ed

    new-instance v2, Lcom/sec/android/app/music/TrackBrowserActivity$43;

    invoke-direct {v2, p0}, Lcom/sec/android/app/music/TrackBrowserActivity$43;-><init>(Lcom/sec/android/app/music/TrackBrowserActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2547
    const v1, 0x7f0900ee

    new-instance v2, Lcom/sec/android/app/music/TrackBrowserActivity$44;

    invoke-direct {v2, p0}, Lcom/sec/android/app/music/TrackBrowserActivity$44;-><init>(Lcom/sec/android/app/music/TrackBrowserActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2553
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 2554
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2555
    return-void
.end method

.method private updateNowPlayingView()V
    .registers 13

    .prologue
    const-wide/16 v4, -0x1

    const/16 v11, 0x8

    const/4 v7, 0x0

    const/4 v1, 0x0

    .line 2407
    const v0, 0x7f0c0031

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/TrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 2408
    if-nez v9, :cond_10

    .line 2485
    :goto_f
    return-void

    .line 2412
    :cond_10
    iget v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mMode:I

    const/16 v2, 0x13

    if-eq v0, v2, :cond_1f

    .line 2413
    invoke-virtual {v9, v11}, Landroid/view/View;->setVisibility(I)V

    .line 2414
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mNowPlayingProgressBarHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_f

    .line 2418
    :cond_1f
    sget-object v10, Lcom/sec/android/app/music/MusicUtils;->sService:Lcom/sec/android/app/music/ICorePlayerService;

    .line 2420
    if-eqz v10, :cond_f3

    .line 2425
    :try_start_23
    invoke-interface {v10}, Lcom/sec/android/app/music/ICorePlayerService;->getAudioId()J
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_26} :catch_a7

    move-result-wide v2

    .line 2426
    :try_start_27
    invoke-interface {v10}, Lcom/sec/android/app/music/ICorePlayerService;->isPlaying()Z
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_2a} :catch_fd

    move-result v6

    .line 2427
    :try_start_2b
    invoke-interface {v10}, Lcom/sec/android/app/music/ICorePlayerService;->getTrackName()Ljava/lang/String;
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_2e} :catch_100

    move-result-object v0

    move v8, v6

    move-object v6, v0

    .line 2433
    :goto_31
    cmp-long v0, v2, v4

    if-eqz v0, :cond_f3

    if-eqz v6, :cond_f3

    .line 2434
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2435
    invoke-virtual {p0}, Lcom/sec/android/app/music/TrackBrowserActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 2438
    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v2, 0x140

    if-ne v0, v2, :cond_ce

    .line 2439
    const v0, 0x7f0c003b

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2441
    if-eqz v0, :cond_c1

    .line 2442
    if-eqz v8, :cond_b0

    .line 2443
    const v2, 0x7f020077

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2445
    const v2, 0x7f090160

    invoke-virtual {p0, v2}, Lcom/sec/android/app/music/TrackBrowserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2453
    :goto_6a
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mNowPlayingButton:Landroid/view/View;

    const v2, 0x7f0c0037

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2457
    :try_start_75
    invoke-interface {v10}, Lcom/sec/android/app/music/ICorePlayerService;->getArtistName()Ljava/lang/String;
    :try_end_78
    .catch Landroid/os/RemoteException; {:try_start_75 .. :try_end_78} :catch_c9

    move-result-object v1

    .line 2461
    :goto_79
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2476
    :goto_8f
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mNowPlayingButton:Landroid/view/View;

    const v1, 0x7f0c0035

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2477
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2478
    invoke-virtual {v9, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2479
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mNowPlayingProgressBarHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_f

    .line 2428
    :catch_a7
    move-exception v0

    move-wide v2, v4

    move v6, v7

    .line 2430
    :goto_aa
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    move v8, v6

    move-object v6, v1

    goto :goto_31

    .line 2447
    :cond_b0
    const v2, 0x7f02007b

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2449
    const v2, 0x7f09015f

    invoke-virtual {p0, v2}, Lcom/sec/android/app/music/TrackBrowserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_6a

    .line 2452
    :cond_c1
    sget-object v0, Lcom/sec/android/app/music/TrackBrowserActivity;->CLASSNAME:Ljava/lang/String;

    const-string v2, "updateNowPlayingView: playButton is null"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6a

    .line 2458
    :catch_c9
    move-exception v2

    .line 2459
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_79

    .line 2463
    :cond_ce
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mNowPlayingButton:Landroid/view/View;

    const v1, 0x7f0c0033

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2465
    if-eqz v0, :cond_eb

    .line 2466
    if-eqz v8, :cond_e4

    .line 2467
    const v1, 0x7f02008f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_8f

    .line 2470
    :cond_e4
    const v1, 0x7f02008e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_8f

    .line 2474
    :cond_eb
    sget-object v0, Lcom/sec/android/app/music/TrackBrowserActivity;->CLASSNAME:Ljava/lang/String;

    const-string v1, "updateNowPlayingView: playingIcon is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8f

    .line 2483
    :cond_f3
    invoke-virtual {v9, v11}, Landroid/view/View;->setVisibility(I)V

    .line 2484
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mNowPlayingProgressBarHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto/16 :goto_f

    .line 2428
    :catch_fd
    move-exception v0

    move v6, v7

    goto :goto_aa

    :catch_100
    move-exception v0

    goto :goto_aa
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .registers 2

    .prologue
    .line 2577
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    const v6, 0x7f0c001b

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 1409
    sget-object v0, Lcom/sec/android/app/music/TrackBrowserActivity;->CLASSNAME:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult requestCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1410
    sparse-switch p1, :sswitch_data_12c

    .line 1540
    :cond_21
    :goto_21
    return-void

    .line 1412
    :sswitch_22
    if-ne p2, v3, :cond_21

    .line 1413
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mLoadingProgressBarHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1414
    new-instance v0, Lcom/sec/android/app/music/TrackBrowserActivity$23;

    invoke-direct {v0, p0, p3}, Lcom/sec/android/app/music/TrackBrowserActivity$23;-><init>(Lcom/sec/android/app/music/TrackBrowserActivity;Landroid/content/Intent;)V

    .line 1429
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_21

    .line 1433
    :sswitch_32
    if-ne p2, v3, :cond_21

    .line 1434
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mLoadingProgressBarHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1435
    new-instance v0, Lcom/sec/android/app/music/TrackBrowserActivity$24;

    invoke-direct {v0, p0, p3}, Lcom/sec/android/app/music/TrackBrowserActivity$24;-><init>(Lcom/sec/android/app/music/TrackBrowserActivity;Landroid/content/Intent;)V

    .line 1453
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_21

    .line 1457
    :sswitch_42
    if-ne p2, v3, :cond_21

    .line 1458
    invoke-virtual {p0}, Lcom/sec/android/app/music/TrackBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mSelectedIds:[J

    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3, v5}, Lcom/sec/android/app/music/MusicUtils;->addToPlaylist(Landroid/content/Context;[JJZ)I

    .line 1460
    invoke-virtual {p0}, Lcom/sec/android/app/music/TrackBrowserActivity;->finish()V

    goto :goto_21

    .line 1464
    :sswitch_5d
    if-ne p2, v3, :cond_21

    .line 1465
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1466
    if-eqz v0, :cond_72

    .line 1467
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 1468
    sget-wide v2, Lcom/sec/android/app/music/MusicUtils;->sQuickPlayListId:J

    invoke-static {p0, v2, v3, v0, v1}, Lcom/sec/android/app/music/MusicUtils;->movePlayList(Landroid/content/Context;JJ)[J

    .line 1470
    :cond_72
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mListView:Lcom/sec/android/app/music/MusicContentListView;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/music/MusicContentListView;->reQueryListCursor(Z)V

    goto :goto_21

    .line 1475
    :sswitch_78
    if-ne p2, v3, :cond_21

    .line 1476
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mListView:Lcom/sec/android/app/music/MusicContentListView;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/music/MusicContentListView;->reQueryListCursor(Z)V

    goto :goto_21

    .line 1481
    :sswitch_80
    if-ne p2, v3, :cond_21

    .line 1482
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1483
    if-eqz v0, :cond_21

    .line 1486
    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 1487
    if-eqz v0, :cond_21

    .line 1488
    invoke-virtual {p0, v6}, Lcom/sec/android/app/music/TrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1491
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1492
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1494
    invoke-direct {p0}, Lcom/sec/android/app/music/TrackBrowserActivity;->clearPlayListBitmap()V

    .line 1495
    iput-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mPlayListAlbumArt:Landroid/graphics/Bitmap;

    goto/16 :goto_21

    .line 1500
    :sswitch_a7
    if-ne p2, v3, :cond_21

    .line 1501
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 1502
    if-eqz v1, :cond_21

    .line 1505
    const-string v0, "headTitle"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mHeadTitle:Ljava/lang/String;

    .line 1506
    const v0, 0x7f0c0021

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/TrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1507
    iget-object v2, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mHeadTitle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1508
    invoke-virtual {p0, v6}, Lcom/sec/android/app/music/TrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1510
    const-string v2, "keyword"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1511
    invoke-direct {p0}, Lcom/sec/android/app/music/TrackBrowserActivity;->clearPlayListBitmap()V

    .line 1512
    invoke-virtual {p0}, Lcom/sec/android/app/music/TrackBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/sec/android/app/music/MusicUtils;->getPlayListArtwork(Landroid/content/Context;J)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mPlayListAlbumArt:Landroid/graphics/Bitmap;

    .line 1514
    iget-object v1, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mPlayListAlbumArt:Landroid/graphics/Bitmap;

    if-nez v1, :cond_f2

    .line 1515
    const v1, 0x7f0200d0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_21

    .line 1517
    :cond_f2
    iget-object v1, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mPlayListAlbumArt:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_21

    .line 1522
    :sswitch_f9
    if-ne p2, v3, :cond_100

    .line 1523
    invoke-direct {p0}, Lcom/sec/android/app/music/TrackBrowserActivity;->finishActivityIfNoItem()V

    goto/16 :goto_21

    .line 1524
    :cond_100
    if-nez p2, :cond_21

    .line 1527
    iget-boolean v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mIsNowPlayingList:Z

    if-eqz v0, :cond_21

    iget v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mTabFrom:I

    if-ne v0, v5, :cond_21

    .line 1528
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mKeyWord:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 1529
    const-wide/16 v2, -0xe

    cmp-long v2, v0, v2

    if-eqz v2, :cond_21

    const-wide/16 v2, -0xc

    cmp-long v2, v0, v2

    if-eqz v2, :cond_21

    const-wide/16 v2, -0xd

    cmp-long v0, v0, v2

    if-eqz v0, :cond_21

    .line 1532
    invoke-direct {p0}, Lcom/sec/android/app/music/TrackBrowserActivity;->finishActivityIfNoItem()V

    goto/16 :goto_21

    .line 1410
    nop

    :sswitch_data_12c
    .sparse-switch
        0x2 -> :sswitch_5d
        0x5 -> :sswitch_22
        0x6 -> :sswitch_32
        0x7 -> :sswitch_78
        0xb -> :sswitch_f9
        0xf -> :sswitch_a7
        0x10 -> :sswitch_42
        0x19 -> :sswitch_80
    .end sparse-switch
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1879
    sget-object v0, Lcom/sec/android/app/music/TrackBrowserActivity;->CLASSNAME:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onContextItemSelected item.getItemId(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1881
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_d4

    .line 1952
    :goto_26
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 1883
    :sswitch_2b
    invoke-direct {p0}, Lcom/sec/android/app/music/TrackBrowserActivity;->showDeleteDialog()V

    goto :goto_26

    .line 1886
    :sswitch_2f
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mLoadingProgressBarHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1887
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mListView:Lcom/sec/android/app/music/MusicContentListView;

    iget v1, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mSelectedPosition:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/music/MusicContentListView;->getListItemInfo(I)Lcom/sec/android/app/music/TrackListView$ListItemInfo;

    move-result-object v0

    .line 1888
    iget-object v1, v0, Lcom/sec/android/app/music/TrackListView$ListItemInfo;->keyWord:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 1889
    new-instance v3, Lcom/sec/android/app/music/TrackBrowserActivity$28;

    invoke-direct {v3, p0, v1, v2, v0}, Lcom/sec/android/app/music/TrackBrowserActivity$28;-><init>(Lcom/sec/android/app/music/TrackBrowserActivity;JLcom/sec/android/app/music/TrackListView$ListItemInfo;)V

    .line 1911
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_26

    .line 1916
    :sswitch_4f
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/music/TrackBrowserActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1917
    const-string v1, "tabFrom"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1918
    const-string v1, "mode"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1919
    const-string v1, "selectMode"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1920
    invoke-virtual {p0, v0, v5}, Lcom/sec/android/app/music/TrackBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_26

    .line 1923
    :sswitch_69
    invoke-virtual {p0}, Lcom/sec/android/app/music/TrackBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-array v1, v3, [J

    iget-wide v2, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mSelectedId:J

    aput-wide v2, v1, v4

    invoke-static {v0, v1}, Lcom/sec/android/app/music/MusicUtils;->addToQuicklist(Landroid/content/Context;[J)V

    goto :goto_26

    .line 1928
    :sswitch_77
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/music/TrackBrowserActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1929
    const-string v1, "tabFrom"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1930
    const-string v1, "keyword"

    sget-wide v2, Lcom/sec/android/app/music/MusicUtils;->sQuickPlayListId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1932
    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/TrackBrowserActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_26

    .line 1937
    :sswitch_92
    :try_start_92
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1938
    invoke-virtual {p0}, Lcom/sec/android/app/music/TrackBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mSelectedId:J

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/music/MusicUtils;->getMimeType(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1939
    const-string v1, "android.intent.extra.STREAM"

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mSelectedId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1941
    const v1, 0x7f09002f

    invoke-virtual {p0, v1}, Lcom/sec/android/app/music/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/TrackBrowserActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_c1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_92 .. :try_end_c1} :catch_c3

    goto/16 :goto_26

    .line 1942
    :catch_c3
    move-exception v0

    .line 1943
    sget-object v0, Lcom/sec/android/app/music/TrackBrowserActivity;->CLASSNAME:Ljava/lang/String;

    const-string v1, "SHARE_TRACK_VIA, ActivityNotFoundException"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_26

    .line 1947
    :sswitch_cd
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/TrackBrowserActivity;->showDialog(I)V

    goto/16 :goto_26

    .line 1881
    nop

    :sswitch_data_d4
    .sparse-switch
        0x3 -> :sswitch_92
        0x4 -> :sswitch_cd
        0x5 -> :sswitch_4f
        0xb -> :sswitch_2b
        0xc -> :sswitch_2f
        0x16 -> :sswitch_69
        0x17 -> :sswitch_77
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 15
    .parameter "savedInstanceState"

    .prologue
    const/4 v12, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 272
    sget-object v0, Lcom/sec/android/app/music/TrackBrowserActivity;->CLASSNAME:Ljava/lang/String;

    const-string v1, " onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 275
    invoke-virtual {p0, v2}, Lcom/sec/android/app/music/TrackBrowserActivity;->setVolumeControlStream(I)V

    .line 278
    invoke-static {p0, p0}, Lcom/sec/android/app/music/MusicUtils;->bindToService(Landroid/app/Activity;Landroid/content/ServiceConnection;)Lcom/sec/android/app/music/MusicUtils$ServiceToken;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mToken:Lcom/sec/android/app/music/MusicUtils$ServiceToken;

    .line 280
    new-instance v11, Landroid/content/IntentFilter;

    invoke-direct {v11}, Landroid/content/IntentFilter;-><init>()V

    .line 281
    .local v11, f:Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 282
    const-string v0, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 283
    const-string v0, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 284
    const-string v0, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 285
    const-string v0, "file"

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v11}, Lcom/sec/android/app/music/TrackBrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 288
    invoke-virtual {p0}, Lcom/sec/android/app/music/TrackBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    .line 290
    .local v10, data:Landroid/os/Bundle;
    const-string v0, "mode"

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mMode:I

    .line 291
    const-string v0, "tabFrom"

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mTabFrom:I

    .line 292
    const-string v0, "keyword"

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mKeyWord:Ljava/lang/String;

    .line 293
    const-string v0, "nowPlaying"

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mIsNowPlayingList:Z

    .line 294
    const-string v0, "listfocus"

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mListFocus:I

    .line 295
    const-string v0, "album"

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 296
    .local v6, albumId:Ljava/lang/String;
    const-string v0, "albumIdForAlbumArt"

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 297
    .local v7, albumIdForAlbumArt:Ljava/lang/String;
    const-string v0, "all_list"

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 300
    .local v8, all_listId:Ljava/lang/String;
    const-string v0, "artist"

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 301
    .local v9, artistId:Ljava/lang/String;
    iget v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mTabFrom:I

    if-nez v0, :cond_8d

    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mKeyWord:Ljava/lang/String;

    if-eqz v0, :cond_8d

    .line 302
    iput-object v8, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mKeyWord:Ljava/lang/String;

    .line 304
    :cond_8d
    if-eqz v6, :cond_93

    .line 305
    iput v12, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mTabFrom:I

    .line 306
    iput-object v6, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mKeyWord:Ljava/lang/String;

    .line 308
    :cond_93
    if-eqz v9, :cond_99

    .line 309
    iput v2, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mTabFrom:I

    .line 310
    iput-object v9, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mKeyWord:Ljava/lang/String;

    .line 313
    :cond_99
    const-string v0, "headTitle"

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mHeadTitle:Ljava/lang/String;

    .line 314
    const-string v0, "selectMode"

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mIsSlectMode:Z

    .line 316
    iget v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mMode:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_d5

    iget v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mMode:I

    const/16 v1, 0x10

    if-eq v0, v1, :cond_d5

    iget v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mMode:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_d5

    iget v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mMode:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_d5

    iget v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mMode:I

    const/16 v1, 0x11

    if-eq v0, v1, :cond_d5

    iget v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mMode:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_d5

    iget v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mTabFrom:I

    if-eqz v0, :cond_d5

    iget v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mTabFrom:I

    if-eq v0, v2, :cond_d5

    .line 320
    invoke-virtual {p0, v5}, Lcom/sec/android/app/music/TrackBrowserActivity;->requestWindowFeature(I)Z

    .line 323
    :cond_d5
    const v0, 0x7f030030

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/TrackBrowserActivity;->setContentView(I)V

    .line 324
    const v0, 0x7f0c00f7

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/TrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/music/MusicContentListView;

    iput-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mListView:Lcom/sec/android/app/music/MusicContentListView;

    .line 326
    iget v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mMode:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_113

    .line 327
    iget-boolean v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mIsSlectMode:Z

    if-eqz v0, :cond_103

    .line 328
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mListView:Lcom/sec/android/app/music/MusicContentListView;

    iget v1, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mTabFrom:I

    iget-object v2, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mKeyWord:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mIsSlectMode:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/music/MusicContentListView;->init(ILjava/lang/String;ZZ)V

    .line 329
    invoke-direct {p0}, Lcom/sec/android/app/music/TrackBrowserActivity;->makeAddToPlayListHeader()V

    .line 364
    :goto_fd
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mListView:Lcom/sec/android/app/music/MusicContentListView;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/TrackBrowserActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 365
    return-void

    .line 331
    :cond_103
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mListView:Lcom/sec/android/app/music/MusicContentListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v3, v4, v4}, Lcom/sec/android/app/music/MusicContentListView;->init(ILjava/lang/String;ZZ)V

    .line 332
    invoke-direct {p0}, Lcom/sec/android/app/music/TrackBrowserActivity;->makeSelectPlayListHeader()V

    .line 333
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mListView:Lcom/sec/android/app/music/MusicContentListView;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/music/MusicContentListView;->setOnMusicPlayListItemClickListener(Lcom/sec/android/app/music/widget/OnMusicPlayListItemClickListener;)V

    goto :goto_fd

    .line 335
    :cond_113
    iget v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mMode:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_125

    .line 336
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mListView:Lcom/sec/android/app/music/MusicContentListView;

    iget v1, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mTabFrom:I

    iget-object v2, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mKeyWord:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v5, v4}, Lcom/sec/android/app/music/MusicContentListView;->init(ILjava/lang/String;ZZ)V

    .line 337
    invoke-direct {p0}, Lcom/sec/android/app/music/TrackBrowserActivity;->makeAddToThisPlayListHeader()V

    goto :goto_fd

    .line 338
    :cond_125
    iget v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mMode:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_13b

    .line 339
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mListView:Lcom/sec/android/app/music/MusicContentListView;

    iget v1, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mTabFrom:I

    invoke-virtual {v0, v1, v3, v4, v4}, Lcom/sec/android/app/music/MusicContentListView;->init(ILjava/lang/String;ZZ)V

    .line 340
    invoke-direct {p0}, Lcom/sec/android/app/music/TrackBrowserActivity;->makeSelectPlayListHeader()V

    .line 341
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mListView:Lcom/sec/android/app/music/MusicContentListView;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/music/MusicContentListView;->setOnMusicPlayListItemClickListener(Lcom/sec/android/app/music/widget/OnMusicPlayListItemClickListener;)V

    goto :goto_fd

    .line 342
    :cond_13b
    iget v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mMode:I

    if-eq v0, v12, :cond_143

    iget v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mMode:I

    if-ne v0, v5, :cond_150

    .line 344
    :cond_143
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mListView:Lcom/sec/android/app/music/MusicContentListView;

    iget v1, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mTabFrom:I

    const-string v2, ""

    invoke-virtual {v0, v1, v2, v4, v4}, Lcom/sec/android/app/music/MusicContentListView;->init(ILjava/lang/String;ZZ)V

    .line 345
    invoke-direct {p0}, Lcom/sec/android/app/music/TrackBrowserActivity;->makeCreatePlayListHeader()V

    goto :goto_fd

    .line 346
    :cond_150
    iget v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mMode:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_167

    .line 347
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mListView:Lcom/sec/android/app/music/MusicContentListView;

    iget v1, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mTabFrom:I

    iget-object v2, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mKeyWord:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v4, v4}, Lcom/sec/android/app/music/MusicContentListView;->init(ILjava/lang/String;ZZ)V

    .line 348
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mHeadTitle:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mKeyWord:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/music/TrackBrowserActivity;->makeEditPlayListHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_fd

    .line 349
    :cond_167
    iget v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mMode:I

    const/16 v1, 0x11

    if-ne v0, v1, :cond_17d

    .line 350
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mListView:Lcom/sec/android/app/music/MusicContentListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v3, v4, v4}, Lcom/sec/android/app/music/MusicContentListView;->init(ILjava/lang/String;ZZ)V

    .line 351
    invoke-direct {p0}, Lcom/sec/android/app/music/TrackBrowserActivity;->makeEditItemPlayListHeader()V

    .line 352
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mListView:Lcom/sec/android/app/music/MusicContentListView;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/music/MusicContentListView;->setOnMusicPlayListItemClickListener(Lcom/sec/android/app/music/widget/OnMusicPlayListItemClickListener;)V

    goto :goto_fd

    .line 353
    :cond_17d
    iget v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mMode:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_195

    .line 354
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mListView:Lcom/sec/android/app/music/MusicContentListView;

    iget v1, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mTabFrom:I

    iget-object v2, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mKeyWord:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v5, v4}, Lcom/sec/android/app/music/MusicContentListView;->init(ILjava/lang/String;ZZ)V

    .line 355
    iget v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mTabFrom:I

    iget-object v1, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mKeyWord:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/music/TrackBrowserActivity;->makeDeleteItemsHeader(ILjava/lang/String;)V

    goto/16 :goto_fd

    .line 356
    :cond_195
    iget v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mMode:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1ae

    .line 357
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mListView:Lcom/sec/android/app/music/MusicContentListView;

    iget v1, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mTabFrom:I

    sget-wide v2, Lcom/sec/android/app/music/MusicUtils;->sReorderPlayListId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/sec/android/app/music/MusicContentListView;->init(ILjava/lang/String;ZZ)V

    .line 358
    iget v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mTabFrom:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/music/TrackBrowserActivity;->makeChangeOrderHeader(I)V

    goto/16 :goto_fd

    .line 360
    :cond_1ae
    const/16 v0, 0x13

    iput v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mMode:I

    .line 361
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mListView:Lcom/sec/android/app/music/MusicContentListView;

    iget v1, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mTabFrom:I

    iget-object v2, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mKeyWord:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mIsSlectMode:Z

    iget-boolean v5, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mIsNowPlayingList:Z

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/music/MusicContentListView;->init(ILjava/lang/String;ZZZ)V

    .line 362
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mHeadTitle:Ljava/lang/String;

    invoke-direct {p0, v0, v7}, Lcom/sec/android/app/music/TrackBrowserActivity;->makePlayListHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_fd
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 13
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 1752
    move-object v0, p3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 1755
    if-eqz v0, :cond_10

    iget v1, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mMode:I

    const/16 v2, 0x13

    if-eq v1, v2, :cond_11

    .line 1793
    :cond_10
    :goto_10
    return-void

    .line 1759
    :cond_11
    iget v1, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iput v1, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mSelectedPosition:I

    .line 1760
    iget v1, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mTabFrom:I

    if-ne v1, v6, :cond_d0

    .line 1761
    invoke-virtual {p0}, Lcom/sec/android/app/music/TrackBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "albumIdForAlbumArt"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 1762
    const-wide/16 v2, -0xe

    cmp-long v2, v0, v2

    if-eqz v2, :cond_4d

    const-wide/16 v2, -0xc

    cmp-long v2, v0, v2

    if-eqz v2, :cond_4d

    const-wide/16 v2, -0xd

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4d

    .line 1765
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mListView:Lcom/sec/android/app/music/MusicContentListView;

    iget v1, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mSelectedPosition:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/music/MusicContentListView;->getAudioId(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mSelectedId:J

    .line 1766
    const/16 v0, 0xc

    const/16 v1, 0xc

    const v2, 0x7f090038

    invoke-interface {p1, v4, v0, v1, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1773
    :cond_4d
    :goto_4d
    sget-object v0, Lcom/sec/android/app/music/TrackBrowserActivity;->CLASSNAME:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateContextMenu mSelectedId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mSelectedId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1775
    invoke-virtual {p0}, Lcom/sec/android/app/music/TrackBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mSelectedId:J

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/music/MusicUtils;->getTitle(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 1776
    const v0, 0x7f09002f

    invoke-interface {p1, v4, v7, v7, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1777
    const v0, 0x7f090030

    invoke-interface {p1, v4, v5, v5, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1778
    const v0, 0x7f09003c

    invoke-interface {p1, v4, v8, v8, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1779
    const-wide/16 v0, -0x1

    .line 1780
    iget-object v2, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mKeyWord:Ljava/lang/String;

    if-eqz v2, :cond_a4

    iget v2, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mTabFrom:I

    if-eq v2, v5, :cond_a4

    iget v2, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mTabFrom:I

    const/4 v3, 0x6

    if-eq v2, v3, :cond_a4

    iget v2, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mTabFrom:I

    const/4 v3, 0x7

    if-eq v2, v3, :cond_a4

    .line 1783
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mKeyWord:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 1787
    :cond_a4
    const-wide/16 v2, -0xb

    cmp-long v2, v0, v2

    if-nez v2, :cond_b4

    sget-wide v2, Lcom/sec/android/app/music/MusicUtils;->sQuickPlayListId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_b4

    iget v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mTabFrom:I

    if-eq v0, v6, :cond_c8

    .line 1788
    :cond_b4
    const/16 v0, 0x16

    const/16 v1, 0x16

    const v2, 0x7f09003d

    invoke-interface {p1, v4, v0, v1, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1789
    const/16 v0, 0x17

    const/16 v1, 0x17

    const v2, 0x7f09003e

    invoke-interface {p1, v4, v0, v1, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1791
    :cond_c8
    invoke-direct {p0, p1}, Lcom/sec/android/app/music/TrackBrowserActivity;->prepareContextMenu(Landroid/view/ContextMenu;)V

    .line 1792
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    goto/16 :goto_10

    .line 1769
    :cond_d0
    iget-wide v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    iput-wide v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mSelectedId:J

    .line 1770
    const/16 v0, 0xb

    const/16 v1, 0xb

    const v2, 0x7f090041

    invoke-interface {p1, v4, v0, v1, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_4d
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1957
    packed-switch p1, :pswitch_data_44

    .line 1982
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    :goto_b
    return-object v0

    .line 1959
    :pswitch_c
    new-array v0, v1, [I

    fill-array-data v0, :array_4a

    .line 1963
    new-array v1, v1, [Ljava/lang/CharSequence;

    aget v2, v0, v3

    invoke-virtual {p0, v2}, Lcom/sec/android/app/music/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    aget v2, v0, v4

    invoke-virtual {p0, v2}, Lcom/sec/android/app/music/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    aget v2, v0, v5

    invoke-virtual {p0, v2}, Lcom/sec/android/app/music/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    .line 1966
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1967
    const v3, 0x7f090030

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1968
    new-instance v3, Lcom/sec/android/app/music/TrackBrowserActivity$29;

    invoke-direct {v3, p0, v0}, Lcom/sec/android/app/music/TrackBrowserActivity$29;-><init>(Lcom/sec/android/app/music/TrackBrowserActivity;[I)V

    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1977
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_b

    .line 1957
    nop

    :pswitch_data_44
    .packed-switch 0x4
        :pswitch_c
    .end packed-switch

    .line 1959
    :array_4a
    .array-data 0x4
        0x54t 0x0t 0x9t 0x7ft
        0x55t 0x0t 0x9t 0x7ft
        0x56t 0x0t 0x9t 0x7ft
    .end array-data
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 9
    .parameter

    .prologue
    const/4 v6, 0x7

    const/4 v5, 0x6

    const/4 v4, 0x5

    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 2019
    iget v1, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mMode:I

    const/16 v2, 0x13

    if-eq v1, v2, :cond_c

    .line 2041
    :goto_b
    return v0

    .line 2022
    :cond_c
    const v1, 0x7f090037

    invoke-interface {p1, v0, v3, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f020021

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2024
    const/16 v1, 0x9

    const/16 v2, 0x9

    const v3, 0x7f090039

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f020023

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2026
    const v1, 0x7f09013f

    invoke-interface {p1, v0, v6, v6, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f02001d

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2028
    const/16 v1, 0xf

    const/16 v2, 0xf

    const v3, 0x7f090040

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f020018

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2030
    const v1, 0x7f09003c

    invoke-interface {p1, v0, v4, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f020011

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2032
    const v1, 0x7f09003f

    invoke-interface {p1, v0, v5, v5, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f020010

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2034
    const/16 v1, 0xb

    const/16 v2, 0xb

    const v3, 0x7f090041

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f02001f

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2036
    const/16 v1, 0xc

    const/16 v2, 0xc

    const v3, 0x7f090038

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f02001f

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2038
    const/16 v1, 0x12

    const/16 v2, 0x12

    const v3, 0x7f090004

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f020026

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2040
    const/16 v1, 0x8

    const/16 v2, 0x8

    const v3, 0x7f090047

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 2041
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    goto/16 :goto_b
.end method

.method protected onDestroy()V
    .registers 5

    .prologue
    .line 1663
    sget-object v0, Lcom/sec/android/app/music/TrackBrowserActivity;->CLASSNAME:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1664
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/TrackBrowserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1666
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mLoadingProgressBarHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1667
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mLoadingProgress:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mLoadingProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1669
    :try_start_1e
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mLoadingProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_23
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1e .. :try_end_23} :catch_53

    .line 1678
    :cond_23
    :goto_23
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mListView:Lcom/sec/android/app/music/MusicContentListView;

    invoke-virtual {v0}, Lcom/sec/android/app/music/MusicContentListView;->closeListCursor()V

    .line 1679
    invoke-direct {p0}, Lcom/sec/android/app/music/TrackBrowserActivity;->clearPlayListBitmap()V

    .line 1680
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mToken:Lcom/sec/android/app/music/MusicUtils$ServiceToken;

    invoke-static {v0}, Lcom/sec/android/app/music/MusicUtils;->unbindFromService(Lcom/sec/android/app/music/MusicUtils$ServiceToken;)V

    .line 1683
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mBatteryChecker:Lcom/sec/android/app/music/common/util/BatteryChecker;

    if-eqz v0, :cond_49

    .line 1684
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mBatteryChecker:Lcom/sec/android/app/music/common/util/BatteryChecker;

    invoke-virtual {v0}, Lcom/sec/android/app/music/common/util/BatteryChecker;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_44

    .line 1685
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mBatteryChecker:Lcom/sec/android/app/music/common/util/BatteryChecker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/music/common/util/BatteryChecker;->cancel(Z)Z

    .line 1687
    :cond_44
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mBatteryChecker:Lcom/sec/android/app/music/common/util/BatteryChecker;

    invoke-virtual {v0}, Lcom/sec/android/app/music/common/util/BatteryChecker;->removeCallback()V

    .line 1690
    :cond_49
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mRequeryHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1691
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1692
    return-void

    .line 1670
    :catch_53
    move-exception v0

    .line 1674
    sget-object v1, Lcom/sec/android/app/music/TrackBrowserActivity;->CLASSNAME:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mContentChangedListenHandler "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1736
    iget-boolean v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mIsNowPlayingList:Z

    if-eqz v0, :cond_15

    .line 1737
    const/4 v0, 0x4

    if-ne p1, v0, :cond_15

    .line 1738
    invoke-virtual {p0}, Lcom/sec/android/app/music/TrackBrowserActivity;->finish()V

    .line 1739
    const v0, 0x7f040005

    const v1, 0x7f040006

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/music/TrackBrowserActivity;->overridePendingTransition(II)V

    .line 1740
    const/4 v0, 0x1

    .line 1743
    :goto_14
    return v0

    :cond_15
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_14
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 10
    .parameter

    .prologue
    const/16 v5, 0xf

    const/16 v7, 0xb

    const/4 v4, 0x6

    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 2102
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_10c

    .line 2182
    :pswitch_e
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_12
    return v0

    .line 2104
    :pswitch_13
    iget v1, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mTabFrom:I

    iget-object v2, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mKeyWord:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/sec/android/app/music/MusicUtils;->setListFrom(ILjava/lang/String;)V

    .line 2105
    invoke-virtual {p0}, Lcom/sec/android/app/music/TrackBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mListView:Lcom/sec/android/app/music/MusicContentListView;

    invoke-virtual {v2}, Lcom/sec/android/app/music/MusicContentListView;->getListItems()[J

    move-result-object v2

    invoke-static {v1, v2, v3, v0}, Lcom/sec/android/app/music/MusicUtils;->playAll(Landroid/content/Context;[JIZ)V

    goto :goto_12

    .line 2108
    :pswitch_28
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/app/music/TrackBrowserActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2109
    const-string v2, "mode"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2110
    const-string v2, "doNotLaunchOtherActivity"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2111
    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/music/TrackBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_12

    .line 2114
    :pswitch_3e
    invoke-static {p0}, Lcom/sec/android/app/music/MusicUtils;->doSearch(Landroid/app/Activity;)V

    goto :goto_12

    .line 2117
    :pswitch_42
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/app/music/TrackBrowserActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2118
    const-string v2, "tabFrom"

    iget v3, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mTabFrom:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2119
    const-string v2, "keyword"

    iget-object v3, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mKeyWord:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2120
    const-string v2, "mode"

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2121
    const-string v2, "selectMode"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2122
    invoke-virtual {p0, v1}, Lcom/sec/android/app/music/TrackBrowserActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_12

    .line 2125
    :pswitch_66
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/app/music/TrackBrowserActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2126
    const-string v2, "tabFrom"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2127
    const-string v2, "mode"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2128
    const-string v2, "selectMode"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2129
    invoke-virtual {p0, v1, v4}, Lcom/sec/android/app/music/TrackBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_12

    .line 2132
    :pswitch_80
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/app/music/TrackBrowserActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2133
    const-string v2, "tabFrom"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2134
    const-string v2, "mode"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2135
    const-string v2, "keyword"

    iget-object v3, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mKeyWord:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2136
    const-string v2, "headTitle"

    iget-object v3, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mHeadTitle:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2138
    invoke-virtual {p0, v1, v5}, Lcom/sec/android/app/music/TrackBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_12

    .line 2142
    :pswitch_a4
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/app/music/TrackBrowserActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2143
    iget v2, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mTabFrom:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2144
    iget v3, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mTabFrom:I

    if-ne v3, v0, :cond_d1

    .line 2145
    iget-object v3, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mKeyWord:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 2146
    const-wide/16 v5, -0xb

    cmp-long v3, v3, v5

    if-nez v3, :cond_d1

    .line 2147
    sget-wide v3, Lcom/sec/android/app/music/MusicUtils;->sQuickPlayListId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mKeyWord:Ljava/lang/String;

    .line 2150
    :cond_d1
    const-string v3, "tabFrom"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2151
    const-string v2, "mode"

    invoke-virtual {v1, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2152
    const-string v2, "keyword"

    iget-object v3, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mKeyWord:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2153
    const-string v2, "selectMode"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2154
    invoke-virtual {p0, v1, v7}, Lcom/sec/android/app/music/TrackBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_12

    .line 2157
    :pswitch_ec
    iget-object v1, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mLoadingProgressBarHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2158
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/sec/android/app/music/TrackBrowserActivity$30;

    invoke-direct {v2, p0}, Lcom/sec/android/app/music/TrackBrowserActivity$30;-><init>(Lcom/sec/android/app/music/TrackBrowserActivity;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2175
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto/16 :goto_12

    .line 2178
    :pswitch_100
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2179
    invoke-virtual {p0, v1}, Lcom/sec/android/app/music/TrackBrowserActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_12

    .line 2102
    :pswitch_data_10c
    .packed-switch 0x1
        :pswitch_28
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_42
        :pswitch_66
        :pswitch_ec
        :pswitch_13
        :pswitch_3e
        :pswitch_e
        :pswitch_a4
        :pswitch_a4
        :pswitch_e
        :pswitch_e
        :pswitch_80
        :pswitch_e
        :pswitch_e
        :pswitch_100
    .end packed-switch
.end method

.method protected onPause()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1638
    sget-object v0, Lcom/sec/android/app/music/TrackBrowserActivity;->CLASSNAME:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1639
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1640
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mListView:Lcom/sec/android/app/music/MusicContentListView;

    invoke-virtual {v0}, Lcom/sec/android/app/music/MusicContentListView;->stopNowplayingProgress()V

    .line 1641
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mNowPlayingProgressBarHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1643
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/music/common/util/BatteryChecker;->mShowPopup:Ljava/lang/Boolean;

    .line 1644
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mBatteryChecker:Lcom/sec/android/app/music/common/util/BatteryChecker;

    if-eqz v0, :cond_24

    .line 1645
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mBatteryChecker:Lcom/sec/android/app/music/common/util/BatteryChecker;

    invoke-virtual {v0}, Lcom/sec/android/app/music/common/util/BatteryChecker;->removeCallback()V

    .line 1647
    :cond_24
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/TrackBrowserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1648
    invoke-virtual {p0, v2}, Lcom/sec/android/app/music/TrackBrowserActivity;->setEnableTextScroll(Z)V

    .line 1649
    return-void
.end method

.method public onPlayListItemClick(Ljava/lang/String;)V
    .registers 11
    .parameter

    .prologue
    const/4 v4, 0x0

    const/16 v8, 0xf

    const/4 v3, 0x1

    const/4 v7, 0x0

    .line 1382
    sget-object v0, Lcom/sec/android/app/music/TrackBrowserActivity;->CLASSNAME:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick playlist id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1383
    iget v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mMode:I

    const/16 v1, 0x11

    if-ne v0, v1, :cond_79

    .line 1384
    new-instance v6, Landroid/content/Intent;

    const-class v0, Lcom/sec/android/app/music/TrackBrowserActivity;

    invoke-direct {v6, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1385
    const-string v0, "tabFrom"

    invoke-virtual {v6, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1386
    const-string v0, "mode"

    invoke-virtual {v6, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1387
    const-string v0, "keyword"

    invoke-virtual {v6, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1388
    invoke-virtual {p0}, Lcom/sec/android/app/music/TrackBrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v3, [Ljava/lang/String;

    const-string v3, "name"

    aput-object v3, v2, v7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1392
    if-eqz v0, :cond_6e

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 1393
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mHeadTitle:Ljava/lang/String;

    .line 1394
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1396
    :cond_6e
    const-string v0, "headTitle"

    iget-object v1, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mHeadTitle:Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1398
    invoke-virtual {p0, v6, v8}, Lcom/sec/android/app/music/TrackBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1404
    :goto_78
    return-void

    .line 1400
    :cond_79
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1401
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/music/TrackBrowserActivity;->setResult(ILandroid/content/Intent;)V

    .line 1402
    invoke-virtual {p0}, Lcom/sec/android/app/music/TrackBrowserActivity;->finish()V

    goto :goto_78
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 11
    .parameter "menu"

    .prologue
    const/4 v8, 0x6

    const/4 v7, 0x7

    const/4 v6, 0x5

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2046
    iget v2, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mTabFrom:I

    if-ne v2, v5, :cond_fe

    .line 2047
    iget-object v2, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mKeyWord:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 2048
    .local v0, plid:J
    const-wide/16 v2, -0xb

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1f

    sget-wide v2, Lcom/sec/android/app/music/MusicUtils;->sQuickPlayListId:J

    cmp-long v2, v0, v2

    if-nez v2, :cond_9e

    .line 2050
    :cond_1f
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2051
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2052
    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2053
    const/16 v2, 0xf

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2054
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2070
    :goto_44
    const/16 v2, 0xc

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2071
    const/16 v2, 0xb

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2072
    const/16 v2, 0x12

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2073
    const/16 v2, 0x9

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2088
    .end local v0           #plid:J
    :goto_68
    const/16 v2, 0x8

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2091
    iget-object v2, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mListView:Lcom/sec/android/app/music/MusicContentListView;

    invoke-virtual {v2}, Lcom/sec/android/app/music/MusicContentListView;->getCount()I

    move-result v2

    if-nez v2, :cond_99

    .line 2092
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2093
    const/16 v2, 0xc

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2094
    const/16 v2, 0xb

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2095
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2097
    :cond_99
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    return v2

    .line 2055
    .restart local v0       #plid:J
    :cond_9e
    const-wide/16 v2, -0xc

    cmp-long v2, v0, v2

    if-eqz v2, :cond_b0

    const-wide/16 v2, -0xd

    cmp-long v2, v0, v2

    if-eqz v2, :cond_b0

    const-wide/16 v2, -0xe

    cmp-long v2, v0, v2

    if-nez v2, :cond_d7

    .line 2058
    :cond_b0
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2059
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2060
    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2061
    const/16 v2, 0xf

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2062
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_44

    .line 2064
    :cond_d7
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2065
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2066
    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2067
    const/16 v2, 0xf

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2068
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_44

    .line 2075
    .end local v0           #plid:J
    :cond_fe
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2076
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2077
    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2078
    const/16 v2, 0xc

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2079
    const/16 v2, 0xb

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2080
    const/16 v2, 0xf

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2081
    const/16 v2, 0x12

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2082
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2083
    const/16 v2, 0x9

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_68
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 7
    .parameter

    .prologue
    .line 1714
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1715
    iget-boolean v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mIsSlectMode:Z

    if-eqz v0, :cond_1c

    .line 1716
    if-nez p1, :cond_a

    .line 1732
    :goto_9
    return-void

    .line 1719
    :cond_a
    const-string v0, "positions"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    .line 1720
    iget-object v1, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mListView:Lcom/sec/android/app/music/MusicContentListView;

    new-instance v2, Lcom/sec/android/app/music/TrackBrowserActivity$27;

    invoke-direct {v2, p0, v0}, Lcom/sec/android/app/music/TrackBrowserActivity$27;-><init>(Lcom/sec/android/app/music/TrackBrowserActivity;[I)V

    const-wide/16 v3, 0x12c

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/app/music/MusicContentListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1730
    :cond_1c
    const-string v0, "selectedId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mSelectedId:J

    .line 1731
    const-string v0, "selectedIds"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mSelectedIds:[J

    goto :goto_9
.end method

.method protected onResume()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1566
    sget-object v0, Lcom/sec/android/app/music/TrackBrowserActivity;->CLASSNAME:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1567
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1568
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1569
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1570
    const-string v1, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1571
    iget-object v1, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/music/TrackBrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1573
    const v0, 0x7f0c0028

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/TrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 1574
    if-eqz v0, :cond_42

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v1

    if-nez v1, :cond_42

    .line 1575
    iget-object v1, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mListView:Lcom/sec/android/app/music/MusicContentListView;

    invoke-virtual {v1}, Lcom/sec/android/app/music/MusicContentListView;->getCount()I

    move-result v1

    if-nez v1, :cond_42

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_42

    .line 1576
    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1580
    :cond_42
    invoke-static {}, Lcom/sec/android/app/music/MusicUtils;->isMediaMounted()Z

    move-result v0

    if-nez v0, :cond_4c

    .line 1581
    invoke-virtual {p0}, Lcom/sec/android/app/music/TrackBrowserActivity;->finish()V

    .line 1633
    :cond_4b
    :goto_4b
    return-void

    .line 1585
    :cond_4c
    iget v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mMode:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_91

    .line 1587
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mListView:Lcom/sec/android/app/music/MusicContentListView;

    invoke-virtual {v0}, Lcom/sec/android/app/music/MusicContentListView;->updatePlayOrder()V

    .line 1592
    :goto_56
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mListView:Lcom/sec/android/app/music/MusicContentListView;

    new-instance v1, Lcom/sec/android/app/music/TrackBrowserActivity$25;

    invoke-direct {v1, p0}, Lcom/sec/android/app/music/TrackBrowserActivity$25;-><init>(Lcom/sec/android/app/music/TrackBrowserActivity;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/music/MusicContentListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1599
    iget v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mTabFrom:I

    if-ne v0, v5, :cond_7a

    iget v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mMode:I

    const/16 v1, 0x13

    if-eq v0, v1, :cond_7a

    .line 1600
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mListView:Lcom/sec/android/app/music/MusicContentListView;

    const v1, 0x7f0c0023

    invoke-virtual {v0, v1}, Lcom/sec/android/app/music/MusicContentListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1601
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1603
    :cond_7a
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mNowPlayingProgressBarHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1606
    sget-object v0, Lcom/sec/android/app/music/common/util/BatteryChecker;->mFinishApp:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_97

    .line 1607
    invoke-virtual {p0}, Lcom/sec/android/app/music/TrackBrowserActivity;->finish()V

    .line 1608
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/music/common/util/BatteryChecker;->mFinishApp:Ljava/lang/Boolean;

    goto :goto_4b

    .line 1589
    :cond_91
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mListView:Lcom/sec/android/app/music/MusicContentListView;

    invoke-virtual {v0}, Lcom/sec/android/app/music/MusicContentListView;->startNowplayingProgress()V

    goto :goto_56

    .line 1611
    :cond_97
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mBatteryChecker:Lcom/sec/android/app/music/common/util/BatteryChecker;

    if-eqz v0, :cond_aa

    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mBatteryChecker:Lcom/sec/android/app/music/common/util/BatteryChecker;

    invoke-virtual {v0}, Lcom/sec/android/app/music/common/util/BatteryChecker;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_aa

    .line 1612
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mBatteryChecker:Lcom/sec/android/app/music/common/util/BatteryChecker;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/music/common/util/BatteryChecker;->cancel(Z)Z

    .line 1614
    :cond_aa
    sget-object v1, Lcom/sec/android/app/music/common/util/BatteryChecker;->mShowPopup:Ljava/lang/Boolean;

    monitor-enter v1

    .line 1615
    :try_start_ad
    sget-object v0, Lcom/sec/android/app/music/common/util/BatteryChecker;->mShowPopup:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_c7

    .line 1616
    new-instance v0, Lcom/sec/android/app/music/common/util/BatteryChecker;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/common/util/BatteryChecker;-><init>(Lcom/sec/android/app/music/common/util/OnLowBatteryListener;)V

    iput-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mBatteryChecker:Lcom/sec/android/app/music/common/util/BatteryChecker;

    .line 1617
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mBatteryChecker:Lcom/sec/android/app/music/common/util/BatteryChecker;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/app/Activity;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v2}, Lcom/sec/android/app/music/common/util/BatteryChecker;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1619
    :cond_c7
    monitor-exit v1
    :try_end_c8
    .catchall {:try_start_ad .. :try_end_c8} :catchall_e6

    .line 1620
    invoke-virtual {p0, v5}, Lcom/sec/android/app/music/TrackBrowserActivity;->setEnableTextScroll(Z)V

    .line 1622
    const v0, 0x7f0c0022

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/TrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 1624
    invoke-virtual {v0}, Landroid/widget/EditText;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4b

    .line 1625
    new-instance v1, Lcom/sec/android/app/music/TrackBrowserActivity$26;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/app/music/TrackBrowserActivity$26;-><init>(Lcom/sec/android/app/music/TrackBrowserActivity;Landroid/widget/EditText;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_4b

    .line 1619
    :catchall_e6
    move-exception v0

    :try_start_e7
    monitor-exit v1
    :try_end_e8
    .catchall {:try_start_e7 .. :try_end_e8} :catchall_e6

    throw v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 7
    .parameter

    .prologue
    .line 1696
    iget-boolean v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mIsSlectMode:Z

    if-eqz v0, :cond_23

    .line 1697
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mListView:Lcom/sec/android/app/music/MusicContentListView;

    invoke-virtual {v0}, Lcom/sec/android/app/music/MusicContentListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v1

    .line 1698
    if-eqz v1, :cond_23

    .line 1699
    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    .line 1700
    new-array v3, v2, [I

    .line 1701
    const/4 v0, 0x0

    :goto_13
    if-ge v0, v2, :cond_1e

    .line 1702
    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    aput v4, v3, v0

    .line 1701
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 1704
    :cond_1e
    const-string v0, "positions"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 1707
    :cond_23
    const-string v0, "selectedId"

    iget-wide v1, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mSelectedId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1708
    const-string v0, "selectedIds"

    iget-object v1, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mSelectedIds:[J

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 1709
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1710
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .parameter "className"
    .parameter "iservice"

    .prologue
    .line 255
    invoke-static {p2}, Lcom/sec/android/app/music/ICorePlayerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/app/music/ICorePlayerService;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mCorePlayerService:Lcom/sec/android/app/music/ICorePlayerService;

    .line 256
    invoke-direct {p0}, Lcom/sec/android/app/music/TrackBrowserActivity;->registerNowPlayingButtons()V

    .line 257
    invoke-direct {p0}, Lcom/sec/android/app/music/TrackBrowserActivity;->updateNowPlayingView()V

    .line 259
    sget-object v0, Lcom/sec/android/app/music/TrackBrowserActivity;->CLASSNAME:Ljava/lang/String;

    const-string v1, "onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .parameter "arg0"

    .prologue
    .line 264
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mCorePlayerService:Lcom/sec/android/app/music/ICorePlayerService;

    .line 266
    sget-object v0, Lcom/sec/android/app/music/TrackBrowserActivity;->CLASSNAME:Ljava/lang/String;

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    return-void
.end method

.method protected onStart()V
    .registers 4

    .prologue
    .line 1547
    sget-object v0, Lcom/sec/android/app/music/TrackBrowserActivity;->CLASSNAME:Ljava/lang/String;

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1548
    iget v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mTabFrom:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_27

    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mListView:Lcom/sec/android/app/music/MusicContentListView;

    if-eqz v0, :cond_27

    .line 1549
    iget v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mListFocus:I

    iget-object v1, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mListView:Lcom/sec/android/app/music/MusicContentListView;

    invoke-virtual {v1}, Lcom/sec/android/app/music/MusicContentListView;->getChildCount()I

    move-result v1

    if-le v0, v1, :cond_22

    .line 1550
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mListView:Lcom/sec/android/app/music/MusicContentListView;

    iget v1, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mListFocus:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/music/MusicContentListView;->setSelection(I)V

    .line 1552
    :cond_22
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mListView:Lcom/sec/android/app/music/MusicContentListView;

    invoke-virtual {v0}, Lcom/sec/android/app/music/MusicContentListView;->invalidateAllViews()V

    .line 1554
    :cond_27
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 1555
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mStart:Z

    .line 1556
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1557
    const-string v1, "com.android.music.playstatechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1558
    const-string v1, "com.android.music.metachanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1559
    const-string v1, "com.sec.android.app.music.ADD_TO_PLAYLIST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1560
    iget-object v1, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mPlayerStatusListener:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2, v0}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/music/TrackBrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1561
    return-void
.end method

.method protected onStop()V
    .registers 3

    .prologue
    .line 1654
    sget-object v0, Lcom/sec/android/app/music/TrackBrowserActivity;->CLASSNAME:Ljava/lang/String;

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1655
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mStart:Z

    .line 1656
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 1657
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity;->mPlayerStatusListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/TrackBrowserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1658
    return-void
.end method

.method protected setEnableTextScroll(Z)V
    .registers 5
    .parameter

    .prologue
    .line 2589
    sget-object v0, Lcom/sec/android/app/music/TrackBrowserActivity;->CLASSNAME:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEnableTextScroll : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2591
    const v0, 0x7f0c0020

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/TrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2592
    const v1, 0x7f0c001f

    invoke-virtual {p0, v1}, Lcom/sec/android/app/music/TrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2593
    const v2, 0x7f0c0021

    invoke-virtual {p0, v2}, Lcom/sec/android/app/music/TrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 2595
    if-eqz v0, :cond_38

    .line 2596
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 2599
    :cond_38
    if-eqz v1, :cond_3d

    .line 2600
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 2603
    :cond_3d
    if-eqz v2, :cond_42

    .line 2604
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 2606
    :cond_42
    return-void
.end method
