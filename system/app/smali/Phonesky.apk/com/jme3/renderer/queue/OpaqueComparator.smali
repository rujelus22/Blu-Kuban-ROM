.class public Lcom/jme3/renderer/queue/OpaqueComparator;
.super Ljava/lang/Object;
.source "OpaqueComparator.java"

# interfaces
.implements Lcom/jme3/renderer/queue/GeometryComparator;


# instance fields
.field private cam:Lcom/jme3/renderer/Camera;

.field private final tempVec:Lcom/jme3/math/Vector3f;

.field private final tempVec2:Lcom/jme3/math/Vector3f;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/renderer/queue/OpaqueComparator;->tempVec:Lcom/jme3/math/Vector3f;

    .line 44
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/renderer/queue/OpaqueComparator;->tempVec2:Lcom/jme3/math/Vector3f;

    return-void
.end method


# virtual methods
.method public compare(Lcom/jme3/scene/Geometry;Lcom/jme3/scene/Geometry;)I
    .registers 9
    .parameter "o1"
    .parameter "o2"

    .prologue
    .line 74
    invoke-virtual {p1}, Lcom/jme3/scene/Geometry;->getMaterial()Lcom/jme3/material/Material;

    move-result-object v2

    .line 75
    .local v2, m1:Lcom/jme3/material/Material;
    invoke-virtual {p2}, Lcom/jme3/scene/Geometry;->getMaterial()Lcom/jme3/material/Material;

    move-result-object v3

    .line 77
    .local v3, m2:Lcom/jme3/material/Material;
    invoke-virtual {v2, v3}, Lcom/jme3/material/Material;->compareTo(Lcom/jme3/material/Material;)I

    move-result v4

    .line 79
    .local v4, sortId:I
    if-nez v4, :cond_1b

    .line 82
    invoke-virtual {p0, p1}, Lcom/jme3/renderer/queue/OpaqueComparator;->distanceToCam(Lcom/jme3/scene/Geometry;)F

    move-result v0

    .line 83
    .local v0, d1:F
    invoke-virtual {p0, p2}, Lcom/jme3/renderer/queue/OpaqueComparator;->distanceToCam(Lcom/jme3/scene/Geometry;)F

    move-result v1

    .line 85
    .local v1, d2:F
    cmpl-float v5, v0, v1

    if-nez v5, :cond_1c

    .line 86
    const/4 v4, 0x0

    .line 92
    .end local v0           #d1:F
    .end local v1           #d2:F
    .end local v4           #sortId:I
    :cond_1b
    :goto_1b
    return v4

    .line 87
    .restart local v0       #d1:F
    .restart local v1       #d2:F
    .restart local v4       #sortId:I
    :cond_1c
    cmpg-float v5, v0, v1

    if-gez v5, :cond_22

    .line 88
    const/4 v4, -0x1

    goto :goto_1b

    .line 90
    :cond_22
    const/4 v4, 0x1

    goto :goto_1b
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    check-cast p1, Lcom/jme3/scene/Geometry;

    .end local p1
    check-cast p2, Lcom/jme3/scene/Geometry;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/jme3/renderer/queue/OpaqueComparator;->compare(Lcom/jme3/scene/Geometry;Lcom/jme3/scene/Geometry;)I

    move-result v0

    return v0
.end method

.method public distanceToCam(Lcom/jme3/scene/Geometry;)F
    .registers 7
    .parameter "spat"

    .prologue
    const/high16 v3, -0x80

    .line 51
    if-nez p1, :cond_5

    .line 70
    :goto_4
    return v3

    .line 54
    :cond_5
    iget v4, p1, Lcom/jme3/scene/Geometry;->queueDistance:F

    cmpl-float v3, v4, v3

    if-eqz v3, :cond_e

    .line 55
    iget v3, p1, Lcom/jme3/scene/Geometry;->queueDistance:F

    goto :goto_4

    .line 57
    :cond_e
    iget-object v3, p0, Lcom/jme3/renderer/queue/OpaqueComparator;->cam:Lcom/jme3/renderer/Camera;

    invoke-virtual {v3}, Lcom/jme3/renderer/Camera;->getLocation()Lcom/jme3/math/Vector3f;

    move-result-object v0

    .line 58
    .local v0, camPosition:Lcom/jme3/math/Vector3f;
    iget-object v3, p0, Lcom/jme3/renderer/queue/OpaqueComparator;->cam:Lcom/jme3/renderer/Camera;

    iget-object v4, p0, Lcom/jme3/renderer/queue/OpaqueComparator;->tempVec2:Lcom/jme3/math/Vector3f;

    invoke-virtual {v3, v4}, Lcom/jme3/renderer/Camera;->getDirection(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v2

    .line 59
    .local v2, viewVector:Lcom/jme3/math/Vector3f;
    const/4 v1, 0x0

    .line 61
    .local v1, spatPosition:Lcom/jme3/math/Vector3f;
    invoke-virtual {p1}, Lcom/jme3/scene/Geometry;->getWorldBound()Lcom/jme3/bounding/BoundingVolume;

    move-result-object v3

    if-eqz v3, :cond_3b

    .line 62
    invoke-virtual {p1}, Lcom/jme3/scene/Geometry;->getWorldBound()Lcom/jme3/bounding/BoundingVolume;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jme3/bounding/BoundingVolume;->getCenter()Lcom/jme3/math/Vector3f;

    move-result-object v1

    .line 67
    :goto_2b
    iget-object v3, p0, Lcom/jme3/renderer/queue/OpaqueComparator;->tempVec:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, v0, v3}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 68
    iget-object v3, p0, Lcom/jme3/renderer/queue/OpaqueComparator;->tempVec:Lcom/jme3/math/Vector3f;

    invoke-virtual {v3, v2}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result v3

    iput v3, p1, Lcom/jme3/scene/Geometry;->queueDistance:F

    .line 70
    iget v3, p1, Lcom/jme3/scene/Geometry;->queueDistance:F

    goto :goto_4

    .line 64
    :cond_3b
    invoke-virtual {p1}, Lcom/jme3/scene/Geometry;->getWorldTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v1

    goto :goto_2b
.end method

.method public setCamera(Lcom/jme3/renderer/Camera;)V
    .registers 2
    .parameter "cam"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/jme3/renderer/queue/OpaqueComparator;->cam:Lcom/jme3/renderer/Camera;

    .line 48
    return-void
.end method
