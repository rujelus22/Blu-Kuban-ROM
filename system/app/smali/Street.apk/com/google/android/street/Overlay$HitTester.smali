.class Lcom/google/android/street/Overlay$HitTester;
.super Ljava/lang/Object;
.source "Overlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/street/Overlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HitTester"
.end annotation


# instance fields
.field private final mAABB:[I

.field private final mIds:[I

.field private mLength:I

.field private mViewHeight:I

.field private mViewWidth:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 1687
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1680
    const/16 v0, 0x190

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/street/Overlay$HitTester;->mAABB:[I

    .line 1681
    const/16 v0, 0x64

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/street/Overlay$HitTester;->mIds:[I

    .line 1688
    return-void
.end method


# virtual methods
.method public add(IIIIIII)V
    .registers 21
    .parameter "x0"
    .parameter "y0"
    .parameter "x1"
    .parameter "y1"
    .parameter "minWidth"
    .parameter "minHeight"
    .parameter "id"

    .prologue
    .line 1733
    iget v10, p0, Lcom/google/android/street/Overlay$HitTester;->mLength:I

    mul-int/lit8 v6, v10, 0x4

    .line 1734
    .local v6, i:I
    iget-object v2, p0, Lcom/google/android/street/Overlay$HitTester;->mAABB:[I

    .line 1735
    .local v2, aabb:[I
    sub-int v10, p3, p1

    move/from16 v0, p5

    move v1, v10

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1736
    .local v7, width:I
    sub-int v10, p4, p2

    move/from16 v0, p6

    move v1, v10

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1737
    .local v5, height:I
    add-int v10, p1, p3

    shr-int/lit8 v3, v10, 0x1

    .line 1738
    .local v3, cx:I
    add-int v10, p2, p4

    shr-int/lit8 v4, v10, 0x1

    .line 1739
    .local v4, cy:I
    shr-int/lit8 v10, v7, 0x1

    sub-int v8, v3, v10

    .line 1740
    .local v8, x0New:I
    shr-int/lit8 v10, v5, 0x1

    sub-int v9, v4, v10

    .line 1741
    .local v9, y0New:I
    aput v8, v2, v6

    .line 1742
    add-int/lit8 v10, v6, 0x1

    aput v9, v2, v10

    .line 1743
    add-int/lit8 v10, v6, 0x2

    add-int v11, v8, v7

    aput v11, v2, v10

    .line 1744
    add-int/lit8 v10, v6, 0x3

    add-int v11, v9, v5

    aput v11, v2, v10

    .line 1745
    iget-object v10, p0, Lcom/google/android/street/Overlay$HitTester;->mIds:[I

    iget v11, p0, Lcom/google/android/street/Overlay$HitTester;->mLength:I

    add-int/lit8 v12, v11, 0x1

    iput v12, p0, Lcom/google/android/street/Overlay$HitTester;->mLength:I

    aput p7, v10, v11

    .line 1746
    return-void
.end method

.method public add(Lcom/google/android/street/Projector;Ljavax/microedition/khronos/opengles/GL10;[FLcom/google/android/street/Overlay$Polygon;III)V
    .registers 20
    .parameter "projector"
    .parameter "gl"
    .parameter "scratch"
    .parameter "polygon"
    .parameter "minWidth"
    .parameter "minHeight"
    .parameter "id"

    .prologue
    .line 1712
    invoke-virtual {p1, p2}, Lcom/google/android/street/Projector;->getCurrentModelView(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1713
    iget v0, p0, Lcom/google/android/street/Overlay$HitTester;->mLength:I

    mul-int/lit8 v3, v0, 0x4

    .line 1714
    .local v3, i:I
    iget-object v2, p0, Lcom/google/android/street/Overlay$HitTester;->mAABB:[I

    iget v5, p0, Lcom/google/android/street/Overlay$HitTester;->mViewWidth:I

    iget v6, p0, Lcom/google/android/street/Overlay$HitTester;->mViewHeight:I

    move-object/from16 v0, p4

    move-object v1, p1

    move-object v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/street/Overlay$Polygon;->getAABB(Lcom/google/android/street/Projector;[II[FII)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 1716
    iget-object v0, p0, Lcom/google/android/street/Overlay$HitTester;->mAABB:[I

    aget v5, v0, v3

    iget-object v0, p0, Lcom/google/android/street/Overlay$HitTester;->mAABB:[I

    add-int/lit8 v1, v3, 0x1

    aget v6, v0, v1

    iget-object v0, p0, Lcom/google/android/street/Overlay$HitTester;->mAABB:[I

    add-int/lit8 v1, v3, 0x2

    aget v7, v0, v1

    iget-object v0, p0, Lcom/google/android/street/Overlay$HitTester;->mAABB:[I

    add-int/lit8 v1, v3, 0x3

    aget v8, v0, v1

    move-object v4, p0

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    invoke-virtual/range {v4 .. v11}, Lcom/google/android/street/Overlay$HitTester;->add(IIIIIII)V

    .line 1719
    :cond_37
    return-void
.end method

.method public hit(II)I
    .registers 8
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1756
    iget-object v0, p0, Lcom/google/android/street/Overlay$HitTester;->mAABB:[I

    .line 1759
    .local v0, aabb:[I
    iget v3, p0, Lcom/google/android/street/Overlay$HitTester;->mLength:I

    const/4 v4, 0x1

    sub-int v1, v3, v4

    .local v1, i:I
    :goto_7
    if-ltz v1, :cond_29

    .line 1760
    mul-int/lit8 v2, v1, 0x4

    .line 1761
    .local v2, ii:I
    aget v3, v0, v2

    if-gt v3, p1, :cond_26

    add-int/lit8 v3, v2, 0x1

    aget v3, v0, v3

    if-gt v3, p2, :cond_26

    add-int/lit8 v3, v2, 0x2

    aget v3, v0, v3

    if-ge p1, v3, :cond_26

    add-int/lit8 v3, v2, 0x3

    aget v3, v0, v3

    if-ge p2, v3, :cond_26

    .line 1763
    iget-object v3, p0, Lcom/google/android/street/Overlay$HitTester;->mIds:[I

    aget v3, v3, v1

    .line 1766
    .end local v2           #ii:I
    :goto_25
    return v3

    .line 1759
    .restart local v2       #ii:I
    :cond_26
    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    .line 1766
    .end local v2           #ii:I
    :cond_29
    const/4 v3, -0x1

    goto :goto_25
.end method

.method public reset(II)V
    .registers 4
    .parameter "viewWidth"
    .parameter "viewHeight"

    .prologue
    .line 1697
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/street/Overlay$HitTester;->mLength:I

    .line 1698
    iput p1, p0, Lcom/google/android/street/Overlay$HitTester;->mViewWidth:I

    .line 1699
    iput p2, p0, Lcom/google/android/street/Overlay$HitTester;->mViewHeight:I

    .line 1700
    return-void
.end method
