.class Lcom/android/launcher2/DragLayer$2;
.super Ljava/lang/Object;
.source "DragLayer.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/DragLayer;->animateView(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;FFILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Ljava/lang/Runnable;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/DragLayer;

.field final synthetic val$alphaInterpolator:Landroid/view/animation/Interpolator;

.field final synthetic val$finalAlpha:F

.field final synthetic val$finalScale:F

.field final synthetic val$from:Landroid/graphics/Rect;

.field final synthetic val$initialAlpha:F

.field final synthetic val$motionInterpolator:Landroid/view/animation/Interpolator;

.field final synthetic val$to:Landroid/graphics/Rect;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher2/DragLayer;Landroid/view/View;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Landroid/graphics/Rect;Landroid/graphics/Rect;FFF)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 554
    iput-object p1, p0, Lcom/android/launcher2/DragLayer$2;->this$0:Lcom/android/launcher2/DragLayer;

    iput-object p2, p0, Lcom/android/launcher2/DragLayer$2;->val$view:Landroid/view/View;

    iput-object p3, p0, Lcom/android/launcher2/DragLayer$2;->val$alphaInterpolator:Landroid/view/animation/Interpolator;

    iput-object p4, p0, Lcom/android/launcher2/DragLayer$2;->val$motionInterpolator:Landroid/view/animation/Interpolator;

    iput-object p5, p0, Lcom/android/launcher2/DragLayer$2;->val$from:Landroid/graphics/Rect;

    iput-object p6, p0, Lcom/android/launcher2/DragLayer$2;->val$to:Landroid/graphics/Rect;

    iput p7, p0, Lcom/android/launcher2/DragLayer$2;->val$finalScale:F

    iput p8, p0, Lcom/android/launcher2/DragLayer$2;->val$finalAlpha:F

    iput p9, p0, Lcom/android/launcher2/DragLayer$2;->val$initialAlpha:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 15
    .parameter "animation"

    .prologue
    const/high16 v12, 0x3f80

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 556
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 558
    .local v3, percent:F
    iget-object v5, p0, Lcom/android/launcher2/DragLayer$2;->val$view:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 559
    .local v4, width:I
    iget-object v5, p0, Lcom/android/launcher2/DragLayer$2;->val$view:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 560
    .local v1, height:I
    iget-object v5, p0, Lcom/android/launcher2/DragLayer$2;->this$0:Lcom/android/launcher2/DragLayer;

    iget-object v6, p0, Lcom/android/launcher2/DragLayer$2;->this$0:Lcom/android/launcher2/DragLayer;

    #getter for: Lcom/android/launcher2/DragLayer;->mDropViewPos:[I
    invoke-static {v6}, Lcom/android/launcher2/DragLayer;->access$000(Lcom/android/launcher2/DragLayer;)[I

    move-result-object v6

    aget v6, v6, v10

    iget-object v7, p0, Lcom/android/launcher2/DragLayer$2;->this$0:Lcom/android/launcher2/DragLayer;

    #getter for: Lcom/android/launcher2/DragLayer;->mDropViewPos:[I
    invoke-static {v7}, Lcom/android/launcher2/DragLayer;->access$000(Lcom/android/launcher2/DragLayer;)[I

    move-result-object v7

    aget v7, v7, v11

    iget-object v8, p0, Lcom/android/launcher2/DragLayer$2;->this$0:Lcom/android/launcher2/DragLayer;

    #getter for: Lcom/android/launcher2/DragLayer;->mDropViewPos:[I
    invoke-static {v8}, Lcom/android/launcher2/DragLayer;->access$000(Lcom/android/launcher2/DragLayer;)[I

    move-result-object v8

    aget v8, v8, v10

    add-int/2addr v8, v4

    iget-object v9, p0, Lcom/android/launcher2/DragLayer$2;->this$0:Lcom/android/launcher2/DragLayer;

    #getter for: Lcom/android/launcher2/DragLayer;->mDropViewPos:[I
    invoke-static {v9}, Lcom/android/launcher2/DragLayer;->access$000(Lcom/android/launcher2/DragLayer;)[I

    move-result-object v9

    aget v9, v9, v11

    add-int/2addr v9, v1

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/android/launcher2/DragLayer;->invalidate(IIII)V

    .line 563
    iget-object v5, p0, Lcom/android/launcher2/DragLayer$2;->val$alphaInterpolator:Landroid/view/animation/Interpolator;

    if-nez v5, :cond_c4

    move v0, v3

    .line 565
    .local v0, alphaPercent:F
    :goto_46
    iget-object v5, p0, Lcom/android/launcher2/DragLayer$2;->val$motionInterpolator:Landroid/view/animation/Interpolator;

    if-nez v5, :cond_cc

    move v2, v3

    .line 568
    .local v2, motionPercent:F
    :goto_4b
    iget-object v5, p0, Lcom/android/launcher2/DragLayer$2;->this$0:Lcom/android/launcher2/DragLayer;

    #getter for: Lcom/android/launcher2/DragLayer;->mDropViewPos:[I
    invoke-static {v5}, Lcom/android/launcher2/DragLayer;->access$000(Lcom/android/launcher2/DragLayer;)[I

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher2/DragLayer$2;->val$from:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Lcom/android/launcher2/DragLayer$2;->val$to:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget-object v8, p0, Lcom/android/launcher2/DragLayer$2;->val$from:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    mul-float/2addr v7, v2

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    add-int/2addr v6, v7

    aput v6, v5, v10

    .line 569
    iget-object v5, p0, Lcom/android/launcher2/DragLayer$2;->this$0:Lcom/android/launcher2/DragLayer;

    #getter for: Lcom/android/launcher2/DragLayer;->mDropViewPos:[I
    invoke-static {v5}, Lcom/android/launcher2/DragLayer;->access$000(Lcom/android/launcher2/DragLayer;)[I

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher2/DragLayer$2;->val$from:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, Lcom/android/launcher2/DragLayer$2;->val$to:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget-object v8, p0, Lcom/android/launcher2/DragLayer$2;->val$from:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    mul-float/2addr v7, v2

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    add-int/2addr v6, v7

    aput v6, v5, v11

    .line 570
    iget-object v5, p0, Lcom/android/launcher2/DragLayer$2;->this$0:Lcom/android/launcher2/DragLayer;

    iget v6, p0, Lcom/android/launcher2/DragLayer$2;->val$finalScale:F

    mul-float/2addr v6, v3

    sub-float v7, v12, v3

    add-float/2addr v6, v7

    #setter for: Lcom/android/launcher2/DragLayer;->mDropViewScale:F
    invoke-static {v5, v6}, Lcom/android/launcher2/DragLayer;->access$102(Lcom/android/launcher2/DragLayer;F)F

    .line 571
    iget-object v5, p0, Lcom/android/launcher2/DragLayer$2;->this$0:Lcom/android/launcher2/DragLayer;

    iget v6, p0, Lcom/android/launcher2/DragLayer$2;->val$finalAlpha:F

    mul-float/2addr v6, v0

    sub-float v7, v12, v0

    iget v8, p0, Lcom/android/launcher2/DragLayer$2;->val$initialAlpha:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    #setter for: Lcom/android/launcher2/DragLayer;->mDropViewAlpha:F
    invoke-static {v5, v6}, Lcom/android/launcher2/DragLayer;->access$202(Lcom/android/launcher2/DragLayer;F)F

    .line 572
    iget-object v5, p0, Lcom/android/launcher2/DragLayer$2;->this$0:Lcom/android/launcher2/DragLayer;

    iget-object v6, p0, Lcom/android/launcher2/DragLayer$2;->this$0:Lcom/android/launcher2/DragLayer;

    #getter for: Lcom/android/launcher2/DragLayer;->mDropViewPos:[I
    invoke-static {v6}, Lcom/android/launcher2/DragLayer;->access$000(Lcom/android/launcher2/DragLayer;)[I

    move-result-object v6

    aget v6, v6, v10

    iget-object v7, p0, Lcom/android/launcher2/DragLayer$2;->this$0:Lcom/android/launcher2/DragLayer;

    #getter for: Lcom/android/launcher2/DragLayer;->mDropViewPos:[I
    invoke-static {v7}, Lcom/android/launcher2/DragLayer;->access$000(Lcom/android/launcher2/DragLayer;)[I

    move-result-object v7

    aget v7, v7, v11

    iget-object v8, p0, Lcom/android/launcher2/DragLayer$2;->this$0:Lcom/android/launcher2/DragLayer;

    #getter for: Lcom/android/launcher2/DragLayer;->mDropViewPos:[I
    invoke-static {v8}, Lcom/android/launcher2/DragLayer;->access$000(Lcom/android/launcher2/DragLayer;)[I

    move-result-object v8

    aget v8, v8, v10

    add-int/2addr v8, v4

    iget-object v9, p0, Lcom/android/launcher2/DragLayer$2;->this$0:Lcom/android/launcher2/DragLayer;

    #getter for: Lcom/android/launcher2/DragLayer;->mDropViewPos:[I
    invoke-static {v9}, Lcom/android/launcher2/DragLayer;->access$000(Lcom/android/launcher2/DragLayer;)[I

    move-result-object v9

    aget v9, v9, v11

    add-int/2addr v9, v1

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/android/launcher2/DragLayer;->invalidate(IIII)V

    .line 574
    return-void

    .line 563
    .end local v0           #alphaPercent:F
    .end local v2           #motionPercent:F
    :cond_c4
    iget-object v5, p0, Lcom/android/launcher2/DragLayer$2;->val$alphaInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v5, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    goto/16 :goto_46

    .line 565
    .restart local v0       #alphaPercent:F
    :cond_cc
    iget-object v5, p0, Lcom/android/launcher2/DragLayer$2;->val$motionInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v5, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    goto/16 :goto_4b
.end method
