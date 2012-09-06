.class public final Lcom/anddoes/launcher/iu;
.super Lcom/anddoes/launcher/jg;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/PagedView;


# direct methods
.method protected constructor <init>(Lcom/anddoes/launcher/PagedView;)V
    .registers 2
    .parameter

    .prologue
    .line 2584
    iput-object p1, p0, Lcom/anddoes/launcher/iu;->a:Lcom/anddoes/launcher/PagedView;

    invoke-direct {p0, p1}, Lcom/anddoes/launcher/jg;-><init>(Lcom/anddoes/launcher/PagedView;)V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/view/View;F)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 2587
    iget-object v0, p0, Lcom/anddoes/launcher/iu;->a:Lcom/anddoes/launcher/PagedView;

    iget-object v1, p0, Lcom/anddoes/launcher/iu;->a:Lcom/anddoes/launcher/PagedView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/anddoes/launcher/PagedView;->b(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/PagedView;->c(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lcom/anddoes/launcher/iu;->a:Lcom/anddoes/launcher/PagedView;

    iget v1, v1, Lcom/anddoes/launcher/PagedView;->C:I

    add-int/2addr v0, v1

    .line 2588
    int-to-float v0, v0

    mul-float/2addr v0, p2

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 2589
    const/high16 v0, -0x3d4c

    mul-float/2addr v0, p2

    .line 2590
    invoke-virtual {p1, v0}, Landroid/view/View;->setRotationY(F)V

    .line 2591
    const/high16 v1, -0x3dcc

    cmpg-float v1, v0, v1

    if-lez v1, :cond_29

    const/high16 v1, 0x4234

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2d

    .line 2592
    :cond_29
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2594
    :cond_2d
    return-void
.end method
