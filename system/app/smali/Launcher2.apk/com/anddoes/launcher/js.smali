.class final Lcom/anddoes/launcher/js;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field a:Z

.field final synthetic b:Lcom/anddoes/launcher/PreviewPane;

.field private final synthetic c:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/anddoes/launcher/PreviewPane;Landroid/view/View;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anddoes/launcher/js;->b:Lcom/anddoes/launcher/PreviewPane;

    iput-object p2, p0, Lcom/anddoes/launcher/js;->c:Landroid/view/View;

    .line 461
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 462
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anddoes/launcher/js;->a:Z

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3
    .parameter

    .prologue
    .line 480
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anddoes/launcher/js;->a:Z

    .line 481
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .parameter

    .prologue
    .line 469
    iget-boolean v0, p0, Lcom/anddoes/launcher/js;->a:Z

    if-nez v0, :cond_1c

    .line 470
    iget-object v0, p0, Lcom/anddoes/launcher/js;->c:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 471
    iget-object v0, p0, Lcom/anddoes/launcher/js;->b:Lcom/anddoes/launcher/PreviewPane;

    invoke-static {v0}, Lcom/anddoes/launcher/PreviewPane;->b(Lcom/anddoes/launcher/PreviewPane;)V

    .line 472
    iget-object v0, p0, Lcom/anddoes/launcher/js;->b:Lcom/anddoes/launcher/PreviewPane;

    invoke-static {v0}, Lcom/anddoes/launcher/PreviewPane;->d(Lcom/anddoes/launcher/PreviewPane;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 473
    iget-object v0, p0, Lcom/anddoes/launcher/js;->b:Lcom/anddoes/launcher/PreviewPane;

    invoke-static {v0}, Lcom/anddoes/launcher/PreviewPane;->e(Lcom/anddoes/launcher/PreviewPane;)V

    .line 476
    :cond_1c
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .registers 2
    .parameter

    .prologue
    .line 465
    return-void
.end method
