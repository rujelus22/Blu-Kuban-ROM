.class public Lcom/google/android/filterpacks/facedetect/RectFrame;
.super Landroid/filterfw/core/NativeBuffer;
.source "RectFrame.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 78
    const-string v0, "filterpack_facedetect"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 79
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

.method private native nativeGetHeight(I)F
.end method

.method private native nativeGetWidth(I)F
.end method

.method private native nativeGetX(I)F
.end method

.method private native nativeGetY(I)F
.end method

.method private native nativeSetHeight(IF)Z
.end method

.method private native nativeSetWidth(IF)Z
.end method

.method private native nativeSetX(IF)Z
.end method

.method private native nativeSetY(IF)Z
.end method


# virtual methods
.method public native getElementSize()I
.end method

.method public getHeight(I)F
    .registers 3
    .parameter "index"

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/google/android/filterpacks/facedetect/RectFrame;->assertReadable()V

    .line 38
    invoke-direct {p0, p1}, Lcom/google/android/filterpacks/facedetect/RectFrame;->nativeGetHeight(I)F

    move-result v0

    return v0
.end method

.method public getWidth(I)F
    .registers 3
    .parameter "index"

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/google/android/filterpacks/facedetect/RectFrame;->assertReadable()V

    .line 33
    invoke-direct {p0, p1}, Lcom/google/android/filterpacks/facedetect/RectFrame;->nativeGetWidth(I)F

    move-result v0

    return v0
.end method

.method public getX(I)F
    .registers 3
    .parameter "index"

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/google/android/filterpacks/facedetect/RectFrame;->assertReadable()V

    .line 23
    invoke-direct {p0, p1}, Lcom/google/android/filterpacks/facedetect/RectFrame;->nativeGetX(I)F

    move-result v0

    return v0
.end method

.method public getY(I)F
    .registers 3
    .parameter "index"

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/google/android/filterpacks/facedetect/RectFrame;->assertReadable()V

    .line 28
    invoke-direct {p0, p1}, Lcom/google/android/filterpacks/facedetect/RectFrame;->nativeGetY(I)F

    move-result v0

    return v0
.end method

.method public setHeight(IF)V
    .registers 3
    .parameter "index"
    .parameter "value"

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/google/android/filterpacks/facedetect/RectFrame;->assertWritable()V

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/google/android/filterpacks/facedetect/RectFrame;->nativeSetHeight(IF)Z

    .line 59
    return-void
.end method

.method public setWidth(IF)V
    .registers 3
    .parameter "index"
    .parameter "value"

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/google/android/filterpacks/facedetect/RectFrame;->assertWritable()V

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/google/android/filterpacks/facedetect/RectFrame;->nativeSetWidth(IF)Z

    .line 54
    return-void
.end method

.method public setX(IF)V
    .registers 3
    .parameter "index"
    .parameter "value"

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/google/android/filterpacks/facedetect/RectFrame;->assertWritable()V

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/google/android/filterpacks/facedetect/RectFrame;->nativeSetX(IF)Z

    .line 44
    return-void
.end method

.method public setY(IF)V
    .registers 3
    .parameter "index"
    .parameter "value"

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/google/android/filterpacks/facedetect/RectFrame;->assertWritable()V

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/google/android/filterpacks/facedetect/RectFrame;->nativeSetY(IF)Z

    .line 49
    return-void
.end method
