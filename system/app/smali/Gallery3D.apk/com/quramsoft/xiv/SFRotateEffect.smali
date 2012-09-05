.class public Lcom/quramsoft/xiv/SFRotateEffect;
.super Ljava/lang/Object;
.source "SFRotateEffect.java"


# static fields
.field private static mAnimationCurve:I

.field private static mEnabled:Z


# instance fields
.field animationDirection:F

.field animationPhase:I

.field animationStartTime:F

.field animationStartTimeInitialized:Z

.field currentAngle:F

.field currentScale:F

.field initialized:Z

.field mEndX:F

.field mEndY:F

.field mScale:F

.field private mSelectedItemAspectRatio:F

.field mStartX:F

.field mStartY:F

.field private mWindowManager:Landroid/view/WindowManager;

.field prevOrientation:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 44
    const/4 v0, 0x3

    sput v0, Lcom/quramsoft/xiv/SFRotateEffect;->mAnimationCurve:I

    .line 46
    const/4 v0, 0x0

    sput-boolean v0, Lcom/quramsoft/xiv/SFRotateEffect;->mEnabled:Z

    .line 23
    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/quramsoft/xiv/SFRotateEffect;->mWindowManager:Landroid/view/WindowManager;

    .line 48
    iput-boolean v2, p0, Lcom/quramsoft/xiv/SFRotateEffect;->initialized:Z

    .line 49
    iput v1, p0, Lcom/quramsoft/xiv/SFRotateEffect;->animationStartTime:F

    .line 51
    iput-boolean v2, p0, Lcom/quramsoft/xiv/SFRotateEffect;->animationStartTimeInitialized:Z

    .line 52
    iput v2, p0, Lcom/quramsoft/xiv/SFRotateEffect;->animationPhase:I

    .line 53
    iput v1, p0, Lcom/quramsoft/xiv/SFRotateEffect;->animationDirection:F

    .line 54
    iput v1, p0, Lcom/quramsoft/xiv/SFRotateEffect;->currentAngle:F

    iput v3, p0, Lcom/quramsoft/xiv/SFRotateEffect;->currentScale:F

    .line 55
    iput v3, p0, Lcom/quramsoft/xiv/SFRotateEffect;->mScale:F

    .line 56
    iput v1, p0, Lcom/quramsoft/xiv/SFRotateEffect;->mStartX:F

    .line 57
    iput v1, p0, Lcom/quramsoft/xiv/SFRotateEffect;->mStartY:F

    .line 58
    iput v1, p0, Lcom/quramsoft/xiv/SFRotateEffect;->mEndX:F

    .line 59
    iput v1, p0, Lcom/quramsoft/xiv/SFRotateEffect;->mEndY:F

    .line 62
    iput v1, p0, Lcom/quramsoft/xiv/SFRotateEffect;->mSelectedItemAspectRatio:F

    .line 23
    return-void
.end method

.method public static setAnimationCurve(I)V
    .registers 1
    .parameter "type"

    .prologue
    .line 280
    sput p0, Lcom/quramsoft/xiv/SFRotateEffect;->mAnimationCurve:I

    .line 281
    return-void
.end method

.method public static smoothEx(F)F
    .registers 11
    .parameter

    .prologue
    const-wide v8, 0x400921fb60000000L

    const/high16 v7, 0x4000

    const-wide/high16 v5, 0x3fe0

    const/4 v1, 0x0

    const/high16 v4, 0x3f80

    .line 285
    .line 286
    sget v0, Lcom/quramsoft/xiv/SFRotateEffect;->mAnimationCurve:I

    packed-switch v0, :pswitch_data_bc

    move v0, v1

    .line 319
    :cond_12
    :goto_12
    return v0

    .line 289
    :pswitch_13
    const/high16 v0, -0x4000

    mul-float/2addr v0, p0

    mul-float/2addr v0, p0

    mul-float/2addr v0, p0

    const/high16 v2, 0x4040

    mul-float/2addr v2, p0

    mul-float/2addr v2, p0

    add-float/2addr v0, v2

    .line 290
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_12

    .line 294
    :pswitch_26
    float-to-double v2, p0

    cmpl-double v0, v2, v5

    if-lez v0, :cond_b9

    sub-float v0, v4, p0

    .line 295
    :goto_2d
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 296
    const/high16 v1, 0x4040

    mul-float/2addr v1, v0

    mul-float v2, v7, v0

    sub-float v2, v4, v2

    mul-float v3, v7, v0

    sub-float v3, v4, v3

    mul-float/2addr v2, v3

    mul-float/2addr v0, v7

    sub-float v0, v4, v0

    mul-float/2addr v0, v2

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v0, v2

    add-float/2addr v0, v1

    sub-float/2addr v0, v4

    .line 298
    float-to-double v1, p0

    cmpl-double v1, v1, v5

    if-lez v1, :cond_12

    sub-float v0, v4, v0

    goto :goto_12

    .line 302
    :pswitch_51
    const v0, 0x40301fc1

    .line 303
    float-to-double v2, p0

    cmpg-double v2, v2, v5

    if-gez v2, :cond_71

    float-to-double v2, p0

    sub-double/2addr v2, v5

    mul-double/2addr v2, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    const v3, 0x40490fdb

    div-float/2addr v2, v3

    sub-float v2, p0, v2

    mul-float/2addr v0, v2

    .line 305
    :goto_68
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_12

    .line 304
    :cond_71
    float-to-double v2, p0

    sub-double/2addr v2, v5

    mul-double/2addr v2, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    const v3, 0x40490fdb

    div-float/2addr v2, v3

    add-float/2addr v2, p0

    sub-float/2addr v2, v4

    mul-float/2addr v0, v2

    add-float/2addr v0, v4

    goto :goto_68

    .line 308
    :pswitch_82
    const-wide v0, 0x4012d97c7f3321d2L

    float-to-double v2, p0

    const-wide v4, 0x400921fb54442d18L

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4000

    div-double/2addr v2, v4

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    goto/16 :goto_12

    .line 311
    :pswitch_99
    mul-float v0, p0, p0

    .line 312
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto/16 :goto_12

    .line 315
    :pswitch_a5
    sub-float v0, v4, p0

    sub-float v2, v4, p0

    mul-float/2addr v0, v2

    sub-float v2, v4, p0

    mul-float/2addr v0, v2

    sub-float v0, v4, v0

    .line 316
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto/16 :goto_12

    :cond_b9
    move v0, p0

    goto/16 :goto_2d

    .line 286
    :pswitch_data_bc
    .packed-switch 0x1
        :pswitch_13
        :pswitch_26
        :pswitch_51
        :pswitch_82
        :pswitch_99
        :pswitch_a5
    .end packed-switch
.end method


# virtual methods
.method public getFitWidth(FII)F
    .registers 9
    .parameter "imgAspect"
    .parameter "viewWidth"
    .parameter "viewHeight"

    .prologue
    .line 173
    if-le p2, p3, :cond_d

    .line 175
    move v2, p1

    .line 176
    .local v2, width:F
    int-to-float v3, p2

    int-to-float v4, p3

    div-float v1, v3, v4

    .line 177
    .local v1, viewNWidth:F
    cmpl-float v3, v2, v1

    if-lez v3, :cond_c

    move v2, v1

    .line 185
    .end local v1           #viewNWidth:F
    :cond_c
    :goto_c
    return v2

    .line 181
    .end local v2           #width:F
    :cond_d
    int-to-float v3, p3

    int-to-float v4, p2

    div-float v0, v3, v4

    .line 182
    .local v0, viewNHeight:F
    const/high16 v3, 0x3f80

    div-float/2addr v3, p1

    cmpl-float v3, v3, v0

    if-lez v3, :cond_1b

    mul-float v2, p1, v0

    .restart local v2       #width:F
    goto :goto_c

    .line 183
    .end local v2           #width:F
    :cond_1b
    const/high16 v2, 0x3f80

    .restart local v2       #width:F
    goto :goto_c
.end method

.method public obtainCamera(Lcom/cooliris/media/RenderView$Lists;)Lcom/cooliris/media/GridCamera;
    .registers 10
    .parameter "sLists"

    .prologue
    const/4 v6, 0x0

    .line 77
    if-nez p1, :cond_4

    .line 96
    :cond_3
    :goto_3
    return-object v6

    .line 80
    :cond_4
    move-object v3, p1

    .line 82
    .local v3, lists:Lcom/cooliris/media/RenderView$Lists;
    iget-object v4, v3, Lcom/cooliris/media/RenderView$Lists;->opaqueList:Ljava/util/ArrayList;

    .line 83
    .local v4, opaqueList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/Layer;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v1, v7, -0x1

    .local v1, i:I
    :goto_d
    if-gez v1, :cond_29

    .line 89
    iget-object v0, v3, Lcom/cooliris/media/RenderView$Lists;->blendedList:Ljava/util/ArrayList;

    .line 90
    .local v0, blendedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/Layer;>;"
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    .local v5, size:I
    :goto_16
    if-eq v1, v5, :cond_3

    .line 91
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cooliris/media/Layer;

    .line 92
    .local v2, layer:Lcom/cooliris/media/Layer;
    instance-of v7, v2, Lcom/cooliris/media/GridLayer;

    if-eqz v7, :cond_3d

    .line 93
    check-cast v2, Lcom/cooliris/media/GridLayer;

    .end local v2           #layer:Lcom/cooliris/media/Layer;
    invoke-virtual {v2}, Lcom/cooliris/media/GridLayer;->getGridCamera()Lcom/cooliris/media/GridCamera;

    move-result-object v6

    goto :goto_3

    .line 84
    .end local v0           #blendedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/Layer;>;"
    .end local v5           #size:I
    :cond_29
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cooliris/media/Layer;

    .line 85
    .restart local v2       #layer:Lcom/cooliris/media/Layer;
    instance-of v7, v2, Lcom/cooliris/media/GridLayer;

    if-eqz v7, :cond_3a

    .line 86
    check-cast v2, Lcom/cooliris/media/GridLayer;

    .end local v2           #layer:Lcom/cooliris/media/Layer;
    invoke-virtual {v2}, Lcom/cooliris/media/GridLayer;->getGridCamera()Lcom/cooliris/media/GridCamera;

    move-result-object v6

    goto :goto_3

    .line 83
    .restart local v2       #layer:Lcom/cooliris/media/Layer;
    :cond_3a
    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    .line 90
    .restart local v0       #blendedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/Layer;>;"
    .restart local v5       #size:I
    :cond_3d
    add-int/lit8 v1, v1, 0x1

    goto :goto_16
.end method

.method public onDrawFrame(Lcom/cooliris/media/RenderView;Lcom/cooliris/media/RootLayer;Ljavax/microedition/khronos/opengles/GL10;Lcom/cooliris/media/RenderView$Lists;II)V
    .registers 24
    .parameter "view"
    .parameter "layer"
    .parameter "gl"
    .parameter "sList"
    .parameter "viewWidth"
    .parameter "viewHeight"

    .prologue
    .line 195
    move-object/from16 v0, p0

    iget v13, v0, Lcom/quramsoft/xiv/SFRotateEffect;->animationPhase:I

    if-eqz v13, :cond_f9

    if-eqz p1, :cond_f9

    if-eqz p4, :cond_f9

    if-eqz p2, :cond_f9

    if-eqz p3, :cond_f9

    .line 197
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/quramsoft/xiv/SFRotateEffect;->obtainCamera(Lcom/cooliris/media/RenderView$Lists;)Lcom/cooliris/media/GridCamera;

    move-result-object v4

    .line 198
    .local v4, camera:Lcom/cooliris/media/GridCamera;
    move-object/from16 v0, p0

    iget v8, v0, Lcom/quramsoft/xiv/SFRotateEffect;->mSelectedItemAspectRatio:F

    .line 199
    .local v8, imgAspect:F
    if-eqz v4, :cond_f9

    .line 201
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/quramsoft/xiv/SFRotateEffect;->animationStartTimeInitialized:Z

    if-nez v13, :cond_88

    .line 203
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    long-to-float v13, v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/quramsoft/xiv/SFRotateEffect;->animationStartTime:F

    .line 204
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/quramsoft/xiv/SFRotateEffect;->animationStartTimeInitialized:Z

    .line 205
    const/high16 v13, 0x3f80

    move-object/from16 v0, p0

    iput v13, v0, Lcom/quramsoft/xiv/SFRotateEffect;->mScale:F

    .line 209
    invoke-virtual {v4}, Lcom/cooliris/media/GridCamera;->commitMoveInZ()V

    .line 211
    const/4 v9, 0x0

    .line 213
    .local v9, isNeedScale:Z
    invoke-virtual/range {p1 .. p1}, Lcom/cooliris/media/RenderView;->getContext()Landroid/content/Context;

    move-result-object v13

    if-eqz v13, :cond_58

    .line 215
    invoke-virtual/range {p1 .. p1}, Lcom/cooliris/media/RenderView;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lcom/cooliris/app/App;->get(Landroid/content/Context;)Lcom/cooliris/app/App;

    move-result-object v3

    .line 216
    .local v3, app:Lcom/cooliris/app/App;
    if-eqz v3, :cond_58

    .line 218
    invoke-virtual {v3}, Lcom/cooliris/app/App;->getGridLayer()Lcom/cooliris/media/GridLayer;

    move-result-object v7

    .line 219
    .local v7, gridLayer:Lcom/cooliris/media/GridLayer;
    if-eqz v7, :cond_58

    .line 221
    invoke-virtual {v7}, Lcom/cooliris/media/GridLayer;->getState()I

    move-result v13

    const/4 v14, 0x2

    if-ne v13, v14, :cond_58

    .line 222
    const/4 v9, 0x1

    .line 227
    .end local v3           #app:Lcom/cooliris/app/App;
    .end local v7           #gridLayer:Lcom/cooliris/media/GridLayer;
    :cond_58
    const/4 v13, 0x0

    cmpl-float v13, v8, v13

    if-eqz v13, :cond_88

    if-eqz v9, :cond_88

    .line 229
    invoke-virtual {v4}, Lcom/cooliris/media/GridCamera;->commitMoveInZ()V

    .line 230
    iget v13, v4, Lcom/cooliris/media/GridCamera;->mFov:F

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/cooliris/media/RenderView;->setFov(F)V

    .line 231
    move-object/from16 v0, p0

    move/from16 v1, p6

    move/from16 v2, p5

    invoke-virtual {v0, v8, v1, v2}, Lcom/quramsoft/xiv/SFRotateEffect;->getFitWidth(FII)F

    move-result v10

    .line 232
    .local v10, prevWidth:F
    move-object/from16 v0, p0

    move/from16 v1, p5

    move/from16 v2, p6

    invoke-virtual {v0, v8, v1, v2}, Lcom/quramsoft/xiv/SFRotateEffect;->getFitWidth(FII)F

    move-result v5

    .line 233
    .local v5, curWidth:F
    move-object/from16 v0, p0

    iget v13, v0, Lcom/quramsoft/xiv/SFRotateEffect;->currentScale:F

    div-float v14, v10, v5

    mul-float/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/quramsoft/xiv/SFRotateEffect;->mScale:F

    .line 237
    .end local v5           #curWidth:F
    .end local v9           #isNeedScale:Z
    .end local v10           #prevWidth:F
    :cond_88
    const/4 v11, 0x0

    .local v11, t:F
    const/4 v12, 0x0

    .line 238
    .local v12, ttt:F
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    long-to-float v6, v13

    .line 239
    .local v6, currentTime:F
    move-object/from16 v0, p0

    iget v13, v0, Lcom/quramsoft/xiv/SFRotateEffect;->animationStartTime:F

    sub-float v13, v6, v13

    const/high16 v14, 0x43c8

    div-float v11, v13, v14

    .line 240
    invoke-static {v11}, Lcom/quramsoft/xiv/SFRotateEffect;->smoothEx(F)F

    move-result v12

    .line 241
    move-object/from16 v0, p0

    iget v13, v0, Lcom/quramsoft/xiv/SFRotateEffect;->animationPhase:I

    packed-switch v13, :pswitch_data_128

    .line 261
    :cond_a4
    :goto_a4
    move-object/from16 v0, p0

    iget v13, v0, Lcom/quramsoft/xiv/SFRotateEffect;->animationPhase:I

    if-eqz v13, :cond_f9

    .line 263
    const/high16 v13, 0x3f80

    sub-float/2addr v13, v12

    move-object/from16 v0, p0

    iget v14, v0, Lcom/quramsoft/xiv/SFRotateEffect;->animationDirection:F

    mul-float/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/quramsoft/xiv/SFRotateEffect;->currentAngle:F

    .line 264
    move-object/from16 v0, p0

    iget v13, v0, Lcom/quramsoft/xiv/SFRotateEffect;->mScale:F

    const/high16 v14, 0x3f80

    sub-float/2addr v14, v12

    mul-float/2addr v13, v14

    add-float/2addr v13, v12

    move-object/from16 v0, p0

    iput v13, v0, Lcom/quramsoft/xiv/SFRotateEffect;->currentScale:F

    .line 266
    iget v13, v4, Lcom/cooliris/media/GridCamera;->mFov:F

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/cooliris/media/RenderView;->setFov(F)V

    .line 267
    const/16 v13, 0x1701

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 268
    move-object/from16 v0, p0

    iget v13, v0, Lcom/quramsoft/xiv/SFRotateEffect;->currentAngle:F

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/high16 v16, 0x3f80

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-interface {v0, v13, v14, v15, v1}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 269
    move-object/from16 v0, p0

    iget v13, v0, Lcom/quramsoft/xiv/SFRotateEffect;->currentScale:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/quramsoft/xiv/SFRotateEffect;->currentScale:F

    const/high16 v15, 0x3f80

    move-object/from16 v0, p3

    invoke-interface {v0, v13, v14, v15}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 270
    const/16 v13, 0x1700

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 272
    invoke-virtual/range {p1 .. p1}, Lcom/cooliris/media/RenderView;->requestRender()V

    .line 276
    .end local v4           #camera:Lcom/cooliris/media/GridCamera;
    .end local v6           #currentTime:F
    .end local v8           #imgAspect:F
    .end local v11           #t:F
    .end local v12           #ttt:F
    :cond_f9
    return-void

    .line 244
    .restart local v4       #camera:Lcom/cooliris/media/GridCamera;
    .restart local v6       #currentTime:F
    .restart local v8       #imgAspect:F
    .restart local v11       #t:F
    .restart local v12       #ttt:F
    :pswitch_fa
    const/high16 v13, 0x3f00

    cmpl-float v13, v11, v13

    if-lez v13, :cond_a4

    .line 246
    const/4 v13, 0x2

    move-object/from16 v0, p0

    iput v13, v0, Lcom/quramsoft/xiv/SFRotateEffect;->animationPhase:I

    goto :goto_a4

    .line 250
    :pswitch_106
    const/high16 v13, 0x3f80

    cmpl-float v13, v11, v13

    if-lez v13, :cond_a4

    .line 252
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/quramsoft/xiv/SFRotateEffect;->currentAngle:F

    .line 253
    const/high16 v13, 0x3f80

    move-object/from16 v0, p0

    iput v13, v0, Lcom/quramsoft/xiv/SFRotateEffect;->currentScale:F

    .line 254
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/quramsoft/xiv/SFRotateEffect;->animationPhase:I

    .line 255
    iget v13, v4, Lcom/cooliris/media/GridCamera;->mFov:F

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/cooliris/media/RenderView;->setFov(F)V

    .line 256
    invoke-virtual/range {p1 .. p1}, Lcom/cooliris/media/RenderView;->requestRender()V

    goto/16 :goto_a4

    .line 241
    :pswitch_data_128
    .packed-switch 0x1
        :pswitch_fa
        :pswitch_106
    .end packed-switch
.end method

.method public onSurfaceChanged()V
    .registers 7

    .prologue
    const/4 v5, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    .line 101
    iget-object v2, p0, Lcom/quramsoft/xiv/SFRotateEffect;->mWindowManager:Landroid/view/WindowManager;

    if-nez v2, :cond_8

    .line 150
    :goto_7
    return-void

    .line 104
    :cond_8
    iget-object v2, p0, Lcom/quramsoft/xiv/SFRotateEffect;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 105
    .local v0, currentOrientation:I
    iget-boolean v2, p0, Lcom/quramsoft/xiv/SFRotateEffect;->initialized:Z

    if-eqz v2, :cond_32

    .line 108
    const/4 v1, 0x0

    .line 110
    .local v1, startAngle:I
    iget v2, p0, Lcom/quramsoft/xiv/SFRotateEffect;->prevOrientation:I

    packed-switch v2, :pswitch_data_60

    .line 137
    :cond_1c
    :goto_1c
    iget v2, p0, Lcom/quramsoft/xiv/SFRotateEffect;->currentAngle:F

    int-to-float v3, v1

    add-float/2addr v2, v3

    iput v2, p0, Lcom/quramsoft/xiv/SFRotateEffect;->animationDirection:F

    .line 138
    iget v2, p0, Lcom/quramsoft/xiv/SFRotateEffect;->animationDirection:F

    iput v2, p0, Lcom/quramsoft/xiv/SFRotateEffect;->currentAngle:F

    .line 140
    iget v2, p0, Lcom/quramsoft/xiv/SFRotateEffect;->animationDirection:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_32

    .line 143
    iput v4, p0, Lcom/quramsoft/xiv/SFRotateEffect;->animationPhase:I

    .line 144
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/quramsoft/xiv/SFRotateEffect;->animationStartTimeInitialized:Z

    .line 148
    .end local v1           #startAngle:I
    :cond_32
    iput v0, p0, Lcom/quramsoft/xiv/SFRotateEffect;->prevOrientation:I

    .line 149
    iput-boolean v4, p0, Lcom/quramsoft/xiv/SFRotateEffect;->initialized:Z

    goto :goto_7

    .line 113
    .restart local v1       #startAngle:I
    :pswitch_37
    if-ne v0, v4, :cond_3c

    .line 114
    const/16 v1, 0x5a

    goto :goto_1c

    .line 115
    :cond_3c
    if-ne v0, v5, :cond_1c

    .line 116
    const/16 v1, -0x5a

    .line 117
    goto :goto_1c

    .line 119
    :pswitch_41
    if-ne v0, v3, :cond_46

    .line 120
    const/16 v1, 0x5a

    goto :goto_1c

    .line 121
    :cond_46
    if-nez v0, :cond_1c

    .line 122
    const/16 v1, -0x5a

    .line 123
    goto :goto_1c

    .line 125
    :pswitch_4b
    if-ne v0, v5, :cond_50

    .line 126
    const/16 v1, 0x5a

    goto :goto_1c

    .line 127
    :cond_50
    if-ne v0, v4, :cond_1c

    .line 128
    const/16 v1, -0x5a

    .line 129
    goto :goto_1c

    .line 131
    :pswitch_55
    if-nez v0, :cond_5a

    .line 132
    const/16 v1, 0x5a

    goto :goto_1c

    .line 133
    :cond_5a
    if-ne v0, v3, :cond_1c

    .line 134
    const/16 v1, -0x5a

    goto :goto_1c

    .line 110
    nop

    :pswitch_data_60
    .packed-switch 0x0
        :pswitch_37
        :pswitch_41
        :pswitch_4b
        :pswitch_55
    .end packed-switch
.end method

.method public saveCurrentRotation()V
    .registers 3

    .prologue
    .line 162
    iget-object v1, p0, Lcom/quramsoft/xiv/SFRotateEffect;->mWindowManager:Landroid/view/WindowManager;

    if-nez v1, :cond_5

    .line 168
    :goto_4
    return-void

    .line 166
    :cond_5
    iget-object v1, p0, Lcom/quramsoft/xiv/SFRotateEffect;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 167
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v1

    iput v1, p0, Lcom/quramsoft/xiv/SFRotateEffect;->prevOrientation:I

    goto :goto_4
.end method

.method public setSelectedItemAspectRatio(F)V
    .registers 2
    .parameter "aspectRatio"

    .prologue
    .line 190
    iput p1, p0, Lcom/quramsoft/xiv/SFRotateEffect;->mSelectedItemAspectRatio:F

    .line 191
    return-void
.end method

.method public setWindowManager(Landroid/view/WindowManager;)V
    .registers 2
    .parameter "windowManager"

    .prologue
    .line 69
    if-nez p1, :cond_3

    .line 73
    :goto_2
    return-void

    .line 72
    :cond_3
    iput-object p1, p0, Lcom/quramsoft/xiv/SFRotateEffect;->mWindowManager:Landroid/view/WindowManager;

    goto :goto_2
.end method
