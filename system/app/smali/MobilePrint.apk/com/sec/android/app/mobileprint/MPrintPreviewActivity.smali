.class public Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;
.super Landroid/app/Activity;
.source "MPrintPreviewActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$EncoderCallback;,
        Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreparePrintTask;,
        Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$DisplayImageRunnable;,
        Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$ImageLoadingHandler;,
        Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;
    }
.end annotation


# static fields
.field private static final DISPLAY_LANDSCAPE:I = 0x1

.field private static final DISPLAY_PORTRAIT:I = 0x0

.field private static final INTENT_ACTION_PREVIEW:Ljava/lang/String; = "com.sec.android.app.mobileprint.PRINT_SETTING"

.field private static final MARGIN_OF_PREVIEW:I = 0x14

.field private static final MSG_LOAD_ONE_IMAGE:I = 0x65

.field private static final REQUEST_SELECT_PRINTER:I = 0x3e9

.field private static final REQUEST_SETTING_MODE:I = 0x3eb


# instance fields
.field private mAniListener:Landroid/view/animation/Animation$AnimationListener;

.field private mAppContext:Landroid/content/Context;

.field private mAtTouchDeltaX:F

.field private mAtTouchDown:F

.field private mAtTouchUp:F

.field private mBoundService:Lcom/sec/android/app/mobileprint/MPrintMainService;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mCurrentPage:I

.field private mCurrentWindowOrientation:I

.field private mCurtainLayout:Landroid/widget/LinearLayout;

.field private mDeviceIcon:Landroid/widget/ImageView;

.field private mDisplayManager:Landroid/view/Display;

.field private mFilePath:Ljava/lang/String;

.field private mFlipper:Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;

.field private mImageLoadingHandler:Landroid/os/Handler;

.field private mImageLoadingThread:Landroid/os/HandlerThread;

.field private mImageViewRotation:I

.field private mIntentInvokeApp:Ljava/lang/String;

.field private mIntentSubject:Ljava/lang/String;

.field private mIntentText:Ljava/lang/String;

.field private mIsEncodingImage:Z

.field private mIsLandscapeLCD:Z

.field private mIsPrinting:Z

.field private mIsStarted:Z

.field private mLastAniTime:J

.field private mMainHandler:Landroid/os/Handler;

.field private mNextFlip:I

.field private mOuterLayout:Landroid/widget/LinearLayout;

.field private mPagesTextView:Landroid/widget/TextView;

.field private mPaperInfoTextView:Landroid/widget/TextView;

.field private mPaperMargin:I

.field private mPortraitDisplayHeight:I

.field private mPortraitDisplayWidth:I

.field private mPreviewPaperHeight:I

.field private mPreviewPaperWidth:I

.field private mPrintButton:Landroid/widget/Button;

.field private mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

.field private mPrintMenu:Landroid/view/MenuItem;

.field private mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

.field private mPrinterInfoFixedWidth:I

.field private mPrinterNameTextView:Landroid/widget/TextView;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mRotateAnimation:Z

.field private mSettingButton:Landroid/widget/ImageButton;

.field private mSettingManager:Lcom/sec/android/app/mobileprint/MPrintSettingManager;

.field private mSettingMenu:Landroid/view/MenuItem;

.field private mTotalPage:I


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 82
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 84
    iput-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mAppContext:Landroid/content/Context;

    .line 85
    iput-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mMainHandler:Landroid/os/Handler;

    .line 86
    iput-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mImageLoadingHandler:Landroid/os/Handler;

    .line 87
    iput-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mImageLoadingThread:Landroid/os/HandlerThread;

    .line 88
    iput-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mBoundService:Lcom/sec/android/app/mobileprint/MPrintMainService;

    .line 89
    iput-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mConnection:Landroid/content/ServiceConnection;

    .line 91
    iput-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mDisplayManager:Landroid/view/Display;

    .line 94
    iput-boolean v3, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mIsLandscapeLCD:Z

    .line 95
    iput-boolean v3, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mIsStarted:Z

    .line 96
    iput-boolean v3, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mIsEncodingImage:Z

    .line 97
    iput-boolean v3, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mIsPrinting:Z

    .line 99
    iput-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mFilePath:Ljava/lang/String;

    .line 100
    iput-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mIntentInvokeApp:Ljava/lang/String;

    .line 101
    iput-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mIntentSubject:Ljava/lang/String;

    .line 102
    iput-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mIntentText:Ljava/lang/String;

    .line 104
    iput-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    .line 105
    iput-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    .line 106
    iput-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mSettingManager:Lcom/sec/android/app/mobileprint/MPrintSettingManager;

    .line 108
    iput v3, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPrinterInfoFixedWidth:I

    .line 109
    iput-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mDeviceIcon:Landroid/widget/ImageView;

    .line 110
    iput-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPrinterNameTextView:Landroid/widget/TextView;

    .line 111
    iput-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPaperInfoTextView:Landroid/widget/TextView;

    .line 112
    iput-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mSettingButton:Landroid/widget/ImageButton;

    .line 113
    iput-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPrintButton:Landroid/widget/Button;

    .line 114
    iput-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mSettingMenu:Landroid/view/MenuItem;

    .line 115
    iput-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPrintMenu:Landroid/view/MenuItem;

    .line 116
    iput-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPagesTextView:Landroid/widget/TextView;

    .line 117
    iput-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mOuterLayout:Landroid/widget/LinearLayout;

    .line 118
    iput-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mCurtainLayout:Landroid/widget/LinearLayout;

    .line 119
    iput-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mFlipper:Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;

    .line 120
    iput v3, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mImageViewRotation:I

    .line 121
    iput v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mTotalPage:I

    .line 122
    iput v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mCurrentPage:I

    .line 126
    iput v3, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mCurrentWindowOrientation:I

    .line 127
    iput-boolean v3, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mRotateAnimation:Z

    .line 129
    iput-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 134
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mLastAniTime:J

    .line 135
    iput v3, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mNextFlip:I

    .line 136
    iput-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mAniListener:Landroid/view/animation/Animation$AnimationListener;

    .line 1583
    return-void
.end method

.method static synthetic access$002(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;Lcom/sec/android/app/mobileprint/MPrintMainService;)Lcom/sec/android/app/mobileprint/MPrintMainService;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mBoundService:Lcom/sec/android/app/mobileprint/MPrintMainService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->gotoSettingActivity()V

    return-void
.end method

.method static synthetic access$1200(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mImageLoadingHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->preparePaper(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;II)Landroid/graphics/Bitmap;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->preparePreviewImage(II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mRotateAnimation:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;)Landroid/view/animation/Animation$AnimationListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mAniListener:Landroid/view/animation/Animation$AnimationListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->preparePrint()V

    return-void
.end method

.method static synthetic access$2002(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput p1, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mImageViewRotation:I

    return p1
.end method

.method static synthetic access$2100(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;)Landroid/widget/LinearLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mCurtainLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;)Lcom/sec/android/app/mobileprint/MPrintJobItem;
    .registers 2
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mFilePath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->startPrint()V

    return-void
.end method

.method static synthetic access$2602(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mIsEncodingImage:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->loadImageFiles()V

    return-void
.end method

.method static synthetic access$2800(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->updateSettingButton()V

    return-void
.end method

.method static synthetic access$2900(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->updatePrintButton()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 82
    iget v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mNextFlip:I

    return v0
.end method

.method static synthetic access$302(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput p1, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mNextFlip:I

    return p1
.end method

.method static synthetic access$400(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;)Landroid/widget/LinearLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mOuterLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 82
    iget v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mCurrentPage:I

    return v0
.end method

.method static synthetic access$502(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput p1, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mCurrentPage:I

    return p1
.end method

.method static synthetic access$508(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 82
    iget v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mCurrentPage:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mCurrentPage:I

    return v0
.end method

.method static synthetic access$510(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 82
    iget v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mCurrentPage:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mCurrentPage:I

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 82
    iget v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mTotalPage:I

    return v0
.end method

.method static synthetic access$602(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput p1, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mTotalPage:I

    return p1
.end method

.method static synthetic access$700(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;)Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mFlipper:Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->updatePageInfo()V

    return-void
.end method

.method static synthetic access$902(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-wide p1, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mLastAniTime:J

    return-wide p1
.end method

.method private calculatePrinterNameWidth()I
    .registers 4

    .prologue
    .line 862
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPaperInfoTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mDisplayManager:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mDisplayManager:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->measure(II)V

    .line 863
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mDisplayManager:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPaperInfoTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPrinterInfoFixedWidth:I

    sub-int/2addr v0, v1

    return v0
.end method

.method private clearImageFiles()V
    .registers 3

    .prologue
    .line 1208
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget v0, v0, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPrintMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_10

    .line 1209
    iget-boolean v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mIsPrinting:Z

    if-nez v0, :cond_11

    .line 1210
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mFilePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/mobileprint/MPrintFileUtility;->clearDir(Ljava/lang/String;)V

    .line 1220
    :cond_10
    :goto_10
    return-void

    .line 1212
    :cond_11
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mFilePath:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget-object v0, v0, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mFilePathList:Ljava/util/ArrayList;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget-object v0, v0, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mFilePathList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_10

    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget-object v0, v0, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mFilePathList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 1215
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mFilePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/mobileprint/MPrintFileUtility;->clearDir(Ljava/lang/String;)V

    goto :goto_10
.end method

.method private encodeImage()V
    .registers 6

    .prologue
    .line 1159
    const-string v0, "MobilePrint"

    const-string v1, "MPrintPreviewActivity : encodeImage()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    iget-boolean v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mIsEncodingImage:Z

    if-nez v0, :cond_21

    .line 1161
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mIsEncodingImage:Z

    .line 1162
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mAppContext:Landroid/content/Context;

    new-instance v1, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$EncoderCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$EncoderCallback;-><init>(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$1;)V

    iget-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mIntentSubject:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mIntentText:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget v4, v4, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPaperOrientation:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sec/android/app/mobileprint/MPrintImageEncoder;->encode(Landroid/content/Context;Lcom/sec/android/app/mobileprint/MPrintImageEncoder$Callback;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1164
    :cond_21
    return-void
.end method

.method private getDisplayRotation()I
    .registers 4

    .prologue
    .line 915
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mDisplayManager:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 916
    .local v0, displayRotation:I
    iget-boolean v1, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mIsLandscapeLCD:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_d

    .line 917
    add-int/lit8 v0, v0, 0x1

    .line 919
    :cond_d
    rem-int/lit8 v1, v0, 0x2

    return v1
.end method

.method private getIntentData(Landroid/content/Intent;)V
    .registers 4
    .parameter "intent"

    .prologue
    .line 737
    const-string v0, "com.sec.android.app.mobileprint.PRINT_SETTING"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_29

    .line 738
    invoke-static {p1}, Lcom/sec/android/app/mobileprint/MPrintCommon;->getImagePath(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mFilePath:Ljava/lang/String;

    .line 739
    invoke-static {p1}, Lcom/sec/android/app/mobileprint/MPrintCommon;->getTitle(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mIntentInvokeApp:Ljava/lang/String;

    .line 740
    invoke-static {p1}, Lcom/sec/android/app/mobileprint/MPrintCommon;->getSubject(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mIntentSubject:Ljava/lang/String;

    .line 741
    invoke-static {p1}, Lcom/sec/android/app/mobileprint/MPrintCommon;->getText(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mIntentText:Ljava/lang/String;

    .line 742
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    .line 751
    :goto_28
    return-void

    .line 745
    :cond_29
    const-string v0, "FilePath"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mFilePath:Ljava/lang/String;

    .line 746
    const-string v0, "Title"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mIntentInvokeApp:Ljava/lang/String;

    .line 747
    const-string v0, "Subject"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mIntentSubject:Ljava/lang/String;

    .line 748
    const-string v0, "Text"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mIntentText:Ljava/lang/String;

    .line 749
    const-string v0, "PrinterInfo"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    goto :goto_28
.end method

.method private gotoSettingActivity()V
    .registers 4

    .prologue
    .line 867
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 868
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f06

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_40

    .line 869
    const-class v1, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 874
    :goto_17
    const-string v1, "Title"

    iget-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mIntentInvokeApp:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 875
    const-string v1, "Subject"

    iget-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mIntentSubject:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 876
    const-string v1, "Text"

    iget-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mIntentText:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 877
    const-string v1, "PrinterInfo"

    iget-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 878
    const-string v1, "PrintJobInfo"

    iget-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 879
    const/16 v1, 0x3eb

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 880
    return-void

    .line 872
    :cond_40
    const-class v1, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_17
.end method

.method private loadImageFiles()V
    .registers 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 883
    const/4 v0, 0x0

    .line 888
    .local v0, displayRotation:I
    iget-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    if-eqz v2, :cond_4e

    iget-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget-object v2, v2, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mFilePathList:Ljava/util/ArrayList;

    if-eqz v2, :cond_4e

    iget-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget-object v2, v2, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mFilePathList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4e

    .line 889
    iget-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget v2, v2, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPrintOrientation:I

    const/4 v5, -0x1

    if-ne v2, v5, :cond_2f

    .line 890
    iget-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget-object v2, v2, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mFilePathList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/android/app/mobileprint/MPrintFileUtility;->getImageOrientation(Ljava/lang/String;)I

    move-result v1

    .line 891
    .local v1, orientation:I
    if-gez v1, :cond_47

    .line 892
    const/4 v0, 0x0

    .line 898
    .end local v1           #orientation:I
    :cond_2f
    :goto_2f
    iget-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget v2, v2, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPrintOrientation:I

    if-ne v2, v3, :cond_4c

    move v0, v3

    .line 905
    :goto_36
    iget-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mFlipper:Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;

    iget v3, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mTotalPage:I

    invoke-virtual {v2, v3}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;->initPreviewFliper(I)V

    .line 906
    iget-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mFlipper:Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;

    iget v3, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mCurrentPage:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3, v0}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;->prepareImageViews(II)V

    .line 907
    return-void

    .line 895
    .restart local v1       #orientation:I
    :cond_47
    iget-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iput v1, v2, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPrintOrientation:I

    goto :goto_2f

    .end local v1           #orientation:I
    :cond_4c
    move v0, v4

    .line 898
    goto :goto_36

    .line 901
    :cond_4e
    const-string v2, "MobilePrint"

    const-string v3, "MPrintPreviewActivity : loadImageFiles() - mPrintJob or mPrintJob.mFilePathList is null or empty."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36
.end method

.method private preparePaper(I)V
    .registers 8
    .parameter "displayRotation"

    .prologue
    .line 927
    if-nez p1, :cond_25

    .line 928
    iget v3, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPortraitDisplayWidth:I

    .line 929
    .local v3, viewWidth:I
    iget v2, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPortraitDisplayHeight:I

    .line 936
    .local v2, viewHeight:I
    :goto_6
    int-to-float v4, v2

    int-to-float v5, v3

    div-float v0, v4, v5

    .line 939
    .local v0, ratioLayoutXY:F
    if-nez p1, :cond_2a

    .line 940
    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget v4, v4, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPaperHeight:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget v5, v5, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPaperWidth:I

    int-to-float v5, v5

    div-float v1, v4, v5

    .line 946
    .local v1, ratioPaperXY:F
    :goto_18
    cmpg-float v4, v1, v0

    if-gez v4, :cond_37

    .line 947
    iput v3, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPreviewPaperWidth:I

    .line 948
    int-to-float v4, v2

    mul-float/2addr v4, v1

    div-float/2addr v4, v0

    float-to-int v4, v4

    iput v4, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPreviewPaperHeight:I

    .line 954
    :goto_24
    return-void

    .line 932
    .end local v0           #ratioLayoutXY:F
    .end local v1           #ratioPaperXY:F
    .end local v2           #viewHeight:I
    .end local v3           #viewWidth:I
    :cond_25
    iget v3, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPortraitDisplayHeight:I

    .line 933
    .restart local v3       #viewWidth:I
    iget v2, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPortraitDisplayWidth:I

    .restart local v2       #viewHeight:I
    goto :goto_6

    .line 943
    .restart local v0       #ratioLayoutXY:F
    :cond_2a
    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget v4, v4, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPaperWidth:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget v5, v5, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPaperHeight:I

    int-to-float v5, v5

    div-float v1, v4, v5

    .restart local v1       #ratioPaperXY:F
    goto :goto_18

    .line 951
    :cond_37
    int-to-float v4, v3

    mul-float/2addr v4, v0

    div-float/2addr v4, v1

    float-to-int v4, v4

    iput v4, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPreviewPaperWidth:I

    .line 952
    iput v2, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPreviewPaperHeight:I

    goto :goto_24
.end method

.method private preparePreviewImage(II)Landroid/graphics/Bitmap;
    .registers 45
    .parameter "index"
    .parameter "displayRotation"

    .prologue
    .line 959
    const/16 v39, 0x0

    .line 960
    .local v39, shadowMargin:I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPreviewPaperWidth:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPreviewPaperHeight:I

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v33

    .line 961
    .local v33, paper_image:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    move-object/from16 v0, v33

    invoke-direct {v3, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 963
    .local v3, canvas:Landroid/graphics/Canvas;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPreviewPaperWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPreviewPaperHeight:I

    if-le v4, v6, :cond_76

    const v4, 0x7f020015

    :goto_28
    invoke-static {v5, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v32

    .line 964
    .local v32, paper_bg:Landroid/graphics/Bitmap;
    if-eqz v32, :cond_7a

    .line 965
    const/16 v39, 0x10

    .line 966
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 967
    new-instance v4, Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/16 v6, 0xb

    neg-int v6, v6

    invoke-virtual/range {v32 .. v32}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual/range {v32 .. v32}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-direct {v4, v5, v6, v7, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPreviewPaperWidth:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPreviewPaperHeight:I

    invoke-direct {v5, v6, v7, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v6, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v3, v0, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 983
    :goto_5a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget-object v4, v4, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mFilePathList:Ljava/util/ArrayList;

    if-eqz v4, :cond_6e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget-object v4, v4, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mFilePathList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_121

    .line 984
    :cond_6e
    const-string v4, "MobilePrint"

    const-string v5, "MPrintPreviewActivity : mFilePathList is null or empty!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    :cond_75
    :goto_75
    return-object v33

    .line 963
    .end local v32           #paper_bg:Landroid/graphics/Bitmap;
    :cond_76
    const v4, 0x7f020016

    goto :goto_28

    .line 970
    .restart local v32       #paper_bg:Landroid/graphics/Bitmap;
    :cond_7a
    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 971
    new-instance v8, Landroid/graphics/Paint;

    const/high16 v4, -0x100

    invoke-direct {v8, v4}, Landroid/graphics/Paint;-><init>(I)V

    .line 972
    .local v8, blackPaint:Landroid/graphics/Paint;
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPreviewPaperWidth:I

    add-int/lit8 v6, v6, -0x1

    int-to-float v6, v6

    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 973
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPreviewPaperHeight:I

    add-int/lit8 v7, v7, -0x1

    int-to-float v7, v7

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 974
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPreviewPaperHeight:I

    add-int/lit8 v5, v5, -0x1

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPreviewPaperWidth:I

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPreviewPaperHeight:I

    add-int/lit8 v7, v7, -0x1

    int-to-float v7, v7

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 975
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPreviewPaperHeight:I

    add-int/lit8 v5, v5, -0x2

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPreviewPaperWidth:I

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPreviewPaperHeight:I

    add-int/lit8 v7, v7, -0x2

    int-to-float v7, v7

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 976
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPreviewPaperWidth:I

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPreviewPaperWidth:I

    add-int/lit8 v6, v6, -0x1

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPreviewPaperHeight:I

    int-to-float v7, v7

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 977
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPreviewPaperWidth:I

    add-int/lit8 v4, v4, -0x2

    int-to-float v4, v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPreviewPaperWidth:I

    add-int/lit8 v6, v6, -0x2

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPreviewPaperHeight:I

    int-to-float v7, v7

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 978
    new-instance v17, Landroid/graphics/Paint;

    const v4, 0x777777

    move-object/from16 v0, v17

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    .line 979
    .local v17, cornerPaint:Landroid/graphics/Paint;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPreviewPaperHeight:I

    add-int/lit8 v5, v5, -0x1

    int-to-float v5, v5

    move-object/from16 v0, v17

    invoke-virtual {v3, v4, v5, v0}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 980
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPreviewPaperWidth:I

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v3, v4, v5, v0}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    goto/16 :goto_5a

    .line 987
    .end local v8           #blackPaint:Landroid/graphics/Paint;
    .end local v17           #cornerPaint:Landroid/graphics/Paint;
    :cond_121
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget-object v4, v4, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mFilePathList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, p1

    if-gt v4, v0, :cond_165

    .line 988
    const-string v4, "MobilePrint"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MPrintPreviewActivity : index("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") is out of TotalPage("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget-object v6, v6, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mFilePathList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_75

    .line 993
    :cond_165
    const/16 v35, 0x1

    .line 994
    .local v35, sampleSize:I
    const/16 v22, 0x0

    .line 995
    .local v22, exifOrientation:I
    const/16 v20, 0x0

    .line 997
    .local v20, exif:Landroid/media/ExifInterface;
    :try_start_16b
    new-instance v21, Landroid/media/ExifInterface;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget-object v4, v4, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mFilePathList:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-direct {v0, v4}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_180
    .catch Ljava/io/IOException; {:try_start_16b .. :try_end_180} :catch_367

    .end local v20           #exif:Landroid/media/ExifInterface;
    .local v21, exif:Landroid/media/ExifInterface;
    move-object/from16 v20, v21

    .line 1003
    .end local v21           #exif:Landroid/media/ExifInterface;
    .restart local v20       #exif:Landroid/media/ExifInterface;
    :goto_182
    if-eqz v20, :cond_371

    const-string v4, "ImageWidth"

    const/4 v5, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v4

    if-lez v4, :cond_371

    .line 1004
    const-string v4, "ImageWidth"

    const/4 v5, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v28

    .line 1005
    .local v28, jpgWidth:I
    const-string v4, "ImageLength"

    const/4 v5, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v27

    .line 1006
    .local v27, jpgHeight:I
    const-string v4, "Orientation"

    const/4 v5, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v22

    .line 1007
    const-string v4, "MobilePrint"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MPrintPreviewActivity : jpgWidth = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", jpgHeight = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", exifOrientation = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    move/from16 v0, v28

    div-int/lit16 v0, v0, 0x3e8

    move/from16 v41, v0

    .line 1010
    .local v41, widthScale:I
    move/from16 v0, v27

    div-int/lit16 v0, v0, 0x3e8

    move/from16 v23, v0

    .line 1011
    .local v23, heightScale:I
    move/from16 v0, v41

    move/from16 v1, v23

    if-le v0, v1, :cond_36d

    move/from16 v35, v41

    .line 1012
    :goto_1f0
    const/4 v4, 0x1

    move/from16 v0, v35

    if-ge v0, v4, :cond_1f7

    .line 1013
    const/16 v35, 0x1

    .line 1031
    .end local v23           #heightScale:I
    .end local v27           #jpgHeight:I
    .end local v28           #jpgWidth:I
    .end local v41           #widthScale:I
    :cond_1f7
    :goto_1f7
    const-string v4, "MobilePrint"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MPrintPreviewActivity : loading index = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", sampleSize = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    new-instance v30, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v30 .. v30}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1035
    .local v30, options:Landroid/graphics/BitmapFactory$Options;
    move/from16 v0, v35

    move-object/from16 v1, v30

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1036
    const/4 v4, 0x1

    move-object/from16 v0, v30

    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 1037
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget-object v4, v4, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mFilePathList:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, v30

    invoke-static {v4, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 1038
    .local v9, image:Landroid/graphics/Bitmap;
    if-eqz v9, :cond_75

    .line 1040
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget v4, v4, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPrintOrientation:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_26d

    .line 1041
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget v4, v4, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPaperOrientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3ed

    .line 1042
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-le v4, v5, :cond_3e4

    .line 1043
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    const/4 v5, 0x1

    iput v5, v4, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPrintOrientation:I

    .line 1048
    :goto_266
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->preparePaper(I)V

    .line 1056
    :cond_26d
    :goto_26d
    const/16 v29, 0x0

    .line 1057
    .local v29, nAngle:F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget v4, v4, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPrintOrientation:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3fb

    .line 1058
    add-int/lit8 v4, p2, 0x1

    rem-int/lit8 v4, v4, 0x2

    mul-int/lit8 v4, v4, 0x5a

    int-to-float v0, v4

    move/from16 v29, v0

    .line 1063
    :goto_281
    const/4 v4, 0x3

    move/from16 v0, v22

    if-eq v0, v4, :cond_28c

    const/16 v4, 0x8

    move/from16 v0, v22

    if-ne v0, v4, :cond_298

    .line 1064
    :cond_28c
    move/from16 v0, v29

    float-to-double v4, v0

    const-wide v6, 0x40667ccccccccccdL

    add-double/2addr v4, v6

    double-to-float v0, v4

    move/from16 v29, v0

    .line 1067
    :cond_298
    const/4 v4, 0x0

    cmpl-float v4, v29, v4

    if-eqz v4, :cond_2b8

    .line 1068
    new-instance v14, Landroid/graphics/Matrix;

    invoke-direct {v14}, Landroid/graphics/Matrix;-><init>()V

    .line 1069
    .local v14, matrix:Landroid/graphics/Matrix;
    move/from16 v0, v29

    invoke-virtual {v14, v0}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 1070
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    const/4 v15, 0x1

    invoke-static/range {v9 .. v15}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v34

    .line 1071
    .local v34, resized_image:Landroid/graphics/Bitmap;
    move-object/from16 v9, v34

    .line 1075
    .end local v14           #matrix:Landroid/graphics/Matrix;
    .end local v34           #resized_image:Landroid/graphics/Bitmap;
    :cond_2b8
    new-instance v31, Landroid/graphics/Paint;

    invoke-direct/range {v31 .. v31}, Landroid/graphics/Paint;-><init>()V

    .line 1076
    .local v31, paint:Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget v4, v4, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mColorPrint:I

    if-nez v4, :cond_2dc

    .line 1077
    new-instance v16, Landroid/graphics/ColorMatrix;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 1078
    .local v16, cMatrix:Landroid/graphics/ColorMatrix;
    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 1079
    new-instance v4, Landroid/graphics/ColorMatrixColorFilter;

    move-object/from16 v0, v16

    invoke-direct {v4, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 1083
    .end local v16           #cMatrix:Landroid/graphics/ColorMatrix;
    :cond_2dc
    new-instance v40, Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    move-object/from16 v0, v40

    invoke-direct {v0, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1084
    .local v40, srcRect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPreviewPaperWidth:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPaperMargin:I

    add-int v5, v5, v39

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float v37, v4, v5

    .line 1085
    .local v37, scaleX:F
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPreviewPaperHeight:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPaperMargin:I

    add-int v5, v5, v39

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float v38, v4, v5

    .line 1086
    .local v38, scaleY:F
    cmpl-float v4, v37, v38

    if-lez v4, :cond_404

    move/from16 v36, v38

    .line 1087
    .local v36, scale:F
    :goto_31d
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v36

    float-to-int v0, v4

    move/from16 v25, v0

    .line 1088
    .local v25, imageWidth:I
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v36

    float-to-int v0, v4

    move/from16 v24, v0

    .line 1089
    .local v24, imageHeight:I
    new-instance v18, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPreviewPaperWidth:I

    sub-int v4, v4, v25

    div-int/lit8 v4, v4, 0x2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPreviewPaperHeight:I

    sub-int v5, v5, v24

    div-int/lit8 v5, v5, 0x2

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPreviewPaperWidth:I

    sub-int v6, v6, v25

    div-int/lit8 v6, v6, 0x2

    add-int v6, v6, v25

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPreviewPaperHeight:I

    sub-int v7, v7, v24

    div-int/lit8 v7, v7, 0x2

    add-int v7, v7, v24

    move-object/from16 v0, v18

    invoke-direct {v0, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1093
    .local v18, dstRect:Landroid/graphics/Rect;
    move-object/from16 v0, v40

    move-object/from16 v1, v18

    move-object/from16 v2, v31

    invoke-virtual {v3, v9, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_75

    .line 998
    .end local v9           #image:Landroid/graphics/Bitmap;
    .end local v18           #dstRect:Landroid/graphics/Rect;
    .end local v24           #imageHeight:I
    .end local v25           #imageWidth:I
    .end local v29           #nAngle:F
    .end local v30           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v31           #paint:Landroid/graphics/Paint;
    .end local v36           #scale:F
    .end local v37           #scaleX:F
    .end local v38           #scaleY:F
    .end local v40           #srcRect:Landroid/graphics/Rect;
    :catch_367
    move-exception v19

    .line 999
    .local v19, e:Ljava/io/IOException;
    invoke-virtual/range {v19 .. v19}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_182

    .end local v19           #e:Ljava/io/IOException;
    .restart local v23       #heightScale:I
    .restart local v27       #jpgHeight:I
    .restart local v28       #jpgWidth:I
    .restart local v41       #widthScale:I
    :cond_36d
    move/from16 v35, v23

    .line 1011
    goto/16 :goto_1f0

    .line 1016
    .end local v23           #heightScale:I
    .end local v27           #jpgHeight:I
    .end local v28           #jpgWidth:I
    .end local v41           #widthScale:I
    :cond_371
    new-instance v26, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget-object v4, v4, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mFilePathList:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1017
    .local v26, imgFile:Ljava/io/File;
    if-eqz v26, :cond_392

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_3ba

    .line 1018
    :cond_392
    const-string v5, "MobilePrint"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MPrintPreviewActivity : imageFilePath is invalid or empty - "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget-object v4, v4, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mFilePathList:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_75

    .line 1021
    :cond_3ba
    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/32 v6, 0x19f0a0

    cmp-long v4, v4, v6

    if-lez v4, :cond_3c9

    .line 1022
    const/16 v35, 0x4

    goto/16 :goto_1f7

    .line 1024
    :cond_3c9
    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/32 v6, 0x7a120

    cmp-long v4, v4, v6

    if-gtz v4, :cond_3dc

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPortraitDisplayHeight:I

    const/16 v5, 0x1e0

    if-gt v4, v5, :cond_3e0

    .line 1025
    :cond_3dc
    const/16 v35, 0x2

    goto/16 :goto_1f7

    .line 1028
    :cond_3e0
    const/16 v35, 0x1

    goto/16 :goto_1f7

    .line 1046
    .end local v26           #imgFile:Ljava/io/File;
    .restart local v9       #image:Landroid/graphics/Bitmap;
    .restart local v30       #options:Landroid/graphics/BitmapFactory$Options;
    :cond_3e4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    const/4 v5, 0x0

    iput v5, v4, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPrintOrientation:I

    goto/16 :goto_266

    .line 1051
    :cond_3ed
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget v5, v5, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPaperOrientation:I

    iput v5, v4, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPrintOrientation:I

    goto/16 :goto_26d

    .line 1061
    .restart local v29       #nAngle:F
    :cond_3fb
    rem-int/lit8 v4, p2, 0x2

    mul-int/lit8 v4, v4, 0x5a

    int-to-float v0, v4

    move/from16 v29, v0

    goto/16 :goto_281

    .restart local v31       #paint:Landroid/graphics/Paint;
    .restart local v37       #scaleX:F
    .restart local v38       #scaleY:F
    .restart local v40       #srcRect:Landroid/graphics/Rect;
    :cond_404
    move/from16 v36, v37

    .line 1086
    goto/16 :goto_31d
.end method

.method private preparePrint()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1100
    const-string v0, "MobilePrint"

    const-string v1, "MPrintPreviewActivity : preparePrint()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    invoke-static {v0}, Lcom/sec/android/app/mobileprint/MPrintCommon;->checkPrintJobInfo(Lcom/sec/android/app/mobileprint/MPrintJobItem;)Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 1103
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget v0, v0, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mConnectedType:I

    if-ne v0, v2, :cond_28

    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mAppContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/mobileprint/MPrintCommon;->isWifiConnected(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 1104
    const/16 v0, 0x67

    invoke-virtual {p0, v0}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->showDialog(I)V

    .line 1126
    :goto_27
    return-void

    .line 1108
    :cond_28
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/mobileprint/MPrintMainService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 1110
    new-instance v0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$7;

    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mAppContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$7;-><init>(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 1116
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f080026

    invoke-virtual {p0, v1}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1117
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1118
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1119
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 1121
    new-instance v0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreparePrintTask;

    invoke-direct {v0, p0, v3}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreparePrintTask;-><init>(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$1;)V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Void;

    aput-object v3, v1, v4

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreparePrintTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_27

    .line 1124
    :cond_6b
    const/16 v0, 0x14d

    invoke-virtual {p0, v0}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->showDialog(I)V

    goto :goto_27
.end method

.method private declared-synchronized reloadImageFiles(I)V
    .registers 4
    .parameter "displayRotation"

    .prologue
    .line 910
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mFlipper:Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;

    iget v1, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mTotalPage:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;->initPreviewFliper(I)V

    .line 911
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mFlipper:Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;

    iget v1, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mCurrentPage:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;->prepareImageViews(II)V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 912
    monitor-exit p0

    return-void

    .line 910
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private startPrint()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 1129
    const-string v1, "MobilePrint"

    const-string v2, "MPrintPreviewActivity : startPrint()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mBoundService:Lcom/sec/android/app/mobileprint/MPrintMainService;

    if-eqz v1, :cond_31

    .line 1132
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mBoundService:Lcom/sec/android/app/mobileprint/MPrintMainService;

    invoke-virtual {v1}, Lcom/sec/android/app/mobileprint/MPrintMainService;->isPossiblePrint()Z

    move-result v1

    if-ne v1, v3, :cond_2b

    .line 1133
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/mobileprint/MPrintMainService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1134
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "PrintJobInfo"

    iget-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1135
    invoke-virtual {p0, v0}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1136
    iput-boolean v3, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mIsPrinting:Z

    .line 1137
    invoke-virtual {p0}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->finish()V

    .line 1146
    .end local v0           #intent:Landroid/content/Intent;
    :goto_2a
    return-void

    .line 1140
    :cond_2b
    const/16 v1, 0x131

    invoke-virtual {p0, v1}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->showDialog(I)V

    goto :goto_2a

    .line 1144
    :cond_31
    const/16 v1, 0x14d

    invoke-virtual {p0, v1}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->showDialog(I)V

    goto :goto_2a
.end method

.method private updatePaddingOfPaper()V
    .registers 9

    .prologue
    .line 833
    invoke-direct {p0}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->getDisplayRotation()I

    move-result v6

    if-nez v6, :cond_55

    .line 834
    invoke-virtual {p0}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070006

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 835
    .local v2, paddingTop:I
    invoke-virtual {p0}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070007

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 841
    .local v1, paddingBottom:I
    :goto_1c
    const v6, 0x7f0c000c

    invoke-virtual {p0, v6}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 842
    .local v3, paperOuter:Landroid/view/View;
    if-eqz v3, :cond_30

    .line 843
    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    invoke-virtual {v3, v6, v2, v7, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 846
    :cond_30
    const v6, 0x7f0c0003

    invoke-virtual {p0, v6}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 847
    .local v5, titleLayout:Landroid/view/View;
    if-eqz v5, :cond_42

    .line 848
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 849
    .local v4, params:Landroid/view/ViewGroup$LayoutParams;
    iput v2, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 850
    invoke-virtual {v5, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 853
    .end local v4           #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_42
    const v6, 0x7f0c0014

    invoke-virtual {p0, v6}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 854
    .local v0, bottomLayout:Landroid/view/View;
    if-eqz v0, :cond_54

    .line 855
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 856
    .restart local v4       #params:Landroid/view/ViewGroup$LayoutParams;
    iput v1, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 857
    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 859
    .end local v4           #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_54
    return-void

    .line 838
    .end local v0           #bottomLayout:Landroid/view/View;
    .end local v1           #paddingBottom:I
    .end local v2           #paddingTop:I
    .end local v3           #paperOuter:Landroid/view/View;
    .end local v5           #titleLayout:Landroid/view/View;
    :cond_55
    invoke-virtual {p0}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070004

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 839
    .restart local v2       #paddingTop:I
    invoke-virtual {p0}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070005

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .restart local v1       #paddingBottom:I
    goto :goto_1c
.end method

.method private updatePageInfo()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 821
    iget v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mTotalPage:I

    if-le v0, v5, :cond_33

    .line 822
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPagesTextView:Landroid/widget/TextView;

    iget v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mCurrentPage:I

    const/16 v2, 0xa

    if-lt v0, v2, :cond_30

    const-string v0, "%d / %d"

    :goto_10
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mCurrentPage:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget v3, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mTotalPage:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 823
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPagesTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 828
    :goto_2f
    return-void

    .line 822
    :cond_30
    const-string v0, " %d / %d "

    goto :goto_10

    .line 826
    :cond_33
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPagesTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2f
.end method

.method private updatePrintButton()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 775
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget-object v0, v0, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mDevice:Ljava/lang/String;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget-object v0, v0, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mFilePathList:Ljava/util/ArrayList;

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mIsEncodingImage:Z

    if-ne v0, v1, :cond_44

    .line 776
    :cond_16
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPrintButton:Landroid/widget/Button;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPrintButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-ne v0, v1, :cond_27

    .line 777
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPrintButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 779
    :cond_27
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPrintMenu:Landroid/view/MenuItem;

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPrintMenu:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v0

    if-ne v0, v1, :cond_43

    .line 780
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPrintMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 781
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPrintMenu:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 793
    :cond_43
    :goto_43
    return-void

    .line 785
    :cond_44
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPrintButton:Landroid/widget/Button;

    if-eqz v0, :cond_55

    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPrintButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_55

    .line 786
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPrintButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 788
    :cond_55
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPrintMenu:Landroid/view/MenuItem;

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPrintMenu:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_43

    .line 789
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPrintMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 790
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPrintMenu:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_43
.end method

.method private updatePrinterInfo()V
    .registers 6

    .prologue
    .line 796
    const/4 v0, 0x0

    .line 797
    .local v0, printerInfo:Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    if-eqz v1, :cond_51

    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    iget-object v1, v1, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mModelName:Ljava/lang/String;

    if-eqz v1, :cond_51

    .line 798
    new-instance v0, Ljava/lang/String;

    .end local v0           #printerInfo:Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    iget-object v1, v1, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mModelName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 805
    .restart local v0       #printerInfo:Ljava/lang/String;
    :goto_14
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPrinterNameTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 806
    iget-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPaperInfoTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget-object v3, v3, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPaperName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget v1, v1, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mColorPrint:I

    const/4 v4, 0x1

    if-ne v1, v4, :cond_59

    const v1, 0x7f08001e

    invoke-virtual {p0, v1}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_3c
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 807
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPrinterNameTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->calculatePrinterNameWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 818
    return-void

    .line 801
    :cond_51
    const v1, 0x7f08000b

    invoke-virtual {p0, v1}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    .line 806
    :cond_59
    const v1, 0x7f08001d

    invoke-virtual {p0, v1}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3c
.end method

.method private updateSettingButton()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 754
    iget-boolean v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mIsEncodingImage:Z

    if-ne v0, v1, :cond_34

    .line 755
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mSettingButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mSettingButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->isEnabled()Z

    move-result v0

    if-ne v0, v1, :cond_17

    .line 756
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mSettingButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 758
    :cond_17
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mSettingMenu:Landroid/view/MenuItem;

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mSettingMenu:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v0

    if-ne v0, v1, :cond_33

    .line 759
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mSettingMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 760
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mSettingMenu:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 772
    :cond_33
    :goto_33
    return-void

    .line 764
    :cond_34
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mSettingButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mSettingButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_45

    .line 765
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mSettingButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 767
    :cond_45
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mSettingMenu:Landroid/view/MenuItem;

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mSettingMenu:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_33

    .line 768
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mSettingMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 769
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mSettingMenu:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_33
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 12
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v5, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 429
    const/16 v4, 0x3e9

    if-ne p1, v4, :cond_5a

    .line 430
    if-ne p2, v5, :cond_54

    .line 431
    const-string v4, "PrinterInfo"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    .line 432
    .local v3, printerInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;
    invoke-static {v3}, Lcom/sec/android/app/mobileprint/MPrintCommon;->checkPrinterInfo(Lcom/sec/android/app/mobileprint/MPrintPrinterItem;)Z

    move-result v4

    if-ne v4, v7, :cond_53

    .line 433
    iput-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    .line 434
    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget-object v5, v3, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mModelName:Ljava/lang/String;

    iput-object v5, v4, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mDevice:Ljava/lang/String;

    .line 435
    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget v5, v3, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mConnectedType:I

    iput v5, v4, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mConnectedType:I

    .line 436
    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget-object v5, v3, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mIPAddr:Ljava/lang/String;

    iput-object v5, v4, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mIPAddr:Ljava/lang/String;

    .line 437
    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget v5, v3, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mColorModel:I

    iput v5, v4, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mColorModel:I

    .line 438
    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget-object v5, v3, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mLanguages:Ljava/util/ArrayList;

    iput-object v5, v4, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mLanguages:Ljava/util/ArrayList;

    .line 440
    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget v4, v4, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mColorModel:I

    if-nez v4, :cond_4a

    .line 441
    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iput v6, v4, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mColorPrint:I

    .line 442
    iget-boolean v4, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mIsEncodingImage:Z

    if-nez v4, :cond_4a

    .line 443
    iput-boolean v7, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mRotateAnimation:Z

    .line 444
    invoke-direct {p0}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->loadImageFiles()V

    .line 448
    :cond_4a
    invoke-direct {p0}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->updateSettingButton()V

    .line 449
    invoke-direct {p0}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->updatePrintButton()V

    .line 450
    invoke-direct {p0}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->updatePrinterInfo()V

    .line 513
    .end local v3           #printerInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;
    :cond_53
    :goto_53
    return-void

    .line 453
    :cond_54
    if-ne p2, v7, :cond_53

    .line 454
    invoke-virtual {p0}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->finish()V

    goto :goto_53

    .line 457
    :cond_5a
    const/16 v4, 0x3eb

    if-ne p1, v4, :cond_53

    .line 458
    if-ne p2, v5, :cond_88

    .line 459
    if-eqz p3, :cond_7d

    .line 460
    const-string v4, "PrinterInfo"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    .line 461
    .restart local v3       #printerInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;
    const-string v4, "PrintJobInfo"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/mobileprint/MPrintJobItem;

    .line 462
    .local v2, printJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;
    if-eqz v3, :cond_76

    if-nez v2, :cond_83

    .line 463
    :cond_76
    const-string v4, "MobilePrint"

    const-string v5, "MPrintPreviewActivity : onActivityResult() - printerInfo or printJob is null!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    .end local v2           #printJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;
    .end local v3           #printerInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;
    :cond_7d
    :goto_7d
    iput-boolean v7, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mIsPrinting:Z

    .line 471
    invoke-virtual {p0}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->finish()V

    goto :goto_53

    .line 466
    .restart local v2       #printJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;
    .restart local v3       #printerInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;
    :cond_83
    iput-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    .line 467
    iput-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    goto :goto_7d

    .line 474
    .end local v2           #printJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;
    .end local v3           #printerInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;
    :cond_88
    iput-boolean v6, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mRotateAnimation:Z

    .line 475
    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mFlipper:Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;->setVisibility(I)V

    .line 476
    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mCurtainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 478
    const/4 v0, 0x0

    .line 479
    .local v0, oldFilePath:Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget-object v4, v4, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mFilePathList:Ljava/util/ArrayList;

    if-eqz v4, :cond_b1

    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget-object v4, v4, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mFilePathList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_b1

    .line 480
    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget-object v4, v4, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mFilePathList:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #oldFilePath:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 482
    .restart local v0       #oldFilePath:Ljava/lang/String;
    :cond_b1
    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget v1, v4, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPaperOrientation:I

    .line 484
    .local v1, oldPaperOrientation:I
    if-eqz p3, :cond_da

    .line 485
    const-string v4, "PrinterInfo"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    .line 486
    .restart local v3       #printerInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;
    const-string v4, "PrintJobInfo"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/mobileprint/MPrintJobItem;

    .line 487
    .restart local v2       #printJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;
    if-eqz v3, :cond_cb

    if-nez v2, :cond_d3

    .line 488
    :cond_cb
    const-string v4, "MobilePrint"

    const-string v5, "MPrintPreviewActivity : onActivityResult() - printerInfo or printJob is null!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_53

    .line 492
    :cond_d3
    iput-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    .line 493
    iput-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    .line 494
    invoke-direct {p0}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->updatePrinterInfo()V

    .line 498
    .end local v2           #printJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;
    .end local v3           #printerInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;
    :cond_da
    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget v4, v4, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPrintMode:I

    if-ne v4, v7, :cond_109

    .line 499
    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget v4, v4, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPaperOrientation:I

    if-ne v1, v4, :cond_106

    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget-object v4, v4, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mFilePathList:Ljava/util/ArrayList;

    if-eqz v4, :cond_109

    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget-object v4, v4, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mFilePathList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_109

    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget-object v4, v4, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mFilePathList:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_109

    .line 501
    :cond_106
    invoke-direct {p0}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->encodeImage()V

    .line 505
    :cond_109
    invoke-direct {p0}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->updateSettingButton()V

    .line 506
    invoke-direct {p0}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->updatePrintButton()V

    .line 508
    iget-boolean v4, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mIsEncodingImage:Z

    if-nez v4, :cond_53

    .line 509
    invoke-direct {p0}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->loadImageFiles()V

    goto/16 :goto_53
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 6
    .parameter "newConfig"

    .prologue
    const/4 v3, 0x0

    .line 632
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 634
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    iget v2, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mCurrentWindowOrientation:I

    if-eq v1, v2, :cond_1f

    .line 666
    iput v3, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mAtTouchDown:F

    .line 667
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, v3, v3, v3, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 668
    .local v0, trans:Landroid/view/animation/Animation;
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 669
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 670
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mOuterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 674
    .end local v0           #trans:Landroid/view/animation/Animation;
    :cond_1f
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mCurrentWindowOrientation:I

    .line 677
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPrinterNameTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->calculatePrinterNameWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 683
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 13
    .parameter "savedInstanceState"

    .prologue
    const v10, 0x7f080001

    const/16 v9, 0x8

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 153
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 155
    iput-object p0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mAppContext:Landroid/content/Context;

    .line 156
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mMainHandler:Landroid/os/Handler;

    .line 158
    new-instance v4, Landroid/os/HandlerThread;

    const-string v5, "Image Loading Thread"

    invoke-direct {v4, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mImageLoadingThread:Landroid/os/HandlerThread;

    .line 159
    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mImageLoadingThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->start()V

    .line 160
    new-instance v4, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$ImageLoadingHandler;

    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mImageLoadingThread:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$ImageLoadingHandler;-><init>(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mImageLoadingHandler:Landroid/os/Handler;

    .line 162
    new-instance v4, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$1;

    invoke-direct {v4, p0}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$1;-><init>(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;)V

    iput-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mConnection:Landroid/content/ServiceConnection;

    .line 174
    invoke-virtual {p0}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mDisplayManager:Landroid/view/Display;

    .line 176
    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mDisplayManager:Landroid/view/Display;

    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v4

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_57

    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mDisplayManager:Landroid/view/Display;

    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mDisplayManager:Landroid/view/Display;

    invoke-virtual {v5}, Landroid/view/Display;->getHeight()I

    move-result v5

    if-gt v4, v5, :cond_6f

    :cond_57
    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mDisplayManager:Landroid/view/Display;

    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v4

    rem-int/lit8 v4, v4, 0x2

    if-ne v4, v7, :cond_71

    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mDisplayManager:Landroid/view/Display;

    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mDisplayManager:Landroid/view/Display;

    invoke-virtual {v5}, Landroid/view/Display;->getHeight()I

    move-result v5

    if-ge v4, v5, :cond_71

    .line 178
    :cond_6f
    iput-boolean v7, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mIsLandscapeLCD:Z

    .line 180
    :cond_71
    invoke-direct {p0}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->getDisplayRotation()I

    move-result v4

    if-nez v4, :cond_22e

    .line 181
    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mDisplayManager:Landroid/view/Display;

    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPortraitDisplayWidth:I

    .line 182
    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mDisplayManager:Landroid/view/Display;

    invoke-virtual {v4}, Landroid/view/Display;->getHeight()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPortraitDisplayHeight:I

    .line 188
    :goto_87
    iget v4, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPortraitDisplayWidth:I

    div-int/lit8 v4, v4, 0x28

    iput v4, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPaperMargin:I

    .line 190
    invoke-virtual {p0}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->getIntentData(Landroid/content/Intent;)V

    .line 191
    new-instance v4, Lcom/sec/android/app/mobileprint/MPrintSettingManager;

    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mAppContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/sec/android/app/mobileprint/MPrintSettingManager;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mSettingManager:Lcom/sec/android/app/mobileprint/MPrintSettingManager;

    .line 192
    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    if-nez v4, :cond_a9

    .line 193
    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mSettingManager:Lcom/sec/android/app/mobileprint/MPrintSettingManager;

    invoke-virtual {v4}, Lcom/sec/android/app/mobileprint/MPrintSettingManager;->loadPrinterInfo()Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    .line 195
    :cond_a9
    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mSettingManager:Lcom/sec/android/app/mobileprint/MPrintSettingManager;

    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    iget-object v6, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mIntentInvokeApp:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/app/mobileprint/MPrintSettingManager;->loadPrintJobInfo(Lcom/sec/android/app/mobileprint/MPrintPrinterItem;Ljava/lang/String;)Lcom/sec/android/app/mobileprint/MPrintJobItem;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    .line 196
    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mFilePath:Ljava/lang/String;

    invoke-static {v5}, Lcom/sec/android/app/mobileprint/MPrintFileUtility;->getImageFileList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, v4, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mFilePathList:Ljava/util/ArrayList;

    .line 197
    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget-object v4, v4, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mFilePathList:Ljava/util/ArrayList;

    if-eqz v4, :cond_f9

    .line 198
    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget-object v4, v4, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mFilePathList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mTotalPage:I

    .line 199
    const-string v4, "MobilePrint"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MPrintPreviewActivity : TotalPage = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mTotalPage:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget v4, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mTotalPage:I

    if-ge v4, v7, :cond_f9

    .line 201
    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mAppContext:Landroid/content/Context;

    const v5, 0x7f080032

    invoke-static {v4, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 205
    :cond_f9
    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mFilePath:Ljava/lang/String;

    if-eqz v4, :cond_103

    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget-object v4, v4, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mFilePathList:Ljava/util/ArrayList;

    if-nez v4, :cond_240

    .line 206
    :cond_103
    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iput v7, v4, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPrintMode:I

    .line 212
    :cond_107
    :goto_107
    if-eqz p1, :cond_111

    .line 213
    const-string v4, "current"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mCurrentPage:I

    .line 224
    :cond_111
    invoke-virtual {p0, v7}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->requestWindowFeature(I)Z

    .line 225
    const v4, 0x7f030002

    invoke-virtual {p0, v4}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->setContentView(I)V

    .line 231
    const v4, 0x7f0c0004

    invoke-virtual {p0, v4}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 232
    .local v3, title:Landroid/widget/TextView;
    if-eqz v3, :cond_25e

    .line 233
    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mIntentSubject:Ljava/lang/String;

    if-eqz v4, :cond_259

    .line 234
    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mIntentSubject:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    :goto_12e
    const v4, 0x7f0c0006

    invoke-virtual {p0, v4}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mDeviceIcon:Landroid/widget/ImageView;

    .line 250
    const v4, 0x7f0c0007

    invoke-virtual {p0, v4}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPrinterNameTextView:Landroid/widget/TextView;

    .line 251
    const v4, 0x7f0c0009

    invoke-virtual {p0, v4}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPaperInfoTextView:Landroid/widget/TextView;

    .line 252
    const v4, 0x7f0c0008

    invoke-virtual {p0, v4}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mSettingButton:Landroid/widget/ImageButton;

    .line 253
    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mSettingButton:Landroid/widget/ImageButton;

    if-eqz v4, :cond_168

    .line 254
    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mSettingButton:Landroid/widget/ImageButton;

    new-instance v5, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$2;

    invoke-direct {v5, p0}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$2;-><init>(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 261
    :cond_168
    const/high16 v4, 0x7f0c

    invoke-virtual {p0, v4}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPrintButton:Landroid/widget/Button;

    .line 262
    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPrintButton:Landroid/widget/Button;

    if-eqz v4, :cond_180

    .line 263
    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPrintButton:Landroid/widget/Button;

    new-instance v5, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$3;

    invoke-direct {v5, p0}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$3;-><init>(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    :cond_180
    const v4, 0x7f0c0001

    invoke-virtual {p0, v4}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 271
    .local v0, btn:Landroid/widget/Button;
    if-eqz v0, :cond_199

    .line 272
    const v4, 0x7f080006

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(I)V

    .line 273
    new-instance v4, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$4;

    invoke-direct {v4, p0}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$4;-><init>(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    :cond_199
    const v4, 0x7f0c000e

    invoke-virtual {p0, v4}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPagesTextView:Landroid/widget/TextView;

    .line 282
    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPagesTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 284
    const v4, 0x7f0c0011

    invoke-virtual {p0, v4}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 290
    .local v2, simulTextView:Landroid/widget/TextView;
    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 293
    const v4, 0x7f0c000c

    invoke-virtual {p0, v4}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mOuterLayout:Landroid/widget/LinearLayout;

    .line 294
    new-instance v5, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;

    const v4, 0x7f0c000d

    invoke-virtual {p0, v4}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ViewFlipper;

    const/4 v6, 0x3

    invoke-direct {v5, p0, v4, v6}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;-><init>(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;Landroid/widget/ViewFlipper;I)V

    iput-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mFlipper:Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;

    .line 295
    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mFlipper:Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;

    invoke-virtual {v4, p0}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 296
    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mFlipper:Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;

    invoke-virtual {v4, v9}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;->setVisibility(I)V

    .line 297
    const v4, 0x7f0c000f

    invoke-virtual {p0, v4}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mCurtainLayout:Landroid/widget/LinearLayout;

    .line 298
    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mCurtainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 300
    new-instance v4, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$5;

    invoke-direct {v4, p0}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$5;-><init>(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;)V

    iput-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mAniListener:Landroid/view/animation/Animation$AnimationListener;

    .line 353
    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget v4, v4, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPrintMode:I

    if-ne v4, v7, :cond_26e

    .line 354
    invoke-direct {p0}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->encodeImage()V

    .line 360
    :goto_1fc
    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mDeviceIcon:Landroid/widget/ImageView;

    if-eqz v4, :cond_272

    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mSettingButton:Landroid/widget/ImageButton;

    if-eqz v4, :cond_272

    .line 361
    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mDeviceIcon:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mSettingButton:Landroid/widget/ImageButton;

    invoke-virtual {v5}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070002

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPrinterInfoFixedWidth:I

    .line 367
    :goto_223
    invoke-direct {p0}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->updateSettingButton()V

    .line 368
    invoke-direct {p0}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->updatePrintButton()V

    .line 370
    if-eqz p1, :cond_275

    .line 371
    iput-boolean v7, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mRotateAnimation:Z

    .line 380
    :cond_22d
    :goto_22d
    return-void

    .line 185
    .end local v0           #btn:Landroid/widget/Button;
    .end local v2           #simulTextView:Landroid/widget/TextView;
    .end local v3           #title:Landroid/widget/TextView;
    :cond_22e
    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mDisplayManager:Landroid/view/Display;

    invoke-virtual {v4}, Landroid/view/Display;->getHeight()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPortraitDisplayWidth:I

    .line 186
    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mDisplayManager:Landroid/view/Display;

    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPortraitDisplayHeight:I

    goto/16 :goto_87

    .line 208
    :cond_240
    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mIntentInvokeApp:Ljava/lang/String;

    if-eqz v4, :cond_107

    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mIntentInvokeApp:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "gallery"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_107

    .line 209
    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    const/4 v5, 0x2

    iput v5, v4, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPrintMode:I

    goto/16 :goto_107

    .line 237
    .restart local v3       #title:Landroid/widget/TextView;
    :cond_259
    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_12e

    .line 241
    :cond_25e
    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mIntentSubject:Ljava/lang/String;

    if-eqz v4, :cond_269

    .line 242
    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mIntentSubject:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_12e

    .line 245
    :cond_269
    invoke-virtual {p0, v10}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->setTitle(I)V

    goto/16 :goto_12e

    .line 357
    .restart local v0       #btn:Landroid/widget/Button;
    .restart local v2       #simulTextView:Landroid/widget/TextView;
    :cond_26e
    invoke-direct {p0}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->loadImageFiles()V

    goto :goto_1fc

    .line 364
    :cond_272
    iput v8, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPrinterInfoFixedWidth:I

    goto :goto_223

    .line 374
    :cond_275
    const-string v4, "com.sec.android.app.mobileprint.PRINT_SETTING"

    invoke-virtual {p0}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-ne v4, v7, :cond_22d

    if-nez p1, :cond_22d

    .line 375
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 376
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "ReselectMode"

    invoke-virtual {v1, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 377
    const/16 v4, 0x3e9

    invoke-virtual {p0, v1, v4}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_22d
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 8
    .parameter "id"

    .prologue
    const v5, 0x7f08003a

    const v4, 0x108009b

    const v3, 0x7f080005

    const/4 v1, 0x0

    .line 518
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 519
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f080001

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 522
    const/16 v2, 0xc8

    if-ne p1, v2, :cond_4e

    .line 523
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->setResult(ILandroid/content/Intent;)V

    .line 524
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 525
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 526
    new-instance v2, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$6;

    invoke-direct {v2, p0}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$6;-><init>(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;)V

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 542
    :goto_2c
    sparse-switch p1, :sswitch_data_ae

    .line 577
    const-string v2, "MobilePrint"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MPrintPreviewActivity : unknown Dialog ID("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    :goto_4d
    return-object v1

    .line 532
    :cond_4e
    const/16 v2, 0xc9

    if-ne p1, v2, :cond_59

    .line 533
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 534
    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_2c

    .line 537
    :cond_59
    const v2, 0x1080027

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 538
    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_2c

    .line 544
    :sswitch_63
    const v1, 0x7f08002c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 581
    :goto_69
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_4d

    .line 547
    :sswitch_6e
    const v1, 0x7f08002d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_69

    .line 550
    :sswitch_75
    const v1, 0x7f080030

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_69

    .line 553
    :sswitch_7c
    const v1, 0x7f080031

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_69

    .line 556
    :sswitch_83
    const v1, 0x7f080032

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_69

    .line 559
    :sswitch_8a
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_69

    .line 562
    :sswitch_8e
    const v1, 0x7f080034

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_69

    .line 565
    :sswitch_95
    const v1, 0x7f080035

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_69

    .line 568
    :sswitch_9c
    const v1, 0x7f080036

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_69

    .line 571
    :sswitch_a3
    const v1, 0x7f080039

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_69

    .line 574
    :sswitch_aa
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_69

    .line 542
    :sswitch_data_ae
    .sparse-switch
        0x67 -> :sswitch_a3
        0x68 -> :sswitch_aa
        0xc8 -> :sswitch_63
        0xc9 -> :sswitch_6e
        0x12d -> :sswitch_75
        0x12e -> :sswitch_7c
        0x12f -> :sswitch_83
        0x130 -> :sswitch_8a
        0x131 -> :sswitch_8e
        0x132 -> :sswitch_95
        0x14d -> :sswitch_9c
    .end sparse-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .parameter "menu"

    .prologue
    .line 610
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .registers 4

    .prologue
    .line 399
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mBoundService:Lcom/sec/android/app/mobileprint/MPrintMainService;

    if-eqz v0, :cond_9

    .line 400
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 403
    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mImageLoadingThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_15

    .line 404
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mImageLoadingThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 405
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mImageLoadingThread:Landroid/os/HandlerThread;

    .line 408
    :cond_15
    invoke-virtual {p0}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 409
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    iget v0, v0, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mConnectedType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_29

    .line 410
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mSettingManager:Lcom/sec/android/app/mobileprint/MPrintSettingManager;

    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/mobileprint/MPrintSettingManager;->savePrinterInfo(Lcom/sec/android/app/mobileprint/MPrintPrinterItem;)V

    .line 412
    :cond_29
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mSettingManager:Lcom/sec/android/app/mobileprint/MPrintSettingManager;

    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mIntentInvokeApp:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/mobileprint/MPrintSettingManager;->savePrintJobInfo(Lcom/sec/android/app/mobileprint/MPrintJobItem;Ljava/lang/String;)V

    .line 413
    invoke-direct {p0}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->clearImageFiles()V

    .line 415
    const-string v0, "MobilePrint"

    const-string v1, "MPrintPreviewActivity : finished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    :cond_3c
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 419
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 615
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_1a

    .line 627
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_c
    return v0

    .line 618
    :pswitch_d
    invoke-virtual {p0}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->onBackPressed()V

    goto :goto_c

    .line 621
    :pswitch_11
    invoke-direct {p0}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->preparePrint()V

    goto :goto_c

    .line 624
    :pswitch_15
    invoke-direct {p0}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->gotoSettingActivity()V

    goto :goto_c

    .line 615
    nop

    :pswitch_data_1a
    .packed-switch 0x7f0c0020
        :pswitch_11
        :pswitch_15
        :pswitch_d
    .end packed-switch
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .parameter "outState"

    .prologue
    .line 423
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mSettingManager:Lcom/sec/android/app/mobileprint/MPrintSettingManager;

    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mIntentInvokeApp:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/mobileprint/MPrintSettingManager;->savePrintJobInfo(Lcom/sec/android/app/mobileprint/MPrintJobItem;Ljava/lang/String;)V

    .line 424
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 425
    return-void
.end method

.method protected onStart()V
    .registers 2

    .prologue
    .line 384
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 385
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mOuterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->clearAnimation()V

    .line 386
    invoke-direct {p0}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->updatePrinterInfo()V

    .line 387
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mIsStarted:Z

    .line 388
    return-void
.end method

.method protected onStop()V
    .registers 2

    .prologue
    .line 392
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mOuterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->clearAnimation()V

    .line 393
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mIsStarted:Z

    .line 394
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 395
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 13
    .parameter "v"
    .parameter "event"

    .prologue
    const-wide/16 v8, 0x96

    const/4 v6, 0x2

    const/high16 v5, 0x4316

    const/4 v2, 0x1

    const/4 v7, 0x0

    .line 687
    iget v3, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mTotalPage:I

    if-gt v3, v2, :cond_d

    .line 688
    const/4 v2, 0x0

    .line 733
    :cond_c
    :goto_c
    return v2

    .line 690
    :cond_d
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_33

    .line 691
    iget-wide v3, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mLastAniTime:J

    const-wide/16 v5, 0x1f4

    add-long/2addr v3, v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_c

    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mCurtainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_c

    .line 692
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mAtTouchDown:F

    .line 693
    iput v7, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mAtTouchDeltaX:F

    goto :goto_c

    .line 696
    :cond_33
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_b5

    iget v3, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mAtTouchDown:F

    cmpl-float v3, v3, v7

    if-eqz v3, :cond_b5

    .line 697
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mAtTouchUp:F

    .line 699
    iget v3, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mAtTouchUp:F

    add-float/2addr v3, v5

    iget v4, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mAtTouchDown:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_74

    .line 700
    iput v2, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mNextFlip:I

    .line 701
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    iget v3, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mAtTouchDeltaX:F

    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mOuterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v4

    add-int/lit8 v4, v4, 0x14

    neg-int v4, v4

    int-to-float v4, v4

    invoke-direct {v1, v3, v4, v7, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 702
    .local v1, trans:Landroid/view/animation/Animation;
    invoke-virtual {v1, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 703
    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 704
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mAniListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v1, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 705
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mOuterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 722
    :goto_71
    iput v7, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mAtTouchDown:F

    goto :goto_c

    .line 707
    .end local v1           #trans:Landroid/view/animation/Animation;
    :cond_74
    iget v3, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mAtTouchUp:F

    iget v4, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mAtTouchDown:F

    add-float/2addr v4, v5

    cmpl-float v3, v3, v4

    if-lez v3, :cond_a0

    .line 708
    iput v6, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mNextFlip:I

    .line 709
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    iget v3, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mAtTouchDeltaX:F

    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mOuterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v4

    add-int/lit8 v4, v4, 0x14

    int-to-float v4, v4

    invoke-direct {v1, v3, v4, v7, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 710
    .restart local v1       #trans:Landroid/view/animation/Animation;
    invoke-virtual {v1, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 711
    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 712
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mAniListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v1, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 713
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mOuterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_71

    .line 716
    .end local v1           #trans:Landroid/view/animation/Animation;
    :cond_a0
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    iget v3, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mAtTouchDeltaX:F

    invoke-direct {v1, v3, v7, v7, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 717
    .restart local v1       #trans:Landroid/view/animation/Animation;
    const-wide/16 v3, 0x64

    invoke-virtual {v1, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 718
    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 719
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mOuterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_71

    .line 724
    .end local v1           #trans:Landroid/view/animation/Animation;
    :cond_b5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v6, :cond_c

    iget v3, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mAtTouchDown:F

    cmpl-float v3, v3, v7

    if-eqz v3, :cond_c

    .line 725
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget v4, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mAtTouchDown:F

    sub-float v0, v3, v4

    .line 726
    .local v0, deltaX:F
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v1, v0, v0, v7, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 727
    .restart local v1       #trans:Landroid/view/animation/Animation;
    const-wide/16 v3, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 728
    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 729
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mOuterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 730
    iput v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mAtTouchDeltaX:F

    goto/16 :goto_c
.end method
