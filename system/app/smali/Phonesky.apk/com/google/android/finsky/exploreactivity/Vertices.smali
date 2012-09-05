.class public Lcom/google/android/finsky/exploreactivity/Vertices;
.super Ljava/lang/Object;
.source "Vertices.java"


# instance fields
.field private final mGl:Ljavax/microedition/khronos/opengles/GL10;

.field private final mHasColor:Z

.field private final mHasTexCoords:Z

.field private mIndices:Ljava/nio/ShortBuffer;

.field private final mTmpBuffer:[I

.field private final mVertexSize:I

.field private final mVertices:Ljava/nio/IntBuffer;


# direct methods
.method public constructor <init>(Ljavax/microedition/khronos/opengles/GL10;IIZZ)V
    .registers 9
    .parameter "gl"
    .parameter "maxVertices"
    .parameter "maxIndices"
    .parameter "hasColor"
    .parameter "hasTexCoords"

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/google/android/finsky/exploreactivity/Vertices;->mGl:Ljavax/microedition/khronos/opengles/GL10;

    .line 53
    iput-boolean p4, p0, Lcom/google/android/finsky/exploreactivity/Vertices;->mHasColor:Z

    .line 54
    iput-boolean p5, p0, Lcom/google/android/finsky/exploreactivity/Vertices;->mHasTexCoords:Z

    .line 58
    if-eqz p4, :cond_4c

    const/4 v2, 0x4

    :goto_d
    add-int/lit8 v2, v2, 0x2

    if-eqz p5, :cond_12

    const/4 v1, 0x2

    :cond_12
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/android/finsky/exploreactivity/Vertices;->mVertexSize:I

    .line 61
    iget v1, p0, Lcom/google/android/finsky/exploreactivity/Vertices;->mVertexSize:I

    mul-int/2addr v1, p2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 62
    .local v0, buffer:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 63
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/exploreactivity/Vertices;->mVertices:Ljava/nio/IntBuffer;

    .line 65
    iget v1, p0, Lcom/google/android/finsky/exploreactivity/Vertices;->mVertexSize:I

    mul-int/2addr v1, p2

    div-int/lit8 v1, v1, 0x4

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/google/android/finsky/exploreactivity/Vertices;->mTmpBuffer:[I

    .line 68
    if-lez p3, :cond_4e

    .line 70
    mul-int/lit8 v1, p3, 0x10

    div-int/lit8 v1, v1, 0x8

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 71
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 72
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/exploreactivity/Vertices;->mIndices:Ljava/nio/ShortBuffer;

    .line 76
    :goto_4b
    return-void

    .end local v0           #buffer:Ljava/nio/ByteBuffer;
    :cond_4c
    move v2, v1

    .line 58
    goto :goto_d

    .line 74
    .restart local v0       #buffer:Ljava/nio/ByteBuffer;
    :cond_4e
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/finsky/exploreactivity/Vertices;->mIndices:Ljava/nio/ShortBuffer;

    goto :goto_4b
.end method


# virtual methods
.method public bind()V
    .registers 7

    .prologue
    const/16 v5, 0x1406

    const/4 v1, 0x2

    .line 115
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/Vertices;->mVertices:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->limit()I

    move-result v0

    if-nez v0, :cond_c

    .line 135
    :cond_b
    :goto_b
    return-void

    .line 118
    :cond_c
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/Vertices;->mGl:Ljavax/microedition/khronos/opengles/GL10;

    const v2, 0x8074

    invoke-interface {v0, v2}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 119
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/Vertices;->mVertices:Ljava/nio/IntBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 120
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/Vertices;->mGl:Ljavax/microedition/khronos/opengles/GL10;

    iget v2, p0, Lcom/google/android/finsky/exploreactivity/Vertices;->mVertexSize:I

    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/Vertices;->mVertices:Ljava/nio/IntBuffer;

    invoke-interface {v0, v1, v5, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 122
    iget-boolean v0, p0, Lcom/google/android/finsky/exploreactivity/Vertices;->mHasColor:Z

    if-eqz v0, :cond_3e

    .line 123
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/Vertices;->mGl:Ljavax/microedition/khronos/opengles/GL10;

    const v2, 0x8076

    invoke-interface {v0, v2}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 124
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/Vertices;->mVertices:Ljava/nio/IntBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 125
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/Vertices;->mGl:Ljavax/microedition/khronos/opengles/GL10;

    const/4 v2, 0x4

    iget v3, p0, Lcom/google/android/finsky/exploreactivity/Vertices;->mVertexSize:I

    iget-object v4, p0, Lcom/google/android/finsky/exploreactivity/Vertices;->mVertices:Ljava/nio/IntBuffer;

    invoke-interface {v0, v2, v5, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glColorPointer(IIILjava/nio/Buffer;)V

    .line 128
    :cond_3e
    iget-boolean v0, p0, Lcom/google/android/finsky/exploreactivity/Vertices;->mHasTexCoords:Z

    if-eqz v0, :cond_b

    .line 129
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/Vertices;->mGl:Ljavax/microedition/khronos/opengles/GL10;

    const v2, 0x8078

    invoke-interface {v0, v2}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 130
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/Vertices;->mGl:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v2, 0xde1

    invoke-interface {v0, v2}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 131
    iget-object v2, p0, Lcom/google/android/finsky/exploreactivity/Vertices;->mVertices:Ljava/nio/IntBuffer;

    iget-boolean v0, p0, Lcom/google/android/finsky/exploreactivity/Vertices;->mHasColor:Z

    if-eqz v0, :cond_65

    const/4 v0, 0x6

    :goto_58
    invoke-virtual {v2, v0}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 132
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/Vertices;->mGl:Ljavax/microedition/khronos/opengles/GL10;

    iget v2, p0, Lcom/google/android/finsky/exploreactivity/Vertices;->mVertexSize:I

    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/Vertices;->mVertices:Ljava/nio/IntBuffer;

    invoke-interface {v0, v1, v5, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    goto :goto_b

    :cond_65
    move v0, v1

    .line 131
    goto :goto_58
.end method

.method public draw(III)V
    .registers 7
    .parameter "primitiveType"
    .parameter "offset"
    .parameter "numVerticies"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/Vertices;->mIndices:Ljava/nio/ShortBuffer;

    if-eqz v0, :cond_13

    .line 147
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/Vertices;->mIndices:Ljava/nio/ShortBuffer;

    invoke-virtual {v0, p2}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 148
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/Vertices;->mGl:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0x1403

    iget-object v2, p0, Lcom/google/android/finsky/exploreactivity/Vertices;->mIndices:Ljava/nio/ShortBuffer;

    invoke-interface {v0, p1, p3, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 153
    :goto_12
    return-void

    .line 150
    :cond_13
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/Vertices;->mGl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    goto :goto_12
.end method

.method public setIndices([SII)V
    .registers 5
    .parameter "indices"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/Vertices;->mIndices:Ljava/nio/ShortBuffer;

    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->clear()Ljava/nio/Buffer;

    .line 105
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/Vertices;->mIndices:Ljava/nio/ShortBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ShortBuffer;->put([SII)Ljava/nio/ShortBuffer;

    .line 106
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/Vertices;->mIndices:Ljava/nio/ShortBuffer;

    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->flip()Ljava/nio/Buffer;

    .line 107
    return-void
.end method

.method public setVertices([FII)V
    .registers 10
    .parameter "vertices"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 86
    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/Vertices;->mVertices:Ljava/nio/IntBuffer;

    invoke-virtual {v3}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    .line 88
    add-int v2, p2, p3

    .line 89
    .local v2, len:I
    move v0, p2

    .local v0, i:I
    const/4 v1, 0x0

    .local v1, j:I
    :goto_9
    if-ge v0, v2, :cond_1a

    .line 90
    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/Vertices;->mTmpBuffer:[I

    aget v4, p1, v0

    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    aput v4, v3, v1

    .line 89
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 92
    :cond_1a
    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/Vertices;->mVertices:Ljava/nio/IntBuffer;

    iget-object v4, p0, Lcom/google/android/finsky/exploreactivity/Vertices;->mTmpBuffer:[I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, p3}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    .line 93
    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/Vertices;->mVertices:Ljava/nio/IntBuffer;

    invoke-virtual {v3}, Ljava/nio/IntBuffer;->flip()Ljava/nio/Buffer;

    .line 94
    return-void
.end method

.method public unbind()V
    .registers 3

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/google/android/finsky/exploreactivity/Vertices;->mHasTexCoords:Z

    if-eqz v0, :cond_13

    .line 159
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/Vertices;->mGl:Ljavax/microedition/khronos/opengles/GL10;

    const v1, 0x8078

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 160
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/Vertices;->mGl:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0xde1

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 163
    :cond_13
    iget-boolean v0, p0, Lcom/google/android/finsky/exploreactivity/Vertices;->mHasColor:Z

    if-eqz v0, :cond_1f

    .line 164
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/Vertices;->mGl:Ljavax/microedition/khronos/opengles/GL10;

    const v1, 0x8076

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 167
    :cond_1f
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/Vertices;->mGl:Ljavax/microedition/khronos/opengles/GL10;

    const v1, 0x8074

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 169
    return-void
.end method
