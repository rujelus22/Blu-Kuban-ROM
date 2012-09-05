.class public Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;
.super Ljava/lang/Object;
.source "EvAdvanceGestureDetector.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/GestureDetector$OnDoubleTapListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector$GestureHandler;,
        Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector$OnEvGestureListener;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DOUBLE_TAP_TIMEOUT:I = 0x0

.field protected static final LOG_CAT:Ljava/lang/String; = "EvAdvanceGestureDetector"

.field protected static final STATUS_DOUBLETAP:I = 0x1

.field protected static final STATUS_FLING:I = 0x2

.field protected static final STATUS_LONGPRESS:I = 0x3

.field protected static final STATUS_NONE:I = 0x0

.field private static final TAP:I = 0x3


# instance fields
.field private mAlwaysInBiggerTapRegion:Z

.field private mAlwaysInTapRegion:Z

.field private mBiggerTouchSlopSquare:I

.field protected mCurrentDownEvent:Landroid/view/MotionEvent;

.field protected mDetector:Landroid/view/GestureDetector;

.field protected mDoubleTapBeginTime:J

.field private mDoubleTapSlopSquare:I

.field private final mHandler:Landroid/os/Handler;

.field protected mLastMotionX:F

.field protected mLastMotionY:F

.field protected mListener:Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector$OnEvGestureListener;

.field private mPreviousUpEvent:Landroid/view/MotionEvent;

.field private mStillDown:Z

.field private mTouchSlopSquare:I

.field protected mTouchState:I

.field protected mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 41
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    sput v0, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;->DOUBLE_TAP_TIMEOUT:I

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector$OnEvGestureListener;)V
    .registers 9
    .parameter "context"
    .parameter "view"
    .parameter "listener"

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v3, 0x0

    iput v3, p0, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;->mTouchState:I

    .line 25
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;->mDoubleTapBeginTime:J

    .line 27
    const/16 v3, 0x190

    iput v3, p0, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;->mBiggerTouchSlopSquare:I

    .line 46
    new-instance v3, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector$GestureHandler;

    invoke-direct {v3, p0}, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector$GestureHandler;-><init>(Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;)V

    iput-object v3, p0, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;->mHandler:Landroid/os/Handler;

    .line 78
    if-nez p3, :cond_1f

    .line 79
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "EvAdvanceGestureDetector must not be null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 82
    :cond_1f
    iput-object p2, p0, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;->mView:Landroid/view/View;

    .line 83
    new-instance v3, Landroid/view/GestureDetector;

    invoke-direct {v3, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v3, p0, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;->mDetector:Landroid/view/GestureDetector;

    .line 84
    iget-object v3, p0, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;->mDetector:Landroid/view/GestureDetector;

    invoke-virtual {v3, p0}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 85
    iput-object p3, p0, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;->mListener:Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector$OnEvGestureListener;

    .line 88
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 89
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    .line 90
    .local v2, touchSlop:I
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v1

    .line 91
    .local v1, doubleTapSlop:I
    mul-int v3, v2, v2

    iput v3, p0, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;->mTouchSlopSquare:I

    .line 92
    mul-int v3, v1, v1

    iput v3, p0, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;->mDoubleTapSlopSquare:I

    .line 93
    return-void
.end method


# virtual methods
.method public AdvanceGesturefinalize()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 97
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;->mDetector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_a

    .line 98
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;->mDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 100
    :cond_a
    iput-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;->mView:Landroid/view/View;

    .line 101
    iput-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;->mDetector:Landroid/view/GestureDetector;

    .line 102
    iput-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;->mListener:Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector$OnEvGestureListener;

    .line 103
    return-void
.end method

.method public cancel()V
    .registers 3

    .prologue
    .line 264
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 265
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;->mStillDown:Z

    .line 266
    return-void
.end method

.method protected dumpEvent(Landroid/view/MotionEvent;)V
    .registers 11
    .parameter "event"

    .prologue
    const/4 v8, 0x6

    const/4 v7, 0x5

    .line 346
    const/16 v5, 0xa

    new-array v3, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "DOWN"

    aput-object v6, v3, v5

    const/4 v5, 0x1

    const-string v6, "UP"

    aput-object v6, v3, v5

    const/4 v5, 0x2

    const-string v6, "MOVE"

    aput-object v6, v3, v5

    const/4 v5, 0x3

    const-string v6, "CANCEL"

    aput-object v6, v3, v5

    const/4 v5, 0x4

    const-string v6, "OUTSIDE"

    aput-object v6, v3, v5

    .line 347
    const-string v5, "POINTER_DOWN"

    aput-object v5, v3, v7

    const-string v5, "POINTER_UP"

    aput-object v5, v3, v8

    const/4 v5, 0x7

    const-string v6, "7?"

    aput-object v6, v3, v5

    const/16 v5, 0x8

    const-string v6, "8?"

    aput-object v6, v3, v5

    const/16 v5, 0x9

    const-string v6, "9?"

    aput-object v6, v3, v5

    .line 349
    .local v3, names:[Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 350
    .local v4, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 351
    .local v0, action:I
    and-int/lit16 v1, v0, 0xff

    .line 352
    .local v1, actionCode:I
    const-string v5, "event ACTION_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    if-eq v1, v7, :cond_52

    if-ne v1, v8, :cond_62

    .line 355
    :cond_52
    const-string v5, "(pid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    shr-int/lit8 v6, v0, 0x8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 356
    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    :cond_62
    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    const/4 v2, 0x0

    .local v2, i:I
    :goto_68
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    if-lt v2, v5, :cond_7d

    .line 368
    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    const-string v5, "Event dump"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    return-void

    .line 361
    :cond_7d
    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 362
    const-string v5, "(pid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 363
    const-string v5, ")="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 364
    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 365
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    if-ge v5, v6, :cond_bc

    .line 366
    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    :cond_bc
    add-int/lit8 v2, v2, 0x1

    goto :goto_68
.end method

.method protected isConsideredDoubleTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .registers 11
    .parameter "firstDown"
    .parameter "firstUp"
    .parameter "secondDown"

    .prologue
    const/4 v2, 0x0

    .line 270
    iget-boolean v3, p0, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;->mAlwaysInBiggerTapRegion:Z

    if-nez v3, :cond_6

    .line 280
    :cond_5
    :goto_5
    return v2

    .line 274
    :cond_6
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    sget v5, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;->DOUBLE_TAP_TIMEOUT:I

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-gtz v3, :cond_5

    .line 278
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    sub-int v0, v3, v4

    .line 279
    .local v0, deltaX:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    sub-int v1, v3, v4

    .line 280
    .local v1, deltaY:I
    mul-int v3, v0, v0

    mul-int v4, v1, v1

    add-int/2addr v3, v4

    iget v4, p0, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;->mDoubleTapSlopSquare:I

    if-ge v3, v4, :cond_5

    const/4 v2, 0x1

    goto :goto_5
.end method

.method public final onDoubleTap(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "e"

    .prologue
    .line 288
    const-string v0, "EvAdvanceGestureDetector"

    const-string v1, "mTouchState = STATUS_DOUBLETAP"

    invoke-static {v0, v1}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    const/4 v0, 0x1

    iput v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;->mTouchState:I

    .line 290
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;->mDoubleTapBeginTime:J

    .line 292
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;->mListener:Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector$OnEvGestureListener;

    if-eqz v0, :cond_1b

    .line 293
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;->mListener:Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector$OnEvGestureListener;

    invoke-interface {v0, p1}, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector$OnEvGestureListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 295
    :goto_1a
    return v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "e"

    .prologue
    .line 284
    const/4 v0, 0x0

    return v0
.end method

.method public final onDown(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "e"

    .prologue
    .line 309
    const/4 v0, 0x0

    return v0
.end method

.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 6
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 313
    const/4 v0, 0x2

    iput v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;->mTouchState:I

    .line 314
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;->mListener:Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector$OnEvGestureListener;

    if-eqz v0, :cond_e

    .line 315
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;->mListener:Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector$OnEvGestureListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector$OnEvGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    .line 317
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public final onLongPress(Landroid/view/MotionEvent;)V
    .registers 5
    .parameter "e"

    .prologue
    const/4 v2, 0x3

    .line 322
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 323
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;->mListener:Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector$OnEvGestureListener;

    if-eqz v0, :cond_16

    iget v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;->mTouchState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    .line 324
    iput v2, p0, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;->mTouchState:I

    .line 325
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;->mListener:Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector$OnEvGestureListener;

    invoke-interface {v0, p1}, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector$OnEvGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    .line 327
    :cond_16
    return-void
.end method

.method public final onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 6
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 331
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;->mListener:Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector$OnEvGestureListener;

    if-eqz v0, :cond_b

    .line 332
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;->mListener:Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector$OnEvGestureListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector$OnEvGestureListener;->onSingleTouchDrag(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    .line 334
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public final onShowPress(Landroid/view/MotionEvent;)V
    .registers 2
    .parameter "e"

    .prologue
    .line 338
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "e"

    .prologue
    .line 302
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;->mListener:Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector$OnEvGestureListener;

    if-eqz v0, :cond_b

    .line 303
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;->mListener:Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector$OnEvGestureListener;

    invoke-interface {v0, p1}, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector$OnEvGestureListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 305
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public final onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "e"

    .prologue
    .line 341
    const/4 v0, 0x0

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 22
    .parameter "v"
    .parameter "e"

    .prologue
    .line 129
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;->mView:Landroid/view/View;

    move-object/from16 v0, p1

    if-ne v0, v13, :cond_56

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;->mDetector:Landroid/view/GestureDetector;

    if-eqz v13, :cond_56

    .line 130
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;->mDetector:Landroid/view/GestureDetector;

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 135
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    .line 136
    .local v12, y:F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    .line 137
    .local v11, x:F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v13

    and-int/lit16 v2, v13, 0xff

    .line 139
    .local v2, action:I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;->mTouchState:I

    const/4 v14, 0x1

    if-eq v13, v14, :cond_33

    move-object/from16 v0, p0

    iget v13, v0, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;->mTouchState:I

    const/4 v14, 0x3

    if-ne v13, v14, :cond_53

    .line 140
    :cond_33
    packed-switch v2, :pswitch_data_27e

    .line 146
    const-string v13, "EvAdvanceGestureDetector"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Oops!! mTouchState = "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v15, v0, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;->mTouchState:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;->mTouchState:I

    .line 153
    :cond_53
    :pswitch_53
    packed-switch v2, :pswitch_data_288

    .line 260
    .end local v2           #action:I
    .end local v11           #x:F
    .end local v12           #y:F
    :cond_56
    :goto_56
    :pswitch_56
    const/4 v8, 0x0

    :goto_57
    return v8

    .line 156
    .restart local v2       #action:I
    .restart local v11       #x:F
    .restart local v12       #y:F
    :pswitch_58
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v14, 0x3

    invoke-virtual {v13, v14}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v7

    .line 157
    .local v7, hadTapMessage:Z
    if-eqz v7, :cond_6b

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v14, 0x3

    invoke-virtual {v13, v14}, Landroid/os/Handler;->removeMessages(I)V

    .line 159
    :cond_6b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    if-eqz v13, :cond_8b

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    if-eqz v13, :cond_8b

    if-eqz v7, :cond_8b

    .line 160
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v13, v14, v1}, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;->isConsideredDoubleTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v13

    if-nez v13, :cond_96

    .line 163
    :cond_8b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v14, 0x3

    sget v15, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;->DOUBLE_TAP_TIMEOUT:I

    int-to-long v15, v15

    invoke-virtual/range {v13 .. v16}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 166
    :cond_96
    move-object/from16 v0, p0

    iput v11, v0, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;->mLastMotionX:F

    .line 167
    move-object/from16 v0, p0

    iput v12, v0, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;->mLastMotionY:F

    .line 168
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    if-eqz v13, :cond_ab

    .line 169
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v13}, Landroid/view/MotionEvent;->recycle()V

    .line 171
    :cond_ab
    invoke-static/range {p2 .. p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    .line 172
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;->mAlwaysInTapRegion:Z

    .line 173
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;->mAlwaysInBiggerTapRegion:Z

    .line 174
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;->mStillDown:Z

    .line 176
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;->mListener:Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector$OnEvGestureListener;

    if-eqz v13, :cond_d3

    .line 177
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;->mListener:Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector$OnEvGestureListener;

    move-object/from16 v0, p2

    invoke-interface {v13, v0}, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector$OnEvGestureListener;->onSingleTouchDown(Landroid/view/MotionEvent;)Z

    move-result v8

    goto :goto_57

    .line 181
    .end local v7           #hadTapMessage:Z
    :cond_d3
    :pswitch_d3
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;->mStillDown:Z

    .line 182
    invoke-static/range {p2 .. p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    .line 183
    .local v3, currentUpEvent:Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;->mListener:Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector$OnEvGestureListener;

    move-object/from16 v0, p2

    invoke-interface {v13, v0}, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector$OnEvGestureListener;->onSingleTouchUp(Landroid/view/MotionEvent;)Z

    move-result v8

    .line 184
    .local v8, result:Z
    move-object/from16 v0, p0

    iget v13, v0, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;->mTouchState:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_113

    .line 185
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v14, 0x3

    invoke-virtual {v13, v14}, Landroid/os/Handler;->removeMessages(I)V

    .line 186
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v13

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;->mDoubleTapBeginTime:J

    sub-long/2addr v13, v15

    const-wide/16 v15, 0x15e

    cmp-long v13, v13, v15

    if-gez v13, :cond_12b

    .line 187
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;->mListener:Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector$OnEvGestureListener;

    if-eqz v13, :cond_113

    .line 188
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;->mListener:Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector$OnEvGestureListener;

    move-object/from16 v0, p2

    invoke-interface {v13, v0}, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector$OnEvGestureListener;->onDoubleTapConfirmed(Landroid/view/MotionEvent;)Z

    .line 193
    :cond_113
    :goto_113
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;->mTouchState:I

    .line 195
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    if-eqz v13, :cond_125

    .line 196
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    invoke-virtual {v13}, Landroid/view/MotionEvent;->recycle()V

    .line 199
    :cond_125
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    goto/16 :goto_57

    .line 191
    :cond_12b
    const-string v13, "EvAdvanceGestureDetector"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Double tap canceled, endTime - startTime = "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v15

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;->mDoubleTapBeginTime:J

    move-wide/from16 v17, v0

    sub-long v15, v15, v17

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_113

    .line 204
    .end local v3           #currentUpEvent:Landroid/view/MotionEvent;
    .end local v8           #result:Z
    :pswitch_14c
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v13

    const/4 v14, 0x2

    if-eq v13, v14, :cond_168

    .line 205
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_228

    move-object/from16 v0, p0

    iget v13, v0, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;->mTouchState:I

    const/4 v14, 0x1

    if-eq v13, v14, :cond_168

    move-object/from16 v0, p0

    iget v13, v0, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;->mTouchState:I

    const/4 v14, 0x3

    if-ne v13, v14, :cond_228

    .line 206
    :cond_168
    move-object/from16 v0, p0

    iget v13, v0, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;->mLastMotionX:F

    sub-float v9, v13, v11

    .line 207
    .local v9, scrollX:F
    move-object/from16 v0, p0

    iget v13, v0, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;->mLastMotionY:F

    sub-float v10, v13, v12

    .line 209
    .local v10, scrollY:F
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;->mAlwaysInTapRegion:Z

    if-eqz v13, :cond_1e4

    .line 210
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v13}, Landroid/view/MotionEvent;->getX()F

    move-result v13

    sub-float v13, v11, v13

    float-to-int v4, v13

    .line 211
    .local v4, deltaX:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v13}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    sub-float v13, v12, v13

    float-to-int v5, v13

    .line 212
    .local v5, deltaY:I
    mul-int v13, v4, v4

    mul-int v14, v5, v5

    add-int v6, v13, v14

    .line 213
    .local v6, distance:I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;->mTouchSlopSquare:I

    if-le v6, v13, :cond_1c7

    .line 214
    move-object/from16 v0, p0

    iput v11, v0, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;->mLastMotionX:F

    .line 215
    move-object/from16 v0, p0

    iput v12, v0, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;->mLastMotionY:F

    .line 216
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;->mAlwaysInTapRegion:Z

    .line 217
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v14, 0x3

    invoke-virtual {v13, v14}, Landroid/os/Handler;->removeMessages(I)V

    .line 219
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;->mListener:Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector$OnEvGestureListener;

    if-eqz v13, :cond_1c7

    .line 220
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v13

    const/4 v14, 0x2

    if-ne v13, v14, :cond_1d4

    .line 221
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;->mListener:Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector$OnEvGestureListener;

    move-object/from16 v0, p2

    invoke-interface {v13, v0}, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector$OnEvGestureListener;->onMultiTouchDrag(Landroid/view/MotionEvent;)Z

    .line 226
    :cond_1c7
    move-object/from16 v0, p0

    iget v13, v0, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;->mBiggerTouchSlopSquare:I

    if-le v6, v13, :cond_56

    .line 227
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;->mAlwaysInBiggerTapRegion:Z

    goto/16 :goto_56

    .line 223
    :cond_1d4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;->mListener:Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector$OnEvGestureListener;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v0, p2

    invoke-interface {v13, v14, v0, v9, v10}, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector$OnEvGestureListener;->onSingleTouchDrag(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v8

    goto/16 :goto_57

    .line 229
    .end local v4           #deltaX:I
    .end local v5           #deltaY:I
    .end local v6           #distance:I
    :cond_1e4
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v13

    const/high16 v14, 0x3f80

    cmpl-float v13, v13, v14

    if-gez v13, :cond_1f8

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v13

    const/high16 v14, 0x3f80

    cmpl-float v13, v13, v14

    if-ltz v13, :cond_56

    .line 230
    :cond_1f8
    move-object/from16 v0, p0

    iput v11, v0, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;->mLastMotionX:F

    .line 231
    move-object/from16 v0, p0

    iput v12, v0, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;->mLastMotionY:F

    .line 233
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;->mListener:Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector$OnEvGestureListener;

    if-eqz v13, :cond_56

    .line 234
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v13

    const/4 v14, 0x2

    if-ne v13, v14, :cond_218

    .line 235
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;->mListener:Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector$OnEvGestureListener;

    move-object/from16 v0, p2

    invoke-interface {v13, v0}, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector$OnEvGestureListener;->onMultiTouchDrag(Landroid/view/MotionEvent;)Z

    goto/16 :goto_56

    .line 237
    :cond_218
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;->mListener:Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector$OnEvGestureListener;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v0, p2

    invoke-interface {v13, v14, v0, v9, v10}, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector$OnEvGestureListener;->onSingleTouchDrag(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v8

    goto/16 :goto_57

    .line 241
    .end local v9           #scrollX:F
    .end local v10           #scrollY:F
    :cond_228
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v13

    const/4 v14, 0x2

    if-ne v13, v14, :cond_240

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;->mListener:Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector$OnEvGestureListener;

    if-eqz v13, :cond_240

    .line 242
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;->mListener:Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector$OnEvGestureListener;

    move-object/from16 v0, p2

    invoke-interface {v13, v0}, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector$OnEvGestureListener;->onMultiTouchDrag(Landroid/view/MotionEvent;)Z

    goto/16 :goto_56

    .line 244
    :cond_240
    const/4 v8, 0x0

    goto/16 :goto_57

    .line 248
    :pswitch_243
    invoke-virtual/range {p0 .. p0}, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;->cancel()V

    .line 249
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v13

    const/4 v14, 0x2

    if-ne v13, v14, :cond_25f

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;->mListener:Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector$OnEvGestureListener;

    if-eqz v13, :cond_25f

    .line 250
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;->mListener:Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector$OnEvGestureListener;

    move-object/from16 v0, p2

    invoke-interface {v13, v0}, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector$OnEvGestureListener;->onMultiTouchDown(Landroid/view/MotionEvent;)Z

    move-result v8

    goto/16 :goto_57

    .line 252
    :cond_25f
    :pswitch_25f
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v13

    const/4 v14, 0x2

    if-ne v13, v14, :cond_278

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;->mListener:Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector$OnEvGestureListener;

    if-eqz v13, :cond_278

    .line 253
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;->mListener:Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector$OnEvGestureListener;

    move-object/from16 v0, p2

    invoke-interface {v13, v0}, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector$OnEvGestureListener;->onMultiTouchUp(Landroid/view/MotionEvent;)Z

    move-result v8

    goto/16 :goto_57

    .line 256
    :cond_278
    :pswitch_278
    invoke-virtual/range {p0 .. p0}, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;->cancel()V

    goto/16 :goto_56

    .line 140
    nop

    :pswitch_data_27e
    .packed-switch 0x0
        :pswitch_53
        :pswitch_53
        :pswitch_53
    .end packed-switch

    .line 153
    :pswitch_data_288
    .packed-switch 0x0
        :pswitch_58
        :pswitch_d3
        :pswitch_14c
        :pswitch_278
        :pswitch_56
        :pswitch_243
        :pswitch_25f
    .end packed-switch
.end method

.method public setIsLongpressEnabled(Z)V
    .registers 3
    .parameter "isLongpressEnabled"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;->mDetector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_9

    .line 107
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;->mDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 108
    :cond_9
    return-void
.end method
