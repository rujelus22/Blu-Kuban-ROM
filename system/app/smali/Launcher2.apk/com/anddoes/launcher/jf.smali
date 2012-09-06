.class public final Lcom/anddoes/launcher/jf;
.super Lcom/anddoes/launcher/jg;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/PagedView;


# direct methods
.method protected constructor <init>(Lcom/anddoes/launcher/PagedView;)V
    .registers 2
    .parameter

    .prologue
    .line 2667
    iput-object p1, p0, Lcom/anddoes/launcher/jf;->a:Lcom/anddoes/launcher/PagedView;

    invoke-direct {p0, p1}, Lcom/anddoes/launcher/jg;-><init>(Lcom/anddoes/launcher/PagedView;)V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/view/View;F)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 2670
    const/high16 v0, 0x4148

    mul-float/2addr v0, p2

    .line 2671
    invoke-virtual {p1, v0}, Landroid/view/View;->setRotationY(F)V

    .line 2672
    const/high16 v0, 0x3f80

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sub-float/2addr v0, v1

    .line 2673
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 2674
    return-void
.end method
