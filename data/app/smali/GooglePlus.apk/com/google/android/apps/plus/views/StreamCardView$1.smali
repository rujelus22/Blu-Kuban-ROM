.class final Lcom/google/android/apps/plus/views/StreamCardView$1;
.super Ljava/lang/Object;
.source "StreamCardView.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/views/StreamCardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 8
    .parameter "input"

    .prologue
    .line 59
    const-wide v2, 0x400921fb54442d18L

    const/high16 v4, 0x4080

    mul-float/2addr v4, p1

    const/high16 v5, 0x3f80

    sub-float/2addr v4, v5

    float-to-double v4, v4

    mul-double v0, v2, v4

    .line 60
    .local v0, val:D
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    div-double/2addr v2, v0

    double-to-float v2, v2

    return v2
.end method
