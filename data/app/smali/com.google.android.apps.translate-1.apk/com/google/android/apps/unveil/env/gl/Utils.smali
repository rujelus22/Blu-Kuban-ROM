.class public Lcom/google/android/apps/unveil/env/gl/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/unveil/env/gl/Utils$Color;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method public static allocateFloatBuffer(I)Ljava/nio/FloatBuffer;
    .registers 3
    .parameter "length"

    .prologue
    .line 37
    mul-int/lit8 v0, p0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static generateFloatBuffer([F)Ljava/nio/FloatBuffer;
    .registers 4
    .parameter "src"

    .prologue
    .line 20
    array-length v2, p0

    invoke-static {v2}, Lcom/google/android/apps/unveil/env/gl/Utils;->allocateFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 21
    .local v0, dst:Ljava/nio/FloatBuffer;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_6
    array-length v2, p0

    if-ge v1, v2, :cond_11

    .line 22
    aget v2, p0, v1

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 21
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 26
    :cond_11
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 28
    return-object v0
.end method
