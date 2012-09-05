.class public Lcom/samsung/dmp/layout/DMPImageActivity;
.super Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;
.source "DMPImageActivity.java"

# interfaces
.implements Lcom/sec/android/app/dlna/ui/IActivityListener;


# instance fields
.field private bm:Landroid/graphics/Bitmap;

.field final bufferAnimationRunnable:Ljava/lang/Runnable;

.field intentFilter:Landroid/content/IntentFilter;

.field private mActivityDestroyReceiver:Landroid/content/BroadcastReceiver;

.field private mAndroidHttpClient:Landroid/net/http/AndroidHttpClient;

.field private mBackKeyTimer:I

.field private mBackKeyToast:Landroid/widget/Toast;

.field private mBufferingView:Landroid/widget/ProgressBar;

.field private mCallEventOccured:Z

.field private mForceStopped:Z

.field private mHandler:Landroid/os/Handler;

.field private mImageView:Landroid/widget/ImageView;

.field private mIsStopped:Z

.field private mMusicPlayerControls:Landroid/view/ViewGroup;

.field private mMusicPlayerControlsHidden:Z

.field private mNext:Landroid/widget/ImageButton;

.field private mPaused:Z

.field private mPhoneListener:Landroid/telephony/PhoneStateListener;

.field private mPlayButton:Landroid/widget/ImageButton;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPrevious:Landroid/widget/ImageButton;

.field private mSlideshowBox:Landroid/widget/RelativeLayout;

.field private mStopBox:Landroid/widget/RelativeLayout;

.field private mStopButton:Landroid/widget/ImageButton;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTextSlideShow:Landroid/widget/TextView;

.field private mTextStop:Landroid/widget/TextView;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mimeType:Ljava/lang/String;

.field private selectedItemSize:Ljava/lang/String;

.field private selectedItemUri:Ljava/lang/String;

.field private toRestart:Z

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 79
    invoke-direct {p0}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;-><init>()V

    .line 141
    iput-boolean v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->toRestart:Z

    .line 143
    iput-object v1, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->bm:Landroid/graphics/Bitmap;

    .line 151
    iput-boolean v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mPaused:Z

    .line 157
    iput-object v1, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mAndroidHttpClient:Landroid/net/http/AndroidHttpClient;

    .line 163
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mBackKeyTimer:I

    .line 165
    iput-object v1, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mBackKeyToast:Landroid/widget/Toast;

    .line 167
    new-instance v0, Lcom/samsung/dmp/layout/DMPImageActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/dmp/layout/DMPImageActivity$1;-><init>(Lcom/samsung/dmp/layout/DMPImageActivity;)V

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mHandler:Landroid/os/Handler;

    .line 805
    new-instance v0, Lcom/samsung/dmp/layout/DMPImageActivity$9;

    invoke-direct {v0, p0}, Lcom/samsung/dmp/layout/DMPImageActivity$9;-><init>(Lcom/samsung/dmp/layout/DMPImageActivity;)V

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->bufferAnimationRunnable:Ljava/lang/Runnable;

    .line 1204
    new-instance v0, Lcom/samsung/dmp/layout/DMPImageActivity$21;

    invoke-direct {v0, p0}, Lcom/samsung/dmp/layout/DMPImageActivity$21;-><init>(Lcom/samsung/dmp/layout/DMPImageActivity;)V

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mPhoneListener:Landroid/telephony/PhoneStateListener;

    .line 1270
    new-instance v0, Lcom/samsung/dmp/layout/DMPImageActivity$22;

    invoke-direct {v0, p0}, Lcom/samsung/dmp/layout/DMPImageActivity$22;-><init>(Lcom/samsung/dmp/layout/DMPImageActivity;)V

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mActivityDestroyReceiver:Landroid/content/BroadcastReceiver;

    .line 1283
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/dmp/layout/DMPImageActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/samsung/dmp/layout/DMPImageActivity;->playAnimation()V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/dmp/layout/DMPImageActivity;)Landroid/widget/ProgressBar;
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mBufferingView:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/dmp/layout/DMPImageActivity;)Landroid/widget/Toast;
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mBackKeyToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/samsung/dmp/layout/DMPImageActivity;Landroid/widget/Toast;)Landroid/widget/Toast;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mBackKeyToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/samsung/dmp/layout/DMPImageActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mPaused:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/samsung/dmp/layout/DMPImageActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mPaused:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/samsung/dmp/layout/DMPImageActivity;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mTextStop:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/samsung/dmp/layout/DMPImageActivity;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mTextSlideShow:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/samsung/dmp/layout/DMPImageActivity;)Landroid/widget/RelativeLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mStopBox:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/samsung/dmp/layout/DMPImageActivity;)Landroid/widget/ImageButton;
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mStopButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/samsung/dmp/layout/DMPImageActivity;)Landroid/widget/RelativeLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mSlideshowBox:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/samsung/dmp/layout/DMPImageActivity;)Landroid/widget/ImageButton;
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mPlayButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/samsung/dmp/layout/DMPImageActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mMusicPlayerControlsHidden:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/samsung/dmp/layout/DMPImageActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mMusicPlayerControlsHidden:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/samsung/dmp/layout/DMPImageActivity;)Landroid/view/ViewGroup;
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mMusicPlayerControls:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/dmp/layout/DMPImageActivity;)Landroid/graphics/Bitmap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->bm:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/samsung/dmp/layout/DMPImageActivity;)Landroid/widget/ImageButton;
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mPrevious:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$202(Lcom/samsung/dmp/layout/DMPImageActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->bm:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/samsung/dmp/layout/DMPImageActivity;)Landroid/widget/ImageButton;
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mNext:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/samsung/dmp/layout/DMPImageActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/samsung/dmp/layout/DMPImageActivity;)Landroid/net/http/AndroidHttpClient;
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mAndroidHttpClient:Landroid/net/http/AndroidHttpClient;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/samsung/dmp/layout/DMPImageActivity;Landroid/net/http/AndroidHttpClient;)Landroid/net/http/AndroidHttpClient;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mAndroidHttpClient:Landroid/net/http/AndroidHttpClient;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/samsung/dmp/layout/DMPImageActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/samsung/dmp/layout/DMPImageActivity;->wifiDisconnected()V

    return-void
.end method

.method static synthetic access$2502(Lcom/samsung/dmp/layout/DMPImageActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mCallEventOccured:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/samsung/dmp/layout/DMPImageActivity;Ljava/lang/String;)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/samsung/dmp/layout/DMPImageActivity;->isSupportedType(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/samsung/dmp/layout/DMPImageActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/samsung/dmp/layout/DMPImageActivity;->forceStop()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/dmp/layout/DMPImageActivity;)Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/dmp/layout/DMPImageActivity;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/samsung/dmp/layout/DMPImageActivity;->setDimToSelectedItem(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/dmp/layout/DMPImageActivity;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/dmp/layout/DMPImageActivity;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/samsung/dmp/layout/DMPImageActivity;->toggleButtonState(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/dmp/layout/DMPImageActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mForceStopped:Z

    return v0
.end method

.method static synthetic access$702(Lcom/samsung/dmp/layout/DMPImageActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mForceStopped:Z

    return p1
.end method

.method static synthetic access$802(Lcom/samsung/dmp/layout/DMPImageActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mIsStopped:Z

    return p1
.end method

.method static synthetic access$900(Lcom/samsung/dmp/layout/DMPImageActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mBackKeyTimer:I

    return v0
.end method

.method static synthetic access$902(Lcom/samsung/dmp/layout/DMPImageActivity;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput p1, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mBackKeyTimer:I

    return p1
.end method

.method private changeGUI(I)V
    .registers 10
    .parameter "orientation"

    .prologue
    const/16 v7, 0x280

    const/16 v6, 0x168

    const/16 v5, 0xf0

    const/4 v4, 0x1

    const/16 v3, 0x190

    .line 675
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mStopBox:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 676
    .local v0, Params1:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mSlideshowBox:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 678
    .local v1, Params2:Landroid/widget/LinearLayout$LayoutParams;
    if-ne p1, v4, :cond_44

    .line 679
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v2

    iget v2, v2, Lcom/sec/android/app/dlna/DLNAManager;->mDeviceResolution:I

    if-nez v2, :cond_32

    .line 680
    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 681
    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 698
    :cond_27
    :goto_27
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mStopBox:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 699
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mSlideshowBox:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 700
    return-void

    .line 682
    :cond_32
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v2

    iget v2, v2, Lcom/sec/android/app/dlna/DLNAManager;->mDeviceResolution:I

    if-ne v2, v4, :cond_3f

    .line 683
    iput v6, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 684
    iput v6, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_27

    .line 686
    :cond_3f
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 687
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_27

    .line 689
    :cond_44
    const/4 v2, 0x2

    if-ne p1, v2, :cond_27

    .line 690
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v2

    iget v2, v2, Lcom/sec/android/app/dlna/DLNAManager;->mDeviceResolution:I

    if-nez v2, :cond_54

    .line 691
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 692
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_27

    .line 694
    :cond_54
    iput v7, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 695
    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_27
.end method

.method private checkMediaType()V
    .registers 3

    .prologue
    .line 564
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 565
    return-void
.end method

.method private forceStop()V
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 799
    iput-boolean v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mForceStopped:Z

    .line 800
    iput-boolean v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mIsStopped:Z

    .line 801
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1b58

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 802
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3f1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 803
    return-void
.end method

.method private initializeUIForLandscape()V
    .registers 5

    .prologue
    const/16 v1, 0x400

    const/4 v2, 0x0

    .line 332
    invoke-virtual {p0}, Lcom/samsung/dmp/layout/DMPImageActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 334
    const v0, 0x7f07003c

    invoke-virtual {p0, v0}, Lcom/samsung/dmp/layout/DMPImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mMusicPlayerControls:Landroid/view/ViewGroup;

    .line 336
    const v0, 0x7f070041

    invoke-virtual {p0, v0}, Lcom/samsung/dmp/layout/DMPImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mPlayButton:Landroid/widget/ImageButton;

    .line 337
    const v0, 0x7f07003e

    invoke-virtual {p0, v0}, Lcom/samsung/dmp/layout/DMPImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mStopButton:Landroid/widget/ImageButton;

    .line 338
    const v0, 0x7f07003a

    invoke-virtual {p0, v0}, Lcom/samsung/dmp/layout/DMPImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mPrevious:Landroid/widget/ImageButton;

    .line 339
    const v0, 0x7f07003b

    invoke-virtual {p0, v0}, Lcom/samsung/dmp/layout/DMPImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mNext:Landroid/widget/ImageButton;

    .line 341
    const v0, 0x7f070036

    invoke-virtual {p0, v0}, Lcom/samsung/dmp/layout/DMPImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mBufferingView:Landroid/widget/ProgressBar;

    .line 342
    const v0, 0x7f070035

    invoke-virtual {p0, v0}, Lcom/samsung/dmp/layout/DMPImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mImageView:Landroid/widget/ImageView;

    .line 343
    const v0, 0x7f07003f

    invoke-virtual {p0, v0}, Lcom/samsung/dmp/layout/DMPImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mTextStop:Landroid/widget/TextView;

    .line 344
    const v0, 0x7f070042

    invoke-virtual {p0, v0}, Lcom/samsung/dmp/layout/DMPImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mTextSlideShow:Landroid/widget/TextView;

    .line 346
    const v0, 0x7f07003d

    invoke-virtual {p0, v0}, Lcom/samsung/dmp/layout/DMPImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mStopBox:Landroid/widget/RelativeLayout;

    .line 347
    const v0, 0x7f070040

    invoke-virtual {p0, v0}, Lcom/samsung/dmp/layout/DMPImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mSlideshowBox:Landroid/widget/RelativeLayout;

    .line 349
    invoke-virtual {p0}, Lcom/samsung/dmp/layout/DMPImageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0}, Lcom/samsung/dmp/layout/DMPImageActivity;->changeGUI(I)V

    .line 350
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mTextStop:Landroid/widget/TextView;

    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 352
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mStopBox:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 353
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mStopButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 355
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mStopBox:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/samsung/dmp/layout/DMPImageActivity$2;

    invoke-direct {v1, p0}, Lcom/samsung/dmp/layout/DMPImageActivity$2;-><init>(Lcom/samsung/dmp/layout/DMPImageActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 369
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mStopButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/samsung/dmp/layout/DMPImageActivity$3;

    invoke-direct {v1, p0}, Lcom/samsung/dmp/layout/DMPImageActivity$3;-><init>(Lcom/samsung/dmp/layout/DMPImageActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 384
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mPrevious:Landroid/widget/ImageButton;

    new-instance v1, Lcom/samsung/dmp/layout/DMPImageActivity$4;

    invoke-direct {v1, p0}, Lcom/samsung/dmp/layout/DMPImageActivity$4;-><init>(Lcom/samsung/dmp/layout/DMPImageActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 394
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mNext:Landroid/widget/ImageButton;

    new-instance v1, Lcom/samsung/dmp/layout/DMPImageActivity$5;

    invoke-direct {v1, p0}, Lcom/samsung/dmp/layout/DMPImageActivity$5;-><init>(Lcom/samsung/dmp/layout/DMPImageActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 405
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mSlideshowBox:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/samsung/dmp/layout/DMPImageActivity$6;

    invoke-direct {v1, p0}, Lcom/samsung/dmp/layout/DMPImageActivity$6;-><init>(Lcom/samsung/dmp/layout/DMPImageActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 425
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mPlayButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/samsung/dmp/layout/DMPImageActivity$7;

    invoke-direct {v1, p0}, Lcom/samsung/dmp/layout/DMPImageActivity$7;-><init>(Lcom/samsung/dmp/layout/DMPImageActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 445
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mImageView:Landroid/widget/ImageView;

    new-instance v1, Lcom/samsung/dmp/layout/DMPImageActivity$8;

    invoke-direct {v1, p0}, Lcom/samsung/dmp/layout/DMPImageActivity$8;-><init>(Lcom/samsung/dmp/layout/DMPImageActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 464
    invoke-direct {p0}, Lcom/samsung/dmp/layout/DMPImageActivity;->checkMediaType()V

    .line 465
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ef

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 466
    return-void
.end method

.method private isSupportedType(Ljava/lang/String;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1034
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getSelectedItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getContentItem()Lcom/samsung/api/ContentItem;

    move-result-object v1

    .line 1036
    invoke-virtual {v1}, Lcom/samsung/api/ContentItem;->getDefaultResourceSize()Ljava/lang/String;

    move-result-object v2

    .line 1037
    invoke-virtual {v1}, Lcom/samsung/api/ContentItem;->getDefaultResourceDuration()Ljava/lang/String;

    move-result-object v1

    .line 1038
    if-eqz v2, :cond_2d

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    if-eqz p1, :cond_2d

    const-string v2, ""

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 1039
    :cond_2d
    const-string v2, "0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3f

    if-eqz v1, :cond_3f

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 1040
    :cond_3f
    const-string v1, "DLNA"

    const-string v2, " this file size is zero==0"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    :goto_46
    return v0

    .line 1044
    :cond_47
    const-string v1, "DLNA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "==== Playing file (MIME TYPE : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") ==="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    const-string v1, "audio/mpeg"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_135

    const-string v1, "audio/x-ms-wma"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_135

    const-string v1, "audio/x-MS-wma"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_135

    const-string v1, "audio/mp4"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_135

    const-string v1, "audio/aac"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_135

    const-string v1, "audio/wav"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_135

    const-string v1, "audio/x-acc"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_135

    const-string v1, "audio/vnd.dlna.adts"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_135

    const-string v1, "audio/amr"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_135

    const-string v1, "audio/3gpp"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_135

    const-string v1, "audio/L16"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_135

    const-string v1, "audio/x-wav"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_135

    const-string v1, "image/jpeg"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_135

    const-string v1, "image/png"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_135

    const-string v1, "image/bmp"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_135

    const-string v1, "image/x-MS-bmp"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_135

    const-string v1, "image/x-ms-bmp"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_135

    const-string v1, "video/mp4"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_135

    const-string v1, "video/MP4V-ES"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_135

    const-string v1, "video/x-msvideo"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_135

    const-string v1, "video/divx"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_135

    const-string v1, "video/avi"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_135

    const-string v1, "video/x-ms-avi"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_135

    const-string v1, "video/x-divx"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_135

    const-string v1, "video/3gpp"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_135

    const-string v1, "video/x-ms-wmv"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_138

    .line 1059
    :cond_135
    const/4 v0, 0x1

    goto/16 :goto_46

    .line 1061
    :cond_138
    const-string v1, "DLNA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "==== Not support (MIME TYPE : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") ==="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_46
.end method

.method private playAnimation()V
    .registers 5

    .prologue
    const/16 v3, 0x8

    .line 703
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3ef

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 704
    const v1, 0x7f040001

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 706
    .local v0, playerControlAnimation:Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mMusicPlayerControls:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 707
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mMusicPlayerControlsHidden:Z

    .line 708
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mMusicPlayerControls:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 709
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mPrevious:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 710
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mNext:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 711
    return-void
.end method

.method private registerTelephonyListener()V
    .registers 6

    .prologue
    .line 1220
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1222
    .local v0, id:J
    :try_start_4
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mPhoneListener:Landroid/telephony/PhoneStateListener;

    const/16 v4, 0x20

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_11

    .line 1224
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1226
    return-void

    .line 1224
    :catchall_11
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private setDimToSelectedItem(Z)V
    .registers 3
    .parameter "isFailed"

    .prologue
    .line 1199
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getSelectedItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 1200
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getSelectedItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/dlna/model/PlaylistItem;->setDimed(Z)V

    .line 1202
    :cond_1d
    return-void
.end method

.method private toggleButtonState(Z)V
    .registers 5
    .parameter "flag"

    .prologue
    .line 1012
    :try_start_0
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mNext:Landroid/widget/ImageButton;

    invoke-virtual {v1, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1013
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mPrevious:Landroid/widget/ImageButton;

    invoke-virtual {v1, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1014
    if-eqz p1, :cond_1d

    .line 1015
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mNext:Landroid/widget/ImageButton;

    const v2, 0x7f020030

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 1016
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mPrevious:Landroid/widget/ImageButton;

    const v2, 0x7f02002b

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 1024
    :goto_1c
    return-void

    .line 1018
    :cond_1d
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mNext:Landroid/widget/ImageButton;

    const v2, 0x7f020031

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 1019
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mPrevious:Landroid/widget/ImageButton;

    const v2, 0x7f02002c

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2d} :catch_2e

    goto :goto_1c

    .line 1021
    :catch_2e
    move-exception v0

    .line 1022
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1c
.end method

.method private unRegisterTelephonyListener()V
    .registers 6

    .prologue
    .line 1229
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1231
    .local v0, id:J
    :try_start_4
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mPhoneListener:Landroid/telephony/PhoneStateListener;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_10

    .line 1233
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1235
    return-void

    .line 1233
    :catchall_10
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private wifiDisconnected()V
    .registers 3

    .prologue
    .line 1261
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getPlaylist()Lcom/sec/android/app/dlna/model/Playlist;

    move-result-object v0

    .line 1263
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->resetServer()V

    .line 1264
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->resetPlayer()V

    .line 1265
    invoke-virtual {v0}, Lcom/sec/android/app/dlna/model/Playlist;->clear()V

    .line 1266
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/dlna/ui/PresetModeActivityTab;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/dmp/layout/DMPImageActivity;->startActivity(Landroid/content/Intent;)V

    .line 1268
    return-void
.end method


# virtual methods
.method protected handleNext()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 474
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getPlaylistDMP()Lcom/sec/android/app/dlna/model/Playlist;

    move-result-object v0

    .line 475
    .local v0, playlist:Lcom/sec/android/app/dlna/model/Playlist;
    if-eqz v0, :cond_61

    .line 476
    invoke-virtual {v0}, Lcom/sec/android/app/dlna/model/Playlist;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_62

    .line 477
    invoke-virtual {v0}, Lcom/sec/android/app/dlna/model/Playlist;->size()I

    move-result v1

    if-lez v1, :cond_58

    .line 478
    const-string v1, "DLNA"

    const-string v2, "No next file"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x1b58

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 480
    invoke-direct {p0, v3}, Lcom/samsung/dmp/layout/DMPImageActivity;->toggleButtonState(Z)V

    .line 482
    iput-boolean v3, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mPaused:Z

    .line 483
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3f1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 485
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mTextStop:Landroid/widget/TextView;

    const v2, -0x777778

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 486
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mTextSlideShow:Landroid/widget/TextView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 488
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mStopBox:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 489
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mStopButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 490
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mSlideshowBox:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 491
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mPlayButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 493
    :cond_58
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sec/android/app/dlna/DLNAManager;->setLastFileInPlaylistFlag(Z)V

    .line 497
    iput-boolean v3, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mIsStopped:Z

    .line 520
    :cond_61
    :goto_61
    return-void

    .line 500
    :cond_62
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/sec/android/app/dlna/DLNAManager;->setLastFileInPlaylistFlag(Z)V

    .line 504
    iput-boolean v3, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mIsStopped:Z

    .line 506
    invoke-virtual {v0}, Lcom/sec/android/app/dlna/model/Playlist;->getCurrentPlaylistItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getContentItem()Lcom/samsung/api/ContentItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/api/ContentItem;->getDefaultResouce()Lcom/samsung/api/ContentResource;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/api/ContentResource;->getResourceUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->selectedItemUri:Ljava/lang/String;

    .line 508
    invoke-virtual {v0}, Lcom/sec/android/app/dlna/model/Playlist;->getCurrentPlaylistItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v1

    if-eqz v1, :cond_91

    .line 509
    invoke-virtual {v0}, Lcom/sec/android/app/dlna/model/Playlist;->getCurrentPlaylistItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getContentItem()Lcom/samsung/api/ContentItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/api/ContentItem;->getDefaultResourceSize()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->selectedItemSize:Ljava/lang/String;

    .line 513
    :cond_91
    invoke-virtual {v0}, Lcom/sec/android/app/dlna/model/Playlist;->getCurrentPlaylistItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getContentItem()Lcom/samsung/api/ContentItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/api/ContentItem;->getContentTypeStr()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->type:Ljava/lang/String;

    .line 514
    invoke-virtual {v0}, Lcom/sec/android/app/dlna/model/Playlist;->getCurrentPlaylistItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getContentItem()Lcom/samsung/api/ContentItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/api/ContentItem;->getDefaultResouce()Lcom/samsung/api/ContentResource;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/api/ContentResource;->getMimeType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mimeType:Ljava/lang/String;

    .line 518
    invoke-virtual {p0}, Lcom/samsung/dmp/layout/DMPImageActivity;->play()V

    goto :goto_61
.end method

.method protected handlePrevious()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 523
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getPlaylistDMP()Lcom/sec/android/app/dlna/model/Playlist;

    move-result-object v0

    .line 524
    .local v0, playlist:Lcom/sec/android/app/dlna/model/Playlist;
    if-eqz v0, :cond_18

    .line 525
    invoke-virtual {v0}, Lcom/sec/android/app/dlna/model/Playlist;->moveToPrev()Z

    move-result v1

    if-nez v1, :cond_19

    .line 526
    invoke-direct {p0, v3}, Lcom/samsung/dmp/layout/DMPImageActivity;->toggleButtonState(Z)V

    .line 549
    :cond_18
    :goto_18
    return-void

    .line 529
    :cond_19
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dlna/DLNAManager;->setLastFileInPlaylistFlag(Z)V

    .line 533
    iput-boolean v3, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mIsStopped:Z

    .line 535
    invoke-virtual {v0}, Lcom/sec/android/app/dlna/model/Playlist;->getCurrentPlaylistItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getContentItem()Lcom/samsung/api/ContentItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/api/ContentItem;->getDefaultResouce()Lcom/samsung/api/ContentResource;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/api/ContentResource;->getResourceUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->selectedItemUri:Ljava/lang/String;

    .line 537
    invoke-virtual {v0}, Lcom/sec/android/app/dlna/model/Playlist;->getCurrentPlaylistItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v1

    if-eqz v1, :cond_49

    .line 538
    invoke-virtual {v0}, Lcom/sec/android/app/dlna/model/Playlist;->getCurrentPlaylistItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getContentItem()Lcom/samsung/api/ContentItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/api/ContentItem;->getDefaultResourceSize()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->selectedItemSize:Ljava/lang/String;

    .line 542
    :cond_49
    invoke-virtual {v0}, Lcom/sec/android/app/dlna/model/Playlist;->getCurrentPlaylistItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getContentItem()Lcom/samsung/api/ContentItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/api/ContentItem;->getContentTypeStr()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->type:Ljava/lang/String;

    .line 543
    invoke-virtual {v0}, Lcom/sec/android/app/dlna/model/Playlist;->getCurrentPlaylistItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getContentItem()Lcom/samsung/api/ContentItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/api/ContentItem;->getDefaultResouce()Lcom/samsung/api/ContentResource;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/api/ContentResource;->getMimeType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mimeType:Ljava/lang/String;

    .line 547
    invoke-virtual {p0}, Lcom/samsung/dmp/layout/DMPImageActivity;->play()V

    goto :goto_18
.end method

.method public notifyActivityEvent(I)V
    .registers 4
    .parameter "code"

    .prologue
    const/16 v1, 0x457

    .line 1238
    packed-switch p1, :pswitch_data_26

    .line 1258
    :goto_5
    :pswitch_5
    return-void

    .line 1240
    :pswitch_6
    invoke-virtual {p0}, Lcom/samsung/dmp/layout/DMPImageActivity;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1241
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_5

    .line 1245
    :cond_12
    invoke-virtual {p0}, Lcom/samsung/dmp/layout/DMPImageActivity;->finish()V

    goto :goto_5

    .line 1250
    :pswitch_16
    invoke-virtual {p0}, Lcom/samsung/dmp/layout/DMPImageActivity;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1251
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_5

    .line 1255
    :cond_22
    invoke-virtual {p0}, Lcom/samsung/dmp/layout/DMPImageActivity;->finish()V

    goto :goto_5

    .line 1238
    :pswitch_data_26
    .packed-switch 0x2f2
        :pswitch_6
        :pswitch_5
        :pswitch_16
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5
    .parameter "newConfig"

    .prologue
    .line 652
    invoke-super {p0, p1}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 654
    const-string v0, "DLNA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged: mImageView.setImageBitmap(bm) bm = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->bm:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->bm:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_33

    .line 656
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->bm:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 657
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mImageView:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 658
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->requestFocus()Z

    .line 661
    :cond_33
    const-string v0, "DLNA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*** mIsStopped : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mIsStopped:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  mPaused : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mPaused:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ***"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    iget-boolean v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mIsStopped:Z

    if-nez v0, :cond_79

    iget-boolean v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mPaused:Z

    if-nez v0, :cond_79

    .line 664
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->bm:Landroid/graphics/Bitmap;

    if-nez v0, :cond_79

    .line 665
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1f40

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 666
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x2328

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 670
    :cond_79
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0}, Lcom/samsung/dmp/layout/DMPImageActivity;->changeGUI(I)V

    .line 671
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    const/16 v3, 0x400

    .line 310
    invoke-super {p0, p1}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->onCreate(Landroid/os/Bundle;)V

    .line 311
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/dmp/layout/DMPImageActivity;->requestWindowFeature(I)Z

    .line 312
    const-string v0, "DLNA"

    const-string v1, "***DMPImageActivity::onCreate***"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/samsung/dmp/layout/DMPImageActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mPowerManager:Landroid/os/PowerManager;

    .line 314
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/samsung/dmp/layout/DMPImageActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 315
    invoke-direct {p0}, Lcom/samsung/dmp/layout/DMPImageActivity;->registerTelephonyListener()V

    .line 317
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mPowerManager:Landroid/os/PowerManager;

    const/16 v1, 0x1a

    const-string v2, "wakelock"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 318
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->intentFilter:Landroid/content/IntentFilter;

    .line 320
    const v0, 0x7f03000c

    invoke-virtual {p0, v0}, Lcom/samsung/dmp/layout/DMPImageActivity;->setContentView(I)V

    .line 321
    invoke-virtual {p0}, Lcom/samsung/dmp/layout/DMPImageActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 323
    invoke-direct {p0}, Lcom/samsung/dmp/layout/DMPImageActivity;->initializeUIForLandscape()V

    .line 325
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/DLNAManager;->setLastFileInPlaylistFlag(Z)V

    .line 327
    invoke-virtual {p0}, Lcom/samsung/dmp/layout/DMPImageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090007

    const/16 v2, 0x5dc

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mBackKeyToast:Landroid/widget/Toast;

    .line 329
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 7
    .parameter

    .prologue
    const v4, 0x7f09003f

    const v3, 0x7f090013

    const v2, 0x7f09000a

    .line 1068
    const/16 v0, 0x5dc

    if-ne p1, v0, :cond_57

    .line 1069
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getSelectedItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 1070
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getSelectedItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/model/PlaylistItem;->setDimed(Z)V

    .line 1072
    :cond_2b
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090066

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/dmp/layout/DMPImageActivity$13;

    invoke-direct {v1, p0}, Lcom/samsung/dmp/layout/DMPImageActivity$13;-><init>(Lcom/samsung/dmp/layout/DMPImageActivity;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/dmp/layout/DMPImageActivity$12;

    invoke-direct {v1, p0}, Lcom/samsung/dmp/layout/DMPImageActivity$12;-><init>(Lcom/samsung/dmp/layout/DMPImageActivity;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/dmp/layout/DMPImageActivity$11;

    invoke-direct {v1, p0}, Lcom/samsung/dmp/layout/DMPImageActivity$11;-><init>(Lcom/samsung/dmp/layout/DMPImageActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1195
    :goto_56
    return-object v0

    .line 1111
    :cond_57
    const/16 v0, 0x472

    if-ne p1, v0, :cond_7e

    .line 1112
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090060

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/dmp/layout/DMPImageActivity$15;

    invoke-direct {v1, p0}, Lcom/samsung/dmp/layout/DMPImageActivity$15;-><init>(Lcom/samsung/dmp/layout/DMPImageActivity;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/dmp/layout/DMPImageActivity$14;

    invoke-direct {v1, p0}, Lcom/samsung/dmp/layout/DMPImageActivity$14;-><init>(Lcom/samsung/dmp/layout/DMPImageActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_56

    .line 1123
    :cond_7e
    const/16 v0, 0x5dd

    if-ne p1, v0, :cond_bc

    .line 1124
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090023

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090047

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/dmp/layout/DMPImageActivity$18;

    invoke-direct {v1, p0}, Lcom/samsung/dmp/layout/DMPImageActivity$18;-><init>(Lcom/samsung/dmp/layout/DMPImageActivity;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/dmp/layout/DMPImageActivity$17;

    invoke-direct {v1, p0}, Lcom/samsung/dmp/layout/DMPImageActivity$17;-><init>(Lcom/samsung/dmp/layout/DMPImageActivity;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/dmp/layout/DMPImageActivity$16;

    invoke-direct {v1, p0}, Lcom/samsung/dmp/layout/DMPImageActivity$16;-><init>(Lcom/samsung/dmp/layout/DMPImageActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_56

    .line 1167
    :cond_bc
    const/16 v0, 0x5de

    if-ne p1, v0, :cond_eb

    .line 1168
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ef

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1170
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090042

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/dmp/layout/DMPImageActivity$20;

    invoke-direct {v1, p0}, Lcom/samsung/dmp/layout/DMPImageActivity$20;-><init>(Lcom/samsung/dmp/layout/DMPImageActivity;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/dmp/layout/DMPImageActivity$19;

    invoke-direct {v1, p0}, Lcom/samsung/dmp/layout/DMPImageActivity$19;-><init>(Lcom/samsung/dmp/layout/DMPImageActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_56

    .line 1195
    :cond_eb
    invoke-super {p0, p1}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto/16 :goto_56
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 6
    .parameter "menu"

    .prologue
    const/4 v3, 0x0

    .line 568
    const/16 v0, 0xc8

    const v1, 0x7f090011

    invoke-virtual {p0, v1}, Lcom/samsung/dmp/layout/DMPImageActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020040

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 570
    const/16 v0, 0xc9

    const/4 v1, 0x1

    const v2, 0x7f09000c

    invoke-virtual {p0, v2}, Lcom/samsung/dmp/layout/DMPImageActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02003f

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 572
    const/16 v0, 0xca

    const/4 v1, 0x2

    const v2, 0x7f09000b

    invoke-virtual {p0, v2}, Lcom/samsung/dmp/layout/DMPImageActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02003e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 574
    const/16 v0, 0xcb

    const/4 v1, 0x3

    const v2, 0x7f09001b

    invoke-virtual {p0, v2}, Lcom/samsung/dmp/layout/DMPImageActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020020

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 575
    const/16 v0, 0xcc

    const/4 v1, 0x4

    const v2, 0x7f09005b

    invoke-virtual {p0, v2}, Lcom/samsung/dmp/layout/DMPImageActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020023

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 576
    invoke-super {p0, p1}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 991
    const-string v0, "DLNA"

    const-string v1, "***DMPImageActivity::onDestroy***"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mActivityDestroyReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_10

    .line 993
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mActivityDestroyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/samsung/dmp/layout/DMPImageActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 994
    :cond_10
    invoke-super {p0}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->onDestroy()V

    .line 995
    invoke-direct {p0}, Lcom/samsung/dmp/layout/DMPImageActivity;->unRegisterTelephonyListener()V

    .line 996
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mIsStopped:Z

    .line 997
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mAndroidHttpClient:Landroid/net/http/AndroidHttpClient;

    if-eqz v0, :cond_22

    .line 998
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mAndroidHttpClient:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 999
    :cond_22
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 8
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 1002
    const/4 v2, 0x4

    if-ne p1, v2, :cond_12

    .line 1003
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1004
    .local v0, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1007
    .end local v0           #msg:Landroid/os/Message;
    :goto_11
    return v1

    :cond_12
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_11
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x0

    const/high16 v4, 0x2

    const/4 v0, 0x1

    .line 587
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    const v3, 0x7f090011

    invoke-virtual {p0, v3}, Lcom/samsung/dmp/layout/DMPImageActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 588
    invoke-direct {p0}, Lcom/samsung/dmp/layout/DMPImageActivity;->forceStop()V

    .line 589
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->getServer()Lcom/samsung/api/DeviceItem;

    move-result-object v1

    if-nez v1, :cond_24

    .line 648
    :cond_23
    :goto_23
    return v0

    .line 592
    :cond_24
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/app/dlna/view/PopupDialogView;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "android.intent.action.PICK"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/dmp/layout/DMPImageActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_23

    .line 596
    :cond_39
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    const v3, 0x7f09000c

    invoke-virtual {p0, v3}, Lcom/samsung/dmp/layout/DMPImageActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_79

    .line 597
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->getNetworkState()I

    move-result v1

    if-ne v1, v5, :cond_23

    .line 598
    invoke-direct {p0}, Lcom/samsung/dmp/layout/DMPImageActivity;->forceStop()V

    .line 599
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->refreshServerList()V

    .line 600
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "MODE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/dmp/layout/DMPImageActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_23

    .line 606
    :cond_79
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    const v3, 0x7f09000b

    invoke-virtual {p0, v3}, Lcom/samsung/dmp/layout/DMPImageActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b4

    .line 607
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->getNetworkState()I

    move-result v1

    if-ne v1, v5, :cond_23

    .line 608
    invoke-direct {p0}, Lcom/samsung/dmp/layout/DMPImageActivity;->forceStop()V

    .line 609
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->refreshPlayerList()V

    .line 610
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "MODE"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/dmp/layout/DMPImageActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_23

    .line 615
    :cond_b4
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    const v3, 0x7f09001b

    invoke-virtual {p0, v3}, Lcom/samsung/dmp/layout/DMPImageActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_107

    .line 616
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getSelectedItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v2

    .line 617
    if-eqz v2, :cond_f7

    .line 618
    iput-boolean v1, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->toRestart:Z

    .line 619
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3f1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 621
    new-instance v1, Lcom/sec/android/app/dlna/model/SerializablePlaylistItem;

    invoke-direct {v1, v2}, Lcom/sec/android/app/dlna/model/SerializablePlaylistItem;-><init>(Lcom/sec/android/app/dlna/model/PlaylistItem;)V

    .line 623
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/sec/android/app/dlna/ui/MediaInfo;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "detail"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/dmp/layout/DMPImageActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_23

    .line 627
    :cond_f7
    const v2, 0x7f090037

    invoke-virtual {p0, v2}, Lcom/samsung/dmp/layout/DMPImageActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_23

    .line 631
    :cond_107
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    const v3, 0x7f09005b

    invoke-virtual {p0, v3}, Lcom/samsung/dmp/layout/DMPImageActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_158

    .line 632
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/DLNAManager;->getService()Lcom/sec/android/app/dlna/service/DmsLocalService;

    move-result-object v2

    if-nez v2, :cond_130

    .line 633
    const v1, 0x7f090059

    invoke-virtual {p0, v1}, Lcom/samsung/dmp/layout/DMPImageActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    goto/16 :goto_23

    .line 636
    :cond_130
    :try_start_130
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/DLNAManager;->getService()Lcom/sec/android/app/dlna/service/DmsLocalService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/service/DmsLocalService;->isServerStarted()Z
    :try_end_13b
    .catch Landroid/os/RemoteException; {:try_start_130 .. :try_end_13b} :catch_141

    move-result v2

    if-nez v2, :cond_145

    move v0, v1

    .line 637
    goto/16 :goto_23

    .line 638
    :catch_141
    move-exception v1

    .line 639
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 641
    :cond_145
    invoke-direct {p0}, Lcom/samsung/dmp/layout/DMPImageActivity;->forceStop()V

    .line 642
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/app/dlna/ui/DLNASettings;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/dmp/layout/DMPImageActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_23

    .line 648
    :cond_158
    invoke-super {p0, p1}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto/16 :goto_23
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 785
    invoke-virtual {p0}, Lcom/samsung/dmp/layout/DMPImageActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_11

    iget-boolean v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mForceStopped:Z

    if-nez v0, :cond_11

    iget-boolean v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->toRestart:Z

    if-eqz v0, :cond_11

    .line 790
    invoke-direct {p0}, Lcom/samsung/dmp/layout/DMPImageActivity;->forceStop()V

    .line 791
    :cond_11
    const-string v0, "DLNA"

    const-string v1, "*******onPause******"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 793
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 795
    :cond_25
    invoke-super {p0}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->onPause()V

    .line 796
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    const/4 v1, 0x0

    .line 580
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getServer()Lcom/samsung/api/DeviceItem;

    move-result-object v0

    if-nez v0, :cond_12

    .line 581
    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 583
    :cond_12
    invoke-super {p0, p1}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 715
    invoke-super {p0}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->onResume()V

    .line 716
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getSelectedItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v2

    if-nez v2, :cond_19

    .line 717
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/samsung/dmp/layout/DMPImageActivity;->SaveConnection(Ljava/lang/String;)V

    .line 718
    invoke-static {v6}, Ljava/lang/System;->exit(I)V

    .line 721
    :cond_19
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 722
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 724
    :cond_26
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 726
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mActivityDestroyReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.sec.android.app.dlna.player_started"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Lcom/samsung/dmp/layout/DMPImageActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 728
    iget-boolean v2, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->toRestart:Z

    if-eqz v2, :cond_10c

    .line 730
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getSelectedItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v2

    if-eqz v2, :cond_e1

    .line 731
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getSelectedItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getContentItem()Lcom/samsung/api/ContentItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/api/ContentItem;->getDefaultResouce()Lcom/samsung/api/ContentResource;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/api/ContentResource;->getResourceUrl()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->selectedItemUri:Ljava/lang/String;

    .line 733
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getSelectedItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getContentItem()Lcom/samsung/api/ContentItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/api/ContentItem;->getContentTypeStr()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->type:Ljava/lang/String;

    .line 735
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getSelectedItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getContentItem()Lcom/samsung/api/ContentItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/api/ContentItem;->getDefaultResouce()Lcom/samsung/api/ContentResource;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/api/ContentResource;->getMimeType()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mimeType:Ljava/lang/String;

    .line 749
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mMusicPlayerControls:Landroid/view/ViewGroup;

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 750
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mPrevious:Landroid/widget/ImageButton;

    invoke-virtual {v2, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 751
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mNext:Landroid/widget/ImageButton;

    invoke-virtual {v2, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 752
    iput-boolean v6, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mMusicPlayerControlsHidden:Z

    .line 753
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3ef

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 755
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getPlaylistDMP()Lcom/sec/android/app/dlna/model/Playlist;

    move-result-object v1

    .line 756
    .local v1, playlist:Lcom/sec/android/app/dlna/model/Playlist;
    if-eqz v1, :cond_cf

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/model/Playlist;->getCurrentPlaylistItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v2

    if-eqz v2, :cond_cf

    .line 757
    invoke-virtual {v1}, Lcom/sec/android/app/dlna/model/Playlist;->getCurrentPlaylistItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getContentItem()Lcom/samsung/api/ContentItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/api/ContentItem;->getDefaultResourceSize()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->selectedItemSize:Ljava/lang/String;

    .line 760
    :cond_cf
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->selectedItemUri:Ljava/lang/String;

    if-eqz v2, :cond_e0

    .line 761
    iget-boolean v2, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mCallEventOccured:Z

    if-eqz v2, :cond_f8

    .line 762
    iput-boolean v6, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mForceStopped:Z

    .line 763
    iput-boolean v6, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mIsStopped:Z

    .line 765
    const/16 v2, 0x5de

    :try_start_dd
    invoke-virtual {p0, v2}, Lcom/samsung/dmp/layout/DMPImageActivity;->showDialog(I)V
    :try_end_e0
    .catch Ljava/lang/Exception; {:try_start_dd .. :try_end_e0} :catch_f3

    .line 782
    .end local v1           #playlist:Lcom/sec/android/app/dlna/model/Playlist;
    :cond_e0
    :goto_e0
    return-void

    .line 739
    :cond_e1
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mBufferingView:Landroid/widget/ProgressBar;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 741
    invoke-direct {p0, v6}, Lcom/samsung/dmp/layout/DMPImageActivity;->toggleButtonState(Z)V

    .line 743
    const/16 v2, 0x5dd

    :try_start_ed
    invoke-virtual {p0, v2}, Lcom/samsung/dmp/layout/DMPImageActivity;->showDialog(I)V
    :try_end_f0
    .catch Ljava/lang/Exception; {:try_start_ed .. :try_end_f0} :catch_f1

    goto :goto_e0

    .line 744
    :catch_f1
    move-exception v2

    goto :goto_e0

    .line 766
    .restart local v1       #playlist:Lcom/sec/android/app/dlna/model/Playlist;
    :catch_f3
    move-exception v0

    .line 767
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_e0

    .line 769
    .end local v0           #e:Ljava/lang/Exception;
    :cond_f8
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/DLNAManager;->isLastFileInPlaylist()Z

    move-result v2

    if-nez v2, :cond_e0

    .line 770
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x471

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_e0

    .line 780
    .end local v1           #playlist:Lcom/sec/android/app/dlna/model/Playlist;
    :cond_10c
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->toRestart:Z

    goto :goto_e0
.end method

.method public play()V
    .registers 4

    .prologue
    .line 820
    :try_start_0
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dlna/DLNAManager;->setLastFileInPlaylistFlag(Z)V

    .line 822
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPImageActivity;->type:Ljava/lang/String;

    const-string v2, "object.item.image"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 823
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/samsung/dmp/layout/DMPImageActivity$10;

    invoke-direct {v2, p0}, Lcom/samsung/dmp/layout/DMPImageActivity$10;-><init>(Lcom/samsung/dmp/layout/DMPImageActivity;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1f} :catch_20

    .line 988
    :cond_1f
    :goto_1f
    return-void

    .line 985
    :catch_20
    move-exception v0

    .line 986
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1f
.end method
