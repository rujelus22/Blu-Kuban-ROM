.class final Lcom/anddoes/launcher/lx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/TimeInterpolator;


# instance fields
.field private final a:Lcom/anddoes/launcher/lu;

.field private final b:Landroid/view/animation/DecelerateInterpolator;


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    .line 2343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2344
    new-instance v0, Lcom/anddoes/launcher/lu;

    .line 2345
    invoke-direct {v0}, Lcom/anddoes/launcher/lu;-><init>()V

    iput-object v0, p0, Lcom/anddoes/launcher/lx;->a:Lcom/anddoes/launcher/lu;

    .line 2346
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    .line 2347
    const/high16 v1, 0x4040

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/anddoes/launcher/lx;->b:Landroid/view/animation/DecelerateInterpolator;

    .line 2343
    return-void
.end method


# virtual methods
.method public final getInterpolation(F)F
    .registers 4
    .parameter

    .prologue
    .line 2350
    iget-object v0, p0, Lcom/anddoes/launcher/lx;->b:Landroid/view/animation/DecelerateInterpolator;

    iget-object v1, p0, Lcom/anddoes/launcher/lx;->a:Lcom/anddoes/launcher/lu;

    .line 2351
    invoke-virtual {v1, p1}, Lcom/anddoes/launcher/lu;->getInterpolation(F)F

    move-result v1

    .line 2350
    invoke-virtual {v0, v1}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v0

    return v0
.end method
