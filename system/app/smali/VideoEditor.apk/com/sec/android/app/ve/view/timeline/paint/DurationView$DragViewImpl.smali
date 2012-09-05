.class Lcom/sec/android/app/ve/view/timeline/paint/DurationView$DragViewImpl;
.super Ljava/lang/Object;
.source "DurationView.java"

# interfaces
.implements Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$DragView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/ve/view/timeline/paint/DurationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DragViewImpl"
.end annotation


# instance fields
.field view:Landroid/view/View;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .registers 2

    .prologue
    .line 328
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/paint/DurationView$DragViewImpl;->view:Landroid/view/View;

    return-object v0
.end method

.method public viewDelete()V
    .registers 2

    .prologue
    .line 332
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/paint/DurationView$DragViewImpl;->view:Landroid/view/View;

    check-cast v0, Lcom/sec/android/app/ve/view/timeline/paint/DurationView;

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/timeline/paint/DurationView;->textDelete()V

    .line 333
    return-void
.end method

.method public viewDragging(FFLandroid/graphics/Paint;)V
    .registers 8
    .parameter "x"
    .parameter "y"
    .parameter "paint"

    .prologue
    const/4 v2, 0x1

    .line 350
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 351
    .local v0, myPos:[I
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->getLocationOnScreen([I)V

    .line 353
    aget v1, v0, v2

    int-to-float v1, v1

    cmpl-float v1, p2, v1

    if-lez v1, :cond_2e

    .line 354
    aget v1, v0, v2

    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;

    move-result-object v2

    .line 355
    invoke-virtual {v2}, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v1, p2, v1

    if-gez v1, :cond_2e

    .line 356
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const/high16 v2, 0x7f00

    .line 357
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 356
    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 361
    :cond_2e
    return-void
.end method

.method public viewDropped(FF)V
    .registers 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 336
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/paint/DurationView$DragViewImpl;->view:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 338
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/paint/DurationView$DragViewImpl;->view:Landroid/view/View;

    check-cast v0, Lcom/sec/android/app/ve/view/timeline/paint/DurationView;

    #getter for: Lcom/sec/android/app/ve/view/timeline/paint/DurationView;->mTouchPos:F
    invoke-static {v0}, Lcom/sec/android/app/ve/view/timeline/paint/DurationView;->access$4(Lcom/sec/android/app/ve/view/timeline/paint/DurationView;)F

    move-result v0

    sub-float/2addr p1, v0

    .line 340
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v0

    .line 341
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;

    move-result-object v1

    .line 340
    invoke-virtual {v0, p1, p2, v1}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->checkViewDroppedParams(FFLandroid/view/View;)Z

    .line 346
    return-void
.end method
