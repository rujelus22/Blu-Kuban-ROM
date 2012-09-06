.class final Lcom/anddoes/launcher/er;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field a:Z

.field final synthetic b:Lcom/anddoes/launcher/Launcher;

.field private final synthetic c:Landroid/view/View;

.field private final synthetic d:Lcom/anddoes/launcher/Launcher;

.field private final synthetic e:Landroid/animation/ValueAnimator;

.field private final synthetic f:Z


# direct methods
.method constructor <init>(Lcom/anddoes/launcher/Launcher;Landroid/view/View;Lcom/anddoes/launcher/Launcher;Landroid/animation/ValueAnimator;Z)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anddoes/launcher/er;->b:Lcom/anddoes/launcher/Launcher;

    iput-object p2, p0, Lcom/anddoes/launcher/er;->c:Landroid/view/View;

    iput-object p3, p0, Lcom/anddoes/launcher/er;->d:Lcom/anddoes/launcher/Launcher;

    iput-object p4, p0, Lcom/anddoes/launcher/er;->e:Landroid/animation/ValueAnimator;

    iput-boolean p5, p0, Lcom/anddoes/launcher/er;->f:Z

    .line 3983
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 3984
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anddoes/launcher/er;->a:Z

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3
    .parameter

    .prologue
    .line 4022
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anddoes/launcher/er;->a:Z

    .line 4023
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x3f80

    .line 4001
    iget-object v0, p0, Lcom/anddoes/launcher/er;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 4002
    iget-object v0, p0, Lcom/anddoes/launcher/er;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 4003
    iget-object v0, p0, Lcom/anddoes/launcher/er;->c:Landroid/view/View;

    instance-of v0, v0, Lcom/anddoes/launcher/hz;

    if-eqz v0, :cond_1e

    .line 4004
    iget-object v0, p0, Lcom/anddoes/launcher/er;->c:Landroid/view/View;

    check-cast v0, Lcom/anddoes/launcher/hz;

    .line 4005
    iget-object v1, p0, Lcom/anddoes/launcher/er;->d:Lcom/anddoes/launcher/Launcher;

    iget-object v1, p0, Lcom/anddoes/launcher/er;->e:Landroid/animation/ValueAnimator;

    invoke-interface {v0, v1, v2}, Lcom/anddoes/launcher/hz;->b(Landroid/animation/Animator;Z)V

    .line 4008
    :cond_1e
    iget-boolean v0, p0, Lcom/anddoes/launcher/er;->f:Z

    if-nez v0, :cond_31

    .line 4010
    iget-object v0, p0, Lcom/anddoes/launcher/er;->b:Lcom/anddoes/launcher/Launcher;

    invoke-static {v0}, Lcom/anddoes/launcher/Launcher;->a(Lcom/anddoes/launcher/Launcher;)Lcom/anddoes/launcher/Workspace;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/Workspace;->d(Z)V

    .line 4011
    iget-object v0, p0, Lcom/anddoes/launcher/er;->b:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->H()V

    .line 4013
    :cond_31
    iget-boolean v0, p0, Lcom/anddoes/launcher/er;->a:Z

    if-nez v0, :cond_44

    .line 4014
    iget-object v0, p0, Lcom/anddoes/launcher/er;->b:Lcom/anddoes/launcher/Launcher;

    iget-object v0, v0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget v0, v0, Lcom/anddoes/launcher/preference/f;->z:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_44

    .line 4015
    iget-object v0, p0, Lcom/anddoes/launcher/er;->b:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0, v2}, Lcom/anddoes/launcher/Launcher;->a(Z)V

    .line 4018
    :cond_44
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 3990
    iget-object v0, p0, Lcom/anddoes/launcher/er;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 3991
    iget-object v0, p0, Lcom/anddoes/launcher/er;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 3992
    iget-object v0, p0, Lcom/anddoes/launcher/er;->c:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3993
    iget-object v0, p0, Lcom/anddoes/launcher/er;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 3994
    return-void
.end method
