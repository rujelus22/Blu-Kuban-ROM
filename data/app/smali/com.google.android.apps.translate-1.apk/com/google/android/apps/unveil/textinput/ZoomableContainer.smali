.class public Lcom/google/android/apps/unveil/textinput/ZoomableContainer;
.super Landroid/view/ViewGroup;
.source "ZoomableContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/unveil/textinput/ZoomableContainer$EventListener;
    }
.end annotation


# static fields
.field private static MAX_ZOOM:F

.field private static MIN_ZOOM:F

.field private static final logger:Lcom/google/android/apps/unveil/env/UnveilLogger;


# instance fields
.field private final matrix:Landroid/graphics/Matrix;

.field private final point:Landroid/graphics/PointF;

.field private final scaleDetector:Landroid/view/ScaleGestureDetector;

.field private scaleFactor:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 23
    new-instance v0, Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>()V

    sput-object v0, Lcom/google/android/apps/unveil/textinput/ZoomableContainer;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    .line 24
    const/high16 v0, 0x3f80

    sput v0, Lcom/google/android/apps/unveil/textinput/ZoomableContainer;->MIN_ZOOM:F

    .line 25
    const/high16 v0, 0x40a0

    sput v0, Lcom/google/android/apps/unveil/textinput/ZoomableContainer;->MAX_ZOOM:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/google/android/apps/unveil/textinput/ZoomableContainer;->scaleFactor:F

    .line 27
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/textinput/ZoomableContainer;->point:Landroid/graphics/PointF;

    .line 29
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/textinput/ZoomableContainer;->matrix:Landroid/graphics/Matrix;

    .line 33
    new-instance v0, Landroid/view/ScaleGestureDetector;

    new-instance v1, Lcom/google/android/apps/unveil/textinput/ZoomableContainer$1;

    invoke-direct {v1, p0}, Lcom/google/android/apps/unveil/textinput/ZoomableContainer$1;-><init>(Lcom/google/android/apps/unveil/textinput/ZoomableContainer;)V

    invoke-direct {v0, p1, v1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/google/android/apps/unveil/textinput/ZoomableContainer;->scaleDetector:Landroid/view/ScaleGestureDetector;

    .line 93
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/unveil/textinput/ZoomableContainer;)Landroid/graphics/PointF;
    .registers 2
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/ZoomableContainer;->point:Landroid/graphics/PointF;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/unveil/textinput/ZoomableContainer;)Landroid/graphics/Matrix;
    .registers 2
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/ZoomableContainer;->matrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/unveil/textinput/ZoomableContainer;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 22
    iget v0, p0, Lcom/google/android/apps/unveil/textinput/ZoomableContainer;->scaleFactor:F

    return v0
.end method

.method static synthetic access$202(Lcom/google/android/apps/unveil/textinput/ZoomableContainer;F)F
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput p1, p0, Lcom/google/android/apps/unveil/textinput/ZoomableContainer;->scaleFactor:F

    return p1
.end method

.method static synthetic access$232(Lcom/google/android/apps/unveil/textinput/ZoomableContainer;F)F
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iget v0, p0, Lcom/google/android/apps/unveil/textinput/ZoomableContainer;->scaleFactor:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/google/android/apps/unveil/textinput/ZoomableContainer;->scaleFactor:F

    return v0
.end method

.method static synthetic access$300()F
    .registers 1

    .prologue
    .line 22
    sget v0, Lcom/google/android/apps/unveil/textinput/ZoomableContainer;->MIN_ZOOM:F

    return v0
.end method

.method static synthetic access$400()F
    .registers 1

    .prologue
    .line 22
    sget v0, Lcom/google/android/apps/unveil/textinput/ZoomableContainer;->MAX_ZOOM:F

    return v0
.end method

.method static synthetic access$500(Lcom/google/android/apps/unveil/textinput/ZoomableContainer;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/google/android/apps/unveil/textinput/ZoomableContainer;->notifyChildren()V

    return-void
.end method

.method private notifyChildren()V
    .registers 5

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/textinput/ZoomableContainer;->getChildCount()I

    move-result v2

    .line 137
    .local v2, n:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    if-ge v1, v2, :cond_19

    .line 138
    invoke-virtual {p0, v1}, Lcom/google/android/apps/unveil/textinput/ZoomableContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 139
    .local v0, child:Landroid/view/View;
    instance-of v3, v0, Lcom/google/android/apps/unveil/textinput/ZoomableContainer$EventListener;

    if-eqz v3, :cond_16

    .line 140
    check-cast v0, Lcom/google/android/apps/unveil/textinput/ZoomableContainer$EventListener;

    .end local v0           #child:Landroid/view/View;
    iget-object v3, p0, Lcom/google/android/apps/unveil/textinput/ZoomableContainer;->matrix:Landroid/graphics/Matrix;

    invoke-interface {v0, v3}, Lcom/google/android/apps/unveil/textinput/ZoomableContainer$EventListener;->onZoom(Landroid/graphics/Matrix;)V

    .line 137
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 143
    :cond_19
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 3
    .parameter "canvas"

    .prologue
    .line 124
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 125
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/ZoomableContainer;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 126
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 127
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 128
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 16
    .parameter "ev"

    .prologue
    const/4 v0, 0x1

    const/4 v8, 0x0

    .line 107
    iget-object v1, p0, Lcom/google/android/apps/unveil/textinput/ZoomableContainer;->scaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 108
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-ne v1, v0, :cond_12

    .line 109
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 119
    :cond_11
    :goto_11
    return v0

    .line 111
    :cond_12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-le v1, v0, :cond_11

    .line 112
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_11

    .line 113
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    const/4 v4, 0x3

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v7

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getSize(I)F

    move-result v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v11

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v12

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v13

    invoke-static/range {v0 .. v13}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_11
.end method

.method protected onLayout(ZIIII)V
    .registers 15
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    const/4 v8, 0x0

    .line 97
    sget-object v3, Lcom/google/android/apps/unveil/textinput/ZoomableContainer;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v4, "zoomable container onLayout: %d,%d,%d,%d"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/google/android/apps/unveil/env/UnveilLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/textinput/ZoomableContainer;->getChildCount()I

    move-result v2

    .line 99
    .local v2, n:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2b
    if-ge v1, v2, :cond_3b

    .line 100
    invoke-virtual {p0, v1}, Lcom/google/android/apps/unveil/textinput/ZoomableContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 101
    .local v0, child:Landroid/view/View;
    sub-int v3, p4, p2

    sub-int v4, p5, p3

    invoke-virtual {v0, v8, v8, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 99
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    .line 103
    .end local v0           #child:Landroid/view/View;
    :cond_3b
    return-void
.end method

.method public reset()V
    .registers 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/ZoomableContainer;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 132
    invoke-direct {p0}, Lcom/google/android/apps/unveil/textinput/ZoomableContainer;->notifyChildren()V

    .line 133
    return-void
.end method
