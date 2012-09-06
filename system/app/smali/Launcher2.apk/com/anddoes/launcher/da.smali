.class final Lcom/anddoes/launcher/da;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/cx;


# direct methods
.method constructor <init>(Lcom/anddoes/launcher/cx;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anddoes/launcher/da;->a:Lcom/anddoes/launcher/cx;

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 7
    .parameter

    .prologue
    const/high16 v4, 0x3f80

    .line 266
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 267
    iget-object v1, p0, Lcom/anddoes/launcher/da;->a:Lcom/anddoes/launcher/cx;

    sub-float v2, v4, v0

    .line 268
    const v3, 0x3e99999a

    mul-float/2addr v2, v3

    add-float/2addr v2, v4

    .line 269
    sget v3, Lcom/anddoes/launcher/cx;->j:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    .line 267
    iput v2, v1, Lcom/anddoes/launcher/cx;->c:F

    .line 270
    iget-object v1, p0, Lcom/anddoes/launcher/da;->a:Lcom/anddoes/launcher/cx;

    sub-float v0, v4, v0

    .line 271
    const v2, 0x3e19999a

    mul-float/2addr v0, v2

    add-float/2addr v0, v4

    .line 272
    sget v2, Lcom/anddoes/launcher/cx;->j:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    .line 270
    iput v0, v1, Lcom/anddoes/launcher/cx;->d:F

    .line 273
    iget-object v0, p0, Lcom/anddoes/launcher/da;->a:Lcom/anddoes/launcher/cx;

    invoke-static {v0}, Lcom/anddoes/launcher/cx;->a(Lcom/anddoes/launcher/cx;)Lcom/anddoes/launcher/CellLayout;

    move-result-object v0

    if-eqz v0, :cond_3b

    .line 274
    iget-object v0, p0, Lcom/anddoes/launcher/da;->a:Lcom/anddoes/launcher/cx;

    invoke-static {v0}, Lcom/anddoes/launcher/cx;->a(Lcom/anddoes/launcher/cx;)Lcom/anddoes/launcher/CellLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anddoes/launcher/CellLayout;->invalidate()V

    .line 276
    :cond_3b
    return-void
.end method
