.class final Lcom/anddoes/launcher/lm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/Workspace;


# direct methods
.method constructor <init>(Lcom/anddoes/launcher/Workspace;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anddoes/launcher/lm;->a:Lcom/anddoes/launcher/Workspace;

    .line 1609
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4
    .parameter

    .prologue
    .line 1612
    iget-object v1, p0, Lcom/anddoes/launcher/lm;->a:Lcom/anddoes/launcher/Workspace;

    .line 1613
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 1612
    invoke-virtual {v1, v0}, Lcom/anddoes/launcher/Workspace;->setBackgroundAlpha(F)V

    .line 1614
    return-void
.end method
