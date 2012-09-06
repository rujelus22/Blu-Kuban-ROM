.class final Lcom/anddoes/launcher/lr;
.super Lcom/anddoes/launcher/gj;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/Workspace;


# direct methods
.method constructor <init>(Lcom/anddoes/launcher/Workspace;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anddoes/launcher/lr;->a:Lcom/anddoes/launcher/Workspace;

    .line 2638
    invoke-direct {p0}, Lcom/anddoes/launcher/gj;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(FF)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 2640
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_6

    .line 2648
    :cond_5
    return-void

    .line 2644
    :cond_6
    const/4 v0, 0x0

    move v1, v0

    :goto_8
    iget-object v0, p0, Lcom/anddoes/launcher/lr;->a:Lcom/anddoes/launcher/Workspace;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Workspace;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 2645
    iget-object v0, p0, Lcom/anddoes/launcher/lr;->a:Lcom/anddoes/launcher/Workspace;

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/CellLayout;

    .line 2646
    iget-object v2, p0, Lcom/anddoes/launcher/lr;->a:Lcom/anddoes/launcher/Workspace;

    invoke-static {v2}, Lcom/anddoes/launcher/Workspace;->w(Lcom/anddoes/launcher/Workspace;)[F

    move-result-object v2

    aget v2, v2, v1

    mul-float/2addr v2, p1

    iget-object v3, p0, Lcom/anddoes/launcher/lr;->a:Lcom/anddoes/launcher/Workspace;

    invoke-static {v3}, Lcom/anddoes/launcher/Workspace;->x(Lcom/anddoes/launcher/Workspace;)[F

    move-result-object v3

    aget v3, v3, v1

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/anddoes/launcher/CellLayout;->setRotationY(F)V

    .line 2644
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8
.end method
