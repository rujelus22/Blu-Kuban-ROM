.class final Lcom/anddoes/launcher/ju;
.super Lcom/anddoes/launcher/gj;
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
    iput-object p1, p0, Lcom/anddoes/launcher/ju;->a:Lcom/anddoes/launcher/PreviewPane;

    iput-object p2, p0, Lcom/anddoes/launcher/ju;->b:Landroid/view/View;

    .line 285
    invoke-direct {p0}, Lcom/anddoes/launcher/gj;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(FF)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/high16 v4, 0x4040

    const/high16 v3, 0x3f80

    .line 287
    iget-object v0, p0, Lcom/anddoes/launcher/ju;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 288
    iget-object v0, p0, Lcom/anddoes/launcher/ju;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 289
    iget-object v0, p0, Lcom/anddoes/launcher/ju;->b:Landroid/view/View;

    mul-float v1, p1, v4

    mul-float v2, p2, v3

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 290
    iget-object v0, p0, Lcom/anddoes/launcher/ju;->b:Landroid/view/View;

    mul-float v1, p1, v4

    mul-float v2, p2, v3

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 291
    return-void
.end method
