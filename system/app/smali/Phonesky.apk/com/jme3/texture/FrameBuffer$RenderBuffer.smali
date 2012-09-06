.class public Lcom/jme3/texture/FrameBuffer$RenderBuffer;
.super Ljava/lang/Object;
.source "FrameBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/texture/FrameBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RenderBuffer"
.end annotation


# instance fields
.field format:Lcom/jme3/texture/Image$Format;

.field id:I

.field slot:I

.field tex:Lcom/jme3/texture/Texture;


# virtual methods
.method public resetObject()V
    .registers 2

    .prologue
    .line 133
    const/4 v0, -0x1

    iput v0, p0, Lcom/jme3/texture/FrameBuffer$RenderBuffer;->id:I

    .line 134
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 148
    iget-object v0, p0, Lcom/jme3/texture/FrameBuffer$RenderBuffer;->tex:Lcom/jme3/texture/Texture;

    if-eqz v0, :cond_20

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TextureTarget[format="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/texture/FrameBuffer$RenderBuffer;->format:Lcom/jme3/texture/Image$Format;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 151
    :goto_1f
    return-object v0

    :cond_20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BufferTarget[format="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/texture/FrameBuffer$RenderBuffer;->format:Lcom/jme3/texture/Image$Format;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1f
.end method
