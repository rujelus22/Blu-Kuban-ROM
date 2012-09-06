.class final Lcom/anddoes/launcher/br;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/DragLayer;

.field private final synthetic b:Landroid/view/View;

.field private final synthetic c:Landroid/view/animation/Interpolator;

.field private final synthetic d:Landroid/view/animation/Interpolator;

.field private final synthetic e:Landroid/graphics/Rect;

.field private final synthetic f:Landroid/graphics/Rect;

.field private final synthetic g:F

.field private final synthetic h:F

.field private final synthetic i:F


# direct methods
.method constructor <init>(Lcom/anddoes/launcher/DragLayer;Landroid/view/View;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Landroid/graphics/Rect;Landroid/graphics/Rect;FFF)V
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
    .line 1
    iput-object p1, p0, Lcom/anddoes/launcher/br;->a:Lcom/anddoes/launcher/DragLayer;

    iput-object p2, p0, Lcom/anddoes/launcher/br;->b:Landroid/view/View;

    iput-object p3, p0, Lcom/anddoes/launcher/br;->c:Landroid/view/animation/Interpolator;

    iput-object p4, p0, Lcom/anddoes/launcher/br;->d:Landroid/view/animation/Interpolator;

    iput-object p5, p0, Lcom/anddoes/launcher/br;->e:Landroid/graphics/Rect;

    iput-object p6, p0, Lcom/anddoes/launcher/br;->f:Landroid/graphics/Rect;

    iput p7, p0, Lcom/anddoes/launcher/br;->g:F

    iput p8, p0, Lcom/anddoes/launcher/br;->h:F

    iput p9, p0, Lcom/anddoes/launcher/br;->i:F

    .line 551
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 14
    .parameter

    .prologue
    const/high16 v11, 0x3f80

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 553
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 555
    iget-object v0, p0, Lcom/anddoes/launcher/br;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 556
    iget-object v0, p0, Lcom/anddoes/launcher/br;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 557
    iget-object v0, p0, Lcom/anddoes/launcher/br;->a:Lcom/anddoes/launcher/DragLayer;

    iget-object v2, p0, Lcom/anddoes/launcher/br;->a:Lcom/anddoes/launcher/DragLayer;

    invoke-static {v2}, Lcom/anddoes/launcher/DragLayer;->a(Lcom/anddoes/launcher/DragLayer;)[I

    move-result-object v2

    aget v2, v2, v9

    iget-object v5, p0, Lcom/anddoes/launcher/br;->a:Lcom/anddoes/launcher/DragLayer;

    invoke-static {v5}, Lcom/anddoes/launcher/DragLayer;->a(Lcom/anddoes/launcher/DragLayer;)[I

    move-result-object v5

    aget v5, v5, v10

    .line 558
    iget-object v6, p0, Lcom/anddoes/launcher/br;->a:Lcom/anddoes/launcher/DragLayer;

    invoke-static {v6}, Lcom/anddoes/launcher/DragLayer;->a(Lcom/anddoes/launcher/DragLayer;)[I

    move-result-object v6

    aget v6, v6, v9

    add-int/2addr v6, v3

    iget-object v7, p0, Lcom/anddoes/launcher/br;->a:Lcom/anddoes/launcher/DragLayer;

    invoke-static {v7}, Lcom/anddoes/launcher/DragLayer;->a(Lcom/anddoes/launcher/DragLayer;)[I

    move-result-object v7

    aget v7, v7, v10

    add-int/2addr v7, v4

    .line 557
    invoke-virtual {v0, v2, v5, v6, v7}, Lcom/anddoes/launcher/DragLayer;->invalidate(IIII)V

    .line 560
    iget-object v0, p0, Lcom/anddoes/launcher/br;->c:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_c4

    move v0, v1

    .line 562
    :goto_46
    iget-object v2, p0, Lcom/anddoes/launcher/br;->d:Landroid/view/animation/Interpolator;

    if-nez v2, :cond_cc

    move v2, v1

    .line 565
    :goto_4b
    iget-object v5, p0, Lcom/anddoes/launcher/br;->a:Lcom/anddoes/launcher/DragLayer;

    invoke-static {v5}, Lcom/anddoes/launcher/DragLayer;->a(Lcom/anddoes/launcher/DragLayer;)[I

    move-result-object v5

    iget-object v6, p0, Lcom/anddoes/launcher/br;->e:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Lcom/anddoes/launcher/br;->f:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget-object v8, p0, Lcom/anddoes/launcher/br;->e:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    mul-float/2addr v7, v2

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    add-int/2addr v6, v7

    aput v6, v5, v9

    .line 566
    iget-object v5, p0, Lcom/anddoes/launcher/br;->a:Lcom/anddoes/launcher/DragLayer;

    invoke-static {v5}, Lcom/anddoes/launcher/DragLayer;->a(Lcom/anddoes/launcher/DragLayer;)[I

    move-result-object v5

    iget-object v6, p0, Lcom/anddoes/launcher/br;->e:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, Lcom/anddoes/launcher/br;->f:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget-object v8, p0, Lcom/anddoes/launcher/br;->e:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    mul-float/2addr v2, v7

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int/2addr v2, v6

    aput v2, v5, v10

    .line 567
    iget-object v2, p0, Lcom/anddoes/launcher/br;->a:Lcom/anddoes/launcher/DragLayer;

    iget v5, p0, Lcom/anddoes/launcher/br;->g:F

    mul-float/2addr v5, v1

    sub-float v1, v11, v1

    add-float/2addr v1, v5

    invoke-static {v2, v1}, Lcom/anddoes/launcher/DragLayer;->a(Lcom/anddoes/launcher/DragLayer;F)V

    .line 568
    iget-object v1, p0, Lcom/anddoes/launcher/br;->a:Lcom/anddoes/launcher/DragLayer;

    iget v2, p0, Lcom/anddoes/launcher/br;->h:F

    mul-float/2addr v2, v0

    sub-float v0, v11, v0

    iget v5, p0, Lcom/anddoes/launcher/br;->i:F

    mul-float/2addr v0, v5

    add-float/2addr v0, v2

    invoke-static {v1, v0}, Lcom/anddoes/launcher/DragLayer;->b(Lcom/anddoes/launcher/DragLayer;F)V

    .line 569
    iget-object v0, p0, Lcom/anddoes/launcher/br;->a:Lcom/anddoes/launcher/DragLayer;

    iget-object v1, p0, Lcom/anddoes/launcher/br;->a:Lcom/anddoes/launcher/DragLayer;

    invoke-static {v1}, Lcom/anddoes/launcher/DragLayer;->a(Lcom/anddoes/launcher/DragLayer;)[I

    move-result-object v1

    aget v1, v1, v9

    iget-object v2, p0, Lcom/anddoes/launcher/br;->a:Lcom/anddoes/launcher/DragLayer;

    invoke-static {v2}, Lcom/anddoes/launcher/DragLayer;->a(Lcom/anddoes/launcher/DragLayer;)[I

    move-result-object v2

    aget v2, v2, v10

    .line 570
    iget-object v5, p0, Lcom/anddoes/launcher/br;->a:Lcom/anddoes/launcher/DragLayer;

    invoke-static {v5}, Lcom/anddoes/launcher/DragLayer;->a(Lcom/anddoes/launcher/DragLayer;)[I

    move-result-object v5

    aget v5, v5, v9

    add-int/2addr v3, v5

    iget-object v5, p0, Lcom/anddoes/launcher/br;->a:Lcom/anddoes/launcher/DragLayer;

    invoke-static {v5}, Lcom/anddoes/launcher/DragLayer;->a(Lcom/anddoes/launcher/DragLayer;)[I

    move-result-object v5

    aget v5, v5, v10

    add-int/2addr v4, v5

    .line 569
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/anddoes/launcher/DragLayer;->invalidate(IIII)V

    .line 571
    return-void

    .line 561
    :cond_c4
    iget-object v0, p0, Lcom/anddoes/launcher/br;->c:Landroid/view/animation/Interpolator;

    invoke-interface {v0, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    goto/16 :goto_46

    .line 563
    :cond_cc
    iget-object v2, p0, Lcom/anddoes/launcher/br;->d:Landroid/view/animation/Interpolator;

    invoke-interface {v2, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    goto/16 :goto_4b
.end method
