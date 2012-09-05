.class public Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;
.super Landroid/widget/ImageView;
.source "WorkspaceView.java"


# instance fields
.field private Angle:I

.field private CenterPt:Landroid/graphics/Point;

.field private ObjectBitmap:Landroid/graphics/Bitmap;

.field private c1:I

.field private c2:I

.field private final color1:I

.field private final color2:I

.field private count:I

.field private current_pt:Landroid/graphics/Point;

.field private dashed_line:Ljava/lang/Thread;

.field private drawbrushanimation:Z

.field private isRunning:Z

.field private mBdrySel:Landroid/graphics/Rect;

.field private mDrawBdry:Landroid/graphics/Rect;

.field private mDrawType:I

.field private mHandler:Landroid/os/Handler;

.field private mImage:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

.field private mMask:Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

.field private mWS:Lcom/sec/android/mimage/photoretouching/WorkSpace;

.field private start_pt:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    const/4 v2, -0x1

    const/high16 v1, -0x100

    .line 41
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 443
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->dashed_line:Ljava/lang/Thread;

    .line 445
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->count:I

    .line 446
    iput v1, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->c1:I

    .line 447
    iput v2, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->c2:I

    .line 448
    iput v1, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->color1:I

    .line 449
    iput v2, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->color2:I

    .line 451
    new-instance v0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView$1;-><init>(Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mHandler:Landroid/os/Handler;

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, -0x1

    const/high16 v1, -0x100

    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 443
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->dashed_line:Ljava/lang/Thread;

    .line 445
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->count:I

    .line 446
    iput v1, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->c1:I

    .line 447
    iput v2, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->c2:I

    .line 448
    iput v1, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->color1:I

    .line 449
    iput v2, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->color2:I

    .line 451
    new-instance v0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView$1;-><init>(Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mHandler:Landroid/os/Handler;

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, -0x1

    const/high16 v1, -0x100

    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 443
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->dashed_line:Ljava/lang/Thread;

    .line 445
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->count:I

    .line 446
    iput v1, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->c1:I

    .line 447
    iput v2, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->c2:I

    .line 448
    iput v1, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->color1:I

    .line 449
    iput v2, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->color2:I

    .line 451
    new-instance v0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView$1;-><init>(Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mHandler:Landroid/os/Handler;

    .line 47
    return-void
.end method

.method static synthetic access$0(Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;)Z
    .registers 2
    .parameter

    .prologue
    .line 444
    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->drawbrushanimation:Z

    return v0
.end method

.method static synthetic access$1(Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;)Z
    .registers 2
    .parameter

    .prologue
    .line 442
    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->isRunning:Z

    return v0
.end method

.method static synthetic access$2(Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 442
    iput-boolean p1, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->isRunning:Z

    return-void
.end method

.method static synthetic access$3(Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;)V
    .registers 1
    .parameter

    .prologue
    .line 495
    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->dashed_line_anim()V

    return-void
.end method

.method private dashed_line_anim()V
    .registers 13

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, -0x1

    const/high16 v8, -0x100

    .line 496
    iput-boolean v11, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->drawbrushanimation:Z

    .line 497
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 499
    .local v3, startTime:J
    :cond_b
    :goto_b
    iget-boolean v5, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->drawbrushanimation:Z

    if-nez v5, :cond_10

    .line 525
    :goto_f
    return-void

    .line 501
    :cond_10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 503
    .local v1, now:J
    sub-long v5, v1, v3

    long-to-float v0, v5

    .line 505
    .local v0, currentMs:F
    const/high16 v5, 0x4348

    cmpl-float v5, v0, v5

    if-lez v5, :cond_b

    .line 507
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mImage:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    if-eqz v5, :cond_25

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mMask:Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

    if-nez v5, :cond_28

    .line 508
    :cond_25
    iput-boolean v10, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->drawbrushanimation:Z

    goto :goto_f

    .line 512
    :cond_28
    iget v5, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->count:I

    if-nez v5, :cond_45

    .line 513
    iput v8, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->c1:I

    .line 514
    iput v9, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->c2:I

    .line 515
    iput v11, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->count:I

    .line 521
    :goto_32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 522
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mHandler:Landroid/os/Handler;

    const v7, 0xd002

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_b

    .line 517
    :cond_45
    iput v9, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->c1:I

    .line 518
    iput v8, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->c2:I

    .line 519
    iput v10, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->count:I

    goto :goto_32
.end method

.method private drawCopyBdry(Landroid/graphics/Canvas;)V
    .registers 25
    .parameter "canvas"

    .prologue
    .line 320
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->CenterPt:Landroid/graphics/Point;

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mDrawBdry:Landroid/graphics/Rect;

    if-nez v2, :cond_d

    .line 384
    :cond_c
    :goto_c
    return-void

    .line 323
    :cond_d
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    .line 325
    .local v13, paint:Landroid/graphics/Paint;
    const/16 v2, -0x7600

    invoke-virtual {v13, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 326
    const/high16 v2, 0x40c0

    invoke-virtual {v13, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 327
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v13, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 329
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 331
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->Angle:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->CenterPt:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->CenterPt:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 333
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->ObjectBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_ab

    .line 335
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->ObjectBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 336
    .local v5, width:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->ObjectBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 337
    .local v6, height:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mDrawBdry:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mDrawBdry:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    add-int/lit8 v20, v2, 0x1

    .line 338
    .local v20, resizeWidth:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mDrawBdry:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mDrawBdry:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    add-int/lit8 v19, v2, 0x1

    .line 339
    .local v19, resizeHeight:I
    move/from16 v0, v20

    int-to-float v2, v0

    int-to-float v3, v5

    div-float v22, v2, v3

    .line 340
    .local v22, scaleWidth:F
    move/from16 v0, v19

    int-to-float v2, v0

    int-to-float v3, v6

    div-float v21, v2, v3

    .line 342
    .local v21, scaleHeight:F
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 343
    .local v7, matrix:Landroid/graphics/Matrix;
    move/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 345
    const/16 v18, 0x0

    .line 347
    .local v18, resizeBitmap:Landroid/graphics/Bitmap;
    :try_start_8a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->ObjectBitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 348
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mDrawBdry:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mDrawBdry:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_ab} :catch_205

    .line 360
    .end local v5           #width:I
    .end local v6           #height:I
    .end local v7           #matrix:Landroid/graphics/Matrix;
    .end local v18           #resizeBitmap:Landroid/graphics/Bitmap;
    .end local v19           #resizeHeight:I
    .end local v20           #resizeWidth:I
    .end local v21           #scaleHeight:F
    .end local v22           #scaleWidth:F
    :cond_ab
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mDrawBdry:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/lit8 v2, v2, -0x2

    int-to-float v9, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mDrawBdry:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v10, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mDrawBdry:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/lit8 v2, v2, 0x2

    int-to-float v11, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mDrawBdry:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v12, v2

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 361
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mDrawBdry:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v9, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mDrawBdry:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/lit8 v2, v2, -0x2

    int-to-float v10, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mDrawBdry:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v11, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mDrawBdry:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v2, v2, 0x2

    int-to-float v12, v2

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 362
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mDrawBdry:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/lit8 v2, v2, 0x2

    int-to-float v9, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mDrawBdry:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mDrawBdry:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/lit8 v2, v2, -0x2

    int-to-float v11, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mDrawBdry:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v12, v2

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 363
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mDrawBdry:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v9, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mDrawBdry:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v2, v2, 0x2

    int-to-float v10, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mDrawBdry:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v11, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mDrawBdry:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/lit8 v2, v2, -0x2

    int-to-float v12, v2

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 366
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200d4

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 367
    .local v14, bm_left:Landroid/graphics/Bitmap;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200d3

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 368
    .local v16, bm_top:Landroid/graphics/Bitmap;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200d7

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 370
    .local v15, bm_rotate:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mDrawBdry:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/lit8 v2, v2, -0x13

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mDrawBdry:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mDrawBdry:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v4

    shr-int/lit8 v3, v3, 0x1

    add-int/lit8 v3, v3, -0x13

    int-to-float v3, v3

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 371
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mDrawBdry:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/lit8 v2, v2, -0x14

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mDrawBdry:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mDrawBdry:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v4

    shr-int/lit8 v3, v3, 0x1

    add-int/lit8 v3, v3, -0x13

    int-to-float v3, v3

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 372
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mDrawBdry:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mDrawBdry:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    shr-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, -0x13

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mDrawBdry:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/lit8 v3, v3, -0x13

    int-to-float v3, v3

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 373
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mDrawBdry:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mDrawBdry:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    shr-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, -0x13

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mDrawBdry:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v3, v3, -0x14

    int-to-float v3, v3

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 374
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mDrawBdry:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/lit8 v2, v2, -0x14

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mDrawBdry:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/lit8 v3, v3, -0x13

    int-to-float v3, v3

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 383
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_c

    .line 350
    .end local v14           #bm_left:Landroid/graphics/Bitmap;
    .end local v15           #bm_rotate:Landroid/graphics/Bitmap;
    .end local v16           #bm_top:Landroid/graphics/Bitmap;
    .restart local v5       #width:I
    .restart local v6       #height:I
    .restart local v7       #matrix:Landroid/graphics/Matrix;
    .restart local v18       #resizeBitmap:Landroid/graphics/Bitmap;
    .restart local v19       #resizeHeight:I
    .restart local v20       #resizeWidth:I
    .restart local v21       #scaleHeight:F
    .restart local v22       #scaleWidth:F
    :catch_205
    move-exception v17

    .line 351
    .local v17, e:Ljava/lang/Exception;
    goto/16 :goto_c
.end method

.method private drawMotionArrows(Landroid/graphics/Canvas;)V
    .registers 14
    .parameter "canvas"

    .prologue
    .line 198
    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mBdrySel:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mBdrySel:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v9

    shr-int/lit8 v8, v8, 0x1

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mImage:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v9}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->left:I

    add-int v0, v8, v9

    .line 199
    .local v0, center_x:I
    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mBdrySel:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mBdrySel:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v9

    shr-int/lit8 v8, v8, 0x1

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mImage:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v9}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->top:I

    add-int v1, v8, v9

    .line 201
    .local v1, center_y:I
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f020020

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/NinePatchDrawable;

    .line 202
    .local v4, np_circle:Landroid/graphics/drawable/NinePatchDrawable;
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f020004

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/NinePatchDrawable;

    .line 204
    .local v3, np_arrow:Landroid/graphics/drawable/NinePatchDrawable;
    iget v8, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mDrawType:I

    packed-switch v8, :pswitch_data_1de

    .line 299
    :goto_49
    return-void

    .line 206
    :pswitch_4a
    add-int/lit8 v8, v0, -0x14

    add-int/lit8 v9, v1, -0x14

    add-int/lit8 v10, v0, 0x14

    add-int/lit8 v11, v1, 0x14

    invoke-virtual {v4, v8, v9, v10, v11}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(IIII)V

    .line 207
    invoke-virtual {v4, p1}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 208
    add-int/lit8 v8, v0, -0x14

    add-int/lit8 v9, v1, -0x5a

    add-int/lit8 v10, v0, 0x14

    add-int/lit8 v11, v1, -0x1e

    invoke-virtual {v3, v8, v9, v10, v11}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(IIII)V

    .line 209
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 211
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 213
    const/high16 v8, 0x4234

    int-to-float v9, v0

    int-to-float v10, v1

    invoke-virtual {p1, v8, v9, v10}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 214
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 215
    const/high16 v8, 0x4234

    int-to-float v9, v0

    int-to-float v10, v1

    invoke-virtual {p1, v8, v9, v10}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 216
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 217
    const/high16 v8, 0x4234

    int-to-float v9, v0

    int-to-float v10, v1

    invoke-virtual {p1, v8, v9, v10}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 218
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 219
    const/high16 v8, 0x4234

    int-to-float v9, v0

    int-to-float v10, v1

    invoke-virtual {p1, v8, v9, v10}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 220
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 221
    const/high16 v8, 0x4234

    int-to-float v9, v0

    int-to-float v10, v1

    invoke-virtual {p1, v8, v9, v10}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 222
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 223
    const/high16 v8, 0x4234

    int-to-float v9, v0

    int-to-float v10, v1

    invoke-virtual {p1, v8, v9, v10}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 224
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 225
    const/high16 v8, 0x4234

    int-to-float v9, v0

    int-to-float v10, v1

    invoke-virtual {p1, v8, v9, v10}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 226
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 228
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_49

    .line 232
    :pswitch_b3
    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->start_pt:Landroid/graphics/Point;

    iget v6, v8, Landroid/graphics/Point;->x:I

    .line 233
    .local v6, sx:I
    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->start_pt:Landroid/graphics/Point;

    iget v7, v8, Landroid/graphics/Point;->y:I

    .line 234
    .local v7, sy:I
    add-int/lit8 v8, v6, -0x1e

    add-int/lit8 v9, v7, -0x1e

    add-int/lit8 v10, v6, 0x1e

    add-int/lit8 v11, v7, 0x1e

    invoke-virtual {v4, v8, v9, v10, v11}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(IIII)V

    .line 235
    invoke-virtual {v4, p1}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_49

    .line 239
    .end local v6           #sx:I
    .end local v7           #sy:I
    :pswitch_ca
    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->start_pt:Landroid/graphics/Point;

    iget v6, v8, Landroid/graphics/Point;->x:I

    .line 240
    .restart local v6       #sx:I
    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->start_pt:Landroid/graphics/Point;

    iget v7, v8, Landroid/graphics/Point;->y:I

    .line 245
    .restart local v7       #sy:I
    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->current_pt:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    sub-int/2addr v8, v6

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->current_pt:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    sub-int/2addr v9, v6

    mul-int/2addr v8, v9

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->current_pt:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    sub-int/2addr v9, v7

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->current_pt:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->y:I

    sub-int/2addr v10, v7

    mul-int/2addr v9, v10

    add-int/2addr v8, v9

    int-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-int v2, v8

    .line 246
    .local v2, dis:I
    const/16 v8, 0x294

    if-le v2, v8, :cond_f5

    .line 247
    const/16 v2, 0x294

    .line 249
    :cond_f5
    add-int/lit8 v8, v6, -0x14

    sub-int v9, v7, v2

    add-int/lit8 v10, v6, 0x14

    invoke-virtual {v3, v8, v9, v10, v7}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(IIII)V

    .line 251
    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->current_pt:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->start_pt:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->current_pt:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->start_pt:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->y:I

    sub-int/2addr v9, v10

    int-to-float v9, v9

    div-float v5, v8, v9

    .line 253
    .local v5, ratio:F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 255
    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->current_pt:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    if-ne v8, v7, :cond_13a

    .line 256
    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->current_pt:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    if-le v8, v6, :cond_132

    .line 257
    const/high16 v8, 0x42b4

    int-to-float v9, v6

    int-to-float v10, v7

    invoke-virtual {p1, v8, v9, v10}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 287
    :cond_12a
    :goto_12a
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 289
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_49

    .line 259
    :cond_132
    const/high16 v8, 0x4387

    int-to-float v9, v6

    int-to-float v10, v7

    invoke-virtual {p1, v8, v9, v10}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto :goto_12a

    .line 261
    :cond_13a
    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->current_pt:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    if-ge v8, v7, :cond_189

    .line 262
    float-to-double v8, v5

    const-wide v10, -0x3ffcb020c49ba5e3L

    cmpg-double v8, v8, v10

    if-gez v8, :cond_152

    .line 263
    const/high16 v8, 0x42b4

    int-to-float v9, v6

    int-to-float v10, v7

    invoke-virtual {p1, v8, v9, v10}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto :goto_12a

    .line 264
    :cond_152
    float-to-double v8, v5

    const-wide v10, -0x4025810624dd2f1bL

    cmpg-double v8, v8, v10

    if-gez v8, :cond_164

    .line 265
    const/high16 v8, 0x4234

    int-to-float v9, v6

    int-to-float v10, v7

    invoke-virtual {p1, v8, v9, v10}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto :goto_12a

    .line 266
    :cond_164
    float-to-double v8, v5

    const-wide v10, 0x3fda7ef9db22d0e5L

    cmpg-double v8, v8, v10

    if-ltz v8, :cond_12a

    .line 268
    float-to-double v8, v5

    const-wide v10, 0x40034fdf3b645a1dL

    cmpg-double v8, v8, v10

    if-gez v8, :cond_181

    .line 269
    const v8, 0x439d8000

    int-to-float v9, v6

    int-to-float v10, v7

    invoke-virtual {p1, v8, v9, v10}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto :goto_12a

    .line 271
    :cond_181
    const/high16 v8, 0x4387

    int-to-float v9, v6

    int-to-float v10, v7

    invoke-virtual {p1, v8, v9, v10}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto :goto_12a

    .line 274
    :cond_189
    float-to-double v8, v5

    const-wide v10, -0x3ffcb020c49ba5e3L

    cmpg-double v8, v8, v10

    if-gez v8, :cond_19b

    .line 275
    const/high16 v8, 0x4387

    int-to-float v9, v6

    int-to-float v10, v7

    invoke-virtual {p1, v8, v9, v10}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto :goto_12a

    .line 276
    :cond_19b
    float-to-double v8, v5

    const-wide v10, -0x4025810624dd2f1bL

    cmpg-double v8, v8, v10

    if-gez v8, :cond_1ae

    .line 277
    const/high16 v8, 0x4361

    int-to-float v9, v6

    int-to-float v10, v7

    invoke-virtual {p1, v8, v9, v10}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto/16 :goto_12a

    .line 278
    :cond_1ae
    float-to-double v8, v5

    const-wide v10, 0x3fda7ef9db22d0e5L

    cmpg-double v8, v8, v10

    if-gez v8, :cond_1c1

    .line 279
    const/high16 v8, 0x4334

    int-to-float v9, v6

    int-to-float v10, v7

    invoke-virtual {p1, v8, v9, v10}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto/16 :goto_12a

    .line 280
    :cond_1c1
    float-to-double v8, v5

    const-wide v10, 0x40034fdf3b645a1dL

    cmpg-double v8, v8, v10

    if-gez v8, :cond_1d4

    .line 281
    const/high16 v8, 0x4307

    int-to-float v9, v6

    int-to-float v10, v7

    invoke-virtual {p1, v8, v9, v10}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto/16 :goto_12a

    .line 283
    :cond_1d4
    const/high16 v8, 0x42b4

    int-to-float v9, v6

    int-to-float v10, v7

    invoke-virtual {p1, v8, v9, v10}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto/16 :goto_12a

    .line 204
    nop

    :pswitch_data_1de
    .packed-switch 0x0
        :pswitch_4a
        :pswitch_b3
        :pswitch_ca
    .end packed-switch
.end method

.method private drawWarpBdry(Landroid/graphics/Canvas;)V
    .registers 11
    .parameter "canvas"

    .prologue
    const/4 v8, 0x0

    .line 420
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 421
    .local v5, paint:Landroid/graphics/Paint;
    const/16 v0, -0x7600

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 422
    const/high16 v0, 0x40c0

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 423
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 425
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mDrawBdry:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v1, v0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mDrawBdry:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v2, v0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mDrawBdry:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v3, v0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mDrawBdry:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 426
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mDrawBdry:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v1, v0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mDrawBdry:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v2, v0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mDrawBdry:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v3, v0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mDrawBdry:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 427
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mDrawBdry:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v1, v0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mDrawBdry:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v2, v0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mDrawBdry:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v3, v0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mDrawBdry:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 428
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mDrawBdry:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v1, v0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mDrawBdry:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v2, v0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mDrawBdry:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v3, v0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mDrawBdry:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 431
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200d4

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 432
    .local v6, bm_left:Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200d3

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 434
    .local v7, bm_top:Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mDrawBdry:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, -0x13

    int-to-float v0, v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mDrawBdry:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mDrawBdry:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, -0x13

    int-to-float v1, v1

    invoke-virtual {p1, v6, v0, v1, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 435
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mDrawBdry:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, -0x14

    int-to-float v0, v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mDrawBdry:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mDrawBdry:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, -0x13

    int-to-float v1, v1

    invoke-virtual {p1, v6, v0, v1, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 436
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mDrawBdry:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mDrawBdry:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, -0x13

    int-to-float v0, v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mDrawBdry:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/lit8 v1, v1, -0x13

    int-to-float v1, v1

    invoke-virtual {p1, v7, v0, v1, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 437
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mDrawBdry:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mDrawBdry:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, -0x13

    int-to-float v0, v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mDrawBdry:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v1, v1, -0x14

    int-to-float v1, v1

    invoke-virtual {p1, v7, v0, v1, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 439
    return-void
.end method

.method private onUpdateCanvasBitmap()Z
    .registers 12

    .prologue
    const/4 v0, 0x0

    .line 528
    const/4 v9, 0x0

    .line 530
    .local v9, result:Z
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mImage:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    if-nez v1, :cond_7

    .line 546
    :cond_6
    :goto_6
    return v0

    .line 531
    :cond_7
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mImage:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 533
    new-instance v8, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mImage:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v8, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 535
    .local v8, drawroi:Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mImage:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    if-eqz v1, :cond_6e

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mMask:Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

    if-eqz v1, :cond_6e

    .line 536
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mImage:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->c1:I

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->c2:I

    invoke-virtual {p0, v1, v2, v3, v8}, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->drawImageWithMaskContour(Lcom/sec/android/mimage/photoretouching/common/ImageInfo;IILandroid/graphics/Rect;)Z

    move-result v9

    .line 540
    :cond_2c
    :goto_2c
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mImage:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getDrawBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 541
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mImage:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    if-eqz v0, :cond_6c

    .line 542
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mImage:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getDrawBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mImage:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasBuff()[I

    move-result-object v1

    .line 543
    iget v2, v8, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mImage:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasWidth()I

    move-result v3

    mul-int/2addr v2, v3

    iget v3, v8, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mImage:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasWidth()I

    move-result v3

    .line 544
    iget v4, v8, Landroid/graphics/Rect;->left:I

    iget v5, v8, Landroid/graphics/Rect;->top:I

    iget v6, v8, Landroid/graphics/Rect;->right:I

    iget v7, v8, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x1

    iget v7, v8, Landroid/graphics/Rect;->bottom:I

    iget v10, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v10

    add-int/lit8 v7, v7, 0x1

    .line 542
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    :cond_6c
    move v0, v9

    .line 546
    goto :goto_6

    .line 537
    :cond_6e
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mImage:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    if-eqz v1, :cond_2c

    .line 538
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mImage:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {p0, v1, v8}, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->drawImage(Lcom/sec/android/mimage/photoretouching/common/ImageInfo;Landroid/graphics/Rect;)Z

    move-result v9

    goto :goto_2c
.end method


# virtual methods
.method public Destroy()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 80
    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mImage:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    .line 81
    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mMask:Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

    .line 82
    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mWS:Lcom/sec/android/mimage/photoretouching/WorkSpace;

    .line 84
    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mDrawBdry:Landroid/graphics/Rect;

    .line 85
    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->start_pt:Landroid/graphics/Point;

    .line 86
    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->current_pt:Landroid/graphics/Point;

    .line 88
    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->ObjectBitmap:Landroid/graphics/Bitmap;

    .line 89
    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->CenterPt:Landroid/graphics/Point;

    .line 91
    return-void
.end method

.method public drawCropBdry(Landroid/graphics/Canvas;)V
    .registers 11
    .parameter "canvas"

    .prologue
    const/4 v8, 0x0

    .line 394
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 396
    .local v5, paint:Landroid/graphics/Paint;
    const/16 v0, -0x7600

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 397
    const/high16 v0, 0x40c0

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 398
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 400
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mDrawBdry:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v1, v0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mDrawBdry:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v2, v0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mDrawBdry:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v3, v0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mDrawBdry:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 401
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mDrawBdry:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v1, v0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mDrawBdry:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v2, v0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mDrawBdry:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v3, v0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mDrawBdry:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 402
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mDrawBdry:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v1, v0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mDrawBdry:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v2, v0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mDrawBdry:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v3, v0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mDrawBdry:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 403
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mDrawBdry:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v1, v0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mDrawBdry:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v2, v0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mDrawBdry:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v3, v0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mDrawBdry:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 406
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200d4

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 407
    .local v6, bm_left:Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200d3

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 409
    .local v7, bm_top:Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mDrawBdry:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, -0x13

    int-to-float v0, v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mDrawBdry:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mDrawBdry:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, -0x13

    int-to-float v1, v1

    invoke-virtual {p1, v6, v0, v1, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 410
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mDrawBdry:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, -0x14

    int-to-float v0, v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mDrawBdry:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mDrawBdry:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, -0x13

    int-to-float v1, v1

    invoke-virtual {p1, v6, v0, v1, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 411
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mDrawBdry:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mDrawBdry:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, -0x13

    int-to-float v0, v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mDrawBdry:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/lit8 v1, v1, -0x13

    int-to-float v1, v1

    invoke-virtual {p1, v7, v0, v1, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 412
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mDrawBdry:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mDrawBdry:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, -0x13

    int-to-float v0, v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mDrawBdry:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v1, v1, -0x14

    int-to-float v1, v1

    invoke-virtual {p1, v7, v0, v1, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 413
    return-void
.end method

.method protected drawImage(Lcom/sec/android/mimage/photoretouching/common/ImageInfo;Landroid/graphics/Rect;)Z
    .registers 10
    .parameter "info"
    .parameter "drawroi"

    .prologue
    .line 555
    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasBuff()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasHeight()I

    move-result v2

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSBuff()[I

    move-result-object v3

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v4

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSHeight()I

    move-result v5

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->native_drawSmallImage([III[IIILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method protected drawImageWithMaskContour(Lcom/sec/android/mimage/photoretouching/common/ImageInfo;IILandroid/graphics/Rect;)Z
    .registers 15
    .parameter "info"
    .parameter "color"
    .parameter "color2"
    .parameter "drawroi"

    .prologue
    .line 551
    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasBuff()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasHeight()I

    move-result v2

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSOutBuff()[I

    move-result-object v3

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v4

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSHeight()I

    move-result v5

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mMask:Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->getSBuff(Z)[B

    move-result-object v6

    move v7, p2

    move v8, p3

    move-object v9, p4

    invoke-static/range {v0 .. v9}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->native_drawSmallImageWithMaskContour([III[III[BIILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public endAnim()V
    .registers 2

    .prologue
    .line 487
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->drawbrushanimation:Z

    .line 488
    :cond_3
    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->isRunning:Z

    if-nez v0, :cond_3

    .line 489
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->dashed_line:Ljava/lang/Thread;

    if-eqz v0, :cond_10

    .line 490
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->dashed_line:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 492
    :cond_10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->dashed_line:Ljava/lang/Thread;

    .line 493
    return-void
.end method

.method public getDrawType()I
    .registers 2

    .prologue
    .line 95
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mDrawType:I

    return v0
.end method

.method public init(Lcom/sec/android/mimage/photoretouching/common/ImageInfo;Lcom/sec/android/mimage/photoretouching/mask/MaskManager;Lcom/sec/android/mimage/photoretouching/WorkSpace;)V
    .registers 9
    .parameter "ii"
    .parameter "m"
    .parameter "w"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 56
    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mImage:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    .line 57
    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mMask:Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

    .line 58
    iput-object p3, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mWS:Lcom/sec/android/mimage/photoretouching/WorkSpace;

    .line 60
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mMask:Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->getObjroi()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mBdrySel:Landroid/graphics/Rect;

    .line 61
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mBdrySel:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mImage:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getScale()F

    move-result v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 62
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mBdrySel:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mImage:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getScale()F

    move-result v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 63
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mBdrySel:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mImage:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getScale()F

    move-result v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 64
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mBdrySel:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mImage:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getScale()F

    move-result v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 66
    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mDrawBdry:Landroid/graphics/Rect;

    .line 67
    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->start_pt:Landroid/graphics/Point;

    .line 68
    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->current_pt:Landroid/graphics/Point;

    .line 70
    iput v4, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mDrawType:I

    .line 72
    iput v4, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->Angle:I

    .line 73
    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->ObjectBitmap:Landroid/graphics/Bitmap;

    .line 74
    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->CenterPt:Landroid/graphics/Point;

    .line 76
    return-void
.end method

.method public invalidate(Landroid/graphics/Rect;)V
    .registers 6
    .parameter "dirty"

    .prologue
    .line 169
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    add-int/lit8 v2, v2, 0x1

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    invoke-super {p0, v0, v1, v2, v3}, Landroid/widget/ImageView;->invalidate(IIII)V

    .line 170
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 3
    .parameter "canvas"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mWS:Lcom/sec/android/mimage/photoretouching/WorkSpace;

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/WorkSpace;->mAction:I

    packed-switch v0, :pswitch_data_46

    .line 158
    :try_start_7
    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->onUpdateCanvasBitmap()Z

    .line 159
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_d} :catch_44

    .line 165
    :goto_d
    return-void

    .line 111
    :pswitch_e
    :try_start_e
    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->onUpdateCanvasBitmap()Z

    .line 112
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 113
    invoke-direct {p0, p1}, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->drawMotionArrows(Landroid/graphics/Canvas;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_17} :catch_18

    goto :goto_d

    .line 114
    :catch_18
    move-exception v0

    goto :goto_d

    .line 121
    :pswitch_1a
    :try_start_1a
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 122
    invoke-direct {p0, p1}, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->drawCopyBdry(Landroid/graphics/Canvas;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_20} :catch_21

    goto :goto_d

    .line 123
    :catch_21
    move-exception v0

    goto :goto_d

    .line 129
    :pswitch_23
    :try_start_23
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 130
    invoke-direct {p0, p1}, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->drawWarpBdry(Landroid/graphics/Canvas;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_29} :catch_2a

    goto :goto_d

    .line 131
    :catch_2a
    move-exception v0

    goto :goto_d

    .line 137
    :pswitch_2c
    :try_start_2c
    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->onUpdateCanvasBitmap()Z

    .line 138
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_32} :catch_33

    goto :goto_d

    .line 139
    :catch_33
    move-exception v0

    goto :goto_d

    .line 144
    :pswitch_35
    :try_start_35
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_38} :catch_39

    goto :goto_d

    .line 145
    :catch_39
    move-exception v0

    goto :goto_d

    .line 150
    :pswitch_3b
    :try_start_3b
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 151
    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->drawCropBdry(Landroid/graphics/Canvas;)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_41} :catch_42

    goto :goto_d

    .line 152
    :catch_42
    move-exception v0

    goto :goto_d

    .line 160
    :catch_44
    move-exception v0

    goto :goto_d

    .line 105
    :pswitch_data_46
    .packed-switch 0x6
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_1a
        :pswitch_1a
        :pswitch_23
        :pswitch_2c
        :pswitch_35
        :pswitch_3b
    .end packed-switch
.end method

.method public setAngle(I)V
    .registers 2
    .parameter "angle"

    .prologue
    .line 310
    iput p1, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->Angle:I

    .line 311
    return-void
.end method

.method public setCropBdry(Landroid/graphics/Rect;I)V
    .registers 3
    .parameter "bdry"
    .parameter "t"

    .prologue
    .line 387
    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mDrawBdry:Landroid/graphics/Rect;

    .line 388
    iput p2, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mDrawType:I

    .line 389
    return-void
.end method

.method public setDrawArrow(FFI)V
    .registers 7
    .parameter "x"
    .parameter "y"
    .parameter "type"

    .prologue
    const/4 v1, 0x0

    .line 174
    iput p3, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mDrawType:I

    .line 176
    packed-switch p3, :pswitch_data_30

    .line 188
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->start_pt:Landroid/graphics/Point;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Point;->set(II)V

    .line 189
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->current_pt:Landroid/graphics/Point;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Point;->set(II)V

    .line 193
    :goto_10
    return-void

    .line 178
    :pswitch_11
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->start_pt:Landroid/graphics/Point;

    .line 179
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->current_pt:Landroid/graphics/Point;

    goto :goto_10

    .line 182
    :pswitch_20
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->start_pt:Landroid/graphics/Point;

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    goto :goto_10

    .line 185
    :pswitch_28
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->current_pt:Landroid/graphics/Point;

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    goto :goto_10

    .line 176
    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_11
        :pswitch_20
        :pswitch_28
    .end packed-switch
.end method

.method public setDrawBdry(Landroid/graphics/Rect;Landroid/graphics/Point;I)V
    .registers 4
    .parameter "bdry"
    .parameter "center"
    .parameter "t"

    .prologue
    .line 303
    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mDrawBdry:Landroid/graphics/Rect;

    .line 304
    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->CenterPt:Landroid/graphics/Point;

    .line 305
    iput p3, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mDrawType:I

    .line 306
    return-void
.end method

.method public setDrawType(I)V
    .registers 2
    .parameter "mDrawType"

    .prologue
    .line 99
    iput p1, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mDrawType:I

    .line 100
    return-void
.end method

.method public setObjectBitmap(Landroid/graphics/Bitmap;)V
    .registers 2
    .parameter "bmp"

    .prologue
    .line 315
    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->ObjectBitmap:Landroid/graphics/Bitmap;

    .line 316
    return-void
.end method

.method public setWarpBdry(Landroid/graphics/Rect;I)V
    .registers 3
    .parameter "bdry"
    .parameter "t"

    .prologue
    .line 415
    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mDrawBdry:Landroid/graphics/Rect;

    .line 416
    iput p2, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mDrawType:I

    .line 417
    return-void
.end method

.method public startAnim()V
    .registers 2

    .prologue
    .line 462
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mBdrySel:Landroid/graphics/Rect;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mBdrySel:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_14

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->mBdrySel:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-gtz v0, :cond_15

    .line 483
    :cond_14
    :goto_14
    return-void

    .line 465
    :cond_15
    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->drawbrushanimation:Z

    if-nez v0, :cond_14

    .line 467
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->dashed_line:Ljava/lang/Thread;

    if-nez v0, :cond_14

    .line 469
    new-instance v0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView$2;

    invoke-direct {v0, p0}, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView$2;-><init>(Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->dashed_line:Ljava/lang/Thread;

    .line 481
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->dashed_line:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_14
.end method
