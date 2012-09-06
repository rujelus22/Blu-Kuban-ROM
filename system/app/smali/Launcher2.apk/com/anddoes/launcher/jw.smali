.class final Lcom/anddoes/launcher/jw;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/PreviewPane;

.field private final synthetic b:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/anddoes/launcher/PreviewPane;Landroid/view/View;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anddoes/launcher/jw;->a:Lcom/anddoes/launcher/PreviewPane;

    iput-object p2, p0, Lcom/anddoes/launcher/jw;->b:Landroid/view/View;

    .line 307
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2
    .parameter

    .prologue
    .line 327
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .parameter

    .prologue
    const/high16 v1, 0x3f80

    .line 319
    iget-object v0, p0, Lcom/anddoes/launcher/jw;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 320
    iget-object v0, p0, Lcom/anddoes/launcher/jw;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 321
    iget-object v0, p0, Lcom/anddoes/launcher/jw;->a:Lcom/anddoes/launcher/PreviewPane;

    invoke-static {v0}, Lcom/anddoes/launcher/PreviewPane;->b(Lcom/anddoes/launcher/PreviewPane;)V

    .line 322
    iget-object v0, p0, Lcom/anddoes/launcher/jw;->a:Lcom/anddoes/launcher/PreviewPane;

    invoke-static {v0}, Lcom/anddoes/launcher/PreviewPane;->c(Lcom/anddoes/launcher/PreviewPane;)V

    .line 323
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 311
    iget-object v0, p0, Lcom/anddoes/launcher/jw;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 312
    iget-object v0, p0, Lcom/anddoes/launcher/jw;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 313
    iget-object v0, p0, Lcom/anddoes/launcher/jw;->b:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 314
    iget-object v0, p0, Lcom/anddoes/launcher/jw;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 315
    return-void
.end method
