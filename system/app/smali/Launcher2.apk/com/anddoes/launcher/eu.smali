.class final Lcom/anddoes/launcher/eu;
.super Lcom/anddoes/launcher/gj;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/Launcher;

.field private final synthetic b:Landroid/view/View;

.field private final synthetic c:F

.field private final synthetic d:F

.field private final synthetic e:F


# direct methods
.method constructor <init>(Lcom/anddoes/launcher/Launcher;Landroid/view/View;FFF)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anddoes/launcher/eu;->a:Lcom/anddoes/launcher/Launcher;

    iput-object p2, p0, Lcom/anddoes/launcher/eu;->b:Landroid/view/View;

    iput p3, p0, Lcom/anddoes/launcher/eu;->c:F

    iput p4, p0, Lcom/anddoes/launcher/eu;->d:F

    iput p5, p0, Lcom/anddoes/launcher/eu;->e:F

    .line 4190
    invoke-direct {p0}, Lcom/anddoes/launcher/gj;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(FF)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 4192
    iget-object v0, p0, Lcom/anddoes/launcher/eu;->b:Landroid/view/View;

    iget v1, p0, Lcom/anddoes/launcher/eu;->c:F

    mul-float/2addr v1, p1

    iget v2, p0, Lcom/anddoes/launcher/eu;->d:F

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 4193
    iget-object v0, p0, Lcom/anddoes/launcher/eu;->b:Landroid/view/View;

    iget v1, p0, Lcom/anddoes/launcher/eu;->e:F

    mul-float/2addr v1, p1

    iget v2, p0, Lcom/anddoes/launcher/eu;->d:F

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 4194
    return-void
.end method
