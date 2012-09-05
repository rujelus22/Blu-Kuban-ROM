.class public final Lcom/cooliris/media/Gallery;
.super Landroid/app/Activity;
.source "Gallery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cooliris/media/Gallery$16;,
        Lcom/cooliris/media/Gallery$ThumbKicker;,
        Lcom/cooliris/media/Gallery$MotionType;
    }
.end annotation


# static fields
.field private static isTiltTestMode:Z

.field private static isVideoPlay:Z

.field private static mDialogEndTime:J

.field private static mDialogStartTime:J

.field static mMyMagazineID:I

.field private static mPictureFrameMode:Z

.field private static mPictureFrameSaving:Z

.field private static mProgressCnt:I

.field private static mProgressDialogCancle:Z

.field private static mProgressMaxCnt:I

.field private static mSlideshow:Lcom/cooliris/wallpaper/Slideshow;

.field protected static mStorageManager:Landroid/os/storage/StorageManager;

.field protected static mStorageVolumes:[Landroid/os/storage/StorageVolume;

.field private static final mZoomingDrawable:[I


# instance fields
.field private code:Ljava/lang/String;

.field public isMediaItemsLoading:Z

.field private mAccountsEnabled:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mApp:Lcom/cooliris/app/App;

.field private mChkFromCamera:Z

.field private mChkFromPhotoWall:Z

.field private mChkFromWidget:Z

.field public mDialHandler:Landroid/os/Handler;

.field private final mDialHandlerKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field private mDockSlideshow:Z

.field private mEndUpdateAnimation:Z

.field private mFolderID:J

.field private final mGestureReceiver:Landroid/content/BroadcastReceiver;

.field private mGridLayer:Lcom/cooliris/media/GridLayer;

.field private mImageManagerHasStorageAfterDelay:Z

.field private mImgView:Landroid/widget/ImageView;

.field public mIsAutoRotationOn:Z

.field private final mMediaReceiver:Landroid/content/BroadcastReceiver;

.field private mMediaScannerRunning:Z

.field private mMotionAnimationHandler:Landroid/os/Handler;

.field private mMotionAnimationIndex:I

.field private mMotionInfoDialog:Landroid/content/DialogInterface;

.field private final mMotionInfoDialogKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field private final mMotionInfoRunnable:Ljava/lang/Runnable;

.field public mMotionPreviewMove:I

.field public mMotionTutorial:Lcom/cooliris/media/Gallery$MotionType;

.field private mNumRetries:I

.field private mOrientation:I

.field private mOrientationListener:Landroid/view/OrientationEventListener;

.field private mPicasaAccountThread:Landroid/os/HandlerThread;

.field private mPicasaHandler:Landroid/os/Handler;

.field private mPickFromVideoCall:Z

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private final mProgressDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field private mRenderView:Lcom/cooliris/media/RenderView;

.field private mSetAsContact:Z

.field private mSetAsWallpaper:Z

.field private mStatusBar:Landroid/app/StatusBarManager;

.field public mThumbKicker:Lcom/cooliris/media/Gallery$ThumbKicker;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mWidgetSize:[I

.field private final mhandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 138
    const/4 v0, 0x0

    sput-object v0, Lcom/cooliris/media/Gallery;->mSlideshow:Lcom/cooliris/wallpaper/Slideshow;

    .line 145
    const/4 v0, -0x1

    sput v0, Lcom/cooliris/media/Gallery;->mMyMagazineID:I

    .line 149
    sput-boolean v1, Lcom/cooliris/media/Gallery;->isVideoPlay:Z

    .line 161
    sput-boolean v1, Lcom/cooliris/media/Gallery;->mPictureFrameMode:Z

    .line 163
    sput-boolean v1, Lcom/cooliris/media/Gallery;->mPictureFrameSaving:Z

    .line 170
    sput-boolean v1, Lcom/cooliris/media/Gallery;->isTiltTestMode:Z

    .line 216
    sput v1, Lcom/cooliris/media/Gallery;->mProgressMaxCnt:I

    .line 218
    sput v1, Lcom/cooliris/media/Gallery;->mProgressCnt:I

    .line 220
    sput-boolean v1, Lcom/cooliris/media/Gallery;->mProgressDialogCancle:Z

    .line 222
    sput-wide v2, Lcom/cooliris/media/Gallery;->mDialogStartTime:J

    .line 224
    sput-wide v2, Lcom/cooliris/media/Gallery;->mDialogEndTime:J

    .line 1675
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_24

    sput-object v0, Lcom/cooliris/media/Gallery;->mZoomingDrawable:[I

    return-void

    :array_24
    .array-data 0x4
        0x5bt 0x0t 0x2t 0x7ft
        0x5ct 0x0t 0x2t 0x7ft
        0x5dt 0x0t 0x2t 0x7ft
        0x5et 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 79
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 86
    iput-object v3, p0, Lcom/cooliris/media/Gallery;->mApp:Lcom/cooliris/app/App;

    .line 88
    iput-object v3, p0, Lcom/cooliris/media/Gallery;->mRenderView:Lcom/cooliris/media/RenderView;

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/cooliris/media/Gallery;->mAccountsEnabled:Ljava/util/HashMap;

    .line 96
    iput-boolean v2, p0, Lcom/cooliris/media/Gallery;->mDockSlideshow:Z

    .line 100
    iput-boolean v2, p0, Lcom/cooliris/media/Gallery;->mImageManagerHasStorageAfterDelay:Z

    .line 102
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "PicasaAccountMonitor"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cooliris/media/Gallery;->mPicasaAccountThread:Landroid/os/HandlerThread;

    .line 104
    iput-object v3, p0, Lcom/cooliris/media/Gallery;->mPicasaHandler:Landroid/os/Handler;

    .line 120
    iput-boolean v2, p0, Lcom/cooliris/media/Gallery;->mChkFromCamera:Z

    .line 122
    iput-boolean v2, p0, Lcom/cooliris/media/Gallery;->mChkFromWidget:Z

    .line 124
    iput-boolean v2, p0, Lcom/cooliris/media/Gallery;->mChkFromPhotoWall:Z

    .line 126
    iput-boolean v2, p0, Lcom/cooliris/media/Gallery;->mMediaScannerRunning:Z

    .line 132
    iput-boolean v2, p0, Lcom/cooliris/media/Gallery;->mPickFromVideoCall:Z

    .line 134
    iput-boolean v2, p0, Lcom/cooliris/media/Gallery;->mSetAsWallpaper:Z

    .line 136
    iput-boolean v2, p0, Lcom/cooliris/media/Gallery;->mSetAsContact:Z

    .line 142
    const-string v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cooliris/media/Gallery;->code:Ljava/lang/String;

    .line 155
    sget-object v0, Lcom/cooliris/media/Gallery$MotionType;->MOTION_NONE:Lcom/cooliris/media/Gallery$MotionType;

    iput-object v0, p0, Lcom/cooliris/media/Gallery;->mMotionTutorial:Lcom/cooliris/media/Gallery$MotionType;

    .line 157
    iput v2, p0, Lcom/cooliris/media/Gallery;->mMotionPreviewMove:I

    .line 159
    iput-boolean v2, p0, Lcom/cooliris/media/Gallery;->mIsAutoRotationOn:Z

    .line 165
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cooliris/media/Gallery;->isMediaItemsLoading:Z

    .line 172
    new-instance v0, Lcom/cooliris/media/Gallery$1;

    invoke-direct {v0, p0}, Lcom/cooliris/media/Gallery$1;-><init>(Lcom/cooliris/media/Gallery;)V

    iput-object v0, p0, Lcom/cooliris/media/Gallery;->mhandler:Landroid/os/Handler;

    .line 214
    iput-object v3, p0, Lcom/cooliris/media/Gallery;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 236
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/cooliris/media/Gallery;->mWidgetSize:[I

    .line 242
    new-instance v0, Lcom/cooliris/media/Gallery$2;

    invoke-direct {v0, p0}, Lcom/cooliris/media/Gallery$2;-><init>(Lcom/cooliris/media/Gallery;)V

    iput-object v0, p0, Lcom/cooliris/media/Gallery;->mDialHandlerKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 253
    new-instance v0, Lcom/cooliris/media/Gallery$3;

    invoke-direct {v0, p0}, Lcom/cooliris/media/Gallery$3;-><init>(Lcom/cooliris/media/Gallery;)V

    iput-object v0, p0, Lcom/cooliris/media/Gallery;->mDialHandler:Landroid/os/Handler;

    .line 425
    new-instance v0, Lcom/cooliris/media/Gallery$4;

    invoke-direct {v0, p0}, Lcom/cooliris/media/Gallery$4;-><init>(Lcom/cooliris/media/Gallery;)V

    iput-object v0, p0, Lcom/cooliris/media/Gallery;->mProgressDialogListener:Landroid/content/DialogInterface$OnClickListener;

    .line 1512
    new-instance v0, Lcom/cooliris/media/Gallery$7;

    invoke-direct {v0, p0}, Lcom/cooliris/media/Gallery$7;-><init>(Lcom/cooliris/media/Gallery;)V

    iput-object v0, p0, Lcom/cooliris/media/Gallery;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    .line 1596
    new-instance v0, Lcom/cooliris/media/Gallery$8;

    invoke-direct {v0, p0}, Lcom/cooliris/media/Gallery$8;-><init>(Lcom/cooliris/media/Gallery;)V

    iput-object v0, p0, Lcom/cooliris/media/Gallery;->mGestureReceiver:Landroid/content/BroadcastReceiver;

    .line 1704
    iput-boolean v2, p0, Lcom/cooliris/media/Gallery;->mEndUpdateAnimation:Z

    .line 1733
    iput-object v3, p0, Lcom/cooliris/media/Gallery;->mMotionInfoDialog:Landroid/content/DialogInterface;

    .line 1735
    new-instance v0, Lcom/cooliris/media/Gallery$10;

    invoke-direct {v0, p0}, Lcom/cooliris/media/Gallery$10;-><init>(Lcom/cooliris/media/Gallery;)V

    iput-object v0, p0, Lcom/cooliris/media/Gallery;->mMotionInfoDialogKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 1759
    new-instance v0, Lcom/cooliris/media/Gallery$11;

    invoke-direct {v0, p0}, Lcom/cooliris/media/Gallery$11;-><init>(Lcom/cooliris/media/Gallery;)V

    iput-object v0, p0, Lcom/cooliris/media/Gallery;->mMotionInfoRunnable:Ljava/lang/Runnable;

    .line 1861
    new-instance v0, Lcom/cooliris/media/Gallery$ThumbKicker;

    invoke-direct {v0, p0}, Lcom/cooliris/media/Gallery$ThumbKicker;-><init>(Lcom/cooliris/media/Gallery;)V

    iput-object v0, p0, Lcom/cooliris/media/Gallery;->mThumbKicker:Lcom/cooliris/media/Gallery$ThumbKicker;

    .line 1943
    iput v2, p0, Lcom/cooliris/media/Gallery;->mOrientation:I

    return-void
.end method

.method static synthetic access$000(Lcom/cooliris/media/Gallery;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/cooliris/media/Gallery;->checkStorage()V

    return-void
.end method

.method static synthetic access$100(Lcom/cooliris/media/Gallery;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/cooliris/media/Gallery;->initializeDataSource()V

    return-void
.end method

.method static synthetic access$1000(Lcom/cooliris/media/Gallery;)Landroid/content/DialogInterface$OnClickListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/cooliris/media/Gallery;->mProgressDialogListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic access$1100()J
    .registers 2

    .prologue
    .line 79
    sget-wide v0, Lcom/cooliris/media/Gallery;->mDialogEndTime:J

    return-wide v0
.end method

.method static synthetic access$1102(J)J
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    sput-wide p0, Lcom/cooliris/media/Gallery;->mDialogEndTime:J

    return-wide p0
.end method

.method static synthetic access$1202(Lcom/cooliris/media/Gallery;Ljava/util/HashMap;)Ljava/util/HashMap;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/cooliris/media/Gallery;->mAccountsEnabled:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/cooliris/media/Gallery;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/cooliris/media/Gallery;->toastFinish(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1402(Lcom/cooliris/media/Gallery;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/cooliris/media/Gallery;->mMediaScannerRunning:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/cooliris/media/Gallery;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/cooliris/media/Gallery;->mEndUpdateAnimation:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/cooliris/media/Gallery;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/cooliris/media/Gallery;->mEndUpdateAnimation:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/cooliris/media/Gallery;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/cooliris/media/Gallery;->mMotionAnimationIndex:I

    return v0
.end method

.method static synthetic access$1700(Lcom/cooliris/media/Gallery;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/cooliris/media/Gallery;->updateAnimation(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/cooliris/media/Gallery;)Landroid/content/DialogInterface;
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/cooliris/media/Gallery;->mMotionInfoDialog:Landroid/content/DialogInterface;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/cooliris/media/Gallery;Landroid/content/DialogInterface;)Landroid/content/DialogInterface;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/cooliris/media/Gallery;->mMotionInfoDialog:Landroid/content/DialogInterface;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/cooliris/media/Gallery;)Lcom/cooliris/app/App;
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/cooliris/media/Gallery;->mApp:Lcom/cooliris/app/App;

    return-object v0
.end method

.method static synthetic access$200(Lcom/cooliris/media/Gallery;)Lcom/cooliris/media/GridLayer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/cooliris/media/Gallery;->mGridLayer:Lcom/cooliris/media/GridLayer;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/cooliris/media/Gallery;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/cooliris/media/Gallery;->mImgView:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/cooliris/media/Gallery;)Landroid/content/DialogInterface$OnKeyListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/cooliris/media/Gallery;->mMotionInfoDialogKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/cooliris/media/Gallery;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/cooliris/media/Gallery;->createMotionAnimationHander()V

    return-void
.end method

.method static synthetic access$2500(Lcom/cooliris/media/Gallery;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/cooliris/media/Gallery;->mOrientation:I

    return v0
.end method

.method static synthetic access$300(Lcom/cooliris/media/Gallery;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/cooliris/media/Gallery;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$302(Lcom/cooliris/media/Gallery;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/cooliris/media/Gallery;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$400()J
    .registers 2

    .prologue
    .line 79
    sget-wide v0, Lcom/cooliris/media/Gallery;->mDialogStartTime:J

    return-wide v0
.end method

.method static synthetic access$402(J)J
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    sput-wide p0, Lcom/cooliris/media/Gallery;->mDialogStartTime:J

    return-wide p0
.end method

.method static synthetic access$500(Lcom/cooliris/media/Gallery;)Landroid/content/DialogInterface$OnKeyListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/cooliris/media/Gallery;->mDialHandlerKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    return-object v0
.end method

.method static synthetic access$602(Z)Z
    .registers 1
    .parameter "x0"

    .prologue
    .line 79
    sput-boolean p0, Lcom/cooliris/media/Gallery;->mPictureFrameSaving:Z

    return p0
.end method

.method static synthetic access$700()I
    .registers 1

    .prologue
    .line 79
    sget v0, Lcom/cooliris/media/Gallery;->mProgressCnt:I

    return v0
.end method

.method static synthetic access$702(I)I
    .registers 1
    .parameter "x0"

    .prologue
    .line 79
    sput p0, Lcom/cooliris/media/Gallery;->mProgressCnt:I

    return p0
.end method

.method static synthetic access$802(Z)Z
    .registers 1
    .parameter "x0"

    .prologue
    .line 79
    sput-boolean p0, Lcom/cooliris/media/Gallery;->mProgressDialogCancle:Z

    return p0
.end method

.method static synthetic access$900()I
    .registers 1

    .prologue
    .line 79
    sget v0, Lcom/cooliris/media/Gallery;->mProgressMaxCnt:I

    return v0
.end method

.method static synthetic access$902(I)I
    .registers 1
    .parameter "x0"

    .prologue
    .line 79
    sput p0, Lcom/cooliris/media/Gallery;->mProgressMaxCnt:I

    return p0
.end method

.method private checkLowStorage()Z
    .registers 10

    .prologue
    const/4 v4, 0x0

    .line 501
    invoke-static {v4}, Lcom/cooliris/media/ImageManager;->hasStorage(Z)Z

    move-result v5

    if-eqz v5, :cond_40

    .line 502
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    .line 503
    .local v3, storageDirectory:Ljava/lang/String;
    new-instance v2, Landroid/os/StatFs;

    invoke-direct {v2, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 504
    .local v2, stat:Landroid/os/StatFs;
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v7

    int-to-long v7, v7

    mul-long v0, v5, v7

    .line 505
    .local v0, remaining:J
    const-wide/32 v5, 0x500000

    cmp-long v5, v0, v5

    if-gez v5, :cond_40

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockCount()I

    move-result v5

    if-lez v5, :cond_40

    .line 506
    invoke-virtual {p0}, Lcom/cooliris/media/Gallery;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f06004d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 510
    const/4 v4, 0x1

    .line 513
    .end local v0           #remaining:J
    .end local v2           #stat:Landroid/os/StatFs;
    .end local v3           #storageDirectory:Ljava/lang/String;
    :cond_40
    return v4
.end method

.method private checkMediaScanning()Z
    .registers 12

    .prologue
    const/4 v10, 0x1

    const/4 v0, 0x0

    .line 517
    const/4 v8, 0x0

    .line 518
    .local v8, result:Z
    const/4 v6, 0x0

    .line 520
    .local v6, cursor:Landroid/database/Cursor;
    iget-object v1, p0, Lcom/cooliris/media/Gallery;->mMotionTutorial:Lcom/cooliris/media/Gallery$MotionType;

    sget-object v2, Lcom/cooliris/media/Gallery$MotionType;->MOTION_NONE:Lcom/cooliris/media/Gallery$MotionType;

    if-eq v1, v2, :cond_b

    .line 551
    :goto_a
    return v0

    .line 525
    :cond_b
    :try_start_b
    invoke-virtual {p0}, Lcom/cooliris/media/Gallery;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Landroid/provider/MediaStore;->getMediaScannerUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "volume"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 529
    if-eqz v6, :cond_43

    .line 530
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v10, :cond_43

    .line 531
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 535
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 536
    .local v9, volumeName:Ljava/lang/String;
    const-string v0, "external"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    const-string v0, "internal"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3f
    .catchall {:try_start_b .. :try_end_3f} :catchall_88
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_3f} :catch_4a
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_3f} :catch_69

    move-result v0

    if-eqz v0, :cond_43

    .line 537
    :cond_42
    const/4 v8, 0x1

    .line 547
    .end local v9           #volumeName:Ljava/lang/String;
    :cond_43
    if-eqz v6, :cond_48

    .line 548
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_48
    :goto_48
    move v0, v8

    .line 551
    goto :goto_a

    .line 541
    :catch_4a
    move-exception v7

    .line 542
    .local v7, e:Ljava/lang/NullPointerException;
    :try_start_4b
    const-string v0, "Gallery"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkMediaScanning:: NullPointerException....: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_63
    .catchall {:try_start_4b .. :try_end_63} :catchall_88

    .line 547
    if-eqz v6, :cond_48

    .line 548
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_48

    .line 543
    .end local v7           #e:Ljava/lang/NullPointerException;
    :catch_69
    move-exception v7

    .line 544
    .local v7, e:Ljava/lang/Exception;
    :try_start_6a
    const-string v0, "Gallery"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkMediaScanning:: Exception....: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_82
    .catchall {:try_start_6a .. :try_end_82} :catchall_88

    .line 547
    if-eqz v6, :cond_48

    .line 548
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_48

    .line 547
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_88
    move-exception v0

    if-eqz v6, :cond_8e

    .line 548
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_8e
    throw v0
.end method

.method private checkStorage()V
    .registers 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 471
    iget v1, p0, Lcom/cooliris/media/Gallery;->mNumRetries:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/cooliris/media/Gallery;->mNumRetries:I

    .line 472
    invoke-static {}, Lcom/cooliris/media/ImageManager;->hasStorage()Z

    move-result v1

    iput-boolean v1, p0, Lcom/cooliris/media/Gallery;->mImageManagerHasStorageAfterDelay:Z

    .line 473
    iget-boolean v1, p0, Lcom/cooliris/media/Gallery;->mImageManagerHasStorageAfterDelay:Z

    if-nez v1, :cond_4b

    iget v1, p0, Lcom/cooliris/media/Gallery;->mNumRetries:I

    const/16 v2, 0x19

    if-ge v1, v2, :cond_4b

    .line 474
    iget v1, p0, Lcom/cooliris/media/Gallery;->mNumRetries:I

    if-ne v1, v3, :cond_3d

    .line 477
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v1

    if-eqz v1, :cond_45

    .line 478
    sget-object v1, Lcom/cooliris/app/Res;->string:Lcom/cooliris/media/R$string;

    const v0, 0x7f060026

    .line 485
    .local v0, res:I
    :goto_27
    invoke-virtual {p0}, Lcom/cooliris/media/Gallery;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 490
    sget-boolean v1, Lcom/cooliris/media/Gallery;->isTiltTestMode:Z

    if-eqz v1, :cond_3d

    .line 491
    invoke-virtual {p0}, Lcom/cooliris/media/Gallery;->finish()V

    .line 494
    .end local v0           #res:I
    :cond_3d
    iget-object v1, p0, Lcom/cooliris/media/Gallery;->mhandler:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 498
    :goto_44
    return-void

    .line 480
    :cond_45
    sget-object v1, Lcom/cooliris/app/Res;->string:Lcom/cooliris/media/R$string;

    const v0, 0x7f060027

    .restart local v0       #res:I
    goto :goto_27

    .line 496
    .end local v0           #res:I
    :cond_4b
    iget-object v1, p0, Lcom/cooliris/media/Gallery;->mhandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_44
.end method

.method private createMotionAnimationHander()V
    .registers 2

    .prologue
    .line 1687
    new-instance v0, Lcom/cooliris/media/Gallery$9;

    invoke-direct {v0, p0}, Lcom/cooliris/media/Gallery$9;-><init>(Lcom/cooliris/media/Gallery;)V

    iput-object v0, p0, Lcom/cooliris/media/Gallery;->mMotionAnimationHandler:Landroid/os/Handler;

    .line 1702
    return-void
.end method

.method public static getExternalSDStoragePath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1932
    sget-object v0, Lcom/cooliris/media/Gallery;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getExternalSDStorageState()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1940
    sget-object v0, Lcom/cooliris/media/Gallery;->mStorageManager:Landroid/os/storage/StorageManager;

    sget-object v1, Lcom/cooliris/media/Gallery;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initializeDataSource()V
    .registers 16

    .prologue
    const-wide/16 v11, -0x1

    const v14, 0x7f06001b

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1314
    iget-boolean v4, p0, Lcom/cooliris/media/Gallery;->mImageManagerHasStorageAfterDelay:Z

    .line 1316
    new-instance v5, Lcom/cooliris/media/PicasaDataSource;

    invoke-direct {v5, p0}, Lcom/cooliris/media/PicasaDataSource;-><init>(Landroid/content/Context;)V

    .line 1317
    new-instance v6, Lcom/cooliris/media/LocalDataSource;

    sget-object v0, Lcom/cooliris/media/LocalDataSource;->URI_ALL_MEDIA:Ljava/lang/String;

    invoke-direct {v6, p0, v0, v3}, Lcom/cooliris/media/LocalDataSource;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1319
    new-instance v7, Lcom/cooliris/media/ConcatenatedDataSource;

    invoke-direct {v7, v6, v5}, Lcom/cooliris/media/ConcatenatedDataSource;-><init>(Lcom/cooliris/media/DataSource;Lcom/cooliris/media/DataSource;)V

    .line 1324
    invoke-virtual {p0}, Lcom/cooliris/media/Gallery;->isPickIntent()Z

    move-result v0

    if-nez v0, :cond_61

    invoke-virtual {p0}, Lcom/cooliris/media/Gallery;->isViewIntent()Z

    move-result v0

    if-nez v0, :cond_61

    invoke-direct {p0}, Lcom/cooliris/media/Gallery;->isReviewIntent()Z

    move-result v0

    if-nez v0, :cond_61

    invoke-virtual {p0}, Lcom/cooliris/media/Gallery;->isMultiplePickIntent()Z

    move-result v0

    if-nez v0, :cond_61

    .line 1325
    invoke-virtual {p0}, Lcom/cooliris/media/Gallery;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1326
    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    .line 1327
    if-nez v0, :cond_3e

    .line 1328
    const-string v0, "*/"

    .line 1330
    :cond_3e
    invoke-direct {p0, v0}, Lcom/cooliris/media/Gallery;->isImageType(Ljava/lang/String;)Z

    move-result v1

    .line 1331
    invoke-direct {p0, v0}, Lcom/cooliris/media/Gallery;->isVideoType(Ljava/lang/String;)Z

    move-result v0

    .line 1333
    invoke-virtual {v6, v1, v0}, Lcom/cooliris/media/LocalDataSource;->setMimeFilter(ZZ)V

    .line 1334
    invoke-virtual {v5, v0}, Lcom/cooliris/media/PicasaDataSource;->setMimeFilter(Z)V

    .line 1336
    if-eqz v4, :cond_59

    .line 1337
    :try_start_4e
    iget-object v0, p0, Lcom/cooliris/media/Gallery;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v0, v7}, Lcom/cooliris/media/GridLayer;->setDataSource(Lcom/cooliris/media/DataSource;)V
    :try_end_53
    .catch Ljava/lang/NullPointerException; {:try_start_4e .. :try_end_53} :catch_5f

    .line 1509
    :cond_53
    :goto_53
    iget-object v0, p0, Lcom/cooliris/media/Gallery;->mPicasaHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1510
    :goto_58
    return-void

    .line 1339
    :cond_59
    :try_start_59
    iget-object v0, p0, Lcom/cooliris/media/Gallery;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v0, v5}, Lcom/cooliris/media/GridLayer;->setDataSource(Lcom/cooliris/media/DataSource;)V
    :try_end_5e
    .catch Ljava/lang/NullPointerException; {:try_start_59 .. :try_end_5e} :catch_5f

    goto :goto_53

    .line 1341
    :catch_5f
    move-exception v0

    goto :goto_53

    .line 1348
    :cond_61
    invoke-virtual {p0}, Lcom/cooliris/media/Gallery;->isPickIntent()Z

    move-result v0

    if-eqz v0, :cond_141

    .line 1349
    invoke-virtual {p0}, Lcom/cooliris/media/Gallery;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1350
    if-eqz v1, :cond_53

    .line 1351
    invoke-virtual {v1, p0}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1352
    if-nez v0, :cond_75

    .line 1354
    const-string v0, "image/*"

    .line 1356
    :cond_75
    invoke-direct {p0, v0}, Lcom/cooliris/media/Gallery;->isImageType(Ljava/lang/String;)Z

    move-result v8

    .line 1357
    invoke-direct {p0, v0}, Lcom/cooliris/media/Gallery;->isVideoType(Ljava/lang/String;)Z

    move-result v0

    .line 1363
    invoke-virtual {v6, v8, v0}, Lcom/cooliris/media/LocalDataSource;->setMimeFilter(ZZ)V

    .line 1364
    invoke-virtual {v5, v0}, Lcom/cooliris/media/PicasaDataSource;->setMimeFilter(Z)V

    .line 1368
    const-string v0, "only3gp"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_10b

    .line 1369
    const-string v0, "Gallery"

    const-string v9, "From video call::choose only 3gp"

    invoke-static {v0, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1370
    sget-object v0, Lcom/cooliris/media/LocalDataSource$MimeFilterType;->MIME_FILTER_3GP:Lcom/cooliris/media/LocalDataSource$MimeFilterType;

    invoke-virtual {v6, v0}, Lcom/cooliris/media/LocalDataSource;->setMimeTypeFilter(Lcom/cooliris/media/LocalDataSource$MimeFilterType;)V

    move v0, v2

    .line 1379
    :goto_98
    if-eqz v8, :cond_13a

    .line 1380
    if-eqz v4, :cond_12e

    .line 1381
    if-eqz v0, :cond_122

    .line 1382
    :try_start_9e
    iget-object v0, p0, Lcom/cooliris/media/Gallery;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v0, v6}, Lcom/cooliris/media/GridLayer;->setDataSource(Lcom/cooliris/media/DataSource;)V

    .line 1392
    :goto_a3
    iget-object v0, p0, Lcom/cooliris/media/Gallery;->mGridLayer:Lcom/cooliris/media/GridLayer;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/cooliris/media/GridLayer;->setPickIntent(Z)V

    .line 1393
    const-string v0, "senderIsVideoCall"

    const/4 v5, 0x0

    invoke-virtual {v1, v0, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/cooliris/media/Gallery;->mPickFromVideoCall:Z

    .line 1394
    const-string v0, "set_wallpaper"

    const/4 v5, 0x0

    invoke-virtual {v1, v0, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/cooliris/media/Gallery;->mSetAsWallpaper:Z

    .line 1395
    const-string v0, "set_contact"

    const/4 v5, 0x0

    invoke-virtual {v1, v0, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/cooliris/media/Gallery;->mSetAsContact:Z

    .line 1396
    const-string v0, "Gallery"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mPickFromVideoCall = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v5, p0, Lcom/cooliris/media/Gallery;->mPickFromVideoCall:Z

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", mSetAsWallpaer = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v5, p0, Lcom/cooliris/media/Gallery;->mSetAsWallpaper:Z

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", mSetAsContact = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v5, p0, Lcom/cooliris/media/Gallery;->mSetAsContact:Z

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f6
    .catch Ljava/lang/NullPointerException; {:try_start_9e .. :try_end_f6} :catch_129
    .catch Ljava/lang/SecurityException; {:try_start_9e .. :try_end_f6} :catch_135

    .line 1403
    :goto_f6
    if-eqz v4, :cond_53

    .line 1406
    invoke-virtual {p0}, Lcom/cooliris/media/Gallery;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/cooliris/app/Res;->string:Lcom/cooliris/media/R$string;

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_53

    .line 1372
    :cond_10b
    const-string v0, "onlyJpg"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2aa

    .line 1373
    const-string v0, "Gallery"

    const-string v9, "From video call::choose only jpg"

    invoke-static {v0, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1374
    sget-object v0, Lcom/cooliris/media/LocalDataSource$MimeFilterType;->MIME_FILTER_JPG:Lcom/cooliris/media/LocalDataSource$MimeFilterType;

    invoke-virtual {v6, v0}, Lcom/cooliris/media/LocalDataSource;->setMimeTypeFilter(Lcom/cooliris/media/LocalDataSource$MimeFilterType;)V

    move v0, v2

    .line 1375
    goto/16 :goto_98

    .line 1384
    :cond_122
    :try_start_122
    iget-object v0, p0, Lcom/cooliris/media/Gallery;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v0, v7}, Lcom/cooliris/media/GridLayer;->setDataSource(Lcom/cooliris/media/DataSource;)V
    :try_end_127
    .catch Ljava/lang/NullPointerException; {:try_start_122 .. :try_end_127} :catch_129
    .catch Ljava/lang/SecurityException; {:try_start_122 .. :try_end_127} :catch_135

    goto/16 :goto_a3

    .line 1398
    :catch_129
    move-exception v0

    .line 1399
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_f6

    .line 1387
    :cond_12e
    :try_start_12e
    iget-object v0, p0, Lcom/cooliris/media/Gallery;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v0, v5}, Lcom/cooliris/media/GridLayer;->setDataSource(Lcom/cooliris/media/DataSource;)V
    :try_end_133
    .catch Ljava/lang/NullPointerException; {:try_start_12e .. :try_end_133} :catch_129
    .catch Ljava/lang/SecurityException; {:try_start_12e .. :try_end_133} :catch_135

    goto/16 :goto_a3

    .line 1400
    :catch_135
    move-exception v0

    .line 1401
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_f6

    .line 1390
    :cond_13a
    :try_start_13a
    iget-object v0, p0, Lcom/cooliris/media/Gallery;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v0, v6}, Lcom/cooliris/media/GridLayer;->setDataSource(Lcom/cooliris/media/DataSource;)V
    :try_end_13f
    .catch Ljava/lang/NullPointerException; {:try_start_13a .. :try_end_13f} :catch_129
    .catch Ljava/lang/SecurityException; {:try_start_13a .. :try_end_13f} :catch_135

    goto/16 :goto_a3

    .line 1412
    :cond_141
    invoke-virtual {p0}, Lcom/cooliris/media/Gallery;->isMultiplePickIntent()Z

    move-result v0

    if-eqz v0, :cond_23e

    .line 1413
    invoke-virtual {p0}, Lcom/cooliris/media/Gallery;->getIntent()Landroid/content/Intent;

    move-result-object v8

    .line 1414
    if-eqz v8, :cond_53

    .line 1415
    invoke-virtual {v8, p0}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1416
    const-string v1, ""

    .line 1417
    invoke-virtual {v8}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    if-eqz v9, :cond_1a6

    .line 1418
    invoke-virtual {v8}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "from-widget"

    invoke-virtual {v9, v10, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_1f4

    .line 1419
    iput-boolean v2, p0, Lcom/cooliris/media/Gallery;->mChkFromWidget:Z

    .line 1420
    invoke-virtual {v8}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v9, "folderID"

    invoke-virtual {v1, v9, v11, v12}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    .line 1421
    invoke-virtual {v8}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v11, "folderItems"

    invoke-virtual {v1, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1422
    invoke-virtual {v8}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    const-string v12, "APPWIDGET_ID"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    sput v11, Lcom/cooliris/media/Gallery;->mMyMagazineID:I

    .line 1423
    iget-object v11, p0, Lcom/cooliris/media/Gallery;->mWidgetSize:[I

    invoke-virtual {v8}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v12

    const-string v13, "widgetspanx"

    invoke-virtual {v12, v13, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    aput v12, v11, v3

    .line 1424
    iget-object v11, p0, Lcom/cooliris/media/Gallery;->mWidgetSize:[I

    invoke-virtual {v8}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v12

    const-string v13, "widgetspany"

    invoke-virtual {v12, v13, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    aput v12, v11, v2

    .line 1425
    invoke-virtual {p0, v9, v10}, Lcom/cooliris/media/Gallery;->setFolderID(J)V

    .line 1433
    :cond_1a6
    :goto_1a6
    if-nez v0, :cond_1aa

    .line 1435
    const-string v0, "image/*"

    .line 1437
    :cond_1aa
    invoke-direct {p0, v0}, Lcom/cooliris/media/Gallery;->isImageType(Ljava/lang/String;)Z

    move-result v9

    .line 1438
    invoke-direct {p0, v0}, Lcom/cooliris/media/Gallery;->isVideoType(Ljava/lang/String;)Z

    move-result v0

    .line 1439
    invoke-virtual {v6, v9, v0}, Lcom/cooliris/media/LocalDataSource;->setMimeFilter(ZZ)V

    .line 1440
    invoke-virtual {v5, v0}, Lcom/cooliris/media/PicasaDataSource;->setMimeFilter(Z)V

    .line 1442
    if-eqz v9, :cond_238

    .line 1443
    if-eqz v4, :cond_220

    .line 1444
    invoke-virtual {v8}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v5, "from-photowall"

    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_21a

    .line 1445
    iget-object v0, p0, Lcom/cooliris/media/Gallery;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v0, v6}, Lcom/cooliris/media/GridLayer;->setDataSource(Lcom/cooliris/media/DataSource;)V

    .line 1457
    :goto_1cd
    iget-object v0, p0, Lcom/cooliris/media/Gallery;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v0, v2}, Lcom/cooliris/media/GridLayer;->setMultiplePickIntent(Z)V

    .line 1458
    iget-object v0, p0, Lcom/cooliris/media/Gallery;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v0, v1}, Lcom/cooliris/media/GridLayer;->setMultiIntent(Ljava/lang/String;)V

    .line 1459
    if-eqz v4, :cond_53

    iget-object v0, p0, Lcom/cooliris/media/Gallery;->mApp:Lcom/cooliris/app/App;

    invoke-virtual {v0}, Lcom/cooliris/app/App;->isPaused()Z

    move-result v0

    if-nez v0, :cond_53

    .line 1462
    invoke-virtual {p0}, Lcom/cooliris/media/Gallery;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/cooliris/app/Res;->string:Lcom/cooliris/media/R$string;

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_53

    .line 1426
    :cond_1f4
    invoke-virtual {v8}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "from-photowall"

    invoke-virtual {v9, v10, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_1a6

    .line 1427
    iput-boolean v2, p0, Lcom/cooliris/media/Gallery;->mChkFromPhotoWall:Z

    .line 1428
    invoke-virtual {v8}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v9, "folderID"

    invoke-virtual {v1, v9, v11, v12}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    .line 1429
    invoke-virtual {v8}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v11, "folderItems"

    invoke-virtual {v1, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1430
    invoke-virtual {p0, v9, v10}, Lcom/cooliris/media/Gallery;->setFolderID(J)V

    goto :goto_1a6

    .line 1447
    :cond_21a
    iget-object v0, p0, Lcom/cooliris/media/Gallery;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v0, v7}, Lcom/cooliris/media/GridLayer;->setDataSource(Lcom/cooliris/media/DataSource;)V

    goto :goto_1cd

    .line 1449
    :cond_220
    invoke-virtual {v8}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v7, "from-photowall"

    invoke-virtual {v0, v7, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_232

    .line 1450
    iget-object v0, p0, Lcom/cooliris/media/Gallery;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v0, v6}, Lcom/cooliris/media/GridLayer;->setDataSource(Lcom/cooliris/media/DataSource;)V

    goto :goto_1cd

    .line 1452
    :cond_232
    iget-object v0, p0, Lcom/cooliris/media/Gallery;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v0, v5}, Lcom/cooliris/media/GridLayer;->setDataSource(Lcom/cooliris/media/DataSource;)V

    goto :goto_1cd

    .line 1455
    :cond_238
    iget-object v0, p0, Lcom/cooliris/media/Gallery;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v0, v6}, Lcom/cooliris/media/GridLayer;->setDataSource(Lcom/cooliris/media/DataSource;)V

    goto :goto_1cd

    .line 1470
    :cond_23e
    invoke-virtual {p0}, Lcom/cooliris/media/Gallery;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1471
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 1472
    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v6

    .line 1473
    const-string v7, "slideshow"

    invoke-virtual {v0, v7, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 1474
    new-instance v3, Lcom/cooliris/media/LocalDataSource;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, p0, v7, v2}, Lcom/cooliris/media/LocalDataSource;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1476
    invoke-virtual {v3}, Lcom/cooliris/media/LocalDataSource;->isSingleUriExistInDB()Z

    move-result v7

    if-nez v7, :cond_264

    .line 1477
    invoke-virtual {p0}, Lcom/cooliris/media/Gallery;->finish()V

    goto/16 :goto_58

    .line 1481
    :cond_264
    invoke-virtual {v3, v2, v2}, Lcom/cooliris/media/LocalDataSource;->setMimeFilter(ZZ)V

    .line 1484
    if-eqz v4, :cond_295

    .line 1485
    :try_start_269
    new-instance v4, Lcom/cooliris/media/ConcatenatedDataSource;

    invoke-direct {v4, v3, v5}, Lcom/cooliris/media/ConcatenatedDataSource;-><init>(Lcom/cooliris/media/DataSource;Lcom/cooliris/media/DataSource;)V

    .line 1487
    iget-object v5, p0, Lcom/cooliris/media/Gallery;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v5, v4}, Lcom/cooliris/media/GridLayer;->setDataSource(Lcom/cooliris/media/DataSource;)V

    .line 1491
    :goto_273
    iget-object v4, p0, Lcom/cooliris/media/Gallery;->mGridLayer:Lcom/cooliris/media/GridLayer;

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/cooliris/media/Gallery;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {v7, v1}, Lcom/cooliris/media/Utils;->getBucketNameFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Lcom/cooliris/media/GridLayer;->setViewIntent(ZLjava/lang/String;)V

    .line 1498
    invoke-virtual {v3}, Lcom/cooliris/media/LocalDataSource;->isSingleImage()Z

    move-result v1

    if-eqz v1, :cond_29b

    .line 1499
    iget-object v0, p0, Lcom/cooliris/media/Gallery;->mGridLayer:Lcom/cooliris/media/GridLayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cooliris/media/GridLayer;->setSingleImage(Z)V

    .line 1500
    invoke-virtual {v3, v6}, Lcom/cooliris/media/LocalDataSource;->setSingleUriMimeType(Ljava/lang/String;)V

    goto/16 :goto_53

    .line 1505
    :catch_292
    move-exception v0

    goto/16 :goto_53

    .line 1489
    :cond_295
    iget-object v4, p0, Lcom/cooliris/media/Gallery;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v4, v5}, Lcom/cooliris/media/GridLayer;->setDataSource(Lcom/cooliris/media/DataSource;)V

    goto :goto_273

    .line 1501
    :cond_29b
    if-eqz v0, :cond_53

    .line 1502
    iget-object v0, p0, Lcom/cooliris/media/Gallery;->mGridLayer:Lcom/cooliris/media/GridLayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cooliris/media/GridLayer;->setSingleImage(Z)V

    .line 1503
    iget-object v0, p0, Lcom/cooliris/media/Gallery;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v0}, Lcom/cooliris/media/GridLayer;->startSlideshow()V
    :try_end_2a8
    .catch Ljava/lang/NullPointerException; {:try_start_269 .. :try_end_2a8} :catch_292

    goto/16 :goto_53

    :cond_2aa
    move v0, v3

    goto/16 :goto_98
.end method

.method private isImageType(Ljava/lang/String;)Z
    .registers 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1234
    if-nez p1, :cond_4

    .line 1237
    :cond_3
    :goto_3
    return v0

    :cond_4
    const-string v1, "*/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_24

    const-string v1, "vnd.android.cursor.dir/image"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    const-string v1, "image/*"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    const-string v1, "image/jpeg"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_24
    const/4 v0, 0x1

    goto :goto_3
.end method

.method private isReviewIntent()Z
    .registers 3

    .prologue
    .line 1229
    invoke-virtual {p0}, Lcom/cooliris/media/Gallery;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1230
    const-string v1, "com.cooliris.media.action.REVIEW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isVideoType(Ljava/lang/String;)Z
    .registers 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1242
    if-nez p1, :cond_4

    .line 1245
    :cond_3
    :goto_3
    return v0

    :cond_4
    const-string v1, "*/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1c

    const-string v1, "vnd.android.cursor.dir/video"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    const-string v1, "video/*"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1c
    const/4 v0, 0x1

    goto :goto_3
.end method

.method private motionDialog()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 1809
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/cooliris/media/Gallery;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1811
    sget-object v1, Lcom/cooliris/media/Gallery$16;->$SwitchMap$com$cooliris$media$Gallery$MotionType:[I

    iget-object v2, p0, Lcom/cooliris/media/Gallery;->mMotionTutorial:Lcom/cooliris/media/Gallery$MotionType;

    invoke-virtual {v2}, Lcom/cooliris/media/Gallery$MotionType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_6e

    .line 1859
    :goto_17
    return-void

    .line 1813
    :pswitch_18
    const v1, 0x7f03000c

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1814
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/cooliris/media/Gallery;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1817
    const v0, 0x7f08001e

    invoke-virtual {p0, v0}, Lcom/cooliris/media/Gallery;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1818
    new-instance v1, Lcom/cooliris/media/Gallery$12;

    invoke-direct {v1, p0}, Lcom/cooliris/media/Gallery$12;-><init>(Lcom/cooliris/media/Gallery;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_17

    .line 1828
    :pswitch_39
    const/4 v1, 0x1

    sput-boolean v1, Lcom/cooliris/media/Gallery;->isTiltTestMode:Z

    .line 1830
    const v1, 0x7f03000b

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1831
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/cooliris/media/Gallery;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1834
    const v0, 0x7f08001c

    invoke-virtual {p0, v0}, Lcom/cooliris/media/Gallery;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1835
    const v1, 0x7f08001d

    invoke-virtual {p0, v1}, Lcom/cooliris/media/Gallery;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 1836
    new-instance v2, Lcom/cooliris/media/Gallery$13;

    invoke-direct {v2, p0}, Lcom/cooliris/media/Gallery$13;-><init>(Lcom/cooliris/media/Gallery;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1847
    new-instance v0, Lcom/cooliris/media/Gallery$14;

    invoke-direct {v0, p0}, Lcom/cooliris/media/Gallery$14;-><init>(Lcom/cooliris/media/Gallery;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_17

    .line 1811
    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_18
        :pswitch_39
    .end packed-switch
.end method

.method private sendInitialMessage()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 821
    iput v1, p0, Lcom/cooliris/media/Gallery;->mNumRetries:I

    .line 822
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 823
    .local v0, checkStorage:Landroid/os/Message;
    iput v1, v0, Landroid/os/Message;->what:I

    .line 824
    iget-object v1, p0, Lcom/cooliris/media/Gallery;->mhandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 825
    return-void
.end method

.method public static setPlayVideo(Z)V
    .registers 1
    .parameter "isVideoPlay"

    .prologue
    .line 1916
    sput-boolean p0, Lcom/cooliris/media/Gallery;->isVideoPlay:Z

    .line 1917
    return-void
.end method

.method public static setStorageVolume(Landroid/content/Context;)V
    .registers 2
    .parameter

    .prologue
    .line 1923
    const-string v0, "storage"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    sput-object v0, Lcom/cooliris/media/Gallery;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 1924
    sget-object v0, Lcom/cooliris/media/Gallery;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v0

    sput-object v0, Lcom/cooliris/media/Gallery;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    .line 1925
    return-void
.end method

.method private toastFinish(Ljava/lang/String;)V
    .registers 6
    .parameter

    .prologue
    .line 1896
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1898
    const-wide/16 v0, 0x3e8

    :try_start_a
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_d} :catch_11

    .line 1902
    :goto_d
    invoke-virtual {p0}, Lcom/cooliris/media/Gallery;->finish()V

    .line 1903
    return-void

    .line 1899
    :catch_11
    move-exception v0

    .line 1900
    const-string v1, "Gallery"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Thread sleep interrupt! ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d
.end method

.method private updateAnimation(I)V
    .registers 8
    .parameter "index"

    .prologue
    const/16 v5, 0xc8

    .line 1707
    iget-object v2, p0, Lcom/cooliris/media/Gallery;->mMotionAnimationHandler:Landroid/os/Handler;

    .line 1709
    .local v2, mAnimationHandler:Landroid/os/Handler;
    iget-boolean v3, p0, Lcom/cooliris/media/Gallery;->mEndUpdateAnimation:Z

    if-eqz v3, :cond_9

    .line 1731
    :cond_8
    :goto_8
    return-void

    .line 1712
    :cond_9
    const/4 v0, 0x0

    .line 1713
    .local v0, animation_size:I
    iget-object v3, p0, Lcom/cooliris/media/Gallery;->mImgView:Landroid/widget/ImageView;

    if-eqz v3, :cond_8

    .line 1714
    sget-object v3, Lcom/cooliris/media/Gallery;->mZoomingDrawable:[I

    array-length v0, v3

    .line 1716
    :try_start_11
    iget-object v3, p0, Lcom/cooliris/media/Gallery;->mImgView:Landroid/widget/ImageView;

    sget-object v4, Lcom/cooliris/media/Gallery;->mZoomingDrawable:[I

    aget v4, v4, p1

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V
    :try_end_1a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_11 .. :try_end_1a} :catch_2d

    .line 1721
    :goto_1a
    add-int/lit8 v3, p1, 0x1

    iput v3, p0, Lcom/cooliris/media/Gallery;->mMotionAnimationIndex:I

    .line 1722
    if-eqz v2, :cond_8

    .line 1723
    iget v3, p0, Lcom/cooliris/media/Gallery;->mMotionAnimationIndex:I

    if-lt v3, v0, :cond_32

    .line 1724
    const/4 v3, 0x0

    iput v3, p0, Lcom/cooliris/media/Gallery;->mMotionAnimationIndex:I

    .line 1725
    const-wide/16 v3, 0x7d0

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_8

    .line 1717
    :catch_2d
    move-exception v1

    .line 1718
    .local v1, e:Ljava/lang/OutOfMemoryError;
    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_1a

    .line 1727
    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    :cond_32
    const-wide/16 v3, 0x1f4

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_8
.end method


# virtual methods
.method public checkAutoRotationUse()V
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 1947
    :try_start_1
    invoke-virtual {p0}, Lcom/cooliris/media/Gallery;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accelerometer_rotation"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    if-ne v1, v0, :cond_2a

    :goto_d
    iput-boolean v0, p0, Lcom/cooliris/media/Gallery;->mIsAutoRotationOn:Z

    .line 1948
    const-string v0, "Gallery"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAutoRotation is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/cooliris/media/Gallery;->mIsAutoRotationOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_29} :catch_2c

    .line 1953
    :goto_29
    return-void

    .line 1947
    :cond_2a
    const/4 v0, 0x0

    goto :goto_d

    .line 1949
    :catch_2c
    move-exception v0

    .line 1951
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_29
.end method

.method public freeRotation()V
    .registers 2

    .prologue
    .line 1670
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/cooliris/media/Gallery;->setRequestedOrientation(I)V

    .line 1671
    return-void
.end method

.method public getChkFromCamera()Z
    .registers 2

    .prologue
    .line 782
    iget-boolean v0, p0, Lcom/cooliris/media/Gallery;->mChkFromCamera:Z

    return v0
.end method

.method public getChkFromPhotoWall()Z
    .registers 2

    .prologue
    .line 795
    iget-boolean v0, p0, Lcom/cooliris/media/Gallery;->mChkFromPhotoWall:Z

    return v0
.end method

.method public getChkFromWidget()Z
    .registers 2

    .prologue
    .line 786
    iget-boolean v0, p0, Lcom/cooliris/media/Gallery;->mChkFromWidget:Z

    return v0
.end method

.method public getFolderID()J
    .registers 3

    .prologue
    .line 233
    iget-wide v0, p0, Lcom/cooliris/media/Gallery;->mFolderID:J

    return-wide v0
.end method

.method public getGridLayer()Lcom/cooliris/media/GridLayer;
    .registers 2

    .prologue
    .line 841
    iget-object v0, p0, Lcom/cooliris/media/Gallery;->mGridLayer:Lcom/cooliris/media/GridLayer;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .registers 2

    .prologue
    .line 837
    iget-object v0, p0, Lcom/cooliris/media/Gallery;->mhandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getMotionInfoRunnable()Ljava/lang/Runnable;
    .registers 2

    .prologue
    .line 1756
    iget-object v0, p0, Lcom/cooliris/media/Gallery;->mMotionInfoRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method public getPictureFrameMode()Z
    .registers 2

    .prologue
    .line 1752
    sget-boolean v0, Lcom/cooliris/media/Gallery;->mPictureFrameMode:Z

    return v0
.end method

.method public getProgressBarMaxCount()I
    .registers 2

    .prologue
    .line 448
    sget v0, Lcom/cooliris/media/Gallery;->mProgressMaxCnt:I

    return v0
.end method

.method public getProgressDialog()Landroid/app/ProgressDialog;
    .registers 2

    .prologue
    .line 438
    iget-object v0, p0, Lcom/cooliris/media/Gallery;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method public getSetAsContact()Z
    .registers 4

    .prologue
    .line 799
    const-string v0, "Gallery"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSetAsContact = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/cooliris/media/Gallery;->mSetAsContact:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    iget-boolean v0, p0, Lcom/cooliris/media/Gallery;->mSetAsContact:Z

    return v0
.end method

.method public getSetAsWallpaper()Z
    .registers 4

    .prologue
    .line 790
    const-string v0, "Gallery"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSetAsWallpaper = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/cooliris/media/Gallery;->mSetAsWallpaper:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    iget-boolean v0, p0, Lcom/cooliris/media/Gallery;->mSetAsWallpaper:Z

    return v0
.end method

.method public getWidgetSize()[I
    .registers 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/cooliris/media/Gallery;->mWidgetSize:[I

    return-object v0
.end method

.method public isMultiplePickIntent()Z
    .registers 3

    .prologue
    .line 1217
    invoke-virtual {p0}, Lcom/cooliris/media/Gallery;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1218
    const-string v1, "android.intent.action.MULTIPLE_PICK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isPickIntent()Z
    .registers 3

    .prologue
    .line 1211
    invoke-virtual {p0}, Lcom/cooliris/media/Gallery;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1212
    const-string v1, "android.intent.action.PICK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public isViewIntent()Z
    .registers 3

    .prologue
    .line 1224
    invoke-virtual {p0}, Lcom/cooliris/media/Gallery;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1225
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public lockRotation()V
    .registers 2

    .prologue
    .line 1651
    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/cooliris/media/Gallery;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 1653
    packed-switch v0, :pswitch_data_2a

    .line 1667
    :goto_13
    return-void

    .line 1655
    :pswitch_14
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/cooliris/media/Gallery;->setRequestedOrientation(I)V

    goto :goto_13

    .line 1658
    :pswitch_19
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/cooliris/media/Gallery;->setRequestedOrientation(I)V

    goto :goto_13

    .line 1661
    :pswitch_1e
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/cooliris/media/Gallery;->setRequestedOrientation(I)V

    goto :goto_13

    .line 1664
    :pswitch_24
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/cooliris/media/Gallery;->setRequestedOrientation(I)V

    goto :goto_13

    .line 1653
    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_14
        :pswitch_19
        :pswitch_1e
        :pswitch_24
    .end packed-switch
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 1251
    sparse-switch p1, :sswitch_data_70

    .line 1303
    :cond_4
    :goto_4
    return-void

    .line 1253
    :sswitch_5
    if-ne p2, v0, :cond_4

    .line 1254
    invoke-virtual {p0, p2, p3}, Lcom/cooliris/media/Gallery;->setResult(ILandroid/content/Intent;)V

    .line 1255
    invoke-virtual {p0}, Lcom/cooliris/media/Gallery;->finish()V

    goto :goto_4

    .line 1263
    :sswitch_e
    if-ne p2, v0, :cond_4

    .line 1264
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1265
    iget-object v1, p0, Lcom/cooliris/media/Gallery;->mGridLayer:Lcom/cooliris/media/GridLayer;

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    .line 1266
    invoke-virtual {p0}, Lcom/cooliris/media/Gallery;->isViewIntent()Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 1268
    sget-object v1, Lcom/cooliris/cache/CacheService;->mDirtyFromView:Ljava/util/ArrayList;

    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1269
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1270
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1271
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1272
    const-string v0, "com.cooliris.media"

    const-string v2, "com.cooliris.media.Gallery"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1273
    const/high16 v0, 0x400

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1274
    invoke-virtual {p0, v1}, Lcom/cooliris/media/Gallery;->startActivity(Landroid/content/Intent;)V

    goto :goto_4

    .line 1276
    :cond_4c
    iget-object v1, p0, Lcom/cooliris/media/Gallery;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v1, v0}, Lcom/cooliris/media/GridLayer;->focusItem(Ljava/lang/String;)V

    .line 1281
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/cooliris/media/Gallery;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/cooliris/app/Res;->string:Lcom/cooliris/media/R$string;

    const v2, 0x7f06007b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 1284
    new-instance v1, Lcom/cooliris/media/Gallery$6;

    invoke-direct {v1, p0, v0}, Lcom/cooliris/media/Gallery$6;-><init>(Lcom/cooliris/media/Gallery;Landroid/app/ProgressDialog;)V

    .line 1294
    const/4 v0, 0x0

    const-wide/16 v2, 0x9c4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_4

    .line 1251
    nop

    :sswitch_data_70
    .sparse-switch
        0xa -> :sswitch_5
        0x64 -> :sswitch_e
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .parameter

    .prologue
    .line 1133
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1134
    iget-object v0, p0, Lcom/cooliris/media/Gallery;->mGridLayer:Lcom/cooliris/media/GridLayer;

    if-eqz v0, :cond_57

    .line 1135
    iget-object v0, p0, Lcom/cooliris/media/Gallery;->mGridLayer:Lcom/cooliris/media/GridLayer;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lcom/cooliris/media/GridLayer;->markDirty(I)V

    .line 1137
    iget-object v0, p0, Lcom/cooliris/media/Gallery;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v0}, Lcom/cooliris/media/GridLayer;->getHud()Lcom/cooliris/media/HudLayer;

    move-result-object v0

    iget-object v0, v0, Lcom/cooliris/media/HudLayer;->mSelectionMenuBottom:Lcom/cooliris/media/MenuBar;

    if-eqz v0, :cond_2e

    .line 1138
    iget-object v0, p0, Lcom/cooliris/media/Gallery;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v0}, Lcom/cooliris/media/GridLayer;->getHud()Lcom/cooliris/media/HudLayer;

    move-result-object v0

    iget-object v0, v0, Lcom/cooliris/media/HudLayer;->mSelectionMenuBottom:Lcom/cooliris/media/MenuBar;

    invoke-virtual {v0}, Lcom/cooliris/media/MenuBar;->noFadeoutClose()V

    .line 1139
    iget-object v0, p0, Lcom/cooliris/media/Gallery;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v0}, Lcom/cooliris/media/GridLayer;->getHud()Lcom/cooliris/media/HudLayer;

    move-result-object v0

    iget-object v0, v0, Lcom/cooliris/media/HudLayer;->mSelectionMenuBottom:Lcom/cooliris/media/MenuBar;

    invoke-virtual {v0}, Lcom/cooliris/media/MenuBar;->close()V

    .line 1141
    :cond_2e
    iget-object v0, p0, Lcom/cooliris/media/Gallery;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v0}, Lcom/cooliris/media/GridLayer;->getHud()Lcom/cooliris/media/HudLayer;

    move-result-object v0

    iget-object v0, v0, Lcom/cooliris/media/HudLayer;->mFullscreenMenu:Lcom/cooliris/media/MenuBar;

    if-eqz v0, :cond_4e

    .line 1142
    iget-object v0, p0, Lcom/cooliris/media/Gallery;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v0}, Lcom/cooliris/media/GridLayer;->getHud()Lcom/cooliris/media/HudLayer;

    move-result-object v0

    iget-object v0, v0, Lcom/cooliris/media/HudLayer;->mFullscreenMenu:Lcom/cooliris/media/MenuBar;

    invoke-virtual {v0}, Lcom/cooliris/media/MenuBar;->noFadeoutClose()V

    .line 1143
    iget-object v0, p0, Lcom/cooliris/media/Gallery;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v0}, Lcom/cooliris/media/GridLayer;->getHud()Lcom/cooliris/media/HudLayer;

    move-result-object v0

    iget-object v0, v0, Lcom/cooliris/media/HudLayer;->mFullscreenMenu:Lcom/cooliris/media/MenuBar;

    invoke-virtual {v0}, Lcom/cooliris/media/MenuBar;->close()V

    .line 1145
    :cond_4e
    iget-object v0, p0, Lcom/cooliris/media/Gallery;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v0}, Lcom/cooliris/media/GridLayer;->getBoundaryLayer()Lcom/cooliris/media/BoundaryLayer;

    move-result-object v0

    .line 1146
    invoke-virtual {v0}, Lcom/cooliris/media/BoundaryLayer;->onConfigurationChanged()V

    .line 1148
    :cond_57
    iget-object v0, p0, Lcom/cooliris/media/Gallery;->mRenderView:Lcom/cooliris/media/RenderView;

    if-eqz v0, :cond_60

    .line 1149
    iget-object v0, p0, Lcom/cooliris/media/Gallery;->mRenderView:Lcom/cooliris/media/RenderView;

    invoke-virtual {v0}, Lcom/cooliris/media/RenderView;->requestRender()V

    .line 1151
    :cond_60
    const-string v0, "Gallery"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 20
    .parameter "savedInstanceState"

    .prologue
    .line 557
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 560
    sget-boolean v1, Lcom/cooliris/media/Utils;->mUseXiv:Z

    if-eqz v1, :cond_2c

    .line 561
    invoke-static {}, Lcom/quramsoft/xiv/XIVUtils;->initialize()V

    .line 574
    invoke-static {}, Lcom/quramsoft/xiv/SFUtils;->getInstance()Lcom/quramsoft/xiv/SFUtils;

    move-result-object v1

    const v2, 0x3ecccccd

    const/high16 v3, 0x4000

    const v4, 0x40066666

    const/4 v5, 0x5

    const/4 v6, 0x3

    invoke-virtual/range {v1 .. v6}, Lcom/quramsoft/xiv/SFUtils;->setup(FFFII)V

    .line 577
    invoke-static {}, Lcom/cooliris/media/Utils;->bIsNote()Z

    move-result v1

    if-eqz v1, :cond_61

    .line 578
    invoke-static {}, Lcom/quramsoft/xiv/XIVUtils;->getInstance()Lcom/quramsoft/xiv/XIVUtils;

    move-result-object v1

    const/16 v2, 0x600

    const/16 v3, 0xc00

    invoke-virtual {v1, v2, v3}, Lcom/quramsoft/xiv/XIVUtils;->setup(II)V

    .line 585
    :cond_2c
    :goto_2c
    new-instance v1, Lcom/cooliris/app/App;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/cooliris/app/App;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/cooliris/media/Gallery;->mApp:Lcom/cooliris/app/App;

    .line 588
    invoke-virtual/range {p0 .. p0}, Lcom/cooliris/media/Gallery;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/cooliris/drm/DrmChecker;->init(Landroid/content/Context;)V

    .line 590
    invoke-static/range {p0 .. p0}, Lcom/cooliris/media/Gallery;->setStorageVolume(Landroid/content/Context;)V

    .line 591
    invoke-static {}, Lcom/cooliris/media/ImageManager;->hasStorage()Z

    move-result v9

    .line 594
    .local v9, imageManagerHasStorage:Z
    invoke-direct/range {p0 .. p0}, Lcom/cooliris/media/Gallery;->checkMediaScanning()Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 595
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/cooliris/media/Gallery;->mMediaScannerRunning:Z

    .line 596
    invoke-virtual/range {p0 .. p0}, Lcom/cooliris/media/Gallery;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060052

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/cooliris/media/Gallery;->toastFinish(Ljava/lang/String;)V

    .line 779
    :cond_60
    :goto_60
    return-void

    .line 580
    .end local v9           #imageManagerHasStorage:Z
    :cond_61
    invoke-static {}, Lcom/quramsoft/xiv/XIVUtils;->getInstance()Lcom/quramsoft/xiv/XIVUtils;

    move-result-object v1

    const/16 v2, 0x400

    const/16 v3, 0xc00

    invoke-virtual {v1, v2, v3}, Lcom/quramsoft/xiv/XIVUtils;->setup(II)V

    goto :goto_2c

    .line 600
    .restart local v9       #imageManagerHasStorage:Z
    :cond_6d
    new-instance v12, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v12, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 601
    .local v12, intentMediaStateFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v12, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 602
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v12, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 603
    const-string v1, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v12, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 604
    const-string v1, "file"

    invoke-virtual {v12, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 605
    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v12, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 606
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cooliris/media/Gallery;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v12}, Lcom/cooliris/media/Gallery;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 608
    sget-boolean v1, Lcom/cooliris/media/Utils;->mUse_Q1_Eur_Open:Z

    if-eqz v1, :cond_b2

    .line 609
    new-instance v11, Landroid/content/IntentFilter;

    invoke-direct {v11}, Landroid/content/IntentFilter;-><init>()V

    .line 610
    .local v11, intentGestureFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TWIST_LEFT"

    invoke-virtual {v11, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 611
    const-string v1, "android.intent.action.TWIST_RIGHT"

    invoke-virtual {v11, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 612
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cooliris/media/Gallery;->mGestureReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v11}, Lcom/cooliris/media/Gallery;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 615
    .end local v11           #intentGestureFilter:Landroid/content/IntentFilter;
    :cond_b2
    const-string v1, "TEL"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cooliris/media/Gallery;->code:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_fa

    const-string v1, "VAU"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cooliris/media/Gallery;->code:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_fa

    const-string v1, "XSA"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cooliris/media/Gallery;->code:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_fa

    const-string v1, "OPS"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cooliris/media/Gallery;->code:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_fa

    const-string v1, "HUT"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cooliris/media/Gallery;->code:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_fa

    const-string v1, "OPP"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cooliris/media/Gallery;->code:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_126

    .line 617
    :cond_fa
    const/4 v1, 0x1

    sput-boolean v1, Lcom/cooliris/media/Utils;->mUse_U1_Aus_Open:Z

    .line 632
    :goto_fd
    invoke-direct/range {p0 .. p0}, Lcom/cooliris/media/Gallery;->checkLowStorage()Z

    move-result v1

    if-eqz v1, :cond_12a

    .line 633
    sget-object v1, Lcom/cooliris/media/LocalDataSource;->sThumbnailCache:Lcom/cooliris/media/DiskCache;

    invoke-virtual {v1}, Lcom/cooliris/media/DiskCache;->close()V

    .line 634
    sget-object v1, Lcom/cooliris/media/LocalDataSource;->sThumbnailCacheVideo:Lcom/cooliris/media/DiskCache;

    invoke-virtual {v1}, Lcom/cooliris/media/DiskCache;->close()V

    .line 635
    sget-object v1, Lcom/cooliris/media/PicasaDataSource;->sThumbnailCache:Lcom/cooliris/media/DiskCache;

    invoke-virtual {v1}, Lcom/cooliris/media/DiskCache;->close()V

    .line 636
    sget-object v1, Lcom/cooliris/cache/CacheService;->sAlbumCache:Lcom/cooliris/media/DiskCache;

    invoke-virtual {v1}, Lcom/cooliris/media/DiskCache;->close()V

    .line 637
    sget-object v1, Lcom/cooliris/cache/CacheService;->sMetaAlbumCache:Lcom/cooliris/media/DiskCache;

    invoke-virtual {v1}, Lcom/cooliris/media/DiskCache;->close()V

    .line 638
    sget-object v1, Lcom/cooliris/cache/CacheService;->sSkipThumbnailIds:Lcom/cooliris/media/DiskCache;

    invoke-virtual {v1}, Lcom/cooliris/media/DiskCache;->flush()V

    .line 639
    invoke-virtual/range {p0 .. p0}, Lcom/cooliris/media/Gallery;->finish()V

    goto/16 :goto_60

    .line 621
    :cond_126
    const/4 v1, 0x0

    sput-boolean v1, Lcom/cooliris/media/Utils;->mUse_U1_Aus_Open:Z

    goto :goto_fd

    .line 642
    :cond_12a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cooliris/media/Gallery;->mThumbKicker:Lcom/cooliris/media/Gallery$ThumbKicker;

    invoke-virtual {v1}, Lcom/cooliris/media/Gallery$ThumbKicker;->suspendThumbWork()V

    .line 644
    invoke-virtual/range {p0 .. p0}, Lcom/cooliris/media/Gallery;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    .line 645
    .local v8, extras:Landroid/os/Bundle;
    invoke-virtual/range {p0 .. p0}, Lcom/cooliris/media/Gallery;->isViewIntent()Z

    move-result v1

    if-eqz v1, :cond_1af

    .line 646
    if-eqz v8, :cond_15c

    .line 647
    const-string v1, "MotionTest"

    const/4 v2, 0x0

    invoke-virtual {v8, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v13

    .line 648
    .local v13, mMotionTest:I
    packed-switch v13, :pswitch_data_350

    .line 659
    sget-object v1, Lcom/cooliris/media/Gallery$MotionType;->MOTION_NONE:Lcom/cooliris/media/Gallery$MotionType;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/cooliris/media/Gallery;->mMotionTutorial:Lcom/cooliris/media/Gallery$MotionType;

    .line 662
    :goto_151
    const-string v1, "Sensitivity"

    const/4 v2, 0x1

    invoke-virtual {v8, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/cooliris/media/Gallery;->mMotionPreviewMove:I

    .line 664
    .end local v13           #mMotionTest:I
    :cond_15c
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/cooliris/media/Gallery;->mChkFromCamera:Z

    .line 669
    :cond_161
    :goto_161
    const/16 v16, 0x0

    .line 670
    .local v16, slideshowIntent:Z
    invoke-virtual/range {p0 .. p0}, Lcom/cooliris/media/Gallery;->isViewIntent()Z

    move-result v1

    if-eqz v1, :cond_220

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cooliris/media/Gallery;->mMotionTutorial:Lcom/cooliris/media/Gallery$MotionType;

    sget-object v2, Lcom/cooliris/media/Gallery$MotionType;->MOTION_NONE:Lcom/cooliris/media/Gallery$MotionType;

    if-ne v1, v2, :cond_220

    .line 671
    invoke-virtual/range {p0 .. p0}, Lcom/cooliris/media/Gallery;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v17

    .line 672
    .local v17, uri:Landroid/net/Uri;
    if-eqz v8, :cond_18d

    .line 673
    const-string v1, "from-Camera"

    const/4 v2, 0x1

    invoke-virtual {v8, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/cooliris/media/Gallery;->mChkFromCamera:Z

    .line 674
    const-string v1, "slideshow"

    const/4 v2, 0x0

    invoke-virtual {v8, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    .line 676
    :cond_18d
    if-eqz v17, :cond_195

    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1c1

    .line 677
    :cond_195
    invoke-virtual/range {p0 .. p0}, Lcom/cooliris/media/Gallery;->finish()V

    goto/16 :goto_60

    .line 650
    .end local v16           #slideshowIntent:Z
    .end local v17           #uri:Landroid/net/Uri;
    .restart local v13       #mMotionTest:I
    :pswitch_19a
    sget-object v1, Lcom/cooliris/media/Gallery$MotionType;->MOTION_NONE:Lcom/cooliris/media/Gallery$MotionType;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/cooliris/media/Gallery;->mMotionTutorial:Lcom/cooliris/media/Gallery$MotionType;

    goto :goto_151

    .line 653
    :pswitch_1a1
    sget-object v1, Lcom/cooliris/media/Gallery$MotionType;->MOTION_TUTORIAL:Lcom/cooliris/media/Gallery$MotionType;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/cooliris/media/Gallery;->mMotionTutorial:Lcom/cooliris/media/Gallery$MotionType;

    goto :goto_151

    .line 656
    :pswitch_1a8
    sget-object v1, Lcom/cooliris/media/Gallery$MotionType;->MOTION_PREVIEW:Lcom/cooliris/media/Gallery$MotionType;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/cooliris/media/Gallery;->mMotionTutorial:Lcom/cooliris/media/Gallery$MotionType;

    goto :goto_151

    .line 665
    .end local v13           #mMotionTest:I
    :cond_1af
    invoke-virtual/range {p0 .. p0}, Lcom/cooliris/media/Gallery;->isPickIntent()Z

    move-result v1

    if-nez v1, :cond_1bb

    invoke-virtual/range {p0 .. p0}, Lcom/cooliris/media/Gallery;->isMultiplePickIntent()Z

    move-result v1

    if-eqz v1, :cond_161

    .line 666
    :cond_1bb
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/cooliris/media/Gallery;->mChkFromCamera:Z

    goto :goto_161

    .line 680
    .restart local v16       #slideshowIntent:Z
    .restart local v17       #uri:Landroid/net/Uri;
    :cond_1c1
    new-instance v7, Ljava/io/File;

    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 681
    .local v7, checkFile:Ljava/io/File;
    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "file"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22f

    .line 682
    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_204

    .line 683
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 686
    .local v10, intent:Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Lcom/cooliris/media/Gallery;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06007d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/cooliris/media/Gallery;->toastFinish(Ljava/lang/String;)V

    .line 687
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v10, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 688
    const-string v1, "com.cooliris.media"

    const-string v2, "com.cooliris.media.Gallery"

    invoke-virtual {v10, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 689
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/cooliris/media/Gallery;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_60

    .line 692
    .end local v10           #intent:Landroid/content/Intent;
    :cond_204
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_22f

    .line 695
    invoke-virtual/range {p0 .. p0}, Lcom/cooliris/media/Gallery;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06007e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/cooliris/media/Gallery;->toastFinish(Ljava/lang/String;)V

    goto/16 :goto_60

    .line 701
    .end local v7           #checkFile:Ljava/io/File;
    .end local v17           #uri:Landroid/net/Uri;
    :cond_220
    sget-object v1, Lcom/cooliris/media/Gallery;->mSlideshow:Lcom/cooliris/wallpaper/Slideshow;

    if-eqz v1, :cond_22f

    sget-object v1, Lcom/cooliris/media/Gallery;->mSlideshow:Lcom/cooliris/wallpaper/Slideshow;

    sget-boolean v1, Lcom/cooliris/wallpaper/Slideshow;->isPlaying:Z

    if-eqz v1, :cond_22f

    .line 702
    sget-object v1, Lcom/cooliris/media/Gallery;->mSlideshow:Lcom/cooliris/wallpaper/Slideshow;

    const/4 v1, 0x0

    sput-boolean v1, Lcom/cooliris/wallpaper/Slideshow;->isPlaying:Z

    .line 705
    :cond_22f
    invoke-virtual/range {p0 .. p0}, Lcom/cooliris/media/Gallery;->isViewIntent()Z

    move-result v1

    if-eqz v1, :cond_2c7

    invoke-virtual/range {p0 .. p0}, Lcom/cooliris/media/Gallery;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c7

    if-eqz v16, :cond_2c7

    .line 707
    if-nez v9, :cond_269

    .line 710
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v1

    if-eqz v1, :cond_263

    .line 711
    sget-object v1, Lcom/cooliris/app/Res;->string:Lcom/cooliris/media/R$string;

    const v14, 0x7f060026

    .line 715
    .local v14, res:I
    :goto_254
    invoke-virtual/range {p0 .. p0}, Lcom/cooliris/media/Gallery;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/cooliris/media/Gallery;->toastFinish(Ljava/lang/String;)V

    goto/16 :goto_60

    .line 713
    .end local v14           #res:I
    :cond_263
    sget-object v1, Lcom/cooliris/app/Res;->string:Lcom/cooliris/media/R$string;

    const v14, 0x7f060027

    .restart local v14       #res:I
    goto :goto_254

    .line 718
    .end local v14           #res:I
    :cond_269
    invoke-virtual/range {p0 .. p0}, Lcom/cooliris/media/Gallery;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "slideshowseleted"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2ac

    .line 719
    new-instance v15, Lcom/cooliris/wallpaper/Slideshow;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/cooliris/wallpaper/Slideshow;-><init>(Landroid/content/Context;)V

    .line 720
    .local v15, slideshow:Lcom/cooliris/wallpaper/Slideshow;
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v15, Lcom/cooliris/wallpaper/Slideshow;->useUriList:Ljava/lang/Boolean;

    .line 721
    invoke-virtual/range {p0 .. p0}, Lcom/cooliris/media/Gallery;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "slideUriList"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v15, Lcom/cooliris/wallpaper/Slideshow;->uriList:Ljava/util/ArrayList;

    .line 722
    iget-object v1, v15, Lcom/cooliris/wallpaper/Slideshow;->uriList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_60

    .line 725
    new-instance v1, Lcom/cooliris/wallpaper/RandomDataSource;

    invoke-direct {v1}, Lcom/cooliris/wallpaper/RandomDataSource;-><init>()V

    invoke-virtual {v15, v1}, Lcom/cooliris/wallpaper/Slideshow;->setDataSource(Lcom/cooliris/wallpaper/Slideshow$DataSource;)V

    .line 726
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/cooliris/media/Gallery;->setContentView(Landroid/view/View;)V

    .line 727
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/cooliris/media/Gallery;->mDockSlideshow:Z

    goto/16 :goto_60

    .line 729
    .end local v15           #slideshow:Lcom/cooliris/wallpaper/Slideshow;
    :cond_2ac
    new-instance v15, Lcom/cooliris/wallpaper/Slideshow;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/cooliris/wallpaper/Slideshow;-><init>(Landroid/content/Context;)V

    .line 730
    .restart local v15       #slideshow:Lcom/cooliris/wallpaper/Slideshow;
    new-instance v1, Lcom/cooliris/wallpaper/RandomDataSource;

    invoke-direct {v1}, Lcom/cooliris/wallpaper/RandomDataSource;-><init>()V

    invoke-virtual {v15, v1}, Lcom/cooliris/wallpaper/Slideshow;->setDataSource(Lcom/cooliris/wallpaper/Slideshow$DataSource;)V

    .line 731
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/cooliris/media/Gallery;->setContentView(Landroid/view/View;)V

    .line 732
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/cooliris/media/Gallery;->mDockSlideshow:Z

    goto/16 :goto_60

    .line 738
    .end local v15           #slideshow:Lcom/cooliris/wallpaper/Slideshow;
    :cond_2c7
    const v1, 0x7f030016

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/cooliris/media/Gallery;->setContentView(I)V

    .line 739
    const v1, 0x7f08002c

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/cooliris/media/Gallery;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/cooliris/media/RenderView;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/cooliris/media/Gallery;->mRenderView:Lcom/cooliris/media/RenderView;

    .line 741
    new-instance v1, Lcom/cooliris/media/GridLayer;

    const/high16 v2, 0x42c0

    sget v3, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v2, v3

    float-to-int v3, v2

    const/high16 v2, 0x4290

    sget v4, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v2, v4

    float-to-int v4, v2

    new-instance v5, Lcom/cooliris/media/GridLayoutInterface;

    const/4 v2, 0x4

    invoke-direct {v5, v2}, Lcom/cooliris/media/GridLayoutInterface;-><init>(I)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/cooliris/media/Gallery;->mRenderView:Lcom/cooliris/media/RenderView;

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/cooliris/media/GridLayer;-><init>(Landroid/content/Context;IILcom/cooliris/media/LayoutInterface;Lcom/cooliris/media/RenderView;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/cooliris/media/Gallery;->mGridLayer:Lcom/cooliris/media/GridLayer;

    .line 743
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cooliris/media/Gallery;->mRenderView:Lcom/cooliris/media/RenderView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cooliris/media/Gallery;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v1, v2}, Lcom/cooliris/media/RenderView;->setRootLayer(Lcom/cooliris/media/RootLayer;)V

    .line 745
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cooliris/media/Gallery;->mApp:Lcom/cooliris/app/App;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cooliris/media/Gallery;->mGridLayer:Lcom/cooliris/media/GridLayer;

    iput-object v2, v1, Lcom/cooliris/app/App;->mGridLayer:Lcom/cooliris/media/GridLayer;

    .line 747
    sget-boolean v1, Lcom/cooliris/media/Utils;->mUse_U1_Aus_Open:Z

    if-eqz v1, :cond_31b

    .line 748
    invoke-virtual/range {p0 .. p0}, Lcom/cooliris/media/Gallery;->setOrientationListener()V

    .line 754
    :cond_31b
    sget-boolean v1, Lcom/cooliris/media/Utils;->mSupportMotionTilt:Z

    if-eqz v1, :cond_32a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cooliris/media/Gallery;->mMotionTutorial:Lcom/cooliris/media/Gallery$MotionType;

    sget-object v2, Lcom/cooliris/media/Gallery$MotionType;->MOTION_NONE:Lcom/cooliris/media/Gallery$MotionType;

    if-eq v1, v2, :cond_32a

    .line 755
    invoke-direct/range {p0 .. p0}, Lcom/cooliris/media/Gallery;->motionDialog()V

    .line 758
    :cond_32a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cooliris/media/Gallery;->mPicasaAccountThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 759
    new-instance v1, Lcom/cooliris/media/Gallery$5;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cooliris/media/Gallery;->mPicasaAccountThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v2}, Lcom/cooliris/media/Gallery$5;-><init>(Lcom/cooliris/media/Gallery;Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/cooliris/media/Gallery;->mPicasaHandler:Landroid/os/Handler;

    .line 776
    invoke-direct/range {p0 .. p0}, Lcom/cooliris/media/Gallery;->sendInitialMessage()V

    .line 778
    const-string v1, "Gallery"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_60

    .line 648
    :pswitch_data_350
    .packed-switch 0x0
        :pswitch_19a
        :pswitch_1a1
        :pswitch_1a8
    .end packed-switch
.end method

.method public onDestroy()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1083
    sget-object v0, Lcom/cooliris/app/Res;->layout:Lcom/cooliris/media/R$layout;

    const v0, 0x7f030007

    invoke-virtual {p0, v0}, Lcom/cooliris/media/Gallery;->setContentView(I)V

    .line 1086
    iget-object v0, p0, Lcom/cooliris/media/Gallery;->mhandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1087
    iget-object v0, p0, Lcom/cooliris/media/Gallery;->mhandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1089
    iget-object v0, p0, Lcom/cooliris/media/Gallery;->mPicasaAccountThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 1090
    iput-object v1, p0, Lcom/cooliris/media/Gallery;->mPicasaAccountThread:Landroid/os/HandlerThread;

    .line 1091
    iput-object v1, p0, Lcom/cooliris/media/Gallery;->mPicasaHandler:Landroid/os/Handler;

    .line 1093
    iget-object v0, p0, Lcom/cooliris/media/Gallery;->mThumbKicker:Lcom/cooliris/media/Gallery$ThumbKicker;

    invoke-virtual {v0}, Lcom/cooliris/media/Gallery$ThumbKicker;->stopKickThumbSuspend()V

    .line 1095
    iget-boolean v0, p0, Lcom/cooliris/media/Gallery;->mMediaScannerRunning:Z

    if-nez v0, :cond_2a

    .line 1096
    invoke-static {p0}, Lcom/cooliris/cache/CacheService;->deleteDirtyThumbnail(Landroid/content/Context;)V

    .line 1099
    :cond_2a
    iget-object v0, p0, Lcom/cooliris/media/Gallery;->mGridLayer:Lcom/cooliris/media/GridLayer;

    if-eqz v0, :cond_3e

    .line 1100
    iget-object v0, p0, Lcom/cooliris/media/Gallery;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v0}, Lcom/cooliris/media/GridLayer;->getDataSource()Lcom/cooliris/media/DataSource;

    move-result-object v0

    .line 1101
    if-eqz v0, :cond_39

    .line 1102
    invoke-interface {v0}, Lcom/cooliris/media/DataSource;->shutdown()V

    .line 1104
    :cond_39
    iget-object v0, p0, Lcom/cooliris/media/Gallery;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v0}, Lcom/cooliris/media/GridLayer;->shutdown()V

    .line 1106
    :cond_3e
    iget-object v0, p0, Lcom/cooliris/media/Gallery;->mRenderView:Lcom/cooliris/media/RenderView;

    if-eqz v0, :cond_49

    .line 1107
    iget-object v0, p0, Lcom/cooliris/media/Gallery;->mRenderView:Lcom/cooliris/media/RenderView;

    invoke-virtual {v0}, Lcom/cooliris/media/RenderView;->shutdown()V

    .line 1108
    iput-object v1, p0, Lcom/cooliris/media/Gallery;->mRenderView:Lcom/cooliris/media/RenderView;

    .line 1112
    :cond_49
    :try_start_49
    iget-object v0, p0, Lcom/cooliris/media/Gallery;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/cooliris/media/Gallery;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1113
    sget-boolean v0, Lcom/cooliris/media/Utils;->mUse_Q1_Eur_Open:Z

    if-eqz v0, :cond_57

    .line 1114
    iget-object v0, p0, Lcom/cooliris/media/Gallery;->mGestureReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/cooliris/media/Gallery;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_57} :catch_72

    .line 1121
    :cond_57
    :goto_57
    iput-object v1, p0, Lcom/cooliris/media/Gallery;->mGridLayer:Lcom/cooliris/media/GridLayer;

    .line 1122
    iget-object v0, p0, Lcom/cooliris/media/Gallery;->mApp:Lcom/cooliris/app/App;

    invoke-virtual {v0}, Lcom/cooliris/app/App;->shutdown()V

    .line 1123
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1124
    const-string v0, "Gallery"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    invoke-virtual {p0}, Lcom/cooliris/media/Gallery;->getPictureFrameMode()Z

    move-result v0

    if-ne v0, v3, :cond_71

    .line 1127
    invoke-virtual {p0, v2}, Lcom/cooliris/media/Gallery;->setPictureFrameMode(Z)V

    .line 1129
    :cond_71
    return-void

    .line 1118
    :catch_72
    move-exception v0

    goto :goto_57
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1156
    sparse-switch p1, :sswitch_data_b6

    .line 1195
    :cond_5
    :goto_5
    iget-object v2, p0, Lcom/cooliris/media/Gallery;->mRenderView:Lcom/cooliris/media/RenderView;

    if-eqz v2, :cond_b0

    .line 1196
    iget-object v2, p0, Lcom/cooliris/media/Gallery;->mRenderView:Lcom/cooliris/media/RenderView;

    invoke-virtual {v2, p1, p2}, Lcom/cooliris/media/RenderView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    if-nez v2, :cond_17

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_18

    :cond_17
    move v0, v1

    .line 1198
    :cond_18
    :goto_18
    :sswitch_18
    return v0

    .line 1159
    :sswitch_19
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_18

    .line 1167
    :sswitch_1e
    iget-object v2, p0, Lcom/cooliris/media/Gallery;->mMotionTutorial:Lcom/cooliris/media/Gallery$MotionType;

    sget-object v3, Lcom/cooliris/media/Gallery$MotionType;->MOTION_PREVIEW:Lcom/cooliris/media/Gallery$MotionType;

    if-ne v2, v3, :cond_2a

    .line 1168
    const/16 v2, 0x65

    invoke-virtual {p0, v2}, Lcom/cooliris/media/Gallery;->setResult(I)V

    goto :goto_5

    .line 1169
    :cond_2a
    invoke-virtual {p0}, Lcom/cooliris/media/Gallery;->isMultiplePickIntent()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/cooliris/media/Gallery;->mGridLayer:Lcom/cooliris/media/GridLayer;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/cooliris/media/Gallery;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v2}, Lcom/cooliris/media/GridLayer;->getState()I

    move-result v2

    if-nez v2, :cond_5

    .line 1172
    iget-boolean v2, p0, Lcom/cooliris/media/Gallery;->mImageManagerHasStorageAfterDelay:Z

    if-nez v2, :cond_84

    .line 1173
    invoke-virtual {p0}, Lcom/cooliris/media/Gallery;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 1174
    if-eqz v2, :cond_84

    .line 1175
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_84

    .line 1176
    iget-object v3, p0, Lcom/cooliris/media/Gallery;->mWidgetSize:[I

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "widgetspanx"

    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    aput v4, v3, v0

    .line 1177
    iget-object v3, p0, Lcom/cooliris/media/Gallery;->mWidgetSize:[I

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v4, "widgetspany"

    invoke-virtual {v2, v4, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    aput v2, v3, v1

    .line 1178
    const-string v2, "Photo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", back , widgetspanx="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/cooliris/media/Gallery;->mWidgetSize:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    :cond_84
    invoke-virtual {p0, v1}, Lcom/cooliris/media/Gallery;->setPictureFrameMode(Z)V

    .line 1183
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1184
    invoke-virtual {p0}, Lcom/cooliris/media/Gallery;->getWidgetSize()[I

    move-result-object v3

    .line 1185
    const-string v4, "widgetspanx"

    aget v5, v3, v0

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1186
    const-string v4, "widgetspany"

    aget v3, v3, v1

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1187
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1188
    const-string v4, "inline-data"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1189
    invoke-virtual {v3, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1190
    invoke-virtual {p0, v0, v3}, Lcom/cooliris/media/Gallery;->setResult(ILandroid/content/Intent;)V

    goto/16 :goto_5

    .line 1198
    :cond_b0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto/16 :goto_18

    .line 1156
    :sswitch_data_b6
    .sparse-switch
        0x4 -> :sswitch_1e
        0x18 -> :sswitch_19
        0x19 -> :sswitch_19
        0x55 -> :sswitch_18
        0x56 -> :sswitch_18
        0x57 -> :sswitch_18
        0x58 -> :sswitch_18
        0x6f -> :sswitch_18
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1204
    iget-object v0, p0, Lcom/cooliris/media/Gallery;->mGridLayer:Lcom/cooliris/media/GridLayer;

    if-eqz v0, :cond_a

    .line 1205
    iget-object v0, p0, Lcom/cooliris/media/Gallery;->mGridLayer:Lcom/cooliris/media/GridLayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cooliris/media/GridLayer;->setKeyLongPress(Z)V

    .line 1207
    :cond_a
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onLowMemory()V
    .registers 2

    .prologue
    .line 1307
    iget-object v0, p0, Lcom/cooliris/media/Gallery;->mRenderView:Lcom/cooliris/media/RenderView;

    if-eqz v0, :cond_9

    .line 1308
    iget-object v0, p0, Lcom/cooliris/media/Gallery;->mRenderView:Lcom/cooliris/media/RenderView;

    invoke-virtual {v0}, Lcom/cooliris/media/RenderView;->handleLowMemory()V

    .line 1310
    :cond_9
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 4
    .parameter "intent"

    .prologue
    .line 829
    invoke-virtual {p0, p1}, Lcom/cooliris/media/Gallery;->setIntent(Landroid/content/Intent;)V

    .line 830
    iget-object v0, p0, Lcom/cooliris/media/Gallery;->mhandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 831
    iget-object v0, p0, Lcom/cooliris/media/Gallery;->mhandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 833
    invoke-direct {p0}, Lcom/cooliris/media/Gallery;->sendInitialMessage()V

    .line 834
    return-void
.end method

.method public onPause()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 995
    const-string v0, "Gallery"

    const-string v1, "onPause start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    sput-boolean v2, Lcom/cooliris/media/Gallery;->isTiltTestMode:Z

    .line 1000
    sget-boolean v0, Lcom/cooliris/media/Utils;->mSupportDNIE:Z

    if-eqz v0, :cond_13

    .line 1001
    invoke-static {v2}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUIMode(I)V

    .line 1004
    :cond_13
    iget-object v0, p0, Lcom/cooliris/media/Gallery;->mRenderView:Lcom/cooliris/media/RenderView;

    if-eqz v0, :cond_1c

    .line 1005
    iget-object v0, p0, Lcom/cooliris/media/Gallery;->mRenderView:Lcom/cooliris/media/RenderView;

    invoke-virtual {v0}, Lcom/cooliris/media/RenderView;->onPause()V

    .line 1007
    :cond_1c
    iget-object v0, p0, Lcom/cooliris/media/Gallery;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_2f

    .line 1008
    iget-object v0, p0, Lcom/cooliris/media/Gallery;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 1009
    iget-object v0, p0, Lcom/cooliris/media/Gallery;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1011
    :cond_2d
    iput-object v4, p0, Lcom/cooliris/media/Gallery;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1014
    :cond_2f
    iget-object v0, p0, Lcom/cooliris/media/Gallery;->mThumbKicker:Lcom/cooliris/media/Gallery$ThumbKicker;

    invoke-virtual {v0}, Lcom/cooliris/media/Gallery$ThumbKicker;->stopKickThumbSuspend()V

    .line 1016
    sget-object v0, Lcom/cooliris/media/LocalDataSource;->sThumbnailCache:Lcom/cooliris/media/DiskCache;

    invoke-virtual {v0}, Lcom/cooliris/media/DiskCache;->flush()V

    .line 1017
    sget-object v0, Lcom/cooliris/media/LocalDataSource;->sThumbnailCacheVideo:Lcom/cooliris/media/DiskCache;

    invoke-virtual {v0}, Lcom/cooliris/media/DiskCache;->flush()V

    .line 1018
    sget-object v0, Lcom/cooliris/media/PicasaDataSource;->sThumbnailCache:Lcom/cooliris/media/DiskCache;

    invoke-virtual {v0}, Lcom/cooliris/media/DiskCache;->flush()V

    .line 1020
    iget-object v0, p0, Lcom/cooliris/media/Gallery;->mPicasaHandler:Landroid/os/Handler;

    if-eqz v0, :cond_52

    .line 1021
    iget-object v0, p0, Lcom/cooliris/media/Gallery;->mPicasaHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1022
    iget-object v0, p0, Lcom/cooliris/media/Gallery;->mPicasaHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1025
    :cond_52
    iget-object v0, p0, Lcom/cooliris/media/Gallery;->mStatusBar:Landroid/app/StatusBarManager;

    if-eqz v0, :cond_5b

    .line 1026
    iget-object v0, p0, Lcom/cooliris/media/Gallery;->mStatusBar:Landroid/app/StatusBarManager;

    invoke-virtual {v0, v2}, Landroid/app/StatusBarManager;->disable(I)V

    .line 1029
    :cond_5b
    iget-object v0, p0, Lcom/cooliris/media/Gallery;->mGridLayer:Lcom/cooliris/media/GridLayer;

    if-eqz v0, :cond_9c

    .line 1030
    iget-object v0, p0, Lcom/cooliris/media/Gallery;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v0}, Lcom/cooliris/media/GridLayer;->deselectAll()V

    .line 1031
    iget-object v0, p0, Lcom/cooliris/media/Gallery;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v0}, Lcom/cooliris/media/GridLayer;->getHud()Lcom/cooliris/media/HudLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cooliris/media/HudLayer;->getTimeBar()Lcom/cooliris/media/TimeBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cooliris/media/TimeBar;->unFocus()V

    .line 1032
    iget-object v0, p0, Lcom/cooliris/media/Gallery;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v0}, Lcom/cooliris/media/GridLayer;->getHud()Lcom/cooliris/media/HudLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cooliris/media/HudLayer;->reset()V

    .line 1034
    const-string v0, "com.cooliris.media"

    invoke-virtual {p0, v0, v2}, Lcom/cooliris/media/Gallery;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1035
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1036
    iget-object v1, p0, Lcom/cooliris/media/Gallery;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v1}, Lcom/cooliris/media/GridLayer;->getGridInputProcessor()Lcom/cooliris/media/GridInputProcessor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cooliris/media/GridInputProcessor;->getMotionDetector()Lcom/cooliris/media/MotionDetector;

    move-result-object v1

    .line 1037
    if-eqz v1, :cond_9c

    .line 1038
    const-string v2, "MotionDialogOff"

    invoke-virtual {v1}, Lcom/cooliris/media/MotionDetector;->isMotionDialogOff()Z

    move-result v1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1040
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1044
    :cond_9c
    iget-object v0, p0, Lcom/cooliris/media/Gallery;->mMotionInfoDialog:Landroid/content/DialogInterface;

    if-eqz v0, :cond_a9

    .line 1045
    iput-boolean v3, p0, Lcom/cooliris/media/Gallery;->mEndUpdateAnimation:Z

    .line 1046
    iget-object v0, p0, Lcom/cooliris/media/Gallery;->mMotionInfoDialog:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 1047
    iput-object v4, p0, Lcom/cooliris/media/Gallery;->mMotionInfoDialog:Landroid/content/DialogInterface;

    .line 1050
    :cond_a9
    sget-boolean v0, Lcom/cooliris/media/Utils;->mUse_U1_Aus_Open:Z

    if-eqz v0, :cond_b2

    .line 1051
    iget-object v0, p0, Lcom/cooliris/media/Gallery;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 1054
    :cond_b2
    iget-object v0, p0, Lcom/cooliris/media/Gallery;->mApp:Lcom/cooliris/app/App;

    invoke-virtual {v0}, Lcom/cooliris/app/App;->onPause()V

    .line 1056
    const-string v0, "Gallery"

    const-string v1, "super.onPause call"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1058
    const-string v0, "Gallery"

    const-string v1, "onPause end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    return-void
.end method

.method public onRestart()V
    .registers 1

    .prologue
    .line 846
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 847
    return-void
.end method

.method public onResume()V
    .registers 7

    .prologue
    const/16 v1, 0x200

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 856
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 858
    iget-object v0, p0, Lcom/cooliris/media/Gallery;->mGridLayer:Lcom/cooliris/media/GridLayer;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/cooliris/media/Gallery;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v0}, Lcom/cooliris/media/GridLayer;->getState()I

    move-result v0

    if-ne v0, v3, :cond_25

    iget-object v0, p0, Lcom/cooliris/media/Gallery;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v0}, Lcom/cooliris/media/GridLayer;->getMultiplePickIntent()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 860
    iget-object v0, p0, Lcom/cooliris/media/Gallery;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v0}, Lcom/cooliris/media/GridLayer;->getHud()Lcom/cooliris/media/HudLayer;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/cooliris/media/HudLayer;->setMode(I)V

    .line 863
    :cond_25
    invoke-virtual {p0}, Lcom/cooliris/media/Gallery;->getPictureFrameMode()Z

    move-result v0

    if-ne v0, v3, :cond_36

    sget-boolean v0, Lcom/cooliris/media/Gallery;->mPictureFrameSaving:Z

    if-nez v0, :cond_36

    .line 864
    invoke-virtual {p0, v4}, Lcom/cooliris/media/Gallery;->setPictureFrameMode(Z)V

    .line 865
    invoke-virtual {p0}, Lcom/cooliris/media/Gallery;->finish()V

    .line 971
    :cond_35
    :goto_35
    return-void

    .line 869
    :cond_36
    iget-object v0, p0, Lcom/cooliris/media/Gallery;->mThumbKicker:Lcom/cooliris/media/Gallery$ThumbKicker;

    invoke-virtual {v0}, Lcom/cooliris/media/Gallery$ThumbKicker;->suspendThumbWork()V

    .line 870
    invoke-static {}, Lcom/cooliris/media/DiskCacheSEC;->endCache()V

    .line 872
    invoke-virtual {p0}, Lcom/cooliris/media/Gallery;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 875
    const-string v0, "statusbar"

    invoke-virtual {p0, v0}, Lcom/cooliris/media/Gallery;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/cooliris/media/Gallery;->mStatusBar:Landroid/app/StatusBarManager;

    .line 876
    iget-object v0, p0, Lcom/cooliris/media/Gallery;->mStatusBar:Landroid/app/StatusBarManager;

    const/high16 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 878
    iget-boolean v0, p0, Lcom/cooliris/media/Gallery;->mDockSlideshow:Z

    if-eqz v0, :cond_83

    .line 879
    iget-object v0, p0, Lcom/cooliris/media/Gallery;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_6b

    .line 880
    iget-object v0, p0, Lcom/cooliris/media/Gallery;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 881
    iget-object v0, p0, Lcom/cooliris/media/Gallery;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 884
    :cond_6b
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/cooliris/media/Gallery;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 885
    const/16 v1, 0xa

    const-string v2, "GridView.Slideshow.All"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/cooliris/media/Gallery;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 887
    iget-object v0, p0, Lcom/cooliris/media/Gallery;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_35

    .line 891
    :cond_83
    invoke-direct {p0}, Lcom/cooliris/media/Gallery;->checkMediaScanning()Z

    move-result v0

    if-eqz v0, :cond_9a

    .line 898
    iput-boolean v3, p0, Lcom/cooliris/media/Gallery;->mMediaScannerRunning:Z

    .line 899
    invoke-virtual {p0}, Lcom/cooliris/media/Gallery;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060052

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cooliris/media/Gallery;->toastFinish(Ljava/lang/String;)V

    goto :goto_35

    .line 903
    :cond_9a
    invoke-direct {p0}, Lcom/cooliris/media/Gallery;->checkLowStorage()Z

    move-result v0

    if-eqz v0, :cond_c3

    .line 904
    sget-object v0, Lcom/cooliris/media/LocalDataSource;->sThumbnailCache:Lcom/cooliris/media/DiskCache;

    invoke-virtual {v0}, Lcom/cooliris/media/DiskCache;->close()V

    .line 905
    sget-object v0, Lcom/cooliris/media/LocalDataSource;->sThumbnailCacheVideo:Lcom/cooliris/media/DiskCache;

    invoke-virtual {v0}, Lcom/cooliris/media/DiskCache;->close()V

    .line 906
    sget-object v0, Lcom/cooliris/media/PicasaDataSource;->sThumbnailCache:Lcom/cooliris/media/DiskCache;

    invoke-virtual {v0}, Lcom/cooliris/media/DiskCache;->close()V

    .line 907
    sget-object v0, Lcom/cooliris/cache/CacheService;->sAlbumCache:Lcom/cooliris/media/DiskCache;

    invoke-virtual {v0}, Lcom/cooliris/media/DiskCache;->close()V

    .line 908
    sget-object v0, Lcom/cooliris/cache/CacheService;->sMetaAlbumCache:Lcom/cooliris/media/DiskCache;

    invoke-virtual {v0}, Lcom/cooliris/media/DiskCache;->close()V

    .line 909
    sget-object v0, Lcom/cooliris/cache/CacheService;->sSkipThumbnailIds:Lcom/cooliris/media/DiskCache;

    invoke-virtual {v0}, Lcom/cooliris/media/DiskCache;->flush()V

    .line 910
    invoke-virtual {p0}, Lcom/cooliris/media/Gallery;->finish()V

    goto/16 :goto_35

    .line 914
    :cond_c3
    iget-object v0, p0, Lcom/cooliris/media/Gallery;->mRenderView:Lcom/cooliris/media/RenderView;

    if-eqz v0, :cond_cc

    .line 915
    iget-object v0, p0, Lcom/cooliris/media/Gallery;->mRenderView:Lcom/cooliris/media/RenderView;

    invoke-virtual {v0}, Lcom/cooliris/media/RenderView;->onResume()V

    .line 917
    :cond_cc
    iget-object v0, p0, Lcom/cooliris/media/Gallery;->mApp:Lcom/cooliris/app/App;

    invoke-virtual {v0}, Lcom/cooliris/app/App;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_fe

    .line 919
    iget-object v0, p0, Lcom/cooliris/media/Gallery;->mGridLayer:Lcom/cooliris/media/GridLayer;

    if-eqz v0, :cond_eb

    iget-object v0, p0, Lcom/cooliris/media/Gallery;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v0}, Lcom/cooliris/media/GridLayer;->getState()I

    move-result v0

    if-nez v0, :cond_eb

    .line 920
    iget-object v0, p0, Lcom/cooliris/media/Gallery;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v0}, Lcom/cooliris/media/GridLayer;->getDataSource()Lcom/cooliris/media/DataSource;

    move-result-object v0

    .line 921
    iget-object v1, p0, Lcom/cooliris/media/Gallery;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v1, v0}, Lcom/cooliris/media/GridLayer;->setDataSource(Lcom/cooliris/media/DataSource;)V

    .line 924
    :cond_eb
    iget-object v0, p0, Lcom/cooliris/media/Gallery;->mPicasaHandler:Landroid/os/Handler;

    if-eqz v0, :cond_f9

    .line 925
    iget-object v0, p0, Lcom/cooliris/media/Gallery;->mPicasaHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 926
    iget-object v0, p0, Lcom/cooliris/media/Gallery;->mPicasaHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 928
    :cond_f9
    iget-object v0, p0, Lcom/cooliris/media/Gallery;->mApp:Lcom/cooliris/app/App;

    invoke-virtual {v0}, Lcom/cooliris/app/App;->onResume()V

    .line 932
    :cond_fe
    iget-object v0, p0, Lcom/cooliris/media/Gallery;->mGridLayer:Lcom/cooliris/media/GridLayer;

    if-eqz v0, :cond_149

    .line 933
    iget-object v0, p0, Lcom/cooliris/media/Gallery;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v0}, Lcom/cooliris/media/GridLayer;->getHud()Lcom/cooliris/media/HudLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cooliris/media/HudLayer;->closeSelectionMenu()V

    .line 935
    iget-object v0, p0, Lcom/cooliris/media/Gallery;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v0}, Lcom/cooliris/media/GridLayer;->getHud()Lcom/cooliris/media/HudLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cooliris/media/HudLayer;->closeFullscreenMenu()V

    .line 937
    iget-object v0, p0, Lcom/cooliris/media/Gallery;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v0}, Lcom/cooliris/media/GridLayer;->deselectOrCancelSelectMode()V

    .line 939
    const-string v0, "com.cooliris.media"

    invoke-virtual {p0, v0, v4}, Lcom/cooliris/media/Gallery;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 940
    iget-object v1, p0, Lcom/cooliris/media/Gallery;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v1}, Lcom/cooliris/media/GridLayer;->getGridInputProcessor()Lcom/cooliris/media/GridInputProcessor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cooliris/media/GridInputProcessor;->getMotionDetector()Lcom/cooliris/media/MotionDetector;

    move-result-object v1

    .line 941
    if-eqz v1, :cond_134

    .line 943
    const-string v2, "MotionDialogOff"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/cooliris/media/MotionDetector;->setMotionDialogOff(Z)V

    .line 946
    :cond_134
    sget-boolean v0, Lcom/cooliris/media/Utils;->mUse_U1_Aus_Open:Z

    if-eqz v0, :cond_149

    .line 947
    invoke-virtual {p0}, Lcom/cooliris/media/Gallery;->checkAutoRotationUse()V

    .line 948
    invoke-virtual {p0}, Lcom/cooliris/media/Gallery;->setOrientationListener()V

    .line 949
    iget-object v0, p0, Lcom/cooliris/media/Gallery;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v0}, Lcom/cooliris/media/GridLayer;->getState()I

    move-result v0

    if-ne v0, v5, :cond_191

    .line 950
    invoke-virtual {p0, v3}, Lcom/cooliris/media/Gallery;->setOrientationEvent(Z)V

    .line 956
    :cond_149
    :goto_149
    iget-object v0, p0, Lcom/cooliris/media/Gallery;->mRenderView:Lcom/cooliris/media/RenderView;

    if-eqz v0, :cond_152

    .line 957
    iget-object v0, p0, Lcom/cooliris/media/Gallery;->mRenderView:Lcom/cooliris/media/RenderView;

    invoke-virtual {v0}, Lcom/cooliris/media/RenderView;->clearTouchEventQueue()V

    .line 959
    :cond_152
    iget-object v0, p0, Lcom/cooliris/media/Gallery;->mGridLayer:Lcom/cooliris/media/GridLayer;

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/cooliris/media/Gallery;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v0}, Lcom/cooliris/media/GridLayer;->getHud()Lcom/cooliris/media/HudLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cooliris/media/HudLayer;->getMode()I

    move-result v0

    if-ne v0, v3, :cond_35

    iget-object v0, p0, Lcom/cooliris/media/Gallery;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v0}, Lcom/cooliris/media/GridLayer;->getMultiplePickIntent()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 961
    invoke-virtual {p0}, Lcom/cooliris/media/Gallery;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 962
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_35

    .line 963
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "from-widget"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 964
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "folderItems"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 965
    iget-object v1, p0, Lcom/cooliris/media/Gallery;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v1, v0}, Lcom/cooliris/media/GridLayer;->setMultiIntent(Ljava/lang/String;)V

    goto/16 :goto_35

    .line 952
    :cond_191
    invoke-virtual {p0, v4}, Lcom/cooliris/media/Gallery;->setOrientationEvent(Z)V

    goto :goto_149
.end method

.method public onStart()V
    .registers 1

    .prologue
    .line 851
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 852
    return-void
.end method

.method public onStop()V
    .registers 3

    .prologue
    .line 1063
    const-string v0, "Gallery"

    const-string v1, "onStop start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    iget-object v0, p0, Lcom/cooliris/media/Gallery;->mGridLayer:Lcom/cooliris/media/GridLayer;

    if-eqz v0, :cond_10

    .line 1066
    iget-object v0, p0, Lcom/cooliris/media/Gallery;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v0}, Lcom/cooliris/media/GridLayer;->stop()V

    .line 1069
    :cond_10
    iget-object v0, p0, Lcom/cooliris/media/Gallery;->mThumbKicker:Lcom/cooliris/media/Gallery$ThumbKicker;

    invoke-virtual {v0}, Lcom/cooliris/media/Gallery$ThumbKicker;->stopKickThumbSuspend()V

    .line 1072
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/cooliris/cache/CacheService;->startCache(Landroid/content/Context;Z)V

    .line 1074
    const-string v0, "Gallery"

    const-string v1, "super.onStop call"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 1076
    const-string v0, "Gallery"

    const-string v1, "onStop end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    return-void
.end method

.method public setFolderID(J)V
    .registers 3
    .parameter "id"

    .prologue
    .line 229
    iput-wide p1, p0, Lcom/cooliris/media/Gallery;->mFolderID:J

    .line 230
    return-void
.end method

.method public setOrientationEvent(Z)V
    .registers 3
    .parameter

    .prologue
    .line 1960
    iget-object v0, p0, Lcom/cooliris/media/Gallery;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_26

    iget-boolean v0, p0, Lcom/cooliris/media/Gallery;->mIsAutoRotationOn:Z

    if-eqz v0, :cond_26

    .line 1961
    if-eqz p1, :cond_37

    .line 1962
    iget-object v0, p0, Lcom/cooliris/media/Gallery;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 1963
    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/cooliris/media/Gallery;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 1964
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1965
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    iput v0, p0, Lcom/cooliris/media/Gallery;->mOrientation:I

    .line 1966
    iget v0, p0, Lcom/cooliris/media/Gallery;->mOrientation:I

    packed-switch v0, :pswitch_data_42

    .line 1986
    :cond_26
    :goto_26
    :pswitch_26
    return-void

    .line 1968
    :pswitch_27
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/cooliris/media/Gallery;->setRequestedOrientation(I)V

    goto :goto_26

    .line 1971
    :pswitch_2c
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/cooliris/media/Gallery;->setRequestedOrientation(I)V

    goto :goto_26

    .line 1976
    :pswitch_31
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/cooliris/media/Gallery;->setRequestedOrientation(I)V

    goto :goto_26

    .line 1982
    :cond_37
    iget-object v0, p0, Lcom/cooliris/media/Gallery;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 1983
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/cooliris/media/Gallery;->setRequestedOrientation(I)V

    goto :goto_26

    .line 1966
    nop

    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_27
        :pswitch_2c
        :pswitch_26
        :pswitch_31
    .end packed-switch
.end method

.method public setOrientationListener()V
    .registers 2

    .prologue
    .line 1991
    new-instance v0, Lcom/cooliris/media/Gallery$15;

    invoke-direct {v0, p0, p0}, Lcom/cooliris/media/Gallery$15;-><init>(Lcom/cooliris/media/Gallery;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cooliris/media/Gallery;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 2047
    return-void
.end method

.method public setPictureFrameMode(Z)V
    .registers 2
    .parameter "mode"

    .prologue
    .line 1748
    sput-boolean p1, Lcom/cooliris/media/Gallery;->mPictureFrameMode:Z

    .line 1749
    return-void
.end method

.method public setProgressIncrease()V
    .registers 3

    .prologue
    .line 456
    sget v0, Lcom/cooliris/media/Gallery;->mProgressCnt:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/cooliris/media/Gallery;->mProgressCnt:I

    .line 457
    iget-object v0, p0, Lcom/cooliris/media/Gallery;->mDialHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 458
    return-void
.end method

.method public setProgressIncrease(I)V
    .registers 4
    .parameter "mIncreaseCnt"

    .prologue
    .line 461
    sget v0, Lcom/cooliris/media/Gallery;->mProgressCnt:I

    add-int/2addr v0, p1

    sput v0, Lcom/cooliris/media/Gallery;->mProgressCnt:I

    .line 462
    iget-object v0, p0, Lcom/cooliris/media/Gallery;->mDialHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 463
    return-void
.end method

.method updatePicasaAccountStatus()V
    .registers 5

    .prologue
    .line 979
    :try_start_0
    iget-object v0, p0, Lcom/cooliris/media/Gallery;->mGridLayer:Lcom/cooliris/media/GridLayer;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/cooliris/media/Gallery;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v0}, Lcom/cooliris/media/GridLayer;->getState()I

    move-result v0

    if-nez v0, :cond_2d

    .line 980
    invoke-static {p0}, Lcom/cooliris/media/PicasaDataSource;->getAccountStatus(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    .line 981
    iget-object v1, p0, Lcom/cooliris/media/Gallery;->mAccountsEnabled:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    .line 982
    iget-object v1, p0, Lcom/cooliris/media/Gallery;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v1}, Lcom/cooliris/media/GridLayer;->getDataSource()Lcom/cooliris/media/DataSource;

    move-result-object v1

    if-eqz v1, :cond_2d

    .line 983
    iget-object v1, p0, Lcom/cooliris/media/Gallery;->mGridLayer:Lcom/cooliris/media/GridLayer;

    iget-object v2, p0, Lcom/cooliris/media/Gallery;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v2}, Lcom/cooliris/media/GridLayer;->getDataSource()Lcom/cooliris/media/DataSource;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cooliris/media/GridLayer;->setDataSource(Lcom/cooliris/media/DataSource;)V

    .line 984
    iput-object v0, p0, Lcom/cooliris/media/Gallery;->mAccountsEnabled:Ljava/util/HashMap;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2d} :catch_2e

    .line 991
    :cond_2d
    :goto_2d
    return-void

    .line 988
    :catch_2e
    move-exception v0

    .line 989
    const-string v1, "Gallery"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatePicasaAccountStatus error! ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d
.end method
