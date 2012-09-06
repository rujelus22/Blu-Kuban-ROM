.class public Lcom/jme3/scene/plugins/OBJLoader$Vertex;
.super Ljava/lang/Object;
.source "OBJLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/scene/plugins/OBJLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Vertex"
.end annotation


# instance fields
.field index:I

.field v:Lcom/jme3/math/Vector3f;

.field vn:Lcom/jme3/math/Vector3f;

.field vt:Lcom/jme3/math/Vector2f;


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter "obj"

    .prologue
    const/4 v1, 0x0

    .line 100
    if-nez p1, :cond_4

    .line 116
    :cond_3
    :goto_3
    return v1

    .line 103
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_3

    move-object v0, p1

    .line 106
    check-cast v0, Lcom/jme3/scene/plugins/OBJLoader$Vertex;

    .line 107
    .local v0, other:Lcom/jme3/scene/plugins/OBJLoader$Vertex;
    iget-object v2, p0, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->v:Lcom/jme3/math/Vector3f;

    iget-object v3, v0, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->v:Lcom/jme3/math/Vector3f;

    if-eq v2, v3, :cond_25

    iget-object v2, p0, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->v:Lcom/jme3/math/Vector3f;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->v:Lcom/jme3/math/Vector3f;

    iget-object v3, v0, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->v:Lcom/jme3/math/Vector3f;

    invoke-virtual {v2, v3}, Lcom/jme3/math/Vector3f;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 110
    :cond_25
    iget-object v2, p0, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->vt:Lcom/jme3/math/Vector2f;

    iget-object v3, v0, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->vt:Lcom/jme3/math/Vector2f;

    if-eq v2, v3, :cond_39

    iget-object v2, p0, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->vt:Lcom/jme3/math/Vector2f;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->vt:Lcom/jme3/math/Vector2f;

    iget-object v3, v0, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->vt:Lcom/jme3/math/Vector2f;

    invoke-virtual {v2, v3}, Lcom/jme3/math/Vector2f;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 113
    :cond_39
    iget-object v2, p0, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->vn:Lcom/jme3/math/Vector3f;

    iget-object v3, v0, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->vn:Lcom/jme3/math/Vector3f;

    if-eq v2, v3, :cond_4d

    iget-object v2, p0, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->vn:Lcom/jme3/math/Vector3f;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->vn:Lcom/jme3/math/Vector3f;

    iget-object v3, v0, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->vn:Lcom/jme3/math/Vector3f;

    invoke-virtual {v2, v3}, Lcom/jme3/math/Vector3f;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 116
    :cond_4d
    const/4 v1, 0x1

    goto :goto_3
.end method

.method public hashCode()I
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 121
    const/4 v0, 0x5

    .line 122
    .local v0, hash:I
    iget-object v1, p0, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->v:Lcom/jme3/math/Vector3f;

    if-eqz v1, :cond_2b

    iget-object v1, p0, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->v:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1}, Lcom/jme3/math/Vector3f;->hashCode()I

    move-result v1

    :goto_c
    add-int/lit16 v0, v1, 0x109

    .line 123
    mul-int/lit8 v3, v0, 0x35

    iget-object v1, p0, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->vt:Lcom/jme3/math/Vector2f;

    if-eqz v1, :cond_2d

    iget-object v1, p0, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->vt:Lcom/jme3/math/Vector2f;

    invoke-virtual {v1}, Lcom/jme3/math/Vector2f;->hashCode()I

    move-result v1

    :goto_1a
    add-int v0, v3, v1

    .line 124
    mul-int/lit8 v1, v0, 0x35

    iget-object v3, p0, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->vn:Lcom/jme3/math/Vector3f;

    if-eqz v3, :cond_28

    iget-object v2, p0, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->vn:Lcom/jme3/math/Vector3f;

    invoke-virtual {v2}, Lcom/jme3/math/Vector3f;->hashCode()I

    move-result v2

    :cond_28
    add-int v0, v1, v2

    .line 125
    return v0

    :cond_2b
    move v1, v2

    .line 122
    goto :goto_c

    :cond_2d
    move v1, v2

    .line 123
    goto :goto_1a
.end method
