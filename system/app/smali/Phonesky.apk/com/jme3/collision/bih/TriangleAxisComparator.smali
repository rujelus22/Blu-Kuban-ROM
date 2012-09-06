.class public Lcom/jme3/collision/bih/TriangleAxisComparator;
.super Ljava/lang/Object;
.source "TriangleAxisComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/jme3/collision/bih/BIHTriangle;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final axis:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 38
    const-class v0, Lcom/jme3/collision/bih/TriangleAxisComparator;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/jme3/collision/bih/TriangleAxisComparator;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(I)V
    .registers 2
    .parameter "axis"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput p1, p0, Lcom/jme3/collision/bih/TriangleAxisComparator;->axis:I

    .line 44
    return-void
.end method


# virtual methods
.method public compare(Lcom/jme3/collision/bih/BIHTriangle;Lcom/jme3/collision/bih/BIHTriangle;)I
    .registers 9
    .parameter "o1"
    .parameter "o2"

    .prologue
    const/4 v4, 0x0

    .line 48
    invoke-virtual {p1}, Lcom/jme3/collision/bih/BIHTriangle;->getCenter()Lcom/jme3/math/Vector3f;

    move-result-object v0

    .line 49
    .local v0, c1:Lcom/jme3/math/Vector3f;
    invoke-virtual {p2}, Lcom/jme3/collision/bih/BIHTriangle;->getCenter()Lcom/jme3/math/Vector3f;

    move-result-object v1

    .line 50
    .local v1, c2:Lcom/jme3/math/Vector3f;
    iget v5, p0, Lcom/jme3/collision/bih/TriangleAxisComparator;->axis:I

    packed-switch v5, :pswitch_data_32

    .line 54
    sget-boolean v5, Lcom/jme3/collision/bih/TriangleAxisComparator;->$assertionsDisabled:Z

    if-nez v5, :cond_21

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 51
    :pswitch_18
    iget v2, v0, Lcom/jme3/math/Vector3f;->x:F

    .local v2, v1:F
    iget v3, v1, Lcom/jme3/math/Vector3f;->x:F

    .line 56
    .local v3, v2:F
    :goto_1c
    cmpl-float v5, v2, v3

    if-lez v5, :cond_2c

    .line 57
    const/4 v4, 0x1

    .line 61
    .end local v2           #v1:F
    .end local v3           #v2:F
    :cond_21
    :goto_21
    return v4

    .line 52
    :pswitch_22
    iget v2, v0, Lcom/jme3/math/Vector3f;->y:F

    .restart local v2       #v1:F
    iget v3, v1, Lcom/jme3/math/Vector3f;->y:F

    .restart local v3       #v2:F
    goto :goto_1c

    .line 53
    .end local v2           #v1:F
    .end local v3           #v2:F
    :pswitch_27
    iget v2, v0, Lcom/jme3/math/Vector3f;->z:F

    .restart local v2       #v1:F
    iget v3, v1, Lcom/jme3/math/Vector3f;->z:F

    .restart local v3       #v2:F
    goto :goto_1c

    .line 58
    :cond_2c
    cmpg-float v5, v2, v3

    if-gez v5, :cond_21

    .line 59
    const/4 v4, -0x1

    goto :goto_21

    .line 50
    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_18
        :pswitch_22
        :pswitch_27
    .end packed-switch
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    check-cast p1, Lcom/jme3/collision/bih/BIHTriangle;

    .end local p1
    check-cast p2, Lcom/jme3/collision/bih/BIHTriangle;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/jme3/collision/bih/TriangleAxisComparator;->compare(Lcom/jme3/collision/bih/BIHTriangle;Lcom/jme3/collision/bih/BIHTriangle;)I

    move-result v0

    return v0
.end method
