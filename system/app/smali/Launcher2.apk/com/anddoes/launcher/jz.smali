.class final Lcom/anddoes/launcher/jz;
.super Lcom/anddoes/launcher/gj;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/PreviewPane;

.field private final synthetic b:Landroid/view/View;

.field private final synthetic c:F

.field private final synthetic d:F


# direct methods
.method constructor <init>(Lcom/anddoes/launcher/PreviewPane;Landroid/view/View;FF)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anddoes/launcher/jz;->a:Lcom/anddoes/launcher/PreviewPane;

    iput-object p2, p0, Lcom/anddoes/launcher/jz;->b:Landroid/view/View;

    iput p3, p0, Lcom/anddoes/launcher/jz;->c:F

    iput p4, p0, Lcom/anddoes/launcher/jz;->d:F

    .line 418
    invoke-direct {p0}, Lcom/anddoes/launcher/gj;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(FF)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/high16 v3, 0x4040

    .line 420
    iget-object v0, p0, Lcom/anddoes/launcher/jz;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 421
    iget-object v0, p0, Lcom/anddoes/launcher/jz;->b:Landroid/view/View;

    iget v1, p0, Lcom/anddoes/launcher/jz;->c:F

    mul-float/2addr v1, p1

    mul-float v2, p2, v3

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 422
    iget-object v0, p0, Lcom/anddoes/launcher/jz;->b:Landroid/view/View;

    iget v1, p0, Lcom/anddoes/launcher/jz;->d:F

    mul-float/2addr v1, p1

    mul-float v2, p2, v3

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 423
    return-void
.end method
