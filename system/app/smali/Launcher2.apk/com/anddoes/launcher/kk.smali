.class final Lcom/anddoes/launcher/kk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private a:F


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .prologue
    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/anddoes/launcher/kk;->a:F

    .line 53
    return-void
.end method

.method public final a(I)V
    .registers 4
    .parameter

    .prologue
    const v0, 0x3fa66666

    .line 47
    if-lez p1, :cond_7

    int-to-float v1, p1

    div-float/2addr v0, v1

    :cond_7
    iput v0, p0, Lcom/anddoes/launcher/kk;->a:F

    .line 49
    return-void
.end method

.method public final getInterpolation(F)F
    .registers 6
    .parameter

    .prologue
    const/high16 v3, 0x3f80

    .line 58
    sub-float v0, p1, v3

    .line 59
    mul-float v1, v0, v0

    iget v2, p0, Lcom/anddoes/launcher/kk;->a:F

    add-float/2addr v2, v3

    mul-float/2addr v0, v2

    iget v2, p0, Lcom/anddoes/launcher/kk;->a:F

    add-float/2addr v0, v2

    mul-float/2addr v0, v1

    add-float/2addr v0, v3

    return v0
.end method
