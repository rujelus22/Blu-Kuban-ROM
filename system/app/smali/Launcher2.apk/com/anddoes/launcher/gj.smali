.class abstract Lcom/anddoes/launcher/gj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract a(FF)V
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4
    .parameter

    .prologue
    .line 24
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 25
    const/high16 v1, 0x3f80

    sub-float/2addr v1, v0

    .line 26
    invoke-virtual {p0, v1, v0}, Lcom/anddoes/launcher/gj;->a(FF)V

    .line 27
    return-void
.end method
