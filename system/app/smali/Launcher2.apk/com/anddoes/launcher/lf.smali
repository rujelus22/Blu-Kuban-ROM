.class final Lcom/anddoes/launcher/lf;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/Workspace;


# direct methods
.method constructor <init>(Lcom/anddoes/launcher/Workspace;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anddoes/launcher/lf;->a:Lcom/anddoes/launcher/Workspace;

    .line 550
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 558
    iget-object v0, p0, Lcom/anddoes/launcher/lf;->a:Lcom/anddoes/launcher/Workspace;

    invoke-static {v0, v1}, Lcom/anddoes/launcher/Workspace;->a(Lcom/anddoes/launcher/Workspace;Z)V

    .line 559
    iget-object v0, p0, Lcom/anddoes/launcher/lf;->a:Lcom/anddoes/launcher/Workspace;

    iget-object v0, v0, Lcom/anddoes/launcher/Workspace;->az:Lcom/anddoes/launcher/lw;

    iput-boolean v1, v0, Lcom/anddoes/launcher/lw;->g:Z

    .line 560
    iget-object v0, p0, Lcom/anddoes/launcher/lf;->a:Lcom/anddoes/launcher/Workspace;

    invoke-static {v0}, Lcom/anddoes/launcher/Workspace;->e(Lcom/anddoes/launcher/Workspace;)V

    .line 561
    iget-object v0, p0, Lcom/anddoes/launcher/lf;->a:Lcom/anddoes/launcher/Workspace;

    invoke-static {v0}, Lcom/anddoes/launcher/Workspace;->f(Lcom/anddoes/launcher/Workspace;)V

    .line 562
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .registers 4
    .parameter

    .prologue
    .line 553
    iget-object v0, p0, Lcom/anddoes/launcher/lf;->a:Lcom/anddoes/launcher/Workspace;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/anddoes/launcher/Workspace;->a(Lcom/anddoes/launcher/Workspace;Z)V

    .line 554
    return-void
.end method
