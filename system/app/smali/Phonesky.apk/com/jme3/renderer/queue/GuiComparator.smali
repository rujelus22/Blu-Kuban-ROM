.class public Lcom/jme3/renderer/queue/GuiComparator;
.super Ljava/lang/Object;
.source "GuiComparator.java"

# interfaces
.implements Lcom/jme3/renderer/queue/GeometryComparator;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/jme3/scene/Geometry;Lcom/jme3/scene/Geometry;)I
    .registers 6
    .parameter "o1"
    .parameter "o2"

    .prologue
    .line 47
    invoke-virtual {p1}, Lcom/jme3/scene/Geometry;->getWorldTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jme3/math/Vector3f;->getZ()F

    move-result v0

    .line 48
    .local v0, z1:F
    invoke-virtual {p2}, Lcom/jme3/scene/Geometry;->getWorldTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jme3/math/Vector3f;->getZ()F

    move-result v1

    .line 49
    .local v1, z2:F
    cmpl-float v2, v0, v1

    if-lez v2, :cond_16

    .line 50
    const/4 v2, 0x1

    .line 54
    :goto_15
    return v2

    .line 51
    :cond_16
    cmpg-float v2, v0, v1

    if-gez v2, :cond_1c

    .line 52
    const/4 v2, -0x1

    goto :goto_15

    .line 54
    :cond_1c
    const/4 v2, 0x0

    goto :goto_15
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    check-cast p1, Lcom/jme3/scene/Geometry;

    .end local p1
    check-cast p2, Lcom/jme3/scene/Geometry;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/jme3/renderer/queue/GuiComparator;->compare(Lcom/jme3/scene/Geometry;Lcom/jme3/scene/Geometry;)I

    move-result v0

    return v0
.end method

.method public setCamera(Lcom/jme3/renderer/Camera;)V
    .registers 2
    .parameter "cam"

    .prologue
    .line 58
    return-void
.end method
