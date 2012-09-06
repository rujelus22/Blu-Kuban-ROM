.class final Lcom/anddoes/launcher/jx;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/PreviewPane;


# direct methods
.method constructor <init>(Lcom/anddoes/launcher/PreviewPane;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anddoes/launcher/jx;->a:Lcom/anddoes/launcher/PreviewPane;

    .line 345
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2
    .parameter

    .prologue
    .line 358
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3
    .parameter

    .prologue
    .line 352
    iget-object v0, p0, Lcom/anddoes/launcher/jx;->a:Lcom/anddoes/launcher/PreviewPane;

    invoke-static {v0}, Lcom/anddoes/launcher/PreviewPane;->b(Lcom/anddoes/launcher/PreviewPane;)V

    .line 353
    iget-object v0, p0, Lcom/anddoes/launcher/jx;->a:Lcom/anddoes/launcher/PreviewPane;

    invoke-static {v0}, Lcom/anddoes/launcher/PreviewPane;->c(Lcom/anddoes/launcher/PreviewPane;)V

    .line 354
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .registers 2
    .parameter

    .prologue
    .line 348
    return-void
.end method
