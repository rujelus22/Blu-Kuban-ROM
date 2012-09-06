.class Lcom/google/android/apps/googlevoice/TranscriptView$SlopTracker;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "TranscriptView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/googlevoice/TranscriptView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SlopTracker"
.end annotation


# instance fields
.field private gestureDetector:Landroid/view/GestureDetector;

.field private isWithinSlop:Z

.field final synthetic this$0:Lcom/google/android/apps/googlevoice/TranscriptView;

.field private final touchSlopSquaredPx:I


# direct methods
.method private constructor <init>(Lcom/google/android/apps/googlevoice/TranscriptView;)V
    .registers 4
    .parameter

    .prologue
    .line 309
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/TranscriptView$SlopTracker;->this$0:Lcom/google/android/apps/googlevoice/TranscriptView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 307
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/apps/googlevoice/TranscriptView$SlopTracker;->isWithinSlop:Z

    .line 310
    invoke-virtual {p1}, Lcom/google/android/apps/googlevoice/TranscriptView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    .line 311
    .local v0, touchSlopPx:I
    mul-int v1, v0, v0

    iput v1, p0, Lcom/google/android/apps/googlevoice/TranscriptView$SlopTracker;->touchSlopSquaredPx:I

    .line 312
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/googlevoice/TranscriptView;Lcom/google/android/apps/googlevoice/TranscriptView$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 301
    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/TranscriptView$SlopTracker;-><init>(Lcom/google/android/apps/googlevoice/TranscriptView;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/apps/googlevoice/TranscriptView$SlopTracker;Landroid/view/MotionEvent;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 301
    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/TranscriptView$SlopTracker;->handleTouchEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private handleTouchEvent(Landroid/view/MotionEvent;)V
    .registers 5
    .parameter "ev"

    .prologue
    const/4 v2, 0x1

    .line 315
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1b

    .line 319
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/TranscriptView$SlopTracker;->this$0:Lcom/google/android/apps/googlevoice/TranscriptView;

    invoke-virtual {v1}, Lcom/google/android/apps/googlevoice/TranscriptView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/TranscriptView$SlopTracker;->gestureDetector:Landroid/view/GestureDetector;

    .line 320
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/TranscriptView$SlopTracker;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, v2}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 321
    iput-boolean v2, p0, Lcom/google/android/apps/googlevoice/TranscriptView$SlopTracker;->isWithinSlop:Z

    .line 323
    :cond_1b
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/TranscriptView$SlopTracker;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 324
    return-void
.end method


# virtual methods
.method public isWithinSlop()Z
    .registers 2

    .prologue
    .line 353
    iget-boolean v0, p0, Lcom/google/android/apps/googlevoice/TranscriptView$SlopTracker;->isWithinSlop:Z

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 3
    .parameter "e"

    .prologue
    .line 347
    iget-boolean v0, p0, Lcom/google/android/apps/googlevoice/TranscriptView$SlopTracker;->isWithinSlop:Z

    if-eqz v0, :cond_9

    .line 348
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/TranscriptView$SlopTracker;->this$0:Lcom/google/android/apps/googlevoice/TranscriptView;

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/TranscriptView;->performLongClick()Z

    .line 350
    :cond_9
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 10
    .parameter "downEv"
    .parameter "curEv"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 329
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    sub-int v0, v3, v4

    .line 330
    .local v0, deltaDownXPx:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    sub-int v1, v3, v4

    .line 331
    .local v1, deltaDownYPx:I
    mul-int v3, v0, v0

    mul-int v4, v1, v1

    add-int v2, v3, v4

    .line 333
    .local v2, distanceSquaredPx:I
    iget v3, p0, Lcom/google/android/apps/googlevoice/TranscriptView$SlopTracker;->touchSlopSquaredPx:I

    if-le v2, v3, :cond_25

    .line 334
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/google/android/apps/googlevoice/TranscriptView$SlopTracker;->isWithinSlop:Z

    .line 336
    :cond_25
    const/4 v3, 0x1

    return v3
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter "e"

    .prologue
    .line 341
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/TranscriptView$SlopTracker;->this$0:Lcom/google/android/apps/googlevoice/TranscriptView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    #calls: Lcom/google/android/apps/googlevoice/TranscriptView;->clickWordAt(II)V
    invoke-static {v0, v1, v2}, Lcom/google/android/apps/googlevoice/TranscriptView;->access$200(Lcom/google/android/apps/googlevoice/TranscriptView;II)V

    .line 342
    const/4 v0, 0x1

    return v0
.end method

.method public reset()V
    .registers 2

    .prologue
    .line 357
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/googlevoice/TranscriptView$SlopTracker;->isWithinSlop:Z

    .line 358
    return-void
.end method
