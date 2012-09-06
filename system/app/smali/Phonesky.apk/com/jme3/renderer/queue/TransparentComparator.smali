.class public Lcom/jme3/renderer/queue/TransparentComparator;
.super Ljava/lang/Object;
.source "TransparentComparator.java"

# interfaces
.implements Lcom/jme3/renderer/queue/GeometryComparator;


# instance fields
.field private cam:Lcom/jme3/renderer/Camera;

.field private final tempVec:Lcom/jme3/math/Vector3f;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/renderer/queue/TransparentComparator;->tempVec:Lcom/jme3/math/Vector3f;

    return-void
.end method

.method private distanceToCam(Lcom/jme3/scene/Geometry;)F
    .registers 4
    .parameter "spat"

    .prologue
    .line 88
    invoke-virtual {p1}, Lcom/jme3/scene/Geometry;->getWorldBound()Lcom/jme3/bounding/BoundingVolume;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/renderer/queue/TransparentComparator;->cam:Lcom/jme3/renderer/Camera;

    invoke-virtual {v1}, Lcom/jme3/renderer/Camera;->getLocation()Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jme3/bounding/BoundingVolume;->distanceToEdge(Lcom/jme3/math/Vector3f;)F

    move-result v0

    return v0
.end method


# virtual methods
.method public compare(Lcom/jme3/scene/Geometry;Lcom/jme3/scene/Geometry;)I
    .registers 6
    .parameter "o1"
    .parameter "o2"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/jme3/renderer/queue/TransparentComparator;->distanceToCam(Lcom/jme3/scene/Geometry;)F

    move-result v0

    .line 93
    .local v0, d1:F
    invoke-direct {p0, p2}, Lcom/jme3/renderer/queue/TransparentComparator;->distanceToCam(Lcom/jme3/scene/Geometry;)F

    move-result v1

    .line 95
    .local v1, d2:F
    cmpl-float v2, v0, v1

    if-nez v2, :cond_e

    .line 96
    const/4 v2, 0x0

    .line 100
    :goto_d
    return v2

    .line 97
    :cond_e
    cmpg-float v2, v0, v1

    if-gez v2, :cond_14

    .line 98
    const/4 v2, 0x1

    goto :goto_d

    .line 100
    :cond_14
    const/4 v2, -0x1

    goto :goto_d
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    check-cast p1, Lcom/jme3/scene/Geometry;

    .end local p1
    check-cast p2, Lcom/jme3/scene/Geometry;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/jme3/renderer/queue/TransparentComparator;->compare(Lcom/jme3/scene/Geometry;Lcom/jme3/scene/Geometry;)I

    move-result v0

    return v0
.end method

.method public setCamera(Lcom/jme3/renderer/Camera;)V
    .registers 2
    .parameter "cam"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/jme3/renderer/queue/TransparentComparator;->cam:Lcom/jme3/renderer/Camera;

    .line 46
    return-void
.end method
