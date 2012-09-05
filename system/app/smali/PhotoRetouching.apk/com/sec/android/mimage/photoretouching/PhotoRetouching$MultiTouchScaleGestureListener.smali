.class public Lcom/sec/android/mimage/photoretouching/PhotoRetouching$MultiTouchScaleGestureListener;
.super Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$SimpleOnMultiTouchGestureListener;
.source "PhotoRetouching.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/PhotoRetouching;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MultiTouchScaleGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;


# direct methods
.method public constructor <init>(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)V
    .registers 2
    .parameter

    .prologue
    .line 2790
    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$MultiTouchScaleGestureListener;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$SimpleOnMultiTouchGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "e"

    .prologue
    .line 2838
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$MultiTouchScaleGestureListener;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mView:Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$17(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;

    move-result-object v0

    if-nez v0, :cond_a

    .line 2839
    const/4 v0, 0x0

    .line 2846
    :goto_9
    return v0

    .line 2841
    :cond_a
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$MultiTouchScaleGestureListener;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mView:Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$17(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->getScale()F

    move-result v0

    const/high16 v1, 0x4000

    cmpl-float v0, v0, v1

    if-lez v0, :cond_27

    .line 2842
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$MultiTouchScaleGestureListener;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mView:Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$17(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;

    move-result-object v0

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->zoomTo(F)V

    .line 2846
    :goto_25
    const/4 v0, 0x1

    goto :goto_9

    .line 2844
    :cond_27
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$MultiTouchScaleGestureListener;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mView:Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$17(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;

    move-result-object v0

    const/high16 v1, 0x4040

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->zoomTo(F)V

    goto :goto_25
.end method

.method public onMultiTouchDown()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 2794
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$MultiTouchScaleGestureListener;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v2, v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->touch_up(FFZ)Z

    .line 2796
    invoke-super {p0}, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$SimpleOnMultiTouchGestureListener;->onMultiTouchDown()Z

    move-result v0

    return v0
.end method

.method public onMultiTouchScale(FFF)Z
    .registers 5
    .parameter "scalefactor"
    .parameter "focusX"
    .parameter "focusY"

    .prologue
    .line 2812
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$MultiTouchScaleGestureListener;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mView:Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$17(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;

    move-result-object v0

    if-nez v0, :cond_a

    .line 2813
    const/4 v0, 0x0

    .line 2816
    :goto_9
    return v0

    .line 2814
    :cond_a
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$MultiTouchScaleGestureListener;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mView:Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$17(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->zoom(FFF)V

    .line 2816
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public onMultiTouchScroll(FF)Z
    .registers 6
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 2801
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$MultiTouchScaleGestureListener;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mView:Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$17(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;

    move-result-object v0

    if-nez v0, :cond_a

    .line 2802
    const/4 v0, 0x0

    .line 2807
    :goto_9
    return v0

    .line 2803
    :cond_a
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$MultiTouchScaleGestureListener;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mView:Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$17(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->getScale()F

    move-result v0

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-lez v0, :cond_25

    .line 2804
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$MultiTouchScaleGestureListener;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mView:Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$17(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;

    move-result-object v0

    neg-float v1, p1

    neg-float v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->panBy(FF)V

    .line 2807
    :cond_25
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public onMultiTouchUp()Z
    .registers 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2821
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$MultiTouchScaleGestureListener;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mView:Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$17(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;

    move-result-object v3

    if-nez v3, :cond_b

    .line 2832
    :goto_a
    return v1

    .line 2823
    :cond_b
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$MultiTouchScaleGestureListener;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mView:Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$17(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->zoomEnd()F

    move-result v0

    .line 2824
    .local v0, scale:F
    const/high16 v3, 0x3f80

    cmpl-float v3, v0, v3

    if-lez v3, :cond_32

    .line 2825
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$MultiTouchScaleGestureListener;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_adddel:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$5(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageButton;->isSelected()Z

    move-result v1

    if-nez v1, :cond_30

    .line 2826
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$MultiTouchScaleGestureListener;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_move:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$1(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setSelected(Z)V

    :cond_30
    :goto_30
    move v1, v2

    .line 2832
    goto :goto_a

    .line 2829
    :cond_32
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$MultiTouchScaleGestureListener;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_move:Landroid/widget/ImageButton;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$1(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Landroid/widget/ImageButton;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/ImageButton;->setSelected(Z)V

    goto :goto_30
.end method

.method public onSingleTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8
    .parameter "e"

    .prologue
    const/4 v5, 0x1

    .line 2852
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 2853
    .local v0, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 2855
    .local v1, y:F
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$MultiTouchScaleGestureListener;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mView:Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$17(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$MultiTouchScaleGestureListener;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mVisibleRect:Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$30(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 2857
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$MultiTouchScaleGestureListener;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mVisibleRect:Landroid/graphics/Rect;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$30(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    .line 2858
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$MultiTouchScaleGestureListener;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mVisibleRect:Landroid/graphics/Rect;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$30(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    .line 2860
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_72

    .line 2877
    :goto_33
    return v5

    .line 2862
    :pswitch_34
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$MultiTouchScaleGestureListener;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #setter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mX:F
    invoke-static {v2, v0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$31(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;F)V

    .line 2863
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$MultiTouchScaleGestureListener;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #setter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mY:F
    invoke-static {v2, v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$32(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;F)V

    .line 2864
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$MultiTouchScaleGestureListener;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    invoke-virtual {v2, v0, v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->touch_down(FF)Z

    goto :goto_33

    .line 2868
    :pswitch_44
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$MultiTouchScaleGestureListener;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$MultiTouchScaleGestureListener;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mX:F
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$33(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)F

    move-result v3

    sub-float/2addr v3, v0

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$MultiTouchScaleGestureListener;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mY:F
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$34(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)F

    move-result v4

    sub-float/2addr v4, v1

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->touch_move(FFFF)Z

    .line 2869
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$MultiTouchScaleGestureListener;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #setter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mX:F
    invoke-static {v2, v0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$31(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;F)V

    .line 2870
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$MultiTouchScaleGestureListener;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #setter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mY:F
    invoke-static {v2, v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$32(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;F)V

    goto :goto_33

    .line 2873
    :pswitch_62
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$MultiTouchScaleGestureListener;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    invoke-virtual {v2, v0, v1, v5}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->touch_up(FFZ)Z

    .line 2874
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$MultiTouchScaleGestureListener;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mView:Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$17(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->startAnim()V

    goto :goto_33

    .line 2860
    nop

    :pswitch_data_72
    .packed-switch 0x0
        :pswitch_34
        :pswitch_62
        :pswitch_44
    .end packed-switch
.end method
