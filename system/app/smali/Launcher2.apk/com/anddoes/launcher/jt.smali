.class final Lcom/anddoes/launcher/jt;
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
    iput-object p1, p0, Lcom/anddoes/launcher/jt;->b:Lcom/anddoes/launcher/PreviewPane;

    iput-object p2, p0, Lcom/anddoes/launcher/jt;->c:Landroid/view/View;

    .line 489
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 490
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anddoes/launcher/jt;->a:Z

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3
    .parameter

    .prologue
    .line 508
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anddoes/launcher/jt;->a:Z

    .line 509
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .parameter

    .prologue
    .line 497
    iget-boolean v0, p0, Lcom/anddoes/launcher/jt;->a:Z

    if-nez v0, :cond_1c

    .line 498
    iget-object v0, p0, Lcom/anddoes/launcher/jt;->c:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 499
    iget-object v0, p0, Lcom/anddoes/launcher/jt;->b:Lcom/anddoes/launcher/PreviewPane;

    invoke-static {v0}, Lcom/anddoes/launcher/PreviewPane;->b(Lcom/anddoes/launcher/PreviewPane;)V

    .line 500
    iget-object v0, p0, Lcom/anddoes/launcher/jt;->b:Lcom/anddoes/launcher/PreviewPane;

    invoke-static {v0}, Lcom/anddoes/launcher/PreviewPane;->d(Lcom/anddoes/launcher/PreviewPane;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 501
    iget-object v0, p0, Lcom/anddoes/launcher/jt;->b:Lcom/anddoes/launcher/PreviewPane;

    invoke-static {v0}, Lcom/anddoes/launcher/PreviewPane;->e(Lcom/anddoes/launcher/PreviewPane;)V

    .line 504
    :cond_1c
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .registers 2
    .parameter

    .prologue
    .line 493
    return-void
.end method
