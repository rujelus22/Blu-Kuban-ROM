.class final Lcom/anddoes/launcher/kf;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/SearchDropTargetBar;


# direct methods
.method constructor <init>(Lcom/anddoes/launcher/SearchDropTargetBar;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anddoes/launcher/kf;->a:Lcom/anddoes/launcher/SearchDropTargetBar;

    .line 124
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5
    .parameter

    .prologue
    .line 127
    iget-object v0, p0, Lcom/anddoes/launcher/kf;->a:Lcom/anddoes/launcher/SearchDropTargetBar;

    invoke-static {v0}, Lcom/anddoes/launcher/SearchDropTargetBar;->a(Lcom/anddoes/launcher/SearchDropTargetBar;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 128
    iget-object v0, p0, Lcom/anddoes/launcher/kf;->a:Lcom/anddoes/launcher/SearchDropTargetBar;

    invoke-static {v0}, Lcom/anddoes/launcher/SearchDropTargetBar;->a(Lcom/anddoes/launcher/SearchDropTargetBar;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 129
    return-void
.end method
