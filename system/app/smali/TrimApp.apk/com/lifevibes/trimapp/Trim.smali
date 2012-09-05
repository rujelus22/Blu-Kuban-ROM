.class public Lcom/lifevibes/trimapp/Trim;
.super Landroid/app/Activity;
.source "Trim.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lifevibes/trimapp/Trim$ThumbnailTask;,
        Lcom/lifevibes/trimapp/Trim$ThumbnailImage;,
        Lcom/lifevibes/trimapp/Trim$ProgressDialogListener;,
        Lcom/lifevibes/trimapp/Trim$VideoViewListener;,
        Lcom/lifevibes/trimapp/Trim$TrimmingListener;,
        Lcom/lifevibes/trimapp/Trim$DoubleSeekBarListener;
    }
.end annotation


# static fields
.field public static CURRENT_MEDIASHARE_VERSION:I

.field public static CURRENT_MODEL_TYPE:I

.field static final MEDIA_VIDEO_PROJECTION:[Ljava/lang/String;

.field public static SUPPORT_MULT_ORIENTATION:Z

.field public static SUPPORT_VIDEO_ROTATION:Z

.field public static VIDEOVIEW_HEIGHT:I

.field public static VIDEOVIEW_WIDTH:I

.field private static mActionWaitWatcherPlay:I

.field private static mActionWaitWatcherTrim:I

.field static final mInvalidFileNameChar:[Ljava/lang/String;


# instance fields
.field private final mActionHandler:Landroid/os/Handler;

.field private final mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mControlLayout:Landroid/widget/RelativeLayout;

.field private mCurrentDecoderUser:I

.field private mDoubleSeekBar:Lcom/lifevibes/trimapp/widget/DoubleSeekBar;

.field private mDragging:Z

.field private mEditTextName:Landroid/widget/EditText;

.field private mFileCount:I

.field private mFilenameDialog:Landroid/app/Dialog;

.field private final mHandler:Landroid/os/Handler;

.field private final mInputProperties:Lcom/lifevibes/trimapp/util/MediaShare$MediaShareProperties;

.field private mIsActivityFinishing:Z

.field private mIsConfigChanged:Z

.field private mIvFullImage:[Landroid/widget/ImageView;

.field private mIvThumbnails:[Landroid/widget/ImageView;

.field private mIvThumbnailsZoom:[Landroid/widget/ImageView;

.field private final mMediaReceiver:Landroid/content/BroadcastReceiver;

.field private mMediaShareApi:Lcom/lifevibes/trimapp/util/MediaShare;

.field private mNumberOfImages:I

.field private mOnTrimmingFile:Ljava/lang/String;

.field private mOverwriteFilename:Z

.field private mPauseButton:Landroid/view/View;

.field private mPlayButton:Landroid/view/View;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPreviewState:I

.field private mProgressDialog:Landroid/app/Dialog;

.field public final mProgressListener:Lcom/lifevibes/trimapp/Trim$ProgressDialogListener;

.field private mProgressPercentFormat:Ljava/text/NumberFormat;

.field private mSaveHandlePosition:I

.field public mSaveLeftBarTime:I

.field public mSaveRightBarTime:I

.field public mSaveUserBarTime:I

.field private mScreenTimeOut:Z

.field private mThumbnailMask:I

.field private mThumbnailOffset:I

.field private mThumbnailTask:Lcom/lifevibes/trimapp/Trim$ThumbnailTask;

.field private mThumbnailTaskUid:J

.field private mTrimButton:Landroid/view/View;

.field private final mTrimmedFiles:[Ljava/lang/String;

.field private mTrimmingDone:Z

.field public final mTrimmingListener:Lcom/lifevibes/trimapp/Trim$TrimmingListener;

.field private mTrimmingSuccess:Z

.field private mUnsupportedShowing:Z

.field private mVideoRotation:I

.field private mVideoView:Landroid/widget/VideoView;

.field private mWindowDisplay:Landroid/view/Display;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 123
    const v0, -0x7fffffff

    sput v0, Lcom/lifevibes/trimapp/Trim;->CURRENT_MODEL_TYPE:I

    .line 124
    const/16 v0, 0x1f

    sput v0, Lcom/lifevibes/trimapp/Trim;->CURRENT_MEDIASHARE_VERSION:I

    .line 128
    sput-boolean v3, Lcom/lifevibes/trimapp/Trim;->SUPPORT_MULT_ORIENTATION:Z

    .line 129
    sput-boolean v4, Lcom/lifevibes/trimapp/Trim;->SUPPORT_VIDEO_ROTATION:Z

    .line 172
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\\"

    aput-object v1, v0, v3

    const-string v1, "/"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, ":"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "*"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "?"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\""

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "<"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, ">"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "|"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, ";"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\n"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lifevibes/trimapp/Trim;->mInvalidFileNameChar:[Ljava/lang/String;

    .line 1303
    sput v3, Lcom/lifevibes/trimapp/Trim;->mActionWaitWatcherPlay:I

    .line 1985
    sput v3, Lcom/lifevibes/trimapp/Trim;->mActionWaitWatcherTrim:I

    .line 2100
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_data"

    aput-object v1, v0, v3

    sput-object v0, Lcom/lifevibes/trimapp/Trim;->MEDIA_VIDEO_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 107
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 197
    const/16 v0, 0x64

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/lifevibes/trimapp/Trim;->mTrimmedFiles:[Ljava/lang/String;

    .line 199
    new-instance v0, Lcom/lifevibes/trimapp/util/MediaShare$MediaShareProperties;

    invoke-direct {v0}, Lcom/lifevibes/trimapp/util/MediaShare$MediaShareProperties;-><init>()V

    iput-object v0, p0, Lcom/lifevibes/trimapp/Trim;->mInputProperties:Lcom/lifevibes/trimapp/util/MediaShare$MediaShareProperties;

    .line 200
    new-instance v0, Lcom/lifevibes/trimapp/Trim$TrimmingListener;

    invoke-direct {v0, p0}, Lcom/lifevibes/trimapp/Trim$TrimmingListener;-><init>(Lcom/lifevibes/trimapp/Trim;)V

    iput-object v0, p0, Lcom/lifevibes/trimapp/Trim;->mTrimmingListener:Lcom/lifevibes/trimapp/Trim$TrimmingListener;

    .line 201
    new-instance v0, Lcom/lifevibes/trimapp/Trim$ProgressDialogListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lifevibes/trimapp/Trim$ProgressDialogListener;-><init>(Lcom/lifevibes/trimapp/Trim;Lcom/lifevibes/trimapp/Trim$1;)V

    iput-object v0, p0, Lcom/lifevibes/trimapp/Trim;->mProgressListener:Lcom/lifevibes/trimapp/Trim$ProgressDialogListener;

    .line 224
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lifevibes/trimapp/Trim;->mUnsupportedShowing:Z

    .line 244
    new-instance v0, Lcom/lifevibes/trimapp/Trim$1;

    invoke-direct {v0, p0}, Lcom/lifevibes/trimapp/Trim$1;-><init>(Lcom/lifevibes/trimapp/Trim;)V

    iput-object v0, p0, Lcom/lifevibes/trimapp/Trim;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    .line 311
    new-instance v0, Lcom/lifevibes/trimapp/Trim$2;

    invoke-direct {v0, p0}, Lcom/lifevibes/trimapp/Trim$2;-><init>(Lcom/lifevibes/trimapp/Trim;)V

    iput-object v0, p0, Lcom/lifevibes/trimapp/Trim;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 1136
    new-instance v0, Lcom/lifevibes/trimapp/Trim$6;

    invoke-direct {v0, p0}, Lcom/lifevibes/trimapp/Trim$6;-><init>(Lcom/lifevibes/trimapp/Trim;)V

    iput-object v0, p0, Lcom/lifevibes/trimapp/Trim;->mActionHandler:Landroid/os/Handler;

    .line 1160
    new-instance v0, Lcom/lifevibes/trimapp/Trim$7;

    invoke-direct {v0, p0}, Lcom/lifevibes/trimapp/Trim$7;-><init>(Lcom/lifevibes/trimapp/Trim;)V

    iput-object v0, p0, Lcom/lifevibes/trimapp/Trim;->mHandler:Landroid/os/Handler;

    .line 1494
    return-void
.end method

.method static synthetic access$100(Lcom/lifevibes/trimapp/Trim;)[Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim;->mTrimmedFiles:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/lifevibes/trimapp/Trim;)[Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim;->mIvThumbnails:[Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/lifevibes/trimapp/Trim;)Lcom/lifevibes/trimapp/Trim$ThumbnailTask;
    .registers 2
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim;->mThumbnailTask:Lcom/lifevibes/trimapp/Trim$ThumbnailTask;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/lifevibes/trimapp/Trim;Lcom/lifevibes/trimapp/Trim$ThumbnailTask;)Lcom/lifevibes/trimapp/Trim$ThumbnailTask;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/lifevibes/trimapp/Trim;->mThumbnailTask:Lcom/lifevibes/trimapp/Trim$ThumbnailTask;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/lifevibes/trimapp/Trim;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 107
    iget v0, p0, Lcom/lifevibes/trimapp/Trim;->mThumbnailMask:I

    return v0
.end method

.method static synthetic access$1272(Lcom/lifevibes/trimapp/Trim;I)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    iget v0, p0, Lcom/lifevibes/trimapp/Trim;->mThumbnailMask:I

    and-int/2addr v0, p1

    iput v0, p0, Lcom/lifevibes/trimapp/Trim;->mThumbnailMask:I

    return v0
.end method

.method static synthetic access$1300(Lcom/lifevibes/trimapp/Trim;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 107
    iget v0, p0, Lcom/lifevibes/trimapp/Trim;->mThumbnailOffset:I

    return v0
.end method

.method static synthetic access$1302(Lcom/lifevibes/trimapp/Trim;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    iput p1, p0, Lcom/lifevibes/trimapp/Trim;->mThumbnailOffset:I

    return p1
.end method

.method static synthetic access$1400(Lcom/lifevibes/trimapp/Trim;)Lcom/lifevibes/trimapp/util/MediaShare;
    .registers 2
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim;->mMediaShareApi:Lcom/lifevibes/trimapp/util/MediaShare;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/lifevibes/trimapp/Trim;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/lifevibes/trimapp/Trim;->mDragging:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/lifevibes/trimapp/Trim;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/lifevibes/trimapp/Trim;->mDragging:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/lifevibes/trimapp/Trim;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/lifevibes/trimapp/Trim;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/lifevibes/trimapp/Trim;->setVideoProgress()I

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/lifevibes/trimapp/Trim;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/lifevibes/trimapp/Trim;->mIsActivityFinishing:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/lifevibes/trimapp/Trim;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/lifevibes/trimapp/Trim;->mTrimmingDone:Z

    return p1
.end method

.method static synthetic access$200(Lcom/lifevibes/trimapp/Trim;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 107
    iget v0, p0, Lcom/lifevibes/trimapp/Trim;->mFileCount:I

    return v0
.end method

.method static synthetic access$2000(Lcom/lifevibes/trimapp/Trim;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/lifevibes/trimapp/Trim;->mTrimmingSuccess:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/lifevibes/trimapp/Trim;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/lifevibes/trimapp/Trim;->mTrimmingSuccess:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/lifevibes/trimapp/Trim;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim;->mOnTrimmingFile:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$212(Lcom/lifevibes/trimapp/Trim;I)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    iget v0, p0, Lcom/lifevibes/trimapp/Trim;->mFileCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/lifevibes/trimapp/Trim;->mFileCount:I

    return v0
.end method

.method static synthetic access$2200(Lcom/lifevibes/trimapp/Trim;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/lifevibes/trimapp/Trim;->mOverwriteFilename:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/lifevibes/trimapp/Trim;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/lifevibes/trimapp/Trim;->releaseTrimming()V

    return-void
.end method

.method static synthetic access$2400(Lcom/lifevibes/trimapp/Trim;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/lifevibes/trimapp/Trim;->stopTrimming(I)V

    return-void
.end method

.method static synthetic access$2500(Lcom/lifevibes/trimapp/Trim;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/lifevibes/trimapp/Trim;->releaseVideoPlayer()V

    return-void
.end method

.method static synthetic access$2600(Lcom/lifevibes/trimapp/Trim;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 107
    iget v0, p0, Lcom/lifevibes/trimapp/Trim;->mSaveHandlePosition:I

    return v0
.end method

.method static synthetic access$2602(Lcom/lifevibes/trimapp/Trim;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    iput p1, p0, Lcom/lifevibes/trimapp/Trim;->mSaveHandlePosition:I

    return p1
.end method

.method static synthetic access$2700(Lcom/lifevibes/trimapp/Trim;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/lifevibes/trimapp/Trim;->mIsConfigChanged:Z

    return v0
.end method

.method static synthetic access$2800(Lcom/lifevibes/trimapp/Trim;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/lifevibes/trimapp/Trim;->doTrimmingAction()V

    return-void
.end method

.method static synthetic access$2900(Lcom/lifevibes/trimapp/Trim;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 107
    iget v0, p0, Lcom/lifevibes/trimapp/Trim;->mCurrentDecoderUser:I

    return v0
.end method

.method static synthetic access$2972(Lcom/lifevibes/trimapp/Trim;I)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    iget v0, p0, Lcom/lifevibes/trimapp/Trim;->mCurrentDecoderUser:I

    and-int/2addr v0, p1

    iput v0, p0, Lcom/lifevibes/trimapp/Trim;->mCurrentDecoderUser:I

    return v0
.end method

.method static synthetic access$2976(Lcom/lifevibes/trimapp/Trim;I)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    iget v0, p0, Lcom/lifevibes/trimapp/Trim;->mCurrentDecoderUser:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/lifevibes/trimapp/Trim;->mCurrentDecoderUser:I

    return v0
.end method

.method static synthetic access$300(Lcom/lifevibes/trimapp/Trim;)Landroid/widget/VideoView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim;->mVideoView:Landroid/widget/VideoView;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/lifevibes/trimapp/Trim;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/lifevibes/trimapp/Trim;->resolveUpdatePlayPauseMessage(I)V

    return-void
.end method

.method static synthetic access$3100(Lcom/lifevibes/trimapp/Trim;)Landroid/os/PowerManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/lifevibes/trimapp/Trim;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim;->mPlayButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/lifevibes/trimapp/Trim;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim;->mTrimButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/lifevibes/trimapp/Trim;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 107
    iget-wide v0, p0, Lcom/lifevibes/trimapp/Trim;->mThumbnailTaskUid:J

    return-wide v0
.end method

.method static synthetic access$3402(Lcom/lifevibes/trimapp/Trim;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    iput-wide p1, p0, Lcom/lifevibes/trimapp/Trim;->mThumbnailTaskUid:J

    return-wide p1
.end method

.method static synthetic access$3500(Lcom/lifevibes/trimapp/Trim;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 107
    iget v0, p0, Lcom/lifevibes/trimapp/Trim;->mVideoRotation:I

    return v0
.end method

.method static synthetic access$3600(Lcom/lifevibes/trimapp/Trim;)[Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim;->mIvFullImage:[Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/lifevibes/trimapp/Trim;)Lcom/lifevibes/trimapp/util/MediaShare$MediaShareProperties;
    .registers 2
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim;->mInputProperties:Lcom/lifevibes/trimapp/util/MediaShare$MediaShareProperties;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lifevibes/trimapp/Trim;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/lifevibes/trimapp/Trim;->doChoiceFilenameAction(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/lifevibes/trimapp/Trim;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/lifevibes/trimapp/Trim;->returnToInvoker()V

    return-void
.end method

.method static synthetic access$600(Lcom/lifevibes/trimapp/Trim;)Lcom/lifevibes/trimapp/widget/DoubleSeekBar;
    .registers 2
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim;->mDoubleSeekBar:Lcom/lifevibes/trimapp/widget/DoubleSeekBar;

    return-object v0
.end method

.method static synthetic access$700(Lcom/lifevibes/trimapp/Trim;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 107
    iget v0, p0, Lcom/lifevibes/trimapp/Trim;->mNumberOfImages:I

    return v0
.end method

.method static synthetic access$800(Lcom/lifevibes/trimapp/Trim;)[Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim;->mIvThumbnailsZoom:[Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/lifevibes/trimapp/Trim;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 107
    iget v0, p0, Lcom/lifevibes/trimapp/Trim;->mPreviewState:I

    return v0
.end method

.method static synthetic access$902(Lcom/lifevibes/trimapp/Trim;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    iput p1, p0, Lcom/lifevibes/trimapp/Trim;->mPreviewState:I

    return p1
.end method

.method private clearThumbnailImage(I)V
    .registers 6
    .parameter "mask"

    .prologue
    const/4 v3, 0x0

    .line 2216
    and-int/lit8 v1, p1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_e

    .line 2217
    iget-object v1, p0, Lcom/lifevibes/trimapp/Trim;->mIvFullImage:[Landroid/widget/ImageView;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2219
    :cond_e
    and-int/lit8 v1, p1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_22

    .line 2220
    const/4 v0, 0x0

    .local v0, i:I
    :goto_14
    iget v1, p0, Lcom/lifevibes/trimapp/Trim;->mNumberOfImages:I

    if-ge v0, v1, :cond_22

    .line 2221
    iget-object v1, p0, Lcom/lifevibes/trimapp/Trim;->mIvThumbnails:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2220
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 2224
    .end local v0           #i:I
    :cond_22
    and-int/lit8 v1, p1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_37

    .line 2225
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_29
    iget v1, p0, Lcom/lifevibes/trimapp/Trim;->mNumberOfImages:I

    if-ge v0, v1, :cond_37

    .line 2226
    iget-object v1, p0, Lcom/lifevibes/trimapp/Trim;->mIvThumbnailsZoom:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2225
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    .line 2229
    .end local v0           #i:I
    :cond_37
    return-void
.end method

.method private computeNewFilename(Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v10, 0x0

    const/4 v9, -0x1

    .line 2104
    .line 2105
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2106
    const-string v0, "_data LIKE \'"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/mnt/sdcard/Output/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2108
    const-string v0, "_%.3gp\'"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2110
    invoke-virtual {p0}, Lcom/lifevibes/trimapp/Trim;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/lifevibes/trimapp/Trim;->MEDIA_VIDEO_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "_data ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2113
    const/16 v0, 0x3e8

    new-array v2, v0, [I

    .line 2116
    if-eqz v1, :cond_8e

    .line 2117
    :cond_41
    :goto_41
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_8b

    .line 2119
    const/4 v0, 0x0

    :try_start_48
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/mnt/sdcard/Output/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/lifevibes/trimapp/Trim;->getFileTitleNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2120
    if-eqz v0, :cond_41

    .line 2121
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2122
    const/4 v3, -0x1

    aput v3, v2, v0
    :try_end_6c
    .catch Ljava/lang/NumberFormatException; {:try_start_48 .. :try_end_6c} :catch_6d

    goto :goto_41

    .line 2124
    :catch_6d
    move-exception v0

    .line 2125
    const-string v3, "TrimApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Integer.parseInt()\n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_41

    .line 2129
    :cond_8b
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2131
    :cond_8e
    array-length v3, v2

    move v1, v6

    .line 2132
    :goto_90
    if-ge v1, v3, :cond_cb

    .line 2133
    aget v0, v2, v1

    if-eq v9, v0, :cond_cc

    .line 2134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "_"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "%03d"

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2135
    new-instance v5, Ljava/io/File;

    invoke-static {v0}, Lcom/lifevibes/trimapp/util/Storage;->getOutputFullPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2136
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_cc

    move-object v4, v0

    .line 2142
    :cond_cb
    return-object v4

    .line 2132
    :cond_cc
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_90
.end method

.method private doChoiceFilenameAction(I)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1886
    packed-switch p1, :pswitch_data_8c

    .line 1916
    :cond_5
    :goto_5
    return-void

    .line 1889
    :pswitch_6
    invoke-direct {p0, v4}, Lcom/lifevibes/trimapp/Trim;->isLowMemory(Z)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1893
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim;->mTrimmedFiles:[Ljava/lang/String;

    iget v1, p0, Lcom/lifevibes/trimapp/Trim;->mFileCount:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/lifevibes/trimapp/Trim;->mTrimmedFiles:[Ljava/lang/String;

    iget v2, p0, Lcom/lifevibes/trimapp/Trim;->mFileCount:I

    aget-object v1, v1, v2

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1894
    iput-boolean v4, p0, Lcom/lifevibes/trimapp/Trim;->mOverwriteFilename:Z

    .line 1895
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "trimmed_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/lifevibes/trimapp/Trim;->requestTrimming(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 1899
    :pswitch_56
    invoke-direct {p0, v3}, Lcom/lifevibes/trimapp/Trim;->isLowMemory(Z)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1903
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim;->mTrimmedFiles:[Ljava/lang/String;

    aget-object v0, v0, v3

    invoke-static {v0}, Lcom/lifevibes/trimapp/Trim;->getFileTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1904
    const-string v1, ".3gp"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    rsub-int/lit8 v1, v1, 0x32

    .line 1905
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    if-le v2, v1, :cond_7a

    .line 1906
    add-int/lit8 v1, v1, -0x4

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1908
    :cond_7a
    invoke-direct {p0, v0}, Lcom/lifevibes/trimapp/Trim;->computeNewFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1909
    if-nez v0, :cond_84

    .line 1910
    invoke-direct {p0}, Lcom/lifevibes/trimapp/Trim;->prepareTrimming()V

    goto :goto_5

    .line 1912
    :cond_84
    const-string v1, "/mnt/sdcard/Output/"

    invoke-virtual {p0, v1, v0}, Lcom/lifevibes/trimapp/Trim;->requestTrimming(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1886
    nop

    :pswitch_data_8c
    .packed-switch 0x0
        :pswitch_6
        :pswitch_56
    .end packed-switch
.end method

.method private doTrimmingAction()V
    .registers 8

    .prologue
    const/16 v2, 0x7d1

    const/4 v4, 0x1

    const v6, -0x7ffffffc

    const/4 v3, 0x0

    .line 1989
    iget v0, p0, Lcom/lifevibes/trimapp/Trim;->mCurrentDecoderUser:I

    and-int/lit8 v0, v0, 0x1

    if-eq v0, v4, :cond_14

    iget v0, p0, Lcom/lifevibes/trimapp/Trim;->mCurrentDecoderUser:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_46

    .line 1991
    :cond_14
    sget v0, Lcom/lifevibes/trimapp/Trim;->mActionWaitWatcherTrim:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_2b

    .line 1993
    const-string v0, "TrimApp"

    const-string v1, "decoder is inused too long. it\'s unexpected!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1994
    const v0, 0x7f070016

    invoke-virtual {p0, v0, v3}, Lcom/lifevibes/trimapp/Trim;->showToast(II)V

    .line 1995
    invoke-direct {p0}, Lcom/lifevibes/trimapp/Trim;->returnToInvoker()V

    .line 2037
    :cond_2a
    :goto_2a
    return-void

    .line 1998
    :cond_2b
    sget v0, Lcom/lifevibes/trimapp/Trim;->mActionWaitWatcherTrim:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/lifevibes/trimapp/Trim;->mActionWaitWatcherTrim:I

    .line 2000
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim;->mActionHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2001
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim;->mActionHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 2002
    iput v2, v0, Landroid/os/Message;->what:I

    .line 2003
    iget-object v1, p0, Lcom/lifevibes/trimapp/Trim;->mActionHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_2a

    .line 2007
    :cond_46
    sput v3, Lcom/lifevibes/trimapp/Trim;->mActionWaitWatcherTrim:I

    .line 2009
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim;->mProgressDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 2014
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim;->mTrimmedFiles:[Ljava/lang/String;

    iget v1, p0, Lcom/lifevibes/trimapp/Trim;->mFileCount:I

    aget-object v1, v0, v1

    .line 2015
    iget-object v2, p0, Lcom/lifevibes/trimapp/Trim;->mOnTrimmingFile:Ljava/lang/String;

    .line 2017
    iget v0, p0, Lcom/lifevibes/trimapp/Trim;->mCurrentDecoderUser:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/lifevibes/trimapp/Trim;->mCurrentDecoderUser:I

    .line 2020
    iput-boolean v3, p0, Lcom/lifevibes/trimapp/Trim;->mTrimmingSuccess:Z

    .line 2023
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim;->mMediaShareApi:Lcom/lifevibes/trimapp/util/MediaShare;

    iget-object v3, p0, Lcom/lifevibes/trimapp/Trim;->mDoubleSeekBar:Lcom/lifevibes/trimapp/widget/DoubleSeekBar;

    invoke-virtual {v3, v4}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->getTimeMillis(I)I

    move-result v3

    iget-object v4, p0, Lcom/lifevibes/trimapp/Trim;->mDoubleSeekBar:Lcom/lifevibes/trimapp/widget/DoubleSeekBar;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->getTimeMillis(I)I

    move-result v4

    iget-object v5, p0, Lcom/lifevibes/trimapp/Trim;->mTrimmingListener:Lcom/lifevibes/trimapp/Trim$TrimmingListener;

    invoke-virtual/range {v0 .. v5}, Lcom/lifevibes/trimapp/util/MediaShare;->startTrimming(Ljava/lang/String;Ljava/lang/String;IILcom/lifevibes/trimapp/util/MediaShare$MediaShareListener;)I

    move-result v0

    .line 2027
    if-eqz v0, :cond_2a

    .line 2028
    if-ne v0, v6, :cond_84

    .line 2029
    const v0, 0x7f07000e

    invoke-direct {p0, v0}, Lcom/lifevibes/trimapp/Trim;->stopTrimming(I)V

    goto :goto_2a

    .line 2030
    :cond_84
    if-ne v0, v6, :cond_8d

    .line 2031
    const v0, 0x7f070011

    invoke-direct {p0, v0}, Lcom/lifevibes/trimapp/Trim;->stopTrimming(I)V

    goto :goto_2a

    .line 2033
    :cond_8d
    const v0, 0x7f07001b

    invoke-direct {p0, v0}, Lcom/lifevibes/trimapp/Trim;->stopTrimming(I)V

    goto :goto_2a
.end method

.method private getEditTextFilter()[Landroid/text/InputFilter;
    .registers 5

    .prologue
    .line 2049
    const/4 v1, 0x2

    new-array v0, v1, [Landroid/text/InputFilter;

    .line 2050
    .local v0, FilterArray:[Landroid/text/InputFilter;
    const/4 v1, 0x0

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0x32

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v1

    .line 2051
    const/4 v1, 0x1

    new-instance v2, Lcom/lifevibes/trimapp/Trim$8;

    invoke-direct {v2, p0}, Lcom/lifevibes/trimapp/Trim$8;-><init>(Lcom/lifevibes/trimapp/Trim;)V

    aput-object v2, v0, v1

    .line 2065
    return-object v0
.end method

.method public static getFileTitle(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "path"

    .prologue
    .line 2070
    const/16 v2, 0x2f

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 2071
    .local v1, lastSlash:I
    if-ltz v1, :cond_14

    .line 2072
    add-int/lit8 v1, v1, 0x1

    .line 2073
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_14

    .line 2074
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 2078
    :cond_14
    const/16 v2, 0x2e

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 2079
    .local v0, lastDot:I
    if-lez v0, :cond_21

    .line 2080
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 2082
    :cond_21
    return-object p0
.end method

.method public static getFileTitleNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 2086
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    const-string v1, ".3gp"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    .line 2087
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v0, :cond_35

    .line 2088
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 2089
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 2090
    const/4 v2, 0x4

    if-ne v1, v2, :cond_35

    .line 2091
    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2092
    const-string v1, "_"

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 2093
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 2097
    :goto_34
    return-object v0

    :cond_35
    const/4 v0, 0x0

    goto :goto_34
.end method

.method private isLowMemory(Z)Z
    .registers 8
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1428
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim;->mInputProperties:Lcom/lifevibes/trimapp/util/MediaShare$MediaShareProperties;

    iget v0, v0, Lcom/lifevibes/trimapp/util/MediaShare$MediaShareProperties;->mDurationMillis:I

    .line 1429
    iget-object v3, p0, Lcom/lifevibes/trimapp/Trim;->mDoubleSeekBar:Lcom/lifevibes/trimapp/widget/DoubleSeekBar;

    invoke-virtual {v3, v1}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->getTimeMillis(I)I

    move-result v3

    .line 1430
    iget-object v4, p0, Lcom/lifevibes/trimapp/Trim;->mDoubleSeekBar:Lcom/lifevibes/trimapp/widget/DoubleSeekBar;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->getTimeMillis(I)I

    move-result v4

    .line 1433
    sub-int v3, v4, v3

    int-to-float v3, v3

    int-to-float v0, v0

    div-float v0, v3, v0

    .line 1434
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/lifevibes/trimapp/Trim;->mTrimmedFiles:[Ljava/lang/String;

    iget v5, p0, Lcom/lifevibes/trimapp/Trim;->mFileCount:I

    aget-object v4, v4, v5

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1435
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 1436
    long-to-float v4, v4

    mul-float/2addr v0, v4

    float-to-long v4, v0

    .line 1438
    const-string v0, "/mnt/sdcard/Output/"

    .line 1439
    if-eqz p1, :cond_33

    .line 1440
    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    .line 1442
    :cond_33
    invoke-static {v4, v5, v0}, Lcom/lifevibes/trimapp/util/Storage;->isLowMemory(JLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 1443
    const-string v0, "TrimApp"

    const-string v3, "Low memory on the storage"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1444
    const v0, 0x7f070015

    invoke-virtual {p0, v0, v2}, Lcom/lifevibes/trimapp/Trim;->showToast(II)V

    move v0, v1

    .line 1447
    :goto_47
    return v0

    :cond_48
    move v0, v2

    goto :goto_47
.end method

.method private isVideoPlaying()Z
    .registers 6

    .prologue
    .line 1407
    const/4 v0, 0x0

    .line 1409
    iget-object v1, p0, Lcom/lifevibes/trimapp/Trim;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 1411
    :try_start_9
    iget-object v1, p0, Lcom/lifevibes/trimapp/Trim;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->isPlaying()Z
    :try_end_e
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_e} :catch_10

    move-result v0

    .line 1416
    :cond_f
    :goto_f
    return v0

    .line 1412
    :catch_10
    move-exception v1

    .line 1413
    const-string v2, "TrimApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isPlaying()\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method

.method private prepareTrimming()V
    .registers 10

    .prologue
    const/4 v8, 0x5

    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1861
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/lifevibes/trimapp/Trim;->mTrimmedFiles:[Ljava/lang/String;

    aget-object v1, v1, v6

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1862
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1863
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    invoke-virtual {v0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1864
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 1865
    const-string v2, "-trim-%02d-%02d-%02d-%02d-%02d"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    const/16 v4, 0xb

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const/4 v4, 0x3

    const/16 v5, 0xc

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const/16 v5, 0xd

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1872
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 1873
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    .line 1874
    const-string v4, ".3gp"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    rsub-int/lit8 v4, v4, 0x32

    .line 1875
    add-int/2addr v2, v3

    if-le v2, v4, :cond_7c

    .line 1876
    sub-int v2, v4, v3

    invoke-virtual {v0, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1879
    :cond_7c
    invoke-virtual {p0, v7}, Lcom/lifevibes/trimapp/Trim;->showDialog(I)V

    .line 1880
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1881
    iget-object v1, p0, Lcom/lifevibes/trimapp/Trim;->mEditTextName:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1882
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim;->mEditTextName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    .line 1883
    return-void
.end method

.method private releaseDecoderInuse(I)V
    .registers 4
    .parameter "exceptMask"

    .prologue
    .line 1243
    const/4 v1, 0x1

    if-eq v1, p1, :cond_6

    .line 1246
    invoke-direct {p0}, Lcom/lifevibes/trimapp/Trim;->releaseThumbnailTask()V

    .line 1248
    :cond_6
    iget v1, p0, Lcom/lifevibes/trimapp/Trim;->mCurrentDecoderUser:I

    and-int/lit8 v0, v1, 0x2

    .line 1249
    .local v0, mask:I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_12

    if-eq v0, p1, :cond_12

    .line 1250
    invoke-direct {p0}, Lcom/lifevibes/trimapp/Trim;->releaseTrimming()V

    .line 1252
    :cond_12
    iget v1, p0, Lcom/lifevibes/trimapp/Trim;->mCurrentDecoderUser:I

    and-int/lit8 v0, v1, 0x4

    .line 1253
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1e

    if-eq v0, p1, :cond_1e

    .line 1254
    invoke-direct {p0}, Lcom/lifevibes/trimapp/Trim;->releaseVideoPlayer()V

    .line 1256
    :cond_1e
    return-void
.end method

.method private releaseDecoderInuseAndWait()V
    .registers 4

    .prologue
    .line 1227
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/lifevibes/trimapp/Trim;->releaseDecoderInuse(I)V

    .line 1229
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    const/16 v1, 0x32

    if-ge v0, v1, :cond_d

    .line 1230
    iget v1, p0, Lcom/lifevibes/trimapp/Trim;->mCurrentDecoderUser:I

    if-nez v1, :cond_e

    .line 1240
    :cond_d
    return-void

    .line 1234
    :cond_e
    const-wide/16 v1, 0x64

    :try_start_10
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_13
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_13} :catch_16

    .line 1229
    :goto_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1235
    :catch_16
    move-exception v1

    goto :goto_13
.end method

.method private releaseThumbnailTask()V
    .registers 3

    .prologue
    .line 1260
    const/4 v0, 0x0

    iput v0, p0, Lcom/lifevibes/trimapp/Trim;->mThumbnailMask:I

    .line 1261
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lifevibes/trimapp/Trim;->mThumbnailTaskUid:J

    .line 1267
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim;->mThumbnailTask:Lcom/lifevibes/trimapp/Trim$ThumbnailTask;

    if-eqz v0, :cond_19

    .line 1268
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim;->mThumbnailTask:Lcom/lifevibes/trimapp/Trim$ThumbnailTask;

    invoke-virtual {v0}, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_19

    .line 1269
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim;->mThumbnailTask:Lcom/lifevibes/trimapp/Trim$ThumbnailTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->cancel(Z)Z

    .line 1272
    :cond_19
    return-void
.end method

.method private releaseTrimming()V
    .registers 2

    .prologue
    .line 1276
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim;->mMediaShareApi:Lcom/lifevibes/trimapp/util/MediaShare;

    invoke-virtual {v0}, Lcom/lifevibes/trimapp/util/MediaShare;->releaseTrimming()Z

    .line 1278
    iget v0, p0, Lcom/lifevibes/trimapp/Trim;->mCurrentDecoderUser:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/lifevibes/trimapp/Trim;->mCurrentDecoderUser:I

    .line 1279
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim;->mProgressDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1280
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1282
    :cond_1c
    return-void
.end method

.method private releaseVideoPlayer()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1286
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1287
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1288
    invoke-direct {p0}, Lcom/lifevibes/trimapp/Trim;->isVideoPlaying()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1289
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 1291
    :cond_1a
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/lifevibes/trimapp/Trim;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 1292
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 1293
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, v2}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 1294
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, v2}, Landroid/widget/VideoView;->setTag(Ljava/lang/Object;)V

    .line 1295
    iget v0, p0, Lcom/lifevibes/trimapp/Trim;->mCurrentDecoderUser:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/lifevibes/trimapp/Trim;->mCurrentDecoderUser:I

    .line 1297
    const/16 v0, 0x66

    invoke-direct {p0, v0}, Lcom/lifevibes/trimapp/Trim;->resolveUpdatePlayPauseMessage(I)V

    .line 1298
    return-void
.end method

.method private resolveUpdatePlayPauseMessage(I)V
    .registers 5
    .parameter "arg1"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1208
    const/16 v0, 0x64

    if-ne p1, v0, :cond_10

    .line 1210
    invoke-virtual {p0, v2}, Lcom/lifevibes/trimapp/Trim;->setVideoViewVisibility(Z)V

    .line 1211
    invoke-virtual {p0, v2}, Lcom/lifevibes/trimapp/Trim;->updatePlayPauseButton(Z)V

    .line 1220
    :goto_c
    invoke-virtual {p0}, Lcom/lifevibes/trimapp/Trim;->updateButtonsEnabled()V

    .line 1221
    return-void

    .line 1212
    :cond_10
    const/16 v0, 0x65

    if-ne p1, v0, :cond_18

    .line 1214
    invoke-virtual {p0, v1}, Lcom/lifevibes/trimapp/Trim;->updatePlayPauseButton(Z)V

    goto :goto_c

    .line 1217
    :cond_18
    invoke-virtual {p0, v1}, Lcom/lifevibes/trimapp/Trim;->setVideoViewVisibility(Z)V

    .line 1218
    invoke-virtual {p0, v1}, Lcom/lifevibes/trimapp/Trim;->updatePlayPauseButton(Z)V

    goto :goto_c
.end method

.method private returnToInvoker()V
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 804
    const-string v0, "TrimApp"

    const-string v3, "**** finish()"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    iget-boolean v0, p0, Lcom/lifevibes/trimapp/Trim;->mTrimmingDone:Z

    if-eqz v0, :cond_5f

    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim;->mTrimmedFiles:[Ljava/lang/String;

    aget-object v0, v0, v2

    iget-object v3, p0, Lcom/lifevibes/trimapp/Trim;->mTrimmedFiles:[Ljava/lang/String;

    iget v4, p0, Lcom/lifevibes/trimapp/Trim;->mFileCount:I

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5f

    move v0, v1

    .line 811
    :goto_1e
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 812
    iget-boolean v4, p0, Lcom/lifevibes/trimapp/Trim;->mTrimmingDone:Z

    if-eqz v4, :cond_5b

    .line 813
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/lifevibes/trimapp/Trim;->mTrimmedFiles:[Ljava/lang/String;

    iget v5, p0, Lcom/lifevibes/trimapp/Trim;->mFileCount:I

    aget-object v4, v4, v5

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 814
    if-eqz v0, :cond_40

    .line 815
    const-string v2, "overwrite"

    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 817
    :cond_40
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v3}, Lcom/lifevibes/trimapp/Trim;->setResult(ILandroid/content/Intent;)V

    .line 823
    :goto_44
    new-instance v2, Landroid/content/Intent;

    const-string v3, "intent.action.TRIMAPP_RESULT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 824
    if-eqz v0, :cond_52

    .line 825
    const-string v3, "overwrite"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 827
    :cond_52
    invoke-virtual {p0, v2}, Lcom/lifevibes/trimapp/Trim;->sendBroadcast(Landroid/content/Intent;)V

    .line 829
    iput-boolean v1, p0, Lcom/lifevibes/trimapp/Trim;->mIsActivityFinishing:Z

    .line 830
    invoke-virtual {p0}, Lcom/lifevibes/trimapp/Trim;->finish()V

    .line 831
    return-void

    .line 819
    :cond_5b
    invoke-virtual {p0, v2, v3}, Lcom/lifevibes/trimapp/Trim;->setResult(ILandroid/content/Intent;)V

    goto :goto_44

    :cond_5f
    move v0, v2

    goto :goto_1e
.end method

.method private setTargetProject(I)I
    .registers 4
    .parameter "ver"

    .prologue
    .line 227
    packed-switch p1, :pswitch_data_2e

    .line 238
    invoke-direct {p0}, Lcom/lifevibes/trimapp/Trim;->returnToInvoker()V

    .line 239
    const-string v0, "TrimApp"

    const-string v1, "Model version error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    const/4 v0, 0x0

    :goto_e
    return v0

    .line 229
    :pswitch_f
    invoke-virtual {p0}, Lcom/lifevibes/trimapp/Trim;->isXHDPI()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 230
    const v0, -0x7ffffffe

    goto :goto_e

    .line 232
    :cond_19
    const v0, -0x7fffffff

    goto :goto_e

    .line 233
    :pswitch_1d
    const v0, -0x7ffffffd

    goto :goto_e

    .line 234
    :pswitch_21
    const v0, 0x40000002

    goto :goto_e

    .line 235
    :pswitch_25
    const v0, 0x40000001

    goto :goto_e

    .line 236
    :pswitch_29
    const v0, 0x40000003

    goto :goto_e

    .line 227
    nop

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_f
        :pswitch_1d
        :pswitch_21
        :pswitch_25
        :pswitch_29
    .end packed-switch
.end method

.method private setVideoProgress()I
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 1115
    iget-object v3, p0, Lcom/lifevibes/trimapp/Trim;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v3}, Landroid/widget/VideoView;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_d

    iget-boolean v3, p0, Lcom/lifevibes/trimapp/Trim;->mDragging:Z

    if-eqz v3, :cond_f

    :cond_d
    move v1, v2

    .line 1130
    :cond_e
    :goto_e
    return v1

    .line 1118
    :cond_f
    iget-object v3, p0, Lcom/lifevibes/trimapp/Trim;->mDoubleSeekBar:Lcom/lifevibes/trimapp/widget/DoubleSeekBar;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->getTimeMillis(I)I

    move-result v0

    .line 1119
    .local v0, endPosition:I
    iget-object v3, p0, Lcom/lifevibes/trimapp/Trim;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v3}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v1

    .line 1120
    .local v1, position:I
    iget-object v3, p0, Lcom/lifevibes/trimapp/Trim;->mDoubleSeekBar:Lcom/lifevibes/trimapp/widget/DoubleSeekBar;

    invoke-virtual {v3, v1}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->moveUserHandleTo(I)V

    .line 1121
    if-lt v1, v0, :cond_e

    .line 1122
    invoke-direct {p0}, Lcom/lifevibes/trimapp/Trim;->isVideoPlaying()Z

    move-result v3

    if-eqz v3, :cond_30

    .line 1123
    iput v2, p0, Lcom/lifevibes/trimapp/Trim;->mPreviewState:I

    .line 1124
    iget-object v2, p0, Lcom/lifevibes/trimapp/Trim;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->pause()V

    .line 1126
    :cond_30
    invoke-direct {p0}, Lcom/lifevibes/trimapp/Trim;->releaseVideoPlayer()V

    .line 1127
    iget-object v2, p0, Lcom/lifevibes/trimapp/Trim;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x69

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1128
    const/4 v1, -0x1

    goto :goto_e
.end method

.method private setupUIComponents()V
    .registers 9

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const v4, 0x7f060009

    const/high16 v3, 0x7f06

    .line 2149
    const v0, 0x7f06000c

    invoke-virtual {p0, v0}, Lcom/lifevibes/trimapp/Trim;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lifevibes/trimapp/Trim;->mControlLayout:Landroid/widget/RelativeLayout;

    .line 2150
    const v0, 0x7f06000e

    invoke-virtual {p0, v0}, Lcom/lifevibes/trimapp/Trim;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lifevibes/trimapp/Trim;->mPlayButton:Landroid/view/View;

    .line 2151
    const v0, 0x7f06000f

    invoke-virtual {p0, v0}, Lcom/lifevibes/trimapp/Trim;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lifevibes/trimapp/Trim;->mPauseButton:Landroid/view/View;

    .line 2152
    const v0, 0x7f060010

    invoke-virtual {p0, v0}, Lcom/lifevibes/trimapp/Trim;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lifevibes/trimapp/Trim;->mTrimButton:Landroid/view/View;

    .line 2153
    invoke-virtual {p0, v4}, Lcom/lifevibes/trimapp/Trim;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 2155
    const v1, 0x7f060011

    invoke-virtual {p0, v1}, Lcom/lifevibes/trimapp/Trim;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;

    iput-object v1, p0, Lcom/lifevibes/trimapp/Trim;->mDoubleSeekBar:Lcom/lifevibes/trimapp/widget/DoubleSeekBar;

    .line 2156
    new-instance v1, Lcom/lifevibes/trimapp/Trim$DoubleSeekBarListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/lifevibes/trimapp/Trim$DoubleSeekBarListener;-><init>(Lcom/lifevibes/trimapp/Trim;Lcom/lifevibes/trimapp/Trim$1;)V

    .line 2157
    iget-object v2, p0, Lcom/lifevibes/trimapp/Trim;->mDoubleSeekBar:Lcom/lifevibes/trimapp/widget/DoubleSeekBar;

    invoke-virtual {v2, v1}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->setOnDoubleSeekBarListener(Lcom/lifevibes/trimapp/widget/DoubleSeekBar$OnDoubleSeekBarListener;)V

    .line 2159
    const v1, 0x7f06000a

    invoke-virtual {p0, v1}, Lcom/lifevibes/trimapp/Trim;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/VideoView;

    iput-object v1, p0, Lcom/lifevibes/trimapp/Trim;->mVideoView:Landroid/widget/VideoView;

    .line 2160
    iget-object v1, p0, Lcom/lifevibes/trimapp/Trim;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1, v5}, Landroid/widget/VideoView;->setFocusable(Z)V

    .line 2161
    iget-object v1, p0, Lcom/lifevibes/trimapp/Trim;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1, v5}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 2164
    new-instance v1, Lcom/lifevibes/trimapp/Trim$VideoViewListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/lifevibes/trimapp/Trim$VideoViewListener;-><init>(Lcom/lifevibes/trimapp/Trim;Lcom/lifevibes/trimapp/Trim$1;)V

    .line 2165
    iget-object v2, p0, Lcom/lifevibes/trimapp/Trim;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v2, v1}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 2166
    iget-object v2, p0, Lcom/lifevibes/trimapp/Trim;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v2, v1}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 2167
    iget-object v2, p0, Lcom/lifevibes/trimapp/Trim;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v2, v1}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 2170
    sget v1, Lcom/lifevibes/trimapp/Trim;->CURRENT_MODEL_TYPE:I

    const/high16 v2, -0x8000

    and-int/2addr v1, v2

    if-eqz v1, :cond_ac

    .line 2171
    iget-object v1, p0, Lcom/lifevibes/trimapp/Trim;->mDoubleSeekBar:Lcom/lifevibes/trimapp/widget/DoubleSeekBar;

    const v2, 0x7f06000e

    invoke-virtual {v1, v6, v2}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->setNextFocusDownId(II)V

    .line 2172
    iget-object v1, p0, Lcom/lifevibes/trimapp/Trim;->mDoubleSeekBar:Lcom/lifevibes/trimapp/widget/DoubleSeekBar;

    invoke-virtual {v1, v7, v4}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->setNextFocusDownId(II)V

    .line 2173
    iget-object v1, p0, Lcom/lifevibes/trimapp/Trim;->mTrimButton:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setNextFocusUpId(I)V

    .line 2174
    iget-object v1, p0, Lcom/lifevibes/trimapp/Trim;->mPlayButton:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setNextFocusUpId(I)V

    .line 2175
    iget-object v1, p0, Lcom/lifevibes/trimapp/Trim;->mPauseButton:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setNextFocusUpId(I)V

    .line 2176
    const v1, 0x7f060001

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setNextFocusUpId(I)V

    .line 2189
    :goto_9d
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim;->mDoubleSeekBar:Lcom/lifevibes/trimapp/widget/DoubleSeekBar;

    iget-object v1, p0, Lcom/lifevibes/trimapp/Trim;->mWindowDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->getDisplayedNumberOfImages(I)I

    move-result v0

    iput v0, p0, Lcom/lifevibes/trimapp/Trim;->mNumberOfImages:I

    .line 2190
    return-void

    .line 2177
    :cond_ac
    sget v1, Lcom/lifevibes/trimapp/Trim;->CURRENT_MODEL_TYPE:I

    const/high16 v2, 0x4000

    and-int/2addr v1, v2

    if-eqz v1, :cond_d6

    .line 2178
    iget-object v1, p0, Lcom/lifevibes/trimapp/Trim;->mDoubleSeekBar:Lcom/lifevibes/trimapp/widget/DoubleSeekBar;

    const v2, 0x7f060010

    invoke-virtual {v1, v6, v2}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->setNextFocusDownId(II)V

    .line 2179
    iget-object v1, p0, Lcom/lifevibes/trimapp/Trim;->mDoubleSeekBar:Lcom/lifevibes/trimapp/widget/DoubleSeekBar;

    invoke-virtual {v1, v7, v4}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->setNextFocusDownId(II)V

    .line 2180
    iget-object v1, p0, Lcom/lifevibes/trimapp/Trim;->mTrimButton:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setNextFocusUpId(I)V

    .line 2181
    iget-object v1, p0, Lcom/lifevibes/trimapp/Trim;->mPlayButton:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setNextFocusUpId(I)V

    .line 2182
    iget-object v1, p0, Lcom/lifevibes/trimapp/Trim;->mPauseButton:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setNextFocusUpId(I)V

    .line 2183
    const v1, 0x7f060001

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setNextFocusUpId(I)V

    goto :goto_9d

    .line 2185
    :cond_d6
    const-string v0, "TrimApp"

    const-string v1, "the current model is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9d
.end method

.method private setupUIImageViews()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    const v5, 0x7f030006

    const/4 v2, 0x0

    .line 2193
    invoke-virtual {p0}, Lcom/lifevibes/trimapp/Trim;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 2196
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lifevibes/trimapp/Trim;->mIvFullImage:[Landroid/widget/ImageView;

    .line 2197
    iget-object v1, p0, Lcom/lifevibes/trimapp/Trim;->mIvFullImage:[Landroid/widget/ImageView;

    const v0, 0x7f06000b

    invoke-virtual {p0, v0}, Lcom/lifevibes/trimapp/Trim;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 2200
    iget v0, p0, Lcom/lifevibes/trimapp/Trim;->mNumberOfImages:I

    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lifevibes/trimapp/Trim;->mIvThumbnails:[Landroid/widget/ImageView;

    .line 2201
    iget v0, p0, Lcom/lifevibes/trimapp/Trim;->mNumberOfImages:I

    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lifevibes/trimapp/Trim;->mIvThumbnailsZoom:[Landroid/widget/ImageView;

    move v1, v2

    .line 2204
    :goto_28
    iget v0, p0, Lcom/lifevibes/trimapp/Trim;->mNumberOfImages:I

    if-ge v1, v0, :cond_3f

    .line 2205
    invoke-virtual {v3, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2206
    iget-object v4, p0, Lcom/lifevibes/trimapp/Trim;->mIvThumbnails:[Landroid/widget/ImageView;

    aput-object v0, v4, v1

    .line 2207
    iget-object v4, p0, Lcom/lifevibes/trimapp/Trim;->mDoubleSeekBar:Lcom/lifevibes/trimapp/widget/DoubleSeekBar;

    invoke-virtual {v4, v0}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->addImageViewToLinear(Landroid/view/View;)V

    .line 2204
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_28

    .line 2209
    :cond_3f
    :goto_3f
    iget v0, p0, Lcom/lifevibes/trimapp/Trim;->mNumberOfImages:I

    if-ge v2, v0, :cond_50

    .line 2210
    invoke-virtual {v3, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2211
    iget-object v1, p0, Lcom/lifevibes/trimapp/Trim;->mIvThumbnailsZoom:[Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 2209
    add-int/lit8 v2, v2, 0x1

    goto :goto_3f

    .line 2213
    :cond_50
    return-void
.end method

.method private stopTrimming(I)V
    .registers 3
    .parameter "resId"

    .prologue
    const/4 v0, 0x0

    .line 2040
    iput-boolean v0, p0, Lcom/lifevibes/trimapp/Trim;->mTrimmingSuccess:Z

    .line 2041
    invoke-direct {p0}, Lcom/lifevibes/trimapp/Trim;->releaseTrimming()V

    .line 2043
    if-eqz p1, :cond_b

    .line 2044
    invoke-virtual {p0, p1, v0}, Lcom/lifevibes/trimapp/Trim;->showToast(II)V

    .line 2046
    :cond_b
    return-void
.end method


# virtual methods
.method public doPauseAction()Z
    .registers 6

    .prologue
    const/16 v4, 0x68

    const/16 v3, 0x67

    const/4 v1, 0x0

    .line 1356
    invoke-direct {p0}, Lcom/lifevibes/trimapp/Trim;->isVideoPlaying()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 1359
    iget-object v2, p0, Lcom/lifevibes/trimapp/Trim;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1360
    iget-object v2, p0, Lcom/lifevibes/trimapp/Trim;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1362
    iput v1, p0, Lcom/lifevibes/trimapp/Trim;->mPreviewState:I

    .line 1363
    iget-object v1, p0, Lcom/lifevibes/trimapp/Trim;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->pause()V

    .line 1364
    iget-object v1, p0, Lcom/lifevibes/trimapp/Trim;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/lifevibes/trimapp/Trim;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 1366
    iget-object v1, p0, Lcom/lifevibes/trimapp/Trim;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1367
    .local v0, msg:Landroid/os/Message;
    iput v4, v0, Landroid/os/Message;->what:I

    .line 1368
    const/16 v1, 0x65

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1369
    iget-object v1, p0, Lcom/lifevibes/trimapp/Trim;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1371
    iget-object v1, p0, Lcom/lifevibes/trimapp/Trim;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1372
    const/4 v1, 0x1

    .line 1374
    .end local v0           #msg:Landroid/os/Message;
    :cond_3a
    return v1
.end method

.method public doPlayPauseAction()V
    .registers 6

    .prologue
    const/16 v4, 0x7d2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1305
    iget v2, p0, Lcom/lifevibes/trimapp/Trim;->mCurrentDecoderUser:I

    and-int/lit8 v2, v2, 0x1

    if-eq v2, v1, :cond_11

    iget v2, p0, Lcom/lifevibes/trimapp/Trim;->mCurrentDecoderUser:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_43

    .line 1307
    :cond_11
    sget v1, Lcom/lifevibes/trimapp/Trim;->mActionWaitWatcherPlay:I

    const/16 v2, 0xa

    if-le v1, v2, :cond_28

    .line 1309
    const-string v1, "TrimApp"

    const-string v2, "decoder is inused too long. it\'s unexpected!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1310
    const v1, 0x7f070016

    invoke-virtual {p0, v1, v0}, Lcom/lifevibes/trimapp/Trim;->showToast(II)V

    .line 1311
    invoke-direct {p0}, Lcom/lifevibes/trimapp/Trim;->returnToInvoker()V

    .line 1353
    :cond_27
    :goto_27
    return-void

    .line 1314
    :cond_28
    sget v0, Lcom/lifevibes/trimapp/Trim;->mActionWaitWatcherPlay:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/lifevibes/trimapp/Trim;->mActionWaitWatcherPlay:I

    .line 1316
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim;->mActionHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1317
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim;->mActionHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1318
    iput v4, v0, Landroid/os/Message;->what:I

    .line 1319
    iget-object v1, p0, Lcom/lifevibes/trimapp/Trim;->mActionHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_27

    .line 1323
    :cond_43
    sput v0, Lcom/lifevibes/trimapp/Trim;->mActionWaitWatcherPlay:I

    .line 1327
    iget-object v2, p0, Lcom/lifevibes/trimapp/Trim;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_73

    .line 1329
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim;->mVideoView:Landroid/widget/VideoView;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/lifevibes/trimapp/Trim;->mTrimmedFiles:[Ljava/lang/String;

    iget v4, p0, Lcom/lifevibes/trimapp/Trim;->mFileCount:I

    aget-object v3, v3, v4

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 1330
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim;->mVideoView:Landroid/widget/VideoView;

    iget-object v2, p0, Lcom/lifevibes/trimapp/Trim;->mTrimmedFiles:[Ljava/lang/String;

    iget v3, p0, Lcom/lifevibes/trimapp/Trim;->mFileCount:I

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/VideoView;->setTag(Ljava/lang/Object;)V

    .line 1332
    iget v0, p0, Lcom/lifevibes/trimapp/Trim;->mCurrentDecoderUser:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/lifevibes/trimapp/Trim;->mCurrentDecoderUser:I

    move v0, v1

    .line 1336
    :cond_73
    invoke-direct {p0}, Lcom/lifevibes/trimapp/Trim;->isVideoPlaying()Z

    move-result v2

    if-eqz v2, :cond_7d

    .line 1337
    invoke-virtual {p0}, Lcom/lifevibes/trimapp/Trim;->doPauseAction()Z

    goto :goto_27

    .line 1340
    :cond_7d
    iput v1, p0, Lcom/lifevibes/trimapp/Trim;->mPreviewState:I

    .line 1341
    iget-object v2, p0, Lcom/lifevibes/trimapp/Trim;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->start()V

    .line 1342
    iget-object v2, p0, Lcom/lifevibes/trimapp/Trim;->mAudioManager:Landroid/media/AudioManager;

    iget-object v3, p0, Lcom/lifevibes/trimapp/Trim;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 1345
    if-nez v0, :cond_27

    .line 1346
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1347
    const/16 v1, 0x68

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1348
    const/16 v1, 0x64

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1349
    iget-object v1, p0, Lcom/lifevibes/trimapp/Trim;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1350
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_27
.end method

.method public isXHDPI()Z
    .registers 5

    .prologue
    .line 2232
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2233
    invoke-virtual {p0}, Lcom/lifevibes/trimapp/Trim;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 2234
    const-string v1, "TrimApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "density : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2235
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000

    cmpl-double v0, v0, v2

    if-nez v0, :cond_35

    const/4 v0, 0x1

    :goto_34
    return v0

    :cond_35
    const/4 v0, 0x0

    goto :goto_34
.end method

.method public onBackPressed()V
    .registers 3

    .prologue
    .line 578
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lifevibes/trimapp/Trim;->mIsActivityFinishing:Z

    .line 579
    sget v0, Lcom/lifevibes/trimapp/Trim;->CURRENT_MODEL_TYPE:I

    const/high16 v1, -0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_d

    .line 581
    invoke-direct {p0}, Lcom/lifevibes/trimapp/Trim;->releaseDecoderInuseAndWait()V

    .line 583
    :cond_d
    invoke-direct {p0}, Lcom/lifevibes/trimapp/Trim;->returnToInvoker()V

    .line 584
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 585
    return-void
.end method

.method public onButtonClick(Landroid/view/View;)V
    .registers 12
    .parameter "v"

    .prologue
    .line 599
    if-nez p1, :cond_3

    .line 679
    :goto_2
    return-void

    .line 602
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    packed-switch v6, :pswitch_data_cc

    :pswitch_a
    goto :goto_2

    .line 673
    :pswitch_b
    invoke-virtual {p0}, Lcom/lifevibes/trimapp/Trim;->onBackPressed()V

    goto :goto_2

    .line 607
    :pswitch_f
    iget-object v6, p0, Lcom/lifevibes/trimapp/Trim;->mDoubleSeekBar:Lcom/lifevibes/trimapp/widget/DoubleSeekBar;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->getTimeMillis(I)I

    move-result v4

    .line 608
    .local v4, playStartTime:I
    iget-object v6, p0, Lcom/lifevibes/trimapp/Trim;->mDoubleSeekBar:Lcom/lifevibes/trimapp/widget/DoubleSeekBar;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->getTimeMillis(I)I

    move-result v3

    .line 609
    .local v3, playEndTime:I
    sub-int v6, v3, v4

    const/16 v7, 0x3e8

    if-ge v6, v7, :cond_3b

    .line 610
    const-string v6, "TrimApp"

    const-string v7, "Selected duration is too short"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    iget-object v6, p0, Lcom/lifevibes/trimapp/Trim;->mDoubleSeekBar:Lcom/lifevibes/trimapp/widget/DoubleSeekBar;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->getTimeMillis(I)I

    move-result v6

    iput v6, p0, Lcom/lifevibes/trimapp/Trim;->mSaveHandlePosition:I

    .line 612
    iget-object v6, p0, Lcom/lifevibes/trimapp/Trim;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x69

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2

    .line 616
    :cond_3b
    iget-object v6, p0, Lcom/lifevibes/trimapp/Trim;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v6}, Landroid/widget/VideoView;->getTag()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_4d

    .line 617
    const/4 v6, 0x4

    invoke-direct {p0, v6}, Lcom/lifevibes/trimapp/Trim;->releaseDecoderInuse(I)V

    .line 619
    iget v6, p0, Lcom/lifevibes/trimapp/Trim;->mCurrentDecoderUser:I

    or-int/lit8 v6, v6, 0x4

    iput v6, p0, Lcom/lifevibes/trimapp/Trim;->mCurrentDecoderUser:I

    .line 621
    :cond_4d
    iget v6, p0, Lcom/lifevibes/trimapp/Trim;->mCurrentDecoderUser:I

    and-int/lit8 v6, v6, 0x1

    const/4 v7, 0x1

    if-eq v6, v7, :cond_5b

    iget v6, p0, Lcom/lifevibes/trimapp/Trim;->mCurrentDecoderUser:I

    and-int/lit8 v6, v6, 0x2

    const/4 v7, 0x2

    if-ne v6, v7, :cond_74

    .line 624
    :cond_5b
    iget-object v6, p0, Lcom/lifevibes/trimapp/Trim;->mActionHandler:Landroid/os/Handler;

    const/16 v7, 0x7d2

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 625
    iget-object v6, p0, Lcom/lifevibes/trimapp/Trim;->mActionHandler:Landroid/os/Handler;

    invoke-virtual {v6}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 626
    .local v2, msg:Landroid/os/Message;
    const/16 v6, 0x7d2

    iput v6, v2, Landroid/os/Message;->what:I

    .line 627
    iget-object v6, p0, Lcom/lifevibes/trimapp/Trim;->mActionHandler:Landroid/os/Handler;

    const-wide/16 v7, 0x1f4

    invoke-virtual {v6, v2, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_2

    .line 629
    .end local v2           #msg:Landroid/os/Message;
    :cond_74
    invoke-virtual {p0}, Lcom/lifevibes/trimapp/Trim;->doPlayPauseAction()V

    goto :goto_2

    .line 636
    .end local v3           #playEndTime:I
    .end local v4           #playStartTime:I
    :pswitch_78
    iget-object v6, p0, Lcom/lifevibes/trimapp/Trim;->mMediaShareApi:Lcom/lifevibes/trimapp/util/MediaShare;

    iget-object v7, p0, Lcom/lifevibes/trimapp/Trim;->mInputProperties:Lcom/lifevibes/trimapp/util/MediaShare$MediaShareProperties;

    iget v7, v7, Lcom/lifevibes/trimapp/util/MediaShare$MediaShareProperties;->mWidth:I

    iget-object v8, p0, Lcom/lifevibes/trimapp/Trim;->mInputProperties:Lcom/lifevibes/trimapp/util/MediaShare$MediaShareProperties;

    iget v8, v8, Lcom/lifevibes/trimapp/util/MediaShare$MediaShareProperties;->mHeight:I

    iget-object v9, p0, Lcom/lifevibes/trimapp/Trim;->mInputProperties:Lcom/lifevibes/trimapp/util/MediaShare$MediaShareProperties;

    iget v9, v9, Lcom/lifevibes/trimapp/util/MediaShare$MediaShareProperties;->mVideoType:I

    invoke-virtual {v6, v7, v8, v9}, Lcom/lifevibes/trimapp/util/MediaShare;->isNullEncordingAvailable(III)Z

    move-result v0

    .line 639
    .local v0, compressed:Z
    if-nez v0, :cond_9c

    .line 640
    const-string v6, "TrimApp"

    const-string v7, "compressed domain trim is not possible"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    const v6, 0x7f070011

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Lcom/lifevibes/trimapp/Trim;->showToast(II)V

    goto/16 :goto_2

    .line 646
    :cond_9c
    iget-object v6, p0, Lcom/lifevibes/trimapp/Trim;->mDoubleSeekBar:Lcom/lifevibes/trimapp/widget/DoubleSeekBar;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->getTimeMillis(I)I

    move-result v5

    .line 647
    .local v5, startTime:I
    iget-object v6, p0, Lcom/lifevibes/trimapp/Trim;->mDoubleSeekBar:Lcom/lifevibes/trimapp/widget/DoubleSeekBar;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->getTimeMillis(I)I

    move-result v1

    .line 648
    .local v1, endTime:I
    sub-int v6, v1, v5

    const/16 v7, 0x3e8

    if-ge v6, v7, :cond_c0

    .line 649
    const-string v6, "TrimApp"

    const-string v7, "Selected duration is too short"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    const v6, 0x7f070014

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Lcom/lifevibes/trimapp/Trim;->showToast(II)V

    goto/16 :goto_2

    .line 654
    :cond_c0
    const/4 v6, 0x0

    sput v6, Lcom/lifevibes/trimapp/Trim;->mActionWaitWatcherTrim:I

    .line 655
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/lifevibes/trimapp/Trim;->mOverwriteFilename:Z

    .line 664
    const/4 v6, 0x3

    invoke-virtual {p0, v6}, Lcom/lifevibes/trimapp/Trim;->showDialog(I)V

    goto/16 :goto_2

    .line 602
    :pswitch_data_cc
    .packed-switch 0x7f060009
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_f
        :pswitch_f
        :pswitch_78
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 11
    .parameter "newConfig"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 453
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 455
    iget-object v3, p0, Lcom/lifevibes/trimapp/Trim;->mDoubleSeekBar:Lcom/lifevibes/trimapp/widget/DoubleSeekBar;

    invoke-virtual {v3, v6}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->clearLongPress(Z)V

    .line 456
    iget v3, p0, Lcom/lifevibes/trimapp/Trim;->mSaveLeftBarTime:I

    if-gez v3, :cond_29

    .line 457
    iget-object v3, p0, Lcom/lifevibes/trimapp/Trim;->mDoubleSeekBar:Lcom/lifevibes/trimapp/widget/DoubleSeekBar;

    invoke-virtual {v3, v7}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->getTimeMillis(I)I

    move-result v3

    iput v3, p0, Lcom/lifevibes/trimapp/Trim;->mSaveLeftBarTime:I

    .line 458
    iget-object v3, p0, Lcom/lifevibes/trimapp/Trim;->mDoubleSeekBar:Lcom/lifevibes/trimapp/widget/DoubleSeekBar;

    invoke-virtual {v3, v8}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->getTimeMillis(I)I

    move-result v3

    iput v3, p0, Lcom/lifevibes/trimapp/Trim;->mSaveRightBarTime:I

    .line 459
    iget-object v3, p0, Lcom/lifevibes/trimapp/Trim;->mDoubleSeekBar:Lcom/lifevibes/trimapp/widget/DoubleSeekBar;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->getTimeMillis(I)I

    move-result v3

    iput v3, p0, Lcom/lifevibes/trimapp/Trim;->mSaveUserBarTime:I

    .line 462
    :cond_29
    iget-object v3, p0, Lcom/lifevibes/trimapp/Trim;->mMediaShareApi:Lcom/lifevibes/trimapp/util/MediaShare;

    invoke-virtual {v3}, Lcom/lifevibes/trimapp/util/MediaShare;->getTrimmingStatus()I

    move-result v3

    if-ne v3, v8, :cond_37

    .line 463
    iput-boolean v7, p0, Lcom/lifevibes/trimapp/Trim;->mIsConfigChanged:Z

    .line 464
    invoke-virtual {p0}, Lcom/lifevibes/trimapp/Trim;->setupViews()V

    .line 480
    :cond_36
    :goto_36
    return-void

    .line 467
    :cond_37
    iput-boolean v6, p0, Lcom/lifevibes/trimapp/Trim;->mIsConfigChanged:Z

    .line 468
    invoke-direct {p0}, Lcom/lifevibes/trimapp/Trim;->releaseDecoderInuseAndWait()V

    .line 469
    invoke-virtual {p0}, Lcom/lifevibes/trimapp/Trim;->setupViews()V

    .line 470
    const/4 v0, 0x0

    .local v0, saveLeftBarTime:I
    const/4 v1, 0x0

    .local v1, saveRightBarTime:I
    const/4 v2, 0x0

    .line 471
    .local v2, saveUserBarTime:I
    iget v3, p0, Lcom/lifevibes/trimapp/Trim;->mSaveLeftBarTime:I

    if-le v3, v5, :cond_4c

    .line 472
    iget v0, p0, Lcom/lifevibes/trimapp/Trim;->mSaveLeftBarTime:I

    .line 473
    iget v1, p0, Lcom/lifevibes/trimapp/Trim;->mSaveRightBarTime:I

    .line 474
    iget v2, p0, Lcom/lifevibes/trimapp/Trim;->mSaveUserBarTime:I

    .line 476
    :cond_4c
    iget-object v3, p0, Lcom/lifevibes/trimapp/Trim;->mTrimmedFiles:[Ljava/lang/String;

    iget v4, p0, Lcom/lifevibes/trimapp/Trim;->mFileCount:I

    aget-object v3, v3, v4

    invoke-virtual {p0, v3}, Lcom/lifevibes/trimapp/Trim;->refreshAllDisplay(Ljava/lang/String;)V

    .line 477
    iget-boolean v3, p0, Lcom/lifevibes/trimapp/Trim;->mUnsupportedShowing:Z

    if-nez v3, :cond_36

    if-le v0, v5, :cond_36

    .line 478
    iget-object v3, p0, Lcom/lifevibes/trimapp/Trim;->mDoubleSeekBar:Lcom/lifevibes/trimapp/widget/DoubleSeekBar;

    invoke-virtual {v3, v0, v1, v2}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->restoreHandleState(III)V

    goto :goto_36
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 16
    .parameter "icicle"

    .prologue
    .line 322
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 323
    const/4 v6, 0x0

    .line 325
    .local v6, pi:Landroid/content/pm/PackageInfo;
    :try_start_4
    invoke-virtual {p0}, Lcom/lifevibes/trimapp/Trim;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-virtual {p0}, Lcom/lifevibes/trimapp/Trim;->getPackageName()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_10
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_10} :catch_20

    move-result-object v6

    .line 332
    iget-object v11, v6, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-nez v11, :cond_2c

    .line 333
    const-string v11, "TrimApp"

    const-string v12, "versionName is null"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    invoke-direct {p0}, Lcom/lifevibes/trimapp/Trim;->returnToInvoker()V

    .line 431
    :goto_1f
    return-void

    .line 326
    :catch_20
    move-exception v1

    .line 327
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v11, "TrimApp"

    const-string v12, "PackageInfo is null"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    invoke-direct {p0}, Lcom/lifevibes/trimapp/Trim;->returnToInvoker()V

    goto :goto_1f

    .line 337
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2c
    iget-object v11, v6, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string v12, "\\."

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 339
    .local v10, values:[Ljava/lang/String;
    const/4 v11, 0x1

    aget-object v11, v10, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-direct {p0, v11}, Lcom/lifevibes/trimapp/Trim;->setTargetProject(I)I

    move-result v11

    sput v11, Lcom/lifevibes/trimapp/Trim;->CURRENT_MODEL_TYPE:I

    .line 340
    const/4 v11, 0x2

    aget-object v11, v10, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    sput v11, Lcom/lifevibes/trimapp/Trim;->CURRENT_MEDIASHARE_VERSION:I

    .line 344
    invoke-virtual {p0}, Lcom/lifevibes/trimapp/Trim;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 345
    .local v4, intent:Landroid/content/Intent;
    if-eqz v4, :cond_a8

    .line 346
    const-string v11, "uri"

    invoke-virtual {v4, v11}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Landroid/net/Uri;

    .line 347
    .local v9, uri:Landroid/net/Uri;
    if-eqz v9, :cond_9c

    .line 348
    const-string v11, "TrimApp"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "The Input Uri = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v9}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    iget-object v11, p0, Lcom/lifevibes/trimapp/Trim;->mTrimmedFiles:[Ljava/lang/String;

    iget v12, p0, Lcom/lifevibes/trimapp/Trim;->mFileCount:I

    invoke-virtual {v9}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    .line 363
    new-instance v3, Ljava/io/File;

    iget-object v11, p0, Lcom/lifevibes/trimapp/Trim;->mTrimmedFiles:[Ljava/lang/String;

    iget v12, p0, Lcom/lifevibes/trimapp/Trim;->mFileCount:I

    aget-object v11, v11, v12

    invoke-direct {v3, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 364
    .local v3, file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_b4

    .line 365
    const v11, 0x7f07000f

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v12}, Lcom/lifevibes/trimapp/Trim;->showToast(II)V

    .line 366
    invoke-direct {p0}, Lcom/lifevibes/trimapp/Trim;->returnToInvoker()V

    goto :goto_1f

    .line 352
    .end local v3           #file:Ljava/io/File;
    :cond_9c
    const-string v11, "TrimApp"

    const-string v12, "Input Uri is null"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    invoke-direct {p0}, Lcom/lifevibes/trimapp/Trim;->returnToInvoker()V

    goto/16 :goto_1f

    .line 357
    .end local v9           #uri:Landroid/net/Uri;
    :cond_a8
    const-string v11, "TrimApp"

    const-string v12, "intent is null"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    invoke-direct {p0}, Lcom/lifevibes/trimapp/Trim;->returnToInvoker()V

    goto/16 :goto_1f

    .line 371
    .restart local v3       #file:Ljava/io/File;
    .restart local v9       #uri:Landroid/net/Uri;
    :cond_b4
    sget v11, Lcom/lifevibes/trimapp/Trim;->CURRENT_MODEL_TYPE:I

    const/high16 v12, -0x8000

    and-int/2addr v11, v12

    if-eqz v11, :cond_150

    .line 372
    const/4 v11, 0x0

    sput-boolean v11, Lcom/lifevibes/trimapp/Trim;->SUPPORT_MULT_ORIENTATION:Z

    .line 373
    sget v11, Lcom/lifevibes/trimapp/Trim;->CURRENT_MODEL_TYPE:I

    const v12, -0x7ffffffd

    if-ne v11, v12, :cond_c8

    .line 374
    const/4 v11, 0x0

    sput-boolean v11, Lcom/lifevibes/trimapp/Trim;->SUPPORT_VIDEO_ROTATION:Z

    .line 381
    :cond_c8
    :goto_c8
    invoke-virtual {p0}, Lcom/lifevibes/trimapp/Trim;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v11

    invoke-interface {v11}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v11

    iput-object v11, p0, Lcom/lifevibes/trimapp/Trim;->mWindowDisplay:Landroid/view/Display;

    .line 382
    const/4 v11, 0x0

    iput v11, p0, Lcom/lifevibes/trimapp/Trim;->mCurrentDecoderUser:I

    .line 383
    const/4 v11, 0x0

    iput v11, p0, Lcom/lifevibes/trimapp/Trim;->mThumbnailMask:I

    .line 384
    const-string v11, "power"

    invoke-virtual {p0, v11}, Lcom/lifevibes/trimapp/Trim;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/PowerManager;

    iput-object v11, p0, Lcom/lifevibes/trimapp/Trim;->mPowerManager:Landroid/os/PowerManager;

    .line 385
    const-string v11, "audio"

    invoke-virtual {p0, v11}, Lcom/lifevibes/trimapp/Trim;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/media/AudioManager;

    iput-object v11, p0, Lcom/lifevibes/trimapp/Trim;->mAudioManager:Landroid/media/AudioManager;

    .line 386
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v11

    iput-object v11, p0, Lcom/lifevibes/trimapp/Trim;->mProgressPercentFormat:Ljava/text/NumberFormat;

    .line 387
    iget-object v11, p0, Lcom/lifevibes/trimapp/Trim;->mProgressPercentFormat:Ljava/text/NumberFormat;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 389
    const/4 v11, 0x0

    iput v11, p0, Lcom/lifevibes/trimapp/Trim;->mVideoRotation:I

    .line 390
    sget-boolean v11, Lcom/lifevibes/trimapp/Trim;->SUPPORT_VIDEO_ROTATION:Z

    if-eqz v11, :cond_133

    .line 391
    new-instance v7, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v7}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 392
    .local v7, retriever:Landroid/media/MediaMetadataRetriever;
    if-eqz v7, :cond_133

    .line 394
    :try_start_106
    const-string v11, "android.media.MediaMetadataRetriever"

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 395
    .local v0, cMediaMetadataRetriever:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v11, "METADATA_KEY_VIDEO_ROTATION"

    invoke-virtual {v0, v11}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    .line 397
    .local v8, rotation:Ljava/lang/reflect/Field;
    iget-object v11, p0, Lcom/lifevibes/trimapp/Trim;->mTrimmedFiles:[Ljava/lang/String;

    iget v12, p0, Lcom/lifevibes/trimapp/Trim;->mFileCount:I

    aget-object v11, v11, v12

    invoke-virtual {v7, v11}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 398
    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v11

    invoke-virtual {v7, v11}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v5

    .line 400
    .local v5, meta:Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, p0, Lcom/lifevibes/trimapp/Trim;->mVideoRotation:I
    :try_end_12a
    .catch Ljava/lang/NumberFormatException; {:try_start_106 .. :try_end_12a} :catch_15c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_106 .. :try_end_12a} :catch_165
    .catch Ljava/lang/NoSuchFieldException; {:try_start_106 .. :try_end_12a} :catch_16e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_106 .. :try_end_12a} :catch_177
    .catch Ljava/lang/IllegalAccessException; {:try_start_106 .. :try_end_12a} :catch_180

    .line 413
    .end local v0           #cMediaMetadataRetriever:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v5           #meta:Ljava/lang/String;
    .end local v8           #rotation:Ljava/lang/reflect/Field;
    :goto_12a
    iget v11, p0, Lcom/lifevibes/trimapp/Trim;->mVideoRotation:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_189

    const/16 v11, 0x5a

    iput v11, p0, Lcom/lifevibes/trimapp/Trim;->mVideoRotation:I

    .line 420
    .end local v7           #retriever:Landroid/media/MediaMetadataRetriever;
    :cond_133
    :goto_133
    invoke-static {}, Lcom/lifevibes/trimapp/util/Storage;->createStorageDirs()V

    .line 423
    new-instance v11, Lcom/lifevibes/trimapp/util/MediaShare;

    sget v12, Lcom/lifevibes/trimapp/Trim;->CURRENT_MEDIASHARE_VERSION:I

    invoke-direct {v11, p0, v12}, Lcom/lifevibes/trimapp/util/MediaShare;-><init>(Landroid/content/Context;I)V

    iput-object v11, p0, Lcom/lifevibes/trimapp/Trim;->mMediaShareApi:Lcom/lifevibes/trimapp/util/MediaShare;

    .line 424
    iget-object v11, p0, Lcom/lifevibes/trimapp/Trim;->mMediaShareApi:Lcom/lifevibes/trimapp/util/MediaShare;

    if-eqz v11, :cond_14b

    iget-object v11, p0, Lcom/lifevibes/trimapp/Trim;->mMediaShareApi:Lcom/lifevibes/trimapp/util/MediaShare;

    invoke-virtual {v11}, Lcom/lifevibes/trimapp/util/MediaShare;->loadLibrary()Z

    move-result v11

    if-nez v11, :cond_19d

    .line 425
    :cond_14b
    invoke-direct {p0}, Lcom/lifevibes/trimapp/Trim;->returnToInvoker()V

    goto/16 :goto_1f

    .line 376
    :cond_150
    sget v11, Lcom/lifevibes/trimapp/Trim;->CURRENT_MODEL_TYPE:I

    const/high16 v12, 0x4000

    and-int/2addr v11, v12

    if-eqz v11, :cond_c8

    .line 377
    const/4 v11, 0x1

    sput-boolean v11, Lcom/lifevibes/trimapp/Trim;->SUPPORT_MULT_ORIENTATION:Z

    goto/16 :goto_c8

    .line 401
    .restart local v7       #retriever:Landroid/media/MediaMetadataRetriever;
    :catch_15c
    move-exception v1

    .line 402
    .local v1, e:Ljava/lang/NumberFormatException;
    const-string v11, "TrimApp"

    const-string v12, "Integer.parseInt() NumberFormatException"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12a

    .line 403
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :catch_165
    move-exception v1

    .line 404
    .local v1, e:Ljava/lang/ClassNotFoundException;
    const-string v11, "TrimApp"

    const-string v12, "Class.forName() ClassNotFoundException"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12a

    .line 405
    .end local v1           #e:Ljava/lang/ClassNotFoundException;
    :catch_16e
    move-exception v2

    .line 406
    .local v2, ex:Ljava/lang/NoSuchFieldException;
    const-string v11, "TrimApp"

    const-string v12, "Class.getDeclaredField() NoSuchFieldException"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12a

    .line 407
    .end local v2           #ex:Ljava/lang/NoSuchFieldException;
    :catch_177
    move-exception v2

    .line 408
    .local v2, ex:Ljava/lang/IllegalArgumentException;
    const-string v11, "TrimApp"

    const-string v12, "Field.getInt IllegalArgumentException"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12a

    .line 409
    .end local v2           #ex:Ljava/lang/IllegalArgumentException;
    :catch_180
    move-exception v2

    .line 410
    .local v2, ex:Ljava/lang/IllegalAccessException;
    const-string v11, "TrimApp"

    const-string v12, "Field.getInt IllegalAccessException"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12a

    .line 414
    .end local v2           #ex:Ljava/lang/IllegalAccessException;
    :cond_189
    iget v11, p0, Lcom/lifevibes/trimapp/Trim;->mVideoRotation:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_193

    const/16 v11, 0xb4

    iput v11, p0, Lcom/lifevibes/trimapp/Trim;->mVideoRotation:I

    goto :goto_133

    .line 415
    :cond_193
    iget v11, p0, Lcom/lifevibes/trimapp/Trim;->mVideoRotation:I

    const/4 v12, 0x3

    if-ne v11, v12, :cond_133

    const/16 v11, 0x10e

    iput v11, p0, Lcom/lifevibes/trimapp/Trim;->mVideoRotation:I

    goto :goto_133

    .line 430
    .end local v7           #retriever:Landroid/media/MediaMetadataRetriever;
    :cond_19d
    invoke-virtual {p0}, Lcom/lifevibes/trimapp/Trim;->setupViews()V

    goto/16 :goto_1f
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 8
    .parameter

    .prologue
    const v5, 0x7f080003

    const v2, 0x7f070002

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 699
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/lifevibes/trimapp/Trim;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 700
    packed-switch p1, :pswitch_data_ca

    move-object v0, v1

    .line 756
    :goto_15
    return-object v0

    .line 702
    :pswitch_16
    const v2, 0x7f030001

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 703
    const v0, 0x7f060007

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/lifevibes/trimapp/Trim;->mEditTextName:Landroid/widget/EditText;

    .line 704
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim;->mEditTextName:Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/lifevibes/trimapp/Trim;->getEditTextFilter()[Landroid/text/InputFilter;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 706
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0, v5}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/lifevibes/trimapp/Trim;->mFilenameDialog:Landroid/app/Dialog;

    .line 707
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim;->mFilenameDialog:Landroid/app/Dialog;

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 708
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim;->mFilenameDialog:Landroid/app/Dialog;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 709
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim;->mFilenameDialog:Landroid/app/Dialog;

    goto :goto_15

    .line 711
    :pswitch_45
    const/high16 v2, 0x7f03

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 712
    new-instance v1, Landroid/app/Dialog;

    invoke-direct {v1, p0, v5}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/lifevibes/trimapp/Trim;->mProgressDialog:Landroid/app/Dialog;

    .line 713
    iget-object v1, p0, Lcom/lifevibes/trimapp/Trim;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 714
    iget-object v1, p0, Lcom/lifevibes/trimapp/Trim;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 715
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 716
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 717
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim;->mProgressDialog:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/lifevibes/trimapp/Trim;->mProgressListener:Lcom/lifevibes/trimapp/Trim$ProgressDialogListener;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 718
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim;->mProgressDialog:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/lifevibes/trimapp/Trim;->mProgressListener:Lcom/lifevibes/trimapp/Trim$ProgressDialogListener;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 719
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim;->mProgressDialog:Landroid/app/Dialog;

    goto :goto_15

    .line 721
    :pswitch_77
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v2, 0x104

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x7f04

    new-instance v2, Lcom/lifevibes/trimapp/Trim$3;

    invoke-direct {v2, p0}, Lcom/lifevibes/trimapp/Trim$3;-><init>(Lcom/lifevibes/trimapp/Trim;)V

    invoke-virtual {v0, v1, v4, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_15

    .line 734
    :pswitch_96
    const v0, 0x7f070011

    .line 735
    const/4 v1, 0x4

    if-ne p1, v1, :cond_9f

    .line 736
    const v0, 0x7f070013

    .line 738
    :cond_9f
    iput-boolean v3, p0, Lcom/lifevibes/trimapp/Trim;->mUnsupportedShowing:Z

    .line 739
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/lifevibes/trimapp/Trim$5;

    invoke-direct {v2, p0}, Lcom/lifevibes/trimapp/Trim$5;-><init>(Lcom/lifevibes/trimapp/Trim;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/lifevibes/trimapp/Trim$4;

    invoke-direct {v1, p0}, Lcom/lifevibes/trimapp/Trim$4;-><init>(Lcom/lifevibes/trimapp/Trim;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_15

    .line 700
    nop

    :pswitch_data_ca
    .packed-switch 0x1
        :pswitch_16
        :pswitch_45
        :pswitch_77
        :pswitch_96
        :pswitch_96
    .end packed-switch
.end method

.method protected onDestroy()V
    .registers 1

    .prologue
    .line 570
    invoke-direct {p0}, Lcom/lifevibes/trimapp/Trim;->releaseDecoderInuseAndWait()V

    .line 571
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 572
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 589
    const/16 v0, 0x14

    if-ne p1, v0, :cond_13

    .line 590
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim;->mControlLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_13

    .line 591
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim;->mDoubleSeekBar:Lcom/lifevibes/trimapp/widget/DoubleSeekBar;

    invoke-virtual {v0}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->requestFocus()Z

    .line 592
    const/4 v0, 0x1

    .line 595
    :goto_12
    return v0

    :cond_13
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_12
.end method

.method protected onPause()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 528
    invoke-virtual {p0}, Lcom/lifevibes/trimapp/Trim;->doPauseAction()Z

    .line 530
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/lifevibes/trimapp/Trim;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 532
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim;->mDoubleSeekBar:Lcom/lifevibes/trimapp/widget/DoubleSeekBar;

    invoke-virtual {v0, v1}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->clearLongPress(Z)V

    .line 534
    iput-boolean v1, p0, Lcom/lifevibes/trimapp/Trim;->mScreenTimeOut:Z

    .line 535
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 536
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lifevibes/trimapp/Trim;->mScreenTimeOut:Z

    .line 549
    :cond_1b
    invoke-virtual {p0, v1, v1}, Lcom/lifevibes/trimapp/Trim;->overridePendingTransition(II)V

    .line 550
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 551
    return-void
.end method

.method public onRenameDialogButtonClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 682
    if-nez p1, :cond_3

    .line 695
    :goto_2
    return-void

    .line 685
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_22

    goto :goto_2

    .line 687
    :pswitch_b
    const-string v0, "/mnt/sdcard/Output/"

    iget-object v1, p0, Lcom/lifevibes/trimapp/Trim;->mEditTextName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/lifevibes/trimapp/Trim;->requestTrimming(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 690
    :pswitch_1b
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim;->mFilenameDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_2

    .line 685
    nop

    :pswitch_data_22
    .packed-switch 0x7f060008
        :pswitch_b
        :pswitch_1b
    .end packed-switch
.end method

.method protected onRestart()V
    .registers 1

    .prologue
    .line 484
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 486
    return-void
.end method

.method public onResume()V
    .registers 4

    .prologue
    .line 500
    sget v1, Lcom/lifevibes/trimapp/Trim;->CURRENT_MODEL_TYPE:I

    const v2, -0x7ffffffd

    if-ne v1, v2, :cond_1b

    .line 501
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 502
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 503
    const-string v1, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 504
    iget-object v1, p0, Lcom/lifevibes/trimapp/Trim;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/lifevibes/trimapp/Trim;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 506
    .end local v0           #intentFilter:Landroid/content/IntentFilter;
    :cond_1b
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 507
    .restart local v0       #intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 508
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 509
    iget-object v1, p0, Lcom/lifevibes/trimapp/Trim;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/lifevibes/trimapp/Trim;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 511
    iget-boolean v1, p0, Lcom/lifevibes/trimapp/Trim;->mUnsupportedShowing:Z

    if-nez v1, :cond_40

    .line 512
    iget-boolean v1, p0, Lcom/lifevibes/trimapp/Trim;->mScreenTimeOut:Z

    if-nez v1, :cond_47

    .line 513
    iget-object v1, p0, Lcom/lifevibes/trimapp/Trim;->mTrimmedFiles:[Ljava/lang/String;

    iget v2, p0, Lcom/lifevibes/trimapp/Trim;->mFileCount:I

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/lifevibes/trimapp/Trim;->refreshAllDisplay(Ljava/lang/String;)V

    .line 519
    :cond_40
    :goto_40
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lifevibes/trimapp/Trim;->mScreenTimeOut:Z

    .line 521
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 522
    return-void

    .line 515
    :cond_47
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/lifevibes/trimapp/Trim;->startThumbnailTask(I)V

    goto :goto_40
.end method

.method protected onStart()V
    .registers 2

    .prologue
    .line 491
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 493
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lifevibes/trimapp/Trim;->mIsActivityFinishing:Z

    .line 494
    return-void
.end method

.method public onStop()V
    .registers 3

    .prologue
    .line 558
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 559
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/lifevibes/trimapp/Trim;->sendBroadcast(Landroid/content/Intent;)V

    .line 562
    invoke-direct {p0}, Lcom/lifevibes/trimapp/Trim;->releaseDecoderInuseAndWait()V

    .line 563
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 564
    return-void
.end method

.method public refreshAllDisplay(Ljava/lang/String;)V
    .registers 6
    .parameter

    .prologue
    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 762
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim;->mMediaShareApi:Lcom/lifevibes/trimapp/util/MediaShare;

    invoke-virtual {v0}, Lcom/lifevibes/trimapp/util/MediaShare;->getTrimmingStatus()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_13

    .line 763
    const-string v0, "TrimApp"

    const-string v1, "**** Trimming is ongoing"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    :cond_12
    :goto_12
    return-void

    .line 768
    :cond_13
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim;->mMediaShareApi:Lcom/lifevibes/trimapp/util/MediaShare;

    iget-object v1, p0, Lcom/lifevibes/trimapp/Trim;->mInputProperties:Lcom/lifevibes/trimapp/util/MediaShare$MediaShareProperties;

    invoke-virtual {v0, p1, v1}, Lcom/lifevibes/trimapp/util/MediaShare;->getProperties(Ljava/lang/String;Lcom/lifevibes/trimapp/util/MediaShare$MediaShareProperties;)I

    move-result v0

    .line 769
    if-eqz v0, :cond_2c

    .line 770
    const v1, 0x40000006

    if-ne v0, v1, :cond_27

    .line 771
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/lifevibes/trimapp/Trim;->showDialog(I)V

    goto :goto_12

    .line 773
    :cond_27
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/lifevibes/trimapp/Trim;->showDialog(I)V

    goto :goto_12

    .line 778
    :cond_2c
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim;->mInputProperties:Lcom/lifevibes/trimapp/util/MediaShare$MediaShareProperties;

    iget v0, v0, Lcom/lifevibes/trimapp/util/MediaShare$MediaShareProperties;->mDurationMillis:I

    const/16 v1, 0x3e8

    if-ge v0, v1, :cond_5a

    .line 779
    const-string v0, "TrimApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The file is too small to extract thumbnail. duration="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lifevibes/trimapp/Trim;->mInputProperties:Lcom/lifevibes/trimapp/util/MediaShare$MediaShareProperties;

    iget v2, v2, Lcom/lifevibes/trimapp/util/MediaShare$MediaShareProperties;->mDurationMillis:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    const v0, 0x7f070012

    invoke-virtual {p0, v0, v3}, Lcom/lifevibes/trimapp/Trim;->showToast(II)V

    .line 781
    invoke-direct {p0}, Lcom/lifevibes/trimapp/Trim;->returnToInvoker()V

    goto :goto_12

    .line 786
    :cond_5a
    iput v3, p0, Lcom/lifevibes/trimapp/Trim;->mPreviewState:I

    .line 787
    iput v2, p0, Lcom/lifevibes/trimapp/Trim;->mSaveLeftBarTime:I

    .line 788
    iput v2, p0, Lcom/lifevibes/trimapp/Trim;->mSaveRightBarTime:I

    .line 789
    iput v2, p0, Lcom/lifevibes/trimapp/Trim;->mSaveUserBarTime:I

    .line 790
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim;->mDoubleSeekBar:Lcom/lifevibes/trimapp/widget/DoubleSeekBar;

    invoke-virtual {v0}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->refreshDisplay()V

    .line 791
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim;->mDoubleSeekBar:Lcom/lifevibes/trimapp/widget/DoubleSeekBar;

    invoke-virtual {v0, v3}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->setStartTime(I)V

    .line 792
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim;->mDoubleSeekBar:Lcom/lifevibes/trimapp/widget/DoubleSeekBar;

    iget-object v1, p0, Lcom/lifevibes/trimapp/Trim;->mInputProperties:Lcom/lifevibes/trimapp/util/MediaShare$MediaShareProperties;

    iget v1, v1, Lcom/lifevibes/trimapp/util/MediaShare$MediaShareProperties;->mDurationMillis:I

    invoke-virtual {v0, v1}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->setEndTime(I)V

    .line 793
    const/16 v0, 0xf

    invoke-direct {p0, v0}, Lcom/lifevibes/trimapp/Trim;->clearThumbnailImage(I)V

    .line 795
    invoke-virtual {p0}, Lcom/lifevibes/trimapp/Trim;->updateButtonsEnabled()V

    .line 796
    iput v3, p0, Lcom/lifevibes/trimapp/Trim;->mThumbnailOffset:I

    .line 797
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/lifevibes/trimapp/Trim;->startThumbnailTask(I)V

    .line 798
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim;->mThumbnailTask:Lcom/lifevibes/trimapp/Trim$ThumbnailTask;

    if-eqz v0, :cond_12

    .line 799
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim;->mThumbnailTask:Lcom/lifevibes/trimapp/Trim$ThumbnailTask;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->mNeedLoopRestart:Z

    goto :goto_12
.end method

.method public requestTrimming(Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .parameter
    .parameter

    .prologue
    const/16 v8, 0x7d1

    const/4 v7, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1919
    .line 1923
    invoke-direct {p0, v7}, Lcom/lifevibes/trimapp/Trim;->releaseDecoderInuse(I)V

    .line 1927
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_df

    .line 1928
    const v0, 0x7f07001e

    invoke-virtual {p0, v0, v2}, Lcom/lifevibes/trimapp/Trim;->showToast(II)V

    move v0, v1

    .line 1931
    :goto_19
    if-eqz v0, :cond_1c

    .line 1983
    :cond_1b
    :goto_1b
    return-void

    .line 1935
    :cond_1c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1936
    new-instance v4, Ljava/io/File;

    invoke-static {v3}, Lcom/lifevibes/trimapp/util/Storage;->addOutputExtention(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1937
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_43

    .line 1938
    const v0, 0x7f070010

    invoke-virtual {p0, v0, v2}, Lcom/lifevibes/trimapp/Trim;->showToast(II)V

    move v0, v1

    .line 1941
    :cond_43
    if-nez v0, :cond_1b

    .line 1946
    :try_start_45
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_48} :catch_8f
    .catch Ljava/lang/SecurityException; {:try_start_45 .. :try_end_48} :catch_b4

    .line 1956
    :goto_48
    if-nez v0, :cond_1b

    .line 1961
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim;->mFilenameDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim;->mFilenameDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 1962
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim;->mFilenameDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1964
    :cond_5b
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lifevibes/trimapp/Trim;->mOnTrimmingFile:Ljava/lang/String;

    .line 1967
    iget v0, p0, Lcom/lifevibes/trimapp/Trim;->mCurrentDecoderUser:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/lifevibes/trimapp/Trim;->mCurrentDecoderUser:I

    .line 1970
    invoke-virtual {p0, v7}, Lcom/lifevibes/trimapp/Trim;->showDialog(I)V

    .line 1971
    invoke-virtual {p0, v2}, Lcom/lifevibes/trimapp/Trim;->setProgressDialogValue(I)V

    .line 1973
    iget v0, p0, Lcom/lifevibes/trimapp/Trim;->mCurrentDecoderUser:I

    and-int/lit8 v0, v0, 0x1

    if-eq v0, v1, :cond_7a

    iget v0, p0, Lcom/lifevibes/trimapp/Trim;->mCurrentDecoderUser:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_da

    .line 1976
    :cond_7a
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim;->mActionHandler:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 1977
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim;->mActionHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1978
    iput v8, v0, Landroid/os/Message;->what:I

    .line 1979
    iget-object v1, p0, Lcom/lifevibes/trimapp/Trim;->mActionHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1b

    .line 1947
    :catch_8f
    move-exception v0

    .line 1948
    const-string v3, "TrimApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createNewFile()\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1949
    const v0, 0x7f07000d

    invoke-virtual {p0, v0, v2}, Lcom/lifevibes/trimapp/Trim;->showToast(II)V

    move v0, v1

    .line 1955
    goto :goto_48

    .line 1951
    :catch_b4
    move-exception v0

    .line 1952
    const-string v3, "TrimApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createNewFile()\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1953
    const v0, 0x7f07001c

    invoke-virtual {p0, v0, v2}, Lcom/lifevibes/trimapp/Trim;->showToast(II)V

    move v0, v1

    .line 1954
    goto/16 :goto_48

    .line 1981
    :cond_da
    invoke-direct {p0}, Lcom/lifevibes/trimapp/Trim;->doTrimmingAction()V

    goto/16 :goto_1b

    :cond_df
    move v0, v2

    goto/16 :goto_19
.end method

.method public setProgressDialogValue(I)V
    .registers 8
    .parameter

    .prologue
    .line 861
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim;->mProgressDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_3f

    .line 862
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim;->mProgressDialog:Landroid/app/Dialog;

    const v1, 0x7f060006

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 863
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 865
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim;->mProgressDialog:Landroid/app/Dialog;

    const v1, 0x7f060005

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 866
    int-to-double v1, p1

    const-wide/high16 v3, 0x4059

    div-double/2addr v1, v3

    .line 867
    new-instance v3, Landroid/text/SpannableString;

    iget-object v4, p0, Lcom/lifevibes/trimapp/Trim;->mProgressPercentFormat:Ljava/text/NumberFormat;

    invoke-virtual {v4, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 868
    new-instance v1, Landroid/text/style/StyleSpan;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v4

    const/16 v5, 0x21

    invoke-virtual {v3, v1, v2, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 870
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 872
    :cond_3f
    return-void
.end method

.method public setVideoViewVisibility(Z)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 876
    if-eqz p1, :cond_12

    .line 877
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim;->mIvFullImage:[Landroid/widget/ImageView;

    aget-object v0, v0, v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 878
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim;->mIvFullImage:[Landroid/widget/ImageView;

    aget-object v0, v0, v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 883
    :goto_11
    return-void

    .line 880
    :cond_12
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim;->mIvFullImage:[Landroid/widget/ImageView;

    aget-object v0, v0, v2

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 881
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim;->mIvFullImage:[Landroid/widget/ImageView;

    aget-object v0, v0, v2

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto :goto_11
.end method

.method public setupViews()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 434
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim;->mWindowDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    sput v0, Lcom/lifevibes/trimapp/Trim;->VIDEOVIEW_WIDTH:I

    .line 435
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim;->mWindowDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    sput v0, Lcom/lifevibes/trimapp/Trim;->VIDEOVIEW_HEIGHT:I

    .line 437
    invoke-virtual {p0}, Lcom/lifevibes/trimapp/Trim;->isXHDPI()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 438
    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Lcom/lifevibes/trimapp/Trim;->setContentView(I)V

    .line 443
    :goto_1d
    invoke-direct {p0}, Lcom/lifevibes/trimapp/Trim;->setupUIComponents()V

    .line 444
    invoke-direct {p0}, Lcom/lifevibes/trimapp/Trim;->setupUIImageViews()V

    .line 446
    invoke-virtual {p0, v1}, Lcom/lifevibes/trimapp/Trim;->onButtonClick(Landroid/view/View;)V

    .line 447
    invoke-virtual {p0, v1}, Lcom/lifevibes/trimapp/Trim;->onRenameDialogButtonClick(Landroid/view/View;)V

    .line 448
    return-void

    .line 440
    :cond_2a
    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lcom/lifevibes/trimapp/Trim;->setContentView(I)V

    goto :goto_1d
.end method

.method public showToast(II)V
    .registers 4
    .parameter "resId"
    .parameter "duration"

    .prologue
    .line 890
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 891
    return-void
.end method

.method public showToast(Ljava/lang/CharSequence;I)V
    .registers 4
    .parameter "message"
    .parameter "duration"

    .prologue
    .line 886
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 887
    return-void
.end method

.method public startThumbnailTask(I)V
    .registers 8
    .parameter "mask"

    .prologue
    const/16 v5, 0x7d0

    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x2

    .line 1454
    iget-boolean v1, p0, Lcom/lifevibes/trimapp/Trim;->mIsActivityFinishing:Z

    if-eqz v1, :cond_a

    .line 1487
    :cond_9
    :goto_9
    return-void

    .line 1459
    :cond_a
    iget v1, p0, Lcom/lifevibes/trimapp/Trim;->mCurrentDecoderUser:I

    and-int/lit8 v1, v1, 0x2

    if-eq v1, v2, :cond_9

    .line 1461
    iget v1, p0, Lcom/lifevibes/trimapp/Trim;->mCurrentDecoderUser:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_42

    .line 1462
    iget v1, p0, Lcom/lifevibes/trimapp/Trim;->mPreviewState:I

    if-ne v1, v3, :cond_1f

    .line 1464
    invoke-virtual {p0}, Lcom/lifevibes/trimapp/Trim;->doPauseAction()Z

    .line 1465
    iput v2, p0, Lcom/lifevibes/trimapp/Trim;->mPreviewState:I

    .line 1467
    :cond_1f
    invoke-direct {p0, v3}, Lcom/lifevibes/trimapp/Trim;->releaseDecoderInuse(I)V

    .line 1472
    :cond_22
    :goto_22
    and-int/lit8 v1, p1, 0x2

    if-eq v1, v2, :cond_29

    .line 1473
    invoke-direct {p0, p1}, Lcom/lifevibes/trimapp/Trim;->clearThumbnailImage(I)V

    .line 1475
    :cond_29
    iget v1, p0, Lcom/lifevibes/trimapp/Trim;->mThumbnailMask:I

    or-int/2addr v1, p1

    iput v1, p0, Lcom/lifevibes/trimapp/Trim;->mThumbnailMask:I

    .line 1477
    iget-object v1, p0, Lcom/lifevibes/trimapp/Trim;->mThumbnailTask:Lcom/lifevibes/trimapp/Trim$ThumbnailTask;

    if-nez v1, :cond_49

    .line 1478
    new-instance v1, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;

    invoke-direct {v1, p0}, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;-><init>(Lcom/lifevibes/trimapp/Trim;)V

    iput-object v1, p0, Lcom/lifevibes/trimapp/Trim;->mThumbnailTask:Lcom/lifevibes/trimapp/Trim$ThumbnailTask;

    .line 1480
    iget-object v1, p0, Lcom/lifevibes/trimapp/Trim;->mThumbnailTask:Lcom/lifevibes/trimapp/Trim$ThumbnailTask;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_9

    .line 1468
    :cond_42
    iget v1, p0, Lcom/lifevibes/trimapp/Trim;->mPreviewState:I

    if-ne v1, v4, :cond_22

    .line 1469
    iput v2, p0, Lcom/lifevibes/trimapp/Trim;->mPreviewState:I

    goto :goto_22

    .line 1481
    :cond_49
    iget-object v1, p0, Lcom/lifevibes/trimapp/Trim;->mThumbnailTask:Lcom/lifevibes/trimapp/Trim$ThumbnailTask;

    iget-boolean v1, v1, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->mIsReleased:Z

    if-eqz v1, :cond_9

    .line 1482
    iget-object v1, p0, Lcom/lifevibes/trimapp/Trim;->mActionHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1483
    iget-object v1, p0, Lcom/lifevibes/trimapp/Trim;->mActionHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1484
    .local v0, msg:Landroid/os/Message;
    iput v5, v0, Landroid/os/Message;->what:I

    .line 1485
    iget-object v1, p0, Lcom/lifevibes/trimapp/Trim;->mActionHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_9
.end method

.method public updateButtonsEnabled()V
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 835
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim;->mDoubleSeekBar:Lcom/lifevibes/trimapp/widget/DoubleSeekBar;

    invoke-virtual {v0}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->isLongPressing()Z

    move-result v0

    if-eq v0, v2, :cond_14

    iget v0, p0, Lcom/lifevibes/trimapp/Trim;->mPreviewState:I

    if-eq v0, v4, :cond_14

    iget v0, p0, Lcom/lifevibes/trimapp/Trim;->mPreviewState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1f

    .line 838
    :cond_14
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim;->mPlayButton:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 839
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim;->mTrimButton:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 858
    :goto_1e
    return-void

    .line 843
    :cond_1f
    iget v0, p0, Lcom/lifevibes/trimapp/Trim;->mCurrentDecoderUser:I

    and-int/lit8 v0, v0, 0x1

    if-eq v0, v2, :cond_2b

    iget v0, p0, Lcom/lifevibes/trimapp/Trim;->mCurrentDecoderUser:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v4, :cond_62

    .line 845
    :cond_2b
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim;->mPlayButton:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 850
    :goto_30
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim;->mDoubleSeekBar:Lcom/lifevibes/trimapp/widget/DoubleSeekBar;

    invoke-virtual {v0, v2}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->getTimeMillis(I)I

    move-result v0

    iget-object v1, p0, Lcom/lifevibes/trimapp/Trim;->mDoubleSeekBar:Lcom/lifevibes/trimapp/widget/DoubleSeekBar;

    invoke-virtual {v1}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->getStartTime()I

    move-result v1

    if-ne v0, v1, :cond_4c

    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim;->mDoubleSeekBar:Lcom/lifevibes/trimapp/widget/DoubleSeekBar;

    invoke-virtual {v0, v4}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->getTimeMillis(I)I

    move-result v0

    iget-object v1, p0, Lcom/lifevibes/trimapp/Trim;->mDoubleSeekBar:Lcom/lifevibes/trimapp/widget/DoubleSeekBar;

    invoke-virtual {v1}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->getEndTime()I

    move-result v1

    if-eq v0, v1, :cond_68

    :cond_4c
    iget v0, p0, Lcom/lifevibes/trimapp/Trim;->mCurrentDecoderUser:I

    and-int/lit8 v0, v0, 0x1

    if-eq v0, v2, :cond_68

    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim;->mPauseButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_68

    .line 854
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim;->mTrimButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1e

    .line 847
    :cond_62
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim;->mPlayButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_30

    .line 856
    :cond_68
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim;->mTrimButton:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1e
.end method

.method public updatePlayPauseButton(Z)V
    .registers 7
    .parameter "preview"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1380
    if-eqz p1, :cond_29

    .line 1381
    iget-object v1, p0, Lcom/lifevibes/trimapp/Trim;->mPlayButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isFocused()Z

    move-result v0

    .line 1382
    .local v0, focusChange:Z
    iget-object v1, p0, Lcom/lifevibes/trimapp/Trim;->mPlayButton:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1383
    iget-object v1, p0, Lcom/lifevibes/trimapp/Trim;->mPauseButton:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1384
    iget-object v1, p0, Lcom/lifevibes/trimapp/Trim;->mDoubleSeekBar:Lcom/lifevibes/trimapp/widget/DoubleSeekBar;

    invoke-virtual {v1, v2}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->setSideHandleEnabled(Z)V

    .line 1385
    iget-object v1, p0, Lcom/lifevibes/trimapp/Trim;->mDoubleSeekBar:Lcom/lifevibes/trimapp/widget/DoubleSeekBar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->setUserHandleMode(I)V

    .line 1386
    if-eqz v0, :cond_28

    .line 1387
    iget-object v1, p0, Lcom/lifevibes/trimapp/Trim;->mPauseButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 1404
    :cond_28
    :goto_28
    return-void

    .line 1390
    .end local v0           #focusChange:Z
    :cond_29
    iget-object v1, p0, Lcom/lifevibes/trimapp/Trim;->mPauseButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isFocused()Z

    move-result v0

    .line 1391
    .restart local v0       #focusChange:Z
    iget-object v1, p0, Lcom/lifevibes/trimapp/Trim;->mPlayButton:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1392
    iget-object v1, p0, Lcom/lifevibes/trimapp/Trim;->mPauseButton:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1393
    iget-object v1, p0, Lcom/lifevibes/trimapp/Trim;->mDoubleSeekBar:Lcom/lifevibes/trimapp/widget/DoubleSeekBar;

    invoke-virtual {v1, v2}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->setSideHandleEnabled(Z)V

    .line 1395
    iget-object v1, p0, Lcom/lifevibes/trimapp/Trim;->mDoubleSeekBar:Lcom/lifevibes/trimapp/widget/DoubleSeekBar;

    invoke-virtual {v1}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->isLongPressing()Z

    move-result v1

    if-eqz v1, :cond_54

    .line 1396
    iget-object v1, p0, Lcom/lifevibes/trimapp/Trim;->mDoubleSeekBar:Lcom/lifevibes/trimapp/widget/DoubleSeekBar;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->setUserHandleMode(I)V

    .line 1400
    :goto_4c
    if-eqz v0, :cond_28

    .line 1401
    iget-object v1, p0, Lcom/lifevibes/trimapp/Trim;->mPlayButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_28

    .line 1398
    :cond_54
    iget-object v1, p0, Lcom/lifevibes/trimapp/Trim;->mDoubleSeekBar:Lcom/lifevibes/trimapp/widget/DoubleSeekBar;

    invoke-virtual {v1, v2}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->setUserHandleMode(I)V

    goto :goto_4c
.end method
