.class Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$5;
.super Ljava/lang/Object;
.source "PaintSelectorPopup.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$5;->this$0:Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;

    .line 379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 13
    .parameter "view"
    .parameter "event"

    .prologue
    const v6, 0x7f020132

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 384
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 385
    .local v0, action:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 386
    .local v3, x:F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 388
    .local v4, y:F
    iget-object v5, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$5;->this$0:Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;

    #getter for: Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mScrollThumb:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->access$6(Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 389
    .local v2, p:Landroid/widget/RelativeLayout$LayoutParams;
    if-nez v0, :cond_2e

    .line 391
    iget-object v5, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$5;->this$0:Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;

    #getter for: Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mScrollThumb:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->access$6(Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 396
    iget-object v5, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$5;->this$0:Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;

    #setter for: Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->inTouch:Z
    invoke-static {v5, v8}, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->access$7(Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;Z)V

    .line 418
    :cond_2d
    :goto_2d
    return v8

    .line 399
    :cond_2e
    const/4 v5, 0x2

    if-ne v0, v5, :cond_72

    .line 402
    iget-object v5, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$5;->this$0:Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;

    #getter for: Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mScrollThumb:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->access$6(Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 403
    iget-object v5, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$5;->this$0:Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;

    #getter for: Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->inTouch:Z
    invoke-static {v5}, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->access$8(Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;)Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 404
    iget-object v5, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$5;->this$0:Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;

    #getter for: Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mScrollThumb:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->access$6(Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ImageView;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float v5, v4, v5

    float-to-int v1, v5

    .line 405
    .local v1, margin:I
    const/16 v5, 0x21

    if-ge v1, v5, :cond_58

    .line 406
    const/16 v1, 0x21

    .line 407
    :cond_58
    const/16 v5, 0x1c4

    if-le v1, v5, :cond_5e

    .line 408
    const/16 v1, 0x1c4

    .line 409
    :cond_5e
    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 411
    iget-object v5, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$5;->this$0:Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;

    #getter for: Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mScrollableArea:Lcom/sec/android/app/ve/view/paint/PalleteScrollView;
    invoke-static {v5}, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->access$9(Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;)Lcom/sec/android/app/ve/view/paint/PalleteScrollView;

    move-result-object v5

    const v6, 0x3eb851ec

    add-int/lit8 v7, v1, -0x21

    int-to-float v7, v7

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-virtual {v5, v9, v6}, Lcom/sec/android/app/ve/view/paint/PalleteScrollView;->scrollTo(II)V

    goto :goto_2d

    .line 414
    .end local v1           #margin:I
    :cond_72
    if-ne v0, v8, :cond_2d

    .line 415
    iget-object v5, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$5;->this$0:Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;

    #getter for: Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mScrollThumb:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->access$6(Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;)Landroid/widget/ImageView;

    move-result-object v5

    const v6, 0x7f020131

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 416
    iget-object v5, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$5;->this$0:Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;

    #setter for: Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->inTouch:Z
    invoke-static {v5, v9}, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->access$7(Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;Z)V

    goto :goto_2d
.end method
