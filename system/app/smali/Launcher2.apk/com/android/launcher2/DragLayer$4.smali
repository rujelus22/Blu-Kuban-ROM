.class Lcom/android/launcher2/DragLayer$4;
.super Ljava/lang/Object;
.source "DragLayer.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/DragLayer;->fadeOutDragView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/DragLayer;


# direct methods
.method constructor <init>(Lcom/android/launcher2/DragLayer;)V
    .registers 2
    .parameter

    .prologue
    .line 596
    iput-object p1, p0, Lcom/android/launcher2/DragLayer$4;->this$0:Lcom/android/launcher2/DragLayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 11
    .parameter "animation"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 598
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 599
    .local v1, percent:F
    iget-object v3, p0, Lcom/android/launcher2/DragLayer$4;->this$0:Lcom/android/launcher2/DragLayer;

    const/high16 v4, 0x3f80

    sub-float/2addr v4, v1

    #setter for: Lcom/android/launcher2/DragLayer;->mDropViewAlpha:F
    invoke-static {v3, v4}, Lcom/android/launcher2/DragLayer;->access$202(Lcom/android/launcher2/DragLayer;F)F

    .line 600
    iget-object v3, p0, Lcom/android/launcher2/DragLayer$4;->this$0:Lcom/android/launcher2/DragLayer;

    #getter for: Lcom/android/launcher2/DragLayer;->mDropView:Landroid/view/View;
    invoke-static {v3}, Lcom/android/launcher2/DragLayer;->access$400(Lcom/android/launcher2/DragLayer;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 601
    .local v2, width:I
    iget-object v3, p0, Lcom/android/launcher2/DragLayer$4;->this$0:Lcom/android/launcher2/DragLayer;

    #getter for: Lcom/android/launcher2/DragLayer;->mDropView:Landroid/view/View;
    invoke-static {v3}, Lcom/android/launcher2/DragLayer;->access$400(Lcom/android/launcher2/DragLayer;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 602
    .local v0, height:I
    iget-object v3, p0, Lcom/android/launcher2/DragLayer$4;->this$0:Lcom/android/launcher2/DragLayer;

    iget-object v4, p0, Lcom/android/launcher2/DragLayer$4;->this$0:Lcom/android/launcher2/DragLayer;

    #getter for: Lcom/android/launcher2/DragLayer;->mDropViewPos:[I
    invoke-static {v4}, Lcom/android/launcher2/DragLayer;->access$000(Lcom/android/launcher2/DragLayer;)[I

    move-result-object v4

    aget v4, v4, v7

    iget-object v5, p0, Lcom/android/launcher2/DragLayer$4;->this$0:Lcom/android/launcher2/DragLayer;

    #getter for: Lcom/android/launcher2/DragLayer;->mDropViewPos:[I
    invoke-static {v5}, Lcom/android/launcher2/DragLayer;->access$000(Lcom/android/launcher2/DragLayer;)[I

    move-result-object v5

    aget v5, v5, v8

    iget-object v6, p0, Lcom/android/launcher2/DragLayer$4;->this$0:Lcom/android/launcher2/DragLayer;

    #getter for: Lcom/android/launcher2/DragLayer;->mDropViewPos:[I
    invoke-static {v6}, Lcom/android/launcher2/DragLayer;->access$000(Lcom/android/launcher2/DragLayer;)[I

    move-result-object v6

    aget v6, v6, v7

    add-int/2addr v6, v2

    iget-object v7, p0, Lcom/android/launcher2/DragLayer$4;->this$0:Lcom/android/launcher2/DragLayer;

    #getter for: Lcom/android/launcher2/DragLayer;->mDropViewPos:[I
    invoke-static {v7}, Lcom/android/launcher2/DragLayer;->access$000(Lcom/android/launcher2/DragLayer;)[I

    move-result-object v7

    aget v7, v7, v8

    add-int/2addr v7, v0

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/launcher2/DragLayer;->invalidate(IIII)V

    .line 604
    return-void
.end method
