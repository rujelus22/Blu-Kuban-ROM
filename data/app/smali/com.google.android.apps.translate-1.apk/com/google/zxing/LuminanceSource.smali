.class public abstract Lcom/google/zxing/LuminanceSource;
.super Ljava/lang/Object;
.source "LuminanceSource.java"


# instance fields
.field private final height:I

.field private final width:I


# direct methods
.method protected constructor <init>(II)V
    .registers 3
    .parameter "width"
    .parameter "height"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Lcom/google/zxing/LuminanceSource;->width:I

    .line 35
    iput p2, p0, Lcom/google/zxing/LuminanceSource;->height:I

    .line 36
    return-void
.end method


# virtual methods
.method public crop(IIII)Lcom/google/zxing/LuminanceSource;
    .registers 7
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 94
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This luminance source does not support cropping."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getHeight()I
    .registers 2

    .prologue
    .line 73
    iget v0, p0, Lcom/google/zxing/LuminanceSource;->height:I

    return v0
.end method

.method public abstract getMatrix()[B
.end method

.method public abstract getRow(I[B)[B
.end method

.method public final getWidth()I
    .registers 2

    .prologue
    .line 66
    iget v0, p0, Lcom/google/zxing/LuminanceSource;->width:I

    return v0
.end method

.method public isCropSupported()Z
    .registers 2

    .prologue
    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public isRotateSupported()Z
    .registers 2

    .prologue
    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public rotateCounterClockwise()Lcom/google/zxing/LuminanceSource;
    .registers 3

    .prologue
    .line 110
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This luminance source does not support rotation."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
