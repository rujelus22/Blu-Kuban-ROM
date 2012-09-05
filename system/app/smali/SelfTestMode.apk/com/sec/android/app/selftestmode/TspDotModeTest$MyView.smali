.class public Lcom/sec/android/app/selftestmode/TspDotModeTest$MyView;
.super Landroid/view/View;
.source "TspDotModeTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/selftestmode/TspDotModeTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyView"
.end annotation


# instance fields
.field private isTouchDown:Z

.field private mCircleBitmap:Landroid/graphics/Bitmap;

.field private mCircleCanvas:Landroid/graphics/Canvas;

.field private mCrossBitmap:Landroid/graphics/Bitmap;

.field private mCrossCanvas:Landroid/graphics/Canvas;

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mTouchedX:F

.field private mTouchedY:F

.field final synthetic this$0:Lcom/sec/android/app/selftestmode/TspDotModeTest;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/selftestmode/TspDotModeTest;Landroid/content/Context;)V
    .registers 6
    .parameter
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 133
    iput-object p1, p0, Lcom/sec/android/app/selftestmode/TspDotModeTest$MyView;->this$0:Lcom/sec/android/app/selftestmode/TspDotModeTest;

    .line 135
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 117
    iput v0, p0, Lcom/sec/android/app/selftestmode/TspDotModeTest$MyView;->mTouchedX:F

    .line 119
    iput v0, p0, Lcom/sec/android/app/selftestmode/TspDotModeTest$MyView;->mTouchedY:F

    .line 137
    invoke-virtual {p1}, Lcom/sec/android/app/selftestmode/TspDotModeTest;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/selftestmode/TspDotModeTest$MyView;->mScreenWidth:I

    .line 139
    invoke-virtual {p1}, Lcom/sec/android/app/selftestmode/TspDotModeTest;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/selftestmode/TspDotModeTest$MyView;->mScreenHeight:I

    .line 141
    iget v0, p0, Lcom/sec/android/app/selftestmode/TspDotModeTest$MyView;->mScreenWidth:I

    iget v1, p0, Lcom/sec/android/app/selftestmode/TspDotModeTest$MyView;->mScreenHeight:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/selftestmode/TspDotModeTest$MyView;->mCircleBitmap:Landroid/graphics/Bitmap;

    .line 143
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/sec/android/app/selftestmode/TspDotModeTest$MyView;->mCircleBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/sec/android/app/selftestmode/TspDotModeTest$MyView;->mCircleCanvas:Landroid/graphics/Canvas;

    .line 145
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/TspDotModeTest$MyView;->mCircleCanvas:Landroid/graphics/Canvas;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 147
    iget v0, p0, Lcom/sec/android/app/selftestmode/TspDotModeTest$MyView;->mScreenWidth:I

    iget v1, p0, Lcom/sec/android/app/selftestmode/TspDotModeTest$MyView;->mScreenHeight:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/selftestmode/TspDotModeTest$MyView;->mCrossBitmap:Landroid/graphics/Bitmap;

    .line 149
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/sec/android/app/selftestmode/TspDotModeTest$MyView;->mCrossBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/sec/android/app/selftestmode/TspDotModeTest$MyView;->mCrossCanvas:Landroid/graphics/Canvas;

    .line 151
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/selftestmode/TspDotModeTest$MyView;->isTouchDown:Z

    .line 153
    return-void
.end method

.method private drawCircle(FFZ)V
    .registers 11
    .parameter "x"
    .parameter "y"
    .parameter "clear"

    .prologue
    const/16 v4, 0xff

    .line 239
    const-string v1, "TspDotModeTest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "drawCicle : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 243
    .local v0, circlePaint:Landroid/graphics/Paint;
    if-eqz p3, :cond_6c

    .line 245
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 253
    :goto_2f
    iget-object v1, p0, Lcom/sec/android/app/selftestmode/TspDotModeTest$MyView;->mCircleCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/sec/android/app/selftestmode/TspDotModeTest$MyView;->this$0:Lcom/sec/android/app/selftestmode/TspDotModeTest;

    #getter for: Lcom/sec/android/app/selftestmode/TspDotModeTest;->mCircleSize:I
    invoke-static {v2}, Lcom/sec/android/app/selftestmode/TspDotModeTest;->access$000(Lcom/sec/android/app/selftestmode/TspDotModeTest;)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, p1, p2, v2, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 255
    new-instance v1, Landroid/graphics/Rect;

    float-to-int v2, p1

    iget-object v3, p0, Lcom/sec/android/app/selftestmode/TspDotModeTest$MyView;->this$0:Lcom/sec/android/app/selftestmode/TspDotModeTest;

    #getter for: Lcom/sec/android/app/selftestmode/TspDotModeTest;->mCircleSize:I
    invoke-static {v3}, Lcom/sec/android/app/selftestmode/TspDotModeTest;->access$000(Lcom/sec/android/app/selftestmode/TspDotModeTest;)I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    float-to-int v3, p2

    iget-object v4, p0, Lcom/sec/android/app/selftestmode/TspDotModeTest$MyView;->this$0:Lcom/sec/android/app/selftestmode/TspDotModeTest;

    #getter for: Lcom/sec/android/app/selftestmode/TspDotModeTest;->mCircleSize:I
    invoke-static {v4}, Lcom/sec/android/app/selftestmode/TspDotModeTest;->access$000(Lcom/sec/android/app/selftestmode/TspDotModeTest;)I

    move-result v4

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    float-to-int v4, p1

    iget-object v5, p0, Lcom/sec/android/app/selftestmode/TspDotModeTest$MyView;->this$0:Lcom/sec/android/app/selftestmode/TspDotModeTest;

    #getter for: Lcom/sec/android/app/selftestmode/TspDotModeTest;->mCircleSize:I
    invoke-static {v5}, Lcom/sec/android/app/selftestmode/TspDotModeTest;->access$000(Lcom/sec/android/app/selftestmode/TspDotModeTest;)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    float-to-int v5, p2

    iget-object v6, p0, Lcom/sec/android/app/selftestmode/TspDotModeTest$MyView;->this$0:Lcom/sec/android/app/selftestmode/TspDotModeTest;

    #getter for: Lcom/sec/android/app/selftestmode/TspDotModeTest;->mCircleSize:I
    invoke-static {v6}, Lcom/sec/android/app/selftestmode/TspDotModeTest;->access$000(Lcom/sec/android/app/selftestmode/TspDotModeTest;)I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/selftestmode/TspDotModeTest$MyView;->invalidate(Landroid/graphics/Rect;)V

    .line 257
    return-void

    .line 249
    :cond_6c
    const/16 v1, 0x64

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v4, v2, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    goto :goto_2f
.end method

.method private drawCross(FF)V
    .registers 11
    .parameter "x"
    .parameter "y"

    .prologue
    const/16 v1, 0xff

    .line 263
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 265
    .local v5, crossPaint:Landroid/graphics/Paint;
    const/4 v0, 0x0

    invoke-static {v1, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 267
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/TspDotModeTest$MyView;->this$0:Lcom/sec/android/app/selftestmode/TspDotModeTest;

    #getter for: Lcom/sec/android/app/selftestmode/TspDotModeTest;->mCrossSize:I
    invoke-static {v0}, Lcom/sec/android/app/selftestmode/TspDotModeTest;->access$100(Lcom/sec/android/app/selftestmode/TspDotModeTest;)I

    move-result v0

    div-int/lit8 v6, v0, 0x2

    .line 269
    .local v6, lineLength:I
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/TspDotModeTest$MyView;->mCrossCanvas:Landroid/graphics/Canvas;

    int-to-float v1, v6

    sub-float v1, p1, v1

    int-to-float v2, v6

    sub-float v2, p2, v2

    int-to-float v3, v6

    add-float/2addr v3, p1

    int-to-float v4, v6

    add-float/2addr v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 271
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/TspDotModeTest$MyView;->mCrossCanvas:Landroid/graphics/Canvas;

    int-to-float v1, v6

    sub-float v1, p1, v1

    int-to-float v2, v6

    add-float/2addr v2, p2

    int-to-float v3, v6

    add-float/2addr v3, p1

    int-to-float v4, v6

    sub-float v4, p2, v4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 273
    new-instance v0, Landroid/graphics/Rect;

    float-to-int v1, p1

    iget-object v2, p0, Lcom/sec/android/app/selftestmode/TspDotModeTest$MyView;->this$0:Lcom/sec/android/app/selftestmode/TspDotModeTest;

    #getter for: Lcom/sec/android/app/selftestmode/TspDotModeTest;->mCircleSize:I
    invoke-static {v2}, Lcom/sec/android/app/selftestmode/TspDotModeTest;->access$000(Lcom/sec/android/app/selftestmode/TspDotModeTest;)I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    float-to-int v2, p2

    iget-object v3, p0, Lcom/sec/android/app/selftestmode/TspDotModeTest$MyView;->this$0:Lcom/sec/android/app/selftestmode/TspDotModeTest;

    #getter for: Lcom/sec/android/app/selftestmode/TspDotModeTest;->mCircleSize:I
    invoke-static {v3}, Lcom/sec/android/app/selftestmode/TspDotModeTest;->access$000(Lcom/sec/android/app/selftestmode/TspDotModeTest;)I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    float-to-int v3, p1

    iget-object v4, p0, Lcom/sec/android/app/selftestmode/TspDotModeTest$MyView;->this$0:Lcom/sec/android/app/selftestmode/TspDotModeTest;

    #getter for: Lcom/sec/android/app/selftestmode/TspDotModeTest;->mCircleSize:I
    invoke-static {v4}, Lcom/sec/android/app/selftestmode/TspDotModeTest;->access$000(Lcom/sec/android/app/selftestmode/TspDotModeTest;)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    float-to-int v4, p2

    iget-object v7, p0, Lcom/sec/android/app/selftestmode/TspDotModeTest$MyView;->this$0:Lcom/sec/android/app/selftestmode/TspDotModeTest;

    #getter for: Lcom/sec/android/app/selftestmode/TspDotModeTest;->mCircleSize:I
    invoke-static {v7}, Lcom/sec/android/app/selftestmode/TspDotModeTest;->access$000(Lcom/sec/android/app/selftestmode/TspDotModeTest;)I

    move-result v7

    add-int/2addr v4, v7

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/selftestmode/TspDotModeTest$MyView;->invalidate(Landroid/graphics/Rect;)V

    .line 275
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 5
    .parameter "canvas"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 161
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/TspDotModeTest$MyView;->mCircleBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 163
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/TspDotModeTest$MyView;->mCrossBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 165
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 173
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 175
    .local v0, action:I
    packed-switch v0, :pswitch_data_62

    .line 231
    :cond_9
    :goto_9
    return v3

    .line 179
    :pswitch_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/sec/android/app/selftestmode/TspDotModeTest$MyView;->mTouchedX:F

    .line 181
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/sec/android/app/selftestmode/TspDotModeTest$MyView;->mTouchedY:F

    .line 183
    iget v1, p0, Lcom/sec/android/app/selftestmode/TspDotModeTest$MyView;->mTouchedX:F

    iget v2, p0, Lcom/sec/android/app/selftestmode/TspDotModeTest$MyView;->mTouchedY:F

    invoke-direct {p0, v1, v2, v4}, Lcom/sec/android/app/selftestmode/TspDotModeTest$MyView;->drawCircle(FFZ)V

    .line 185
    iput-boolean v3, p0, Lcom/sec/android/app/selftestmode/TspDotModeTest$MyView;->isTouchDown:Z

    goto :goto_9

    .line 193
    :pswitch_20
    iget-boolean v1, p0, Lcom/sec/android/app/selftestmode/TspDotModeTest$MyView;->isTouchDown:Z

    if-eqz v1, :cond_9

    .line 195
    iget v1, p0, Lcom/sec/android/app/selftestmode/TspDotModeTest$MyView;->mTouchedX:F

    iget v2, p0, Lcom/sec/android/app/selftestmode/TspDotModeTest$MyView;->mTouchedY:F

    invoke-direct {p0, v1, v2, v3}, Lcom/sec/android/app/selftestmode/TspDotModeTest$MyView;->drawCircle(FFZ)V

    .line 197
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/sec/android/app/selftestmode/TspDotModeTest$MyView;->mTouchedX:F

    .line 199
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/sec/android/app/selftestmode/TspDotModeTest$MyView;->mTouchedY:F

    .line 201
    iget v1, p0, Lcom/sec/android/app/selftestmode/TspDotModeTest$MyView;->mTouchedX:F

    iget v2, p0, Lcom/sec/android/app/selftestmode/TspDotModeTest$MyView;->mTouchedY:F

    invoke-direct {p0, v1, v2, v4}, Lcom/sec/android/app/selftestmode/TspDotModeTest$MyView;->drawCircle(FFZ)V

    .line 203
    iput-boolean v3, p0, Lcom/sec/android/app/selftestmode/TspDotModeTest$MyView;->isTouchDown:Z

    goto :goto_9

    .line 213
    :pswitch_41
    iget-boolean v1, p0, Lcom/sec/android/app/selftestmode/TspDotModeTest$MyView;->isTouchDown:Z

    if-eqz v1, :cond_9

    .line 215
    iget v1, p0, Lcom/sec/android/app/selftestmode/TspDotModeTest$MyView;->mTouchedX:F

    iget v2, p0, Lcom/sec/android/app/selftestmode/TspDotModeTest$MyView;->mTouchedY:F

    invoke-direct {p0, v1, v2, v3}, Lcom/sec/android/app/selftestmode/TspDotModeTest$MyView;->drawCircle(FFZ)V

    .line 217
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/sec/android/app/selftestmode/TspDotModeTest$MyView;->mTouchedX:F

    .line 219
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/sec/android/app/selftestmode/TspDotModeTest$MyView;->mTouchedY:F

    .line 221
    iget v1, p0, Lcom/sec/android/app/selftestmode/TspDotModeTest$MyView;->mTouchedX:F

    iget v2, p0, Lcom/sec/android/app/selftestmode/TspDotModeTest$MyView;->mTouchedY:F

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/selftestmode/TspDotModeTest$MyView;->drawCross(FF)V

    .line 223
    iput-boolean v4, p0, Lcom/sec/android/app/selftestmode/TspDotModeTest$MyView;->isTouchDown:Z

    goto :goto_9

    .line 175
    :pswitch_data_62
    .packed-switch 0x0
        :pswitch_a
        :pswitch_41
        :pswitch_20
    .end packed-switch
.end method
