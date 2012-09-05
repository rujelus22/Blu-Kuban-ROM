.class public Lcom/sec/android/glanimation/TwGLAniShutterTVertex;
.super Lcom/sec/android/glview/TwGLAniVertex;
.source "TwGLAniShutterTVertex.java"


# instance fields
.field protected final INCR_CNT_L:F

.field protected final INCR_CNT_P:F

.field private mPortrait:Z


# direct methods
.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFFZ)V
    .registers 8
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"
    .parameter "portrait"

    .prologue
    .line 38
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLAniVertex;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 32
    const v0, 0x3f35c28f

    iput v0, p0, Lcom/sec/android/glanimation/TwGLAniShutterTVertex;->INCR_CNT_L:F

    .line 33
    const v0, 0x3f2147ae

    iput v0, p0, Lcom/sec/android/glanimation/TwGLAniShutterTVertex;->INCR_CNT_P:F

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glanimation/TwGLAniShutterTVertex;->mPortrait:Z

    .line 40
    iput-boolean p6, p0, Lcom/sec/android/glanimation/TwGLAniShutterTVertex;->mPortrait:Z

    .line 42
    return-void
.end method


# virtual methods
.method protected getDrawRatio()F
    .registers 4

    .prologue
    const/high16 v2, 0x4120

    .line 97
    iget-boolean v0, p0, Lcom/sec/android/glanimation/TwGLAniShutterTVertex;->mPortrait:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1b

    .line 98
    iget v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->mCnt:F

    const v1, 0x3f2147ae

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->mCnt:F

    .line 102
    :goto_f
    iget v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->mCnt:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_24

    .line 103
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->mCnt:F

    .line 104
    const/high16 v0, -0x4000

    .line 107
    :goto_1a
    return v0

    .line 100
    :cond_1b
    iget v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->mCnt:F

    const v1, 0x3f35c28f

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->mCnt:F

    goto :goto_f

    .line 107
    :cond_24
    iget v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->mCnt:F

    div-float/2addr v0, v2

    goto :goto_1a
.end method

.method protected setCustomAnimation(F)V
    .registers 21
    .parameter "ratio"

    .prologue
    .line 46
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glanimation/TwGLAniShutterTVertex;->getLeft()F

    move-result v3

    .line 47
    .local v3, left:F
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glanimation/TwGLAniShutterTVertex;->getTop()F

    move-result v4

    .line 48
    .local v4, top:F
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glanimation/TwGLAniShutterTVertex;->getRight()F

    move-result v16

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glanimation/TwGLAniShutterTVertex;->getLeft()F

    move-result v17

    sub-float v8, v16, v17

    .line 49
    .local v8, width:F
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glanimation/TwGLAniShutterTVertex;->getBottom()F

    move-result v16

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glanimation/TwGLAniShutterTVertex;->getTop()F

    move-result v17

    sub-float v2, v16, v17

    .line 51
    .local v2, height:F
    const/4 v6, 0x0

    .line 52
    .local v6, vPos:I
    const/4 v12, 0x0

    .local v12, y:I
    :goto_1e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/TwGLAniVertex;->GRID_SIZE:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-gt v12, v0, :cond_146

    .line 53
    int-to-float v0, v12

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/TwGLAniVertex;->GRID_SIZE:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v16, v16, v17

    mul-float v14, v16, v2

    .line 54
    .local v14, yStep:F
    const/4 v9, 0x0

    .local v9, x:I
    :goto_3b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/TwGLAniVertex;->GRID_SIZE:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-gt v9, v0, :cond_142

    .line 55
    int-to-float v0, v9

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/TwGLAniVertex;->GRID_SIZE:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v16, v16, v17

    mul-float v11, v16, v8

    .line 57
    .local v11, xStep:F
    const/4 v10, 0x0

    .line 58
    .local v10, xPos:F
    const/4 v13, 0x0

    .line 59
    .local v13, yPos:F
    const/4 v15, 0x0

    .line 60
    .local v15, zPos:F
    const/4 v5, 0x0

    .line 62
    .local v5, vAngle:F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/glanimation/TwGLAniShutterTVertex;->mPortrait:Z

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_ea

    .line 64
    int-to-float v0, v9

    move/from16 v16, v0

    const/high16 v17, 0x42b4

    mul-float v16, v16, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/TwGLAniVertex;->GRID_SIZE:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v5, v16, v17

    .line 66
    const/high16 v16, 0x3f00

    cmpg-float v16, p1, v16

    if-gtz v16, :cond_cb

    .line 67
    mul-float v16, v11, p1

    const/high16 v17, 0x4000

    mul-float v16, v16, v17

    float-to-double v0, v5

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->sin(D)D

    move-result-wide v17

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    mul-float v16, v16, v17

    add-float v10, v3, v16

    .line 71
    :goto_9d
    add-float v13, v4, v14

    .line 86
    :goto_9f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/TwGLAniVertex;->mVertexBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v16, v0

    add-int/lit8 v7, v6, 0x1

    .end local v6           #vPos:I
    .local v7, vPos:I
    move-object/from16 v0, v16

    invoke-virtual {v0, v6, v10}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 87
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/TwGLAniVertex;->mVertexBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v16, v0

    add-int/lit8 v6, v7, 0x1

    .end local v7           #vPos:I
    .restart local v6       #vPos:I
    move-object/from16 v0, v16

    invoke-virtual {v0, v7, v13}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 88
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/TwGLAniVertex;->mVertexBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v16, v0

    add-int/lit8 v7, v6, 0x1

    .end local v6           #vPos:I
    .restart local v7       #vPos:I
    move-object/from16 v0, v16

    invoke-virtual {v0, v6, v15}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 54
    add-int/lit8 v9, v9, 0x1

    move v6, v7

    .end local v7           #vPos:I
    .restart local v6       #vPos:I
    goto/16 :goto_3b

    .line 69
    :cond_cb
    const/high16 v16, 0x4000

    mul-float v16, v16, v11

    const/high16 v17, 0x3f80

    sub-float v17, v17, p1

    mul-float v16, v16, v17

    float-to-double v0, v5

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->sin(D)D

    move-result-wide v17

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    mul-float v16, v16, v17

    add-float v10, v3, v16

    goto :goto_9d

    .line 75
    :cond_ea
    int-to-float v0, v12

    move/from16 v16, v0

    const/high16 v17, 0x42b4

    mul-float v16, v16, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/TwGLAniVertex;->GRID_SIZE:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v5, v16, v17

    .line 77
    add-float v10, v3, v11

    .line 79
    const/high16 v16, 0x3f00

    cmpg-float v16, p1, v16

    if-gtz v16, :cond_122

    .line 80
    mul-float v16, v14, p1

    const/high16 v17, 0x4000

    mul-float v16, v16, v17

    float-to-double v0, v5

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->sin(D)D

    move-result-wide v17

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    mul-float v16, v16, v17

    add-float v13, v4, v16

    goto/16 :goto_9f

    .line 82
    :cond_122
    const/high16 v16, 0x4000

    mul-float v16, v16, v14

    const/high16 v17, 0x3f80

    sub-float v17, v17, p1

    mul-float v16, v16, v17

    float-to-double v0, v5

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->sin(D)D

    move-result-wide v17

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    mul-float v16, v16, v17

    add-float v13, v4, v16

    goto/16 :goto_9f

    .line 52
    .end local v5           #vAngle:F
    .end local v10           #xPos:F
    .end local v11           #xStep:F
    .end local v13           #yPos:F
    .end local v15           #zPos:F
    :cond_142
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1e

    .line 93
    .end local v9           #x:I
    .end local v14           #yStep:F
    :cond_146
    return-void
.end method
