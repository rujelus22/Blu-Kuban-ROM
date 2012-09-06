.class final Lcom/anddoes/launcher/ji;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/TimeInterpolator;


# instance fields
.field private a:F


# direct methods
.method public constructor <init>(F)V
    .registers 2
    .parameter

    .prologue
    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    iput p1, p0, Lcom/anddoes/launcher/ji;->a:F

    .line 229
    return-void
.end method


# virtual methods
.method public final getInterpolation(F)F
    .registers 6
    .parameter

    .prologue
    const/high16 v3, 0x3f80

    .line 232
    iget v0, p0, Lcom/anddoes/launcher/ji;->a:F

    iget v1, p0, Lcom/anddoes/launcher/ji;->a:F

    add-float/2addr v1, p1

    div-float/2addr v0, v1

    sub-float v0, v3, v0

    .line 233
    iget v1, p0, Lcom/anddoes/launcher/ji;->a:F

    iget v2, p0, Lcom/anddoes/launcher/ji;->a:F

    add-float/2addr v2, v3

    div-float/2addr v1, v2

    sub-float v1, v3, v1

    .line 232
    div-float/2addr v0, v1

    return v0
.end method
