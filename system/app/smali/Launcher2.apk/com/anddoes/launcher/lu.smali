.class final Lcom/anddoes/launcher/lu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/TimeInterpolator;


# instance fields
.field private a:Lcom/anddoes/launcher/ji;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 2317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2318
    new-instance v0, Lcom/anddoes/launcher/ji;

    const v1, 0x3eb33333

    invoke-direct {v0, v1}, Lcom/anddoes/launcher/ji;-><init>(F)V

    iput-object v0, p0, Lcom/anddoes/launcher/lu;->a:Lcom/anddoes/launcher/ji;

    .line 2319
    return-void
.end method


# virtual methods
.method public final getInterpolation(F)F
    .registers 5
    .parameter

    .prologue
    const/high16 v2, 0x3f80

    .line 2322
    iget-object v0, p0, Lcom/anddoes/launcher/lu;->a:Lcom/anddoes/launcher/ji;

    sub-float v1, v2, p1

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/ji;->getInterpolation(F)F

    move-result v0

    sub-float v0, v2, v0

    return v0
.end method
