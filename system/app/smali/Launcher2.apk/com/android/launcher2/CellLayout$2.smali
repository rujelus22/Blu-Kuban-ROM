.class Lcom/android/launcher2/CellLayout$2;
.super Ljava/lang/Object;
.source "CellLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/CellLayout;

.field final synthetic val$anim:Lcom/android/launcher2/InterruptibleInOutAnimator;

.field final synthetic val$thisIndex:I


# direct methods
.method constructor <init>(Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/InterruptibleInOutAnimator;I)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 219
    iput-object p1, p0, Lcom/android/launcher2/CellLayout$2;->this$0:Lcom/android/launcher2/CellLayout;

    iput-object p2, p0, Lcom/android/launcher2/CellLayout$2;->val$anim:Lcom/android/launcher2/InterruptibleInOutAnimator;

    iput p3, p0, Lcom/android/launcher2/CellLayout$2;->val$thisIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 8
    .parameter "animation"

    .prologue
    .line 221
    iget-object v3, p0, Lcom/android/launcher2/CellLayout$2;->val$anim:Lcom/android/launcher2/InterruptibleInOutAnimator;

    invoke-virtual {v3}, Lcom/android/launcher2/InterruptibleInOutAnimator;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 225
    .local v1, outline:Landroid/graphics/Bitmap;
    if-nez v1, :cond_e

    .line 232
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 240
    :goto_d
    return-void

    .line 234
    :cond_e
    iget-object v3, p0, Lcom/android/launcher2/CellLayout$2;->this$0:Lcom/android/launcher2/CellLayout;

    #getter for: Lcom/android/launcher2/CellLayout;->mDragOutlineAlphas:[F
    invoke-static {v3}, Lcom/android/launcher2/CellLayout;->access$100(Lcom/android/launcher2/CellLayout;)[F

    move-result-object v4

    iget v5, p0, Lcom/android/launcher2/CellLayout$2;->val$thisIndex:I

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v4, v5

    .line 235
    iget-object v3, p0, Lcom/android/launcher2/CellLayout$2;->this$0:Lcom/android/launcher2/CellLayout;

    #getter for: Lcom/android/launcher2/CellLayout;->mDragOutlines:[Landroid/graphics/Point;
    invoke-static {v3}, Lcom/android/launcher2/CellLayout;->access$200(Lcom/android/launcher2/CellLayout;)[Landroid/graphics/Point;

    move-result-object v3

    iget v4, p0, Lcom/android/launcher2/CellLayout$2;->val$thisIndex:I

    aget-object v3, v3, v4

    iget v0, v3, Landroid/graphics/Point;->x:I

    .line 236
    .local v0, left:I
    iget-object v3, p0, Lcom/android/launcher2/CellLayout$2;->this$0:Lcom/android/launcher2/CellLayout;

    #getter for: Lcom/android/launcher2/CellLayout;->mDragOutlines:[Landroid/graphics/Point;
    invoke-static {v3}, Lcom/android/launcher2/CellLayout;->access$200(Lcom/android/launcher2/CellLayout;)[Landroid/graphics/Point;

    move-result-object v3

    iget v4, p0, Lcom/android/launcher2/CellLayout$2;->val$thisIndex:I

    aget-object v3, v3, v4

    iget v2, v3, Landroid/graphics/Point;->y:I

    .line 237
    .local v2, top:I
    iget-object v3, p0, Lcom/android/launcher2/CellLayout$2;->this$0:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v3, v0, v2, v4, v5}, Lcom/android/launcher2/CellLayout;->invalidate(IIII)V

    goto :goto_d
.end method
