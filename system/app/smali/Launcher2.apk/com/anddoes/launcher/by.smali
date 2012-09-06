.class final Lcom/anddoes/launcher/by;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/bx;

.field private final synthetic b:I

.field private final synthetic c:I


# direct methods
.method constructor <init>(Lcom/anddoes/launcher/bx;II)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anddoes/launcher/by;->a:Lcom/anddoes/launcher/bx;

    iput p2, p0, Lcom/anddoes/launcher/by;->b:I

    iput p3, p0, Lcom/anddoes/launcher/by;->c:I

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 7
    .parameter

    .prologue
    .line 83
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 85
    iget v1, p0, Lcom/anddoes/launcher/by;->b:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    iget-object v2, p0, Lcom/anddoes/launcher/by;->a:Lcom/anddoes/launcher/bx;

    invoke-static {v2}, Lcom/anddoes/launcher/bx;->a(Lcom/anddoes/launcher/bx;)F

    move-result v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 86
    iget v2, p0, Lcom/anddoes/launcher/by;->c:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    iget-object v2, p0, Lcom/anddoes/launcher/by;->a:Lcom/anddoes/launcher/bx;

    invoke-static {v2}, Lcom/anddoes/launcher/bx;->b(Lcom/anddoes/launcher/bx;)F

    move-result v2

    sub-float/2addr v0, v2

    float-to-int v0, v0

    .line 88
    iget-object v2, p0, Lcom/anddoes/launcher/by;->a:Lcom/anddoes/launcher/bx;

    invoke-static {v2}, Lcom/anddoes/launcher/bx;->a(Lcom/anddoes/launcher/bx;)F

    move-result v3

    int-to-float v4, v1

    add-float/2addr v3, v4

    invoke-static {v2, v3}, Lcom/anddoes/launcher/bx;->a(Lcom/anddoes/launcher/bx;F)V

    .line 89
    iget-object v2, p0, Lcom/anddoes/launcher/by;->a:Lcom/anddoes/launcher/bx;

    invoke-static {v2}, Lcom/anddoes/launcher/bx;->b(Lcom/anddoes/launcher/bx;)F

    move-result v3

    int-to-float v4, v0

    add-float/2addr v3, v4

    invoke-static {v2, v3}, Lcom/anddoes/launcher/bx;->b(Lcom/anddoes/launcher/bx;F)V

    .line 91
    iget-object v2, p0, Lcom/anddoes/launcher/by;->a:Lcom/anddoes/launcher/bx;

    invoke-virtual {v2}, Lcom/anddoes/launcher/bx;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_44

    .line 92
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 99
    :goto_43
    return-void

    .line 94
    :cond_44
    iget-object v2, p0, Lcom/anddoes/launcher/by;->a:Lcom/anddoes/launcher/bx;

    invoke-static {v2}, Lcom/anddoes/launcher/bx;->c(Lcom/anddoes/launcher/bx;)Lcom/anddoes/launcher/DragLayer$LayoutParams;

    move-result-object v2

    .line 95
    iget v3, v2, Lcom/anddoes/launcher/DragLayer$LayoutParams;->a:I

    add-int/2addr v1, v3

    iput v1, v2, Lcom/anddoes/launcher/DragLayer$LayoutParams;->a:I

    .line 96
    iget v1, v2, Lcom/anddoes/launcher/DragLayer$LayoutParams;->b:I

    add-int/2addr v0, v1

    iput v0, v2, Lcom/anddoes/launcher/DragLayer$LayoutParams;->b:I

    .line 97
    iget-object v0, p0, Lcom/anddoes/launcher/by;->a:Lcom/anddoes/launcher/bx;

    invoke-static {v0}, Lcom/anddoes/launcher/bx;->d(Lcom/anddoes/launcher/bx;)Lcom/anddoes/launcher/DragLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anddoes/launcher/DragLayer;->requestLayout()V

    goto :goto_43
.end method
