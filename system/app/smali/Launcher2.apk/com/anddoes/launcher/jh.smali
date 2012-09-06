.class public final Lcom/anddoes/launcher/jh;
.super Lcom/anddoes/launcher/jg;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/PagedView;


# direct methods
.method protected constructor <init>(Lcom/anddoes/launcher/PagedView;)V
    .registers 2
    .parameter

    .prologue
    .line 2677
    iput-object p1, p0, Lcom/anddoes/launcher/jh;->a:Lcom/anddoes/launcher/PagedView;

    invoke-direct {p0, p1}, Lcom/anddoes/launcher/jg;-><init>(Lcom/anddoes/launcher/PagedView;)V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/view/View;F)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/high16 v3, 0x3f00

    .line 2680
    const/high16 v0, -0x3d90

    mul-float/2addr v0, p2

    .line 2681
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v3

    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotX(F)V

    .line 2682
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotY(F)V

    .line 2683
    invoke-virtual {p1, v0}, Landroid/view/View;->setRotation(F)V

    .line 2684
    return-void
.end method
