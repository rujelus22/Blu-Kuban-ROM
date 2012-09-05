.class public Lcom/sec/android/app/selftestmode/TspGridModeTest$MyView;
.super Landroid/view/View;
.source "TspGridModeTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/selftestmode/TspGridModeTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyView"
.end annotation


# instance fields
.field private isDrawArea:[[Z

.field private isTouchDown:Z

.field private mClickPaint:Landroid/graphics/Paint;

.field private mLineBitmap:Landroid/graphics/Bitmap;

.field private mLineCanvas:Landroid/graphics/Canvas;

.field private mLinePaint:Landroid/graphics/Paint;

.field private mMatrixBitmap:Landroid/graphics/Bitmap;

.field private mMatrixCanvas:Landroid/graphics/Canvas;

.field private mPreTouchedX:F

.field private mPreTouchedY:F

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mTouchedX:F

.field private mTouchedY:F

.field final synthetic this$0:Lcom/sec/android/app/selftestmode/TspGridModeTest;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/selftestmode/TspGridModeTest;Landroid/content/Context;)V
    .registers 6
    .parameter
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 139
    iput-object p1, p0, Lcom/sec/android/app/selftestmode/TspGridModeTest$MyView;->this$0:Lcom/sec/android/app/selftestmode/TspGridModeTest;

    .line 141
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 113
    iput v0, p0, Lcom/sec/android/app/selftestmode/TspGridModeTest$MyView;->mPreTouchedX:F

    .line 115
    iput v0, p0, Lcom/sec/android/app/selftestmode/TspGridModeTest$MyView;->mPreTouchedY:F

    .line 117
    iput v0, p0, Lcom/sec/android/app/selftestmode/TspGridModeTest$MyView;->mTouchedX:F

    .line 119
    iput v0, p0, Lcom/sec/android/app/selftestmode/TspGridModeTest$MyView;->mTouchedY:F

    .line 143
    invoke-virtual {p1}, Lcom/sec/android/app/selftestmode/TspGridModeTest;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/selftestmode/TspGridModeTest$MyView;->mScreenWidth:I

    .line 145
    invoke-virtual {p1}, Lcom/sec/android/app/selftestmode/TspGridModeTest;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/selftestmode/TspGridModeTest$MyView;->mScreenHeight:I

    .line 147
    iget v0, p0, Lcom/sec/android/app/selftestmode/TspGridModeTest$MyView;->mScreenWidth:I

    iget v1, p0, Lcom/sec/android/app/selftestmode/TspGridModeTest$MyView;->mScreenHeight:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/selftestmode/TspGridModeTest$MyView;->mMatrixBitmap:Landroid/graphics/Bitmap;

    .line 149
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/sec/android/app/selftestmode/TspGridModeTest$MyView;->mMatrixBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/sec/android/app/selftestmode/TspGridModeTest$MyView;->mMatrixCanvas:Landroid/graphics/Canvas;

    .line 151
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/TspGridModeTest$MyView;->mMatrixCanvas:Landroid/graphics/Canvas;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 153
    iget v0, p0, Lcom/sec/android/app/selftestmode/TspGridModeTest$MyView;->mScreenWidth:I

    iget v1, p0, Lcom/sec/android/app/selftestmode/TspGridModeTest$MyView;->mScreenHeight:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/selftestmode/TspGridModeTest$MyView;->mLineBitmap:Landroid/graphics/Bitmap;

    .line 155
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/sec/android/app/selftestmode/TspGridModeTest$MyView;->mLineBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/sec/android/app/selftestmode/TspGridModeTest$MyView;->mLineCanvas:Landroid/graphics/Canvas;

    .line 157
    const/16 v0, 0x9

    const/16 v1, 0xd

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, Lcom/sec/android/app/selftestmode/TspGridModeTest$MyView;->isDrawArea:[[Z

    .line 159
    invoke-direct {p0}, Lcom/sec/android/app/selftestmode/TspGridModeTest$MyView;->setPaint()V

    .line 161
    invoke-direct {p0}, Lcom/sec/android/app/selftestmode/TspGridModeTest$MyView;->initRect()V

    .line 163
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/selftestmode/TspGridModeTest$MyView;->isTouchDown:Z

    .line 165
    return-void
.end method

.method private drawLine(FFFF)V
    .registers 15
    .parameter "preX"
    .parameter "preY"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 311
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/TspGridModeTest$MyView;->mLineCanvas:Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/sec/android/app/selftestmode/TspGridModeTest$MyView;->mLinePaint:Landroid/graphics/Paint;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 313
    const/4 v8, 0x0

    .local v8, lowX:I
    const/4 v9, 0x0

    .local v9, lowY:I
    const/4 v6, 0x0

    .local v6, highX:I
    const/4 v7, 0x0

    .line 315
    .local v7, highY:I
    cmpl-float v0, p1, p3

    if-ltz v0, :cond_2c

    .line 317
    float-to-int v6, p1

    .line 319
    float-to-int v8, p3

    .line 329
    :goto_15
    cmpl-float v0, p2, p4

    if-ltz v0, :cond_2f

    .line 331
    float-to-int v7, p2

    .line 333
    float-to-int v9, p4

    .line 343
    :goto_1b
    new-instance v0, Landroid/graphics/Rect;

    add-int/lit8 v1, v8, -0x6

    add-int/lit8 v2, v9, -0x6

    add-int/lit8 v3, v6, 0x6

    add-int/lit8 v4, v7, 0x6

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/selftestmode/TspGridModeTest$MyView;->invalidate(Landroid/graphics/Rect;)V

    .line 345
    return-void

    .line 323
    :cond_2c
    float-to-int v6, p3

    .line 325
    float-to-int v8, p1

    goto :goto_15

    .line 337
    :cond_2f
    float-to-int v7, p4

    .line 339
    float-to-int v9, p2

    goto :goto_1b
.end method

.method private drawPoint(FF)V
    .registers 8
    .parameter "x"
    .parameter "y"

    .prologue
    .line 351
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/TspGridModeTest$MyView;->mLineCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/sec/android/app/selftestmode/TspGridModeTest$MyView;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, p2, v1}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 353
    new-instance v0, Landroid/graphics/Rect;

    float-to-int v1, p1

    add-int/lit8 v1, v1, -0x6

    float-to-int v2, p2

    add-int/lit8 v2, v2, -0x6

    float-to-int v3, p1

    add-int/lit8 v3, v3, 0x6

    float-to-int v4, p2

    add-int/lit8 v4, v4, 0x6

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/selftestmode/TspGridModeTest$MyView;->invalidate(Landroid/graphics/Rect;)V

    .line 355
    return-void
.end method

.method private drawRect(FFLandroid/graphics/Paint;)V
    .registers 16
    .parameter "x"
    .parameter "y"
    .parameter "paint"

    .prologue
    .line 401
    iget v0, p0, Lcom/sec/android/app/selftestmode/TspGridModeTest$MyView;->mScreenHeight:I

    int-to-float v0, v0

    const/high16 v1, 0x4150

    div-float v8, v0, v1

    .line 403
    .local v8, col_height:F
    iget v0, p0, Lcom/sec/android/app/selftestmode/TspGridModeTest$MyView;->mScreenWidth:I

    int-to-float v0, v0

    const/high16 v1, 0x4110

    div-float v9, v0, v1

    .line 405
    .local v9, col_width:F
    div-float v0, p1, v9

    float-to-int v10, v0

    .line 407
    .local v10, countX:I
    div-float v0, p2, v8

    float-to-int v11, v0

    .line 409
    .local v11, countY:I
    int-to-float v0, v10

    mul-float v6, v9, v0

    .line 411
    .local v6, ColX:F
    int-to-float v0, v11

    mul-float v7, v8, v0

    .line 415
    .local v7, ColY:F
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/TspGridModeTest$MyView;->isDrawArea:[[Z

    aget-object v0, v0, v10

    aget-boolean v0, v0, v11

    if-nez v0, :cond_5d

    .line 417
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/TspGridModeTest$MyView;->isDrawArea:[[Z

    aget-object v0, v0, v10

    const/4 v1, 0x1

    aput-boolean v1, v0, v11

    .line 419
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/TspGridModeTest$MyView;->mMatrixCanvas:Landroid/graphics/Canvas;

    float-to-int v1, v6

    add-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    float-to-int v2, v7

    add-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    add-float v3, v6, v9

    float-to-int v3, v3

    int-to-float v3, v3

    add-float v4, v7, v8

    float-to-int v4, v4

    int-to-float v4, v4

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 421
    new-instance v0, Landroid/graphics/Rect;

    const/high16 v1, 0x3f80

    sub-float v1, v6, v1

    float-to-int v1, v1

    const/high16 v2, 0x3f80

    sub-float v2, v7, v2

    float-to-int v2, v2

    add-float v3, v6, v9

    const/high16 v4, 0x3f80

    add-float/2addr v3, v4

    float-to-int v3, v3

    add-float v4, v7, v8

    const/high16 v5, 0x3f80

    add-float/2addr v4, v5

    float-to-int v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/selftestmode/TspGridModeTest$MyView;->invalidate(Landroid/graphics/Rect;)V

    .line 425
    :cond_5d
    return-void
.end method

.method private initRect()V
    .registers 13

    .prologue
    .line 361
    iget v0, p0, Lcom/sec/android/app/selftestmode/TspGridModeTest$MyView;->mScreenHeight:I

    int-to-float v0, v0

    const/high16 v1, 0x4150

    div-float v8, v0, v1

    .line 363
    .local v8, col_height:F
    iget v0, p0, Lcom/sec/android/app/selftestmode/TspGridModeTest$MyView;->mScreenWidth:I

    int-to-float v0, v0

    const/high16 v1, 0x4110

    div-float v9, v0, v1

    .line 365
    .local v9, col_width:F
    const/4 v6, 0x0

    .line 367
    .local v6, ColX:I
    const/4 v7, 0x0

    .line 371
    .local v7, ColY:I
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 373
    .local v5, mRectPaint:Landroid/graphics/Paint;
    const/high16 v0, -0x100

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 377
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1b
    const/16 v0, 0xd

    if-ge v10, v0, :cond_4d

    .line 379
    int-to-float v0, v10

    mul-float/2addr v0, v8

    float-to-int v7, v0

    .line 381
    const/4 v11, 0x0

    .local v11, j:I
    :goto_23
    const/16 v0, 0x9

    if-ge v11, v0, :cond_4a

    .line 383
    int-to-float v0, v11

    mul-float/2addr v0, v9

    float-to-int v6, v0

    .line 385
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/TspGridModeTest$MyView;->mMatrixCanvas:Landroid/graphics/Canvas;

    int-to-float v1, v6

    int-to-float v2, v7

    iget v3, p0, Lcom/sec/android/app/selftestmode/TspGridModeTest$MyView;->mScreenWidth:I

    int-to-float v3, v3

    int-to-float v4, v7

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 387
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/TspGridModeTest$MyView;->mMatrixCanvas:Landroid/graphics/Canvas;

    int-to-float v1, v6

    int-to-float v2, v7

    int-to-float v3, v6

    iget v4, p0, Lcom/sec/android/app/selftestmode/TspGridModeTest$MyView;->mScreenHeight:I

    int-to-float v4, v4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 389
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/TspGridModeTest$MyView;->isDrawArea:[[Z

    aget-object v0, v0, v11

    const/4 v1, 0x0

    aput-boolean v1, v0, v10

    .line 381
    add-int/lit8 v11, v11, 0x1

    goto :goto_23

    .line 377
    :cond_4a
    add-int/lit8 v10, v10, 0x1

    goto :goto_1b

    .line 395
    .end local v11           #j:I
    :cond_4d
    return-void
.end method

.method private setPaint()V
    .registers 5

    .prologue
    const/4 v2, 0x1

    const/high16 v3, -0x100

    .line 171
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/selftestmode/TspGridModeTest$MyView;->mLinePaint:Landroid/graphics/Paint;

    .line 173
    iget-object v1, p0, Lcom/sec/android/app/selftestmode/TspGridModeTest$MyView;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 175
    iget-object v1, p0, Lcom/sec/android/app/selftestmode/TspGridModeTest$MyView;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 177
    iget-object v1, p0, Lcom/sec/android/app/selftestmode/TspGridModeTest$MyView;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 179
    iget-object v1, p0, Lcom/sec/android/app/selftestmode/TspGridModeTest$MyView;->mLinePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 181
    iget-object v1, p0, Lcom/sec/android/app/selftestmode/TspGridModeTest$MyView;->mLinePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 183
    iget-object v1, p0, Lcom/sec/android/app/selftestmode/TspGridModeTest$MyView;->mLinePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 185
    iget-object v1, p0, Lcom/sec/android/app/selftestmode/TspGridModeTest$MyView;->mLinePaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40a0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 187
    new-instance v0, Landroid/graphics/DashPathEffect;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_62

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    .line 189
    .local v0, e:Landroid/graphics/PathEffect;
    iget-object v1, p0, Lcom/sec/android/app/selftestmode/TspGridModeTest$MyView;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 191
    iget-object v1, p0, Lcom/sec/android/app/selftestmode/TspGridModeTest$MyView;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 193
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/selftestmode/TspGridModeTest$MyView;->mClickPaint:Landroid/graphics/Paint;

    .line 195
    iget-object v1, p0, Lcom/sec/android/app/selftestmode/TspGridModeTest$MyView;->mClickPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 197
    iget-object v1, p0, Lcom/sec/android/app/selftestmode/TspGridModeTest$MyView;->mClickPaint:Landroid/graphics/Paint;

    const v2, -0xff0100

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 199
    return-void

    .line 187
    :array_62
    .array-data 0x4
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
    .end array-data
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 5
    .parameter "canvas"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 207
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/TspGridModeTest$MyView;->mMatrixBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 209
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/TspGridModeTest$MyView;->mLineBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 211
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9
    .parameter "event"

    .prologue
    const/4 v6, 0x1

    .line 219
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 221
    .local v0, action:I
    packed-switch v0, :pswitch_data_b6

    .line 303
    :cond_8
    :goto_8
    return v6

    .line 225
    :pswitch_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/sec/android/app/selftestmode/TspGridModeTest$MyView;->mTouchedX:F

    .line 227
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/sec/android/app/selftestmode/TspGridModeTest$MyView;->mTouchedY:F

    .line 229
    iget v2, p0, Lcom/sec/android/app/selftestmode/TspGridModeTest$MyView;->mTouchedX:F

    iget v3, p0, Lcom/sec/android/app/selftestmode/TspGridModeTest$MyView;->mTouchedY:F

    iget-object v4, p0, Lcom/sec/android/app/selftestmode/TspGridModeTest$MyView;->mClickPaint:Landroid/graphics/Paint;

    invoke-direct {p0, v2, v3, v4}, Lcom/sec/android/app/selftestmode/TspGridModeTest$MyView;->drawRect(FFLandroid/graphics/Paint;)V

    .line 231
    iput-boolean v6, p0, Lcom/sec/android/app/selftestmode/TspGridModeTest$MyView;->isTouchDown:Z

    goto :goto_8

    .line 239
    :pswitch_21
    iget-boolean v2, p0, Lcom/sec/android/app/selftestmode/TspGridModeTest$MyView;->isTouchDown:Z

    if-eqz v2, :cond_8

    .line 241
    const/4 v1, 0x0

    .local v1, i:I
    :goto_26
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v2

    if-ge v1, v2, :cond_57

    .line 243
    iget v2, p0, Lcom/sec/android/app/selftestmode/TspGridModeTest$MyView;->mTouchedX:F

    iput v2, p0, Lcom/sec/android/app/selftestmode/TspGridModeTest$MyView;->mPreTouchedX:F

    .line 245
    iget v2, p0, Lcom/sec/android/app/selftestmode/TspGridModeTest$MyView;->mTouchedY:F

    iput v2, p0, Lcom/sec/android/app/selftestmode/TspGridModeTest$MyView;->mPreTouchedY:F

    .line 247
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v2

    iput v2, p0, Lcom/sec/android/app/selftestmode/TspGridModeTest$MyView;->mTouchedX:F

    .line 249
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v2

    iput v2, p0, Lcom/sec/android/app/selftestmode/TspGridModeTest$MyView;->mTouchedY:F

    .line 251
    iget v2, p0, Lcom/sec/android/app/selftestmode/TspGridModeTest$MyView;->mTouchedX:F

    iget v3, p0, Lcom/sec/android/app/selftestmode/TspGridModeTest$MyView;->mTouchedY:F

    iget-object v4, p0, Lcom/sec/android/app/selftestmode/TspGridModeTest$MyView;->mClickPaint:Landroid/graphics/Paint;

    invoke-direct {p0, v2, v3, v4}, Lcom/sec/android/app/selftestmode/TspGridModeTest$MyView;->drawRect(FFLandroid/graphics/Paint;)V

    .line 253
    iget v2, p0, Lcom/sec/android/app/selftestmode/TspGridModeTest$MyView;->mPreTouchedX:F

    iget v3, p0, Lcom/sec/android/app/selftestmode/TspGridModeTest$MyView;->mPreTouchedY:F

    iget v4, p0, Lcom/sec/android/app/selftestmode/TspGridModeTest$MyView;->mTouchedX:F

    iget v5, p0, Lcom/sec/android/app/selftestmode/TspGridModeTest$MyView;->mTouchedY:F

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/sec/android/app/selftestmode/TspGridModeTest$MyView;->drawLine(FFFF)V

    .line 241
    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    .line 257
    :cond_57
    iget v2, p0, Lcom/sec/android/app/selftestmode/TspGridModeTest$MyView;->mTouchedX:F

    iput v2, p0, Lcom/sec/android/app/selftestmode/TspGridModeTest$MyView;->mPreTouchedX:F

    .line 259
    iget v2, p0, Lcom/sec/android/app/selftestmode/TspGridModeTest$MyView;->mTouchedY:F

    iput v2, p0, Lcom/sec/android/app/selftestmode/TspGridModeTest$MyView;->mPreTouchedY:F

    .line 261
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/sec/android/app/selftestmode/TspGridModeTest$MyView;->mTouchedX:F

    .line 263
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/sec/android/app/selftestmode/TspGridModeTest$MyView;->mTouchedY:F

    .line 265
    iget v2, p0, Lcom/sec/android/app/selftestmode/TspGridModeTest$MyView;->mTouchedX:F

    iget v3, p0, Lcom/sec/android/app/selftestmode/TspGridModeTest$MyView;->mTouchedY:F

    iget-object v4, p0, Lcom/sec/android/app/selftestmode/TspGridModeTest$MyView;->mClickPaint:Landroid/graphics/Paint;

    invoke-direct {p0, v2, v3, v4}, Lcom/sec/android/app/selftestmode/TspGridModeTest$MyView;->drawRect(FFLandroid/graphics/Paint;)V

    .line 267
    iget v2, p0, Lcom/sec/android/app/selftestmode/TspGridModeTest$MyView;->mPreTouchedX:F

    iget v3, p0, Lcom/sec/android/app/selftestmode/TspGridModeTest$MyView;->mPreTouchedY:F

    iget v4, p0, Lcom/sec/android/app/selftestmode/TspGridModeTest$MyView;->mTouchedX:F

    iget v5, p0, Lcom/sec/android/app/selftestmode/TspGridModeTest$MyView;->mTouchedY:F

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/sec/android/app/selftestmode/TspGridModeTest$MyView;->drawLine(FFFF)V

    .line 269
    iput-boolean v6, p0, Lcom/sec/android/app/selftestmode/TspGridModeTest$MyView;->isTouchDown:Z

    goto :goto_8

    .line 279
    .end local v1           #i:I
    :pswitch_82
    iget-boolean v2, p0, Lcom/sec/android/app/selftestmode/TspGridModeTest$MyView;->isTouchDown:Z

    if-eqz v2, :cond_8

    .line 281
    iget v2, p0, Lcom/sec/android/app/selftestmode/TspGridModeTest$MyView;->mTouchedX:F

    iput v2, p0, Lcom/sec/android/app/selftestmode/TspGridModeTest$MyView;->mPreTouchedX:F

    .line 283
    iget v2, p0, Lcom/sec/android/app/selftestmode/TspGridModeTest$MyView;->mTouchedY:F

    iput v2, p0, Lcom/sec/android/app/selftestmode/TspGridModeTest$MyView;->mPreTouchedY:F

    .line 285
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/sec/android/app/selftestmode/TspGridModeTest$MyView;->mTouchedX:F

    .line 287
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/sec/android/app/selftestmode/TspGridModeTest$MyView;->mTouchedY:F

    .line 289
    iget v2, p0, Lcom/sec/android/app/selftestmode/TspGridModeTest$MyView;->mPreTouchedX:F

    iget v3, p0, Lcom/sec/android/app/selftestmode/TspGridModeTest$MyView;->mTouchedX:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_b1

    iget v2, p0, Lcom/sec/android/app/selftestmode/TspGridModeTest$MyView;->mPreTouchedY:F

    iget v3, p0, Lcom/sec/android/app/selftestmode/TspGridModeTest$MyView;->mTouchedY:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_b1

    .line 291
    iget v2, p0, Lcom/sec/android/app/selftestmode/TspGridModeTest$MyView;->mTouchedX:F

    iget v3, p0, Lcom/sec/android/app/selftestmode/TspGridModeTest$MyView;->mTouchedY:F

    invoke-direct {p0, v2, v3}, Lcom/sec/android/app/selftestmode/TspGridModeTest$MyView;->drawPoint(FF)V

    .line 295
    :cond_b1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/app/selftestmode/TspGridModeTest$MyView;->isTouchDown:Z

    goto/16 :goto_8

    .line 221
    :pswitch_data_b6
    .packed-switch 0x0
        :pswitch_9
        :pswitch_82
        :pswitch_21
    .end packed-switch
.end method
