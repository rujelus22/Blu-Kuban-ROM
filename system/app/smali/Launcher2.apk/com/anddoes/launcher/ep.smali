.class final Lcom/anddoes/launcher/ep;
.super Lcom/anddoes/launcher/gj;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/Launcher;

.field private final synthetic b:Landroid/view/View;

.field private final synthetic c:F


# direct methods
.method constructor <init>(Lcom/anddoes/launcher/Launcher;Landroid/view/View;F)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anddoes/launcher/ep;->a:Lcom/anddoes/launcher/Launcher;

    iput-object p2, p0, Lcom/anddoes/launcher/ep;->b:Landroid/view/View;

    iput p3, p0, Lcom/anddoes/launcher/ep;->c:F

    .line 3962
    invoke-direct {p0}, Lcom/anddoes/launcher/gj;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(FF)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/high16 v3, 0x3f80

    .line 3964
    iget-object v0, p0, Lcom/anddoes/launcher/ep;->b:Landroid/view/View;

    iget v1, p0, Lcom/anddoes/launcher/ep;->c:F

    mul-float/2addr v1, p1

    mul-float v2, p2, v3

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 3965
    iget-object v0, p0, Lcom/anddoes/launcher/ep;->b:Landroid/view/View;

    iget v1, p0, Lcom/anddoes/launcher/ep;->c:F

    mul-float/2addr v1, p1

    mul-float v2, p2, v3

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 3966
    return-void
.end method
