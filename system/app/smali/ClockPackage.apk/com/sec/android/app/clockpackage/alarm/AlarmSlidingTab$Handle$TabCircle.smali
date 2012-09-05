.class public Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$TabCircle;
.super Landroid/view/View;
.source "AlarmSlidingTab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TabCircle"
.end annotation


# instance fields
.field private mLinePaint:Landroid/graphics/Paint;

.field private mRadius:F

.field final synthetic this$1:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;Landroid/content/Context;F)V
    .registers 4
    .parameter
    .parameter "context"
    .parameter "radius"

    .prologue
    .line 1355
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$TabCircle;->this$1:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;

    .line 1357
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1359
    invoke-direct {p0, p3}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$TabCircle;->init(F)V

    .line 1361
    return-void
.end method

.method private init(F)V
    .registers 4
    .parameter "radius"

    .prologue
    .line 1387
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$TabCircle;->mLinePaint:Landroid/graphics/Paint;

    .line 1389
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$TabCircle;->mLinePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1391
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$TabCircle;->mLinePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$TabCircle;->this$1:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mCircleColor:I
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->access$1500(Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1393
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$TabCircle;->mLinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1395
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$TabCircle;->this$1:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;

    iget-object v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->mDisplayMetrics:Landroid/util/DisplayMetrics;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->access$200(Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;)Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v1, 0xa0

    if-ne v0, v1, :cond_37

    .line 1396
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$TabCircle;->mLinePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4040

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1401
    :goto_34
    iput p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$TabCircle;->mRadius:F

    .line 1403
    return-void

    .line 1398
    :cond_37
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$TabCircle;->mLinePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40c0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_34
.end method


# virtual methods
.method public isInCircle(FF)Z
    .registers 21
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1409
    const-wide v1, 0x3ff4cccccccccccdL

    .line 1411
    .local v1, ACTIVE_RATIO:D
    const/4 v14, 0x2

    new-array v13, v14, [I

    .line 1412
    .local v13, tmpPos:[I
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$TabCircle;->getLocationOnScreen([I)V

    .line 1414
    const/4 v14, 0x0

    aget v14, v13, v14

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$TabCircle;->getWidth()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    add-int/2addr v14, v15

    int-to-float v7, v14

    .line 1415
    .local v7, pivotX:F
    const/4 v14, 0x1

    aget v14, v13, v14

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$TabCircle;->getHeight()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    add-int/2addr v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$TabCircle;->this$1:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mTopOffset:I
    invoke-static {v15}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->access$1600(Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;)I

    move-result v15

    sub-int/2addr v14, v15

    int-to-float v8, v14

    .line 1417
    .local v8, pivotY:F
    sub-float v14, p1, v7

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    .line 1418
    .local v3, dx:D
    sub-float v14, p2, v8

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    .line 1420
    .local v5, dy:D
    mul-double v14, v3, v3

    mul-double v16, v5, v5

    add-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    .line 1422
    .local v9, posLength:D
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$TabCircle;->mRadius:F

    float-to-double v14, v14

    div-double v11, v9, v14

    .line 1423
    .local v11, ratio:D
    sget-boolean v14, Lcom/sec/android/app/clockpackage/alarm/Alarm;->DEBUG_ENG:Z

    if-eqz v14, :cond_83

    .line 1424
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$TabCircle;->this$1:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;

    iget-object v14, v14, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "isInCircle - x : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " y : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " ratio : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->log(Ljava/lang/String;)V

    .line 1427
    :cond_83
    const-wide v14, 0x3ff4cccccccccccdL

    cmpg-double v14, v11, v14

    if-gez v14, :cond_8e

    .line 1428
    const/4 v14, 0x1

    .line 1430
    :goto_8d
    return v14

    :cond_8e
    const/4 v14, 0x0

    goto :goto_8d
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 6
    .parameter "canvas"

    .prologue
    .line 1439
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$TabCircle;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$TabCircle;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$TabCircle;->mRadius:F

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$TabCircle;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1441
    return-void
.end method

.method public setAlpha(I)V
    .registers 3
    .parameter "alpha"

    .prologue
    .line 1367
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$TabCircle;->mLinePaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_9

    .line 1369
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$TabCircle;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1371
    :cond_9
    return-void
.end method
