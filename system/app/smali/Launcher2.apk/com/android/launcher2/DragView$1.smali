.class Lcom/android/launcher2/DragView$1;
.super Ljava/lang/Object;
.source "DragView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/DragView;-><init>(Lcom/android/launcher2/Launcher;Landroid/graphics/Bitmap;IIIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/DragView;

.field final synthetic val$offsetX:I

.field final synthetic val$offsetY:I


# direct methods
.method constructor <init>(Lcom/android/launcher2/DragView;II)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/launcher2/DragView$1;->this$0:Lcom/android/launcher2/DragView;

    iput p2, p0, Lcom/android/launcher2/DragView$1;->val$offsetX:I

    iput p3, p0, Lcom/android/launcher2/DragView$1;->val$offsetY:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 8
    .parameter "animation"

    .prologue
    .line 86
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 88
    .local v3, value:F
    iget v4, p0, Lcom/android/launcher2/DragView$1;->val$offsetX:I

    int-to-float v4, v4

    mul-float/2addr v4, v3

    iget-object v5, p0, Lcom/android/launcher2/DragView$1;->this$0:Lcom/android/launcher2/DragView;

    #getter for: Lcom/android/launcher2/DragView;->mOffsetX:F
    invoke-static {v5}, Lcom/android/launcher2/DragView;->access$000(Lcom/android/launcher2/DragView;)F

    move-result v5

    sub-float/2addr v4, v5

    float-to-int v0, v4

    .line 89
    .local v0, deltaX:I
    iget v4, p0, Lcom/android/launcher2/DragView$1;->val$offsetY:I

    int-to-float v4, v4

    mul-float/2addr v4, v3

    iget-object v5, p0, Lcom/android/launcher2/DragView$1;->this$0:Lcom/android/launcher2/DragView;

    #getter for: Lcom/android/launcher2/DragView;->mOffsetY:F
    invoke-static {v5}, Lcom/android/launcher2/DragView;->access$100(Lcom/android/launcher2/DragView;)F

    move-result v5

    sub-float/2addr v4, v5

    float-to-int v1, v4

    .line 91
    .local v1, deltaY:I
    iget-object v4, p0, Lcom/android/launcher2/DragView$1;->this$0:Lcom/android/launcher2/DragView;

    int-to-float v5, v0

    invoke-static {v4, v5}, Lcom/android/launcher2/DragView;->access$016(Lcom/android/launcher2/DragView;F)F

    .line 92
    iget-object v4, p0, Lcom/android/launcher2/DragView$1;->this$0:Lcom/android/launcher2/DragView;

    int-to-float v5, v1

    invoke-static {v4, v5}, Lcom/android/launcher2/DragView;->access$116(Lcom/android/launcher2/DragView;F)F

    .line 94
    iget-object v4, p0, Lcom/android/launcher2/DragView$1;->this$0:Lcom/android/launcher2/DragView;

    invoke-virtual {v4}, Lcom/android/launcher2/DragView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-nez v4, :cond_3a

    .line 95
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 102
    :goto_39
    return-void

    .line 97
    :cond_3a
    iget-object v4, p0, Lcom/android/launcher2/DragView$1;->this$0:Lcom/android/launcher2/DragView;

    #getter for: Lcom/android/launcher2/DragView;->mLayoutParams:Lcom/android/launcher2/DragLayer$LayoutParams;
    invoke-static {v4}, Lcom/android/launcher2/DragView;->access$200(Lcom/android/launcher2/DragView;)Lcom/android/launcher2/DragLayer$LayoutParams;

    move-result-object v2

    .line 98
    .local v2, lp:Lcom/android/launcher2/DragLayer$LayoutParams;
    iget v4, v2, Lcom/android/launcher2/DragLayer$LayoutParams;->x:I

    add-int/2addr v4, v0

    iput v4, v2, Lcom/android/launcher2/DragLayer$LayoutParams;->x:I

    .line 99
    iget v4, v2, Lcom/android/launcher2/DragLayer$LayoutParams;->y:I

    add-int/2addr v4, v1

    iput v4, v2, Lcom/android/launcher2/DragLayer$LayoutParams;->y:I

    .line 100
    iget-object v4, p0, Lcom/android/launcher2/DragView$1;->this$0:Lcom/android/launcher2/DragView;

    #getter for: Lcom/android/launcher2/DragView;->mDragLayer:Lcom/android/launcher2/DragLayer;
    invoke-static {v4}, Lcom/android/launcher2/DragView;->access$300(Lcom/android/launcher2/DragView;)Lcom/android/launcher2/DragLayer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/DragLayer;->requestLayout()V

    goto :goto_39
.end method
