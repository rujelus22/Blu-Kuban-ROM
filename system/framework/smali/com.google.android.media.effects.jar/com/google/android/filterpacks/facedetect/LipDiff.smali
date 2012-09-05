.class public Lcom/google/android/filterpacks/facedetect/LipDiff;
.super Landroid/filterfw/core/NativeBuffer;
.source "LipDiff.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 92
    const-string v0, "filterpack_facedetect"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/filterfw/core/NativeBuffer;-><init>()V

    .line 13
    return-void
.end method

.method public constructor <init>(I)V
    .registers 2
    .parameter "count"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Landroid/filterfw/core/NativeBuffer;-><init>(I)V

    .line 17
    return-void
.end method

.method private native nativeGetDirectionDiff(I)F
.end method

.method private native nativeGetFaceId(I)I
.end method

.method private native nativeGetHorizontalDiff(I)F
.end method

.method private native nativeGetTotalDiff(I)F
.end method

.method private native nativeGetVerticalDiff(I)F
.end method

.method private native nativeSetDirectionDiff(IF)Z
.end method

.method private native nativeSetFaceId(II)Z
.end method

.method private native nativeSetHorizontalDiff(IF)Z
.end method

.method private native nativeSetTotalDiff(IF)Z
.end method

.method private native nativeSetVerticalDiff(IF)Z
.end method


# virtual methods
.method public getDirectionDiff(I)F
    .registers 3
    .parameter "index"

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/google/android/filterpacks/facedetect/LipDiff;->assertReadable()V

    .line 33
    invoke-direct {p0, p1}, Lcom/google/android/filterpacks/facedetect/LipDiff;->nativeGetDirectionDiff(I)F

    move-result v0

    return v0
.end method

.method public native getElementSize()I
.end method

.method public getFaceId(I)I
    .registers 3
    .parameter "index"

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/google/android/filterpacks/facedetect/LipDiff;->assertReadable()V

    .line 23
    invoke-direct {p0, p1}, Lcom/google/android/filterpacks/facedetect/LipDiff;->nativeGetFaceId(I)I

    move-result v0

    return v0
.end method

.method public getHorizontalDiff(I)F
    .registers 3
    .parameter "index"

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/google/android/filterpacks/facedetect/LipDiff;->assertReadable()V

    .line 38
    invoke-direct {p0, p1}, Lcom/google/android/filterpacks/facedetect/LipDiff;->nativeGetHorizontalDiff(I)F

    move-result v0

    return v0
.end method

.method public getTotalDiff(I)F
    .registers 3
    .parameter "index"

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/google/android/filterpacks/facedetect/LipDiff;->assertReadable()V

    .line 28
    invoke-direct {p0, p1}, Lcom/google/android/filterpacks/facedetect/LipDiff;->nativeGetTotalDiff(I)F

    move-result v0

    return v0
.end method

.method public getVerticalDiff(I)F
    .registers 3
    .parameter "index"

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/google/android/filterpacks/facedetect/LipDiff;->assertReadable()V

    .line 43
    invoke-direct {p0, p1}, Lcom/google/android/filterpacks/facedetect/LipDiff;->nativeGetVerticalDiff(I)F

    move-result v0

    return v0
.end method

.method public setDirectionDiff(IF)V
    .registers 3
    .parameter "index"
    .parameter "value"

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/google/android/filterpacks/facedetect/LipDiff;->assertWritable()V

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/google/android/filterpacks/facedetect/LipDiff;->nativeSetDirectionDiff(IF)Z

    .line 59
    return-void
.end method

.method public setFaceId(II)V
    .registers 3
    .parameter "index"
    .parameter "value"

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/google/android/filterpacks/facedetect/LipDiff;->assertWritable()V

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/google/android/filterpacks/facedetect/LipDiff;->nativeSetFaceId(II)Z

    .line 49
    return-void
.end method

.method public setHorizontalDiff(IF)V
    .registers 3
    .parameter "index"
    .parameter "value"

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/google/android/filterpacks/facedetect/LipDiff;->assertWritable()V

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/google/android/filterpacks/facedetect/LipDiff;->nativeSetHorizontalDiff(IF)Z

    .line 64
    return-void
.end method

.method public setTotalDiff(IF)V
    .registers 3
    .parameter "index"
    .parameter "value"

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/google/android/filterpacks/facedetect/LipDiff;->assertWritable()V

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/google/android/filterpacks/facedetect/LipDiff;->nativeSetTotalDiff(IF)Z

    .line 54
    return-void
.end method

.method public setVerticalDiff(IF)V
    .registers 3
    .parameter "index"
    .parameter "value"

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/google/android/filterpacks/facedetect/LipDiff;->assertWritable()V

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/google/android/filterpacks/facedetect/LipDiff;->nativeSetVerticalDiff(IF)Z

    .line 69
    return-void
.end method
