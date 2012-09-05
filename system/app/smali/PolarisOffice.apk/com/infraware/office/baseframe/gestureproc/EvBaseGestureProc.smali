.class public abstract Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;
.super Ljava/lang/Object;
.source "EvBaseGestureProc.java"

# interfaces
.implements Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector$OnEvGestureListener;
.implements Lcom/infraware/office/baseframe/gestureproc/porting/EvAdvanceMotionDetector$OnEvMotionListener;
.implements Lcom/infraware/office/evengine/E;
.implements Lcom/infraware/office/evengine/E$EV_EDIT_OBJECT_TYPE;
.implements Lcom/infraware/office/evengine/E$EV_EDIT_OBJECT_POINT_TYPE;
.implements Lcom/infraware/office/evengine/E$EV_ZOOM_TYPE;
.implements Lcom/infraware/office/evengine/E$EV_KEY_TYPE;
.implements Lcom/infraware/office/evengine/E$EV_SCROLL_COMMAND_TYPE;
.implements Lcom/infraware/office/evengine/E$EV_SCROLL_FACTOR_TYPE;
.implements Lcom/infraware/office/evengine/E$EV_HID_ACTION;
.implements Lcom/infraware/office/evengine/E$EV_CHAR_INPUT;
.implements Lcom/infraware/office/evengine/E$EV_VKEYS;
.implements Lcom/infraware/office/evengine/E$EDVA_PAGE_INFO_TYPE;
.implements Lcom/infraware/office/evengine/E$EV_GUI_EVENT;
.implements Lcom/infraware/office/baseframe/gestureproc/EvGestureCallback$msg;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;,
        Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoTask;
    }
.end annotation


# static fields
.field public static final GESTURE_DOUBLE_TAP:I = 0x5

.field public static final GESTURE_DRAG:I = 0x1

.field public static final GESTURE_FLING:I = 0x3

.field public static final GESTURE_LATE_DRAG:I = 0x4

.field public static final GESTURE_LONG_PRESS:I = 0x6

.field public static final GESTURE_NONE:I = 0x0

.field public static final GESTURE_PINCH_ZOOM:I = 0x2


# instance fields
.field protected final GYRO_TILT_THRESHOLD:I

.field final LOGCAT:Ljava/lang/String;

.field private final TOOLBAR_ID:I

.field protected final ZOOM_INTERVAL:I

.field protected final ZOOM_SCALE:I

.field protected mAdvGestureDetector:Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;

.field protected mAdvMotionDetector:Lcom/infraware/office/baseframe/gestureproc/porting/EvAdvanceMotionDetector;

.field protected mCallbackListener:Lcom/infraware/office/baseframe/gestureproc/EvGestureCallback;

.field protected mEvInterface:Lcom/infraware/office/evengine/EvInterface;

.field protected mGyroPreviousTime:J

.field protected final mInitialScrollBarAlpha:I

.field protected mMultiTouchBeginScale:I

.field protected mMultiTouchBeginSpace:F

.field protected mMultiTouchPreCenter:Landroid/graphics/PointF;

.field protected mMultiTouchPreSpace:F

.field protected mPageInfo:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;

.field protected mPageInfoTimer:Lcom/infraware/office/util/EvMessageTimer;

.field protected mPageInfoType:I

.field protected mScrollBarAlpha:I

.field protected final mScrollBarMargin:F

.field protected mScrollBarMinSize:F

.field protected mScrollBarThickness:F

.field protected mTempTextSizeOfmTextView:F

.field protected mTiltPassValue:I

.field protected mTouchStatus:I

.field protected mView:Landroid/view/View;

.field protected mbFindReplaceMode:Z

.field protected mbScrollbar:Z


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/view/View;Lcom/infraware/office/baseframe/gestureproc/EvGestureCallback;)V
    .registers 11
    .parameter "activity"
    .parameter "view"
    .parameter "listener"

    .prologue
    const/high16 v6, 0x4040

    const/high16 v5, 0x3f80

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string v1, "EvBaseGestureProc"

    iput-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->LOGCAT:Ljava/lang/String;

    .line 37
    const/16 v1, 0x1a0

    iput v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->TOOLBAR_ID:I

    .line 40
    iput-object v2, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mCallbackListener:Lcom/infraware/office/baseframe/gestureproc/EvGestureCallback;

    .line 41
    iput-object v2, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mView:Landroid/view/View;

    .line 42
    iput v3, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mPageInfoType:I

    .line 43
    iput-object v2, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mAdvGestureDetector:Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;

    .line 44
    iput-object v2, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mAdvMotionDetector:Lcom/infraware/office/baseframe/gestureproc/porting/EvAdvanceMotionDetector;

    .line 45
    iput-object v2, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mPageInfoTimer:Lcom/infraware/office/util/EvMessageTimer;

    .line 46
    iput-object v2, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mPageInfo:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;

    .line 47
    const/16 v1, 0xe6

    iput v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mInitialScrollBarAlpha:I

    .line 48
    const/16 v1, 0xe6

    iput v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mScrollBarAlpha:I

    .line 49
    iput-boolean v3, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mbScrollbar:Z

    .line 50
    const/high16 v1, 0x4120

    iput v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mScrollBarThickness:F

    .line 51
    iget v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mScrollBarThickness:F

    mul-float/2addr v1, v6

    iput v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mScrollBarMinSize:F

    .line 52
    const/high16 v1, 0x4080

    iput v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mScrollBarMargin:F

    .line 53
    iput v4, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mTempTextSizeOfmTextView:F

    .line 55
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, v4, v4}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mMultiTouchPreCenter:Landroid/graphics/PointF;

    .line 56
    iput v5, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mMultiTouchPreSpace:F

    .line 57
    iput v5, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mMultiTouchBeginSpace:F

    .line 58
    iput v3, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mMultiTouchBeginScale:I

    .line 59
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mGyroPreviousTime:J

    .line 60
    const/4 v1, 0x3

    iput v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->GYRO_TILT_THRESHOLD:I

    .line 61
    const/16 v1, 0xa

    iput v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->ZOOM_SCALE:I

    .line 62
    const/16 v1, 0x19

    iput v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->ZOOM_INTERVAL:I

    .line 63
    iput v3, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mTiltPassValue:I

    .line 74
    iput v3, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mTouchStatus:I

    .line 75
    iput-boolean v3, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mbFindReplaceMode:Z

    .line 78
    invoke-static {}, Lcom/infraware/office/evengine/EvInterface;->getInterface()Lcom/infraware/office/evengine/EvInterface;

    move-result-object v1

    iput-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    .line 79
    iput-object p3, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mCallbackListener:Lcom/infraware/office/baseframe/gestureproc/EvGestureCallback;

    .line 80
    iput-object p2, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mView:Landroid/view/View;

    .line 81
    new-instance v1, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;

    invoke-direct {v1, p0, p1}, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;-><init>(Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mPageInfo:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;

    .line 83
    invoke-static {p1}, Lcom/infraware/common/util/Utils;->getDensityDpi(Landroid/app/Activity;)I

    move-result v0

    .line 85
    .local v0, dpi:I
    iget v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mScrollBarThickness:F

    int-to-float v2, v0

    mul-float/2addr v1, v2

    const/high16 v2, 0x4370

    div-float/2addr v1, v2

    iput v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mScrollBarThickness:F

    .line 88
    :try_start_79
    iget-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mPageInfo:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;

    if-eqz v1, :cond_96

    .line 89
    iget-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mPageInfo:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;

    iget-object v1, v1, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    iput v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mTempTextSizeOfmTextView:F

    .line 90
    iget-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mPageInfo:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;

    iget-object v1, v1, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->mTextView:Landroid/widget/TextView;

    const/4 v2, 0x0

    iget v3, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mTempTextSizeOfmTextView:F

    int-to-float v4, v0

    mul-float/2addr v3, v4

    const/high16 v4, 0x4370

    div-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V
    :try_end_96
    .catch Ljava/lang/NullPointerException; {:try_start_79 .. :try_end_96} :catch_af

    .line 96
    :cond_96
    :goto_96
    iget v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mScrollBarThickness:F

    mul-float/2addr v1, v6

    iput v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mScrollBarMinSize:F

    .line 98
    new-instance v1, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;

    invoke-direct {v1, p1, p2, p0}, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector$OnEvGestureListener;)V

    iput-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mAdvGestureDetector:Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;

    .line 99
    iget-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mAdvGestureDetector:Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 101
    new-instance v1, Lcom/infraware/office/baseframe/gestureproc/porting/EvAdvanceMotionDetector;

    invoke-direct {v1, p1, p0}, Lcom/infraware/office/baseframe/gestureproc/porting/EvAdvanceMotionDetector;-><init>(Landroid/content/Context;Lcom/infraware/office/baseframe/gestureproc/porting/EvAdvanceMotionDetector$OnEvMotionListener;)V

    iput-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mAdvMotionDetector:Lcom/infraware/office/baseframe/gestureproc/porting/EvAdvanceMotionDetector;

    .line 102
    return-void

    .line 92
    :catch_af
    move-exception v1

    goto :goto_96
.end method


# virtual methods
.method DrawCaret(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .registers 3
    .parameter "canvas"
    .parameter "content"

    .prologue
    .line 345
    return-void
.end method

.method DrawCaretOnNative(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .registers 3
    .parameter "canvas"
    .parameter "content"

    .prologue
    .line 346
    return-void
.end method

.method public Gesturefinalize()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 108
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 109
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 111
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mAdvMotionDetector:Lcom/infraware/office/baseframe/gestureproc/porting/EvAdvanceMotionDetector;

    if-eqz v0, :cond_14

    .line 112
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mAdvMotionDetector:Lcom/infraware/office/baseframe/gestureproc/porting/EvAdvanceMotionDetector;

    invoke-virtual {v0}, Lcom/infraware/office/baseframe/gestureproc/porting/EvAdvanceMotionDetector;->Motionfinalize()V

    .line 114
    :cond_14
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mAdvGestureDetector:Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;

    if-eqz v0, :cond_1d

    .line 115
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mAdvGestureDetector:Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;

    invoke-virtual {v0}, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;->AdvanceGesturefinalize()V

    .line 117
    :cond_1d
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mPageInfo:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;

    if-eqz v0, :cond_26

    .line 118
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mPageInfo:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;

    invoke-virtual {v0}, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->PageInfofinalize()V

    .line 120
    :cond_26
    iput-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mAdvMotionDetector:Lcom/infraware/office/baseframe/gestureproc/porting/EvAdvanceMotionDetector;

    .line 121
    iput-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mAdvGestureDetector:Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;

    .line 122
    iput-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    .line 123
    iput-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mCallbackListener:Lcom/infraware/office/baseframe/gestureproc/EvGestureCallback;

    .line 124
    iput-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mView:Landroid/view/View;

    .line 125
    iput-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mPageInfo:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;

    .line 126
    return-void
.end method

.method public GetObjCtrlSelIndex()I
    .registers 2

    .prologue
    .line 351
    const/4 v0, 0x0

    return v0
.end method

.method public GetObjCtrlSize()Landroid/graphics/Point;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 350
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public GetObjCtrlType()I
    .registers 2

    .prologue
    .line 349
    const/4 v0, 0x0

    return v0
.end method

.method public OnNewDocument()V
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 337
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mCallbackListener:Lcom/infraware/office/baseframe/gestureproc/EvGestureCallback;

    const/16 v1, 0x8

    const/4 v6, 0x0

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-interface/range {v0 .. v6}, Lcom/infraware/office/baseframe/gestureproc/EvGestureCallback;->ActivityMsgProc(IIIIILjava/lang/Object;)I

    .line 338
    return-void
.end method

.method public OnObjectPoints(Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY;)V
    .registers 2
    .parameter "param"

    .prologue
    .line 348
    return-void
.end method

.method public OnSurfaceChanged(II)V
    .registers 15
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v11, -0x1

    const/4 v2, 0x0

    .line 309
    const/4 v7, 0x0

    .line 310
    .local v7, bLandScape:I
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_13

    .line 311
    const/4 v7, 0x1

    .line 314
    :cond_13
    if-lez p2, :cond_1a

    .line 315
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v0, v7, p1, p2}, Lcom/infraware/office/evengine/EvInterface;->IChangeScreen(III)V

    .line 316
    :cond_1a
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mCallbackListener:Lcom/infraware/office/baseframe/gestureproc/EvGestureCallback;

    const/4 v1, 0x5

    const/4 v6, 0x0

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-interface/range {v0 .. v6}, Lcom/infraware/office/baseframe/gestureproc/EvGestureCallback;->ActivityMsgProc(IIIIILjava/lang/Object;)I

    .line 318
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mPageInfo:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;

    if-eqz v0, :cond_6b

    .line 319
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mPageInfo:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;

    iget-object v0, v0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->mZoomEditLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_6b

    .line 320
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const v1, 0x7f0c004a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    .line 321
    .local v8, baseViewLayout:Landroid/widget/RelativeLayout;
    const/16 v0, 0x1a0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/RelativeLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/infraware/office/basetoolbar/EditToolbar;

    .line 322
    .local v10, toolBar:Lcom/infraware/office/basetoolbar/EditToolbar;
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {v9, v11, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 323
    .local v9, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz v10, :cond_6b

    .line 324
    invoke-virtual {v10}, Lcom/infraware/office/basetoolbar/EditToolbar;->isShown()Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 325
    invoke-virtual {v10}, Lcom/infraware/office/basetoolbar/EditToolbar;->GetHeight()I

    move-result v0

    iput v0, v9, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 329
    :goto_5f
    const/16 v0, 0xc

    invoke-virtual {v9, v0, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 330
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mPageInfo:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;

    iget-object v0, v0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->mZoomEditLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 334
    .end local v8           #baseViewLayout:Landroid/widget/RelativeLayout;
    .end local v9           #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v10           #toolBar:Lcom/infraware/office/basetoolbar/EditToolbar;
    :cond_6b
    return-void

    .line 327
    .restart local v8       #baseViewLayout:Landroid/widget/RelativeLayout;
    .restart local v9       #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v10       #toolBar:Lcom/infraware/office/basetoolbar/EditToolbar;
    :cond_6c
    const/16 v0, 0xa

    iput v0, v9, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_5f
.end method

.method public OnTemplateDocument()V
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 341
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mCallbackListener:Lcom/infraware/office/baseframe/gestureproc/EvGestureCallback;

    const/16 v1, 0xa

    const/4 v6, 0x0

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-interface/range {v0 .. v6}, Lcom/infraware/office/baseframe/gestureproc/EvGestureCallback;->ActivityMsgProc(IIIIILjava/lang/Object;)I

    .line 342
    return-void
.end method

.method public cancelGesture()V
    .registers 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mAdvGestureDetector:Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;

    if-eqz v0, :cond_9

    .line 246
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mAdvGestureDetector:Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;

    invoke-virtual {v0}, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;->cancel()V

    .line 247
    :cond_9
    return-void
.end method

.method protected drawScrollBar(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .registers 7
    .parameter "canvas"
    .parameter "hor"
    .parameter "ver"

    .prologue
    const/high16 v2, 0x40a0

    .line 146
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 147
    .local v0, paint:Landroid/graphics/Paint;
    const v1, -0xbbbbbc

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 148
    iget v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mScrollBarAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 150
    invoke-virtual {p1, p2, v2, v2, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 151
    invoke-virtual {p1, p3, v2, v2, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 152
    return-void
.end method

.method public finishComposingText()Z
    .registers 2

    .prologue
    .line 361
    const/4 v0, 0x0

    return v0
.end method

.method public getConfigInfo()Lcom/infraware/office/evengine/EV$CONFIG_INFO;
    .registers 2

    .prologue
    .line 305
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvInterface;->EV()Lcom/infraware/office/evengine/EV;

    move-result-object v0

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EV;->getConfigInfo()Lcom/infraware/office/evengine/EV$CONFIG_INFO;

    move-result-object v0

    return-object v0
.end method

.method protected getPageInfoType(I)I
    .registers 3
    .parameter "nCallBackID"

    .prologue
    .line 399
    const/4 v0, 0x0

    .line 401
    .local v0, infoId:I
    sparse-switch p1, :sswitch_data_a

    .line 424
    :goto_4
    return v0

    .line 413
    :sswitch_5
    const/4 v0, 0x1

    .line 414
    goto :goto_4

    .line 420
    :sswitch_7
    const/4 v0, 0x2

    goto :goto_4

    .line 401
    nop

    :sswitch_data_a
    .sparse-switch
        0x2 -> :sswitch_5
        0x5 -> :sswitch_5
        0x6 -> :sswitch_5
        0x7 -> :sswitch_5
        0x8 -> :sswitch_5
        0x9 -> :sswitch_5
        0xa -> :sswitch_5
        0xb -> :sswitch_5
        0xe -> :sswitch_7
        0x10 -> :sswitch_7
        0x11 -> :sswitch_7
        0x12 -> :sswitch_7
        0x13 -> :sswitch_7
        0x1b -> :sswitch_5
        0x3d -> :sswitch_5
        0x11c -> :sswitch_5
    .end sparse-switch
.end method

.method protected abstract getScrollBarRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)V
.end method

.method protected final getScrollBarRect(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFF)V
    .registers 23
    .parameter "h"
    .parameter "v"
    .parameter "x"
    .parameter "y"
    .parameter "docWidth"
    .parameter "docHeight"

    .prologue
    .line 155
    new-instance v5, Landroid/graphics/RectF;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->getView()Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    move-result v13

    int-to-float v13, v13

    invoke-virtual/range {p0 .. p0}, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->getView()Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v14

    int-to-float v14, v14

    invoke-direct {v5, v11, v12, v13, v14}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 157
    .local v5, screenRect:Landroid/graphics/RectF;
    invoke-static {}, Lcom/infraware/office/evengine/EvInterface;->getInterface()Lcom/infraware/office/evengine/EvInterface;

    move-result-object v11

    invoke-virtual {v11}, Lcom/infraware/office/evengine/EvInterface;->IGetConfig()Lcom/infraware/office/evengine/EV$CONFIG_INFO;

    move-result-object v4

    .line 158
    .local v4, info:Lcom/infraware/office/evengine/EV$CONFIG_INFO;
    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v11

    cmpl-float v11, p5, v11

    if-lez v11, :cond_fa

    iget v11, v4, Lcom/infraware/office/evengine/EV$CONFIG_INFO;->nReflowState:I

    if-nez v11, :cond_fa

    .line 159
    new-instance v6, Landroid/graphics/RectF;

    const/high16 v11, 0x4080

    .line 160
    const/high16 v12, 0x4080

    .line 161
    iget v13, v5, Landroid/graphics/RectF;->right:F

    const/high16 v14, 0x4080

    sub-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mScrollBarThickness:F

    sub-float/2addr v13, v14

    .line 162
    iget v14, v5, Landroid/graphics/RectF;->bottom:F

    const/high16 v15, 0x4080

    sub-float/2addr v14, v15

    .line 159
    invoke-direct {v6, v11, v12, v13, v14}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 164
    .local v6, scrollBarHOutline:Landroid/graphics/RectF;
    iget v11, v6, Landroid/graphics/RectF;->left:F

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v12

    mul-float v12, v12, p3

    div-float v12, v12, p5

    add-float v1, v11, v12

    .line 165
    .local v1, horizentalSx:F
    iget v11, v6, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mScrollBarThickness:F

    sub-float v2, v11, v12

    .line 166
    .local v2, horizentalSy:F
    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v11

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v12

    mul-float/2addr v11, v12

    div-float v3, v11, p5

    .line 168
    .local v3, horizentalWidth:F
    move-object/from16 v0, p0

    iget v11, v0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mScrollBarMinSize:F

    cmpg-float v11, v3, v11

    if-gez v11, :cond_70

    .line 169
    move-object/from16 v0, p0

    iget v3, v0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mScrollBarMinSize:F

    .line 171
    :cond_70
    move-object/from16 v0, p0

    iget v11, v0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mScrollBarMinSize:F

    add-float/2addr v11, v1

    iget v12, v5, Landroid/graphics/RectF;->right:F

    cmpl-float v11, v11, v12

    if-lez v11, :cond_83

    .line 172
    iget v11, v6, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mScrollBarMinSize:F

    sub-float v1, v11, v12

    .line 174
    :cond_83
    add-float v11, v1, v3

    move-object/from16 v0, p0

    iget v12, v0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mScrollBarThickness:F

    add-float/2addr v12, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v11, v12}, Landroid/graphics/RectF;->set(FFFF)V

    .line 179
    .end local v1           #horizentalSx:F
    .end local v2           #horizentalSy:F
    .end local v3           #horizentalWidth:F
    .end local v6           #scrollBarHOutline:Landroid/graphics/RectF;
    :goto_8f
    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v11

    cmpl-float v11, p6, v11

    if-lez v11, :cond_108

    .line 180
    new-instance v7, Landroid/graphics/RectF;

    const/high16 v11, 0x4080

    .line 181
    const/high16 v12, 0x4080

    .line 182
    iget v13, v5, Landroid/graphics/RectF;->right:F

    const/high16 v14, 0x4080

    sub-float/2addr v13, v14

    .line 183
    iget v14, v5, Landroid/graphics/RectF;->bottom:F

    const/high16 v15, 0x4080

    sub-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mScrollBarThickness:F

    sub-float/2addr v14, v15

    .line 180
    invoke-direct {v7, v11, v12, v13, v14}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 185
    .local v7, scrollBarVOutline:Landroid/graphics/RectF;
    iget v11, v7, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mScrollBarThickness:F

    sub-float v9, v11, v12

    .line 186
    .local v9, verticalSx:F
    iget v11, v7, Landroid/graphics/RectF;->top:F

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v12

    mul-float v12, v12, p4

    div-float v12, v12, p6

    add-float v10, v11, v12

    .line 187
    .local v10, verticalSy:F
    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v11

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v12

    mul-float/2addr v11, v12

    div-float v8, v11, p6

    .line 189
    .local v8, verticalHeight:F
    move-object/from16 v0, p0

    iget v11, v0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mScrollBarMinSize:F

    cmpg-float v11, v8, v11

    if-gez v11, :cond_da

    .line 190
    move-object/from16 v0, p0

    iget v8, v0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mScrollBarMinSize:F

    .line 192
    :cond_da
    move-object/from16 v0, p0

    iget v11, v0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mScrollBarMinSize:F

    add-float/2addr v11, v10

    iget v12, v7, Landroid/graphics/RectF;->bottom:F

    cmpl-float v11, v11, v12

    if-lez v11, :cond_ed

    .line 193
    iget v11, v7, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mScrollBarMinSize:F

    sub-float v10, v11, v12

    .line 195
    :cond_ed
    move-object/from16 v0, p0

    iget v11, v0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mScrollBarThickness:F

    add-float/2addr v11, v9

    add-float v12, v10, v8

    move-object/from16 v0, p2

    invoke-virtual {v0, v9, v10, v11, v12}, Landroid/graphics/RectF;->set(FFFF)V

    .line 199
    .end local v7           #scrollBarVOutline:Landroid/graphics/RectF;
    .end local v8           #verticalHeight:F
    .end local v9           #verticalSx:F
    .end local v10           #verticalSy:F
    :goto_f9
    return-void

    .line 177
    :cond_fa
    const/high16 v11, -0x4080

    const/high16 v12, -0x4080

    const/high16 v13, -0x4080

    const/high16 v14, -0x4080

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12, v13, v14}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_8f

    .line 198
    :cond_108
    const/high16 v11, -0x4080

    const/high16 v12, -0x4080

    const/high16 v13, -0x4080

    const/high16 v14, -0x4080

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12, v13, v14}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_f9
.end method

.method protected getView()Landroid/view/View;
    .registers 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mView:Landroid/view/View;

    return-object v0
.end method

.method public killPageInfoTimer()V
    .registers 2

    .prologue
    .line 392
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mPageInfoTimer:Lcom/infraware/office/util/EvMessageTimer;

    if-eqz v0, :cond_c

    .line 393
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mPageInfoTimer:Lcom/infraware/office/util/EvMessageTimer;

    invoke-virtual {v0}, Lcom/infraware/office/util/EvMessageTimer;->cancel()V

    .line 394
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mPageInfoTimer:Lcom/infraware/office/util/EvMessageTimer;

    .line 396
    :cond_c
    return-void
.end method

.method protected midPoint(Landroid/view/MotionEvent;)Landroid/graphics/PointF;
    .registers 9
    .parameter "event"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v4, 0x4000

    .line 376
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    add-float v0, v2, v3

    .line 377
    .local v0, x:F
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    add-float v1, v2, v3

    .line 378
    .local v1, y:F
    new-instance v2, Landroid/graphics/PointF;

    div-float v3, v0, v4

    div-float v4, v1, v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v2
.end method

.method protected minMax(III)I
    .registers 4
    .parameter "value"
    .parameter "min"
    .parameter "max"

    .prologue
    .line 382
    if-ge p1, p2, :cond_3

    .line 385
    .end local p2
    :goto_2
    return p2

    .line 383
    .restart local p2
    :cond_3
    if-le p1, p3, :cond_7

    move p2, p3

    goto :goto_2

    :cond_7
    move p2, p1

    .line 385
    goto :goto_2
.end method

.method public onBackPressed()Z
    .registers 2

    .prologue
    .line 249
    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .parameter "newConfig"

    .prologue
    .line 215
    return-void
.end method

.method public abstract onDoubleTap(Landroid/view/MotionEvent;)Z
.end method

.method public abstract onDoubleTapConfirmed(Landroid/view/MotionEvent;)Z
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .registers 7
    .parameter "canvas"
    .parameter "content"

    .prologue
    const/4 v3, 0x2

    .line 205
    iget-object v2, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mPageInfo:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;

    iget-object v2, v2, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 206
    iget-object v2, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mPageInfo:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;

    iget-object v2, v2, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 208
    iget-boolean v2, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mbScrollbar:Z

    if-eqz v2, :cond_23

    .line 209
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 210
    .local v0, hor:Landroid/graphics/RectF;
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 211
    .local v1, ver:Landroid/graphics/RectF;
    invoke-virtual {p0, v0, v1}, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->getScrollBarRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 212
    invoke-virtual {p0, p1, v0, v1}, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->drawScrollBar(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 214
    .end local v0           #hor:Landroid/graphics/RectF;
    .end local v1           #ver:Landroid/graphics/RectF;
    :cond_23
    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 10
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/high16 v4, 0x4130

    const/high16 v3, -0x4080

    .line 233
    const/4 v2, 0x3

    iput v2, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mTouchStatus:I

    .line 235
    mul-float/2addr p3, v3

    .line 236
    mul-float/2addr p4, v3

    .line 238
    div-float v2, p3, v4

    float-to-int v0, v2

    .line 239
    .local v0, x:I
    div-float v2, p4, v4

    float-to-int v1, v2

    .line 241
    .local v1, y:I
    iget-object v2, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v2, v0, v1}, Lcom/infraware/office/evengine/EvInterface;->IFlick(II)V

    .line 242
    const/4 v2, 0x1

    return v2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 358
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 359
    const/4 v0, 0x0

    return v0
.end method

.method public abstract onLongPress(Landroid/view/MotionEvent;)V
.end method

.method public onMotionPanningGyro(II)V
    .registers 3
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 256
    return-void
.end method

.method public onMotionTilt(I)V
    .registers 15
    .parameter "tilt"

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 258
    iget v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mTouchStatus:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2f

    .line 259
    const-string v0, "EvBaseGestureProc"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "tilt = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v3, 0x3

    if-le v0, v3, :cond_2f

    .line 262
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mGyroPreviousTime:J

    const-wide/16 v8, 0x3

    add-long/2addr v5, v8

    cmp-long v0, v3, v5

    if-gez v0, :cond_30

    .line 282
    :cond_2f
    :goto_2f
    return-void

    .line 267
    :cond_30
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->getConfigInfo()Lcom/infraware/office/evengine/EV$CONFIG_INFO;

    move-result-object v12

    .line 268
    .local v12, info:Lcom/infraware/office/evengine/EV$CONFIG_INFO;
    iget v0, v12, Lcom/infraware/office/evengine/EV$CONFIG_INFO;->nZoomRatio:I

    add-int/2addr v0, p1

    iget v3, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mTiltPassValue:I

    add-int v2, v0, v3

    .line 270
    .local v2, nScale:I
    iget v0, v12, Lcom/infraware/office/evengine/EV$CONFIG_INFO;->nMinZoom:I

    iget v3, v12, Lcom/infraware/office/evengine/EV$CONFIG_INFO;->nMaxZoom:I

    invoke-virtual {p0, v2, v0, v3}, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->minMax(III)I

    move-result v2

    .line 272
    const-string v0, "EvBaseGestureProc"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "tilt = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " nScale = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    iget v0, v12, Lcom/infraware/office/evengine/EV$CONFIG_INFO;->nZoomRatio:I

    if-eq v0, v2, :cond_80

    .line 275
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    iget-object v3, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mMultiTouchPreCenter:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    float-to-int v10, v3

    iget-object v3, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mMultiTouchPreCenter:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    float-to-int v11, v3

    move v3, v1

    move v4, v1

    move v5, v1

    move v6, v1

    move v8, v1

    move v9, v7

    invoke-virtual/range {v0 .. v11}, Lcom/infraware/office/evengine/EvInterface;->ISetZoom(IIIIIIIIIII)V

    .line 276
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mGyroPreviousTime:J

    .line 278
    :cond_80
    iget v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mMultiTouchPreSpace:F

    iput v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mMultiTouchBeginSpace:F

    .line 279
    iput v2, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mMultiTouchBeginScale:I

    goto :goto_2f
.end method

.method public onMotionTwoTapping()V
    .registers 1

    .prologue
    .line 255
    return-void
.end method

.method public abstract onMultiTouchDown(Landroid/view/MotionEvent;)Z
.end method

.method public abstract onMultiTouchDrag(Landroid/view/MotionEvent;)Z
.end method

.method public abstract onMultiTouchUp(Landroid/view/MotionEvent;)Z
.end method

.method public onShowIme(Z)Z
    .registers 3
    .parameter "bShow"

    .prologue
    .line 362
    const/4 v0, 0x1

    return v0
.end method

.method public abstract onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
.end method

.method public onSingleTouchDown(Landroid/view/MotionEvent;)Z
    .registers 9
    .parameter "e"

    .prologue
    const/4 v2, 0x0

    .line 220
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mCallbackListener:Lcom/infraware/office/baseframe/gestureproc/EvGestureCallback;

    const/4 v1, 0x3

    const/4 v6, 0x0

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-interface/range {v0 .. v6}, Lcom/infraware/office/baseframe/gestureproc/EvGestureCallback;->ActivityMsgProc(IIIIILjava/lang/Object;)I

    const/4 v0, 0x1

    return v0
.end method

.method public abstract onSingleTouchDrag(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
.end method

.method public abstract onSingleTouchUp(Landroid/view/MotionEvent;)Z
.end method

.method public onTextChanged(ZLjava/lang/CharSequence;III)V
    .registers 6
    .parameter "bComposing"
    .parameter "text"
    .parameter "start"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 357
    return-void
.end method

.method public onTextContextMenuItem(I)Z
    .registers 9
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    .line 285
    packed-switch p1, :pswitch_data_28

    .line 301
    :goto_4
    :pswitch_4
    return v3

    .line 287
    :pswitch_5
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvInterface;->ISelectAll()V

    goto :goto_4

    .line 290
    :pswitch_b
    const-string v0, "EvBaseGestureProc"

    const-string v1, "android.R.id.startSelectingText"

    invoke-static {v0, v1}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 293
    :pswitch_13
    const-string v0, "EvBaseGestureProc"

    const-string v1, "android.R.id.stopSelectingText"

    invoke-static {v0, v1}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 298
    :pswitch_1b
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mCallbackListener:Lcom/infraware/office/baseframe/gestureproc/EvGestureCallback;

    const/16 v1, 0xd

    const/4 v6, 0x0

    move v2, p1

    move v4, v3

    move v5, v3

    invoke-interface/range {v0 .. v6}, Lcom/infraware/office/baseframe/gestureproc/EvGestureCallback;->ActivityMsgProc(IIIIILjava/lang/Object;)I

    goto :goto_4

    .line 285
    nop

    :pswitch_data_28
    .packed-switch 0x102001f
        :pswitch_5
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_b
        :pswitch_13
    .end packed-switch
.end method

.method public setExtractedText(Ljava/lang/CharSequence;)V
    .registers 2
    .parameter "text"

    .prologue
    .line 364
    return-void
.end method

.method public setFindReplaceMode(Z)V
    .registers 2
    .parameter "b"

    .prologue
    .line 428
    iput-boolean p1, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mbFindReplaceMode:Z

    .line 429
    return-void
.end method

.method public setPageInfoTimer(I)V
    .registers 9
    .parameter "nCallBackID"

    .prologue
    .line 433
    invoke-virtual {p0, p1}, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->getPageInfoType(I)I

    move-result v6

    .line 435
    .local v6, infoId:I
    if-eqz v6, :cond_35

    .line 437
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mPageInfoTimer:Lcom/infraware/office/util/EvMessageTimer;

    if-eqz v0, :cond_12

    .line 438
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mPageInfoTimer:Lcom/infraware/office/util/EvMessageTimer;

    invoke-virtual {v0}, Lcom/infraware/office/util/EvMessageTimer;->cancel()V

    .line 439
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mPageInfoTimer:Lcom/infraware/office/util/EvMessageTimer;

    .line 442
    :cond_12
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mbScrollbar:Z

    .line 444
    invoke-virtual {p0, v6}, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->setPageInfoType(I)V

    .line 445
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mPageInfoTimer:Lcom/infraware/office/util/EvMessageTimer;

    if-nez v0, :cond_35

    .line 447
    new-instance v0, Lcom/infraware/office/util/EvMessageTimer;

    invoke-direct {v0}, Lcom/infraware/office/util/EvMessageTimer;-><init>()V

    iput-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mPageInfoTimer:Lcom/infraware/office/util/EvMessageTimer;

    .line 448
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mPageInfoTimer:Lcom/infraware/office/util/EvMessageTimer;

    new-instance v1, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoTask;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, p0, v2, v3}, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoTask;-><init>(Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;J)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x32

    invoke-virtual/range {v0 .. v5}, Lcom/infraware/office/util/EvMessageTimer;->schedule(Lcom/infraware/office/util/EvMessageTimerTask;JJ)V

    .line 452
    :cond_35
    return-void
.end method

.method protected setPageInfoType(I)V
    .registers 4
    .parameter "EDVA_PAGE_INFO_TYPE"

    .prologue
    .line 129
    iput p1, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mPageInfoType:I

    .line 132
    :try_start_2
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mPageInfo:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;

    iget-object v0, v0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 133
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mPageInfo:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;

    iget-object v0, v0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 134
    iget v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mPageInfoType:I

    if-eqz v0, :cond_1f

    .line 135
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mPageInfo:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;

    iget-object v0, v0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 143
    :cond_1e
    :goto_1e
    return-void

    .line 137
    :cond_1f
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mPageInfo:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;

    invoke-virtual {v0}, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->isZoomButtonsPressed()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 138
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mPageInfo:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;

    iget-object v0, v0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_2f
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2f} :catch_30

    goto :goto_1e

    .line 140
    :catch_30
    move-exception v0

    goto :goto_1e
.end method

.method public setPrevText(Ljava/lang/CharSequence;)V
    .registers 2
    .parameter "text"

    .prologue
    .line 363
    return-void
.end method

.method protected spacing(Landroid/view/MotionEvent;)F
    .registers 8
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 370
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float v0, v2, v3

    .line 371
    .local v0, x:F
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    sub-float v1, v2, v3

    .line 372
    .local v1, y:F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    invoke-static {v2}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v2

    return v2
.end method

.method public updateCaretPos(ZZ)V
    .registers 3
    .parameter "bSoftCommit"
    .parameter "bHardCommit"

    .prologue
    .line 360
    return-void
.end method
