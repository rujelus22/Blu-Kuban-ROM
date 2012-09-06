.class public abstract Lcom/google/android/apps/unveil/tracking/AnnotationRenderer;
.super Ljava/lang/Object;
.source "AnnotationRenderer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RenderDetailsType:",
        "Lcom/google/android/apps/unveil/tracking/RenderDetails;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final logger:Lcom/google/android/apps/unveil/env/UnveilLogger;


# instance fields
.field protected final currentlyRenderedAnnotations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;",
            "TRenderDetailsType;>;"
        }
    .end annotation
.end field

.field private volatile dirty:Z

.field private frameToCanvas:Landroid/graphics/Matrix;

.field private final surface:Landroid/view/SurfaceHolder;

.field protected final view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    new-instance v0, Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>()V

    sput-object v0, Lcom/google/android/apps/unveil/tracking/AnnotationRenderer;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 5
    .parameter "view"

    .prologue
    .local p0, this:Lcom/google/android/apps/unveil/tracking/AnnotationRenderer;,"Lcom/google/android/apps/unveil/tracking/AnnotationRenderer<TRenderDetailsType;>;"
    const/4 v2, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/tracking/AnnotationRenderer;->currentlyRenderedAnnotations:Ljava/util/Map;

    .line 44
    instance-of v0, p1, Landroid/view/SurfaceView;

    if-eqz v0, :cond_20

    .line 45
    check-cast p1, Landroid/view/SurfaceView;

    .end local p1
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/unveil/tracking/AnnotationRenderer;->surface:Landroid/view/SurfaceHolder;

    .line 46
    iget-object v0, p0, Lcom/google/android/apps/unveil/tracking/AnnotationRenderer;->surface:Landroid/view/SurfaceHolder;

    const/4 v1, -0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 47
    iput-object v2, p0, Lcom/google/android/apps/unveil/tracking/AnnotationRenderer;->view:Landroid/view/View;

    .line 52
    :goto_1f
    return-void

    .line 49
    .restart local p1
    :cond_20
    iput-object p1, p0, Lcom/google/android/apps/unveil/tracking/AnnotationRenderer;->view:Landroid/view/View;

    .line 50
    iput-object v2, p0, Lcom/google/android/apps/unveil/tracking/AnnotationRenderer;->surface:Landroid/view/SurfaceHolder;

    goto :goto_1f
.end method


# virtual methods
.method public addAnnotation(Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;)V
    .registers 5
    .parameter "annotation"

    .prologue
    .line 63
    .local p0, this:Lcom/google/android/apps/unveil/tracking/AnnotationRenderer;,"Lcom/google/android/apps/unveil/tracking/AnnotationRenderer<TRenderDetailsType;>;"
    iget-object v0, p0, Lcom/google/android/apps/unveil/tracking/AnnotationRenderer;->currentlyRenderedAnnotations:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 64
    sget-object v0, Lcom/google/android/apps/unveil/tracking/AnnotationRenderer;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "Tried to add previously added annotation!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    :goto_12
    return-void

    .line 67
    :cond_13
    iget-object v0, p0, Lcom/google/android/apps/unveil/tracking/AnnotationRenderer;->currentlyRenderedAnnotations:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/google/android/apps/unveil/tracking/AnnotationRenderer;->createRenderDetails(Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;)Lcom/google/android/apps/unveil/tracking/RenderDetails;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/tracking/AnnotationRenderer;->makeDirty()V

    goto :goto_12
.end method

.method protected animate()V
    .registers 6

    .prologue
    .line 79
    .local p0, this:Lcom/google/android/apps/unveil/tracking/AnnotationRenderer;,"Lcom/google/android/apps/unveil/tracking/AnnotationRenderer<TRenderDetailsType;>;"
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 80
    .local v0, currentTime:J
    iget-object v4, p0, Lcom/google/android/apps/unveil/tracking/AnnotationRenderer;->currentlyRenderedAnnotations:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/unveil/tracking/RenderDetails;

    .line 81
    .local v3, renderDetails:Lcom/google/android/apps/unveil/tracking/RenderDetails;,"TRenderDetailsType;"
    invoke-virtual {v3, v0, v1}, Lcom/google/android/apps/unveil/tracking/RenderDetails;->animate(J)V

    .line 82
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/tracking/AnnotationRenderer;->makeDirty()V

    goto :goto_e

    .line 84
    .end local v3           #renderDetails:Lcom/google/android/apps/unveil/tracking/RenderDetails;,"TRenderDetailsType;"
    :cond_21
    return-void
.end method

.method public abstract beginRemoval(Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;)V
.end method

.method public abstract cancelRemoval(Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;)V
.end method

.method protected abstract createRenderDetails(Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;)Lcom/google/android/apps/unveil/tracking/RenderDetails;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;",
            ")TRenderDetailsType;"
        }
    .end annotation
.end method

.method protected getDirtyArea()Landroid/graphics/RectF;
    .registers 2

    .prologue
    .line 150
    .local p0, this:Lcom/google/android/apps/unveil/tracking/AnnotationRenderer;,"Lcom/google/android/apps/unveil/tracking/AnnotationRenderer<TRenderDetailsType;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getFrameToCanvas()Landroid/graphics/Matrix;
    .registers 2

    .prologue
    .line 55
    .local p0, this:Lcom/google/android/apps/unveil/tracking/AnnotationRenderer;,"Lcom/google/android/apps/unveil/tracking/AnnotationRenderer<TRenderDetailsType;>;"
    iget-object v0, p0, Lcom/google/android/apps/unveil/tracking/AnnotationRenderer;->frameToCanvas:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public isNoLongerRendering(Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;)Z
    .registers 3
    .parameter "annot"

    .prologue
    .line 137
    .local p0, this:Lcom/google/android/apps/unveil/tracking/AnnotationRenderer;,"Lcom/google/android/apps/unveil/tracking/AnnotationRenderer<TRenderDetailsType;>;"
    iget-object v0, p0, Lcom/google/android/apps/unveil/tracking/AnnotationRenderer;->currentlyRenderedAnnotations:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected makeDirty()V
    .registers 2

    .prologue
    .line 141
    .local p0, this:Lcom/google/android/apps/unveil/tracking/AnnotationRenderer;,"Lcom/google/android/apps/unveil/tracking/AnnotationRenderer<TRenderDetailsType;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/unveil/tracking/AnnotationRenderer;->dirty:Z

    .line 142
    return-void
.end method

.method public onObjectJumped(Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .registers 4
    .parameter "annotation"
    .parameter "originalPosition"
    .parameter "newPosition"

    .prologue
    .line 159
    .local p0, this:Lcom/google/android/apps/unveil/tracking/AnnotationRenderer;,"Lcom/google/android/apps/unveil/tracking/AnnotationRenderer<TRenderDetailsType;>;"
    return-void
.end method

.method public onObjectMoved(Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .registers 4
    .parameter "annotation"
    .parameter "originalPosition"
    .parameter "newPosition"

    .prologue
    .line 165
    .local p0, this:Lcom/google/android/apps/unveil/tracking/AnnotationRenderer;,"Lcom/google/android/apps/unveil/tracking/AnnotationRenderer<TRenderDetailsType;>;"
    return-void
.end method

.method public removeAnnotation(Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;)V
    .registers 3
    .parameter "annotation"

    .prologue
    .line 74
    .local p0, this:Lcom/google/android/apps/unveil/tracking/AnnotationRenderer;,"Lcom/google/android/apps/unveil/tracking/AnnotationRenderer<TRenderDetailsType;>;"
    iget-object v0, p0, Lcom/google/android/apps/unveil/tracking/AnnotationRenderer;->currentlyRenderedAnnotations:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/tracking/AnnotationRenderer;->makeDirty()V

    .line 76
    return-void
.end method

.method public render(Landroid/graphics/Canvas;)V
    .registers 3
    .parameter "canvas"

    .prologue
    .line 114
    .local p0, this:Lcom/google/android/apps/unveil/tracking/AnnotationRenderer;,"Lcom/google/android/apps/unveil/tracking/AnnotationRenderer<TRenderDetailsType;>;"
    iget-object v0, p0, Lcom/google/android/apps/unveil/tracking/AnnotationRenderer;->currentlyRenderedAnnotations:Ljava/util/Map;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/apps/unveil/tracking/AnnotationRenderer;->render(Landroid/graphics/Canvas;Ljava/util/Map;)V

    .line 115
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/unveil/tracking/AnnotationRenderer;->dirty:Z

    .line 116
    return-void
.end method

.method protected abstract render(Landroid/graphics/Canvas;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;",
            "TRenderDetailsType;>;)V"
        }
    .end annotation
.end method

.method public requestRender()V
    .registers 5

    .prologue
    .line 93
    .local p0, this:Lcom/google/android/apps/unveil/tracking/AnnotationRenderer;,"Lcom/google/android/apps/unveil/tracking/AnnotationRenderer<TRenderDetailsType;>;"
    iget-object v3, p0, Lcom/google/android/apps/unveil/tracking/AnnotationRenderer;->surface:Landroid/view/SurfaceHolder;

    if-eqz v3, :cond_1b

    .line 94
    iget-object v3, p0, Lcom/google/android/apps/unveil/tracking/AnnotationRenderer;->surface:Landroid/view/SurfaceHolder;

    invoke-interface {v3}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    .line 95
    .local v0, cvs:Landroid/graphics/Canvas;
    if-nez v0, :cond_d

    .line 111
    .end local v0           #cvs:Landroid/graphics/Canvas;
    :goto_c
    return-void

    .line 98
    .restart local v0       #cvs:Landroid/graphics/Canvas;
    :cond_d
    iget-object v3, p0, Lcom/google/android/apps/unveil/tracking/AnnotationRenderer;->currentlyRenderedAnnotations:Ljava/util/Map;

    invoke-virtual {p0, v0, v3}, Lcom/google/android/apps/unveil/tracking/AnnotationRenderer;->render(Landroid/graphics/Canvas;Ljava/util/Map;)V

    .line 99
    iget-object v3, p0, Lcom/google/android/apps/unveil/tracking/AnnotationRenderer;->surface:Landroid/view/SurfaceHolder;

    invoke-interface {v3, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 100
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/google/android/apps/unveil/tracking/AnnotationRenderer;->dirty:Z

    goto :goto_c

    .line 102
    .end local v0           #cvs:Landroid/graphics/Canvas;
    :cond_1b
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/tracking/AnnotationRenderer;->getDirtyArea()Landroid/graphics/RectF;

    move-result-object v2

    .line 103
    .local v2, dirtyRectF:Landroid/graphics/RectF;
    if-eqz v2, :cond_2f

    .line 104
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 105
    .local v1, dirtyRect:Landroid/graphics/Rect;
    invoke-virtual {v2, v1}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 106
    iget-object v3, p0, Lcom/google/android/apps/unveil/tracking/AnnotationRenderer;->view:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_c

    .line 108
    .end local v1           #dirtyRect:Landroid/graphics/Rect;
    :cond_2f
    iget-object v3, p0, Lcom/google/android/apps/unveil/tracking/AnnotationRenderer;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    goto :goto_c
.end method

.method public requestRenderIfDirty()V
    .registers 2

    .prologue
    .line 87
    .local p0, this:Lcom/google/android/apps/unveil/tracking/AnnotationRenderer;,"Lcom/google/android/apps/unveil/tracking/AnnotationRenderer<TRenderDetailsType;>;"
    iget-boolean v0, p0, Lcom/google/android/apps/unveil/tracking/AnnotationRenderer;->dirty:Z

    if-eqz v0, :cond_7

    .line 88
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/tracking/AnnotationRenderer;->requestRender()V

    .line 90
    :cond_7
    return-void
.end method

.method public setFrameToCanvas(Landroid/graphics/Matrix;)V
    .registers 2
    .parameter "frameToCanvas"

    .prologue
    .line 59
    .local p0, this:Lcom/google/android/apps/unveil/tracking/AnnotationRenderer;,"Lcom/google/android/apps/unveil/tracking/AnnotationRenderer<TRenderDetailsType;>;"
    iput-object p1, p0, Lcom/google/android/apps/unveil/tracking/AnnotationRenderer;->frameToCanvas:Landroid/graphics/Matrix;

    .line 60
    return-void
.end method
