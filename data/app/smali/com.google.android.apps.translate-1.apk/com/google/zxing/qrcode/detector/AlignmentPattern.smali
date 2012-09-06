.class public final Lcom/google/zxing/qrcode/detector/AlignmentPattern;
.super Lcom/google/zxing/ResultPoint;
.source "AlignmentPattern.java"


# instance fields
.field private final estimatedModuleSize:F


# direct methods
.method constructor <init>(FFF)V
    .registers 4
    .parameter "posX"
    .parameter "posY"
    .parameter "estimatedModuleSize"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 33
    iput p3, p0, Lcom/google/zxing/qrcode/detector/AlignmentPattern;->estimatedModuleSize:F

    .line 34
    return-void
.end method


# virtual methods
.method aboutEquals(FFF)Z
    .registers 8
    .parameter "moduleSize"
    .parameter "i"
    .parameter "j"

    .prologue
    const/4 v1, 0x0

    const/high16 v3, 0x3f80

    .line 41
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/detector/AlignmentPattern;->getY()F

    move-result v2

    sub-float v2, p2, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, p1

    if-gtz v2, :cond_34

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/detector/AlignmentPattern;->getX()F

    move-result v2

    sub-float v2, p3, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, p1

    if-gtz v2, :cond_34

    .line 42
    iget v2, p0, Lcom/google/zxing/qrcode/detector/AlignmentPattern;->estimatedModuleSize:F

    sub-float v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 43
    .local v0, moduleSizeDiff:F
    cmpg-float v2, v0, v3

    if-lez v2, :cond_33

    iget v2, p0, Lcom/google/zxing/qrcode/detector/AlignmentPattern;->estimatedModuleSize:F

    div-float v2, v0, v2

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_34

    :cond_33
    const/4 v1, 0x1

    .line 45
    .end local v0           #moduleSizeDiff:F
    :cond_34
    return v1
.end method
