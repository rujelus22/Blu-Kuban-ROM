.class public Lcom/google/android/apps/unveil/tracking/TrackingTestView;
.super Landroid/view/SurfaceView;
.source "TrackingTestView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/unveil/tracking/TrackingTestView$TrackingTestViewProcessor;
    }
.end annotation


# static fields
.field private static final MAX_NUM_BOXES:I = 0x5

.field private static final MIN_BOX_DIMENSION:F = 4.0f


# instance fields
.field private boxToTrack:Landroid/graphics/RectF;

.field private currTouchBox:Landroid/graphics/RectF;

.field private endPoint:Landroid/graphics/PointF;

.field private frameToCanvas:Landroid/graphics/Matrix;

.field private glBoxes:Lcom/google/android/apps/unveil/env/gl/BoundingBoxLayer;

.field private final logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

.field private objectTracker:Lcom/google/android/apps/unveil/tracking/ObjectTracker;

.field private final objects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/apps/unveil/tracking/ObjectTracker$TrackedObject;",
            ">;"
        }
    .end annotation
.end field

.field private final paint:Landroid/graphics/Paint;

.field private startPoint:Landroid/graphics/PointF;

.field private final surface:Landroid/view/SurfaceHolder;

.field private final usingGlOverlay:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    new-instance v0, Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/tracking/TrackingTestView;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/tracking/TrackingTestView;->objects:Ljava/util/ArrayList;

    .line 56
    iput-object v1, p0, Lcom/google/android/apps/unveil/tracking/TrackingTestView;->glBoxes:Lcom/google/android/apps/unveil/env/gl/BoundingBoxLayer;

    .line 59
    iput-object v1, p0, Lcom/google/android/apps/unveil/tracking/TrackingTestView;->startPoint:Landroid/graphics/PointF;

    .line 60
    iput-object v1, p0, Lcom/google/android/apps/unveil/tracking/TrackingTestView;->endPoint:Landroid/graphics/PointF;

    .line 61
    iput-object v1, p0, Lcom/google/android/apps/unveil/tracking/TrackingTestView;->currTouchBox:Landroid/graphics/RectF;

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/unveil/UnveilContext;

    invoke-interface {v0}, Lcom/google/android/apps/unveil/UnveilContext;->getSettings()Lcom/google/android/apps/unveil/UnveilSettings;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/apps/unveil/UnveilSettings;->useGLES2Overlay:Z

    iput-boolean v0, p0, Lcom/google/android/apps/unveil/tracking/TrackingTestView;->usingGlOverlay:Z

    .line 72
    iget-boolean v0, p0, Lcom/google/android/apps/unveil/tracking/TrackingTestView;->usingGlOverlay:Z

    if-nez v0, :cond_52

    .line 73
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/tracking/TrackingTestView;->paint:Landroid/graphics/Paint;

    .line 74
    iget-object v0, p0, Lcom/google/android/apps/unveil/tracking/TrackingTestView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 75
    iget-object v0, p0, Lcom/google/android/apps/unveil/tracking/TrackingTestView;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x4040

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 77
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/tracking/TrackingTestView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/unveil/tracking/TrackingTestView;->surface:Landroid/view/SurfaceHolder;

    .line 78
    iget-object v0, p0, Lcom/google/android/apps/unveil/tracking/TrackingTestView;->surface:Landroid/view/SurfaceHolder;

    const/4 v1, -0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 79
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/unveil/tracking/TrackingTestView;->setZOrderMediaOverlay(Z)V

    .line 84
    :goto_51
    return-void

    .line 81
    :cond_52
    iput-object v1, p0, Lcom/google/android/apps/unveil/tracking/TrackingTestView;->paint:Landroid/graphics/Paint;

    .line 82
    iput-object v1, p0, Lcom/google/android/apps/unveil/tracking/TrackingTestView;->surface:Landroid/view/SurfaceHolder;

    goto :goto_51
.end method

.method static synthetic access$000(Lcom/google/android/apps/unveil/tracking/TrackingTestView;)Lcom/google/android/apps/unveil/tracking/ObjectTracker;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/apps/unveil/tracking/TrackingTestView;->objectTracker:Lcom/google/android/apps/unveil/tracking/ObjectTracker;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/android/apps/unveil/tracking/TrackingTestView;Lcom/google/android/apps/unveil/tracking/ObjectTracker;)Lcom/google/android/apps/unveil/tracking/ObjectTracker;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/google/android/apps/unveil/tracking/TrackingTestView;->objectTracker:Lcom/google/android/apps/unveil/tracking/ObjectTracker;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/android/apps/unveil/tracking/TrackingTestView;)Landroid/graphics/Matrix;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/apps/unveil/tracking/TrackingTestView;->frameToCanvas:Landroid/graphics/Matrix;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/android/apps/unveil/tracking/TrackingTestView;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/google/android/apps/unveil/tracking/TrackingTestView;->frameToCanvas:Landroid/graphics/Matrix;

    return-object p1
.end method

.method static synthetic access$200(Lcom/google/android/apps/unveil/tracking/TrackingTestView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/google/android/apps/unveil/tracking/TrackingTestView;->usingGlOverlay:Z

    return v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/unveil/tracking/TrackingTestView;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/apps/unveil/tracking/TrackingTestView;->objects:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/apps/unveil/tracking/TrackingTestView;)Lcom/google/android/apps/unveil/env/gl/BoundingBoxLayer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/apps/unveil/tracking/TrackingTestView;->glBoxes:Lcom/google/android/apps/unveil/env/gl/BoundingBoxLayer;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/apps/unveil/tracking/TrackingTestView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/google/android/apps/unveil/tracking/TrackingTestView;->render()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/apps/unveil/tracking/TrackingTestView;)Landroid/graphics/RectF;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/apps/unveil/tracking/TrackingTestView;->boxToTrack:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic access$602(Lcom/google/android/apps/unveil/tracking/TrackingTestView;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/google/android/apps/unveil/tracking/TrackingTestView;->boxToTrack:Landroid/graphics/RectF;

    return-object p1
.end method

.method static synthetic access$700(Lcom/google/android/apps/unveil/tracking/TrackingTestView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/google/android/apps/unveil/tracking/TrackingTestView;->reset()V

    return-void
.end method

.method private render()V
    .registers 7

    .prologue
    .line 112
    iget-object v4, p0, Lcom/google/android/apps/unveil/tracking/TrackingTestView;->surface:Landroid/view/SurfaceHolder;

    invoke-interface {v4}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    .line 113
    .local v0, canvas:Landroid/graphics/Canvas;
    if-nez v0, :cond_9

    .line 132
    :goto_8
    return-void

    .line 116
    :cond_9
    const/4 v4, 0x0

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 117
    iget-object v4, p0, Lcom/google/android/apps/unveil/tracking/TrackingTestView;->currTouchBox:Landroid/graphics/RectF;

    if-eqz v4, :cond_22

    .line 118
    iget-object v4, p0, Lcom/google/android/apps/unveil/tracking/TrackingTestView;->paint:Landroid/graphics/Paint;

    const v5, -0xff0001

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 119
    iget-object v4, p0, Lcom/google/android/apps/unveil/tracking/TrackingTestView;->currTouchBox:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/google/android/apps/unveil/tracking/TrackingTestView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 122
    :cond_22
    iget-object v4, p0, Lcom/google/android/apps/unveil/tracking/TrackingTestView;->objects:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_28
    :goto_28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_56

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/unveil/tracking/ObjectTracker$TrackedObject;

    .line 123
    .local v2, object:Lcom/google/android/apps/unveil/tracking/ObjectTracker$TrackedObject;
    invoke-virtual {v2}, Lcom/google/android/apps/unveil/tracking/ObjectTracker$TrackedObject;->getTrackedPositionInPreviewFrame()Landroid/graphics/RectF;

    move-result-object v3

    .line 124
    .local v3, position:Landroid/graphics/RectF;
    if-eqz v3, :cond_28

    .line 125
    iget-object v4, p0, Lcom/google/android/apps/unveil/tracking/TrackingTestView;->frameToCanvas:Landroid/graphics/Matrix;

    invoke-virtual {v4, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 126
    iget-object v5, p0, Lcom/google/android/apps/unveil/tracking/TrackingTestView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Lcom/google/android/apps/unveil/tracking/ObjectTracker$TrackedObject;->visibleInLastPreviewFrame()Z

    move-result v4

    if-eqz v4, :cond_53

    const v4, -0xff0100

    :goto_4a
    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 127
    iget-object v4, p0, Lcom/google/android/apps/unveil/tracking/TrackingTestView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_28

    .line 126
    :cond_53
    const/high16 v4, -0x1

    goto :goto_4a

    .line 131
    .end local v2           #object:Lcom/google/android/apps/unveil/tracking/ObjectTracker$TrackedObject;
    .end local v3           #position:Landroid/graphics/RectF;
    :cond_56
    iget-object v4, p0, Lcom/google/android/apps/unveil/tracking/TrackingTestView;->surface:Landroid/view/SurfaceHolder;

    invoke-interface {v4, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto :goto_8
.end method

.method private declared-synchronized reset()V
    .registers 2

    .prologue
    .line 185
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/unveil/tracking/TrackingTestView;->objects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 186
    iget-object v0, p0, Lcom/google/android/apps/unveil/tracking/TrackingTestView;->objectTracker:Lcom/google/android/apps/unveil/tracking/ObjectTracker;

    if-eqz v0, :cond_15

    .line 187
    iget-object v0, p0, Lcom/google/android/apps/unveil/tracking/TrackingTestView;->objectTracker:Lcom/google/android/apps/unveil/tracking/ObjectTracker;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/tracking/ObjectTracker;->release()V

    .line 188
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/unveil/tracking/TrackingTestView;->objectTracker:Lcom/google/android/apps/unveil/tracking/ObjectTracker;

    .line 189
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/unveil/tracking/TrackingTestView;->frameToCanvas:Landroid/graphics/Matrix;
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    .line 191
    :cond_15
    monitor-exit p0

    return-void

    .line 185
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static toRectF(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/RectF;
    .registers 7
    .parameter "point1"
    .parameter "point2"

    .prologue
    .line 194
    if-eqz p0, :cond_4

    if-nez p1, :cond_6

    .line 195
    :cond_4
    const/4 v0, 0x0

    .line 200
    :goto_5
    return-object v0

    .line 198
    :cond_6
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Landroid/graphics/PointF;->x:F

    iget v2, p0, Landroid/graphics/PointF;->y:F

    iget v3, p1, Landroid/graphics/PointF;->x:F

    iget v4, p1, Landroid/graphics/PointF;->y:F

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 199
    .local v0, rect:Landroid/graphics/RectF;
    invoke-virtual {v0}, Landroid/graphics/RectF;->sort()V

    goto :goto_5
.end method


# virtual methods
.method public declared-synchronized onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9
    .parameter "event"

    .prologue
    const/high16 v6, 0x4080

    const/4 v2, 0x1

    .line 136
    monitor-enter p0

    :try_start_4
    iget-object v3, p0, Lcom/google/android/apps/unveil/tracking/TrackingTestView;->objectTracker:Lcom/google/android/apps/unveil/tracking/ObjectTracker;

    if-nez v3, :cond_e

    .line 137
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_5d

    move-result v2

    .line 181
    :goto_c
    monitor-exit p0

    return v2

    .line 140
    :cond_e
    :try_start_e
    iget-object v3, p0, Lcom/google/android/apps/unveil/tracking/TrackingTestView;->startPoint:Landroid/graphics/PointF;

    if-nez v3, :cond_60

    .line 141
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_33

    .line 142
    new-instance v3, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v3, p0, Lcom/google/android/apps/unveil/tracking/TrackingTestView;->startPoint:Landroid/graphics/PointF;

    .line 143
    iget-object v3, p0, Lcom/google/android/apps/unveil/tracking/TrackingTestView;->objects:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x5

    if-lt v3, v4, :cond_33

    .line 144
    invoke-direct {p0}, Lcom/google/android/apps/unveil/tracking/TrackingTestView;->reset()V

    .line 168
    :cond_33
    :goto_33
    iget-object v3, p0, Lcom/google/android/apps/unveil/tracking/TrackingTestView;->startPoint:Landroid/graphics/PointF;

    iget-object v4, p0, Lcom/google/android/apps/unveil/tracking/TrackingTestView;->endPoint:Landroid/graphics/PointF;

    invoke-static {v3, v4}, Lcom/google/android/apps/unveil/tracking/TrackingTestView;->toRectF(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/RectF;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/unveil/tracking/TrackingTestView;->currTouchBox:Landroid/graphics/RectF;

    .line 170
    iget-boolean v3, p0, Lcom/google/android/apps/unveil/tracking/TrackingTestView;->usingGlOverlay:Z

    if-eqz v3, :cond_c0

    .line 171
    iget-object v3, p0, Lcom/google/android/apps/unveil/tracking/TrackingTestView;->currTouchBox:Landroid/graphics/RectF;

    if-eqz v3, :cond_b3

    .line 172
    iget-object v3, p0, Lcom/google/android/apps/unveil/tracking/TrackingTestView;->glBoxes:Lcom/google/android/apps/unveil/env/gl/BoundingBoxLayer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/google/android/apps/unveil/env/gl/BoundingBoxLayer;->get(I)Lcom/google/android/apps/unveil/env/gl/BoundingBox;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/unveil/tracking/TrackingTestView;->currTouchBox:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Lcom/google/android/apps/unveil/env/gl/BoundingBox;->set(Landroid/graphics/RectF;)V

    .line 173
    iget-object v3, p0, Lcom/google/android/apps/unveil/tracking/TrackingTestView;->glBoxes:Lcom/google/android/apps/unveil/env/gl/BoundingBoxLayer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/google/android/apps/unveil/env/gl/BoundingBoxLayer;->get(I)Lcom/google/android/apps/unveil/env/gl/BoundingBox;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/google/android/apps/unveil/env/gl/BoundingBox;->setActive(Z)V
    :try_end_5c
    .catchall {:try_start_e .. :try_end_5c} :catchall_5d

    goto :goto_c

    .line 136
    :catchall_5d
    move-exception v2

    monitor-exit p0

    throw v2

    .line 148
    :cond_60
    :try_start_60
    new-instance v3, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v3, p0, Lcom/google/android/apps/unveil/tracking/TrackingTestView;->endPoint:Landroid/graphics/PointF;

    .line 150
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_33

    .line 151
    iget-object v3, p0, Lcom/google/android/apps/unveil/tracking/TrackingTestView;->startPoint:Landroid/graphics/PointF;

    iget-object v4, p0, Lcom/google/android/apps/unveil/tracking/TrackingTestView;->endPoint:Landroid/graphics/PointF;

    invoke-static {v3, v4}, Lcom/google/android/apps/unveil/tracking/TrackingTestView;->toRectF(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/RectF;

    move-result-object v0

    .line 152
    .local v0, boxToTrack:Landroid/graphics/RectF;
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 153
    .local v1, inverseMatrix:Landroid/graphics/Matrix;
    iget-object v3, p0, Lcom/google/android/apps/unveil/tracking/TrackingTestView;->frameToCanvas:Landroid/graphics/Matrix;

    invoke-virtual {v3, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 154
    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 156
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/android/apps/unveil/tracking/TrackingTestView;->startPoint:Landroid/graphics/PointF;

    .line 157
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/android/apps/unveil/tracking/TrackingTestView;->endPoint:Landroid/graphics/PointF;

    .line 159
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v3

    cmpl-float v3, v3, v6

    if-lez v3, :cond_33

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v3

    cmpl-float v3, v3, v6

    if-lez v3, :cond_33

    .line 161
    iget-object v3, p0, Lcom/google/android/apps/unveil/tracking/TrackingTestView;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v4, "Setting box to %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/google/android/apps/unveil/env/UnveilLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/android/apps/unveil/tracking/TrackingTestView;->currTouchBox:Landroid/graphics/RectF;

    .line 163
    iput-object v0, p0, Lcom/google/android/apps/unveil/tracking/TrackingTestView;->boxToTrack:Landroid/graphics/RectF;

    goto :goto_33

    .line 175
    .end local v0           #boxToTrack:Landroid/graphics/RectF;
    .end local v1           #inverseMatrix:Landroid/graphics/Matrix;
    :cond_b3
    iget-object v3, p0, Lcom/google/android/apps/unveil/tracking/TrackingTestView;->glBoxes:Lcom/google/android/apps/unveil/env/gl/BoundingBoxLayer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/google/android/apps/unveil/env/gl/BoundingBoxLayer;->get(I)Lcom/google/android/apps/unveil/env/gl/BoundingBox;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/google/android/apps/unveil/env/gl/BoundingBox;->setActive(Z)V

    goto/16 :goto_c

    .line 178
    :cond_c0
    invoke-direct {p0}, Lcom/google/android/apps/unveil/tracking/TrackingTestView;->render()V
    :try_end_c3
    .catchall {:try_start_60 .. :try_end_c3} :catchall_5d

    goto/16 :goto_c
.end method

.method public declared-synchronized setBoundingBoxLayer(Lcom/google/android/apps/unveil/env/gl/BoundingBoxLayer;)V
    .registers 9
    .parameter "b"

    .prologue
    .line 87
    monitor-enter p0

    if-eqz p1, :cond_b3

    .line 88
    :try_start_3
    iput-object p1, p0, Lcom/google/android/apps/unveil/tracking/TrackingTestView;->glBoxes:Lcom/google/android/apps/unveil/env/gl/BoundingBoxLayer;

    .line 89
    iget-object v1, p0, Lcom/google/android/apps/unveil/tracking/TrackingTestView;->glBoxes:Lcom/google/android/apps/unveil/env/gl/BoundingBoxLayer;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/google/android/apps/unveil/env/gl/BoundingBoxLayer;->generateBoxes(I)V

    .line 92
    iget-object v1, p0, Lcom/google/android/apps/unveil/tracking/TrackingTestView;->glBoxes:Lcom/google/android/apps/unveil/env/gl/BoundingBoxLayer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/apps/unveil/env/gl/BoundingBoxLayer;->get(I)Lcom/google/android/apps/unveil/env/gl/BoundingBox;

    move-result-object v1

    sget-object v2, Lcom/google/android/apps/unveil/env/gl/Utils$Color;->WHITE:Lcom/google/android/apps/unveil/env/gl/Utils$Color;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/unveil/env/gl/BoundingBox;->setLineColor(Lcom/google/android/apps/unveil/env/gl/Utils$Color;)V

    .line 93
    iget-object v1, p0, Lcom/google/android/apps/unveil/tracking/TrackingTestView;->glBoxes:Lcom/google/android/apps/unveil/env/gl/BoundingBoxLayer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/apps/unveil/env/gl/BoundingBoxLayer;->get(I)Lcom/google/android/apps/unveil/env/gl/BoundingBox;

    move-result-object v1

    new-instance v2, Lcom/google/android/apps/unveil/env/gl/Utils$Color;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3e80

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/android/apps/unveil/env/gl/Utils$Color;-><init>(FFFF)V

    invoke-virtual {v1, v2}, Lcom/google/android/apps/unveil/env/gl/BoundingBox;->setFillColor(Lcom/google/android/apps/unveil/env/gl/Utils$Color;)V

    .line 94
    iget-object v1, p0, Lcom/google/android/apps/unveil/tracking/TrackingTestView;->glBoxes:Lcom/google/android/apps/unveil/env/gl/BoundingBoxLayer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/apps/unveil/env/gl/BoundingBoxLayer;->get(I)Lcom/google/android/apps/unveil/env/gl/BoundingBox;

    move-result-object v1

    sget-object v2, Lcom/google/android/apps/unveil/env/gl/Utils$Color;->RED:Lcom/google/android/apps/unveil/env/gl/Utils$Color;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/unveil/env/gl/BoundingBox;->setLineColor(Lcom/google/android/apps/unveil/env/gl/Utils$Color;)V

    .line 95
    iget-object v1, p0, Lcom/google/android/apps/unveil/tracking/TrackingTestView;->glBoxes:Lcom/google/android/apps/unveil/env/gl/BoundingBoxLayer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/apps/unveil/env/gl/BoundingBoxLayer;->get(I)Lcom/google/android/apps/unveil/env/gl/BoundingBox;

    move-result-object v1

    new-instance v2, Lcom/google/android/apps/unveil/env/gl/Utils$Color;

    const/high16 v3, 0x3f80

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f00

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/android/apps/unveil/env/gl/Utils$Color;-><init>(FFFF)V

    invoke-virtual {v1, v2}, Lcom/google/android/apps/unveil/env/gl/BoundingBox;->setFillColor(Lcom/google/android/apps/unveil/env/gl/Utils$Color;)V

    .line 98
    iget-object v1, p0, Lcom/google/android/apps/unveil/tracking/TrackingTestView;->glBoxes:Lcom/google/android/apps/unveil/env/gl/BoundingBoxLayer;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/unveil/env/gl/BoundingBoxLayer;->get(I)Lcom/google/android/apps/unveil/env/gl/BoundingBox;

    move-result-object v1

    sget-object v2, Lcom/google/android/apps/unveil/env/gl/Utils$Color;->GREEN:Lcom/google/android/apps/unveil/env/gl/Utils$Color;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/unveil/env/gl/BoundingBox;->setLineColor(Lcom/google/android/apps/unveil/env/gl/Utils$Color;)V

    .line 99
    iget-object v1, p0, Lcom/google/android/apps/unveil/tracking/TrackingTestView;->glBoxes:Lcom/google/android/apps/unveil/env/gl/BoundingBoxLayer;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/unveil/env/gl/BoundingBoxLayer;->get(I)Lcom/google/android/apps/unveil/env/gl/BoundingBox;

    move-result-object v1

    new-instance v2, Lcom/google/android/apps/unveil/env/gl/Utils$Color;

    const/4 v3, 0x0

    const/high16 v4, 0x3f80

    const/4 v5, 0x0

    const/high16 v6, 0x3f00

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/android/apps/unveil/env/gl/Utils$Color;-><init>(FFFF)V

    invoke-virtual {v1, v2}, Lcom/google/android/apps/unveil/env/gl/BoundingBox;->setFillColor(Lcom/google/android/apps/unveil/env/gl/Utils$Color;)V

    .line 100
    iget-object v1, p0, Lcom/google/android/apps/unveil/tracking/TrackingTestView;->glBoxes:Lcom/google/android/apps/unveil/env/gl/BoundingBoxLayer;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/google/android/apps/unveil/env/gl/BoundingBoxLayer;->get(I)Lcom/google/android/apps/unveil/env/gl/BoundingBox;

    move-result-object v1

    sget-object v2, Lcom/google/android/apps/unveil/env/gl/Utils$Color;->BLUE:Lcom/google/android/apps/unveil/env/gl/Utils$Color;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/unveil/env/gl/BoundingBox;->setLineColor(Lcom/google/android/apps/unveil/env/gl/Utils$Color;)V

    .line 101
    iget-object v1, p0, Lcom/google/android/apps/unveil/tracking/TrackingTestView;->glBoxes:Lcom/google/android/apps/unveil/env/gl/BoundingBoxLayer;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/google/android/apps/unveil/env/gl/BoundingBoxLayer;->get(I)Lcom/google/android/apps/unveil/env/gl/BoundingBox;

    move-result-object v1

    new-instance v2, Lcom/google/android/apps/unveil/env/gl/Utils$Color;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f80

    const/high16 v6, 0x3f00

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/android/apps/unveil/env/gl/Utils$Color;-><init>(FFFF)V

    invoke-virtual {v1, v2}, Lcom/google/android/apps/unveil/env/gl/BoundingBox;->setFillColor(Lcom/google/android/apps/unveil/env/gl/Utils$Color;)V

    .line 103
    const/4 v0, 0x4

    .local v0, i:I
    :goto_8f
    const/4 v1, 0x6

    if-ge v0, v1, :cond_b3

    .line 104
    iget-object v1, p0, Lcom/google/android/apps/unveil/tracking/TrackingTestView;->glBoxes:Lcom/google/android/apps/unveil/env/gl/BoundingBoxLayer;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/unveil/env/gl/BoundingBoxLayer;->get(I)Lcom/google/android/apps/unveil/env/gl/BoundingBox;

    move-result-object v1

    sget-object v2, Lcom/google/android/apps/unveil/env/gl/Utils$Color;->BLACK:Lcom/google/android/apps/unveil/env/gl/Utils$Color;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/unveil/env/gl/BoundingBox;->setLineColor(Lcom/google/android/apps/unveil/env/gl/Utils$Color;)V

    .line 105
    iget-object v1, p0, Lcom/google/android/apps/unveil/tracking/TrackingTestView;->glBoxes:Lcom/google/android/apps/unveil/env/gl/BoundingBoxLayer;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/unveil/env/gl/BoundingBoxLayer;->get(I)Lcom/google/android/apps/unveil/env/gl/BoundingBox;

    move-result-object v1

    new-instance v2, Lcom/google/android/apps/unveil/env/gl/Utils$Color;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f00

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/android/apps/unveil/env/gl/Utils$Color;-><init>(FFFF)V

    invoke-virtual {v1, v2}, Lcom/google/android/apps/unveil/env/gl/BoundingBox;->setFillColor(Lcom/google/android/apps/unveil/env/gl/Utils$Color;)V
    :try_end_b0
    .catchall {:try_start_3 .. :try_end_b0} :catchall_b5

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_8f

    .line 109
    .end local v0           #i:I
    :cond_b3
    monitor-exit p0

    return-void

    .line 87
    :catchall_b5
    move-exception v1

    monitor-exit p0

    throw v1
.end method
