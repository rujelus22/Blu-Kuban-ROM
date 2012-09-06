.class public final Lcom/anddoes/launcher/it;
.super Lcom/anddoes/launcher/jg;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/PagedView;


# direct methods
.method protected constructor <init>(Lcom/anddoes/launcher/PagedView;)V
    .registers 2
    .parameter

    .prologue
    .line 2571
    iput-object p1, p0, Lcom/anddoes/launcher/it;->a:Lcom/anddoes/launcher/PagedView;

    invoke-direct {p0, p1}, Lcom/anddoes/launcher/jg;-><init>(Lcom/anddoes/launcher/PagedView;)V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/view/View;F)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/high16 v3, 0x3f80

    .line 2574
    iget-object v0, p0, Lcom/anddoes/launcher/it;->a:Lcom/anddoes/launcher/PagedView;

    iget-object v1, p0, Lcom/anddoes/launcher/it;->a:Lcom/anddoes/launcher/PagedView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/anddoes/launcher/PagedView;->b(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/PagedView;->c(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lcom/anddoes/launcher/it;->a:Lcom/anddoes/launcher/PagedView;

    iget v1, v1, Lcom/anddoes/launcher/PagedView;->C:I

    add-int/2addr v0, v1

    .line 2575
    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-ltz v1, :cond_27

    .line 2576
    sub-float v1, v3, p2

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 2580
    :goto_1e
    int-to-float v0, v0

    mul-float/2addr v0, p2

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 2581
    return-void

    .line 2578
    :cond_27
    add-float v1, v3, p2

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    goto :goto_1e
.end method
