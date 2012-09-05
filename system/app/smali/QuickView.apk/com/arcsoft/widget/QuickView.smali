.class public Lcom/arcsoft/widget/QuickView;
.super Ljava/lang/Object;
.source "QuickView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/arcsoft/widget/QuickView$FileListCallback;
    }
.end annotation


# static fields
.field private static final AUTO_HIDE_TIMEOUT:I = 0x7d0

.field public static final ENABLE_MULTITOUCH_ROTATE:Z = false

.field public static final ENABLE_TILT_MOTION:Z = true

.field private static final MAX_ZOOM_LEVEL:I = 0x9c40

.field private static final MULTI_TOUCH_ROTATE:I = 0x1

.field private static final MULTI_TOUCH_ROTATE_THRESHOLD:I = 0x9

.field private static final MULTI_TOUCH_ZOOM:I = 0x2

.field private static final MULTI_TOUCH_ZOOM_THRESHOLD:F = 1.07f

.field private static OUTPUT_LOG:Z = false

.field private static final PAN_MOVE_THRESHOLD:I = 0x5

.field public static final QUICKVIEW_ITEM_EDIT:I = 0xa92702

.field public static final QUICKVIEW_ITEM_INSERT:I = 0xa92700

.field public static final QUICKVIEW_ITEM_RANGE:I = 0xa92703

.field public static final QUICKVIEW_ITEM_REMOVE:I = 0xa92701

.field public static final QUICKVIEW_ITEM_RENAME:I = 0xa92704

.field public static final QUICKVIEW_NOTIFY_AMPV_INITIATED:I = 0x30

.field public static final QUICKVIEW_NOTIFY_DRAGGING:I = 0x22

.field public static final QUICKVIEW_NOTIFY_FILMSTRIP:I = 0x26

.field public static final QUICKVIEW_NOTIFY_IMAGE_READY:I = 0x24

.field private static final TAG:Ljava/lang/String; = "QuickView:"

.field private static final TOUCH_DWON:I = 0x3

.field private static final TOUCH_MODE_MULTI:I = 0x2

.field private static final TOUCH_MODE_NONE:I = 0x0

.field private static final TOUCH_MODE_SINGLE:I = 0x1

.field private static final TOUCH_REST_INTERNAL:I = 0x0

.field private static final msg_ampv_do_step:I = 0x10

.field private static final msg_filmstrip_hide:I = 0x12

.field private static final msg_filmstrip_show:I = 0x11

.field private static final msg_tilt_pan:I = 0x13

.field private static final msg_tilt_zoom:I = 0x14


# instance fields
.field private beforePanX:I

.field private beforePanY:I

.field private downX:I

.field private downY:I

.field private gestureListener:Lcom/arcsoft/widget/MySimpleOnGestureListener;

.field private mAMPVBuffer:Landroid/graphics/Bitmap;

.field private mAmpvHandler:Landroid/os/Handler;

.field private mBeforeSingleZoomY:I

.field public mBounceView:Lcom/arcsoft/widget/BounceView;

.field private mCurIndex:I

.field private mCurrentSpan:F

.field private mFileListCallback:Lcom/arcsoft/widget/QuickView$FileListCallback;

.field private mFilmStripShowTime:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHandler:Landroid/os/Handler;

.field private mIBase:Lcom/arcsoft/widget/IBase;

.field private volatile mIsAnimating:Z

.field private mIsPaused:Z

.field private mIsViewingImage:Z

.field private mMotionListener:Landroid/hardware/motion/MRListener;

.field private mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

.field private mMultiTouchDetector:Lcom/arcsoft/widget/TouchEventDetector;

.field private mNeedReload:Z

.field private mOffsetX:I

.field private mOffsetY:I

.field private mOrientation:I

.field private mRefOri:I

.field private mRespondTiltEvent:Z

.field private mReviewHeight:I

.field private mReviewHolder:Landroid/view/SurfaceHolder;

.field private mReviewWidth:I

.field private mRotateDirection:I

.field private mSingleZoomStartX:I

.field private mSingleZoomStartY:I

.field private mState:Lcom/arcsoft/android/camera/utils/AMPV_State;

.field private mTiltZoomCenterX:I

.field private mTiltZoomCenterY:I

.field private mTouchMode:I

.field private mTouchOpt:I

.field private mbBrowsing:Z

.field private mbCloseFSinTouchDown:Z

.field private mbDataReady:Z

.field private mbDoubleTap:Z

.field private mbDragOperation:Z

.field private mbDraging:Z

.field private mbFilmStrip:Z

.field private mbFirstAutoFadeOutSet:Z

.field private mbFirstStart:Z

.field private mbRotateFlag:Z

.field private mhAMCM:I

.field private mhAMPV:I

.field private upX:I

.field private upY:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 125
    const/4 v0, 0x1

    sput-boolean v0, Lcom/arcsoft/widget/QuickView;->OUTPUT_LOG:Z

    return-void
.end method

.method public constructor <init>(Lcom/arcsoft/widget/IBase;Lcom/arcsoft/widget/QuickView$FileListCallback;)V
    .registers 10
    .parameter "iBase"
    .parameter "callback"

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 176
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput v3, p0, Lcom/arcsoft/widget/QuickView;->mhAMCM:I

    .line 85
    iput-object v4, p0, Lcom/arcsoft/widget/QuickView;->mIBase:Lcom/arcsoft/widget/IBase;

    .line 86
    iput v3, p0, Lcom/arcsoft/widget/QuickView;->mReviewWidth:I

    .line 87
    iput v3, p0, Lcom/arcsoft/widget/QuickView;->mReviewHeight:I

    .line 88
    iput-object v4, p0, Lcom/arcsoft/widget/QuickView;->mReviewHolder:Landroid/view/SurfaceHolder;

    .line 89
    iput v3, p0, Lcom/arcsoft/widget/QuickView;->mhAMPV:I

    .line 90
    iput-object v4, p0, Lcom/arcsoft/widget/QuickView;->mAMPVBuffer:Landroid/graphics/Bitmap;

    .line 91
    iput-object v4, p0, Lcom/arcsoft/widget/QuickView;->mFileListCallback:Lcom/arcsoft/widget/QuickView$FileListCallback;

    .line 92
    iput-object v4, p0, Lcom/arcsoft/widget/QuickView;->mAmpvHandler:Landroid/os/Handler;

    .line 93
    iput-boolean v3, p0, Lcom/arcsoft/widget/QuickView;->mbDoubleTap:Z

    .line 94
    iput-object v4, p0, Lcom/arcsoft/widget/QuickView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 95
    iput-object v4, p0, Lcom/arcsoft/widget/QuickView;->mMultiTouchDetector:Lcom/arcsoft/widget/TouchEventDetector;

    .line 96
    iput-object v4, p0, Lcom/arcsoft/widget/QuickView;->mState:Lcom/arcsoft/android/camera/utils/AMPV_State;

    .line 102
    iput v3, p0, Lcom/arcsoft/widget/QuickView;->beforePanX:I

    iput v3, p0, Lcom/arcsoft/widget/QuickView;->beforePanY:I

    .line 103
    iput v5, p0, Lcom/arcsoft/widget/QuickView;->mOrientation:I

    .line 104
    iput v3, p0, Lcom/arcsoft/widget/QuickView;->mRefOri:I

    .line 105
    iput v5, p0, Lcom/arcsoft/widget/QuickView;->mRotateDirection:I

    .line 106
    const/high16 v2, -0x4080

    iput v2, p0, Lcom/arcsoft/widget/QuickView;->mCurrentSpan:F

    .line 107
    iput v3, p0, Lcom/arcsoft/widget/QuickView;->mTouchOpt:I

    .line 108
    iput-boolean v3, p0, Lcom/arcsoft/widget/QuickView;->mbRotateFlag:Z

    .line 109
    iput-boolean v3, p0, Lcom/arcsoft/widget/QuickView;->mbFilmStrip:Z

    .line 110
    iput-boolean v3, p0, Lcom/arcsoft/widget/QuickView;->mbBrowsing:Z

    .line 111
    iput-boolean v3, p0, Lcom/arcsoft/widget/QuickView;->mbDraging:Z

    .line 112
    iput-boolean v3, p0, Lcom/arcsoft/widget/QuickView;->mIsAnimating:Z

    .line 113
    iput v3, p0, Lcom/arcsoft/widget/QuickView;->downX:I

    iput v3, p0, Lcom/arcsoft/widget/QuickView;->downY:I

    iput v3, p0, Lcom/arcsoft/widget/QuickView;->upX:I

    iput v3, p0, Lcom/arcsoft/widget/QuickView;->upY:I

    .line 114
    iput v3, p0, Lcom/arcsoft/widget/QuickView;->mOffsetX:I

    iput v3, p0, Lcom/arcsoft/widget/QuickView;->mOffsetY:I

    .line 115
    iput v5, p0, Lcom/arcsoft/widget/QuickView;->mCurIndex:I

    .line 116
    iput v3, p0, Lcom/arcsoft/widget/QuickView;->mFilmStripShowTime:I

    .line 117
    iput-boolean v6, p0, Lcom/arcsoft/widget/QuickView;->mbFirstStart:Z

    .line 118
    iput-boolean v3, p0, Lcom/arcsoft/widget/QuickView;->mbFirstAutoFadeOutSet:Z

    .line 119
    iput-boolean v3, p0, Lcom/arcsoft/widget/QuickView;->mbCloseFSinTouchDown:Z

    .line 120
    iput-boolean v3, p0, Lcom/arcsoft/widget/QuickView;->mbDragOperation:Z

    .line 122
    iput-boolean v3, p0, Lcom/arcsoft/widget/QuickView;->mNeedReload:Z

    .line 123
    iput-boolean v3, p0, Lcom/arcsoft/widget/QuickView;->mIsPaused:Z

    .line 124
    iput-boolean v6, p0, Lcom/arcsoft/widget/QuickView;->mIsViewingImage:Z

    .line 136
    iput-object v4, p0, Lcom/arcsoft/widget/QuickView;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 138
    iput-boolean v6, p0, Lcom/arcsoft/widget/QuickView;->mRespondTiltEvent:Z

    .line 140
    iput v3, p0, Lcom/arcsoft/widget/QuickView;->mTiltZoomCenterX:I

    .line 141
    iput v3, p0, Lcom/arcsoft/widget/QuickView;->mTiltZoomCenterY:I

    .line 143
    iput-boolean v3, p0, Lcom/arcsoft/widget/QuickView;->mbDataReady:Z

    .line 146
    iput v5, p0, Lcom/arcsoft/widget/QuickView;->mBeforeSingleZoomY:I

    .line 147
    iput v5, p0, Lcom/arcsoft/widget/QuickView;->mSingleZoomStartX:I

    .line 148
    iput v5, p0, Lcom/arcsoft/widget/QuickView;->mSingleZoomStartY:I

    .line 151
    new-instance v2, Lcom/arcsoft/widget/QuickView$1;

    invoke-direct {v2, p0}, Lcom/arcsoft/widget/QuickView$1;-><init>(Lcom/arcsoft/widget/QuickView;)V

    iput-object v2, p0, Lcom/arcsoft/widget/QuickView;->mHandler:Landroid/os/Handler;

    .line 1295
    iput v3, p0, Lcom/arcsoft/widget/QuickView;->mTouchMode:I

    .line 1300
    new-instance v2, Lcom/arcsoft/widget/QuickView$10;

    invoke-direct {v2, p0}, Lcom/arcsoft/widget/QuickView$10;-><init>(Lcom/arcsoft/widget/QuickView;)V

    iput-object v2, p0, Lcom/arcsoft/widget/QuickView;->mMotionListener:Landroid/hardware/motion/MRListener;

    .line 177
    iput-object p1, p0, Lcom/arcsoft/widget/QuickView;->mIBase:Lcom/arcsoft/widget/IBase;

    .line 178
    iput-object p2, p0, Lcom/arcsoft/widget/QuickView;->mFileListCallback:Lcom/arcsoft/widget/QuickView$FileListCallback;

    .line 179
    new-instance v2, Lcom/arcsoft/android/camera/utils/AMPV_State;

    invoke-direct {v2}, Lcom/arcsoft/android/camera/utils/AMPV_State;-><init>()V

    iput-object v2, p0, Lcom/arcsoft/widget/QuickView;->mState:Lcom/arcsoft/android/camera/utils/AMPV_State;

    .line 180
    new-instance v2, Lcom/arcsoft/widget/MySimpleOnGestureListener;

    invoke-direct {v2}, Lcom/arcsoft/widget/MySimpleOnGestureListener;-><init>()V

    iput-object v2, p0, Lcom/arcsoft/widget/QuickView;->gestureListener:Lcom/arcsoft/widget/MySimpleOnGestureListener;

    .line 181
    new-instance v0, Lcom/arcsoft/widget/QuickView$2;

    invoke-direct {v0, p0}, Lcom/arcsoft/widget/QuickView$2;-><init>(Lcom/arcsoft/widget/QuickView;)V

    .line 188
    .local v0, gestureCallback:Lcom/arcsoft/widget/MySimpleOnGestureListener$Gesture_NotifyCallback;
    iget-object v2, p0, Lcom/arcsoft/widget/QuickView;->gestureListener:Lcom/arcsoft/widget/MySimpleOnGestureListener;

    invoke-virtual {v2, v0}, Lcom/arcsoft/widget/MySimpleOnGestureListener;->setGestureCallBack(Lcom/arcsoft/widget/MySimpleOnGestureListener$Gesture_NotifyCallback;)V

    .line 189
    new-instance v2, Landroid/view/GestureDetector;

    iget-object v3, p0, Lcom/arcsoft/widget/QuickView;->gestureListener:Lcom/arcsoft/widget/MySimpleOnGestureListener;

    invoke-direct {v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v2, p0, Lcom/arcsoft/widget/QuickView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 190
    new-instance v1, Lcom/arcsoft/widget/QuickView$3;

    invoke-direct {v1, p0}, Lcom/arcsoft/widget/QuickView$3;-><init>(Lcom/arcsoft/widget/QuickView;)V

    .line 230
    .local v1, touchCallback:Lcom/arcsoft/widget/TouchEventDetector$TouchEventCallback;
    new-instance v2, Lcom/arcsoft/widget/TouchEventDetector;

    invoke-direct {v2, v1}, Lcom/arcsoft/widget/TouchEventDetector;-><init>(Lcom/arcsoft/widget/TouchEventDetector$TouchEventCallback;)V

    iput-object v2, p0, Lcom/arcsoft/widget/QuickView;->mMultiTouchDetector:Lcom/arcsoft/widget/TouchEventDetector;

    .line 241
    return-void
.end method

.method static synthetic access$000(Lcom/arcsoft/widget/QuickView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/arcsoft/widget/QuickView;->mRespondTiltEvent:Z

    return v0
.end method

.method static synthetic access$002(Lcom/arcsoft/widget/QuickView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/arcsoft/widget/QuickView;->mRespondTiltEvent:Z

    return p1
.end method

.method static synthetic access$100(Lcom/arcsoft/widget/QuickView;IIII)Z
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/arcsoft/widget/QuickView;->handleGestureCallback(IIII)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/arcsoft/widget/QuickView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/arcsoft/widget/QuickView;->mhAMPV:I

    return v0
.end method

.method static synthetic access$1102(Lcom/arcsoft/widget/QuickView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/arcsoft/widget/QuickView;->mNeedReload:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/arcsoft/widget/QuickView;)Landroid/view/SurfaceHolder;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/arcsoft/widget/QuickView;->mReviewHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/arcsoft/widget/QuickView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/arcsoft/widget/QuickView;->mReviewHolder:Landroid/view/SurfaceHolder;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/arcsoft/widget/QuickView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/arcsoft/widget/QuickView;->mReviewWidth:I

    return v0
.end method

.method static synthetic access$1302(Lcom/arcsoft/widget/QuickView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput p1, p0, Lcom/arcsoft/widget/QuickView;->mReviewWidth:I

    return p1
.end method

.method static synthetic access$1400(Lcom/arcsoft/widget/QuickView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/arcsoft/widget/QuickView;->mReviewHeight:I

    return v0
.end method

.method static synthetic access$1402(Lcom/arcsoft/widget/QuickView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput p1, p0, Lcom/arcsoft/widget/QuickView;->mReviewHeight:I

    return p1
.end method

.method static synthetic access$1500(Lcom/arcsoft/widget/QuickView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/arcsoft/widget/QuickView;->getOrientation()I

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/arcsoft/widget/QuickView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/arcsoft/widget/QuickView;->mOrientation:I

    return v0
.end method

.method static synthetic access$1602(Lcom/arcsoft/widget/QuickView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput p1, p0, Lcom/arcsoft/widget/QuickView;->mOrientation:I

    return p1
.end method

.method static synthetic access$1702(Lcom/arcsoft/widget/QuickView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput p1, p0, Lcom/arcsoft/widget/QuickView;->mRefOri:I

    return p1
.end method

.method static synthetic access$1800(Lcom/arcsoft/widget/QuickView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/arcsoft/widget/QuickView;->initAMPV()V

    return-void
.end method

.method static synthetic access$1900(Lcom/arcsoft/widget/QuickView;IIII)I
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/arcsoft/widget/QuickView;->handleAMPVCallback(IIII)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/arcsoft/widget/QuickView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/arcsoft/widget/QuickView;->mTouchMode:I

    return v0
.end method

.method static synthetic access$2000(Lcom/arcsoft/widget/QuickView;)Lcom/arcsoft/widget/QuickView$FileListCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/arcsoft/widget/QuickView;->mFileListCallback:Lcom/arcsoft/widget/QuickView$FileListCallback;

    return-object v0
.end method

.method static synthetic access$202(Lcom/arcsoft/widget/QuickView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput p1, p0, Lcom/arcsoft/widget/QuickView;->mTouchMode:I

    return p1
.end method

.method static synthetic access$2100(Lcom/arcsoft/widget/QuickView;IIIIII)I
    .registers 8
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 41
    invoke-direct/range {p0 .. p6}, Lcom/arcsoft/widget/QuickView;->handleBounceCallback(IIIIII)I

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/arcsoft/widget/QuickView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/arcsoft/widget/QuickView;->mIsPaused:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/arcsoft/widget/QuickView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/arcsoft/widget/QuickView;->mbFirstStart:Z

    return v0
.end method

.method static synthetic access$2302(Lcom/arcsoft/widget/QuickView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/arcsoft/widget/QuickView;->mbFirstStart:Z

    return p1
.end method

.method static synthetic access$2402(Lcom/arcsoft/widget/QuickView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/arcsoft/widget/QuickView;->mbFirstAutoFadeOutSet:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/arcsoft/widget/QuickView;ZZ)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/arcsoft/widget/QuickView;->showOrHideMainMenu(ZZ)V

    return-void
.end method

.method static synthetic access$2600(Lcom/arcsoft/widget/QuickView;Landroid/hardware/motion/MREvent;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/arcsoft/widget/QuickView;->tiltPan(Landroid/hardware/motion/MREvent;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/arcsoft/widget/QuickView;Landroid/hardware/motion/MREvent;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/arcsoft/widget/QuickView;->tiltZoom(Landroid/hardware/motion/MREvent;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/arcsoft/widget/QuickView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/arcsoft/widget/QuickView;->mIsViewingImage:Z

    return v0
.end method

.method static synthetic access$300(Lcom/arcsoft/widget/QuickView;Lcom/arcsoft/widget/TouchEventDetector;)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/arcsoft/widget/QuickView;->handleMultiTouchBegin(Lcom/arcsoft/widget/TouchEventDetector;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/arcsoft/widget/QuickView;Lcom/arcsoft/widget/TouchEventDetector;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/arcsoft/widget/QuickView;->handleMultiTouchEnd(Lcom/arcsoft/widget/TouchEventDetector;)V

    return-void
.end method

.method static synthetic access$500(Lcom/arcsoft/widget/QuickView;Lcom/arcsoft/widget/TouchEventDetector;)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/arcsoft/widget/QuickView;->handleMultiTouchNext(Lcom/arcsoft/widget/TouchEventDetector;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/arcsoft/widget/QuickView;II)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/arcsoft/widget/QuickView;->handleSingleKeyDown(II)V

    return-void
.end method

.method static synthetic access$700(Lcom/arcsoft/widget/QuickView;II)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/arcsoft/widget/QuickView;->handleSingleKeyMove(II)V

    return-void
.end method

.method static synthetic access$800(Lcom/arcsoft/widget/QuickView;II)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/arcsoft/widget/QuickView;->handleSingleKeyUp(II)V

    return-void
.end method

.method static synthetic access$900(Lcom/arcsoft/widget/QuickView;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/arcsoft/widget/QuickView;->mAmpvHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getOrientation()I
    .registers 4

    .prologue
    .line 1430
    iget-object v2, p0, Lcom/arcsoft/widget/QuickView;->mIBase:Lcom/arcsoft/widget/IBase;

    check-cast v2, Lcom/arcsoft/quickview/QuickViewActivity;

    invoke-virtual {v2}, Lcom/arcsoft/quickview/QuickViewActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    .line 1431
    .local v1, windowManager:Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1432
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v2

    mul-int/lit8 v2, v2, 0x5a

    rem-int/lit16 v2, v2, 0x168

    return v2
.end method

.method private handleAMPVCallback(IIII)I
    .registers 10
    .parameter "nMessage"
    .parameter "lParam"
    .parameter "wParam"
    .parameter "UserData"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 864
    packed-switch p1, :pswitch_data_138

    .line 917
    :cond_5
    :goto_5
    iget v0, p0, Lcom/arcsoft/widget/QuickView;->mhAMPV:I

    iget-object v2, p0, Lcom/arcsoft/widget/QuickView;->mState:Lcom/arcsoft/android/camera/utils/AMPV_State;

    invoke-static {v0, v2}, Lcom/arcsoft/android/camera/utils/ampv;->ampv_getState(ILcom/arcsoft/android/camera/utils/AMPV_State;)I

    .line 918
    iget-object v0, p0, Lcom/arcsoft/widget/QuickView;->mState:Lcom/arcsoft/android/camera/utils/AMPV_State;

    iget v0, v0, Lcom/arcsoft/android/camera/utils/AMPV_State;->mImgIndex:I

    iget v2, p0, Lcom/arcsoft/widget/QuickView;->mCurIndex:I

    if-eq v0, v2, :cond_45

    .line 919
    iget-object v0, p0, Lcom/arcsoft/widget/QuickView;->mState:Lcom/arcsoft/android/camera/utils/AMPV_State;

    iget v0, v0, Lcom/arcsoft/android/camera/utils/AMPV_State;->mImgIndex:I

    iput v0, p0, Lcom/arcsoft/widget/QuickView;->mCurIndex:I

    .line 920
    const-string v0, "QuickView:"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCurIndex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/arcsoft/widget/QuickView;->mCurIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/arcsoft/android/camera/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 921
    iget-object v0, p0, Lcom/arcsoft/widget/QuickView;->mIBase:Lcom/arcsoft/widget/IBase;

    if-eqz v0, :cond_45

    .line 922
    iget-object v0, p0, Lcom/arcsoft/widget/QuickView;->mIBase:Lcom/arcsoft/widget/IBase;

    const/16 v2, 0x24

    iget v3, p0, Lcom/arcsoft/widget/QuickView;->mCurIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/arcsoft/widget/IBase;->onNotify(ILjava/lang/Object;)I

    .line 925
    :cond_45
    :goto_45
    return v1

    .line 867
    :pswitch_46
    if-ne p2, v0, :cond_84

    :goto_48
    iput-boolean v0, p0, Lcom/arcsoft/widget/QuickView;->mbBrowsing:Z

    .line 868
    iget-boolean v0, p0, Lcom/arcsoft/widget/QuickView;->mbBrowsing:Z

    if-eqz v0, :cond_57

    iget-object v0, p0, Lcom/arcsoft/widget/QuickView;->mBounceView:Lcom/arcsoft/widget/BounceView;

    if-eqz v0, :cond_57

    .line 869
    iget-object v0, p0, Lcom/arcsoft/widget/QuickView;->mBounceView:Lcom/arcsoft/widget/BounceView;

    invoke-virtual {v0}, Lcom/arcsoft/widget/BounceView;->reset()V

    .line 870
    :cond_57
    const-string v0, "QuickView:"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AMPV_MSG_IMAGE_BROWSING lParam = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mFilmStripShowTime "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/arcsoft/widget/QuickView;->mFilmStripShowTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/arcsoft/android/camera/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    if-nez p2, :cond_5

    iget v0, p0, Lcom/arcsoft/widget/QuickView;->mFilmStripShowTime:I

    if-eqz v0, :cond_5

    .line 874
    iput v1, p0, Lcom/arcsoft/widget/QuickView;->mFilmStripShowTime:I

    goto :goto_5

    :cond_84
    move v0, v1

    .line 867
    goto :goto_48

    .line 878
    :pswitch_86
    const-string v0, "QuickView:"

    const-string v2, "AMPV_MSG_CLEARDATA"

    invoke-static {v0, v2}, Lcom/arcsoft/android/camera/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 881
    :pswitch_8f
    const-string v0, "QuickView:"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AMPV_MSG_IMAGE_READY lParam = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/arcsoft/android/camera/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 884
    :pswitch_a9
    const-string v0, "QuickView:"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AMPV_MSG_IMAGE_CLOSED lParam = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/arcsoft/android/camera/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_45

    .line 887
    :pswitch_c2
    if-ne p2, v0, :cond_ef

    :goto_c4
    iput-boolean v0, p0, Lcom/arcsoft/widget/QuickView;->mbDraging:Z

    .line 888
    const-string v0, "QuickView:"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AMPV_MSG_DRAGGING lParam = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/arcsoft/android/camera/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 889
    iget-object v0, p0, Lcom/arcsoft/widget/QuickView;->mIBase:Lcom/arcsoft/widget/IBase;

    if-eqz v0, :cond_5

    .line 890
    iget-object v0, p0, Lcom/arcsoft/widget/QuickView;->mIBase:Lcom/arcsoft/widget/IBase;

    const/16 v2, 0x22

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/arcsoft/widget/IBase;->onNotify(ILjava/lang/Object;)I

    goto/16 :goto_5

    :cond_ef
    move v0, v1

    .line 887
    goto :goto_c4

    .line 893
    :pswitch_f1
    const-string v2, "QuickView:"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AMPV_MSG_FILMSTRIP lParam = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/arcsoft/android/camera/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 894
    if-ne p2, v0, :cond_135

    :goto_10b
    iput-boolean v0, p0, Lcom/arcsoft/widget/QuickView;->mbFilmStrip:Z

    .line 895
    iget-boolean v0, p0, Lcom/arcsoft/widget/QuickView;->mbFilmStrip:Z

    if-eqz v0, :cond_113

    .line 896
    iput v1, p0, Lcom/arcsoft/widget/QuickView;->mFilmStripShowTime:I

    .line 898
    :cond_113
    iget-boolean v0, p0, Lcom/arcsoft/widget/QuickView;->mbFirstAutoFadeOutSet:Z

    if-eqz v0, :cond_124

    iget-boolean v0, p0, Lcom/arcsoft/widget/QuickView;->mbFilmStrip:Z

    if-nez v0, :cond_124

    .line 900
    iget v0, p0, Lcom/arcsoft/widget/QuickView;->mhAMPV:I

    const/16 v2, 0x3002

    invoke-static {v0, v2, v1}, Lcom/arcsoft/android/camera/utils/ampv;->ampv_setProp(III)I

    .line 902
    iput-boolean v1, p0, Lcom/arcsoft/widget/QuickView;->mbFirstAutoFadeOutSet:Z

    .line 904
    :cond_124
    iget-object v0, p0, Lcom/arcsoft/widget/QuickView;->mIBase:Lcom/arcsoft/widget/IBase;

    if-eqz v0, :cond_5

    .line 905
    iget-object v0, p0, Lcom/arcsoft/widget/QuickView;->mIBase:Lcom/arcsoft/widget/IBase;

    const/16 v2, 0x26

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/arcsoft/widget/IBase;->onNotify(ILjava/lang/Object;)I

    goto/16 :goto_5

    :cond_135
    move v0, v1

    .line 894
    goto :goto_10b

    .line 864
    nop

    :pswitch_data_138
    .packed-switch 0x2000
        :pswitch_8f
        :pswitch_c2
        :pswitch_f1
        :pswitch_a9
        :pswitch_46
        :pswitch_86
    .end packed-switch
.end method

.method private handleBounceCallback(IIIIII)I
    .registers 10
    .parameter "nMessage"
    .parameter "lParam"
    .parameter "imageLeft"
    .parameter "imageTop"
    .parameter "imageRight"
    .parameter "imageBottom"

    .prologue
    const/4 v2, 0x0

    .line 931
    iget-boolean v1, p0, Lcom/arcsoft/widget/QuickView;->mbBrowsing:Z

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/arcsoft/widget/QuickView;->mBounceView:Lcom/arcsoft/widget/BounceView;

    if-nez v1, :cond_a

    .line 964
    :cond_9
    :goto_9
    return v2

    .line 933
    :cond_a
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p3, p4, p5, p6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 934
    .local v0, rect:Landroid/graphics/Rect;
    packed-switch p1, :pswitch_data_32

    goto :goto_9

    .line 940
    :pswitch_13
    iget v1, p0, Lcom/arcsoft/widget/QuickView;->mTouchOpt:I

    if-eqz v1, :cond_9

    .line 942
    iget-object v1, p0, Lcom/arcsoft/widget/QuickView;->mBounceView:Lcom/arcsoft/widget/BounceView;

    invoke-virtual {v1, v0, p2}, Lcom/arcsoft/widget/BounceView;->startBounce(Landroid/graphics/Rect;I)V

    goto :goto_9

    .line 947
    :pswitch_1d
    iget-object v1, p0, Lcom/arcsoft/widget/QuickView;->mBounceView:Lcom/arcsoft/widget/BounceView;

    invoke-virtual {v1, v0}, Lcom/arcsoft/widget/BounceView;->setRect(Landroid/graphics/Rect;)V

    .line 948
    iget-object v1, p0, Lcom/arcsoft/widget/QuickView;->mBounceView:Lcom/arcsoft/widget/BounceView;

    invoke-virtual {v1, p2}, Lcom/arcsoft/widget/BounceView;->showBounce(I)V

    goto :goto_9

    .line 955
    :pswitch_28
    iget v1, p0, Lcom/arcsoft/widget/QuickView;->mTouchOpt:I

    if-eqz v1, :cond_9

    .line 959
    iget-object v1, p0, Lcom/arcsoft/widget/QuickView;->mBounceView:Lcom/arcsoft/widget/BounceView;

    invoke-virtual {v1, v0, p2}, Lcom/arcsoft/widget/BounceView;->endSingleBounce(Landroid/graphics/Rect;I)V

    goto :goto_9

    .line 934
    :pswitch_data_32
    .packed-switch 0xa73001
        :pswitch_13
        :pswitch_1d
        :pswitch_28
    .end packed-switch
.end method

.method private handleGestureCallback(IIII)Z
    .registers 13
    .parameter "nMessage"
    .parameter "lParam"
    .parameter "wParam"
    .parameter "UserData"

    .prologue
    const v2, 0x9c40

    const/4 v3, 0x1

    const/4 v7, 0x0

    .line 969
    const/4 v0, 0x0

    .line 970
    .local v0, res:Z
    packed-switch p1, :pswitch_data_b8

    :cond_9
    :goto_9
    :pswitch_9
    move v2, v0

    .line 1037
    :goto_a
    return v2

    .line 972
    :pswitch_b
    const-string v4, "QuickView:"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onGestureCallback Double_Tap iszoomed:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/arcsoft/widget/QuickView;->isZoomed()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    iget-boolean v4, p0, Lcom/arcsoft/widget/QuickView;->mIsViewingImage:Z

    if-eqz v4, :cond_9

    iget-boolean v4, p0, Lcom/arcsoft/widget/QuickView;->mbBrowsing:Z

    if-nez v4, :cond_9

    .line 976
    iget-object v4, p0, Lcom/arcsoft/widget/QuickView;->mBounceView:Lcom/arcsoft/widget/BounceView;

    if-eqz v4, :cond_3b

    iget-object v4, p0, Lcom/arcsoft/widget/QuickView;->mBounceView:Lcom/arcsoft/widget/BounceView;

    invoke-virtual {v4}, Lcom/arcsoft/widget/BounceView;->isBouncing()Z

    move-result v4

    if-nez v4, :cond_9

    .line 979
    :cond_3b
    iput-boolean v3, p0, Lcom/arcsoft/widget/QuickView;->mbDoubleTap:Z

    .line 980
    iput v7, p0, Lcom/arcsoft/widget/QuickView;->mFilmStripShowTime:I

    .line 984
    const/4 v1, 0x0

    .line 985
    .local v1, zoomlevel:I
    invoke-virtual {p0}, Lcom/arcsoft/widget/QuickView;->isZoomed()Z

    move-result v3

    if-eqz v3, :cond_71

    .line 986
    const/16 v1, -0xf

    .line 1002
    :goto_48
    const-string v2, "QuickView:"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onGestureCallback Double_Tap AMPV_CMD_Async_Zoom:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/arcsoft/android/camera/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    iget v2, p0, Lcom/arcsoft/widget/QuickView;->mhAMPV:I

    const/16 v3, 0x1002

    iget v4, p0, Lcom/arcsoft/widget/QuickView;->mOffsetX:I

    sub-int v4, p2, v4

    iget v5, p0, Lcom/arcsoft/widget/QuickView;->mOffsetY:I

    sub-int v5, p3, v5

    invoke-static {v2, v3, v1, v4, v5}, Lcom/arcsoft/android/camera/utils/ampv;->ampv_handleCommand(IIIII)I

    .line 1004
    const/4 v0, 0x1

    .line 1005
    goto :goto_9

    .line 989
    :cond_71
    iget v3, p0, Lcom/arcsoft/widget/QuickView;->mhAMPV:I

    iget-object v4, p0, Lcom/arcsoft/widget/QuickView;->mState:Lcom/arcsoft/android/camera/utils/AMPV_State;

    invoke-static {v3, v4}, Lcom/arcsoft/android/camera/utils/ampv;->ampv_getState(ILcom/arcsoft/android/camera/utils/AMPV_State;)I

    .line 990
    iget-object v3, p0, Lcom/arcsoft/widget/QuickView;->mState:Lcom/arcsoft/android/camera/utils/AMPV_State;

    iget v3, v3, Lcom/arcsoft/android/camera/utils/AMPV_State;->mZoom:I

    if-lt v3, v2, :cond_80

    .line 992
    const/4 v0, 0x1

    .line 993
    goto :goto_9

    .line 1000
    :cond_80
    iget-object v3, p0, Lcom/arcsoft/widget/QuickView;->mState:Lcom/arcsoft/android/camera/utils/AMPV_State;

    iget v3, v3, Lcom/arcsoft/android/camera/utils/AMPV_State;->mZoom:I

    mul-int/lit8 v3, v3, 0x2

    if-le v3, v2, :cond_8a

    move v1, v2

    :goto_89
    goto :goto_48

    :cond_8a
    iget-object v2, p0, Lcom/arcsoft/widget/QuickView;->mState:Lcom/arcsoft/android/camera/utils/AMPV_State;

    iget v2, v2, Lcom/arcsoft/android/camera/utils/AMPV_State;->mZoom:I

    mul-int/lit8 v1, v2, 0x2

    goto :goto_89

    .line 1008
    .end local v1           #zoomlevel:I
    :pswitch_91
    const-string v2, "QuickView:"

    const-string v4, "onGestureCallback Single_Tap_Confirmed"

    invoke-static {v2, v4}, Lcom/arcsoft/android/camera/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1009
    iput v7, p0, Lcom/arcsoft/widget/QuickView;->mFilmStripShowTime:I

    .line 1010
    iget-boolean v2, p0, Lcom/arcsoft/widget/QuickView;->mbDraging:Z

    if-nez v2, :cond_a2

    iget-boolean v2, p0, Lcom/arcsoft/widget/QuickView;->mbCloseFSinTouchDown:Z

    if-eqz v2, :cond_a5

    :cond_a2
    move v2, v3

    .line 1011
    goto/16 :goto_a

    .line 1015
    :cond_a5
    invoke-direct {p0, v3}, Lcom/arcsoft/widget/QuickView;->switchMenuState(Z)V

    .line 1018
    const/4 v0, 0x1

    .line 1019
    goto/16 :goto_9

    .line 1021
    :pswitch_ab
    invoke-virtual {p0}, Lcom/arcsoft/widget/QuickView;->getQuickViewActivity()Lcom/arcsoft/quickview/QuickViewActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/arcsoft/quickview/QuickViewActivity;->getMenu()Lcom/arcsoft/widget/CustomizedMenu;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/arcsoft/widget/CustomizedMenu;->hideMenu(Z)V

    goto/16 :goto_9

    .line 970
    :pswitch_data_b8
    .packed-switch 0x1
        :pswitch_b
        :pswitch_ab
        :pswitch_9
        :pswitch_91
    .end packed-switch
.end method

.method private handleMultiTouchBegin(Lcom/arcsoft/widget/TouchEventDetector;)Z
    .registers 7
    .parameter "detector"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1043
    iget-object v0, p0, Lcom/arcsoft/widget/QuickView;->mBounceView:Lcom/arcsoft/widget/BounceView;

    iget-boolean v0, v0, Lcom/arcsoft/widget/BounceView;->mbSingleZoomMode:Z

    if-ne v4, v0, :cond_9

    .line 1069
    :goto_8
    return v3

    .line 1047
    :cond_9
    invoke-virtual {p1}, Lcom/arcsoft/widget/TouchEventDetector;->getCenterX()I

    move-result v0

    iput v0, p0, Lcom/arcsoft/widget/QuickView;->mTiltZoomCenterX:I

    .line 1048
    invoke-virtual {p1}, Lcom/arcsoft/widget/TouchEventDetector;->getCenterY()I

    move-result v0

    iput v0, p0, Lcom/arcsoft/widget/QuickView;->mTiltZoomCenterY:I

    .line 1049
    iget-object v0, p0, Lcom/arcsoft/widget/QuickView;->mIBase:Lcom/arcsoft/widget/IBase;

    check-cast v0, Lcom/arcsoft/quickview/QuickViewActivity;

    invoke-virtual {v0}, Lcom/arcsoft/quickview/QuickViewActivity;->getMenu()Lcom/arcsoft/widget/CustomizedMenu;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/arcsoft/widget/CustomizedMenu;->hideMenu(Z)V

    .line 1050
    const-string v0, "QuickView:"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnMultiTouchBegin mTiltZoomCenterX="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/arcsoft/widget/QuickView;->mTiltZoomCenterX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mTiltZoomCenterY="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/arcsoft/widget/QuickView;->mTiltZoomCenterY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/arcsoft/android/camera/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1051
    iget-boolean v0, p0, Lcom/arcsoft/widget/QuickView;->mbFilmStrip:Z

    if-eqz v0, :cond_4d

    .line 1053
    const/4 v0, 0x2

    iput v0, p0, Lcom/arcsoft/widget/QuickView;->mTouchOpt:I

    .line 1056
    :cond_4d
    iget-object v0, p0, Lcom/arcsoft/widget/QuickView;->mAmpvHandler:Landroid/os/Handler;

    if-eqz v0, :cond_58

    .line 1057
    iget-object v0, p0, Lcom/arcsoft/widget/QuickView;->mAmpvHandler:Landroid/os/Handler;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1058
    :cond_58
    iget-boolean v0, p0, Lcom/arcsoft/widget/QuickView;->mbDragOperation:Z

    if-nez v0, :cond_65

    .line 1060
    iget v0, p0, Lcom/arcsoft/widget/QuickView;->mhAMPV:I

    const/16 v1, 0x1005

    invoke-static {v0, v1, v3, v3, v3}, Lcom/arcsoft/android/camera/utils/ampv;->ampv_handleCommand(IIIII)I

    .line 1061
    iput-boolean v4, p0, Lcom/arcsoft/widget/QuickView;->mbDragOperation:Z

    .line 1063
    :cond_65
    iput v3, p0, Lcom/arcsoft/widget/QuickView;->mFilmStripShowTime:I

    .line 1064
    invoke-virtual {p1}, Lcom/arcsoft/widget/TouchEventDetector;->getRotateDirection()I

    move-result v0

    iput v0, p0, Lcom/arcsoft/widget/QuickView;->mRotateDirection:I

    .line 1065
    invoke-virtual {p1}, Lcom/arcsoft/widget/TouchEventDetector;->getCurrentSpan()F

    move-result v0

    iput v0, p0, Lcom/arcsoft/widget/QuickView;->mCurrentSpan:F

    .line 1067
    iput-boolean v4, p0, Lcom/arcsoft/widget/QuickView;->mRespondTiltEvent:Z

    goto :goto_8
.end method

.method private handleMultiTouchEnd(Lcom/arcsoft/widget/TouchEventDetector;)V
    .registers 7
    .parameter "detector"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1075
    iget-object v0, p0, Lcom/arcsoft/widget/QuickView;->mBounceView:Lcom/arcsoft/widget/BounceView;

    iget-boolean v0, v0, Lcom/arcsoft/widget/BounceView;->mbSingleZoomMode:Z

    if-ne v4, v0, :cond_9

    .line 1092
    :goto_8
    return-void

    .line 1079
    :cond_9
    invoke-virtual {p1}, Lcom/arcsoft/widget/TouchEventDetector;->getCenterX()I

    move-result v0

    iput v0, p0, Lcom/arcsoft/widget/QuickView;->mTiltZoomCenterX:I

    .line 1080
    invoke-virtual {p1}, Lcom/arcsoft/widget/TouchEventDetector;->getCenterY()I

    move-result v0

    iput v0, p0, Lcom/arcsoft/widget/QuickView;->mTiltZoomCenterY:I

    .line 1081
    const-string v0, "QuickView:"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnMultiTouchEnd mTiltZoomCenterX="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/arcsoft/widget/QuickView;->mTiltZoomCenterX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mTiltZoomCenterY="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/arcsoft/widget/QuickView;->mTiltZoomCenterY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/arcsoft/android/camera/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1082
    iput v3, p0, Lcom/arcsoft/widget/QuickView;->mTouchOpt:I

    .line 1083
    iput-boolean v3, p0, Lcom/arcsoft/widget/QuickView;->mbRotateFlag:Z

    .line 1085
    iget-object v0, p0, Lcom/arcsoft/widget/QuickView;->mBounceView:Lcom/arcsoft/widget/BounceView;

    if-eqz v0, :cond_55

    iget-object v0, p0, Lcom/arcsoft/widget/QuickView;->mBounceView:Lcom/arcsoft/widget/BounceView;

    invoke-virtual {v0}, Lcom/arcsoft/widget/BounceView;->isBouncingBack()Z

    move-result v0

    if-nez v0, :cond_55

    .line 1087
    iget-object v0, p0, Lcom/arcsoft/widget/QuickView;->mBounceView:Lcom/arcsoft/widget/BounceView;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v3, v3, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v1, v3}, Lcom/arcsoft/widget/BounceView;->endAllBounce(Landroid/graphics/Rect;Z)V

    .line 1090
    :cond_55
    iput-boolean v4, p0, Lcom/arcsoft/widget/QuickView;->mRespondTiltEvent:Z

    .line 1091
    iget-object v0, p0, Lcom/arcsoft/widget/QuickView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_8
.end method

.method private handleMultiTouchNext(Lcom/arcsoft/widget/TouchEventDetector;)Z
    .registers 16
    .parameter "detector"

    .prologue
    const/16 v13, 0x32

    const/4 v6, 0x1

    const/high16 v12, 0x3f80

    const/4 v5, 0x0

    .line 1097
    iget-object v7, p0, Lcom/arcsoft/widget/QuickView;->mBounceView:Lcom/arcsoft/widget/BounceView;

    if-eqz v7, :cond_12

    iget-object v7, p0, Lcom/arcsoft/widget/QuickView;->mBounceView:Lcom/arcsoft/widget/BounceView;

    iget-boolean v7, v7, Lcom/arcsoft/widget/BounceView;->mbSingleZoomMode:Z

    if-ne v6, v7, :cond_12

    move v1, v5

    .line 1187
    :cond_11
    :goto_11
    return v1

    .line 1101
    :cond_12
    const/4 v1, 0x0

    .line 1102
    .local v1, res:Z
    const/4 v2, 0x0

    .line 1103
    .local v2, rotate:I
    invoke-virtual {p1}, Lcom/arcsoft/widget/TouchEventDetector;->getCenterX()I

    move-result v7

    iput v7, p0, Lcom/arcsoft/widget/QuickView;->mTiltZoomCenterX:I

    .line 1104
    invoke-virtual {p1}, Lcom/arcsoft/widget/TouchEventDetector;->getCenterY()I

    move-result v7

    iput v7, p0, Lcom/arcsoft/widget/QuickView;->mTiltZoomCenterY:I

    .line 1105
    iget-boolean v7, p0, Lcom/arcsoft/widget/QuickView;->mbRotateFlag:Z

    if-nez v7, :cond_2c

    iget-boolean v7, p0, Lcom/arcsoft/widget/QuickView;->mbBrowsing:Z

    if-nez v7, :cond_2c

    iget-boolean v7, p0, Lcom/arcsoft/widget/QuickView;->mbDragOperation:Z

    if-nez v7, :cond_5f

    .line 1107
    :cond_2c
    const-string v5, "QuickView:"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleMultiTouchNext mbRotateFlag "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/arcsoft/widget/QuickView;->mbRotateFlag:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mbBrowsing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/arcsoft/widget/QuickView;->mbBrowsing:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mbDragOperation "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/arcsoft/widget/QuickView;->mbDragOperation:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/arcsoft/android/camera/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    .line 1110
    :cond_5f
    invoke-virtual {p0}, Lcom/arcsoft/widget/QuickView;->isZoomed()Z

    move-result v7

    if-nez v7, :cond_99

    iget v7, p0, Lcom/arcsoft/widget/QuickView;->beforePanX:I

    iget v8, p0, Lcom/arcsoft/widget/QuickView;->downX:I

    if-ne v7, v8, :cond_71

    iget v7, p0, Lcom/arcsoft/widget/QuickView;->beforePanY:I

    iget v8, p0, Lcom/arcsoft/widget/QuickView;->downY:I

    if-eq v7, v8, :cond_99

    :cond_71
    iget v7, p0, Lcom/arcsoft/widget/QuickView;->beforePanX:I

    if-nez v7, :cond_79

    iget v7, p0, Lcom/arcsoft/widget/QuickView;->beforePanY:I

    if-eqz v7, :cond_99

    .line 1112
    :cond_79
    const-string v7, "QuickView:"

    const-string v8, "handleMultiTouchNext pan"

    invoke-static {v7, v8}, Lcom/arcsoft/android/camera/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1113
    iget v7, p0, Lcom/arcsoft/widget/QuickView;->mhAMPV:I

    const/16 v8, 0x1000

    iget v9, p0, Lcom/arcsoft/widget/QuickView;->downX:I

    iget v10, p0, Lcom/arcsoft/widget/QuickView;->beforePanX:I

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/arcsoft/widget/QuickView;->downY:I

    iget v11, p0, Lcom/arcsoft/widget/QuickView;->beforePanY:I

    sub-int/2addr v10, v11

    invoke-static {v7, v8, v5, v9, v10}, Lcom/arcsoft/android/camera/utils/ampv;->ampv_handleCommand(IIIII)I

    .line 1114
    iget v7, p0, Lcom/arcsoft/widget/QuickView;->downX:I

    iput v7, p0, Lcom/arcsoft/widget/QuickView;->beforePanX:I

    .line 1115
    iget v7, p0, Lcom/arcsoft/widget/QuickView;->downY:I

    iput v7, p0, Lcom/arcsoft/widget/QuickView;->beforePanY:I

    .line 1132
    :cond_99
    const/4 v7, 0x2

    iput v7, p0, Lcom/arcsoft/widget/QuickView;->mTouchOpt:I

    .line 1133
    iget v7, p0, Lcom/arcsoft/widget/QuickView;->mTouchOpt:I

    packed-switch v7, :pswitch_data_19a

    goto/16 :goto_11

    .line 1135
    :pswitch_a3
    iget-boolean v5, p0, Lcom/arcsoft/widget/QuickView;->mbFilmStrip:Z

    if-eqz v5, :cond_aa

    move v1, v6

    .line 1136
    goto/16 :goto_11

    .line 1138
    :cond_aa
    if-gez v2, :cond_ae

    .line 1139
    add-int/lit16 v2, v2, 0x168

    .line 1140
    :cond_ae
    iget v5, p0, Lcom/arcsoft/widget/QuickView;->mhAMPV:I

    const/16 v6, 0x1009

    invoke-virtual {p1}, Lcom/arcsoft/widget/TouchEventDetector;->getCenterX()I

    move-result v7

    iget v8, p0, Lcom/arcsoft/widget/QuickView;->mOffsetX:I

    sub-int/2addr v7, v8

    invoke-virtual {p1}, Lcom/arcsoft/widget/TouchEventDetector;->getCenterY()I

    move-result v8

    iget v9, p0, Lcom/arcsoft/widget/QuickView;->mOffsetY:I

    sub-int/2addr v8, v9

    invoke-static {v5, v6, v2, v7, v8}, Lcom/arcsoft/android/camera/utils/ampv;->ampv_handleCommand(IIIII)I

    .line 1141
    const-string v5, "QuickView:"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AMPV_CMD_Rotate_Image, rotate degree = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/arcsoft/android/camera/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1142
    const/4 v1, 0x1

    .line 1143
    goto/16 :goto_11

    .line 1145
    :pswitch_de
    iget-boolean v7, p0, Lcom/arcsoft/widget/QuickView;->mbBrowsing:Z

    if-nez v7, :cond_11

    .line 1149
    invoke-virtual {p1}, Lcom/arcsoft/widget/TouchEventDetector;->getZoomScale()F

    move-result v3

    .line 1151
    .local v3, scale:F
    cmpl-float v7, v3, v12

    if-eqz v7, :cond_11

    .line 1152
    iget v7, p0, Lcom/arcsoft/widget/QuickView;->mhAMPV:I

    iget-object v8, p0, Lcom/arcsoft/widget/QuickView;->mState:Lcom/arcsoft/android/camera/utils/AMPV_State;

    invoke-static {v7, v8}, Lcom/arcsoft/android/camera/utils/ampv;->ampv_getState(ILcom/arcsoft/android/camera/utils/AMPV_State;)I

    .line 1153
    iget-object v7, p0, Lcom/arcsoft/widget/QuickView;->mState:Lcom/arcsoft/android/camera/utils/AMPV_State;

    iget v4, v7, Lcom/arcsoft/android/camera/utils/AMPV_State;->mZoom:I

    .line 1155
    .local v4, zoomlevel:I
    cmpg-float v7, v3, v12

    if-gez v7, :cond_18e

    iget-object v7, p0, Lcom/arcsoft/widget/QuickView;->mState:Lcom/arcsoft/android/camera/utils/AMPV_State;

    iget-boolean v7, v7, Lcom/arcsoft/android/camera/utils/AMPV_State;->mbIsFitIn:Z

    if-eqz v7, :cond_18e

    .line 1157
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1158
    .local v0, rect:Landroid/graphics/Rect;
    iget v6, p0, Lcom/arcsoft/widget/QuickView;->mhAMPV:I

    const v7, 0xa6202d

    invoke-static {v6, v7, v0}, Lcom/arcsoft/android/camera/utils/ampv;->ampv_getProp(IILjava/lang/Object;)I

    .line 1159
    iget-object v6, p0, Lcom/arcsoft/widget/QuickView;->mBounceView:Lcom/arcsoft/widget/BounceView;

    invoke-virtual {v6, v0}, Lcom/arcsoft/widget/BounceView;->startAllBounce(Landroid/graphics/Rect;)V

    .line 1166
    .end local v0           #rect:Landroid/graphics/Rect;
    :goto_111
    iget-boolean v6, p0, Lcom/arcsoft/widget/QuickView;->mIsViewingImage:Z

    if-eqz v6, :cond_11

    .line 1171
    cmpg-float v6, v3, v12

    if-gez v6, :cond_11f

    iget-object v6, p0, Lcom/arcsoft/widget/QuickView;->mState:Lcom/arcsoft/android/camera/utils/AMPV_State;

    iget-boolean v6, v6, Lcom/arcsoft/android/camera/utils/AMPV_State;->mbIsFitIn:Z

    if-eqz v6, :cond_128

    :cond_11f
    cmpl-float v6, v3, v12

    if-lez v6, :cond_18b

    const v6, 0x9c40

    if-ge v4, v6, :cond_18b

    .line 1172
    :cond_128
    int-to-float v6, v4

    mul-float/2addr v6, v3

    float-to-int v4, v6

    .line 1173
    const-string v6, "QuickView:"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ampv.AMPV_CMD_Zoom, zoomlevel = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "mState.mbIsFitIn"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/arcsoft/widget/QuickView;->mState:Lcom/arcsoft/android/camera/utils/AMPV_State;

    iget-boolean v8, v8, Lcom/arcsoft/android/camera/utils/AMPV_State;->mbIsFitIn:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/arcsoft/android/camera/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1174
    cmpl-float v6, v3, v12

    if-lez v6, :cond_15d

    iget-object v6, p0, Lcom/arcsoft/widget/QuickView;->mState:Lcom/arcsoft/android/camera/utils/AMPV_State;

    iget v6, v6, Lcom/arcsoft/android/camera/utils/AMPV_State;->mZoom:I

    sub-int v6, v4, v6

    if-gt v6, v13, :cond_168

    :cond_15d
    cmpg-float v6, v3, v12

    if-gez v6, :cond_18b

    iget-object v6, p0, Lcom/arcsoft/widget/QuickView;->mState:Lcom/arcsoft/android/camera/utils/AMPV_State;

    iget v6, v6, Lcom/arcsoft/android/camera/utils/AMPV_State;->mZoom:I

    sub-int/2addr v6, v4

    if-le v6, v13, :cond_18b

    .line 1176
    :cond_168
    iput-boolean v5, p0, Lcom/arcsoft/widget/QuickView;->mRespondTiltEvent:Z

    .line 1177
    iget-object v6, p0, Lcom/arcsoft/widget/QuickView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1178
    iget-object v6, p0, Lcom/arcsoft/widget/QuickView;->mHandler:Landroid/os/Handler;

    const-wide/16 v7, 0x0

    invoke-virtual {v6, v5, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1180
    iget v5, p0, Lcom/arcsoft/widget/QuickView;->mhAMPV:I

    const/16 v6, 0x1001

    invoke-virtual {p1}, Lcom/arcsoft/widget/TouchEventDetector;->getCenterX()I

    move-result v7

    iget v8, p0, Lcom/arcsoft/widget/QuickView;->mOffsetX:I

    sub-int/2addr v7, v8

    invoke-virtual {p1}, Lcom/arcsoft/widget/TouchEventDetector;->getCenterY()I

    move-result v8

    iget v9, p0, Lcom/arcsoft/widget/QuickView;->mOffsetY:I

    sub-int/2addr v8, v9

    invoke-static {v5, v6, v4, v7, v8}, Lcom/arcsoft/android/camera/utils/ampv;->ampv_handleCommand(IIIII)I

    .line 1183
    :cond_18b
    const/4 v1, 0x1

    goto/16 :goto_11

    .line 1163
    :cond_18e
    iget-object v7, p0, Lcom/arcsoft/widget/QuickView;->mBounceView:Lcom/arcsoft/widget/BounceView;

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v5, v5, v5, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v7, v8, v6}, Lcom/arcsoft/widget/BounceView;->endAllBounce(Landroid/graphics/Rect;Z)V

    goto/16 :goto_111

    .line 1133
    :pswitch_data_19a
    .packed-switch 0x1
        :pswitch_a3
        :pswitch_de
    .end packed-switch
.end method

.method private handleSingleKeyDown(II)V
    .registers 9
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v5, 0x1

    .line 1191
    const/4 v0, 0x3

    iput v0, p0, Lcom/arcsoft/widget/QuickView;->mTouchOpt:I

    .line 1192
    iput p1, p0, Lcom/arcsoft/widget/QuickView;->beforePanX:I

    .line 1193
    iput p2, p0, Lcom/arcsoft/widget/QuickView;->beforePanY:I

    .line 1194
    iput p1, p0, Lcom/arcsoft/widget/QuickView;->downX:I

    .line 1195
    iput p2, p0, Lcom/arcsoft/widget/QuickView;->downY:I

    .line 1196
    const-string v0, "QuickView:"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSingleKeyDown: mbFilmStrip "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/arcsoft/widget/QuickView;->mbFilmStrip:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mFilmStripShowTime "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/arcsoft/widget/QuickView;->mFilmStripShowTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/arcsoft/android/camera/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1197
    iget-boolean v0, p0, Lcom/arcsoft/widget/QuickView;->mbFilmStrip:Z

    iput-boolean v0, p0, Lcom/arcsoft/widget/QuickView;->mbCloseFSinTouchDown:Z

    .line 1201
    iput-boolean v5, p0, Lcom/arcsoft/widget/QuickView;->mbDragOperation:Z

    .line 1202
    iget v0, p0, Lcom/arcsoft/widget/QuickView;->mhAMPV:I

    const/16 v1, 0x1005

    const/4 v2, 0x0

    iget v3, p0, Lcom/arcsoft/widget/QuickView;->mOffsetX:I

    sub-int v3, p1, v3

    iget v4, p0, Lcom/arcsoft/widget/QuickView;->mOffsetY:I

    sub-int v4, p2, v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/arcsoft/android/camera/utils/ampv;->ampv_handleCommand(IIIII)I

    .line 1203
    iget-object v0, p0, Lcom/arcsoft/widget/QuickView;->mBounceView:Lcom/arcsoft/widget/BounceView;

    if-eqz v0, :cond_51

    .line 1204
    iget-object v0, p0, Lcom/arcsoft/widget/QuickView;->mBounceView:Lcom/arcsoft/widget/BounceView;

    invoke-virtual {v0, p1, p2}, Lcom/arcsoft/widget/BounceView;->actionDown(II)V

    .line 1205
    :cond_51
    iput-boolean v5, p0, Lcom/arcsoft/widget/QuickView;->mRespondTiltEvent:Z

    .line 1206
    return-void
.end method

.method private handleSingleKeyMove(II)V
    .registers 9
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x5

    const/4 v5, 0x0

    .line 1209
    iget-boolean v1, p0, Lcom/arcsoft/widget/QuickView;->mbDoubleTap:Z

    if-ne v1, v3, :cond_8

    .line 1258
    :cond_7
    :goto_7
    return-void

    .line 1226
    :cond_8
    const/4 v0, 0x0

    .line 1230
    .local v0, bPanMove:Z
    invoke-virtual {p0}, Lcom/arcsoft/widget/QuickView;->isZoomed()Z

    move-result v1

    if-eqz v1, :cond_23

    iget v1, p0, Lcom/arcsoft/widget/QuickView;->beforePanX:I

    sub-int v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v1, v2, :cond_27

    iget v1, p0, Lcom/arcsoft/widget/QuickView;->beforePanY:I

    sub-int v1, p2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v1, v2, :cond_27

    :cond_23
    iget-boolean v1, p0, Lcom/arcsoft/widget/QuickView;->mbBrowsing:Z

    if-eqz v1, :cond_5b

    .line 1232
    :cond_27
    const/4 v0, 0x1

    .line 1233
    invoke-virtual {p0}, Lcom/arcsoft/widget/QuickView;->isZoomed()Z

    move-result v1

    if-eqz v1, :cond_37

    .line 1234
    iget-object v1, p0, Lcom/arcsoft/widget/QuickView;->mBounceView:Lcom/arcsoft/widget/BounceView;

    if-eqz v1, :cond_37

    .line 1235
    iget-object v1, p0, Lcom/arcsoft/widget/QuickView;->mBounceView:Lcom/arcsoft/widget/BounceView;

    invoke-virtual {v1, p1, p2}, Lcom/arcsoft/widget/BounceView;->actionMove(II)V

    .line 1249
    :cond_37
    :goto_37
    if-ne v0, v3, :cond_7

    .line 1250
    iget v1, p0, Lcom/arcsoft/widget/QuickView;->mhAMPV:I

    const/16 v2, 0x1000

    iget v3, p0, Lcom/arcsoft/widget/QuickView;->beforePanX:I

    sub-int v3, p1, v3

    iget v4, p0, Lcom/arcsoft/widget/QuickView;->beforePanY:I

    sub-int v4, p2, v4

    invoke-static {v1, v2, v5, v3, v4}, Lcom/arcsoft/android/camera/utils/ampv;->ampv_handleCommand(IIIII)I

    .line 1251
    iput p1, p0, Lcom/arcsoft/widget/QuickView;->beforePanX:I

    .line 1252
    iput p2, p0, Lcom/arcsoft/widget/QuickView;->beforePanY:I

    .line 1254
    iput-boolean v5, p0, Lcom/arcsoft/widget/QuickView;->mRespondTiltEvent:Z

    .line 1255
    iget-object v1, p0, Lcom/arcsoft/widget/QuickView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1256
    iget-object v1, p0, Lcom/arcsoft/widget/QuickView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_7

    .line 1241
    :cond_5b
    iget v1, p0, Lcom/arcsoft/widget/QuickView;->beforePanX:I

    sub-int v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v1, v2, :cond_6f

    iget v1, p0, Lcom/arcsoft/widget/QuickView;->beforePanY:I

    sub-int v1, p2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-lt v1, v2, :cond_37

    .line 1243
    :cond_6f
    const/4 v0, 0x1

    .line 1244
    iget-object v1, p0, Lcom/arcsoft/widget/QuickView;->mBounceView:Lcom/arcsoft/widget/BounceView;

    if-eqz v1, :cond_37

    .line 1245
    iget-object v1, p0, Lcom/arcsoft/widget/QuickView;->mBounceView:Lcom/arcsoft/widget/BounceView;

    invoke-virtual {v1, p1, p2}, Lcom/arcsoft/widget/BounceView;->actionMove(II)V

    goto :goto_37
.end method

.method private handleSingleKeyUp(II)V
    .registers 10
    .parameter "x"
    .parameter "y"

    .prologue
    const/16 v6, 0x1005

    const/4 v3, 0x5

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1266
    iput v4, p0, Lcom/arcsoft/widget/QuickView;->mTouchOpt:I

    .line 1267
    iget-boolean v0, p0, Lcom/arcsoft/widget/QuickView;->mbDoubleTap:Z

    if-ne v0, v5, :cond_1e

    .line 1268
    iput-boolean v4, p0, Lcom/arcsoft/widget/QuickView;->mbDoubleTap:Z

    .line 1289
    :goto_d
    iput-boolean v5, p0, Lcom/arcsoft/widget/QuickView;->mRespondTiltEvent:Z

    .line 1290
    iget-object v0, p0, Lcom/arcsoft/widget/QuickView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1291
    iget-object v0, p0, Lcom/arcsoft/widget/QuickView;->mBounceView:Lcom/arcsoft/widget/BounceView;

    if-eqz v0, :cond_1d

    .line 1292
    iget-object v0, p0, Lcom/arcsoft/widget/QuickView;->mBounceView:Lcom/arcsoft/widget/BounceView;

    invoke-virtual {v0}, Lcom/arcsoft/widget/BounceView;->actionUp()V

    .line 1293
    :cond_1d
    return-void

    .line 1270
    :cond_1e
    const-string v0, "QuickView:"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSingleKeyUp: mbDragOperation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/arcsoft/widget/QuickView;->mbDragOperation:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/arcsoft/android/camera/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1272
    iput p1, p0, Lcom/arcsoft/widget/QuickView;->upX:I

    .line 1273
    iput p2, p0, Lcom/arcsoft/widget/QuickView;->upY:I

    .line 1274
    iget v0, p0, Lcom/arcsoft/widget/QuickView;->downX:I

    sub-int v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, v3, :cond_58

    iget v0, p0, Lcom/arcsoft/widget/QuickView;->downY:I

    sub-int v0, p2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, v3, :cond_58

    .line 1276
    iget v0, p0, Lcom/arcsoft/widget/QuickView;->downX:I

    iput v0, p0, Lcom/arcsoft/widget/QuickView;->upX:I

    .line 1277
    iget v0, p0, Lcom/arcsoft/widget/QuickView;->downY:I

    iput v0, p0, Lcom/arcsoft/widget/QuickView;->upY:I

    .line 1280
    :cond_58
    iput v4, p0, Lcom/arcsoft/widget/QuickView;->beforePanX:I

    .line 1281
    iput v4, p0, Lcom/arcsoft/widget/QuickView;->beforePanY:I

    .line 1282
    iget-boolean v0, p0, Lcom/arcsoft/widget/QuickView;->mbDragOperation:Z

    if-nez v0, :cond_65

    .line 1283
    iget v0, p0, Lcom/arcsoft/widget/QuickView;->mhAMPV:I

    invoke-static {v0, v6, v4, v4, v4}, Lcom/arcsoft/android/camera/utils/ampv;->ampv_handleCommand(IIIII)I

    .line 1285
    :cond_65
    iget v0, p0, Lcom/arcsoft/widget/QuickView;->mhAMPV:I

    iget v1, p0, Lcom/arcsoft/widget/QuickView;->upX:I

    iget v2, p0, Lcom/arcsoft/widget/QuickView;->mOffsetX:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/arcsoft/widget/QuickView;->upY:I

    iget v3, p0, Lcom/arcsoft/widget/QuickView;->mOffsetY:I

    sub-int/2addr v2, v3

    invoke-static {v0, v6, v5, v1, v2}, Lcom/arcsoft/android/camera/utils/ampv;->ampv_handleCommand(IIIII)I

    .line 1286
    iput-boolean v4, p0, Lcom/arcsoft/widget/QuickView;->mbDragOperation:Z

    goto :goto_d
.end method

.method private initAMPV()V
    .registers 12

    .prologue
    const/4 v3, 0x0

    .line 670
    iget v0, p0, Lcom/arcsoft/widget/QuickView;->mhAMPV:I

    if-nez v0, :cond_a0

    .line 673
    const-string v0, "QuickView:"

    const-string v1, "initAMPV ampv_create"

    invoke-static {v0, v1}, Lcom/arcsoft/android/camera/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    iget-object v0, p0, Lcom/arcsoft/widget/QuickView;->mAMPVBuffer:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1c

    .line 675
    iget v0, p0, Lcom/arcsoft/widget/QuickView;->mReviewWidth:I

    iget v1, p0, Lcom/arcsoft/widget/QuickView;->mReviewHeight:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/arcsoft/widget/QuickView;->mAMPVBuffer:Landroid/graphics/Bitmap;

    .line 676
    :cond_1c
    iget v0, p0, Lcom/arcsoft/widget/QuickView;->mhAMCM:I

    if-nez v0, :cond_26

    .line 677
    invoke-static {}, Lcom/arcsoft/android/camera/utils/JNI_UTILS;->CreateAMCM()I

    move-result v0

    iput v0, p0, Lcom/arcsoft/widget/QuickView;->mhAMCM:I

    .line 678
    :cond_26
    iget v0, p0, Lcom/arcsoft/widget/QuickView;->mhAMCM:I

    invoke-static {v0}, Lcom/arcsoft/android/camera/utils/ampv;->ampv_create(I)I

    move-result v0

    iput v0, p0, Lcom/arcsoft/widget/QuickView;->mhAMPV:I

    .line 679
    iget v0, p0, Lcom/arcsoft/widget/QuickView;->mhAMPV:I

    if-eqz v0, :cond_95

    .line 681
    new-instance v10, Lcom/arcsoft/widget/QuickView$5;

    invoke-direct {v10, p0}, Lcom/arcsoft/widget/QuickView$5;-><init>(Lcom/arcsoft/widget/QuickView;)V

    .line 688
    .local v10, ampvNotifyCallback:Lcom/arcsoft/android/camera/utils/ampv$ampv_NotifyCallback;
    new-instance v7, Lcom/arcsoft/widget/QuickView$6;

    invoke-direct {v7, p0}, Lcom/arcsoft/widget/QuickView$6;-><init>(Lcom/arcsoft/widget/QuickView;)V

    .line 698
    .local v7, ampvGetThumbCallback:Lcom/arcsoft/android/camera/utils/ampv$ampv_GetThumbCallback;
    new-instance v6, Lcom/arcsoft/widget/QuickView$7;

    invoke-direct {v6, p0}, Lcom/arcsoft/widget/QuickView$7;-><init>(Lcom/arcsoft/widget/QuickView;)V

    .line 736
    .local v6, ampvFileListCallback:Lcom/arcsoft/android/camera/utils/ampv$ampv_FileListCallback;
    new-instance v8, Lcom/arcsoft/widget/QuickView$8;

    invoke-direct {v8, p0}, Lcom/arcsoft/widget/QuickView$8;-><init>(Lcom/arcsoft/widget/QuickView;)V

    .line 747
    .local v8, bounceCallback:Lcom/arcsoft/android/camera/utils/ampv$ampv_BounceNotifyCallback;
    iget v0, p0, Lcom/arcsoft/widget/QuickView;->mhAMPV:I

    iget v1, p0, Lcom/arcsoft/widget/QuickView;->mReviewWidth:I

    iget v2, p0, Lcom/arcsoft/widget/QuickView;->mReviewHeight:I

    iget-boolean v4, p0, Lcom/arcsoft/widget/QuickView;->mIsViewingImage:Z

    if-eqz v4, :cond_96

    move v4, v3

    :goto_51
    iget-object v5, p0, Lcom/arcsoft/widget/QuickView;->mAMPVBuffer:Landroid/graphics/Bitmap;

    invoke-static/range {v0 .. v5}, Lcom/arcsoft/android/camera/utils/ampv;->ampv_init(IIIIILandroid/graphics/Bitmap;)I

    .line 748
    iget v0, p0, Lcom/arcsoft/widget/QuickView;->mhAMPV:I

    iget-object v1, p0, Lcom/arcsoft/widget/QuickView;->mReviewHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/arcsoft/android/camera/utils/ampv;->ampv_setDisplaySurface(ILandroid/view/Surface;)I

    .line 749
    iget v4, p0, Lcom/arcsoft/widget/QuickView;->mhAMPV:I

    iget v9, p0, Lcom/arcsoft/widget/QuickView;->mhAMPV:I

    move-object v5, v10

    invoke-static/range {v4 .. v9}, Lcom/arcsoft/android/camera/utils/ampv;->ampv_setCallbacks(ILcom/arcsoft/android/camera/utils/ampv$ampv_NotifyCallback;Lcom/arcsoft/android/camera/utils/ampv$ampv_FileListCallback;Lcom/arcsoft/android/camera/utils/ampv$ampv_GetThumbCallback;Lcom/arcsoft/android/camera/utils/ampv$ampv_BounceNotifyCallback;I)V

    .line 751
    iget-boolean v0, p0, Lcom/arcsoft/widget/QuickView;->mbFirstStart:Z

    if-eqz v0, :cond_98

    .line 752
    const/16 v0, 0x64

    iput v0, p0, Lcom/arcsoft/widget/QuickView;->mFilmStripShowTime:I

    .line 756
    :goto_71
    invoke-direct {p0}, Lcom/arcsoft/widget/QuickView;->loadAMPVFileList()I

    .line 757
    iget-object v0, p0, Lcom/arcsoft/widget/QuickView;->mIBase:Lcom/arcsoft/widget/IBase;

    if-eqz v0, :cond_83

    .line 758
    iget-object v0, p0, Lcom/arcsoft/widget/QuickView;->mIBase:Lcom/arcsoft/widget/IBase;

    const/16 v1, 0x30

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/arcsoft/widget/IBase;->onNotify(ILjava/lang/Object;)I

    .line 760
    :cond_83
    iget-object v0, p0, Lcom/arcsoft/widget/QuickView;->mAmpvHandler:Landroid/os/Handler;

    if-nez v0, :cond_8e

    .line 761
    new-instance v0, Lcom/arcsoft/widget/QuickView$9;

    invoke-direct {v0, p0}, Lcom/arcsoft/widget/QuickView$9;-><init>(Lcom/arcsoft/widget/QuickView;)V

    iput-object v0, p0, Lcom/arcsoft/widget/QuickView;->mAmpvHandler:Landroid/os/Handler;

    .line 816
    :cond_8e
    iget-object v0, p0, Lcom/arcsoft/widget/QuickView;->mAmpvHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 824
    .end local v6           #ampvFileListCallback:Lcom/arcsoft/android/camera/utils/ampv$ampv_FileListCallback;
    .end local v7           #ampvGetThumbCallback:Lcom/arcsoft/android/camera/utils/ampv$ampv_GetThumbCallback;
    .end local v8           #bounceCallback:Lcom/arcsoft/android/camera/utils/ampv$ampv_BounceNotifyCallback;
    .end local v10           #ampvNotifyCallback:Lcom/arcsoft/android/camera/utils/ampv$ampv_NotifyCallback;
    :cond_95
    :goto_95
    return-void

    .line 747
    .restart local v6       #ampvFileListCallback:Lcom/arcsoft/android/camera/utils/ampv$ampv_FileListCallback;
    .restart local v7       #ampvGetThumbCallback:Lcom/arcsoft/android/camera/utils/ampv$ampv_GetThumbCallback;
    .restart local v8       #bounceCallback:Lcom/arcsoft/android/camera/utils/ampv$ampv_BounceNotifyCallback;
    .restart local v10       #ampvNotifyCallback:Lcom/arcsoft/android/camera/utils/ampv$ampv_NotifyCallback;
    :cond_96
    const/4 v4, 0x1

    goto :goto_51

    .line 754
    :cond_98
    iget v0, p0, Lcom/arcsoft/widget/QuickView;->mhAMPV:I

    const/16 v1, 0x3002

    invoke-static {v0, v1, v3}, Lcom/arcsoft/android/camera/utils/ampv;->ampv_setProp(III)I

    goto :goto_71

    .line 821
    .end local v6           #ampvFileListCallback:Lcom/arcsoft/android/camera/utils/ampv$ampv_FileListCallback;
    .end local v7           #ampvGetThumbCallback:Lcom/arcsoft/android/camera/utils/ampv$ampv_GetThumbCallback;
    .end local v8           #bounceCallback:Lcom/arcsoft/android/camera/utils/ampv$ampv_BounceNotifyCallback;
    .end local v10           #ampvNotifyCallback:Lcom/arcsoft/android/camera/utils/ampv$ampv_NotifyCallback;
    :cond_a0
    const-string v0, "QuickView:"

    const-string v1, "initAMPV ampv_setDisplaySurface"

    invoke-static {v0, v1}, Lcom/arcsoft/android/camera/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    iget v0, p0, Lcom/arcsoft/widget/QuickView;->mhAMPV:I

    iget-object v1, p0, Lcom/arcsoft/widget/QuickView;->mReviewHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/arcsoft/android/camera/utils/ampv;->ampv_setDisplaySurface(ILandroid/view/Surface;)I

    goto :goto_95
.end method

.method private loadAMPVFileList()I
    .registers 3

    .prologue
    .line 854
    iget v0, p0, Lcom/arcsoft/widget/QuickView;->mhAMPV:I

    if-eqz v0, :cond_12

    .line 855
    const-string v0, "QuickView:"

    const-string v1, "loadAMPVFileList "

    invoke-static {v0, v1}, Lcom/arcsoft/android/camera/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 856
    iget v0, p0, Lcom/arcsoft/widget/QuickView;->mhAMPV:I

    invoke-static {v0}, Lcom/arcsoft/android/camera/utils/ampv;->ampv_loadFileList(I)I

    move-result v0

    .line 859
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private showOrHideMainMenu(ZZ)V
    .registers 7
    .parameter "bShow"
    .parameter "bNeedAnimation"

    .prologue
    const/16 v3, 0x12

    const/16 v2, 0x11

    .line 520
    iget-object v1, p0, Lcom/arcsoft/widget/QuickView;->mIBase:Lcom/arcsoft/widget/IBase;

    if-eqz v1, :cond_12

    .line 522
    iget-object v1, p0, Lcom/arcsoft/widget/QuickView;->mIBase:Lcom/arcsoft/widget/IBase;

    check-cast v1, Lcom/arcsoft/quickview/QuickViewActivity;

    invoke-virtual {v1}, Lcom/arcsoft/quickview/QuickViewActivity;->getMenu()Lcom/arcsoft/widget/CustomizedMenu;

    move-result-object v0

    .line 523
    .local v0, mainMenu:Lcom/arcsoft/widget/CustomizedMenu;
    if-nez v0, :cond_13

    .line 544
    .end local v0           #mainMenu:Lcom/arcsoft/widget/CustomizedMenu;
    :cond_12
    :goto_12
    return-void

    .line 525
    .restart local v0       #mainMenu:Lcom/arcsoft/widget/CustomizedMenu;
    :cond_13
    if-eqz p1, :cond_27

    .line 527
    iget-object v1, p0, Lcom/arcsoft/widget/QuickView;->mAmpvHandler:Landroid/os/Handler;

    if-eqz v1, :cond_23

    .line 529
    iget-object v1, p0, Lcom/arcsoft/widget/QuickView;->mAmpvHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 530
    iget-object v1, p0, Lcom/arcsoft/widget/QuickView;->mAmpvHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 532
    :cond_23
    invoke-virtual {v0, p2}, Lcom/arcsoft/widget/CustomizedMenu;->showMenu(Z)V

    goto :goto_12

    .line 536
    :cond_27
    iget-object v1, p0, Lcom/arcsoft/widget/QuickView;->mAmpvHandler:Landroid/os/Handler;

    if-eqz v1, :cond_35

    .line 538
    iget-object v1, p0, Lcom/arcsoft/widget/QuickView;->mAmpvHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 539
    iget-object v1, p0, Lcom/arcsoft/widget/QuickView;->mAmpvHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 541
    :cond_35
    invoke-virtual {v0, p2}, Lcom/arcsoft/widget/CustomizedMenu;->hideMenu(Z)V

    goto :goto_12
.end method

.method private singleZoom(I)I
    .registers 11
    .parameter "offsety"

    .prologue
    const v8, 0x9c40

    const/4 v4, 0x0

    const/high16 v7, 0x3f80

    .line 1329
    const/4 v0, 0x0

    .line 1330
    .local v0, flag:I
    iget v5, p0, Lcom/arcsoft/widget/QuickView;->mhAMPV:I

    iget-object v6, p0, Lcom/arcsoft/widget/QuickView;->mState:Lcom/arcsoft/android/camera/utils/AMPV_State;

    invoke-static {v5, v6}, Lcom/arcsoft/android/camera/utils/ampv;->ampv_getState(ILcom/arcsoft/android/camera/utils/AMPV_State;)I

    .line 1331
    iget-object v5, p0, Lcom/arcsoft/widget/QuickView;->mState:Lcom/arcsoft/android/camera/utils/AMPV_State;

    iget v3, v5, Lcom/arcsoft/android/camera/utils/AMPV_State;->mZoom:I

    .line 1332
    .local v3, zoomlevel:I
    const/high16 v2, 0x3f80

    .line 1333
    .local v2, singleZoomScale:F
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    const v6, 0x3ba3d70a

    mul-float v1, v5, v6

    .line 1335
    .local v1, singleZoomRatio:F
    if-gez p1, :cond_2a

    .line 1336
    add-float v2, v7, v1

    .line 1337
    const/4 v0, 0x1

    .line 1338
    iget-object v5, p0, Lcom/arcsoft/widget/QuickView;->mState:Lcom/arcsoft/android/camera/utils/AMPV_State;

    iget v5, v5, Lcom/arcsoft/android/camera/utils/AMPV_State;->mZoom:I

    if-lt v5, v8, :cond_38

    .line 1364
    :cond_29
    :goto_29
    return v4

    .line 1341
    :cond_2a
    if-lez p1, :cond_29

    .line 1342
    add-float v5, v7, v1

    div-float v2, v7, v5

    .line 1343
    const/4 v0, -0x1

    .line 1344
    iget-object v5, p0, Lcom/arcsoft/widget/QuickView;->mState:Lcom/arcsoft/android/camera/utils/AMPV_State;

    iget-boolean v5, v5, Lcom/arcsoft/android/camera/utils/AMPV_State;->mbIsFitIn:Z

    const/4 v6, 0x1

    if-eq v5, v6, :cond_29

    .line 1350
    :cond_38
    cmpl-float v4, v2, v7

    if-eqz v4, :cond_89

    .line 1352
    cmpg-float v4, v2, v7

    if-gez v4, :cond_46

    iget-object v4, p0, Lcom/arcsoft/widget/QuickView;->mState:Lcom/arcsoft/android/camera/utils/AMPV_State;

    iget-boolean v4, v4, Lcom/arcsoft/android/camera/utils/AMPV_State;->mbIsFitIn:Z

    if-eqz v4, :cond_4c

    :cond_46
    cmpl-float v4, v2, v7

    if-lez v4, :cond_87

    if-ge v3, v8, :cond_87

    .line 1353
    :cond_4c
    int-to-float v4, v3

    mul-float/2addr v4, v2

    float-to-int v3, v4

    .line 1354
    if-le v3, v8, :cond_54

    .line 1355
    const v3, 0x9c40

    .line 1356
    :cond_54
    const-string v4, "QuickView:"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "singleZoom, zoomlevel = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "mState.mbIsFitIn"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/arcsoft/widget/QuickView;->mState:Lcom/arcsoft/android/camera/utils/AMPV_State;

    iget-boolean v6, v6, Lcom/arcsoft/android/camera/utils/AMPV_State;->mbIsFitIn:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/arcsoft/android/camera/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1357
    iget v4, p0, Lcom/arcsoft/widget/QuickView;->mhAMPV:I

    const/16 v5, 0x1001

    iget v6, p0, Lcom/arcsoft/widget/QuickView;->mSingleZoomStartX:I

    iget v7, p0, Lcom/arcsoft/widget/QuickView;->mSingleZoomStartY:I

    invoke-static {v4, v5, v3, v6, v7}, Lcom/arcsoft/android/camera/utils/ampv;->ampv_handleCommand(IIIII)I

    :goto_85
    move v4, v0

    .line 1364
    goto :goto_29

    .line 1359
    :cond_87
    const/4 v0, 0x0

    goto :goto_85

    .line 1362
    :cond_89
    const/4 v0, 0x0

    goto :goto_85
.end method

.method private switchMenuState(Z)V
    .registers 4
    .parameter "bNeedAnimation"

    .prologue
    .line 547
    iget-object v1, p0, Lcom/arcsoft/widget/QuickView;->mIBase:Lcom/arcsoft/widget/IBase;

    if-eqz v1, :cond_e

    .line 549
    iget-object v1, p0, Lcom/arcsoft/widget/QuickView;->mIBase:Lcom/arcsoft/widget/IBase;

    check-cast v1, Lcom/arcsoft/quickview/QuickViewActivity;

    invoke-virtual {v1}, Lcom/arcsoft/quickview/QuickViewActivity;->getMenu()Lcom/arcsoft/widget/CustomizedMenu;

    move-result-object v0

    .line 550
    .local v0, mainMenu:Lcom/arcsoft/widget/CustomizedMenu;
    if-nez v0, :cond_f

    .line 554
    .end local v0           #mainMenu:Lcom/arcsoft/widget/CustomizedMenu;
    :cond_e
    :goto_e
    return-void

    .line 552
    .restart local v0       #mainMenu:Lcom/arcsoft/widget/CustomizedMenu;
    :cond_f
    invoke-virtual {v0}, Lcom/arcsoft/widget/CustomizedMenu;->isMenuShown()Z

    move-result v1

    if-nez v1, :cond_1a

    const/4 v1, 0x1

    :goto_16
    invoke-direct {p0, v1, p1}, Lcom/arcsoft/widget/QuickView;->showOrHideMainMenu(ZZ)V

    goto :goto_e

    :cond_1a
    const/4 v1, 0x0

    goto :goto_16
.end method

.method private tiltPan(Landroid/hardware/motion/MREvent;)V
    .registers 9
    .parameter "motionEvent"

    .prologue
    const/16 v6, 0x1000

    const/4 v4, 0x2

    const/4 v2, 0x0

    .line 1411
    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getPanningDx()I

    move-result v0

    .line 1412
    .local v0, dx:I
    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getPanningDy()I

    move-result v1

    .line 1413
    .local v1, dy:I
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ge v3, v4, :cond_13

    move v0, v2

    .line 1414
    :cond_13
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ge v3, v4, :cond_1a

    move v1, v2

    .line 1420
    :cond_1a
    if-nez v0, :cond_1e

    if-eqz v1, :cond_2d

    .line 1421
    :cond_1e
    iget v3, p0, Lcom/arcsoft/widget/QuickView;->mReviewWidth:I

    iget v4, p0, Lcom/arcsoft/widget/QuickView;->mReviewHeight:I

    if-le v3, v4, :cond_2e

    .line 1422
    iget v3, p0, Lcom/arcsoft/widget/QuickView;->mhAMPV:I

    mul-int/lit8 v4, v1, 0x5

    mul-int/lit8 v5, v0, 0x5

    invoke-static {v3, v6, v2, v4, v5}, Lcom/arcsoft/android/camera/utils/ampv;->ampv_handleCommand(IIIII)I

    .line 1427
    :cond_2d
    :goto_2d
    return-void

    .line 1424
    :cond_2e
    iget v3, p0, Lcom/arcsoft/widget/QuickView;->mhAMPV:I

    neg-int v4, v0

    mul-int/lit8 v4, v4, 0x5

    mul-int/lit8 v5, v1, 0x5

    invoke-static {v3, v6, v2, v4, v5}, Lcom/arcsoft/android/camera/utils/ampv;->ampv_handleCommand(IIIII)I

    goto :goto_2d
.end method

.method private tiltZoom(Landroid/hardware/motion/MREvent;)V
    .registers 13
    .parameter "motionEvent"

    .prologue
    const/4 v8, 0x0

    const/high16 v9, 0x3f80

    .line 1368
    iget-boolean v6, p0, Lcom/arcsoft/widget/QuickView;->mIsViewingImage:Z

    if-eqz v6, :cond_b

    iget-boolean v6, p0, Lcom/arcsoft/widget/QuickView;->mbBrowsing:Z

    if-eqz v6, :cond_c

    .line 1407
    :cond_b
    :goto_b
    return-void

    .line 1372
    :cond_c
    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getTilt()I

    move-result v1

    .line 1373
    .local v1, mMotionTilt:I
    move v2, v1

    .line 1374
    .local v2, mMotionTiltMove:I
    const/high16 v0, 0x3f80

    .line 1375
    .local v0, mMotionScale:F
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    const v7, 0x3c23d70a

    mul-float v3, v6, v7

    .line 1377
    .local v3, motionRatio:F
    if-gez v1, :cond_b6

    .line 1378
    sub-float v0, v9, v3

    .line 1383
    :goto_21
    const/4 v6, 0x2

    iput v6, p0, Lcom/arcsoft/widget/QuickView;->mTouchOpt:I

    .line 1384
    cmpl-float v6, v0, v9

    if-eqz v6, :cond_b

    .line 1386
    iget v6, p0, Lcom/arcsoft/widget/QuickView;->mhAMPV:I

    iget-object v7, p0, Lcom/arcsoft/widget/QuickView;->mState:Lcom/arcsoft/android/camera/utils/AMPV_State;

    invoke-static {v6, v7}, Lcom/arcsoft/android/camera/utils/ampv;->ampv_getState(ILcom/arcsoft/android/camera/utils/AMPV_State;)I

    .line 1388
    cmpg-float v6, v0, v9

    if-gez v6, :cond_ba

    iget-object v6, p0, Lcom/arcsoft/widget/QuickView;->mState:Lcom/arcsoft/android/camera/utils/AMPV_State;

    iget-boolean v6, v6, Lcom/arcsoft/android/camera/utils/AMPV_State;->mbIsFitIn:Z

    if-eqz v6, :cond_ba

    .line 1390
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 1391
    .local v4, rect:Landroid/graphics/Rect;
    iget v6, p0, Lcom/arcsoft/widget/QuickView;->mhAMPV:I

    const v7, 0xa6202d

    invoke-static {v6, v7, v4}, Lcom/arcsoft/android/camera/utils/ampv;->ampv_getProp(IILjava/lang/Object;)I

    .line 1392
    iget-object v6, p0, Lcom/arcsoft/widget/QuickView;->mBounceView:Lcom/arcsoft/widget/BounceView;

    invoke-virtual {v6, v4}, Lcom/arcsoft/widget/BounceView;->startAllBounce(Landroid/graphics/Rect;)V

    .line 1399
    .end local v4           #rect:Landroid/graphics/Rect;
    :goto_4b
    iget-object v6, p0, Lcom/arcsoft/widget/QuickView;->mState:Lcom/arcsoft/android/camera/utils/AMPV_State;

    iget v5, v6, Lcom/arcsoft/android/camera/utils/AMPV_State;->mZoom:I

    .line 1400
    .local v5, zoomlevel:I
    cmpg-float v6, v0, v9

    if-gez v6, :cond_59

    iget-object v6, p0, Lcom/arcsoft/widget/QuickView;->mState:Lcom/arcsoft/android/camera/utils/AMPV_State;

    iget-boolean v6, v6, Lcom/arcsoft/android/camera/utils/AMPV_State;->mbIsFitIn:Z

    if-eqz v6, :cond_62

    :cond_59
    cmpl-float v6, v0, v9

    if-lez v6, :cond_b

    const v6, 0x9c40

    if-ge v5, v6, :cond_b

    .line 1401
    :cond_62
    int-to-float v6, v5

    mul-float/2addr v6, v0

    float-to-int v5, v6

    .line 1402
    const-string v6, "QuickView:"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "tilt zoom, zoomlevel = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "mState.mbIsFitIn"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/arcsoft/widget/QuickView;->mState:Lcom/arcsoft/android/camera/utils/AMPV_State;

    iget-boolean v8, v8, Lcom/arcsoft/android/camera/utils/AMPV_State;->mbIsFitIn:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mTiltZoomCenterX="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/arcsoft/widget/QuickView;->mTiltZoomCenterX:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mTiltZoomCenterY="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/arcsoft/widget/QuickView;->mTiltZoomCenterY:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/arcsoft/android/camera/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1404
    iget v6, p0, Lcom/arcsoft/widget/QuickView;->mhAMPV:I

    const/16 v7, 0x1001

    iget v8, p0, Lcom/arcsoft/widget/QuickView;->mTiltZoomCenterX:I

    iget v9, p0, Lcom/arcsoft/widget/QuickView;->mOffsetX:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/arcsoft/widget/QuickView;->mTiltZoomCenterY:I

    iget v10, p0, Lcom/arcsoft/widget/QuickView;->mOffsetY:I

    sub-int/2addr v9, v10

    invoke-static {v6, v7, v5, v8, v9}, Lcom/arcsoft/android/camera/utils/ampv;->ampv_handleCommand(IIIII)I

    goto/16 :goto_b

    .line 1381
    .end local v5           #zoomlevel:I
    :cond_b6
    add-float v0, v9, v3

    goto/16 :goto_21

    .line 1396
    :cond_ba
    iget-object v6, p0, Lcom/arcsoft/widget/QuickView;->mBounceView:Lcom/arcsoft/widget/BounceView;

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v8, v8, v8, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lcom/arcsoft/widget/BounceView;->endAllBounce(Landroid/graphics/Rect;Z)V

    goto :goto_4b
.end method

.method private uninitAMPV()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 828
    iget v0, p0, Lcom/arcsoft/widget/QuickView;->mhAMPV:I

    if-eqz v0, :cond_13

    .line 829
    const-string v0, "QuickView:"

    const-string v1, "uninitAMPV ampv_destroy"

    invoke-static {v0, v1}, Lcom/arcsoft/android/camera/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    iget v0, p0, Lcom/arcsoft/widget/QuickView;->mhAMPV:I

    invoke-static {v0}, Lcom/arcsoft/android/camera/utils/ampv;->ampv_destroy(I)I

    .line 831
    iput v2, p0, Lcom/arcsoft/widget/QuickView;->mhAMPV:I

    .line 833
    :cond_13
    iget-object v0, p0, Lcom/arcsoft/widget/QuickView;->mAMPVBuffer:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_26

    .line 834
    const-string v0, "QuickView:"

    const-string v1, "uninitAMPV mAMPVBuffer recycle"

    invoke-static {v0, v1}, Lcom/arcsoft/android/camera/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    iget-object v0, p0, Lcom/arcsoft/widget/QuickView;->mAMPVBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 836
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/arcsoft/widget/QuickView;->mAMPVBuffer:Landroid/graphics/Bitmap;

    .line 838
    :cond_26
    iget v0, p0, Lcom/arcsoft/widget/QuickView;->mhAMCM:I

    if-eqz v0, :cond_38

    .line 839
    const-string v0, "QuickView:"

    const-string v1, "uninitAMPV DestroyAMCM"

    invoke-static {v0, v1}, Lcom/arcsoft/android/camera/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    iget v0, p0, Lcom/arcsoft/widget/QuickView;->mhAMCM:I

    invoke-static {v0}, Lcom/arcsoft/android/camera/utils/JNI_UTILS;->DestroyAMCM(I)I

    .line 841
    iput v2, p0, Lcom/arcsoft/widget/QuickView;->mhAMCM:I

    .line 843
    :cond_38
    const/4 v0, -0x1

    iput v0, p0, Lcom/arcsoft/widget/QuickView;->mCurIndex:I

    .line 844
    iput-boolean v2, p0, Lcom/arcsoft/widget/QuickView;->mbDoubleTap:Z

    .line 845
    iput-boolean v2, p0, Lcom/arcsoft/widget/QuickView;->mbFilmStrip:Z

    .line 846
    iput-boolean v2, p0, Lcom/arcsoft/widget/QuickView;->mbBrowsing:Z

    .line 847
    iput-boolean v2, p0, Lcom/arcsoft/widget/QuickView;->mbDraging:Z

    .line 848
    iput-boolean v2, p0, Lcom/arcsoft/widget/QuickView;->mIsAnimating:Z

    .line 849
    const-string v0, "QuickView:"

    const-string v1, "uninitAMPV END"

    invoke-static {v0, v1}, Lcom/arcsoft/android/camera/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    return-void
.end method


# virtual methods
.method public cancelAutoHide()V
    .registers 3

    .prologue
    .line 1440
    iget-object v0, p0, Lcom/arcsoft/widget/QuickView;->mAmpvHandler:Landroid/os/Handler;

    if-eqz v0, :cond_b

    .line 1441
    iget-object v0, p0, Lcom/arcsoft/widget/QuickView;->mAmpvHandler:Landroid/os/Handler;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1442
    :cond_b
    return-void
.end method

.method public getBitmaps(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .registers 5
    .parameter "pre"
    .parameter "cur"
    .parameter "next"

    .prologue
    .line 508
    iget v0, p0, Lcom/arcsoft/widget/QuickView;->mhAMPV:I

    if-eqz v0, :cond_9

    .line 509
    iget v0, p0, Lcom/arcsoft/widget/QuickView;->mhAMPV:I

    invoke-static {v0, p1, p2, p3}, Lcom/arcsoft/android/camera/utils/ampv;->ampv_getBitmaps(ILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)I

    .line 511
    :cond_9
    return-void
.end method

.method public getImageZoomScale()I
    .registers 3

    .prologue
    .line 515
    iget v0, p0, Lcom/arcsoft/widget/QuickView;->mhAMPV:I

    iget-object v1, p0, Lcom/arcsoft/widget/QuickView;->mState:Lcom/arcsoft/android/camera/utils/AMPV_State;

    invoke-static {v0, v1}, Lcom/arcsoft/android/camera/utils/ampv;->ampv_getState(ILcom/arcsoft/android/camera/utils/AMPV_State;)I

    .line 516
    iget-object v0, p0, Lcom/arcsoft/widget/QuickView;->mState:Lcom/arcsoft/android/camera/utils/AMPV_State;

    iget v0, v0, Lcom/arcsoft/android/camera/utils/AMPV_State;->mZoom:I

    return v0
.end method

.method public getItemInfo(ILcom/arcsoft/android/camera/utils/AMPV_ItemInfo;)V
    .registers 4
    .parameter "index"
    .parameter "itemInfo"

    .prologue
    .line 495
    iget v0, p0, Lcom/arcsoft/widget/QuickView;->mhAMPV:I

    invoke-static {v0, p1, p2}, Lcom/arcsoft/android/camera/utils/ampv;->ampv_getItemInfo(IILcom/arcsoft/android/camera/utils/AMPV_ItemInfo;)I

    .line 496
    return-void
.end method

.method public getOriginalImageSize(Lcom/arcsoft/android/camera/utils/MSize;)V
    .registers 4
    .parameter "szImage"

    .prologue
    .line 485
    iget v0, p0, Lcom/arcsoft/widget/QuickView;->mhAMPV:I

    iget-object v1, p0, Lcom/arcsoft/widget/QuickView;->mState:Lcom/arcsoft/android/camera/utils/AMPV_State;

    invoke-static {v0, v1}, Lcom/arcsoft/android/camera/utils/ampv;->ampv_getState(ILcom/arcsoft/android/camera/utils/AMPV_State;)I

    .line 487
    if-eqz p1, :cond_15

    .line 489
    iget-object v0, p0, Lcom/arcsoft/widget/QuickView;->mState:Lcom/arcsoft/android/camera/utils/AMPV_State;

    iget v0, v0, Lcom/arcsoft/android/camera/utils/AMPV_State;->mImgWidth:I

    iput v0, p1, Lcom/arcsoft/android/camera/utils/MSize;->width:I

    .line 490
    iget-object v0, p0, Lcom/arcsoft/widget/QuickView;->mState:Lcom/arcsoft/android/camera/utils/AMPV_State;

    iget v0, v0, Lcom/arcsoft/android/camera/utils/AMPV_State;->mImgHeight:I

    iput v0, p1, Lcom/arcsoft/android/camera/utils/MSize;->height:I

    .line 492
    :cond_15
    return-void
.end method

.method public getQuickViewActivity()Lcom/arcsoft/quickview/QuickViewActivity;
    .registers 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/arcsoft/widget/QuickView;->mIBase:Lcom/arcsoft/widget/IBase;

    check-cast v0, Lcom/arcsoft/quickview/QuickViewActivity;

    return-object v0
.end method

.method public hideThumbnail()V
    .registers 2

    .prologue
    .line 504
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/arcsoft/widget/QuickView;->mbFilmStrip:Z

    .line 505
    return-void
.end method

.method public init(Landroid/view/SurfaceView;Lcom/arcsoft/widget/BounceView;)V
    .registers 6
    .parameter "surfaceView"
    .parameter "view"

    .prologue
    .line 248
    iput-object p2, p0, Lcom/arcsoft/widget/QuickView;->mBounceView:Lcom/arcsoft/widget/BounceView;

    .line 249
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 250
    .local v0, holder:Landroid/view/SurfaceHolder;
    if-eqz v0, :cond_c

    .line 252
    const/4 v2, 0x2

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 255
    :cond_c
    new-instance v1, Lcom/arcsoft/widget/QuickView$4;

    invoke-direct {v1, p0}, Lcom/arcsoft/widget/QuickView$4;-><init>(Lcom/arcsoft/widget/QuickView;)V

    .line 327
    .local v1, surfaceCallback:Landroid/view/SurfaceHolder$Callback;
    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 328
    return-void
.end method

.method public isShowingThumbnail()Z
    .registers 2

    .prologue
    .line 499
    iget-boolean v0, p0, Lcom/arcsoft/widget/QuickView;->mbFilmStrip:Z

    return v0
.end method

.method public isZoomed()Z
    .registers 3

    .prologue
    .line 477
    iget v0, p0, Lcom/arcsoft/widget/QuickView;->mhAMPV:I

    iget-object v1, p0, Lcom/arcsoft/widget/QuickView;->mState:Lcom/arcsoft/android/camera/utils/AMPV_State;

    invoke-static {v0, v1}, Lcom/arcsoft/android/camera/utils/ampv;->ampv_getState(ILcom/arcsoft/android/camera/utils/AMPV_State;)I

    .line 478
    iget-object v0, p0, Lcom/arcsoft/widget/QuickView;->mState:Lcom/arcsoft/android/camera/utils/AMPV_State;

    iget-boolean v0, v0, Lcom/arcsoft/android/camera/utils/AMPV_State;->mbIsFitIn:Z

    if-eqz v0, :cond_f

    .line 479
    const/4 v0, 0x0

    .line 481
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x1

    goto :goto_e
.end method

.method public nextFile()V
    .registers 2

    .prologue
    .line 427
    iget v0, p0, Lcom/arcsoft/widget/QuickView;->mhAMPV:I

    if-eqz v0, :cond_9

    .line 428
    iget v0, p0, Lcom/arcsoft/widget/QuickView;->mhAMPV:I

    invoke-static {v0}, Lcom/arcsoft/android/camera/utils/ampv;->ampv_nextFile(I)I

    .line 430
    :cond_9
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 350
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/arcsoft/widget/QuickView;->mIsPaused:Z

    .line 352
    return-void
.end method

.method public onResume()V
    .registers 5

    .prologue
    .line 355
    iget-boolean v0, p0, Lcom/arcsoft/widget/QuickView;->mIsPaused:Z

    if-nez v0, :cond_5

    .line 377
    :cond_4
    :goto_4
    return-void

    .line 358
    :cond_5
    const-string v0, "QuickView:"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume, ampv_resume(), mhAMPV = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/arcsoft/widget/QuickView;->mhAMPV:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/arcsoft/android/camera/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/arcsoft/widget/QuickView;->mIsPaused:Z

    .line 362
    iget-object v0, p0, Lcom/arcsoft/widget/QuickView;->mAmpvHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2f

    .line 363
    iget-object v0, p0, Lcom/arcsoft/widget/QuickView;->mAmpvHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 367
    :cond_2f
    iget-boolean v0, p0, Lcom/arcsoft/widget/QuickView;->mNeedReload:Z

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/arcsoft/widget/QuickView;->mReviewHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_40

    .line 368
    iget v0, p0, Lcom/arcsoft/widget/QuickView;->mReviewWidth:I

    iget v1, p0, Lcom/arcsoft/widget/QuickView;->mReviewHeight:I

    iget v2, p0, Lcom/arcsoft/widget/QuickView;->mOrientation:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/arcsoft/widget/QuickView;->reload(III)V

    .line 371
    :cond_40
    iget-boolean v0, p0, Lcom/arcsoft/widget/QuickView;->mbFilmStrip:Z

    if-eqz v0, :cond_4

    goto :goto_4
.end method

.method public previousFile()V
    .registers 2

    .prologue
    .line 436
    iget v0, p0, Lcom/arcsoft/widget/QuickView;->mhAMPV:I

    if-eqz v0, :cond_9

    .line 437
    iget v0, p0, Lcom/arcsoft/widget/QuickView;->mhAMPV:I

    invoke-static {v0}, Lcom/arcsoft/android/camera/utils/ampv;->ampv_previousFile(I)I

    .line 439
    :cond_9
    return-void
.end method

.method public processKeyEvent(II)Z
    .registers 8
    .parameter "keyCode"
    .parameter "actionType"

    .prologue
    const/4 v4, 0x0

    .line 404
    const/4 v0, 0x0

    .line 405
    .local v0, res:Z
    packed-switch p1, :pswitch_data_28

    .line 420
    :cond_5
    :goto_5
    return v0

    .line 407
    :pswitch_6
    if-nez p2, :cond_5

    iget v1, p0, Lcom/arcsoft/widget/QuickView;->mhAMPV:I

    if-eqz v1, :cond_5

    .line 408
    iget-boolean v1, p0, Lcom/arcsoft/widget/QuickView;->mbFilmStrip:Z

    if-eqz v1, :cond_12

    .line 411
    const/4 v0, 0x0

    goto :goto_5

    .line 413
    :cond_12
    invoke-virtual {p0}, Lcom/arcsoft/widget/QuickView;->isZoomed()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/arcsoft/widget/QuickView;->mIsViewingImage:Z

    if-eqz v1, :cond_5

    .line 414
    iget v1, p0, Lcom/arcsoft/widget/QuickView;->mhAMPV:I

    const/16 v2, 0x1002

    const/16 v3, -0xf

    invoke-static {v1, v2, v3, v4, v4}, Lcom/arcsoft/android/camera/utils/ampv;->ampv_handleCommand(IIIII)I

    .line 415
    const/4 v0, 0x1

    goto :goto_5

    .line 405
    nop

    :pswitch_data_28
    .packed-switch 0x4
        :pswitch_6
    .end packed-switch
.end method

.method public processTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter "event"

    .prologue
    .line 389
    iget-boolean v1, p0, Lcom/arcsoft/widget/QuickView;->mIsAnimating:Z

    if-eqz v1, :cond_6

    .line 390
    const/4 v0, 0x0

    .line 400
    :cond_5
    :goto_5
    return v0

    .line 392
    :cond_6
    iget-object v1, p0, Lcom/arcsoft/widget/QuickView;->gestureListener:Lcom/arcsoft/widget/MySimpleOnGestureListener;

    invoke-virtual {v1, p1}, Lcom/arcsoft/widget/MySimpleOnGestureListener;->setPointerCount(Landroid/view/MotionEvent;)V

    .line 393
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1b

    .line 394
    iget-object v1, p0, Lcom/arcsoft/widget/QuickView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 395
    .local v0, ret:Z
    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    .line 400
    .end local v0           #ret:Z
    :cond_1b
    iget-object v1, p0, Lcom/arcsoft/widget/QuickView;->mMultiTouchDetector:Lcom/arcsoft/widget/TouchEventDetector;

    invoke-virtual {v1, p1}, Lcom/arcsoft/widget/TouchEventDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_5
.end method

.method public reload(III)V
    .registers 8
    .parameter "width"
    .parameter "height"
    .parameter "ori"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 599
    iget v2, p0, Lcom/arcsoft/widget/QuickView;->mOrientation:I

    if-ne p3, v2, :cond_3f

    .line 600
    const-string v2, "QuickView:"

    const-string v3, "same orientation when reload"

    invoke-static {v2, v3}, Lcom/arcsoft/android/camera/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    iget-boolean v2, p0, Lcom/arcsoft/widget/QuickView;->mNeedReload:Z

    if-eqz v2, :cond_3e

    iget-boolean v2, p0, Lcom/arcsoft/widget/QuickView;->mIsPaused:Z

    if-nez v2, :cond_3e

    .line 602
    const-string v2, "QuickView:"

    const-string v3, "mNeedReload"

    invoke-static {v2, v3}, Lcom/arcsoft/android/camera/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    iget-boolean v2, p0, Lcom/arcsoft/widget/QuickView;->mbDataReady:Z

    if-eqz v2, :cond_3c

    .line 605
    iget v2, p0, Lcom/arcsoft/widget/QuickView;->mhAMPV:I

    iget-object v3, p0, Lcom/arcsoft/widget/QuickView;->mReviewHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v3}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/arcsoft/android/camera/utils/ampv;->ampv_setDisplaySurface(ILandroid/view/Surface;)I

    .line 606
    iget v2, p0, Lcom/arcsoft/widget/QuickView;->mhAMPV:I

    iget-boolean v3, p0, Lcom/arcsoft/widget/QuickView;->mIsViewingImage:Z

    if-eqz v3, :cond_32

    move v0, v1

    :cond_32
    iget-object v3, p0, Lcom/arcsoft/widget/QuickView;->mAMPVBuffer:Landroid/graphics/Bitmap;

    invoke-static {v2, p1, p2, v0, v3}, Lcom/arcsoft/android/camera/utils/ampv;->ampv_reload(IIIILandroid/graphics/Bitmap;)I

    .line 607
    iget v0, p0, Lcom/arcsoft/widget/QuickView;->mhAMPV:I

    invoke-static {v0}, Lcom/arcsoft/android/camera/utils/ampv;->ampv_refreshDisplay(I)I

    .line 610
    :cond_3c
    iput-boolean v1, p0, Lcom/arcsoft/widget/QuickView;->mNeedReload:Z

    .line 649
    :cond_3e
    :goto_3e
    return-void

    .line 621
    :cond_3f
    iget-object v2, p0, Lcom/arcsoft/widget/QuickView;->mAMPVBuffer:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_4b

    .line 638
    iget-object v2, p0, Lcom/arcsoft/widget/QuickView;->mAMPVBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 639
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/arcsoft/widget/QuickView;->mAMPVBuffer:Landroid/graphics/Bitmap;

    .line 642
    :cond_4b
    iput p3, p0, Lcom/arcsoft/widget/QuickView;->mOrientation:I

    .line 643
    iput-boolean v1, p0, Lcom/arcsoft/widget/QuickView;->mNeedReload:Z

    .line 645
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/arcsoft/widget/QuickView;->mAMPVBuffer:Landroid/graphics/Bitmap;

    .line 646
    iget v2, p0, Lcom/arcsoft/widget/QuickView;->mhAMPV:I

    iget-boolean v3, p0, Lcom/arcsoft/widget/QuickView;->mIsViewingImage:Z

    if-eqz v3, :cond_71

    :goto_5d
    iget-object v0, p0, Lcom/arcsoft/widget/QuickView;->mAMPVBuffer:Landroid/graphics/Bitmap;

    invoke-static {v2, p1, p2, v1, v0}, Lcom/arcsoft/android/camera/utils/ampv;->ampv_reload(IIIILandroid/graphics/Bitmap;)I

    .line 647
    iget v0, p0, Lcom/arcsoft/widget/QuickView;->mhAMPV:I

    iget-object v1, p0, Lcom/arcsoft/widget/QuickView;->mReviewHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/arcsoft/android/camera/utils/ampv;->ampv_setDisplaySurface(ILandroid/view/Surface;)I

    .line 648
    invoke-virtual {p0, p3}, Lcom/arcsoft/widget/QuickView;->rotateScreen(I)I

    goto :goto_3e

    :cond_71
    move v1, v0

    .line 646
    goto :goto_5d
.end method

.method public reloadFilelist()V
    .registers 3

    .prologue
    .line 653
    const-string v0, "QuickView:"

    const-string v1, "reloadFilelist"

    invoke-static {v0, v1}, Lcom/arcsoft/android/camera/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    iget v0, p0, Lcom/arcsoft/widget/QuickView;->mhAMPV:I

    if-nez v0, :cond_c

    .line 665
    :cond_b
    :goto_b
    return-void

    .line 657
    :cond_c
    invoke-direct {p0}, Lcom/arcsoft/widget/QuickView;->uninitAMPV()V

    .line 660
    iget-object v0, p0, Lcom/arcsoft/widget/QuickView;->mReviewHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_b

    .line 663
    iget v0, p0, Lcom/arcsoft/widget/QuickView;->mOrientation:I

    iput v0, p0, Lcom/arcsoft/widget/QuickView;->mRefOri:I

    .line 664
    invoke-direct {p0}, Lcom/arcsoft/widget/QuickView;->initAMPV()V

    goto :goto_b
.end method

.method public rotateScreen(I)I
    .registers 7
    .parameter "orientation"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 561
    iput-boolean v3, p0, Lcom/arcsoft/widget/QuickView;->mIsAnimating:Z

    .line 575
    iput v4, p0, Lcom/arcsoft/widget/QuickView;->mTouchOpt:I

    .line 576
    iget-boolean v1, p0, Lcom/arcsoft/widget/QuickView;->mbFilmStrip:Z

    if-eqz v1, :cond_e

    .line 577
    const/16 v1, 0x64

    iput v1, p0, Lcom/arcsoft/widget/QuickView;->mFilmStripShowTime:I

    .line 578
    :cond_e
    iget-boolean v1, p0, Lcom/arcsoft/widget/QuickView;->mbDragOperation:Z

    if-eqz v1, :cond_1b

    .line 580
    iget v1, p0, Lcom/arcsoft/widget/QuickView;->mhAMPV:I

    const/16 v2, 0x1005

    invoke-static {v1, v2, v3, v4, v4}, Lcom/arcsoft/android/camera/utils/ampv;->ampv_handleCommand(IIIII)I

    .line 581
    iput-boolean v4, p0, Lcom/arcsoft/widget/QuickView;->mbDragOperation:Z

    .line 584
    :cond_1b
    iget v1, p0, Lcom/arcsoft/widget/QuickView;->mhAMPV:I

    const/16 v2, 0x1008

    iget v3, p0, Lcom/arcsoft/widget/QuickView;->mRefOri:I

    sub-int/2addr v3, p1

    add-int/lit16 v3, v3, 0x168

    rem-int/lit16 v3, v3, 0x168

    invoke-static {v1, v2, v3, v4, v4}, Lcom/arcsoft/android/camera/utils/ampv;->ampv_handleCommand(IIIII)I

    move-result v0

    .line 588
    .local v0, res:I
    return v0
.end method

.method public setAnimationStatus(Z)V
    .registers 2
    .parameter "isAnimating"

    .prologue
    .line 380
    iput-boolean p1, p0, Lcom/arcsoft/widget/QuickView;->mIsAnimating:Z

    .line 381
    return-void
.end method

.method public setDataReady(Z)V
    .registers 2
    .parameter "bDataReady"

    .prologue
    .line 1436
    iput-boolean p1, p0, Lcom/arcsoft/widget/QuickView;->mbDataReady:Z

    .line 1437
    return-void
.end method

.method public setSurfaceOffsetToScreen(II)V
    .registers 3
    .parameter "offsetX"
    .parameter "offsetY"

    .prologue
    .line 341
    iput p1, p0, Lcom/arcsoft/widget/QuickView;->mOffsetX:I

    .line 342
    iput p2, p0, Lcom/arcsoft/widget/QuickView;->mOffsetY:I

    .line 343
    return-void
.end method

.method public setViewingType(Z)V
    .registers 2
    .parameter "isViewingImage"

    .prologue
    .line 346
    iput-boolean p1, p0, Lcom/arcsoft/widget/QuickView;->mIsViewingImage:Z

    .line 347
    return-void
.end method

.method public unInit()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 331
    invoke-direct {p0}, Lcom/arcsoft/widget/QuickView;->uninitAMPV()V

    .line 332
    iget-object v0, p0, Lcom/arcsoft/widget/QuickView;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/arcsoft/widget/QuickView;->mMotionListener:Landroid/hardware/motion/MRListener;

    if-eqz v0, :cond_17

    .line 334
    iget-object v0, p0, Lcom/arcsoft/widget/QuickView;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/arcsoft/widget/QuickView;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    .line 335
    iput-object v2, p0, Lcom/arcsoft/widget/QuickView;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 336
    iput-object v2, p0, Lcom/arcsoft/widget/QuickView;->mMotionListener:Landroid/hardware/motion/MRListener;

    .line 338
    :cond_17
    return-void
.end method

.method public updateItem(II)V
    .registers 4
    .parameter "type"
    .parameter "index"

    .prologue
    .line 467
    iget v0, p0, Lcom/arcsoft/widget/QuickView;->mhAMPV:I

    if-eqz v0, :cond_9

    .line 468
    iget v0, p0, Lcom/arcsoft/widget/QuickView;->mhAMPV:I

    invoke-static {v0, p1, p2}, Lcom/arcsoft/android/camera/utils/ampv;->ampv_updateItem(III)I

    .line 470
    :cond_9
    return-void
.end method

.method public zoomIn(I)V
    .registers 5
    .parameter "wParam"

    .prologue
    const/4 v2, 0x0

    .line 446
    iget v0, p0, Lcom/arcsoft/widget/QuickView;->mhAMPV:I

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/arcsoft/widget/QuickView;->mbBrowsing:Z

    if-nez v0, :cond_14

    iget-boolean v0, p0, Lcom/arcsoft/widget/QuickView;->mIsViewingImage:Z

    if-eqz v0, :cond_14

    .line 447
    iget v0, p0, Lcom/arcsoft/widget/QuickView;->mhAMPV:I

    const/16 v1, 0x1003

    invoke-static {v0, v1, p1, v2, v2}, Lcom/arcsoft/android/camera/utils/ampv;->ampv_handleCommand(IIIII)I

    .line 449
    :cond_14
    return-void
.end method

.method public zoomOut(I)V
    .registers 5
    .parameter "wParam"

    .prologue
    const/4 v2, 0x0

    .line 456
    iget v0, p0, Lcom/arcsoft/widget/QuickView;->mhAMPV:I

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/arcsoft/widget/QuickView;->mbBrowsing:Z

    if-nez v0, :cond_14

    iget-boolean v0, p0, Lcom/arcsoft/widget/QuickView;->mIsViewingImage:Z

    if-eqz v0, :cond_14

    .line 457
    iget v0, p0, Lcom/arcsoft/widget/QuickView;->mhAMPV:I

    const/16 v1, 0x1004

    invoke-static {v0, v1, p1, v2, v2}, Lcom/arcsoft/android/camera/utils/ampv;->ampv_handleCommand(IIIII)I

    .line 459
    :cond_14
    return-void
.end method
