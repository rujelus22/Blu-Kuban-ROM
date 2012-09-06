.class final Lcom/anddoes/launcher/ew;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/Launcher;

.field private final synthetic b:Landroid/view/View;

.field private final synthetic c:Lcom/anddoes/launcher/Launcher;

.field private final synthetic d:Landroid/animation/ValueAnimator;


# direct methods
.method constructor <init>(Lcom/anddoes/launcher/Launcher;Landroid/view/View;Lcom/anddoes/launcher/Launcher;Landroid/animation/ValueAnimator;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anddoes/launcher/ew;->a:Lcom/anddoes/launcher/Launcher;

    iput-object p2, p0, Lcom/anddoes/launcher/ew;->b:Landroid/view/View;

    iput-object p3, p0, Lcom/anddoes/launcher/ew;->c:Lcom/anddoes/launcher/Launcher;

    iput-object p4, p0, Lcom/anddoes/launcher/ew;->d:Landroid/animation/ValueAnimator;

    .line 4209
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4212
    iget-object v0, p0, Lcom/anddoes/launcher/ew;->a:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0, v3}, Lcom/anddoes/launcher/Launcher;->a(Z)V

    .line 4213
    iget-object v0, p0, Lcom/anddoes/launcher/ew;->b:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4214
    iget-object v0, p0, Lcom/anddoes/launcher/ew;->b:Landroid/view/View;

    instance-of v0, v0, Lcom/anddoes/launcher/hz;

    if-eqz v0, :cond_1f

    .line 4215
    iget-object v0, p0, Lcom/anddoes/launcher/ew;->b:Landroid/view/View;

    check-cast v0, Lcom/anddoes/launcher/hz;

    .line 4216
    iget-object v1, p0, Lcom/anddoes/launcher/ew;->c:Lcom/anddoes/launcher/Launcher;

    iget-object v1, p0, Lcom/anddoes/launcher/ew;->d:Landroid/animation/ValueAnimator;

    invoke-interface {v0, v1, v3}, Lcom/anddoes/launcher/hz;->b(Landroid/animation/Animator;Z)V

    .line 4219
    :cond_1f
    iget-object v0, p0, Lcom/anddoes/launcher/ew;->a:Lcom/anddoes/launcher/Launcher;

    invoke-static {v0}, Lcom/anddoes/launcher/Launcher;->a(Lcom/anddoes/launcher/Launcher;)Lcom/anddoes/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/anddoes/launcher/Workspace;->d(Z)V

    .line 4220
    iget-object v0, p0, Lcom/anddoes/launcher/ew;->a:Lcom/anddoes/launcher/Launcher;

    invoke-static {v0}, Lcom/anddoes/launcher/Launcher;->a(Lcom/anddoes/launcher/Launcher;)Lcom/anddoes/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/anddoes/launcher/Workspace;->setVisibility(I)V

    .line 4221
    return-void
.end method
