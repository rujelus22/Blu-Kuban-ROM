.class final Lcom/anddoes/launcher/av;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/CellLayout;

.field private final synthetic b:Lcom/anddoes/launcher/ea;

.field private final synthetic c:I


# direct methods
.method constructor <init>(Lcom/anddoes/launcher/CellLayout;Lcom/anddoes/launcher/ea;I)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anddoes/launcher/av;->a:Lcom/anddoes/launcher/CellLayout;

    iput-object p2, p0, Lcom/anddoes/launcher/av;->b:Lcom/anddoes/launcher/ea;

    iput p3, p0, Lcom/anddoes/launcher/av;->c:I

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 7
    .parameter

    .prologue
    .line 235
    iget-object v0, p0, Lcom/anddoes/launcher/av;->b:Lcom/anddoes/launcher/ea;

    invoke-virtual {v0}, Lcom/anddoes/launcher/ea;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 239
    if-nez v0, :cond_e

    .line 246
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 254
    :goto_d
    return-void

    .line 248
    :cond_e
    iget-object v1, p0, Lcom/anddoes/launcher/av;->a:Lcom/anddoes/launcher/CellLayout;

    invoke-static {v1}, Lcom/anddoes/launcher/CellLayout;->a(Lcom/anddoes/launcher/CellLayout;)[F

    move-result-object v2

    iget v3, p0, Lcom/anddoes/launcher/av;->c:I

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    aput v1, v2, v3

    .line 249
    iget-object v1, p0, Lcom/anddoes/launcher/av;->a:Lcom/anddoes/launcher/CellLayout;

    invoke-static {v1}, Lcom/anddoes/launcher/CellLayout;->b(Lcom/anddoes/launcher/CellLayout;)[Landroid/graphics/Point;

    move-result-object v1

    iget v2, p0, Lcom/anddoes/launcher/av;->c:I

    aget-object v1, v1, v2

    iget v1, v1, Landroid/graphics/Point;->x:I

    .line 250
    iget-object v2, p0, Lcom/anddoes/launcher/av;->a:Lcom/anddoes/launcher/CellLayout;

    invoke-static {v2}, Lcom/anddoes/launcher/CellLayout;->b(Lcom/anddoes/launcher/CellLayout;)[Landroid/graphics/Point;

    move-result-object v2

    iget v3, p0, Lcom/anddoes/launcher/av;->c:I

    aget-object v2, v2, v3

    iget v2, v2, Landroid/graphics/Point;->y:I

    .line 251
    iget-object v3, p0, Lcom/anddoes/launcher/av;->a:Lcom/anddoes/launcher/CellLayout;

    .line 252
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    add-int/2addr v0, v2

    .line 251
    invoke-virtual {v3, v1, v2, v4, v0}, Lcom/anddoes/launcher/CellLayout;->invalidate(IIII)V

    goto :goto_d
.end method
