.class public Lcom/jme3/scene/mesh/IndexIntBuffer;
.super Lcom/jme3/scene/mesh/IndexBuffer;
.source "IndexIntBuffer.java"


# instance fields
.field private buf:Ljava/nio/IntBuffer;


# direct methods
.method public constructor <init>(Ljava/nio/IntBuffer;)V
    .registers 2
    .parameter "buffer"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/jme3/scene/mesh/IndexBuffer;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/jme3/scene/mesh/IndexIntBuffer;->buf:Ljava/nio/IntBuffer;

    .line 49
    return-void
.end method


# virtual methods
.method public get(I)I
    .registers 3
    .parameter "i"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/jme3/scene/mesh/IndexIntBuffer;->buf:Ljava/nio/IntBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    return v0
.end method

.method public getBuffer()Ljava/nio/Buffer;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/jme3/scene/mesh/IndexIntBuffer;->buf:Ljava/nio/IntBuffer;

    return-object v0
.end method

.method public put(II)V
    .registers 4
    .parameter "i"
    .parameter "value"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/jme3/scene/mesh/IndexIntBuffer;->buf:Ljava/nio/IntBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    .line 59
    return-void
.end method

.method public size()I
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/jme3/scene/mesh/IndexIntBuffer;->buf:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->limit()I

    move-result v0

    return v0
.end method
