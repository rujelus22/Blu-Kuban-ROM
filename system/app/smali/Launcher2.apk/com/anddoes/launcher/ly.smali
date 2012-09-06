.class final Lcom/anddoes/launcher/ly;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/TimeInterpolator;


# instance fields
.field private final a:Landroid/view/animation/DecelerateInterpolator;

.field private final b:Lcom/anddoes/launcher/ji;


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    .line 2329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2330
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    .line 2331
    const/high16 v1, 0x3f40

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/anddoes/launcher/ly;->a:Landroid/view/animation/DecelerateInterpolator;

    .line 2332
    new-instance v0, Lcom/anddoes/launcher/ji;

    const v1, 0x3e051eb8

    invoke-direct {v0, v1}, Lcom/anddoes/launcher/ji;-><init>(F)V

    iput-object v0, p0, Lcom/anddoes/launcher/ly;->b:Lcom/anddoes/launcher/ji;

    .line 2329
    return-void
.end method


# virtual methods
.method public final getInterpolation(F)F
    .registers 4
    .parameter

    .prologue
    .line 2335
    iget-object v0, p0, Lcom/anddoes/launcher/ly;->a:Landroid/view/animation/DecelerateInterpolator;

    iget-object v1, p0, Lcom/anddoes/launcher/ly;->b:Lcom/anddoes/launcher/ji;

    .line 2336
    invoke-virtual {v1, p1}, Lcom/anddoes/launcher/ji;->getInterpolation(F)F

    move-result v1

    .line 2335
    invoke-virtual {v0, v1}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v0

    return v0
.end method
