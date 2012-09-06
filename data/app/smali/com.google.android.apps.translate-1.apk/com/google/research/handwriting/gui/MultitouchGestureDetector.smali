.class public Lcom/google/research/handwriting/gui/MultitouchGestureDetector;
.super Ljava/lang/Object;
.source "MultitouchGestureDetector.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mHorizontalListenner:Lcom/google/research/handwriting/gui/ScrollGestureListenner;

.field private mIsInProgress:Z

.field private final mStrokes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/research/handwriting/base/Stroke;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    const-class v0, Lcom/google/research/handwriting/gui/MultitouchGestureDetector;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/google/research/handwriting/gui/MultitouchGestureDetector;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/research/handwriting/gui/MultitouchGestureDetector;->mIsInProgress:Z

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/research/handwriting/gui/MultitouchGestureDetector;->mStrokes:Ljava/util/Map;

    .line 34
    return-void
.end method

.method public constructor <init>(Lcom/google/research/handwriting/gui/ScrollGestureListenner;)V
    .registers 3
    .parameter "horizontalListenner"

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/research/handwriting/gui/MultitouchGestureDetector;->mIsInProgress:Z

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/research/handwriting/gui/MultitouchGestureDetector;->mStrokes:Ljava/util/Map;

    .line 40
    iput-object p1, p0, Lcom/google/research/handwriting/gui/MultitouchGestureDetector;->mHorizontalListenner:Lcom/google/research/handwriting/gui/ScrollGestureListenner;

    .line 41
    return-void
.end method

.method private getMeanPointersXCoordinate()F
    .registers 5

    .prologue
    .line 121
    iget-object v3, p0, Lcom/google/research/handwriting/gui/MultitouchGestureDetector;->mStrokes:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-nez v3, :cond_a

    .line 122
    const/4 v3, 0x0

    .line 130
    :goto_9
    return v3

    .line 125
    :cond_a
    const/4 v1, 0x0

    .line 126
    .local v1, ret:F
    iget-object v3, p0, Lcom/google/research/handwriting/gui/MultitouchGestureDetector;->mStrokes:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/research/handwriting/base/Stroke;

    .line 127
    .local v2, s:Lcom/google/research/handwriting/base/Stroke;
    invoke-virtual {v2}, Lcom/google/research/handwriting/base/Stroke;->getLast()Lcom/google/research/handwriting/base/Stroke$Point;

    move-result-object v3

    iget v3, v3, Lcom/google/research/handwriting/base/Stroke$Point;->x:F

    add-float/2addr v1, v3

    goto :goto_15

    .line 130
    .end local v2           #s:Lcom/google/research/handwriting/base/Stroke;
    :cond_29
    iget-object v3, p0, Lcom/google/research/handwriting/gui/MultitouchGestureDetector;->mStrokes:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    int-to-float v3, v3

    div-float v3, v1, v3

    goto :goto_9
.end method

.method private multitouchPointerAdded(Landroid/view/MotionEvent;)V
    .registers 5
    .parameter "event"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/research/handwriting/gui/MultitouchGestureDetector;->mStrokes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 141
    sget-boolean v0, Lcom/google/research/handwriting/gui/MultitouchGestureDetector;->$assertionsDisabled:Z

    if-nez v0, :cond_19

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_19

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 142
    :cond_19
    iget-object v0, p0, Lcom/google/research/handwriting/gui/MultitouchGestureDetector;->mStrokes:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/google/research/handwriting/base/Stroke;

    invoke-direct {v2}, Lcom/google/research/handwriting/base/Stroke;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    :cond_2c
    iget-object v0, p0, Lcom/google/research/handwriting/gui/MultitouchGestureDetector;->mStrokes:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/google/research/handwriting/base/Stroke;

    invoke-direct {v2}, Lcom/google/research/handwriting/base/Stroke;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    return-void
.end method

.method private pointerMove(Landroid/view/MotionEvent;)V
    .registers 9
    .parameter "event"

    .prologue
    .line 90
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 92
    .local v1, ptrId:I
    const/4 v0, 0x0

    .local v0, h:I
    :goto_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v2

    if-ge v0, v2, :cond_2b

    .line 93
    new-instance v2, Lcom/google/research/handwriting/base/Stroke$Point;

    invoke-virtual {p1, v1, v0}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result v3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v4

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v5

    long-to-float v5, v5

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getHistoricalPressure(I)F

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/research/handwriting/base/Stroke$Point;-><init>(FFFF)V

    invoke-direct {p0, v1, v2}, Lcom/google/research/handwriting/gui/MultitouchGestureDetector;->processMove(ILcom/google/research/handwriting/base/Stroke$Point;)V

    .line 92
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 97
    :cond_2b
    new-instance v2, Lcom/google/research/handwriting/base/Stroke$Point;

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    long-to-float v5, v5

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/research/handwriting/base/Stroke$Point;-><init>(FFFF)V

    invoke-direct {p0, v1, v2}, Lcom/google/research/handwriting/gui/MultitouchGestureDetector;->processMove(ILcom/google/research/handwriting/base/Stroke$Point;)V

    .line 99
    return-void
.end method

.method private processMove(ILcom/google/research/handwriting/base/Stroke$Point;)V
    .registers 6
    .parameter "pointerId"
    .parameter "point"

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/google/research/handwriting/gui/MultitouchGestureDetector;->getMeanPointersXCoordinate()F

    move-result v0

    .line 110
    .local v0, oldX:F
    iget-object v1, p0, Lcom/google/research/handwriting/gui/MultitouchGestureDetector;->mStrokes:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/research/handwriting/base/Stroke;

    invoke-virtual {v1, p2}, Lcom/google/research/handwriting/base/Stroke;->addPoint(Lcom/google/research/handwriting/base/Stroke$Point;)V

    .line 112
    iget-object v1, p0, Lcom/google/research/handwriting/gui/MultitouchGestureDetector;->mHorizontalListenner:Lcom/google/research/handwriting/gui/ScrollGestureListenner;

    invoke-direct {p0}, Lcom/google/research/handwriting/gui/MultitouchGestureDetector;->getMeanPointersXCoordinate()F

    move-result v2

    sub-float/2addr v2, v0

    invoke-virtual {v1, v2}, Lcom/google/research/handwriting/gui/ScrollGestureListenner;->onScroll(F)V

    .line 113
    return-void
.end method


# virtual methods
.method public isInProgress()Z
    .registers 2

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/google/research/handwriting/gui/MultitouchGestureDetector;->mIsInProgress:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .registers 4
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_28

    .line 84
    :cond_8
    :goto_8
    :pswitch_8
    return-void

    .line 57
    :pswitch_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/research/handwriting/gui/MultitouchGestureDetector;->mIsInProgress:Z

    .line 58
    invoke-direct {p0, p1}, Lcom/google/research/handwriting/gui/MultitouchGestureDetector;->multitouchPointerAdded(Landroid/view/MotionEvent;)V

    goto :goto_8

    .line 62
    :pswitch_10
    iget-boolean v0, p0, Lcom/google/research/handwriting/gui/MultitouchGestureDetector;->mIsInProgress:Z

    if-eqz v0, :cond_8

    .line 63
    invoke-direct {p0, p1}, Lcom/google/research/handwriting/gui/MultitouchGestureDetector;->pointerMove(Landroid/view/MotionEvent;)V

    goto :goto_8

    .line 74
    :pswitch_18
    iget-boolean v0, p0, Lcom/google/research/handwriting/gui/MultitouchGestureDetector;->mIsInProgress:Z

    if-eqz v0, :cond_8

    .line 75
    iget-object v0, p0, Lcom/google/research/handwriting/gui/MultitouchGestureDetector;->mStrokes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 76
    iput-boolean v1, p0, Lcom/google/research/handwriting/gui/MultitouchGestureDetector;->mIsInProgress:Z

    goto :goto_8

    .line 81
    :pswitch_24
    iput-boolean v1, p0, Lcom/google/research/handwriting/gui/MultitouchGestureDetector;->mIsInProgress:Z

    goto :goto_8

    .line 50
    nop

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_8
        :pswitch_18
        :pswitch_10
        :pswitch_24
        :pswitch_8
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method
