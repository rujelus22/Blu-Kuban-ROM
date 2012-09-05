.class public Landroid/view/GestureDetector;
.super Ljava/lang/Object;
.source "GestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/GestureDetector$GestureHandler;,
        Landroid/view/GestureDetector$SimpleOnGestureListener;,
        Landroid/view/GestureDetector$OnShapeGestureListener;,
        Landroid/view/GestureDetector$OnDoubleTapListener;,
        Landroid/view/GestureDetector$OnGestureListener;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DOUBLE_TAP_TIMEOUT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final LONGPRESS_TIMEOUT:I = 0x0

.field private static final LONG_PRESS:I = 0x2

.field static final SHAPE_LOG_ON:Z = false

.field private static final SHOW_PRESS:I = 0x1

.field private static final SWEEP_LEFT:I = 0x2

.field private static final SWEEP_RIGHT:I = 0x1

.field static final TAG:Ljava/lang/String; = "GestureDetector"

.field private static final TAP:I = 0x3

.field private static final TAP_TIMEOUT:I


# instance fields
.field AngleTemp:[F

.field InitFlag:I

.field InitX:F

.field InitY:F

.field private LiftTapStep1:Z

.field private LiftTapStep2:Z

.field private LiftTapStep3:Z

.field Nd:[I

.field SSsd:[[F

.field Sad:[[F

.field Sed:[[F

.field Ssd:[[F

.field SvarX:F

.field SvarY:F

.field SweepDirection:I

.field Sxd:[[F

.field Syd:[[F

.field private final TOUCH_DISABLE:I

.field private final TOUCH_ENABLE:I

.field TouchCnt:I

.field private bHandTouchCancel:Z

.field private bInitHandTouch:Z

.field private bLiftTapCancel:Z

.field dist1:F

.field g_Diffx:F

.field g_InitTwistAngle:F

.field g_MaxTouchCnt:I

.field g_SDCnt:I

.field g_SmeanX:F

.field g_SmeanXpre:F

.field g_SweepReverseSum:F

.field g_TwistCnt:I

.field g_bInitTwist:Z

.field private g_bPalmRejection:Z

.field g_bSizeDecreased:Z

.field g_bSweepReady:Z

.field g_bVarXBig:Z

.field g_maxSS1:F

.field g_maxSS2:F

.field g_preSmeanX:F

.field private mAlwaysInBiggerTapRegion:Z

.field private mAlwaysInTapRegion:Z

.field private mBiggerTouchSlopSquare:I

.field private mCurrentDownEvent:Landroid/view/MotionEvent;

.field private mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

.field private mDoubleTapSlopSquare:I

.field private mHandTouched:Z

.field private final mHandler:Landroid/os/Handler;

.field private mIgnoreMultitouch:Z

.field private mInLongPress:Z

.field private final mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

.field private mIsDoubleTapping:Z

.field private mIsLongpressEnabled:Z

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mLiftTapDown:Z

.field private final mListener:Landroid/view/GestureDetector$OnGestureListener;

.field private mMaximumFlingVelocity:I

.field private mMinimumFlingVelocity:I

.field private mPalmDown:Z

.field private mPreviousUpEvent:Landroid/view/MotionEvent;

.field private mShapeListener:Landroid/view/GestureDetector$OnShapeGestureListener;

.field private mStillDown:Z

.field private mSweepDown:Z

.field private mTouchSlopSquare:I

.field private mTwistDown:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field medFlag:Z

.field medSize:F

.field medX:F

.field medY:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 245
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    sput v0, Landroid/view/GestureDetector;->LONGPRESS_TIMEOUT:I

    .line 246
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    sput v0, Landroid/view/GestureDetector;->TAP_TIMEOUT:I

    .line 247
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    sput v0, Landroid/view/GestureDetector;->DOUBLE_TAP_TIMEOUT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V
    .registers 4
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 450
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    .line 451
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V
    .registers 6
    .parameter "context"
    .parameter "listener"
    .parameter "handler"

    .prologue
    .line 466
    if-eqz p1, :cond_11

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_11

    const/4 v0, 0x1

    :goto_d
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V

    .line 468
    return-void

    .line 466
    :cond_11
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V
    .registers 12
    .parameter "context"
    .parameter "listener"
    .parameter "handler"
    .parameter "ignoreMultitouch"

    .prologue
    const/4 v6, 0x1

    const/16 v5, 0xa

    const/4 v4, 0x3

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 485
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 238
    const/16 v0, 0x190

    iput v0, p0, Landroid/view/GestureDetector;->mBiggerTouchSlopSquare:I

    .line 269
    iput-boolean v2, p0, Landroid/view/GestureDetector;->mPalmDown:Z

    .line 270
    iput-boolean v2, p0, Landroid/view/GestureDetector;->mTwistDown:Z

    .line 271
    iput-boolean v2, p0, Landroid/view/GestureDetector;->mSweepDown:Z

    .line 273
    iput-boolean v2, p0, Landroid/view/GestureDetector;->mHandTouched:Z

    .line 274
    iput-boolean v2, p0, Landroid/view/GestureDetector;->bHandTouchCancel:Z

    .line 275
    iput-boolean v6, p0, Landroid/view/GestureDetector;->bInitHandTouch:Z

    .line 277
    iput-boolean v2, p0, Landroid/view/GestureDetector;->LiftTapStep1:Z

    .line 278
    iput-boolean v2, p0, Landroid/view/GestureDetector;->LiftTapStep2:Z

    .line 279
    iput-boolean v2, p0, Landroid/view/GestureDetector;->LiftTapStep3:Z

    .line 280
    iput-boolean v2, p0, Landroid/view/GestureDetector;->mLiftTapDown:Z

    .line 281
    iput-boolean v2, p0, Landroid/view/GestureDetector;->bLiftTapCancel:Z

    .line 283
    iput-boolean v2, p0, Landroid/view/GestureDetector;->g_bPalmRejection:Z

    .line 285
    iput v6, p0, Landroid/view/GestureDetector;->TOUCH_DISABLE:I

    .line 286
    const/4 v0, 0x2

    iput v0, p0, Landroid/view/GestureDetector;->TOUCH_ENABLE:I

    .line 288
    filled-new-array {v5, v4}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Landroid/view/GestureDetector;->Sxd:[[F

    .line 289
    filled-new-array {v5, v4}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Landroid/view/GestureDetector;->Syd:[[F

    .line 290
    filled-new-array {v5, v4}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Landroid/view/GestureDetector;->Ssd:[[F

    .line 291
    filled-new-array {v5, v4}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Landroid/view/GestureDetector;->Sed:[[F

    .line 292
    filled-new-array {v5, v4}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Landroid/view/GestureDetector;->Sad:[[F

    .line 293
    filled-new-array {v5, v4}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Landroid/view/GestureDetector;->SSsd:[[F

    .line 294
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/view/GestureDetector;->Nd:[I

    .line 295
    iput v3, p0, Landroid/view/GestureDetector;->SvarX:F

    .line 296
    iput v3, p0, Landroid/view/GestureDetector;->SvarY:F

    .line 298
    iput v2, p0, Landroid/view/GestureDetector;->TouchCnt:I

    .line 299
    iput v2, p0, Landroid/view/GestureDetector;->InitFlag:I

    .line 302
    iput v3, p0, Landroid/view/GestureDetector;->dist1:F

    .line 303
    iput v3, p0, Landroid/view/GestureDetector;->g_InitTwistAngle:F

    .line 304
    new-array v0, v4, [F

    iput-object v0, p0, Landroid/view/GestureDetector;->AngleTemp:[F

    .line 305
    iput v2, p0, Landroid/view/GestureDetector;->g_TwistCnt:I

    .line 306
    iput v2, p0, Landroid/view/GestureDetector;->g_MaxTouchCnt:I

    .line 307
    iput-boolean v6, p0, Landroid/view/GestureDetector;->g_bInitTwist:Z

    .line 308
    iput-boolean v6, p0, Landroid/view/GestureDetector;->g_bSweepReady:Z

    .line 311
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/GestureDetector;->g_SDCnt:I

    .line 312
    iput v2, p0, Landroid/view/GestureDetector;->SweepDirection:I

    .line 313
    iput v3, p0, Landroid/view/GestureDetector;->InitX:F

    .line 314
    iput v3, p0, Landroid/view/GestureDetector;->InitY:F

    .line 315
    iput v3, p0, Landroid/view/GestureDetector;->g_SmeanXpre:F

    .line 316
    iput v3, p0, Landroid/view/GestureDetector;->g_SmeanX:F

    .line 317
    iput v3, p0, Landroid/view/GestureDetector;->g_SweepReverseSum:F

    .line 318
    iput v3, p0, Landroid/view/GestureDetector;->g_Diffx:F

    .line 319
    iput-boolean v2, p0, Landroid/view/GestureDetector;->g_bSizeDecreased:Z

    .line 320
    iput-boolean v2, p0, Landroid/view/GestureDetector;->g_bVarXBig:Z

    .line 321
    iput v3, p0, Landroid/view/GestureDetector;->g_maxSS1:F

    .line 322
    iput v3, p0, Landroid/view/GestureDetector;->g_maxSS2:F

    .line 323
    iput v3, p0, Landroid/view/GestureDetector;->g_preSmeanX:F

    .line 330
    iput v3, p0, Landroid/view/GestureDetector;->medX:F

    .line 331
    iput v3, p0, Landroid/view/GestureDetector;->medY:F

    .line 332
    iput v3, p0, Landroid/view/GestureDetector;->medSize:F

    .line 333
    iput-boolean v6, p0, Landroid/view/GestureDetector;->medFlag:Z

    .line 363
    invoke-static {}, Landroid/view/InputEventConsistencyVerifier;->isInstrumentationEnabled()Z

    move-result v0

    if-eqz v0, :cond_e3

    new-instance v0, Landroid/view/InputEventConsistencyVerifier;

    invoke-direct {v0, p0, v2}, Landroid/view/InputEventConsistencyVerifier;-><init>(Ljava/lang/Object;I)V

    :goto_c9
    iput-object v0, p0, Landroid/view/GestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    .line 486
    if-eqz p3, :cond_e5

    .line 487
    new-instance v0, Landroid/view/GestureDetector$GestureHandler;

    invoke-direct {v0, p0, p3}, Landroid/view/GestureDetector$GestureHandler;-><init>(Landroid/view/GestureDetector;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    .line 491
    :goto_d4
    iput-object p2, p0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 506
    instance-of v0, p2, Landroid/view/GestureDetector$OnDoubleTapListener;

    if-eqz v0, :cond_df

    .line 507
    check-cast p2, Landroid/view/GestureDetector$OnDoubleTapListener;

    .end local p2
    invoke-virtual {p0, p2}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 509
    :cond_df
    invoke-direct {p0, p1, p4}, Landroid/view/GestureDetector;->init(Landroid/content/Context;Z)V

    .line 510
    return-void

    .line 363
    .restart local p2
    :cond_e3
    const/4 v0, 0x0

    goto :goto_c9

    .line 489
    :cond_e5
    new-instance v0, Landroid/view/GestureDetector$GestureHandler;

    invoke-direct {v0, p0}, Landroid/view/GestureDetector$GestureHandler;-><init>(Landroid/view/GestureDetector;)V

    iput-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    goto :goto_d4
.end method

.method public constructor <init>(Landroid/view/GestureDetector$OnGestureListener;)V
    .registers 3
    .parameter "listener"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 435
    invoke-direct {p0, v0, p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    .line 436
    return-void
.end method

.method public constructor <init>(Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V
    .registers 4
    .parameter "listener"
    .parameter "handler"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 417
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    .line 418
    return-void
.end method

.method static synthetic access$000(Landroid/view/GestureDetector;)Landroid/view/MotionEvent;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    return-object v0
.end method

.method static synthetic access$100(Landroid/view/GestureDetector;)Landroid/view/GestureDetector$OnGestureListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    return-object v0
.end method

.method static synthetic access$200(Landroid/view/GestureDetector;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/view/GestureDetector;->dispatchLongPress()V

    return-void
.end method

.method static synthetic access$300(Landroid/view/GestureDetector;)Landroid/view/GestureDetector$OnDoubleTapListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    return-object v0
.end method

.method static synthetic access$400(Landroid/view/GestureDetector;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-boolean v0, p0, Landroid/view/GestureDetector;->mStillDown:Z

    return v0
.end method

.method private cancel()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1147
    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1148
    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1149
    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1150
    iget-object v0, p0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1151
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1152
    iput-boolean v2, p0, Landroid/view/GestureDetector;->mIsDoubleTapping:Z

    .line 1153
    iput-boolean v2, p0, Landroid/view/GestureDetector;->mStillDown:Z

    .line 1154
    iput-boolean v2, p0, Landroid/view/GestureDetector;->mAlwaysInTapRegion:Z

    .line 1155
    iput-boolean v2, p0, Landroid/view/GestureDetector;->mAlwaysInBiggerTapRegion:Z

    .line 1156
    iget-boolean v0, p0, Landroid/view/GestureDetector;->mInLongPress:Z

    if-eqz v0, :cond_29

    .line 1157
    iput-boolean v2, p0, Landroid/view/GestureDetector;->mInLongPress:Z

    .line 1159
    :cond_29
    return-void
.end method

.method private dispatchLongPress()V
    .registers 3

    .prologue
    .line 1177
    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1178
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/GestureDetector;->mInLongPress:Z

    .line 1179
    iget-object v0, p0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    iget-object v1, p0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    .line 1180
    return-void
.end method

.method private init(Landroid/content/Context;Z)V
    .registers 8
    .parameter "context"
    .parameter "ignoreMultitouch"

    .prologue
    .line 513
    iget-object v3, p0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    if-nez v3, :cond_c

    .line 514
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "OnGestureListener must not be null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 516
    :cond_c
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/view/GestureDetector;->mIsLongpressEnabled:Z

    .line 517
    iput-boolean p2, p0, Landroid/view/GestureDetector;->mIgnoreMultitouch:Z

    .line 521
    if-nez p1, :cond_30

    .line 523
    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v2

    .line 524
    .local v2, touchSlop:I
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapSlop()I

    move-result v1

    .line 526
    .local v1, doubleTapSlop:I
    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v3

    iput v3, p0, Landroid/view/GestureDetector;->mMinimumFlingVelocity:I

    .line 527
    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v3

    iput v3, p0, Landroid/view/GestureDetector;->mMaximumFlingVelocity:I

    .line 535
    :goto_27
    mul-int v3, v2, v2

    iput v3, p0, Landroid/view/GestureDetector;->mTouchSlopSquare:I

    .line 536
    mul-int v3, v1, v1

    iput v3, p0, Landroid/view/GestureDetector;->mDoubleTapSlopSquare:I

    .line 537
    return-void

    .line 529
    .end local v1           #doubleTapSlop:I
    .end local v2           #touchSlop:I
    :cond_30
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 530
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    .line 531
    .restart local v2       #touchSlop:I
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v1

    .line 532
    .restart local v1       #doubleTapSlop:I
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    iput v3, p0, Landroid/view/GestureDetector;->mMinimumFlingVelocity:I

    .line 533
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v3

    iput v3, p0, Landroid/view/GestureDetector;->mMaximumFlingVelocity:I

    goto :goto_27
.end method

.method private isConsideredDoubleTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .registers 11
    .parameter "firstDown"
    .parameter "firstUp"
    .parameter "secondDown"

    .prologue
    const/4 v2, 0x0

    .line 1163
    iget-boolean v3, p0, Landroid/view/GestureDetector;->mAlwaysInBiggerTapRegion:Z

    if-nez v3, :cond_6

    .line 1173
    :cond_5
    :goto_5
    return v2

    .line 1167
    :cond_6
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    sget v5, Landroid/view/GestureDetector;->DOUBLE_TAP_TIMEOUT:I

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-gtz v3, :cond_5

    .line 1171
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    sub-int v0, v3, v4

    .line 1172
    .local v0, deltaX:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    sub-int v1, v3, v4

    .line 1173
    .local v1, deltaY:I
    mul-int v3, v0, v0

    mul-int v4, v1, v1

    add-int/2addr v3, v4

    iget v4, p0, Landroid/view/GestureDetector;->mDoubleTapSlopSquare:I

    if-ge v3, v4, :cond_5

    const/4 v2, 0x1

    goto :goto_5
.end method


# virtual methods
.method public isLongpressEnabled()Z
    .registers 2

    .prologue
    .line 567
    iget-boolean v0, p0, Landroid/view/GestureDetector;->mIsLongpressEnabled:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 27
    .parameter "ev"

    .prologue
    .line 994
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    move-object/from16 v19, v0

    if-eqz v19, :cond_19

    .line 995
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/view/InputEventConsistencyVerifier;->onTouchEvent(Landroid/view/MotionEvent;I)V

    .line 998
    :cond_19
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 999
    .local v4, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v18

    .line 1000
    .local v18, y:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v17

    .line 1002
    .local v17, x:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    if-nez v19, :cond_37

    .line 1003
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1005
    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1007
    const/4 v10, 0x0

    .line 1009
    .local v10, handled:Z
    and-int/lit16 v0, v4, 0xff

    move/from16 v19, v0

    packed-switch v19, :pswitch_data_412

    .line 1140
    :cond_4c
    :goto_4c
    :pswitch_4c
    if-nez v10, :cond_67

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    move-object/from16 v19, v0

    if-eqz v19, :cond_67

    .line 1141
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/view/InputEventConsistencyVerifier;->onUnhandledEvent(Landroid/view/InputEvent;I)V

    .line 1143
    :cond_67
    return v10

    .line 1011
    :pswitch_68
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mIgnoreMultitouch:Z

    move/from16 v19, v0

    if-eqz v19, :cond_4c

    .line 1013
    invoke-direct/range {p0 .. p0}, Landroid/view/GestureDetector;->cancel()V

    goto :goto_4c

    .line 1019
    :pswitch_74
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mIgnoreMultitouch:Z

    move/from16 v19, v0

    if-eqz v19, :cond_4c

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4c

    .line 1020
    const v19, 0xff00

    and-int v19, v19, v4

    shr-int/lit8 v19, v19, 0x8

    if-nez v19, :cond_be

    const/4 v11, 0x1

    .line 1022
    .local v11, index:I
    :goto_92
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->mLastMotionX:F

    .line 1023
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->mLastMotionY:F

    .line 1024
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/VelocityTracker;->recycle()V

    .line 1025
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_4c

    .line 1020
    .end local v11           #index:I
    :cond_be
    const/4 v11, 0x0

    goto :goto_92

    .line 1030
    :pswitch_c0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    move-object/from16 v19, v0

    if-eqz v19, :cond_137

    .line 1031
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x3

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v9

    .line 1032
    .local v9, hadTapMessage:Z
    if-eqz v9, :cond_e1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x3

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->removeMessages(I)V

    .line 1033
    :cond_e1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1e8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1e8

    if-eqz v9, :cond_1e8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Landroid/view/GestureDetector;->isConsideredDoubleTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v19

    if-eqz v19, :cond_1e8

    .line 1036
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mIsDoubleTapping:Z

    .line 1038
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v20, v0

    invoke-interface/range {v19 .. v20}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result v19

    or-int v10, v10, v19

    .line 1040
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v19

    or-int v10, v10, v19

    .line 1047
    .end local v9           #hadTapMessage:Z
    :cond_137
    :goto_137
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->mLastMotionX:F

    .line 1048
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->mLastMotionY:F

    .line 1049
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v19, v0

    if-eqz v19, :cond_154

    .line 1050
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/MotionEvent;->recycle()V

    .line 1052
    :cond_154
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    .line 1053
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mAlwaysInTapRegion:Z

    .line 1054
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mAlwaysInBiggerTapRegion:Z

    .line 1055
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mStillDown:Z

    .line 1056
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mInLongPress:Z

    .line 1058
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mIsLongpressEnabled:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1b8

    .line 1059
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x2

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->removeMessages(I)V

    .line 1060
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v21

    sget v23, Landroid/view/GestureDetector;->TAP_TIMEOUT:I

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    add-long v21, v21, v23

    sget v23, Landroid/view/GestureDetector;->LONGPRESS_TIMEOUT:I

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    add-long v21, v21, v23

    invoke-virtual/range {v19 .. v22}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 1063
    :cond_1b8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v21

    sget v23, Landroid/view/GestureDetector;->TAP_TIMEOUT:I

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    add-long v21, v21, v23

    invoke-virtual/range {v19 .. v22}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 1064
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result v19

    or-int v10, v10, v19

    .line 1065
    goto/16 :goto_4c

    .line 1043
    .restart local v9       #hadTapMessage:Z
    :cond_1e8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x3

    sget v21, Landroid/view/GestureDetector;->DOUBLE_TAP_TIMEOUT:I

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    invoke-virtual/range {v19 .. v22}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_137

    .line 1068
    .end local v9           #hadTapMessage:Z
    :pswitch_1fc
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mInLongPress:Z

    move/from16 v19, v0

    if-nez v19, :cond_4c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mIgnoreMultitouch:Z

    move/from16 v19, v0

    if-eqz v19, :cond_218

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_4c

    .line 1071
    :cond_218
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->mLastMotionX:F

    move/from16 v19, v0

    sub-float v12, v19, v17

    .line 1072
    .local v12, scrollX:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->mLastMotionY:F

    move/from16 v19, v0

    sub-float v13, v19, v18

    .line 1073
    .local v13, scrollY:F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mIsDoubleTapping:Z

    move/from16 v19, v0

    if-eqz v19, :cond_242

    .line 1075
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v19

    or-int v10, v10, v19

    goto/16 :goto_4c

    .line 1076
    :cond_242
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mAlwaysInTapRegion:Z

    move/from16 v19, v0

    if-eqz v19, :cond_2d7

    .line 1077
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/MotionEvent;->getX()F

    move-result v19

    sub-float v19, v17, v19

    move/from16 v0, v19

    float-to-int v6, v0

    .line 1078
    .local v6, deltaX:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/MotionEvent;->getY()F

    move-result v19

    sub-float v19, v18, v19

    move/from16 v0, v19

    float-to-int v7, v0

    .line 1079
    .local v7, deltaY:I
    mul-int v19, v6, v6

    mul-int v20, v7, v7

    add-int v8, v19, v20

    .line 1080
    .local v8, distance:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->mTouchSlopSquare:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-le v8, v0, :cond_2c3

    .line 1081
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2, v12, v13}, Landroid/view/GestureDetector$OnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v10

    .line 1082
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->mLastMotionX:F

    .line 1083
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->mLastMotionY:F

    .line 1084
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mAlwaysInTapRegion:Z

    .line 1085
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x3

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->removeMessages(I)V

    .line 1086
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->removeMessages(I)V

    .line 1087
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x2

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->removeMessages(I)V

    .line 1089
    :cond_2c3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->mBiggerTouchSlopSquare:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-le v8, v0, :cond_4c

    .line 1090
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mAlwaysInBiggerTapRegion:Z

    goto/16 :goto_4c

    .line 1092
    .end local v6           #deltaX:I
    .end local v7           #deltaY:I
    .end local v8           #distance:I
    :cond_2d7
    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v19

    const/high16 v20, 0x3f80

    cmpl-float v19, v19, v20

    if-gez v19, :cond_2eb

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v19

    const/high16 v20, 0x3f80

    cmpl-float v19, v19, v20

    if-ltz v19, :cond_4c

    .line 1093
    :cond_2eb
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2, v12, v13}, Landroid/view/GestureDetector$OnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v10

    .line 1094
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->mLastMotionX:F

    .line 1095
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->mLastMotionY:F

    goto/16 :goto_4c

    .line 1100
    .end local v12           #scrollX:F
    .end local v13           #scrollY:F
    :pswitch_30f
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mStillDown:Z

    .line 1101
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v5

    .line 1102
    .local v5, currentUpEvent:Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mIsDoubleTapping:Z

    move/from16 v19, v0

    if-eqz v19, :cond_379

    .line 1104
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v19

    or-int v10, v10, v19

    .line 1123
    :cond_333
    :goto_333
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    move-object/from16 v19, v0

    if-eqz v19, :cond_344

    .line 1124
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/MotionEvent;->recycle()V

    .line 1127
    :cond_344
    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/view/GestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    .line 1128
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/VelocityTracker;->recycle()V

    .line 1129
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1130
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mIsDoubleTapping:Z

    .line 1131
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->removeMessages(I)V

    .line 1132
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x2

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_4c

    .line 1105
    :cond_379
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mInLongPress:Z

    move/from16 v19, v0

    if-eqz v19, :cond_395

    .line 1106
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x3

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->removeMessages(I)V

    .line 1107
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mInLongPress:Z

    goto :goto_333

    .line 1108
    :cond_395
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mAlwaysInTapRegion:Z

    move/from16 v19, v0

    if-eqz v19, :cond_3ac

    .line 1109
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v10

    goto :goto_333

    .line 1113
    :cond_3ac
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1114
    .local v14, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v19, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->mMaximumFlingVelocity:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1115
    invoke-virtual {v14}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v16

    .line 1116
    .local v16, velocityY:F
    invoke-virtual {v14}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v15

    .line 1118
    .local v15, velocityX:F
    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->mMinimumFlingVelocity:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    cmpl-float v19, v19, v20

    if-gtz v19, :cond_3f2

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->mMinimumFlingVelocity:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    cmpl-float v19, v19, v20

    if-lez v19, :cond_333

    .line 1120
    :cond_3f2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p1

    move/from16 v3, v16

    invoke-interface {v0, v1, v2, v15, v3}, Landroid/view/GestureDetector$OnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v10

    goto/16 :goto_333

    .line 1136
    .end local v5           #currentUpEvent:Landroid/view/MotionEvent;
    .end local v14           #velocityTracker:Landroid/view/VelocityTracker;
    .end local v15           #velocityX:F
    .end local v16           #velocityY:F
    :pswitch_40c
    invoke-direct/range {p0 .. p0}, Landroid/view/GestureDetector;->cancel()V

    goto/16 :goto_4c

    .line 1009
    nop

    :pswitch_data_412
    .packed-switch 0x0
        :pswitch_c0
        :pswitch_30f
        :pswitch_1fc
        :pswitch_40c
        :pswitch_4c
        :pswitch_68
        :pswitch_74
    .end packed-switch
.end method

.method public onTouchEvent_ex(Landroid/view/MotionEvent;)Z
    .registers 29
    .parameter "ev"

    .prologue
    .line 581
    const/16 v17, 0x0

    .line 583
    .local v17, handled:Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v16

    .line 584
    .local v16, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    .line 585
    .local v5, N:I
    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v15

    .line 588
    .local v15, TouchId:I
    const/4 v12, 0x0

    .line 589
    .local v12, SsumX:F
    const/4 v13, 0x0

    .line 590
    .local v13, SsumY:F
    const/4 v11, 0x0

    .line 591
    .local v11, SsumSize:F
    const/4 v10, 0x0

    .line 592
    .local v10, SsumEccen:F
    const/4 v6, 0x0

    .line 593
    .local v6, SSsumSize:F
    const/4 v8, 0x0

    .line 594
    .local v8, SmeanX:F
    const/4 v9, 0x0

    .line 595
    .local v9, SmeanY:F
    const/4 v7, 0x0

    .line 598
    .local v7, SmeanSumSize:F
    const/4 v3, 0x0

    .line 599
    .local v3, DiffAngle:F
    const/4 v4, 0x0

    .line 601
    .local v4, FilteredAngle:F
    const/16 v19, 0x0

    .local v19, j:I
    :goto_20
    move/from16 v0, v19

    if-ge v0, v5, :cond_b4

    .line 602
    const/16 v18, 0x1

    .local v18, i:I
    :goto_26
    if-ltz v18, :cond_b0

    .line 603
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sxd:[[F

    move-object/from16 v20, v0

    aget-object v20, v20, v19

    add-int/lit8 v21, v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sxd:[[F

    move-object/from16 v22, v0

    aget-object v22, v22, v19

    aget v22, v22, v18

    aput v22, v20, v21

    .line 604
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Syd:[[F

    move-object/from16 v20, v0

    aget-object v20, v20, v19

    add-int/lit8 v21, v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Syd:[[F

    move-object/from16 v22, v0

    aget-object v22, v22, v19

    aget v22, v22, v18

    aput v22, v20, v21

    .line 605
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Ssd:[[F

    move-object/from16 v20, v0

    aget-object v20, v20, v19

    add-int/lit8 v21, v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Ssd:[[F

    move-object/from16 v22, v0

    aget-object v22, v22, v19

    aget v22, v22, v18

    aput v22, v20, v21

    .line 606
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sed:[[F

    move-object/from16 v20, v0

    aget-object v20, v20, v19

    add-int/lit8 v21, v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sed:[[F

    move-object/from16 v22, v0

    aget-object v22, v22, v19

    aget v22, v22, v18

    aput v22, v20, v21

    .line 607
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sad:[[F

    move-object/from16 v20, v0

    aget-object v20, v20, v19

    add-int/lit8 v21, v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sad:[[F

    move-object/from16 v22, v0

    aget-object v22, v22, v19

    aget v22, v22, v18

    aput v22, v20, v21

    .line 608
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->SSsd:[[F

    move-object/from16 v20, v0

    aget-object v20, v20, v19

    add-int/lit8 v21, v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->SSsd:[[F

    move-object/from16 v22, v0

    aget-object v22, v22, v19

    aget v22, v22, v18

    aput v22, v20, v21

    .line 602
    add-int/lit8 v18, v18, -0x1

    goto/16 :goto_26

    .line 601
    :cond_b0
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_20

    .line 612
    .end local v18           #i:I
    :cond_b4
    const/16 v18, 0x0

    .restart local v18       #i:I
    :goto_b6
    move/from16 v0, v18

    if-ge v0, v5, :cond_13a

    .line 613
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sxd:[[F

    move-object/from16 v20, v0

    aget-object v20, v20, v18

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v22

    aput v22, v20, v21

    .line 614
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Syd:[[F

    move-object/from16 v20, v0

    aget-object v20, v20, v18

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v22

    aput v22, v20, v21

    .line 615
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Ssd:[[F

    move-object/from16 v20, v0

    aget-object v20, v20, v18

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getSize(I)F

    move-result v22

    const/high16 v23, 0x41f0

    mul-float v22, v22, v23

    aput v22, v20, v21

    .line 616
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sad:[[F

    move-object/from16 v20, v0

    aget-object v20, v20, v18

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getAngle(I)F

    move-result v22

    aput v22, v20, v21

    .line 617
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sed:[[F

    move-object/from16 v20, v0

    aget-object v20, v20, v18

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getEccen(I)F

    move-result v22

    aput v22, v20, v21

    .line 618
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->SSsd:[[F

    move-object/from16 v20, v0

    aget-object v20, v20, v18

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getSumSize(I)F

    move-result v22

    aput v22, v20, v21

    .line 612
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_b6

    .line 621
    :cond_13a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Nd:[I

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Nd:[I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget v22, v22, v23

    aput v22, v20, v21

    .line 622
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Nd:[I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput v5, v20, v21

    .line 624
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->TouchCnt:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->TouchCnt:I

    .line 626
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->TouchCnt:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1e4

    .line 627
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sxd:[[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget-object v20, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sxd:[[F

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    const/16 v23, 0x0

    aget v22, v22, v23

    aput v22, v20, v21

    .line 628
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Syd:[[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget-object v20, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Syd:[[F

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    const/16 v23, 0x0

    aget v22, v22, v23

    aput v22, v20, v21

    .line 629
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sxd:[[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget-object v20, v20, v21

    const/16 v21, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sxd:[[F

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    const/16 v23, 0x1

    aget v22, v22, v23

    aput v22, v20, v21

    .line 630
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Syd:[[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget-object v20, v20, v21

    const/16 v21, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Syd:[[F

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    const/16 v23, 0x1

    aget v22, v22, v23

    aput v22, v20, v21

    .line 633
    :cond_1e4
    const/16 v18, 0x0

    :goto_1e6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Nd:[I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v20, v20, v21

    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_23f

    .line 634
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sxd:[[F

    move-object/from16 v20, v0

    aget-object v20, v20, v18

    const/16 v21, 0x0

    aget v20, v20, v21

    add-float v12, v12, v20

    .line 635
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Syd:[[F

    move-object/from16 v20, v0

    aget-object v20, v20, v18

    const/16 v21, 0x0

    aget v20, v20, v21

    add-float v13, v13, v20

    .line 636
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Ssd:[[F

    move-object/from16 v20, v0

    aget-object v20, v20, v18

    const/16 v21, 0x0

    aget v20, v20, v21

    add-float v11, v11, v20

    .line 637
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sed:[[F

    move-object/from16 v20, v0

    aget-object v20, v20, v18

    const/16 v21, 0x0

    aget v20, v20, v21

    add-float v10, v10, v20

    .line 638
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->SSsd:[[F

    move-object/from16 v20, v0

    aget-object v20, v20, v18

    const/16 v21, 0x0

    aget v20, v20, v21

    add-float v6, v6, v20

    .line 633
    add-int/lit8 v18, v18, 0x1

    goto :goto_1e6

    .line 640
    :cond_23f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Nd:[I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v20, v20, v21

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v8, v12, v20

    .line 641
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Nd:[I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v20, v20, v21

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v9, v13, v20

    .line 642
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Nd:[I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v20, v20, v21

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v7, v6, v20

    .line 651
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->dist1:F

    move/from16 v20, v0

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sxd:[[F

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    const/16 v23, 0x1

    aget v22, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sxd:[[F

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    const/16 v24, 0x2

    aget v23, v23, v24

    sub-float v22, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sxd:[[F

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    const/16 v24, 0x1

    aget v23, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sxd:[[F

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget-object v24, v24, v25

    const/16 v25, 0x2

    aget v24, v24, v25

    sub-float v23, v23, v24

    mul-float v22, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Syd:[[F

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    const/16 v24, 0x1

    aget v23, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Syd:[[F

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget-object v24, v24, v25

    const/16 v25, 0x2

    aget v24, v24, v25

    sub-float v23, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Syd:[[F

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget-object v24, v24, v25

    const/16 v25, 0x1

    aget v24, v24, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Syd:[[F

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aget-object v25, v25, v26

    const/16 v26, 0x2

    aget v25, v25, v26

    sub-float v24, v24, v25

    mul-float v23, v23, v24

    add-float v22, v22, v23

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v22

    add-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->dist1:F

    .line 653
    if-nez v16, :cond_345

    .line 654
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sxd:[[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget-object v20, v20, v21

    const/16 v21, 0x0

    aget v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->InitX:F

    .line 655
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Syd:[[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget-object v20, v20, v21

    const/16 v21, 0x0

    aget v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->InitY:F

    .line 656
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    .line 658
    :cond_345
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->g_SmeanX:F

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->g_SmeanXpre:F

    .line 659
    move-object/from16 v0, p0

    iput v8, v0, Landroid/view/GestureDetector;->g_SmeanX:F

    .line 661
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->SvarX:F

    .line 662
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->SvarY:F

    .line 664
    const/16 v18, 0x0

    :goto_367
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Nd:[I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v20, v20, v21

    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_3ef

    .line 665
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->SvarX:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sxd:[[F

    move-object/from16 v21, v0

    aget-object v21, v21, v18

    const/16 v22, 0x0

    aget v21, v21, v22

    sub-float v21, v21, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sxd:[[F

    move-object/from16 v22, v0

    aget-object v22, v22, v18

    const/16 v23, 0x0

    aget v22, v22, v23

    sub-float v22, v22, v8

    mul-float v21, v21, v22

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v21

    move-wide/from16 v0, v21

    double-to-float v0, v0

    move/from16 v21, v0

    add-float v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->SvarX:F

    .line 666
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->SvarY:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Syd:[[F

    move-object/from16 v21, v0

    aget-object v21, v21, v18

    const/16 v22, 0x0

    aget v21, v21, v22

    sub-float v21, v21, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Syd:[[F

    move-object/from16 v22, v0

    aget-object v22, v22, v18

    const/16 v23, 0x0

    aget v22, v22, v23

    sub-float v22, v22, v9

    mul-float v21, v21, v22

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v21

    move-wide/from16 v0, v21

    double-to-float v0, v0

    move/from16 v21, v0

    add-float v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->SvarY:F

    .line 664
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_367

    .line 670
    :cond_3ef
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Nd:[I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v20, v20, v21

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_46f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sed:[[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget-object v20, v20, v21

    const/16 v21, 0x0

    aget v20, v20, v21

    const/high16 v21, 0x40e0

    cmpl-float v20, v20, v21

    if-ltz v20, :cond_46f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Ssd:[[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget-object v20, v20, v21

    const/16 v21, 0x0

    aget v20, v20, v21

    const/high16 v21, 0x41c8

    cmpl-float v20, v20, v21

    if-lez v20, :cond_46f

    .line 671
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->g_bPalmRejection:Z

    .line 672
    const-string v20, "GestureDetector"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "[Surface Touch Event] Palm Rejection 1 - size:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Ssd:[[F

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    const/16 v23, 0x0

    aget v22, v22, v23

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " eccen:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sed:[[F

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    const/16 v23, 0x0

    aget v22, v22, v23

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    :cond_46f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Nd:[I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v20, v20, v21

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_577

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sed:[[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget-object v20, v20, v21

    const/16 v21, 0x0

    aget v20, v20, v21

    const/high16 v21, 0x40e0

    cmpl-float v20, v20, v21

    if-gez v20, :cond_4a9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sed:[[F

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aget-object v20, v20, v21

    const/16 v21, 0x0

    aget v20, v20, v21

    const/high16 v21, 0x40e0

    cmpl-float v20, v20, v21

    if-ltz v20, :cond_577

    :cond_4a9
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->SvarX:F

    move/from16 v20, v0

    const/high16 v21, 0x4348

    cmpg-float v20, v20, v21

    if-gez v20, :cond_577

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sad:[[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget-object v20, v20, v21

    const/16 v21, 0x0

    aget v20, v20, v21

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(F)F

    move-result v20

    const/high16 v21, 0x41f0

    cmpg-float v20, v20, v21

    if-gez v20, :cond_577

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sad:[[F

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aget-object v20, v20, v21

    const/16 v21, 0x0

    aget v20, v20, v21

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(F)F

    move-result v20

    const/high16 v21, 0x41f0

    cmpg-float v20, v20, v21

    if-gez v20, :cond_577

    .line 675
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->g_bPalmRejection:Z

    .line 676
    const-string v20, "GestureDetector"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "[Surface Touch Event] Palm Rejection 2 -  a[0]:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sad:[[F

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    const/16 v23, 0x0

    aget v22, v22, v23

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " a[1]:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sad:[[F

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget-object v22, v22, v23

    const/16 v23, 0x0

    aget v22, v22, v23

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " e[0]:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sed:[[F

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    const/16 v23, 0x0

    aget v22, v22, v23

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " e[1]:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sed:[[F

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget-object v22, v22, v23

    const/16 v23, 0x0

    aget v22, v22, v23

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " eccen:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " SvarX:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->SvarX:F

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    :cond_577
    const/16 v18, 0x0

    :goto_579
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Nd:[I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v20, v20, v21

    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_5ca

    .line 679
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Ssd:[[F

    move-object/from16 v20, v0

    aget-object v20, v20, v18

    const/16 v21, 0x0

    aget v20, v20, v21

    const/high16 v21, 0x41f0

    cmpl-float v20, v20, v21

    if-lez v20, :cond_5c7

    .line 680
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->g_bPalmRejection:Z

    .line 681
    const-string v20, "GestureDetector"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "[Surface Touch Event] Palm Rejection 3 - size:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Ssd:[[F

    move-object/from16 v22, v0

    aget-object v22, v22, v18

    const/16 v23, 0x0

    aget v22, v22, v23

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    :cond_5c7
    add-int/lit8 v18, v18, 0x1

    goto :goto_579

    .line 684
    :cond_5ca
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->g_bPalmRejection:Z

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_5e3

    .line 685
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mShapeListener:Landroid/view/GestureDetector$OnShapeGestureListener;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-interface/range {v20 .. v21}, Landroid/view/GestureDetector$OnShapeGestureListener;->onPalmRejection(I)Z

    .line 688
    :cond_5e3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mPalmDown:Z

    move/from16 v20, v0

    if-nez v20, :cond_91c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mTwistDown:Z

    move/from16 v20, v0

    if-nez v20, :cond_91c

    .line 690
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Nd:[I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v20, v20, v21

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_631

    const/high16 v20, 0x4270

    cmpl-float v20, v7, v20

    if-gtz v20, :cond_611

    const/high16 v20, 0x4270

    cmpl-float v20, v11, v20

    if-lez v20, :cond_631

    .line 691
    :cond_611
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->SvarX:F

    move/from16 v20, v0

    const/high16 v21, 0x4396

    cmpl-float v20, v20, v21

    if-lez v20, :cond_631

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->SvarY:F

    move/from16 v20, v0

    const/high16 v21, 0x4396

    cmpl-float v20, v20, v21

    if-lez v20, :cond_631

    .line 693
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mPalmDown:Z

    .line 697
    :cond_631
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mPalmDown:Z

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_654

    .line 698
    const-string v20, "GestureDetector"

    const-string v21, "[Surface Touch Event] Palm touch"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mShapeListener:Landroid/view/GestureDetector$OnShapeGestureListener;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnShapeGestureListener;->onPalm(Landroid/view/MotionEvent;)Z

    move-result v17

    .line 705
    :cond_654
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->g_maxSS1:F

    move/from16 v20, v0

    cmpg-float v20, v20, v11

    if-gez v20, :cond_662

    move-object/from16 v0, p0

    iput v11, v0, Landroid/view/GestureDetector;->g_maxSS1:F

    .line 706
    :cond_662
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->g_maxSS2:F

    move/from16 v20, v0

    cmpg-float v20, v20, v7

    if-gez v20, :cond_670

    move-object/from16 v0, p0

    iput v7, v0, Landroid/view/GestureDetector;->g_maxSS2:F

    .line 708
    :cond_670
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getTouchMajor()F

    move-result v20

    const/high16 v21, 0x4348

    cmpl-float v20, v20, v21

    if-lez v20, :cond_b8e

    .line 709
    const/16 v14, 0x28

    .line 716
    .local v14, SweepSumSizeTH:I
    :goto_67c
    if-nez v16, :cond_682

    move-object/from16 v0, p0

    iput v8, v0, Landroid/view/GestureDetector;->g_preSmeanX:F

    .line 717
    :cond_682
    const/16 v20, 0x2

    move/from16 v0, v16

    move/from16 v1, v20

    if-ne v0, v1, :cond_6a4

    .line 718
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->g_Diffx:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->g_preSmeanX:F

    move/from16 v21, v0

    sub-float v21, v8, v21

    add-float v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->g_Diffx:F

    .line 719
    move-object/from16 v0, p0

    iput v8, v0, Landroid/view/GestureDetector;->g_preSmeanX:F

    .line 722
    :cond_6a4
    const/high16 v20, 0x4000

    cmpl-float v20, v10, v20

    if-ltz v20, :cond_6f4

    int-to-float v0, v14

    move/from16 v20, v0

    cmpl-float v20, v7, v20

    if-gtz v20, :cond_6b8

    int-to-float v0, v14

    move/from16 v20, v0

    cmpl-float v20, v11, v20

    if-lez v20, :cond_6f4

    .line 723
    :cond_6b8
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->InitX:F

    move/from16 v20, v0

    const/high16 v21, 0x4416

    cmpl-float v20, v20, v21

    if-gtz v20, :cond_6d0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->InitX:F

    move/from16 v20, v0

    const/high16 v21, 0x4348

    cmpg-float v20, v20, v21

    if-gez v20, :cond_6f4

    .line 724
    :cond_6d0
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mSweepDown:Z

    .line 725
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->g_bSizeDecreased:Z

    .line 726
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->InitX:F

    move/from16 v20, v0

    const/high16 v21, 0x4416

    cmpl-float v20, v20, v21

    if-lez v20, :cond_ba0

    .line 727
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->SweepDirection:I

    .line 734
    :cond_6f4
    :goto_6f4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->TouchCnt:I

    move/from16 v20, v0

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_738

    .line 735
    const/high16 v20, 0x41a0

    cmpg-float v20, v7, v20

    if-gez v20, :cond_738

    const/high16 v20, 0x41a0

    cmpg-float v20, v11, v20

    if-gez v20, :cond_738

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mSweepDown:Z

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_738

    .line 736
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->g_bSizeDecreased:Z

    .line 737
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->g_SDCnt:I

    move/from16 v20, v0

    if-gez v20, :cond_738

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->TouchCnt:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->g_SDCnt:I

    .line 741
    :cond_738
    if-eqz v16, :cond_7a0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Nd:[I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Nd:[I

    move-object/from16 v21, v0

    const/16 v22, 0x1

    aget v21, v21, v22

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_7a0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mSweepDown:Z

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_7a0

    .line 742
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->SweepDirection:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_bb6

    .line 743
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->g_SmeanX:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->g_SmeanXpre:F

    move/from16 v21, v0

    sub-float v20, v20, v21

    const/16 v21, 0x0

    cmpl-float v20, v20, v21

    if-lez v20, :cond_7a0

    .line 744
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->g_SweepReverseSum:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->g_SmeanX:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->g_SmeanXpre:F

    move/from16 v22, v0

    sub-float v21, v21, v22

    add-float v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->g_SweepReverseSum:F

    .line 753
    :cond_7a0
    :goto_7a0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->SvarX:F

    move/from16 v20, v0

    const/high16 v21, 0x43c8

    cmpl-float v20, v20, v21

    if-lez v20, :cond_7b4

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->g_bVarXBig:Z

    .line 756
    :cond_7b4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->g_MaxTouchCnt:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Nd:[I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget v21, v21, v22

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_7da

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Nd:[I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->g_MaxTouchCnt:I

    .line 758
    :cond_7da
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->g_MaxTouchCnt:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_8de

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sed:[[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget-object v20, v20, v21

    const/16 v21, 0x0

    aget v20, v20, v21

    const/high16 v21, 0x3f80

    cmpl-float v20, v20, v21

    if-lez v20, :cond_8de

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Nd:[I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v20, v20, v21

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_8de

    .line 759
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->g_bInitTwist:Z

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_838

    .line 760
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->g_bInitTwist:Z

    .line 761
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sad:[[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget-object v20, v20, v21

    const/16 v21, 0x0

    aget v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->g_InitTwistAngle:F

    .line 764
    :cond_838
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->g_InitTwistAngle:F

    move/from16 v20, v0

    const/high16 v21, 0x42b4

    cmpl-float v20, v20, v21

    if-nez v20, :cond_c2c

    .line 765
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sad:[[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget-object v20, v20, v21

    const/16 v21, 0x0

    aget v20, v20, v21

    const/16 v21, 0x0

    cmpl-float v20, v20, v21

    if-lez v20, :cond_bfa

    .line 766
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->AngleTemp:[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sad:[[F

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    const/16 v23, 0x0

    aget v22, v22, v23

    aput v22, v20, v21

    .line 790
    :cond_870
    :goto_870
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->g_TwistCnt:I

    move/from16 v20, v0

    if-nez v20, :cond_d59

    .line 791
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->AngleTemp:[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v4, v20, v21

    .line 798
    :goto_882
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->g_InitTwistAngle:F

    move/from16 v20, v0

    sub-float v3, v20, v4

    .line 800
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->AngleTemp:[F

    move-object/from16 v20, v0

    const/16 v21, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->AngleTemp:[F

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget v22, v22, v23

    aput v22, v20, v21

    .line 801
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->AngleTemp:[F

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->AngleTemp:[F

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget v22, v22, v23

    aput v22, v20, v21

    .line 802
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->g_TwistCnt:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->g_TwistCnt:I

    .line 804
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v20

    const/high16 v21, 0x41a0

    cmpl-float v20, v20, v21

    if-lez v20, :cond_8de

    .line 805
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->dist1:F

    move/from16 v20, v0

    const/high16 v21, 0x42f0

    cmpg-float v20, v20, v21

    if-gez v20, :cond_8de

    .line 806
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mTwistDown:Z

    .line 811
    :cond_8de
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mTwistDown:Z

    move/from16 v20, v0

    if-eqz v20, :cond_91c

    .line 812
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mShapeListener:Landroid/view/GestureDetector$OnShapeGestureListener;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2, v3}, Landroid/view/GestureDetector$OnShapeGestureListener;->onTwist(Landroid/view/MotionEvent;Landroid/view/MotionEvent;F)Z

    move-result v17

    .line 813
    const/16 v20, 0x0

    cmpl-float v20, v3, v20

    if-lez v20, :cond_dab

    .line 814
    const-string v20, "GestureDetector"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "[Surface Touch Event] Twist - Right, DiffAngle:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    .end local v14           #SweepSumSizeTH:I
    :cond_91c
    :goto_91c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mPalmDown:Z

    move/from16 v20, v0

    if-nez v20, :cond_9a6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mTwistDown:Z

    move/from16 v20, v0

    if-nez v20, :cond_9a6

    .line 824
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->bHandTouchCancel:Z

    move/from16 v20, v0

    if-nez v20, :cond_948

    .line 826
    const/high16 v20, 0x4270

    cmpl-float v20, v11, v20

    if-gtz v20, :cond_940

    const/high16 v20, 0x4270

    cmpl-float v20, v7, v20

    if-lez v20, :cond_948

    .line 828
    :cond_940
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mHandTouched:Z

    .line 832
    :cond_948
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->SvarX:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->SvarY:F

    move/from16 v21, v0

    add-float v20, v20, v21

    const v21, 0x453b8000

    cmpl-float v20, v20, v21

    if-lez v20, :cond_96d

    .line 834
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mHandTouched:Z

    .line 835
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->bHandTouchCancel:Z

    .line 838
    :cond_96d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mHandTouched:Z

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_9a6

    .line 840
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->bInitHandTouch:Z

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_9a6

    .line 842
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mShapeListener:Landroid/view/GestureDetector$OnShapeGestureListener;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnShapeGestureListener;->onHandTouched(Landroid/view/MotionEvent;)Z

    move-result v17

    .line 843
    const-string v20, "GestureDetector"

    const-string v21, "[Surface Touch Event] HandTouched"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->bInitHandTouch:Z

    .line 850
    :cond_9a6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mLiftTapDown:Z

    move/from16 v20, v0

    if-nez v20, :cond_b82

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->bLiftTapCancel:Z

    move/from16 v20, v0

    if-nez v20, :cond_b82

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mTwistDown:Z

    move/from16 v20, v0

    if-nez v20, :cond_b82

    .line 852
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sxd:[[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget-object v20, v20, v21

    const/16 v21, 0x0

    aget v20, v20, v21

    const/high16 v21, 0x43fa

    cmpg-float v20, v20, v21

    if-ltz v20, :cond_9e6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Syd:[[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget-object v20, v20, v21

    const/16 v21, 0x0

    aget v20, v20, v21

    const/high16 v21, 0x447a

    cmpg-float v20, v20, v21

    if-gez v20, :cond_9ee

    .line 854
    :cond_9e6
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->bLiftTapCancel:Z

    .line 857
    :cond_9ee
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->LiftTapStep1:Z

    move/from16 v20, v0

    if-nez v20, :cond_a4f

    .line 859
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->InitX:F

    move/from16 v20, v0

    const/high16 v21, 0x442f

    cmpl-float v20, v20, v21

    if-lez v20, :cond_a4f

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->InitY:F

    move/from16 v20, v0

    const v21, 0x44898000

    cmpl-float v20, v20, v21

    if-lez v20, :cond_a4f

    .line 861
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->InitX:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sxd:[[F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget-object v21, v21, v22

    const/16 v22, 0x0

    aget v21, v21, v22

    sub-float v20, v20, v21

    const/high16 v21, 0x4248

    cmpl-float v20, v20, v21

    if-lez v20, :cond_a4f

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->InitY:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Syd:[[F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget-object v21, v21, v22

    const/16 v22, 0x0

    aget v21, v21, v22

    sub-float v20, v20, v21

    const/high16 v21, 0x42c8

    cmpl-float v20, v20, v21

    if-lez v20, :cond_a4f

    .line 863
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->LiftTapStep1:Z

    .line 869
    :cond_a4f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->LiftTapStep1:Z

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_b07

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->LiftTapStep2:Z

    move/from16 v20, v0

    if-nez v20, :cond_b07

    .line 871
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sxd:[[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget-object v20, v20, v21

    const/16 v21, 0x0

    aget v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sxd:[[F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget-object v21, v21, v22

    const/16 v22, 0x1

    aget v21, v21, v22

    sub-float v20, v20, v21

    const/16 v21, 0x0

    cmpl-float v20, v20, v21

    if-gez v20, :cond_aad

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Syd:[[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget-object v20, v20, v21

    const/16 v21, 0x0

    aget v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Syd:[[F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget-object v21, v21, v22

    const/16 v22, 0x1

    aget v21, v21, v22

    sub-float v20, v20, v21

    const/16 v21, 0x0

    cmpl-float v20, v20, v21

    if-ltz v20, :cond_b07

    .line 873
    :cond_aad
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->medFlag:Z

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_aff

    .line 875
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sxd:[[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget-object v20, v20, v21

    const/16 v21, 0x0

    aget v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->medX:F

    .line 876
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Syd:[[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget-object v20, v20, v21

    const/16 v21, 0x0

    aget v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->medY:F

    .line 877
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Ssd:[[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget-object v20, v20, v21

    const/16 v21, 0x2

    aget v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->medSize:F

    .line 878
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->medFlag:Z

    .line 881
    :cond_aff
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->LiftTapStep2:Z

    .line 885
    :cond_b07
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->LiftTapStep2:Z

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_b82

    .line 887
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->medX:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sxd:[[F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget-object v21, v21, v22

    const/16 v22, 0x0

    aget v21, v21, v22

    sub-float v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->medY:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Syd:[[F

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    const/16 v23, 0x0

    aget v22, v22, v23

    sub-float v21, v21, v22

    add-float v20, v20, v21

    const/high16 v21, -0x4080

    cmpg-float v20, v20, v21

    if-gez v20, :cond_b82

    .line 889
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->medSize:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Ssd:[[F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget-object v21, v21, v22

    const/16 v22, 0x1

    aget v21, v21, v22

    sub-float v20, v20, v21

    const/high16 v21, -0x3f60

    cmpg-float v20, v20, v21

    if-gez v20, :cond_b82

    .line 891
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mLiftTapDown:Z

    .line 892
    const-string v20, "GestureDetector"

    const-string v21, "[Surface Touch Event] Lift tap Event"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mShapeListener:Landroid/view/GestureDetector$OnShapeGestureListener;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnShapeGestureListener;->onLiftTap(Landroid/view/MotionEvent;)Z

    move-result v17

    .line 899
    :cond_b82
    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    packed-switch v20, :pswitch_data_109e

    .line 989
    :cond_b8b
    :goto_b8b
    const/16 v20, 0x0

    return v20

    .line 710
    :cond_b8e
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getTouchMajor()F

    move-result v20

    const/high16 v21, 0x42c8

    cmpl-float v20, v20, v21

    if-lez v20, :cond_b9c

    .line 711
    const/16 v14, 0x23

    .restart local v14       #SweepSumSizeTH:I
    goto/16 :goto_67c

    .line 713
    .end local v14           #SweepSumSizeTH:I
    :cond_b9c
    const/16 v14, 0x1e

    .restart local v14       #SweepSumSizeTH:I
    goto/16 :goto_67c

    .line 728
    :cond_ba0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->InitX:F

    move/from16 v20, v0

    const/high16 v21, 0x4348

    cmpg-float v20, v20, v21

    if-gez v20, :cond_6f4

    .line 729
    const/16 v20, 0x2

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->SweepDirection:I

    goto/16 :goto_6f4

    .line 746
    :cond_bb6
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->SweepDirection:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_7a0

    .line 747
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->g_SmeanX:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->g_SmeanXpre:F

    move/from16 v21, v0

    sub-float v20, v20, v21

    const/16 v21, 0x0

    cmpg-float v20, v20, v21

    if-gez v20, :cond_7a0

    .line 748
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->g_SweepReverseSum:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->g_SmeanX:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->g_SmeanXpre:F

    move/from16 v22, v0

    sub-float v21, v21, v22

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v21

    add-float v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->g_SweepReverseSum:F

    goto/16 :goto_7a0

    .line 767
    :cond_bfa
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sad:[[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget-object v20, v20, v21

    const/16 v21, 0x0

    aget v20, v20, v21

    const/16 v21, 0x0

    cmpg-float v20, v20, v21

    if-gez v20, :cond_870

    .line 768
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->AngleTemp:[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/high16 v22, 0x4334

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sad:[[F

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    const/16 v24, 0x0

    aget v23, v23, v24

    add-float v22, v22, v23

    aput v22, v20, v21

    goto/16 :goto_870

    .line 770
    :cond_c2c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->g_InitTwistAngle:F

    move/from16 v20, v0

    const/16 v21, 0x0

    cmpl-float v20, v20, v21

    if-nez v20, :cond_c94

    .line 771
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sad:[[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget-object v20, v20, v21

    const/16 v21, 0x0

    aget v20, v20, v21

    const/16 v21, 0x0

    cmpl-float v20, v20, v21

    if-lez v20, :cond_c66

    .line 772
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->AngleTemp:[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sad:[[F

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    const/16 v23, 0x0

    aget v22, v22, v23

    aput v22, v20, v21

    goto/16 :goto_870

    .line 773
    :cond_c66
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sad:[[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget-object v20, v20, v21

    const/16 v21, 0x0

    aget v20, v20, v21

    const/16 v21, 0x0

    cmpg-float v20, v20, v21

    if-gez v20, :cond_870

    .line 774
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->AngleTemp:[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sad:[[F

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    const/16 v23, 0x0

    aget v22, v22, v23

    aput v22, v20, v21

    goto/16 :goto_870

    .line 776
    :cond_c94
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->g_InitTwistAngle:F

    move/from16 v20, v0

    const/16 v21, 0x0

    cmpl-float v20, v20, v21

    if-lez v20, :cond_cf4

    .line 777
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->g_InitTwistAngle:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sad:[[F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget-object v21, v21, v22

    const/16 v22, 0x0

    aget v21, v21, v22

    sub-float v20, v20, v21

    const/high16 v21, 0x42b4

    cmpg-float v20, v20, v21

    if-gez v20, :cond_cd6

    .line 778
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->AngleTemp:[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sad:[[F

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    const/16 v23, 0x0

    aget v22, v22, v23

    aput v22, v20, v21

    goto/16 :goto_870

    .line 780
    :cond_cd6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->AngleTemp:[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/high16 v22, 0x4334

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sad:[[F

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    const/16 v24, 0x0

    aget v23, v23, v24

    add-float v22, v22, v23

    aput v22, v20, v21

    goto/16 :goto_870

    .line 782
    :cond_cf4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->g_InitTwistAngle:F

    move/from16 v20, v0

    const/16 v21, 0x0

    cmpg-float v20, v20, v21

    if-gez v20, :cond_870

    .line 783
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->g_InitTwistAngle:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sad:[[F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget-object v21, v21, v22

    const/16 v22, 0x0

    aget v21, v21, v22

    sub-float v20, v20, v21

    const/high16 v21, -0x3d4c

    cmpl-float v20, v20, v21

    if-lez v20, :cond_d36

    .line 784
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->AngleTemp:[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sad:[[F

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    const/16 v23, 0x0

    aget v22, v22, v23

    aput v22, v20, v21

    goto/16 :goto_870

    .line 786
    :cond_d36
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->AngleTemp:[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/high16 v22, 0x4334

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sad:[[F

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    const/16 v24, 0x0

    aget v23, v23, v24

    sub-float v22, v22, v23

    move/from16 v0, v22

    neg-float v0, v0

    move/from16 v22, v0

    aput v22, v20, v21

    goto/16 :goto_870

    .line 792
    :cond_d59
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->g_TwistCnt:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_d83

    .line 793
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->AngleTemp:[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->AngleTemp:[F

    move-object/from16 v21, v0

    const/16 v22, 0x1

    aget v21, v21, v22

    add-float v20, v20, v21

    const/high16 v21, 0x4000

    div-float v4, v20, v21

    goto/16 :goto_882

    .line 795
    :cond_d83
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->AngleTemp:[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->AngleTemp:[F

    move-object/from16 v21, v0

    const/16 v22, 0x1

    aget v21, v21, v22

    add-float v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->AngleTemp:[F

    move-object/from16 v21, v0

    const/16 v22, 0x2

    aget v21, v21, v22

    add-float v20, v20, v21

    const/high16 v21, 0x4040

    div-float v4, v20, v21

    goto/16 :goto_882

    .line 816
    :cond_dab
    const-string v20, "GestureDetector"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "[Surface Touch Event] Twist - Left, DiffAngle:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_91c

    .line 901
    .end local v14           #SweepSumSizeTH:I
    :pswitch_dc7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mTwistDown:Z

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_b8b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mPalmDown:Z

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_b8b

    goto/16 :goto_b8b

    .line 908
    :pswitch_de5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mPalmDown:Z

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_e07

    .line 909
    const-string v20, "GestureDetector"

    const-string v21, "[Surface Touch Event] Palm touch up"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mShapeListener:Landroid/view/GestureDetector$OnShapeGestureListener;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnShapeGestureListener;->onPalm(Landroid/view/MotionEvent;)Z

    .line 913
    :cond_e07
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->g_bSizeDecreased:Z

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_e33

    .line 914
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->TouchCnt:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->g_SDCnt:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    const/16 v21, 0xa

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_e33

    .line 915
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mSweepDown:Z

    .line 919
    :cond_e33
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->g_SweepReverseSum:F

    move/from16 v20, v0

    const/high16 v21, 0x4248

    cmpl-float v20, v20, v21

    if-gtz v20, :cond_e6b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mPalmDown:Z

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_e6b

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->g_Diffx:F

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(F)F

    move-result v20

    const/high16 v21, 0x43af

    cmpg-float v20, v20, v21

    if-ltz v20, :cond_e6b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->g_bVarXBig:Z

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_e73

    .line 920
    :cond_e6b
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mSweepDown:Z

    .line 923
    :cond_e73
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mSweepDown:Z

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_ecf

    .line 924
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->SweepDirection:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_f22

    .line 925
    const/high16 v20, 0x437a

    cmpg-float v20, v8, v20

    if-gez v20, :cond_ecf

    .line 926
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mShapeListener:Landroid/view/GestureDetector$OnShapeGestureListener;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-interface/range {v20 .. v21}, Landroid/view/GestureDetector$OnShapeGestureListener;->onSweepDown(I)Z

    move-result v17

    .line 927
    const-string v20, "GestureDetector"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "[Surface Touch Event] Palm Sweep - RIGHT, ss1:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->g_maxSS1:F

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " ss2:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->g_maxSS2:F

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    :cond_ecf
    :goto_ecf
    const/16 v19, 0x0

    :goto_ed1
    const/16 v20, 0xa

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_f77

    .line 939
    const/16 v18, 0x0

    :goto_edb
    const/16 v20, 0x3

    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_f73

    .line 940
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sxd:[[F

    move-object/from16 v20, v0

    aget-object v20, v20, v19

    const/16 v21, 0x0

    aput v21, v20, v18

    .line 941
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Syd:[[F

    move-object/from16 v20, v0

    aget-object v20, v20, v19

    const/16 v21, 0x0

    aput v21, v20, v18

    .line 942
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Ssd:[[F

    move-object/from16 v20, v0

    aget-object v20, v20, v19

    const/16 v21, 0x0

    aput v21, v20, v18

    .line 943
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sed:[[F

    move-object/from16 v20, v0

    aget-object v20, v20, v19

    const/16 v21, 0x0

    aput v21, v20, v18

    .line 944
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sad:[[F

    move-object/from16 v20, v0

    aget-object v20, v20, v19

    const/16 v21, 0x0

    aput v21, v20, v18

    .line 939
    add-int/lit8 v18, v18, 0x1

    goto :goto_edb

    .line 929
    :cond_f22
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->SweepDirection:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_ecf

    .line 930
    const v20, 0x44098000

    cmpl-float v20, v8, v20

    if-lez v20, :cond_ecf

    .line 931
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mShapeListener:Landroid/view/GestureDetector$OnShapeGestureListener;

    move-object/from16 v20, v0

    const/16 v21, 0x2

    invoke-interface/range {v20 .. v21}, Landroid/view/GestureDetector$OnShapeGestureListener;->onSweepDown(I)Z

    move-result v17

    .line 932
    const-string v20, "GestureDetector"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "[Surface Touch Event] Palm Sweep - LEFT, ss1:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->g_maxSS1:F

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " ss2:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->g_maxSS2:F

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_ecf

    .line 938
    :cond_f73
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_ed1

    .line 948
    :cond_f77
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->TouchCnt:I

    .line 949
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mPalmDown:Z

    .line 950
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mTwistDown:Z

    .line 951
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mSweepDown:Z

    .line 953
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->dist1:F

    .line 955
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->medX:F

    .line 956
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->medY:F

    .line 957
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->medSize:F

    .line 958
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->medFlag:Z

    .line 959
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->LiftTapStep1:Z

    .line 960
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->LiftTapStep2:Z

    .line 961
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->LiftTapStep3:Z

    .line 962
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mLiftTapDown:Z

    .line 963
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->bLiftTapCancel:Z

    .line 964
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->bHandTouchCancel:Z

    .line 965
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mHandTouched:Z

    .line 966
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->bInitHandTouch:Z

    .line 967
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->g_InitTwistAngle:F

    .line 968
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->g_bInitTwist:Z

    .line 969
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->g_bSweepReady:Z

    .line 971
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->g_SmeanXpre:F

    .line 972
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->g_SmeanX:F

    .line 973
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->g_bSizeDecreased:Z

    .line 974
    const/16 v20, -0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->g_SDCnt:I

    .line 975
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->g_SweepReverseSum:F

    .line 976
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->SweepDirection:I

    .line 977
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->g_Diffx:F

    .line 978
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->g_TwistCnt:I

    .line 979
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->g_maxSS1:F

    .line 980
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->g_maxSS2:F

    .line 981
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->g_preSmeanX:F

    .line 982
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->g_bVarXBig:Z

    .line 983
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->g_MaxTouchCnt:I

    .line 984
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->g_bPalmRejection:Z

    .line 985
    const/16 v18, 0x0

    :goto_1089
    const/16 v20, 0x3

    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_b8b

    .line 986
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->AngleTemp:[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput v21, v20, v18

    .line 985
    add-int/lit8 v18, v18, 0x1

    goto :goto_1089

    .line 899
    :pswitch_data_109e
    .packed-switch 0x1
        :pswitch_de5
        :pswitch_dc7
    .end packed-switch
.end method

.method public setIsLongpressEnabled(Z)V
    .registers 2
    .parameter "isLongpressEnabled"

    .prologue
    .line 560
    iput-boolean p1, p0, Landroid/view/GestureDetector;->mIsLongpressEnabled:Z

    .line 561
    return-void
.end method

.method public setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V
    .registers 2
    .parameter "onDoubleTapListener"

    .prologue
    .line 547
    iput-object p1, p0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    .line 548
    return-void
.end method
