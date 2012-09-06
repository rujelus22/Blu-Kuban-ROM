.class final Lcom/anddoes/launcher/lp;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/Workspace;

.field private final synthetic b:Z

.field private final synthetic c:Z


# direct methods
.method constructor <init>(Lcom/anddoes/launcher/Workspace;ZZ)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anddoes/launcher/lp;->a:Lcom/anddoes/launcher/Workspace;

    iput-boolean p2, p0, Lcom/anddoes/launcher/lp;->b:Z

    iput-boolean p3, p0, Lcom/anddoes/launcher/lp;->c:Z

    .line 2591
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5
    .parameter

    .prologue
    .line 2601
    iget-object v0, p0, Lcom/anddoes/launcher/lp;->a:Lcom/anddoes/launcher/Workspace;

    iget-boolean v0, v0, Lcom/anddoes/launcher/Workspace;->V:Z

    if-nez v0, :cond_18

    iget-boolean v0, p0, Lcom/anddoes/launcher/lp;->b:Z

    if-eqz v0, :cond_18

    .line 2602
    iget-boolean v0, p0, Lcom/anddoes/launcher/lp;->c:Z

    if-eqz v0, :cond_18

    .line 2603
    const/4 v0, 0x0

    move v1, v0

    :goto_10
    iget-object v0, p0, Lcom/anddoes/launcher/lp;->a:Lcom/anddoes/launcher/Workspace;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Workspace;->getChildCount()I

    move-result v0

    if-lt v1, v0, :cond_19

    .line 2608
    :cond_18
    return-void

    .line 2604
    :cond_19
    iget-object v0, p0, Lcom/anddoes/launcher/lp;->a:Lcom/anddoes/launcher/Workspace;

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/CellLayout;

    .line 2605
    const/high16 v2, 0x3f80

    invoke-virtual {v0, v2}, Lcom/anddoes/launcher/CellLayout;->setAlpha(F)V

    .line 2603
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_10
.end method
