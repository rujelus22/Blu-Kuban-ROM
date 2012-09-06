.class final Lcom/anddoes/launcher/bt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/DragLayer;


# direct methods
.method constructor <init>(Lcom/anddoes/launcher/DragLayer;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anddoes/launcher/bt;->a:Lcom/anddoes/launcher/DragLayer;

    .line 593
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 10
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 595
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 596
    iget-object v1, p0, Lcom/anddoes/launcher/bt;->a:Lcom/anddoes/launcher/DragLayer;

    const/high16 v2, 0x3f80

    sub-float v0, v2, v0

    invoke-static {v1, v0}, Lcom/anddoes/launcher/DragLayer;->b(Lcom/anddoes/launcher/DragLayer;F)V

    .line 597
    iget-object v0, p0, Lcom/anddoes/launcher/bt;->a:Lcom/anddoes/launcher/DragLayer;

    invoke-static {v0}, Lcom/anddoes/launcher/DragLayer;->d(Lcom/anddoes/launcher/DragLayer;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 598
    iget-object v1, p0, Lcom/anddoes/launcher/bt;->a:Lcom/anddoes/launcher/DragLayer;

    invoke-static {v1}, Lcom/anddoes/launcher/DragLayer;->d(Lcom/anddoes/launcher/DragLayer;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 599
    iget-object v2, p0, Lcom/anddoes/launcher/bt;->a:Lcom/anddoes/launcher/DragLayer;

    iget-object v3, p0, Lcom/anddoes/launcher/bt;->a:Lcom/anddoes/launcher/DragLayer;

    invoke-static {v3}, Lcom/anddoes/launcher/DragLayer;->a(Lcom/anddoes/launcher/DragLayer;)[I

    move-result-object v3

    aget v3, v3, v6

    iget-object v4, p0, Lcom/anddoes/launcher/bt;->a:Lcom/anddoes/launcher/DragLayer;

    invoke-static {v4}, Lcom/anddoes/launcher/DragLayer;->a(Lcom/anddoes/launcher/DragLayer;)[I

    move-result-object v4

    aget v4, v4, v7

    .line 600
    iget-object v5, p0, Lcom/anddoes/launcher/bt;->a:Lcom/anddoes/launcher/DragLayer;

    invoke-static {v5}, Lcom/anddoes/launcher/DragLayer;->a(Lcom/anddoes/launcher/DragLayer;)[I

    move-result-object v5

    aget v5, v5, v6

    add-int/2addr v0, v5

    iget-object v5, p0, Lcom/anddoes/launcher/bt;->a:Lcom/anddoes/launcher/DragLayer;

    invoke-static {v5}, Lcom/anddoes/launcher/DragLayer;->a(Lcom/anddoes/launcher/DragLayer;)[I

    move-result-object v5

    aget v5, v5, v7

    add-int/2addr v1, v5

    .line 599
    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/anddoes/launcher/DragLayer;->invalidate(IIII)V

    .line 601
    return-void
.end method
