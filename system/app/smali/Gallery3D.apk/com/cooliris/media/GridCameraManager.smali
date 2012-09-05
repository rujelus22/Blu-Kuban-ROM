.class public final Lcom/cooliris/media/GridCameraManager;
.super Ljava/lang/Object;
.source "GridCameraManager.java"


# static fields
.field private static final sPool:Lcom/cooliris/media/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/cooliris/media/Pool",
            "<",
            "Lcom/cooliris/media/Vector3f;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBottomExtent:F

.field private final mCamera:Lcom/cooliris/media/GridCamera;

.field private mGridLayer:Lcom/cooliris/media/GridLayer;

.field private mLeftExtent:F

.field private mRightExtent:F

.field private mTopExtent:F


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 39
    const/16 v3, 0x400

    new-array v2, v3, [Lcom/cooliris/media/Vector3f;

    .line 40
    .local v2, vectorPool:[Lcom/cooliris/media/Vector3f;
    array-length v1, v2

    .line 41
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_6
    if-ge v0, v1, :cond_12

    .line 42
    new-instance v3, Lcom/cooliris/media/Vector3f;

    invoke-direct {v3}, Lcom/cooliris/media/Vector3f;-><init>()V

    aput-object v3, v2, v0

    .line 41
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 44
    :cond_12
    new-instance v3, Lcom/cooliris/media/Pool;

    invoke-direct {v3, v2}, Lcom/cooliris/media/Pool;-><init>([Ljava/lang/Object;)V

    sput-object v3, Lcom/cooliris/media/GridCameraManager;->sPool:Lcom/cooliris/media/Pool;

    .line 45
    return-void
.end method

.method public constructor <init>(Lcom/cooliris/media/GridCamera;)V
    .registers 2
    .parameter "camera"

    .prologue
    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/cooliris/media/GridCameraManager;->mCamera:Lcom/cooliris/media/GridCamera;

    .line 49
    return-void
.end method

.method public static final getFillScreenZoomValue(Lcom/cooliris/media/GridCamera;Lcom/cooliris/media/Pool;FF)F
    .registers 14
    .parameter "camera"
    .parameter
    .parameter "currentFocusItemWidth"
    .parameter "currentFocusItemHeight"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cooliris/media/GridCamera;",
            "Lcom/cooliris/media/Pool",
            "<",
            "Lcom/cooliris/media/Vector3f;",
            ">;FF)F"
        }
    .end annotation

    .prologue
    .local p1, pool:Lcom/cooliris/media/Pool;,"Lcom/cooliris/media/Pool<Lcom/cooliris/media/Vector3f;>;"
    const v9, 0x3f8ccccd

    const/high16 v5, 0x3f80

    .line 362
    invoke-virtual {p1}, Lcom/cooliris/media/Pool;->create()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cooliris/media/Vector3f;

    .line 363
    .local v2, topLeft:Lcom/cooliris/media/Vector3f;
    invoke-virtual {p1}, Lcom/cooliris/media/Pool;->create()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cooliris/media/Vector3f;

    .line 364
    .local v0, bottomRight:Lcom/cooliris/media/Vector3f;
    const/high16 v1, 0x3f80

    .line 366
    .local v1, potentialZoomValue:F
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :try_start_16
    invoke-virtual {p0, v6, v7, v8, v2}, Lcom/cooliris/media/GridCamera;->convertToCameraSpace(FFFLcom/cooliris/media/Vector3f;)V

    .line 367
    iget v6, p0, Lcom/cooliris/media/GridCamera;->mWidth:I

    int-to-float v6, v6

    iget v7, p0, Lcom/cooliris/media/GridCamera;->mHeight:I

    int-to-float v7, v7

    const/4 v8, 0x0

    invoke-virtual {p0, v6, v7, v8, v0}, Lcom/cooliris/media/GridCamera;->convertToCameraSpace(FFFLcom/cooliris/media/Vector3f;)V

    .line 368
    iget v6, v2, Lcom/cooliris/media/Vector3f;->x:F

    iget v7, v0, Lcom/cooliris/media/Vector3f;->x:F

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    div-float v3, v6, p2

    .line 369
    .local v3, xExtent:F
    iget v6, v2, Lcom/cooliris/media/Vector3f;->y:F

    iget v7, v0, Lcom/cooliris/media/Vector3f;->y:F

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    div-float v4, v6, p3

    .line 370
    .local v4, yExtent:F
    cmpg-float v6, v3, v9

    if-gez v6, :cond_3e

    move v3, v5

    .line 371
    :cond_3e
    cmpg-float v6, v4, v9

    if-gez v6, :cond_43

    move v4, v5

    .line 372
    :cond_43
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F
    :try_end_46
    .catchall {:try_start_16 .. :try_end_46} :catchall_4e

    move-result v1

    .line 374
    invoke-virtual {p1, v2}, Lcom/cooliris/media/Pool;->delete(Ljava/lang/Object;)V

    .line 375
    invoke-virtual {p1, v0}, Lcom/cooliris/media/Pool;->delete(Ljava/lang/Object;)V

    .line 377
    return v1

    .line 374
    .end local v3           #xExtent:F
    .end local v4           #yExtent:F
    :catchall_4e
    move-exception v5

    invoke-virtual {p1, v2}, Lcom/cooliris/media/Pool;->delete(Ljava/lang/Object;)V

    .line 375
    invoke-virtual {p1, v0}, Lcom/cooliris/media/Pool;->delete(Ljava/lang/Object;)V

    throw v5
.end method

.method public static final getSlotPositionForSlotIndex(ILcom/cooliris/media/GridCamera;Lcom/cooliris/media/LayoutInterface;Lcom/cooliris/media/Vector3f;Lcom/cooliris/media/Vector3f;)V
    .registers 8
    .parameter "slotIndex"
    .parameter "camera"
    .parameter "layout"
    .parameter "deltaAnchorPosition"
    .parameter "outVal"

    .prologue
    .line 353
    :try_start_0
    iget v1, p1, Lcom/cooliris/media/GridCamera;->mItemWidth:I

    iget v2, p1, Lcom/cooliris/media/GridCamera;->mItemHeight:I

    invoke-virtual {p2, p0, v1, v2, p4}, Lcom/cooliris/media/LayoutInterface;->getPositionForSlotIndex(IIILcom/cooliris/media/Vector3f;)V

    .line 354
    invoke-virtual {p4, p3}, Lcom/cooliris/media/Vector3f;->subtract(Lcom/cooliris/media/Vector3f;)V
    :try_end_a
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_a} :catch_b

    .line 358
    :goto_a
    return-void

    .line 355
    :catch_b
    move-exception v0

    .line 356
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v1, "GridCameraManager"

    const-string v2, "Can not get position for slot index!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a
.end method


# virtual methods
.method public declared-synchronized centerCameraForSlot(Lcom/cooliris/media/LayoutInterface;IFLcom/cooliris/media/Vector3f;IFFI)V
    .registers 27
    .parameter "layout"
    .parameter "slotIndex"
    .parameter "baseConvergence"
    .parameter "deltaAnchorPositionIn"
    .parameter "selectedSlotIndex"
    .parameter "zoomValue"
    .parameter "imageTheta"
    .parameter "state"

    .prologue
    .line 58
    monitor-enter p0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cooliris/media/GridCameraManager;->mCamera:Lcom/cooliris/media/GridCamera;

    .line 59
    .local v2, camera:Lcom/cooliris/media/GridCamera;
    sget-object v7, Lcom/cooliris/media/GridCameraManager;->sPool:Lcom/cooliris/media/Pool;

    .line 60
    .local v7, pool:Lcom/cooliris/media/Pool;,"Lcom/cooliris/media/Pool<Lcom/cooliris/media/Vector3f;>;"
    monitor-enter v2
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_ad

    .line 61
    const/4 v14, -0x1

    move/from16 v0, p5

    if-eq v0, v14, :cond_91

    const/4 v13, 0x1

    .line 62
    .local v13, zoomin:Z
    :goto_e
    move/from16 v0, p7

    float-to-int v11, v0

    .line 63
    .local v11, theta:I
    :try_start_11
    div-int/lit8 v14, v11, 0x5a

    rem-int/lit8 v8, v14, 0x2

    .line 64
    .local v8, portrait:I
    move/from16 v0, p2

    move/from16 v1, p5

    if-ne v0, v1, :cond_26

    .line 65
    if-eqz v13, :cond_94

    const/high16 v14, 0x4000

    :goto_1f
    mul-float v14, v14, p3

    iput v14, v2, Lcom/cooliris/media/GridCamera;->mConvergenceSpeed:F

    .line 66
    const/4 v14, 0x0

    iput v14, v2, Lcom/cooliris/media/GridCamera;->mFriction:F

    .line 68
    :cond_26
    const/high16 v14, 0x3f80

    div-float v6, v14, p6

    .line 69
    .local v6, oneByZoom:F
    if-ltz p2, :cond_b8

    .line 70
    invoke-virtual {v7}, Lcom/cooliris/media/Pool;->create()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/cooliris/media/Vector3f;

    .line 71
    .local v9, position:Lcom/cooliris/media/Vector3f;
    invoke-virtual {v7}, Lcom/cooliris/media/Pool;->create()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cooliris/media/Vector3f;
    :try_end_38
    .catchall {:try_start_11 .. :try_end_38} :catchall_aa

    .line 73
    .local v3, deltaAnchorPosition:Lcom/cooliris/media/Vector3f;
    :try_start_38
    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Lcom/cooliris/media/Vector3f;->set(Lcom/cooliris/media/Vector3f;)V

    .line 74
    move/from16 v0, p2

    move-object/from16 v1, p1

    invoke-static {v0, v2, v1, v3, v9}, Lcom/cooliris/media/GridCameraManager;->getSlotPositionForSlotIndex(ILcom/cooliris/media/GridCamera;Lcom/cooliris/media/LayoutInterface;Lcom/cooliris/media/Vector3f;Lcom/cooliris/media/Vector3f;)V

    .line 76
    const/high16 v14, 0x3f80

    cmpl-float v14, p6, v14

    if-nez v14, :cond_97

    iget v14, v9, Lcom/cooliris/media/Vector3f;->x:F

    iget v15, v2, Lcom/cooliris/media/GridCamera;->mOneByScale:F

    mul-float/2addr v14, v15

    :goto_4f
    iput v14, v9, Lcom/cooliris/media/Vector3f;->x:F

    .line 78
    const/high16 v14, 0x3f80

    cmpl-float v14, p6, v14

    if-nez v14, :cond_9a

    const/4 v14, 0x0

    :goto_58
    iput v14, v9, Lcom/cooliris/media/Vector3f;->y:F

    .line 79
    if-eqz p8, :cond_61

    const/4 v14, 0x3

    move/from16 v0, p8

    if-ne v0, v14, :cond_66

    .line 80
    :cond_61
    const v14, -0x42333333

    iput v14, v9, Lcom/cooliris/media/Vector3f;->y:F

    .line 82
    :cond_66
    iget v14, v2, Lcom/cooliris/media/GridCamera;->mItemWidth:I

    int-to-float v12, v14

    .line 83
    .local v12, width:F
    iget v14, v2, Lcom/cooliris/media/GridCamera;->mItemHeight:I

    int-to-float v5, v14

    .line 84
    .local v5, height:F
    if-eqz v8, :cond_71

    .line 85
    move v10, v12

    .line 86
    .local v10, temp:F
    move v12, v5

    .line 87
    move v5, v10

    .line 89
    .end local v10           #temp:F
    :cond_71
    iget v15, v9, Lcom/cooliris/media/Vector3f;->x:F

    iget v0, v9, Lcom/cooliris/media/Vector3f;->y:F

    move/from16 v16, v0

    if-eqz v13, :cond_9d

    mul-float v14, v12, v6

    mul-float v17, v5, v6

    move/from16 v0, v17

    invoke-virtual {v2, v14, v0}, Lcom/cooliris/media/GridCamera;->getDistanceToFitRect(FF)F

    move-result v14

    :goto_83
    move/from16 v0, v16

    invoke-virtual {v2, v15, v0, v14}, Lcom/cooliris/media/GridCamera;->moveTo(FFF)V
    :try_end_88
    .catchall {:try_start_38 .. :try_end_88} :catchall_b0
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_88} :catch_9f

    .line 97
    :try_start_88
    invoke-virtual {v7, v9}, Lcom/cooliris/media/Pool;->delete(Ljava/lang/Object;)V

    .line 98
    invoke-virtual {v7, v3}, Lcom/cooliris/media/Pool;->delete(Ljava/lang/Object;)V

    .line 104
    .end local v3           #deltaAnchorPosition:Lcom/cooliris/media/Vector3f;
    .end local v5           #height:F
    .end local v9           #position:Lcom/cooliris/media/Vector3f;
    .end local v12           #width:F
    :goto_8e
    monitor-exit v2
    :try_end_8f
    .catchall {:try_start_88 .. :try_end_8f} :catchall_aa

    .line 105
    monitor-exit p0

    return-void

    .line 61
    .end local v6           #oneByZoom:F
    .end local v8           #portrait:I
    .end local v11           #theta:I
    .end local v13           #zoomin:Z
    :cond_91
    const/4 v13, 0x0

    goto/16 :goto_e

    .line 65
    .restart local v8       #portrait:I
    .restart local v11       #theta:I
    .restart local v13       #zoomin:Z
    :cond_94
    const/high16 v14, 0x4000

    goto :goto_1f

    .line 76
    .restart local v3       #deltaAnchorPosition:Lcom/cooliris/media/Vector3f;
    .restart local v6       #oneByZoom:F
    .restart local v9       #position:Lcom/cooliris/media/Vector3f;
    :cond_97
    :try_start_97
    iget v14, v2, Lcom/cooliris/media/GridCamera;->mLookAtX:F

    goto :goto_4f

    .line 78
    :cond_9a
    iget v14, v2, Lcom/cooliris/media/GridCamera;->mLookAtY:F
    :try_end_9c
    .catchall {:try_start_97 .. :try_end_9c} :catchall_b0
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_9c} :catch_9f

    goto :goto_58

    .line 89
    .restart local v5       #height:F
    .restart local v12       #width:F
    :cond_9d
    const/4 v14, 0x0

    goto :goto_83

    .line 94
    .end local v5           #height:F
    .end local v12           #width:F
    :catch_9f
    move-exception v4

    .line 95
    .local v4, ex:Ljava/lang/Exception;
    :try_start_a0
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a3
    .catchall {:try_start_a0 .. :try_end_a3} :catchall_b0

    .line 97
    :try_start_a3
    invoke-virtual {v7, v9}, Lcom/cooliris/media/Pool;->delete(Ljava/lang/Object;)V

    .line 98
    invoke-virtual {v7, v3}, Lcom/cooliris/media/Pool;->delete(Ljava/lang/Object;)V

    goto :goto_8e

    .line 104
    .end local v3           #deltaAnchorPosition:Lcom/cooliris/media/Vector3f;
    .end local v4           #ex:Ljava/lang/Exception;
    .end local v6           #oneByZoom:F
    .end local v8           #portrait:I
    .end local v9           #position:Lcom/cooliris/media/Vector3f;
    :catchall_aa
    move-exception v14

    monitor-exit v2
    :try_end_ac
    .catchall {:try_start_a3 .. :try_end_ac} :catchall_aa

    :try_start_ac
    throw v14
    :try_end_ad
    .catchall {:try_start_ac .. :try_end_ad} :catchall_ad

    .line 58
    .end local v2           #camera:Lcom/cooliris/media/GridCamera;
    .end local v7           #pool:Lcom/cooliris/media/Pool;,"Lcom/cooliris/media/Pool<Lcom/cooliris/media/Vector3f;>;"
    .end local v11           #theta:I
    .end local v13           #zoomin:Z
    :catchall_ad
    move-exception v14

    monitor-exit p0

    throw v14

    .line 97
    .restart local v2       #camera:Lcom/cooliris/media/GridCamera;
    .restart local v3       #deltaAnchorPosition:Lcom/cooliris/media/Vector3f;
    .restart local v6       #oneByZoom:F
    .restart local v7       #pool:Lcom/cooliris/media/Pool;,"Lcom/cooliris/media/Pool<Lcom/cooliris/media/Vector3f;>;"
    .restart local v8       #portrait:I
    .restart local v9       #position:Lcom/cooliris/media/Vector3f;
    .restart local v11       #theta:I
    .restart local v13       #zoomin:Z
    :catchall_b0
    move-exception v14

    :try_start_b1
    invoke-virtual {v7, v9}, Lcom/cooliris/media/Pool;->delete(Ljava/lang/Object;)V

    .line 98
    invoke-virtual {v7, v3}, Lcom/cooliris/media/Pool;->delete(Ljava/lang/Object;)V

    throw v14

    .line 101
    .end local v3           #deltaAnchorPosition:Lcom/cooliris/media/Vector3f;
    .end local v9           #position:Lcom/cooliris/media/Vector3f;
    :cond_b8
    const/4 v14, 0x0

    invoke-virtual {v2, v14}, Lcom/cooliris/media/GridCamera;->moveYTo(F)V

    .line 102
    const/4 v14, 0x0

    invoke-virtual {v2, v14}, Lcom/cooliris/media/GridCamera;->moveZTo(F)V
    :try_end_c0
    .catchall {:try_start_b1 .. :try_end_c0} :catchall_aa

    goto :goto_8e
.end method

.method public computeVisibleRange(Lcom/cooliris/media/MediaFeed;Lcom/cooliris/media/LayoutInterface;Lcom/cooliris/media/Vector3f;Lcom/cooliris/media/IndexRange;Lcom/cooliris/media/IndexRange;Lcom/cooliris/media/IndexRange;I)V
    .registers 32
    .parameter "feed"
    .parameter "layout"
    .parameter "deltaAnchorPositionIn"
    .parameter "outVisibleRange"
    .parameter "outBufferedVisibleRange"
    .parameter "outCompleteRange"
    .parameter "state"

    .prologue
    .line 194
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/cooliris/media/GridCameraManager;->mCamera:Lcom/cooliris/media/GridCamera;

    .line 195
    .local v9, camera:Lcom/cooliris/media/GridCamera;
    sget-object v20, Lcom/cooliris/media/GridCameraManager;->sPool:Lcom/cooliris/media/Pool;

    .line 196
    .local v20, pool:Lcom/cooliris/media/Pool;,"Lcom/cooliris/media/Pool<Lcom/cooliris/media/Vector3f;>;"
    iget v6, v9, Lcom/cooliris/media/GridCamera;->mLookAtX:F

    iget v7, v9, Lcom/cooliris/media/GridCamera;->mScale:F

    mul-float v19, v6, v7

    .line 197
    .local v19, offset:F
    iget v14, v9, Lcom/cooliris/media/GridCamera;->mItemWidth:I

    .line 198
    .local v14, itemWidth:I
    iget v6, v9, Lcom/cooliris/media/GridCamera;->mWidth:I

    int-to-float v6, v6

    const/high16 v7, 0x3f00

    mul-float/2addr v6, v7

    int-to-float v7, v14

    add-float v17, v6, v7

    .line 199
    .local v17, maxIncrement:F
    move/from16 v0, v17

    neg-float v6, v0

    add-float v2, v6, v19

    .line 200
    .local v2, left:F
    const/high16 v6, 0x4000

    mul-float v6, v6, v17

    add-float v3, v2, v6

    .line 201
    .local v3, right:F
    if-eqz p7, :cond_29

    const/4 v6, 0x3

    move/from16 v0, p7

    if-ne v0, v6, :cond_2e

    .line 202
    :cond_29
    int-to-float v6, v14

    const/high16 v7, 0x3f00

    mul-float/2addr v6, v7

    add-float/2addr v3, v6

    .line 204
    :cond_2e
    move/from16 v0, v17

    neg-float v4, v0

    .line 205
    .local v4, top:F
    iget v6, v9, Lcom/cooliris/media/GridCamera;->mHeight:I

    int-to-float v6, v6

    add-float v5, v6, v17

    .line 207
    .local v5, bottom:F
    const/16 v18, 0x0

    .line 208
    .local v18, numSlots:I
    if-eqz p1, :cond_3e

    .line 209
    invoke-virtual/range {p1 .. p1}, Lcom/cooliris/media/MediaFeed;->getNumSlots()I

    move-result v18

    .line 211
    :cond_3e
    monitor-enter p6

    .line 212
    const/4 v6, 0x0

    add-int/lit8 v7, v18, -0x1

    :try_start_42
    move-object/from16 v0, p6

    invoke-virtual {v0, v6, v7}, Lcom/cooliris/media/IndexRange;->set(II)V

    .line 213
    monitor-exit p6
    :try_end_48
    .catchall {:try_start_42 .. :try_end_48} :catchall_128

    .line 215
    invoke-virtual/range {v20 .. v20}, Lcom/cooliris/media/Pool;->create()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/cooliris/media/Vector3f;

    .line 216
    .local v21, position:Lcom/cooliris/media/Vector3f;
    invoke-virtual/range {v20 .. v20}, Lcom/cooliris/media/Pool;->create()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/cooliris/media/Vector3f;

    .line 218
    .local v10, deltaAnchorPosition:Lcom/cooliris/media/Vector3f;
    const/4 v12, 0x0

    .line 219
    .local v12, firstVisibleSlotIndex:I
    add-int/lit8 v15, v18, -0x1

    .line 220
    .local v15, lastVisibleSlotIndex:I
    move/from16 v16, v12

    .line 221
    .local v16, leftEdge:I
    move/from16 v22, v15

    .line 222
    .local v22, rightEdge:I
    add-int/lit8 v6, v22, 0x0

    :try_start_5d
    div-int/lit8 v13, v6, 0x2

    .line 223
    .local v13, index:I
    move v15, v12

    .line 224
    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Lcom/cooliris/media/Vector3f;->set(Lcom/cooliris/media/Vector3f;)V

    .line 225
    :goto_65
    move/from16 v0, v16

    if-eq v13, v0, :cond_80

    .line 226
    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-static {v13, v9, v0, v10, v1}, Lcom/cooliris/media/GridCameraManager;->getSlotPositionForSlotIndex(ILcom/cooliris/media/GridCamera;Lcom/cooliris/media/LayoutInterface;Lcom/cooliris/media/Vector3f;Lcom/cooliris/media/Vector3f;)V

    .line 228
    move-object/from16 v0, v21

    iget v6, v0, Lcom/cooliris/media/Vector3f;->x:F

    move-object/from16 v0, v21

    iget v7, v0, Lcom/cooliris/media/Vector3f;->y:F

    invoke-static/range {v2 .. v7}, Lcom/cooliris/media/FloatUtils;->boundsContainsPoint(FFFFFF)Z

    move-result v6

    if-eqz v6, :cond_12b

    .line 231
    move v12, v13

    .line 232
    move v15, v13

    .line 244
    :cond_80
    :goto_80
    if-ltz v12, :cond_9d

    move/from16 v0, v18

    if-ge v12, v0, :cond_9d

    .line 245
    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-static {v12, v9, v0, v10, v1}, Lcom/cooliris/media/GridCameraManager;->getSlotPositionForSlotIndex(ILcom/cooliris/media/GridCamera;Lcom/cooliris/media/LayoutInterface;Lcom/cooliris/media/Vector3f;Lcom/cooliris/media/Vector3f;)V

    .line 248
    move-object/from16 v0, v21

    iget v6, v0, Lcom/cooliris/media/Vector3f;->x:F

    move-object/from16 v0, v21

    iget v7, v0, Lcom/cooliris/media/Vector3f;->y:F

    invoke-static/range {v2 .. v7}, Lcom/cooliris/media/FloatUtils;->boundsContainsPoint(FFFFFF)Z

    move-result v6

    if-nez v6, :cond_13e

    .line 250
    add-int/lit8 v12, v12, 0x1

    .line 256
    :cond_9d
    :goto_9d
    if-ltz v15, :cond_ba

    move/from16 v0, v18

    if-ge v15, v0, :cond_ba

    .line 257
    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-static {v15, v9, v0, v10, v1}, Lcom/cooliris/media/GridCameraManager;->getSlotPositionForSlotIndex(ILcom/cooliris/media/GridCamera;Lcom/cooliris/media/LayoutInterface;Lcom/cooliris/media/Vector3f;Lcom/cooliris/media/Vector3f;)V

    .line 259
    move-object/from16 v0, v21

    iget v6, v0, Lcom/cooliris/media/Vector3f;->x:F

    move-object/from16 v0, v21

    iget v7, v0, Lcom/cooliris/media/Vector3f;->y:F

    invoke-static/range {v2 .. v7}, Lcom/cooliris/media/FloatUtils;->boundsContainsPoint(FFFFFF)Z

    move-result v6

    if-nez v6, :cond_142

    .line 261
    add-int/lit8 v15, v15, -0x1

    .line 267
    :cond_ba
    if-gez v12, :cond_bd

    .line 268
    const/4 v12, 0x0

    .line 269
    :cond_bd
    move/from16 v0, v18

    if-lt v15, v0, :cond_c3

    .line 270
    add-int/lit8 v15, v18, -0x1

    .line 271
    :cond_c3
    monitor-enter p4
    :try_end_c4
    .catchall {:try_start_5d .. :try_end_c4} :catchall_27b
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_c4} :catch_1c7

    .line 273
    const/4 v6, 0x1

    move/from16 v0, v18

    if-le v0, v6, :cond_cb

    if-lez v15, :cond_146

    .line 274
    :cond_cb
    :try_start_cb
    move-object/from16 v0, p4

    invoke-virtual {v0, v12, v15}, Lcom/cooliris/media/IndexRange;->set(II)V

    .line 279
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/cooliris/media/GridCameraManager;->mGridLayer:Lcom/cooliris/media/GridLayer;

    if-eqz v6, :cond_f2

    const/4 v6, 0x1

    move/from16 v0, v18

    if-ne v0, v6, :cond_f2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/cooliris/media/GridCameraManager;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v6}, Lcom/cooliris/media/GridLayer;->getState()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_f2

    .line 281
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/cooliris/media/GridCameraManager;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v6}, Lcom/cooliris/media/GridLayer;->getGridInputProcessor()Lcom/cooliris/media/GridInputProcessor;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/cooliris/media/GridInputProcessor;->constrainCamera(Z)V
    :try_end_f2
    .catchall {:try_start_cb .. :try_end_f2} :catchall_1c4
    .catch Ljava/lang/NullPointerException; {:try_start_cb .. :try_end_f2} :catch_1be

    .line 300
    :cond_f2
    :goto_f2
    :try_start_f2
    monitor-exit p4
    :try_end_f3
    .catchall {:try_start_f2 .. :try_end_f3} :catchall_1c4

    .line 301
    if-eqz p1, :cond_fc

    .line 303
    :try_start_f5
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1, v12, v15}, Lcom/cooliris/media/MediaFeed;->setVisibleRange(III)V

    .line 305
    :cond_fc
    const/16 v8, 0x18

    .line 306
    .local v8, buffer:I
    sub-int v6, v12, v8

    div-int/2addr v6, v8

    mul-int v12, v6, v8

    .line 307
    add-int/2addr v15, v8

    .line 308
    div-int v6, v15, v8

    mul-int v15, v6, v8

    .line 309
    if-gez v12, :cond_10b

    .line 310
    const/4 v12, 0x0

    .line 312
    :cond_10b
    move/from16 v0, v18

    if-lt v15, v0, :cond_111

    .line 313
    add-int/lit8 v15, v18, -0x1

    .line 315
    :cond_111
    monitor-enter p5
    :try_end_112
    .catchall {:try_start_f5 .. :try_end_112} :catchall_27b
    .catch Ljava/lang/Exception; {:try_start_f5 .. :try_end_112} :catch_1c7

    .line 316
    const/4 v6, 0x1

    move/from16 v0, v18

    if-le v0, v6, :cond_119

    if-lez v15, :cond_1de

    .line 317
    :cond_119
    :try_start_119
    move-object/from16 v0, p5

    invoke-virtual {v0, v12, v15}, Lcom/cooliris/media/IndexRange;->set(II)V

    .line 341
    :cond_11e
    :goto_11e
    monitor-exit p5
    :try_end_11f
    .catchall {:try_start_119 .. :try_end_11f} :catchall_278

    .line 345
    invoke-virtual/range {v20 .. v21}, Lcom/cooliris/media/Pool;->delete(Ljava/lang/Object;)V

    .line 346
    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Lcom/cooliris/media/Pool;->delete(Ljava/lang/Object;)V

    .line 348
    .end local v8           #buffer:I
    .end local v13           #index:I
    :goto_127
    return-void

    .line 213
    .end local v10           #deltaAnchorPosition:Lcom/cooliris/media/Vector3f;
    .end local v12           #firstVisibleSlotIndex:I
    .end local v15           #lastVisibleSlotIndex:I
    .end local v16           #leftEdge:I
    .end local v21           #position:Lcom/cooliris/media/Vector3f;
    .end local v22           #rightEdge:I
    :catchall_128
    move-exception v6

    :try_start_129
    monitor-exit p6
    :try_end_12a
    .catchall {:try_start_129 .. :try_end_12a} :catchall_128

    throw v6

    .line 235
    .restart local v10       #deltaAnchorPosition:Lcom/cooliris/media/Vector3f;
    .restart local v12       #firstVisibleSlotIndex:I
    .restart local v13       #index:I
    .restart local v15       #lastVisibleSlotIndex:I
    .restart local v16       #leftEdge:I
    .restart local v21       #position:Lcom/cooliris/media/Vector3f;
    .restart local v22       #rightEdge:I
    :cond_12b
    :try_start_12b
    move-object/from16 v0, v21

    iget v6, v0, Lcom/cooliris/media/Vector3f;->x:F

    cmpl-float v6, v6, v2

    if-lez v6, :cond_13b

    .line 236
    move/from16 v22, v13

    .line 240
    :goto_135
    add-int v6, v16, v22

    div-int/lit8 v13, v6, 0x2
    :try_end_139
    .catchall {:try_start_12b .. :try_end_139} :catchall_27b
    .catch Ljava/lang/Exception; {:try_start_12b .. :try_end_139} :catch_1c7

    goto/16 :goto_65

    .line 238
    :cond_13b
    move/from16 v16, v13

    goto :goto_135

    .line 253
    :cond_13e
    add-int/lit8 v12, v12, -0x1

    goto/16 :goto_80

    .line 264
    :cond_142
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_9d

    .line 285
    :cond_146
    :try_start_146
    const-string v6, "GridCameraManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "computeVisibleRange numSlots ["

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v23, "] outVisibleRange : begin ["

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p4

    iget v0, v0, Lcom/cooliris/media/IndexRange;->begin:I

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v23, "] end ["

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p4

    iget v0, v0, Lcom/cooliris/media/IndexRange;->end:I

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v23, "] firstVisibleSlotIndex ["

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v23, "] lastVisibleSlotIndex ["

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v23, "]"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/cooliris/media/GridCameraManager;->mGridLayer:Lcom/cooliris/media/GridLayer;

    if-eqz v6, :cond_1d5

    .line 292
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/cooliris/media/GridCameraManager;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v6}, Lcom/cooliris/media/GridLayer;->getGridInputProcessor()Lcom/cooliris/media/GridInputProcessor;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/cooliris/media/GridInputProcessor;->constrainCamera(Z)V
    :try_end_1bc
    .catchall {:try_start_146 .. :try_end_1bc} :catchall_1c4
    .catch Ljava/lang/NullPointerException; {:try_start_146 .. :try_end_1bc} :catch_1be

    goto/16 :goto_f2

    .line 297
    :catch_1be
    move-exception v11

    .line 298
    .local v11, e:Ljava/lang/NullPointerException;
    :try_start_1bf
    invoke-virtual {v11}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_f2

    .line 300
    .end local v11           #e:Ljava/lang/NullPointerException;
    :catchall_1c4
    move-exception v6

    monitor-exit p4
    :try_end_1c6
    .catchall {:try_start_1bf .. :try_end_1c6} :catchall_1c4

    :try_start_1c6
    throw v6
    :try_end_1c7
    .catchall {:try_start_1c6 .. :try_end_1c7} :catchall_27b
    .catch Ljava/lang/Exception; {:try_start_1c6 .. :try_end_1c7} :catch_1c7

    .line 342
    .end local v13           #index:I
    :catch_1c7
    move-exception v11

    .line 343
    .local v11, e:Ljava/lang/Exception;
    :try_start_1c8
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1cb
    .catchall {:try_start_1c8 .. :try_end_1cb} :catchall_27b

    .line 345
    invoke-virtual/range {v20 .. v21}, Lcom/cooliris/media/Pool;->delete(Ljava/lang/Object;)V

    .line 346
    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Lcom/cooliris/media/Pool;->delete(Ljava/lang/Object;)V

    goto/16 :goto_127

    .line 294
    .end local v11           #e:Ljava/lang/Exception;
    .restart local v13       #index:I
    :cond_1d5
    :try_start_1d5
    const-string v6, "GridCameraManager"

    const-string v7, "computeVisibleRange outVisibleRange :mGridLayer is null "

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1dc
    .catchall {:try_start_1d5 .. :try_end_1dc} :catchall_1c4
    .catch Ljava/lang/NullPointerException; {:try_start_1d5 .. :try_end_1dc} :catch_1be

    goto/16 :goto_f2

    .line 319
    .restart local v8       #buffer:I
    :cond_1de
    :try_start_1de
    const-string v6, "GridCameraManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "computeVisibleRange numSlots ["

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v23, "] outVisibleRange : begin ["

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p5

    iget v0, v0, Lcom/cooliris/media/IndexRange;->begin:I

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v23, "] end ["

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p5

    iget v0, v0, Lcom/cooliris/media/IndexRange;->end:I

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v23, "] firstVisibleSlotIndex ["

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v23, "] lastVisibleSlotIndex ["

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v23, "]"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_242
    .catchall {:try_start_1de .. :try_end_242} :catchall_278

    .line 325
    :try_start_242
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/cooliris/media/GridCameraManager;->mGridLayer:Lcom/cooliris/media/GridLayer;

    if-eqz v6, :cond_285

    .line 326
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/cooliris/media/GridCameraManager;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v6}, Lcom/cooliris/media/GridLayer;->getState()I

    move-result v6

    if-eqz v6, :cond_25d

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/cooliris/media/GridCameraManager;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v6}, Lcom/cooliris/media/GridLayer;->getState()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_11e

    .line 328
    :cond_25d
    const-string v6, "GridManager"

    const-string v7, "mGridLayer.STATE_MEDIA_SETS  mGridLayer.STATE_GRID_VIE"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/cooliris/media/GridCameraManager;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v6}, Lcom/cooliris/media/GridLayer;->getGridInputProcessor()Lcom/cooliris/media/GridInputProcessor;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/cooliris/media/GridInputProcessor;->constrainCamera(Z)V
    :try_end_270
    .catchall {:try_start_242 .. :try_end_270} :catchall_278
    .catch Ljava/lang/NullPointerException; {:try_start_242 .. :try_end_270} :catch_272

    goto/16 :goto_11e

    .line 336
    :catch_272
    move-exception v11

    .line 337
    .local v11, e:Ljava/lang/NullPointerException;
    :try_start_273
    invoke-virtual {v11}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_11e

    .line 341
    .end local v11           #e:Ljava/lang/NullPointerException;
    :catchall_278
    move-exception v6

    monitor-exit p5
    :try_end_27a
    .catchall {:try_start_273 .. :try_end_27a} :catchall_278

    :try_start_27a
    throw v6
    :try_end_27b
    .catchall {:try_start_27a .. :try_end_27b} :catchall_27b
    .catch Ljava/lang/Exception; {:try_start_27a .. :try_end_27b} :catch_1c7

    .line 345
    .end local v8           #buffer:I
    .end local v13           #index:I
    :catchall_27b
    move-exception v6

    invoke-virtual/range {v20 .. v21}, Lcom/cooliris/media/Pool;->delete(Ljava/lang/Object;)V

    .line 346
    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Lcom/cooliris/media/Pool;->delete(Ljava/lang/Object;)V

    throw v6

    .line 333
    .restart local v8       #buffer:I
    .restart local v13       #index:I
    :cond_285
    :try_start_285
    const-string v6, "GridCameraManager"

    const-string v7, "computeVisibleRange outBufferedVisibleRange :mGridLayer is null "

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28c
    .catchall {:try_start_285 .. :try_end_28c} :catchall_278
    .catch Ljava/lang/NullPointerException; {:try_start_285 .. :try_end_28c} :catch_272

    goto/16 :goto_11e
.end method

.method public constrainCameraForSlot(Lcom/cooliris/media/LayoutInterface;ILcom/cooliris/media/Vector3f;FF)Z
    .registers 26
    .parameter "layout"
    .parameter "slotIndex"
    .parameter "deltaAnchorPositionIn"
    .parameter "currentFocusItemWidth"
    .parameter "currentFocusItemHeight"

    .prologue
    .line 114
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cooliris/media/GridCameraManager;->mCamera:Lcom/cooliris/media/GridCamera;

    .line 115
    .local v4, camera:Lcom/cooliris/media/GridCamera;
    sget-object v11, Lcom/cooliris/media/GridCameraManager;->sPool:Lcom/cooliris/media/Pool;

    .line 116
    .local v11, pool:Lcom/cooliris/media/Pool;,"Lcom/cooliris/media/Pool<Lcom/cooliris/media/Vector3f;>;"
    const/4 v13, 0x0

    .line 117
    .local v13, retVal:Z
    monitor-enter v4

    .line 118
    :try_start_8
    invoke-virtual {v11}, Lcom/cooliris/media/Pool;->create()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/cooliris/media/Vector3f;

    .line 119
    .local v12, position:Lcom/cooliris/media/Vector3f;
    invoke-virtual {v11}, Lcom/cooliris/media/Pool;->create()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cooliris/media/Vector3f;

    .line 120
    .local v5, deltaAnchorPosition:Lcom/cooliris/media/Vector3f;
    invoke-virtual {v11}, Lcom/cooliris/media/Pool;->create()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/cooliris/media/Vector3f;

    .line 121
    .local v14, topLeft:Lcom/cooliris/media/Vector3f;
    invoke-virtual {v11}, Lcom/cooliris/media/Pool;->create()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cooliris/media/Vector3f;

    .line 122
    .local v3, bottomRight:Lcom/cooliris/media/Vector3f;
    invoke-virtual {v11}, Lcom/cooliris/media/Pool;->create()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/cooliris/media/Vector3f;

    .line 123
    .local v10, imgTopLeft:Lcom/cooliris/media/Vector3f;
    invoke-virtual {v11}, Lcom/cooliris/media/Pool;->create()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/cooliris/media/Vector3f;
    :try_end_2c
    .catchall {:try_start_8 .. :try_end_2c} :catchall_1ff

    .line 126
    .local v9, imgBottomRight:Lcom/cooliris/media/Vector3f;
    if-ltz p2, :cond_188

    .line 127
    :try_start_2e
    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Lcom/cooliris/media/Vector3f;->set(Lcom/cooliris/media/Vector3f;)V

    .line 128
    move/from16 v0, p2

    move-object/from16 v1, p1

    invoke-static {v0, v4, v1, v5, v12}, Lcom/cooliris/media/GridCameraManager;->getSlotPositionForSlotIndex(ILcom/cooliris/media/GridCamera;Lcom/cooliris/media/LayoutInterface;Lcom/cooliris/media/Vector3f;Lcom/cooliris/media/Vector3f;)V

    .line 130
    iget v0, v12, Lcom/cooliris/media/Vector3f;->x:F

    move/from16 v17, v0

    iget v0, v4, Lcom/cooliris/media/GridCamera;->mOneByScale:F

    move/from16 v18, v0

    mul-float v17, v17, v18

    move/from16 v0, v17

    iput v0, v12, Lcom/cooliris/media/Vector3f;->x:F

    .line 131
    const/16 v17, 0x0

    move/from16 v0, v17

    iput v0, v12, Lcom/cooliris/media/Vector3f;->y:F

    .line 132
    const/high16 v17, 0x4000

    div-float v16, p4, v17

    .line 133
    .local v16, width:F
    const/high16 v17, 0x4000

    div-float v8, p5, v17

    .line 134
    .local v8, height:F
    iget v0, v12, Lcom/cooliris/media/Vector3f;->x:F

    move/from16 v17, v0

    sub-float v17, v17, v16

    iget v0, v12, Lcom/cooliris/media/Vector3f;->y:F

    move/from16 v18, v0

    sub-float v18, v18, v8

    const/16 v19, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v10, v0, v1, v2}, Lcom/cooliris/media/Vector3f;->set(FFF)V

    .line 135
    iget v0, v12, Lcom/cooliris/media/Vector3f;->x:F

    move/from16 v17, v0

    add-float v17, v17, v16

    iget v0, v12, Lcom/cooliris/media/Vector3f;->y:F

    move/from16 v18, v0

    add-float v18, v18, v8

    const/16 v19, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v9, v0, v1, v2}, Lcom/cooliris/media/Vector3f;->set(FFF)V

    .line 136
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v4, v0, v1, v2, v14}, Lcom/cooliris/media/GridCamera;->convertToCameraSpace(FFFLcom/cooliris/media/Vector3f;)V

    .line 137
    iget v0, v4, Lcom/cooliris/media/GridCamera;->mWidth:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    iget v0, v4, Lcom/cooliris/media/GridCamera;->mHeight:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/cooliris/media/GridCamera;->convertToCameraSpace(FFFLcom/cooliris/media/Vector3f;)V

    .line 140
    const/high16 v17, 0x4000

    move/from16 v0, v17

    iput v0, v4, Lcom/cooliris/media/GridCamera;->mConvergenceSpeed:F

    .line 141
    const/16 v17, 0x0

    move/from16 v0, v17

    iput v0, v4, Lcom/cooliris/media/GridCamera;->mFriction:F

    .line 143
    iget v0, v14, Lcom/cooliris/media/Vector3f;->x:F

    move/from16 v17, v0

    iget v0, v10, Lcom/cooliris/media/Vector3f;->x:F

    move/from16 v18, v0

    sub-float v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/cooliris/media/GridCameraManager;->mLeftExtent:F

    .line 144
    iget v0, v3, Lcom/cooliris/media/Vector3f;->x:F

    move/from16 v17, v0

    iget v0, v9, Lcom/cooliris/media/Vector3f;->x:F

    move/from16 v18, v0

    sub-float v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/cooliris/media/GridCameraManager;->mRightExtent:F

    .line 146
    iget v0, v3, Lcom/cooliris/media/Vector3f;->x:F

    move/from16 v17, v0

    iget v0, v14, Lcom/cooliris/media/Vector3f;->x:F

    move/from16 v18, v0

    sub-float v17, v17, v18

    iget v0, v9, Lcom/cooliris/media/Vector3f;->x:F

    move/from16 v18, v0

    iget v0, v10, Lcom/cooliris/media/Vector3f;->x:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    cmpl-float v17, v17, v18

    if-lez v17, :cond_19c

    .line 147
    iget v0, v3, Lcom/cooliris/media/Vector3f;->x:F

    move/from16 v17, v0

    iget v0, v14, Lcom/cooliris/media/Vector3f;->x:F

    move/from16 v18, v0

    add-float v17, v17, v18

    const/high16 v18, 0x4000

    div-float v17, v17, v18

    iget v0, v9, Lcom/cooliris/media/Vector3f;->x:F

    move/from16 v18, v0

    iget v0, v10, Lcom/cooliris/media/Vector3f;->x:F

    move/from16 v19, v0

    add-float v18, v18, v19

    const/high16 v19, 0x4000

    div-float v18, v18, v19

    sub-float v7, v17, v18

    .line 149
    .local v7, hCenterExtent:F
    neg-float v0, v7

    move/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v4, v0, v1, v2}, Lcom/cooliris/media/GridCamera;->moveBy(FFF)V

    .line 161
    .end local v7           #hCenterExtent:F
    :cond_122
    :goto_122
    iget v0, v14, Lcom/cooliris/media/Vector3f;->y:F

    move/from16 v17, v0

    iget v0, v10, Lcom/cooliris/media/Vector3f;->y:F

    move/from16 v18, v0

    sub-float v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/cooliris/media/GridCameraManager;->mTopExtent:F

    .line 162
    iget v0, v3, Lcom/cooliris/media/Vector3f;->y:F

    move/from16 v17, v0

    iget v0, v9, Lcom/cooliris/media/Vector3f;->y:F

    move/from16 v18, v0

    sub-float v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/cooliris/media/GridCameraManager;->mBottomExtent:F

    .line 164
    iget v0, v3, Lcom/cooliris/media/Vector3f;->y:F

    move/from16 v17, v0

    iget v0, v14, Lcom/cooliris/media/Vector3f;->y:F

    move/from16 v18, v0

    sub-float v17, v17, v18

    iget v0, v9, Lcom/cooliris/media/Vector3f;->y:F

    move/from16 v18, v0

    iget v0, v10, Lcom/cooliris/media/Vector3f;->y:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    cmpl-float v17, v17, v18

    if-lez v17, :cond_202

    .line 165
    iget v0, v3, Lcom/cooliris/media/Vector3f;->y:F

    move/from16 v17, v0

    iget v0, v14, Lcom/cooliris/media/Vector3f;->y:F

    move/from16 v18, v0

    add-float v17, v17, v18

    const/high16 v18, 0x4000

    div-float v17, v17, v18

    iget v0, v9, Lcom/cooliris/media/Vector3f;->y:F

    move/from16 v18, v0

    iget v0, v10, Lcom/cooliris/media/Vector3f;->y:F

    move/from16 v19, v0

    add-float v18, v18, v19

    const/high16 v19, 0x4000

    div-float v18, v18, v19

    sub-float v15, v17, v18

    .line 167
    .local v15, vCenterExtent:F
    const/16 v17, 0x0

    neg-float v0, v15

    move/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v4, v0, v1, v2}, Lcom/cooliris/media/GridCamera;->moveBy(FFF)V
    :try_end_188
    .catchall {:try_start_2e .. :try_end_188} :catchall_24c
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_188} :catch_1e8

    .line 180
    .end local v8           #height:F
    .end local v15           #vCenterExtent:F
    .end local v16           #width:F
    :cond_188
    :goto_188
    :try_start_188
    invoke-virtual {v11, v12}, Lcom/cooliris/media/Pool;->delete(Ljava/lang/Object;)V

    .line 181
    invoke-virtual {v11, v5}, Lcom/cooliris/media/Pool;->delete(Ljava/lang/Object;)V

    .line 182
    invoke-virtual {v11, v14}, Lcom/cooliris/media/Pool;->delete(Ljava/lang/Object;)V

    .line 183
    invoke-virtual {v11, v3}, Lcom/cooliris/media/Pool;->delete(Ljava/lang/Object;)V

    .line 184
    invoke-virtual {v11, v10}, Lcom/cooliris/media/Pool;->delete(Ljava/lang/Object;)V

    .line 185
    invoke-virtual {v11, v9}, Lcom/cooliris/media/Pool;->delete(Ljava/lang/Object;)V

    .line 187
    :goto_19a
    monitor-exit v4
    :try_end_19b
    .catchall {:try_start_188 .. :try_end_19b} :catchall_1ff

    .line 188
    return v13

    .line 151
    .restart local v8       #height:F
    .restart local v16       #width:F
    :cond_19c
    :try_start_19c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cooliris/media/GridCameraManager;->mLeftExtent:F

    move/from16 v17, v0

    const/16 v18, 0x0

    cmpg-float v17, v17, v18

    if-gtz v17, :cond_1c1

    .line 152
    const/4 v13, 0x1

    .line 153
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cooliris/media/GridCameraManager;->mLeftExtent:F

    move/from16 v17, v0

    move/from16 v0, v17

    neg-float v0, v0

    move/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v4, v0, v1, v2}, Lcom/cooliris/media/GridCamera;->moveBy(FFF)V

    .line 155
    :cond_1c1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cooliris/media/GridCameraManager;->mRightExtent:F

    move/from16 v17, v0

    const/16 v18, 0x0

    cmpl-float v17, v17, v18

    if-ltz v17, :cond_122

    .line 156
    const/4 v13, 0x1

    .line 157
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cooliris/media/GridCameraManager;->mRightExtent:F

    move/from16 v17, v0

    move/from16 v0, v17

    neg-float v0, v0

    move/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v4, v0, v1, v2}, Lcom/cooliris/media/GridCamera;->moveBy(FFF)V
    :try_end_1e6
    .catchall {:try_start_19c .. :try_end_1e6} :catchall_24c
    .catch Ljava/lang/Exception; {:try_start_19c .. :try_end_1e6} :catch_1e8

    goto/16 :goto_122

    .line 177
    .end local v8           #height:F
    .end local v16           #width:F
    :catch_1e8
    move-exception v6

    .line 178
    .local v6, e:Ljava/lang/Exception;
    :try_start_1e9
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1ec
    .catchall {:try_start_1e9 .. :try_end_1ec} :catchall_24c

    .line 180
    :try_start_1ec
    invoke-virtual {v11, v12}, Lcom/cooliris/media/Pool;->delete(Ljava/lang/Object;)V

    .line 181
    invoke-virtual {v11, v5}, Lcom/cooliris/media/Pool;->delete(Ljava/lang/Object;)V

    .line 182
    invoke-virtual {v11, v14}, Lcom/cooliris/media/Pool;->delete(Ljava/lang/Object;)V

    .line 183
    invoke-virtual {v11, v3}, Lcom/cooliris/media/Pool;->delete(Ljava/lang/Object;)V

    .line 184
    invoke-virtual {v11, v10}, Lcom/cooliris/media/Pool;->delete(Ljava/lang/Object;)V

    .line 185
    invoke-virtual {v11, v9}, Lcom/cooliris/media/Pool;->delete(Ljava/lang/Object;)V

    goto :goto_19a

    .line 187
    .end local v3           #bottomRight:Lcom/cooliris/media/Vector3f;
    .end local v5           #deltaAnchorPosition:Lcom/cooliris/media/Vector3f;
    .end local v6           #e:Ljava/lang/Exception;
    .end local v9           #imgBottomRight:Lcom/cooliris/media/Vector3f;
    .end local v10           #imgTopLeft:Lcom/cooliris/media/Vector3f;
    .end local v12           #position:Lcom/cooliris/media/Vector3f;
    .end local v14           #topLeft:Lcom/cooliris/media/Vector3f;
    :catchall_1ff
    move-exception v17

    monitor-exit v4
    :try_end_201
    .catchall {:try_start_1ec .. :try_end_201} :catchall_1ff

    throw v17

    .line 169
    .restart local v3       #bottomRight:Lcom/cooliris/media/Vector3f;
    .restart local v5       #deltaAnchorPosition:Lcom/cooliris/media/Vector3f;
    .restart local v8       #height:F
    .restart local v9       #imgBottomRight:Lcom/cooliris/media/Vector3f;
    .restart local v10       #imgTopLeft:Lcom/cooliris/media/Vector3f;
    .restart local v12       #position:Lcom/cooliris/media/Vector3f;
    .restart local v14       #topLeft:Lcom/cooliris/media/Vector3f;
    .restart local v16       #width:F
    :cond_202
    :try_start_202
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cooliris/media/GridCameraManager;->mTopExtent:F

    move/from16 v17, v0

    const/16 v18, 0x0

    cmpg-float v17, v17, v18

    if-gez v17, :cond_226

    .line 170
    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cooliris/media/GridCameraManager;->mTopExtent:F

    move/from16 v18, v0

    move/from16 v0, v18

    neg-float v0, v0

    move/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v4, v0, v1, v2}, Lcom/cooliris/media/GridCamera;->moveBy(FFF)V

    .line 172
    :cond_226
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cooliris/media/GridCameraManager;->mBottomExtent:F

    move/from16 v17, v0

    const/16 v18, 0x0

    cmpl-float v17, v17, v18

    if-lez v17, :cond_188

    .line 173
    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cooliris/media/GridCameraManager;->mBottomExtent:F

    move/from16 v18, v0

    move/from16 v0, v18

    neg-float v0, v0

    move/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v4, v0, v1, v2}, Lcom/cooliris/media/GridCamera;->moveBy(FFF)V
    :try_end_24a
    .catchall {:try_start_202 .. :try_end_24a} :catchall_24c
    .catch Ljava/lang/Exception; {:try_start_202 .. :try_end_24a} :catch_1e8

    goto/16 :goto_188

    .line 180
    .end local v8           #height:F
    .end local v16           #width:F
    :catchall_24c
    move-exception v17

    :try_start_24d
    invoke-virtual {v11, v12}, Lcom/cooliris/media/Pool;->delete(Ljava/lang/Object;)V

    .line 181
    invoke-virtual {v11, v5}, Lcom/cooliris/media/Pool;->delete(Ljava/lang/Object;)V

    .line 182
    invoke-virtual {v11, v14}, Lcom/cooliris/media/Pool;->delete(Ljava/lang/Object;)V

    .line 183
    invoke-virtual {v11, v3}, Lcom/cooliris/media/Pool;->delete(Ljava/lang/Object;)V

    .line 184
    invoke-virtual {v11, v10}, Lcom/cooliris/media/Pool;->delete(Ljava/lang/Object;)V

    .line 185
    invoke-virtual {v11, v9}, Lcom/cooliris/media/Pool;->delete(Ljava/lang/Object;)V

    throw v17
    :try_end_260
    .catchall {:try_start_24d .. :try_end_260} :catchall_1ff
.end method

.method getBorder()I
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 382
    const/4 v0, 0x0

    .line 384
    .local v0, border:I
    iget v1, p0, Lcom/cooliris/media/GridCameraManager;->mLeftExtent:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_a

    .line 385
    or-int/lit8 v0, v0, 0x2

    .line 387
    :cond_a
    iget v1, p0, Lcom/cooliris/media/GridCameraManager;->mRightExtent:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_12

    .line 388
    or-int/lit8 v0, v0, 0x4

    .line 390
    :cond_12
    iget v1, p0, Lcom/cooliris/media/GridCameraManager;->mTopExtent:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1a

    .line 391
    or-int/lit8 v0, v0, 0x1

    .line 393
    :cond_1a
    iget v1, p0, Lcom/cooliris/media/GridCameraManager;->mBottomExtent:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_22

    .line 394
    or-int/lit8 v0, v0, 0x8

    .line 397
    :cond_22
    return v0
.end method

.method public setLayer(Lcom/cooliris/media/GridLayer;)V
    .registers 2
    .parameter "Grid"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/cooliris/media/GridCameraManager;->mGridLayer:Lcom/cooliris/media/GridLayer;

    .line 53
    return-void
.end method
