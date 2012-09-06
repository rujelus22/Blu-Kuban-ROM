.class final Lcom/anddoes/launcher/fc;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field a:Z

.field final synthetic b:Lcom/anddoes/launcher/Launcher;


# direct methods
.method constructor <init>(Lcom/anddoes/launcher/Launcher;)V
    .registers 3
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anddoes/launcher/fc;->b:Lcom/anddoes/launcher/Launcher;

    .line 4513
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 4514
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anddoes/launcher/fc;->a:Z

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3
    .parameter

    .prologue
    .line 4529
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anddoes/launcher/fc;->a:Z

    .line 4530
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .parameter

    .prologue
    .line 4522
    iget-boolean v0, p0, Lcom/anddoes/launcher/fc;->a:Z

    if-nez v0, :cond_e

    .line 4523
    iget-object v0, p0, Lcom/anddoes/launcher/fc;->b:Lcom/anddoes/launcher/Launcher;

    invoke-static {v0}, Lcom/anddoes/launcher/Launcher;->s(Lcom/anddoes/launcher/Launcher;)Lcom/anddoes/launcher/Hotseat;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/Hotseat;->setVisibility(I)V

    .line 4525
    :cond_e
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .registers 2
    .parameter

    .prologue
    .line 4518
    return-void
.end method
