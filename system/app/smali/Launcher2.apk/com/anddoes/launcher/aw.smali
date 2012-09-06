.class final Lcom/anddoes/launcher/aw;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/CellLayout;

.field private final synthetic b:Lcom/anddoes/launcher/ea;


# direct methods
.method constructor <init>(Lcom/anddoes/launcher/CellLayout;Lcom/anddoes/launcher/ea;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anddoes/launcher/aw;->a:Lcom/anddoes/launcher/CellLayout;

    iput-object p2, p0, Lcom/anddoes/launcher/aw;->b:Lcom/anddoes/launcher/ea;

    .line 258
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .parameter

    .prologue
    .line 261
    check-cast p1, Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_17

    .line 262
    iget-object v0, p0, Lcom/anddoes/launcher/aw;->b:Lcom/anddoes/launcher/ea;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/ea;->a(Ljava/lang/Object;)V

    .line 264
    :cond_17
    return-void
.end method
