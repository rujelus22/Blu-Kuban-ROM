.class Lcom/sec/android/app/ve/view/timeline/caption/Caption$DragViewImpl;
.super Ljava/lang/Object;
.source "Caption.java"

# interfaces
.implements Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$DragView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/ve/view/timeline/caption/Caption;
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
    .line 351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .registers 2

    .prologue
    .line 356
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/caption/Caption$DragViewImpl;->view:Landroid/view/View;

    return-object v0
.end method

.method public viewDelete()V
    .registers 2

    .prologue
    .line 360
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/caption/Caption$DragViewImpl;->view:Landroid/view/View;

    check-cast v0, Lcom/sec/android/app/ve/view/timeline/caption/Caption;

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/timeline/caption/Caption;->textDelete()V

    .line 361
    return-void
.end method

.method public viewDragging(FFLandroid/graphics/Paint;)V
    .registers 8
    .parameter "x"
    .parameter "y"
    .parameter "paint"

    .prologue
    const/4 v2, 0x1

    .line 378
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 379
    .local v0, myPos:[I
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;->getLocationOnScreen([I)V

    .line 381
    aget v1, v0, v2

    int-to-float v1, v1

    cmpl-float v1, p2, v1

    if-lez v1, :cond_2e

    .line 382
    aget v1, v0, v2

    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;

    move-result-object v2

    .line 383
    invoke-virtual {v2}, Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v1, p2, v1

    if-gez v1, :cond_2e

    .line 384
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const/high16 v2, 0x7f00

    .line 385
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 384
    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 389
    :cond_2e
    return-void
.end method

.method public viewDropped(FF)V
    .registers 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 364
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/caption/Caption$DragViewImpl;->view:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 366
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/caption/Caption$DragViewImpl;->view:Landroid/view/View;

    check-cast v0, Lcom/sec/android/app/ve/view/timeline/caption/Caption;

    #getter for: Lcom/sec/android/app/ve/view/timeline/caption/Caption;->mTouchPos:F
    invoke-static {v0}, Lcom/sec/android/app/ve/view/timeline/caption/Caption;->access$4(Lcom/sec/android/app/ve/view/timeline/caption/Caption;)F

    move-result v0

    sub-float/2addr p1, v0

    .line 368
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v0

    .line 369
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;

    move-result-object v1

    .line 368
    invoke-virtual {v0, p1, p2, v1}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->checkViewDroppedParams(FFLandroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 370
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;

    move-result-object v1

    .line 371
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/caption/Caption$DragViewImpl;->view:Landroid/view/View;

    check-cast v0, Lcom/sec/android/app/ve/view/timeline/caption/Caption;

    .line 370
    invoke-virtual {v1, p1, p2, v0}, Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;->changePosition(FFLcom/sec/android/app/ve/view/timeline/caption/Caption;)V

    .line 373
    :cond_28
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/caption/Caption$DragViewImpl;->view:Landroid/view/View;

    check-cast v0, Lcom/sec/android/app/ve/view/timeline/caption/Caption;

    #getter for: Lcom/sec/android/app/ve/view/timeline/caption/Caption;->mText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/android/app/ve/view/timeline/caption/Caption;->access$0(Lcom/sec/android/app/ve/view/timeline/caption/Caption;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 374
    return-void
.end method
