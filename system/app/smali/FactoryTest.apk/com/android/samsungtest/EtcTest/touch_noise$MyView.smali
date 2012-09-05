.class public Lcom/android/samsungtest/EtcTest/touch_noise$MyView;
.super Landroid/view/View;
.source "touch_noise.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/samsungtest/EtcTest/touch_noise;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyView"
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapPaint:Landroid/graphics/Paint;

.field mCol_height:I

.field mCol_width:I

.field protected mDrawHandler:Landroid/os/Handler;

.field mLcd_height:I

.field mLcd_width:I

.field final synthetic this$0:Lcom/android/samsungtest/EtcTest/touch_noise;


# direct methods
.method public constructor <init>(Lcom/android/samsungtest/EtcTest/touch_noise;Landroid/content/Context;)V
    .registers 7
    .parameter
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 400
    iput-object p1, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    .line 401
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 377
    new-instance v0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView$1;

    invoke-direct {v0, p0}, Lcom/android/samsungtest/EtcTest/touch_noise$MyView$1;-><init>(Lcom/android/samsungtest/EtcTest/touch_noise$MyView;)V

    iput-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->mDrawHandler:Landroid/os/Handler;

    .line 402
    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->lcd_width:I
    invoke-static {p1}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$200(Lcom/android/samsungtest/EtcTest/touch_noise;)I

    move-result v0

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->lcd_height:I
    invoke-static {p1}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$300(Lcom/android/samsungtest/EtcTest/touch_noise;)I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->mBitmap:Landroid/graphics/Bitmap;

    .line 403
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    #setter for: Lcom/android/samsungtest/EtcTest/touch_noise;->mCanvas:Landroid/graphics/Canvas;
    invoke-static {p1, v0}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$402(Lcom/android/samsungtest/EtcTest/touch_noise;Landroid/graphics/Canvas;)Landroid/graphics/Canvas;

    .line 404
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 405
    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->mCanvas:Landroid/graphics/Canvas;
    invoke-static {p1}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$400(Lcom/android/samsungtest/EtcTest/touch_noise;)Landroid/graphics/Canvas;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->mLcd_height:I

    .line 406
    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->mCanvas:Landroid/graphics/Canvas;
    invoke-static {p1}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$400(Lcom/android/samsungtest/EtcTest/touch_noise;)Landroid/graphics/Canvas;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->mLcd_width:I

    .line 407
    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->lcd_height:I
    invoke-static {p1}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$300(Lcom/android/samsungtest/EtcTest/touch_noise;)I

    move-result v0

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->HEIGHT_BASIS:I
    invoke-static {p1}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$500(Lcom/android/samsungtest/EtcTest/touch_noise;)I

    move-result v1

    div-int/2addr v0, v1

    iput v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->mCol_height:I

    .line 408
    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->lcd_width:I
    invoke-static {p1}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$200(Lcom/android/samsungtest/EtcTest/touch_noise;)I

    move-result v0

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->WIDTH_BASIS:I
    invoke-static {p1}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$600(Lcom/android/samsungtest/EtcTest/touch_noise;)I

    move-result v1

    div-int/2addr v0, v1

    iput v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->mCol_width:I

    .line 409
    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->mCanvas:Landroid/graphics/Canvas;
    invoke-static {p1}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$400(Lcom/android/samsungtest/EtcTest/touch_noise;)Landroid/graphics/Canvas;

    move-result-object v0

    iget-object v1, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 410
    invoke-direct {p0}, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->drawSquare()V

    .line 411
    return-void
.end method

.method static synthetic access$100(Lcom/android/samsungtest/EtcTest/touch_noise$MyView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 364
    invoke-direct {p0}, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->drawSquare()V

    return-void
.end method

.method private drawSquare()V
    .registers 16

    .prologue
    const/high16 v14, 0x4040

    const/high16 v13, 0x4080

    const/4 v12, 0x1

    const/4 v11, 0x0

    const/high16 v10, 0x4000

    .line 416
    const/4 v6, 0x0

    .line 417
    .local v6, ColX:I
    const/4 v7, 0x0

    .line 418
    .local v7, ColY:I
    iget-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->mCanvas:Landroid/graphics/Canvas;
    invoke-static {v0}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$400(Lcom/android/samsungtest/EtcTest/touch_noise;)Landroid/graphics/Canvas;

    move-result-object v0

    int-to-float v1, v6

    int-to-float v2, v7

    iget-object v3, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->lcd_width:I
    invoke-static {v3}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$200(Lcom/android/samsungtest/EtcTest/touch_noise;)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->lcd_height:I
    invoke-static {v4}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$300(Lcom/android/samsungtest/EtcTest/touch_noise;)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->mbackgroundPaint:Landroid/graphics/Paint;
    invoke-static {v5}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$700(Lcom/android/samsungtest/EtcTest/touch_noise;)Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 419
    iget-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->mCanvas:Landroid/graphics/Canvas;
    invoke-static {v0}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$400(Lcom/android/samsungtest/EtcTest/touch_noise;)Landroid/graphics/Canvas;

    move-result-object v0

    iget-object v1, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    iget v1, v1, Lcom/android/samsungtest/EtcTest/touch_noise;->col_width:F

    iget-object v2, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    iget v2, v2, Lcom/android/samsungtest/EtcTest/touch_noise;->col_height:F

    iget-object v3, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    iget v3, v3, Lcom/android/samsungtest/EtcTest/touch_noise;->col_width:F

    mul-float/2addr v3, v10

    iget-object v4, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    iget v4, v4, Lcom/android/samsungtest/EtcTest/touch_noise;->col_height:F

    mul-float/2addr v4, v10

    iget-object v5, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->mrectPaint:Landroid/graphics/Paint;
    invoke-static {v5}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$800(Lcom/android/samsungtest/EtcTest/touch_noise;)Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 420
    iget-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->mCanvas:Landroid/graphics/Canvas;
    invoke-static {v0}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$400(Lcom/android/samsungtest/EtcTest/touch_noise;)Landroid/graphics/Canvas;

    move-result-object v0

    iget-object v1, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    iget v1, v1, Lcom/android/samsungtest/EtcTest/touch_noise;->col_width:F

    iget-object v2, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->WIDTH_BASIS:I
    invoke-static {v2}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$600(Lcom/android/samsungtest/EtcTest/touch_noise;)I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    iget v2, v2, Lcom/android/samsungtest/EtcTest/touch_noise;->col_height:F

    iget-object v3, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    iget v3, v3, Lcom/android/samsungtest/EtcTest/touch_noise;->col_width:F

    iget-object v4, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->WIDTH_BASIS:I
    invoke-static {v4}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$600(Lcom/android/samsungtest/EtcTest/touch_noise;)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    iget v4, v4, Lcom/android/samsungtest/EtcTest/touch_noise;->col_height:F

    mul-float/2addr v4, v10

    iget-object v5, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->mrectPaint:Landroid/graphics/Paint;
    invoke-static {v5}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$800(Lcom/android/samsungtest/EtcTest/touch_noise;)Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 422
    iget-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->mCanvas:Landroid/graphics/Canvas;
    invoke-static {v0}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$400(Lcom/android/samsungtest/EtcTest/touch_noise;)Landroid/graphics/Canvas;

    move-result-object v0

    iget-object v1, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    iget v1, v1, Lcom/android/samsungtest/EtcTest/touch_noise;->col_width:F

    iget-object v2, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->WIDTH_BASIS:I
    invoke-static {v2}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$600(Lcom/android/samsungtest/EtcTest/touch_noise;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    iget v2, v2, Lcom/android/samsungtest/EtcTest/touch_noise;->col_height:F

    iget-object v3, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->HEIGHT_BASIS:I
    invoke-static {v3}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$500(Lcom/android/samsungtest/EtcTest/touch_noise;)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    iget v3, v3, Lcom/android/samsungtest/EtcTest/touch_noise;->col_width:F

    iget-object v4, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->WIDTH_BASIS:I
    invoke-static {v4}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$600(Lcom/android/samsungtest/EtcTest/touch_noise;)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x1

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    iget v4, v4, Lcom/android/samsungtest/EtcTest/touch_noise;->col_height:F

    iget-object v5, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->HEIGHT_BASIS:I
    invoke-static {v5}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$500(Lcom/android/samsungtest/EtcTest/touch_noise;)I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0x1

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->mrectPaint:Landroid/graphics/Paint;
    invoke-static {v5}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$800(Lcom/android/samsungtest/EtcTest/touch_noise;)Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 425
    iget-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->mCanvas:Landroid/graphics/Canvas;
    invoke-static {v0}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$400(Lcom/android/samsungtest/EtcTest/touch_noise;)Landroid/graphics/Canvas;

    move-result-object v0

    iget-object v1, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    iget v1, v1, Lcom/android/samsungtest/EtcTest/touch_noise;->col_width:F

    iget-object v2, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    iget v2, v2, Lcom/android/samsungtest/EtcTest/touch_noise;->col_height:F

    iget-object v3, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->HEIGHT_BASIS:I
    invoke-static {v3}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$500(Lcom/android/samsungtest/EtcTest/touch_noise;)I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    iget v3, v3, Lcom/android/samsungtest/EtcTest/touch_noise;->col_width:F

    mul-float/2addr v3, v10

    iget-object v4, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    iget v4, v4, Lcom/android/samsungtest/EtcTest/touch_noise;->col_height:F

    iget-object v5, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->HEIGHT_BASIS:I
    invoke-static {v5}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$500(Lcom/android/samsungtest/EtcTest/touch_noise;)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->mrectPaint:Landroid/graphics/Paint;
    invoke-static {v5}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$800(Lcom/android/samsungtest/EtcTest/touch_noise;)Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 427
    iget-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->mCanvas:Landroid/graphics/Canvas;
    invoke-static {v0}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$400(Lcom/android/samsungtest/EtcTest/touch_noise;)Landroid/graphics/Canvas;

    move-result-object v0

    iget-object v1, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    iget v1, v1, Lcom/android/samsungtest/EtcTest/touch_noise;->col_width:F

    iget-object v2, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->WIDTH_BASIS:I
    invoke-static {v2}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$600(Lcom/android/samsungtest/EtcTest/touch_noise;)I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    iget v2, v2, Lcom/android/samsungtest/EtcTest/touch_noise;->col_height:F

    iget-object v3, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->HEIGHT_BASIS:I
    invoke-static {v3}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$500(Lcom/android/samsungtest/EtcTest/touch_noise;)I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    iget v3, v3, Lcom/android/samsungtest/EtcTest/touch_noise;->col_width:F

    iget-object v4, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->WIDTH_BASIS:I
    invoke-static {v4}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$600(Lcom/android/samsungtest/EtcTest/touch_noise;)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    iget v4, v4, Lcom/android/samsungtest/EtcTest/touch_noise;->col_height:F

    iget-object v5, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->HEIGHT_BASIS:I
    invoke-static {v5}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$500(Lcom/android/samsungtest/EtcTest/touch_noise;)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->mrectPaint:Landroid/graphics/Paint;
    invoke-static {v5}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$800(Lcom/android/samsungtest/EtcTest/touch_noise;)Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 429
    iget-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->mCanvas:Landroid/graphics/Canvas;
    invoke-static {v0}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$400(Lcom/android/samsungtest/EtcTest/touch_noise;)Landroid/graphics/Canvas;

    move-result-object v0

    iget-object v1, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    iget v1, v1, Lcom/android/samsungtest/EtcTest/touch_noise;->col_width:F

    const/high16 v2, 0x4120

    sub-float/2addr v1, v2

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    iget v3, v3, Lcom/android/samsungtest/EtcTest/touch_noise;->col_width:F

    mul-float/2addr v3, v14

    iget-object v4, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    iget v4, v4, Lcom/android/samsungtest/EtcTest/touch_noise;->col_height:F

    iget-object v5, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->mrectPaint2:Landroid/graphics/Paint;
    invoke-static {v5}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$900(Lcom/android/samsungtest/EtcTest/touch_noise;)Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 430
    iget-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->mCanvas:Landroid/graphics/Canvas;
    invoke-static {v0}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$400(Lcom/android/samsungtest/EtcTest/touch_noise;)Landroid/graphics/Canvas;

    move-result-object v0

    iget-object v1, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    iget v1, v1, Lcom/android/samsungtest/EtcTest/touch_noise;->col_width:F

    iget-object v2, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->font_size:I
    invoke-static {v2}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$1000(Lcom/android/samsungtest/EtcTest/touch_noise;)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    sub-float/2addr v1, v10

    iget-object v2, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    iget v2, v2, Lcom/android/samsungtest/EtcTest/touch_noise;->col_height:F

    mul-float/2addr v2, v13

    iget-object v3, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->font_size:I
    invoke-static {v3}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$1000(Lcom/android/samsungtest/EtcTest/touch_noise;)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    sub-float/2addr v2, v10

    iget-object v3, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    iget v3, v3, Lcom/android/samsungtest/EtcTest/touch_noise;->col_width:F

    mul-float/2addr v3, v14

    iget-object v4, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->font_size:I
    invoke-static {v4}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$1000(Lcom/android/samsungtest/EtcTest/touch_noise;)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    add-float/2addr v3, v10

    iget-object v4, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    iget v4, v4, Lcom/android/samsungtest/EtcTest/touch_noise;->col_height:F

    mul-float/2addr v4, v13

    add-float/2addr v4, v10

    iget-object v5, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->mrectPaint2:Landroid/graphics/Paint;
    invoke-static {v5}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$900(Lcom/android/samsungtest/EtcTest/touch_noise;)Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 432
    iget-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->mCanvas:Landroid/graphics/Canvas;
    invoke-static {v0}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$400(Lcom/android/samsungtest/EtcTest/touch_noise;)Landroid/graphics/Canvas;

    move-result-object v0

    iget-object v1, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    iget v1, v1, Lcom/android/samsungtest/EtcTest/touch_noise;->col_width:F

    iget-object v2, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->WIDTH_BASIS:I
    invoke-static {v2}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$600(Lcom/android/samsungtest/EtcTest/touch_noise;)I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    int-to-float v2, v2

    mul-float/2addr v1, v2

    sub-float/2addr v1, v10

    iget-object v2, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    iget v2, v2, Lcom/android/samsungtest/EtcTest/touch_noise;->col_height:F

    mul-float/2addr v2, v13

    iget-object v3, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->font_size:I
    invoke-static {v3}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$1000(Lcom/android/samsungtest/EtcTest/touch_noise;)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    sub-float/2addr v2, v10

    iget-object v3, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    iget v3, v3, Lcom/android/samsungtest/EtcTest/touch_noise;->col_width:F

    iget-object v4, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->WIDTH_BASIS:I
    invoke-static {v4}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$600(Lcom/android/samsungtest/EtcTest/touch_noise;)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->font_size:I
    invoke-static {v4}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$1000(Lcom/android/samsungtest/EtcTest/touch_noise;)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    add-float/2addr v3, v10

    iget-object v4, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    iget v4, v4, Lcom/android/samsungtest/EtcTest/touch_noise;->col_height:F

    mul-float/2addr v4, v13

    add-float/2addr v4, v10

    iget-object v5, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->mrectPaint2:Landroid/graphics/Paint;
    invoke-static {v5}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$900(Lcom/android/samsungtest/EtcTest/touch_noise;)Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 434
    iget-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->mCanvas:Landroid/graphics/Canvas;
    invoke-static {v0}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$400(Lcom/android/samsungtest/EtcTest/touch_noise;)Landroid/graphics/Canvas;

    move-result-object v0

    iget-object v1, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    iget v1, v1, Lcom/android/samsungtest/EtcTest/touch_noise;->col_width:F

    iget-object v2, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->WIDTH_BASIS:I
    invoke-static {v2}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$600(Lcom/android/samsungtest/EtcTest/touch_noise;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->font_size:I
    invoke-static {v2}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$1000(Lcom/android/samsungtest/EtcTest/touch_noise;)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    sub-float/2addr v1, v10

    iget-object v2, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    iget v2, v2, Lcom/android/samsungtest/EtcTest/touch_noise;->col_height:F

    iget-object v3, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->HEIGHT_BASIS:I
    invoke-static {v3}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$500(Lcom/android/samsungtest/EtcTest/touch_noise;)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->font_size:I
    invoke-static {v3}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$1000(Lcom/android/samsungtest/EtcTest/touch_noise;)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    sub-float/2addr v2, v10

    iget-object v3, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    iget v3, v3, Lcom/android/samsungtest/EtcTest/touch_noise;->col_width:F

    iget-object v4, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->WIDTH_BASIS:I
    invoke-static {v4}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$600(Lcom/android/samsungtest/EtcTest/touch_noise;)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->font_size:I
    invoke-static {v4}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$1000(Lcom/android/samsungtest/EtcTest/touch_noise;)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    add-float/2addr v3, v10

    iget-object v4, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    iget v4, v4, Lcom/android/samsungtest/EtcTest/touch_noise;->col_height:F

    iget-object v5, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->HEIGHT_BASIS:I
    invoke-static {v5}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$500(Lcom/android/samsungtest/EtcTest/touch_noise;)I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, -0x1

    int-to-float v5, v5

    mul-float/2addr v4, v5

    add-float/2addr v4, v10

    iget-object v5, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->mrectPaint2:Landroid/graphics/Paint;
    invoke-static {v5}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$900(Lcom/android/samsungtest/EtcTest/touch_noise;)Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 437
    iget-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->mCanvas:Landroid/graphics/Canvas;
    invoke-static {v0}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$400(Lcom/android/samsungtest/EtcTest/touch_noise;)Landroid/graphics/Canvas;

    move-result-object v0

    iget-object v1, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    iget v1, v1, Lcom/android/samsungtest/EtcTest/touch_noise;->col_width:F

    iget-object v2, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->font_size:I
    invoke-static {v2}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$1000(Lcom/android/samsungtest/EtcTest/touch_noise;)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    sub-float/2addr v1, v10

    iget-object v2, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    iget v2, v2, Lcom/android/samsungtest/EtcTest/touch_noise;->col_height:F

    iget-object v3, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->HEIGHT_BASIS:I
    invoke-static {v3}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$500(Lcom/android/samsungtest/EtcTest/touch_noise;)I

    move-result v3

    add-int/lit8 v3, v3, -0x3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->font_size:I
    invoke-static {v3}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$1000(Lcom/android/samsungtest/EtcTest/touch_noise;)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    sub-float/2addr v2, v10

    iget-object v3, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    iget v3, v3, Lcom/android/samsungtest/EtcTest/touch_noise;->col_width:F

    mul-float/2addr v3, v14

    iget-object v4, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->font_size:I
    invoke-static {v4}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$1000(Lcom/android/samsungtest/EtcTest/touch_noise;)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    add-float/2addr v3, v10

    iget-object v4, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    iget v4, v4, Lcom/android/samsungtest/EtcTest/touch_noise;->col_height:F

    iget-object v5, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->HEIGHT_BASIS:I
    invoke-static {v5}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$500(Lcom/android/samsungtest/EtcTest/touch_noise;)I

    move-result v5

    add-int/lit8 v5, v5, -0x3

    int-to-float v5, v5

    mul-float/2addr v4, v5

    add-float/2addr v4, v10

    iget-object v5, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->mrectPaint2:Landroid/graphics/Paint;
    invoke-static {v5}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$900(Lcom/android/samsungtest/EtcTest/touch_noise;)Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 440
    iget-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->mCanvas:Landroid/graphics/Canvas;
    invoke-static {v0}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$400(Lcom/android/samsungtest/EtcTest/touch_noise;)Landroid/graphics/Canvas;

    move-result-object v0

    iget-object v1, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    iget v1, v1, Lcom/android/samsungtest/EtcTest/touch_noise;->col_width:F

    iget-object v2, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->WIDTH_BASIS:I
    invoke-static {v2}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$600(Lcom/android/samsungtest/EtcTest/touch_noise;)I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    int-to-float v2, v2

    mul-float/2addr v1, v2

    sub-float/2addr v1, v10

    iget-object v2, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    iget v2, v2, Lcom/android/samsungtest/EtcTest/touch_noise;->col_height:F

    iget-object v3, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->HEIGHT_BASIS:I
    invoke-static {v3}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$500(Lcom/android/samsungtest/EtcTest/touch_noise;)I

    move-result v3

    add-int/lit8 v3, v3, -0x3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->font_size:I
    invoke-static {v3}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$1000(Lcom/android/samsungtest/EtcTest/touch_noise;)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    sub-float/2addr v2, v10

    iget-object v3, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    iget v3, v3, Lcom/android/samsungtest/EtcTest/touch_noise;->col_width:F

    iget-object v4, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->WIDTH_BASIS:I
    invoke-static {v4}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$600(Lcom/android/samsungtest/EtcTest/touch_noise;)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->font_size:I
    invoke-static {v4}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$1000(Lcom/android/samsungtest/EtcTest/touch_noise;)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    add-float/2addr v3, v10

    iget-object v4, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    iget v4, v4, Lcom/android/samsungtest/EtcTest/touch_noise;->col_height:F

    iget-object v5, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->HEIGHT_BASIS:I
    invoke-static {v5}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$500(Lcom/android/samsungtest/EtcTest/touch_noise;)I

    move-result v5

    add-int/lit8 v5, v5, -0x3

    int-to-float v5, v5

    mul-float/2addr v4, v5

    add-float/2addr v4, v10

    iget-object v5, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->mrectPaint2:Landroid/graphics/Paint;
    invoke-static {v5}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$900(Lcom/android/samsungtest/EtcTest/touch_noise;)Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 451
    iget-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->mCanvas:Landroid/graphics/Canvas;
    invoke-static {v0}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$400(Lcom/android/samsungtest/EtcTest/touch_noise;)Landroid/graphics/Canvas;

    move-result-object v0

    iget-object v1, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    iget v1, v1, Lcom/android/samsungtest/EtcTest/touch_noise;->col_width:F

    iget-object v2, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->WIDTH_BASIS:I
    invoke-static {v2}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$600(Lcom/android/samsungtest/EtcTest/touch_noise;)I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    int-to-float v2, v2

    mul-float/2addr v1, v2

    sub-float/2addr v1, v10

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    iget v3, v3, Lcom/android/samsungtest/EtcTest/touch_noise;->col_width:F

    iget-object v4, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->WIDTH_BASIS:I
    invoke-static {v4}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$600(Lcom/android/samsungtest/EtcTest/touch_noise;)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    iget v4, v4, Lcom/android/samsungtest/EtcTest/touch_noise;->col_height:F

    iget-object v5, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->mrectPaint2:Landroid/graphics/Paint;
    invoke-static {v5}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$900(Lcom/android/samsungtest/EtcTest/touch_noise;)Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 454
    const/4 v8, 0x0

    .local v8, i:I
    :goto_335
    iget-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->HEIGHT_BASIS:I
    invoke-static {v0}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$500(Lcom/android/samsungtest/EtcTest/touch_noise;)I

    move-result v0

    if-ge v8, v0, :cond_38c

    .line 455
    iget-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    iget v0, v0, Lcom/android/samsungtest/EtcTest/touch_noise;->col_height:F

    int-to-float v1, v8

    mul-float/2addr v0, v1

    float-to-int v7, v0

    .line 456
    const/4 v9, 0x0

    .local v9, j:I
    :goto_345
    iget-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->WIDTH_BASIS:I
    invoke-static {v0}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$600(Lcom/android/samsungtest/EtcTest/touch_noise;)I

    move-result v0

    if-ge v9, v0, :cond_389

    .line 457
    iget-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    iget v0, v0, Lcom/android/samsungtest/EtcTest/touch_noise;->col_width:F

    int-to-float v1, v9

    mul-float/2addr v0, v1

    float-to-int v6, v0

    .line 458
    iget-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->mCanvas:Landroid/graphics/Canvas;
    invoke-static {v0}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$400(Lcom/android/samsungtest/EtcTest/touch_noise;)Landroid/graphics/Canvas;

    move-result-object v0

    int-to-float v1, v6

    int-to-float v2, v7

    iget-object v3, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->lcd_width:I
    invoke-static {v3}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$200(Lcom/android/samsungtest/EtcTest/touch_noise;)I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, v7

    iget-object v5, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->mlinePaint:Landroid/graphics/Paint;
    invoke-static {v5}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$1100(Lcom/android/samsungtest/EtcTest/touch_noise;)Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 459
    iget-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->mCanvas:Landroid/graphics/Canvas;
    invoke-static {v0}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$400(Lcom/android/samsungtest/EtcTest/touch_noise;)Landroid/graphics/Canvas;

    move-result-object v0

    int-to-float v1, v6

    int-to-float v2, v7

    int-to-float v3, v6

    iget-object v4, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->lcd_height:I
    invoke-static {v4}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$300(Lcom/android/samsungtest/EtcTest/touch_noise;)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->mlinePaint:Landroid/graphics/Paint;
    invoke-static {v5}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$1100(Lcom/android/samsungtest/EtcTest/touch_noise;)Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 456
    add-int/lit8 v9, v9, 0x1

    goto :goto_345

    .line 454
    :cond_389
    add-int/lit8 v8, v8, 0x1

    goto :goto_335

    .line 463
    .end local v9           #j:I
    :cond_38c
    iget-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    const-string v1, "%d,%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->touchX:I
    invoke-static {v3}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$1300(Lcom/android/samsungtest/EtcTest/touch_noise;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v11

    iget-object v3, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->touchY:I
    invoke-static {v3}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$1400(Lcom/android/samsungtest/EtcTest/touch_noise;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v12

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/samsungtest/EtcTest/touch_noise;->touchValue_0:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$1202(Lcom/android/samsungtest/EtcTest/touch_noise;Ljava/lang/String;)Ljava/lang/String;

    .line 464
    iget-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->mCanvas:Landroid/graphics/Canvas;
    invoke-static {v0}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$400(Lcom/android/samsungtest/EtcTest/touch_noise;)Landroid/graphics/Canvas;

    move-result-object v0

    iget-object v1, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->touchValue_0:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$1200(Lcom/android/samsungtest/EtcTest/touch_noise;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    iget v2, v2, Lcom/android/samsungtest/EtcTest/touch_noise;->col_width:F

    const/high16 v3, 0x4120

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    iget v3, v3, Lcom/android/samsungtest/EtcTest/touch_noise;->col_height:F

    const/high16 v4, 0x4120

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->mlinePaint:Landroid/graphics/Paint;
    invoke-static {v4}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$1100(Lcom/android/samsungtest/EtcTest/touch_noise;)Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 486
    iget-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    const-string v1, "Threshold:%s"

    new-array v2, v12, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->threshold_refer:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$1600(Lcom/android/samsungtest/EtcTest/touch_noise;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v11

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/samsungtest/EtcTest/touch_noise;->thresholdValue:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$1502(Lcom/android/samsungtest/EtcTest/touch_noise;Ljava/lang/String;)Ljava/lang/String;

    .line 487
    iget-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    const-string v1, "Ref:%s"

    new-array v2, v12, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->threshold_refer_0:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$1800(Lcom/android/samsungtest/EtcTest/touch_noise;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v11

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/samsungtest/EtcTest/touch_noise;->touchValue_5:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$1702(Lcom/android/samsungtest/EtcTest/touch_noise;Ljava/lang/String;)Ljava/lang/String;

    .line 488
    iget-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    const-string v1, "Delta:%s"

    new-array v2, v12, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->threshold_delta_0:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$2000(Lcom/android/samsungtest/EtcTest/touch_noise;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v11

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/samsungtest/EtcTest/touch_noise;->deltaValue_5:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$1902(Lcom/android/samsungtest/EtcTest/touch_noise;Ljava/lang/String;)Ljava/lang/String;

    .line 491
    iget-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    const-string v1, "Ref:%s"

    new-array v2, v12, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->threshold_refer_1:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$2200(Lcom/android/samsungtest/EtcTest/touch_noise;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v11

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/samsungtest/EtcTest/touch_noise;->touchValue_6:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$2102(Lcom/android/samsungtest/EtcTest/touch_noise;Ljava/lang/String;)Ljava/lang/String;

    .line 492
    iget-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    const-string v1, "Delta:%s"

    new-array v2, v12, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->threshold_delta_1:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$2400(Lcom/android/samsungtest/EtcTest/touch_noise;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v11

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/samsungtest/EtcTest/touch_noise;->deltaValue_6:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$2302(Lcom/android/samsungtest/EtcTest/touch_noise;Ljava/lang/String;)Ljava/lang/String;

    .line 495
    iget-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    const-string v1, "Ref:%s"

    new-array v2, v12, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->threshold_refer_2:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$2600(Lcom/android/samsungtest/EtcTest/touch_noise;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v11

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/samsungtest/EtcTest/touch_noise;->touchValue_7:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$2502(Lcom/android/samsungtest/EtcTest/touch_noise;Ljava/lang/String;)Ljava/lang/String;

    .line 496
    iget-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    const-string v1, "Delta:%s"

    new-array v2, v12, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->threshold_delta_2:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$2800(Lcom/android/samsungtest/EtcTest/touch_noise;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v11

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/samsungtest/EtcTest/touch_noise;->deltaValue_7:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$2702(Lcom/android/samsungtest/EtcTest/touch_noise;Ljava/lang/String;)Ljava/lang/String;

    .line 499
    iget-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    const-string v1, "Ref:%s"

    new-array v2, v12, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->threshold_refer_3:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$3000(Lcom/android/samsungtest/EtcTest/touch_noise;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v11

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/samsungtest/EtcTest/touch_noise;->touchValue_8:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$2902(Lcom/android/samsungtest/EtcTest/touch_noise;Ljava/lang/String;)Ljava/lang/String;

    .line 500
    iget-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    const-string v1, "Delta:%s"

    new-array v2, v12, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->threshold_delta_3:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$3200(Lcom/android/samsungtest/EtcTest/touch_noise;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v11

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/samsungtest/EtcTest/touch_noise;->deltaValue_8:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$3102(Lcom/android/samsungtest/EtcTest/touch_noise;Ljava/lang/String;)Ljava/lang/String;

    .line 503
    iget-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    const-string v1, "Ref:%s"

    new-array v2, v12, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->threshold_refer_4:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$3400(Lcom/android/samsungtest/EtcTest/touch_noise;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v11

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/samsungtest/EtcTest/touch_noise;->touchValue_9:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$3302(Lcom/android/samsungtest/EtcTest/touch_noise;Ljava/lang/String;)Ljava/lang/String;

    .line 504
    iget-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    const-string v1, "Delta:%s"

    new-array v2, v12, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->threshold_delta_4:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$3600(Lcom/android/samsungtest/EtcTest/touch_noise;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v11

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/samsungtest/EtcTest/touch_noise;->deltaValue_9:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$3502(Lcom/android/samsungtest/EtcTest/touch_noise;Ljava/lang/String;)Ljava/lang/String;

    .line 505
    iget-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    const-string v1, "Ref:%s"

    new-array v2, v12, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->mMenuSensitivity:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$3800(Lcom/android/samsungtest/EtcTest/touch_noise;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v11

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/samsungtest/EtcTest/touch_noise;->touchValue_10:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$3702(Lcom/android/samsungtest/EtcTest/touch_noise;Ljava/lang/String;)Ljava/lang/String;

    .line 507
    iget-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    const-string v1, "Ref:%s"

    new-array v2, v12, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->mBackSensitivity:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$4000(Lcom/android/samsungtest/EtcTest/touch_noise;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v11

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/samsungtest/EtcTest/touch_noise;->touchValue_11:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$3902(Lcom/android/samsungtest/EtcTest/touch_noise;Ljava/lang/String;)Ljava/lang/String;

    .line 525
    iget-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->mCanvas:Landroid/graphics/Canvas;
    invoke-static {v0}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$400(Lcom/android/samsungtest/EtcTest/touch_noise;)Landroid/graphics/Canvas;

    move-result-object v0

    iget-object v1, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->thresholdValue:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$1500(Lcom/android/samsungtest/EtcTest/touch_noise;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    iget v2, v2, Lcom/android/samsungtest/EtcTest/touch_noise;->col_width:F

    iget-object v3, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->WIDTH_BASIS:I
    invoke-static {v3}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$600(Lcom/android/samsungtest/EtcTest/touch_noise;)I

    move-result v3

    add-int/lit8 v3, v3, -0x4

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    iget v3, v3, Lcom/android/samsungtest/EtcTest/touch_noise;->col_height:F

    iget-object v4, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->font_size:I
    invoke-static {v4}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$1000(Lcom/android/samsungtest/EtcTest/touch_noise;)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->mlinePaint:Landroid/graphics/Paint;
    invoke-static {v4}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$1100(Lcom/android/samsungtest/EtcTest/touch_noise;)Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 527
    iget-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->mCanvas:Landroid/graphics/Canvas;
    invoke-static {v0}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$400(Lcom/android/samsungtest/EtcTest/touch_noise;)Landroid/graphics/Canvas;

    move-result-object v0

    iget-object v1, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->touchValue_5:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$1700(Lcom/android/samsungtest/EtcTest/touch_noise;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    iget v2, v2, Lcom/android/samsungtest/EtcTest/touch_noise;->col_width:F

    iget-object v3, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->font_size:I
    invoke-static {v3}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$1000(Lcom/android/samsungtest/EtcTest/touch_noise;)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    iget v3, v3, Lcom/android/samsungtest/EtcTest/touch_noise;->col_height:F

    mul-float/2addr v3, v13

    iget-object v4, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->font_size:I
    invoke-static {v4}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$1000(Lcom/android/samsungtest/EtcTest/touch_noise;)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->mlinePaint:Landroid/graphics/Paint;
    invoke-static {v4}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$1100(Lcom/android/samsungtest/EtcTest/touch_noise;)Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 529
    iget-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->mCanvas:Landroid/graphics/Canvas;
    invoke-static {v0}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$400(Lcom/android/samsungtest/EtcTest/touch_noise;)Landroid/graphics/Canvas;

    move-result-object v0

    iget-object v1, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->deltaValue_5:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$1900(Lcom/android/samsungtest/EtcTest/touch_noise;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    iget v2, v2, Lcom/android/samsungtest/EtcTest/touch_noise;->col_width:F

    iget-object v3, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->font_size:I
    invoke-static {v3}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$1000(Lcom/android/samsungtest/EtcTest/touch_noise;)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    iget v3, v3, Lcom/android/samsungtest/EtcTest/touch_noise;->col_height:F

    mul-float/2addr v3, v13

    iget-object v4, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->mlinePaint:Landroid/graphics/Paint;
    invoke-static {v4}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$1100(Lcom/android/samsungtest/EtcTest/touch_noise;)Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 532
    iget-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->mCanvas:Landroid/graphics/Canvas;
    invoke-static {v0}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$400(Lcom/android/samsungtest/EtcTest/touch_noise;)Landroid/graphics/Canvas;

    move-result-object v0

    iget-object v1, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->touchValue_6:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$2100(Lcom/android/samsungtest/EtcTest/touch_noise;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    iget v2, v2, Lcom/android/samsungtest/EtcTest/touch_noise;->col_width:F

    iget-object v3, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->WIDTH_BASIS:I
    invoke-static {v3}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$600(Lcom/android/samsungtest/EtcTest/touch_noise;)I

    move-result v3

    add-int/lit8 v3, v3, -0x3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    iget v3, v3, Lcom/android/samsungtest/EtcTest/touch_noise;->col_height:F

    mul-float/2addr v3, v13

    iget-object v4, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->font_size:I
    invoke-static {v4}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$1000(Lcom/android/samsungtest/EtcTest/touch_noise;)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->mlinePaint:Landroid/graphics/Paint;
    invoke-static {v4}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$1100(Lcom/android/samsungtest/EtcTest/touch_noise;)Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 534
    iget-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->mCanvas:Landroid/graphics/Canvas;
    invoke-static {v0}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$400(Lcom/android/samsungtest/EtcTest/touch_noise;)Landroid/graphics/Canvas;

    move-result-object v0

    iget-object v1, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->deltaValue_6:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$2300(Lcom/android/samsungtest/EtcTest/touch_noise;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    iget v2, v2, Lcom/android/samsungtest/EtcTest/touch_noise;->col_width:F

    iget-object v3, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->WIDTH_BASIS:I
    invoke-static {v3}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$600(Lcom/android/samsungtest/EtcTest/touch_noise;)I

    move-result v3

    add-int/lit8 v3, v3, -0x3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    iget v3, v3, Lcom/android/samsungtest/EtcTest/touch_noise;->col_height:F

    mul-float/2addr v3, v13

    iget-object v4, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->mlinePaint:Landroid/graphics/Paint;
    invoke-static {v4}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$1100(Lcom/android/samsungtest/EtcTest/touch_noise;)Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 538
    iget-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->mCanvas:Landroid/graphics/Canvas;
    invoke-static {v0}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$400(Lcom/android/samsungtest/EtcTest/touch_noise;)Landroid/graphics/Canvas;

    move-result-object v0

    iget-object v1, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->touchValue_7:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$2500(Lcom/android/samsungtest/EtcTest/touch_noise;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    iget v2, v2, Lcom/android/samsungtest/EtcTest/touch_noise;->col_width:F

    iget-object v3, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->WIDTH_BASIS:I
    invoke-static {v3}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$600(Lcom/android/samsungtest/EtcTest/touch_noise;)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->font_size:I
    invoke-static {v3}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$1000(Lcom/android/samsungtest/EtcTest/touch_noise;)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    iget v3, v3, Lcom/android/samsungtest/EtcTest/touch_noise;->col_height:F

    iget-object v4, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->HEIGHT_BASIS:I
    invoke-static {v4}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$500(Lcom/android/samsungtest/EtcTest/touch_noise;)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->font_size:I
    invoke-static {v4}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$1000(Lcom/android/samsungtest/EtcTest/touch_noise;)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->mlinePaint:Landroid/graphics/Paint;
    invoke-static {v4}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$1100(Lcom/android/samsungtest/EtcTest/touch_noise;)Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 540
    iget-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->mCanvas:Landroid/graphics/Canvas;
    invoke-static {v0}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$400(Lcom/android/samsungtest/EtcTest/touch_noise;)Landroid/graphics/Canvas;

    move-result-object v0

    iget-object v1, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->deltaValue_7:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$2700(Lcom/android/samsungtest/EtcTest/touch_noise;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    iget v2, v2, Lcom/android/samsungtest/EtcTest/touch_noise;->col_width:F

    iget-object v3, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->WIDTH_BASIS:I
    invoke-static {v3}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$600(Lcom/android/samsungtest/EtcTest/touch_noise;)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->font_size:I
    invoke-static {v3}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$1000(Lcom/android/samsungtest/EtcTest/touch_noise;)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    iget v3, v3, Lcom/android/samsungtest/EtcTest/touch_noise;->col_height:F

    iget-object v4, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->HEIGHT_BASIS:I
    invoke-static {v4}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$500(Lcom/android/samsungtest/EtcTest/touch_noise;)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->mlinePaint:Landroid/graphics/Paint;
    invoke-static {v4}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$1100(Lcom/android/samsungtest/EtcTest/touch_noise;)Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 548
    iget-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->mCanvas:Landroid/graphics/Canvas;
    invoke-static {v0}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$400(Lcom/android/samsungtest/EtcTest/touch_noise;)Landroid/graphics/Canvas;

    move-result-object v0

    iget-object v1, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->touchValue_8:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$2900(Lcom/android/samsungtest/EtcTest/touch_noise;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    iget v2, v2, Lcom/android/samsungtest/EtcTest/touch_noise;->col_width:F

    iget-object v3, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->font_size:I
    invoke-static {v3}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$1000(Lcom/android/samsungtest/EtcTest/touch_noise;)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    iget v3, v3, Lcom/android/samsungtest/EtcTest/touch_noise;->col_height:F

    iget-object v4, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->HEIGHT_BASIS:I
    invoke-static {v4}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$500(Lcom/android/samsungtest/EtcTest/touch_noise;)I

    move-result v4

    add-int/lit8 v4, v4, -0x3

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->font_size:I
    invoke-static {v4}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$1000(Lcom/android/samsungtest/EtcTest/touch_noise;)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->mlinePaint:Landroid/graphics/Paint;
    invoke-static {v4}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$1100(Lcom/android/samsungtest/EtcTest/touch_noise;)Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 550
    iget-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->mCanvas:Landroid/graphics/Canvas;
    invoke-static {v0}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$400(Lcom/android/samsungtest/EtcTest/touch_noise;)Landroid/graphics/Canvas;

    move-result-object v0

    iget-object v1, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->deltaValue_8:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$3100(Lcom/android/samsungtest/EtcTest/touch_noise;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    iget v2, v2, Lcom/android/samsungtest/EtcTest/touch_noise;->col_width:F

    iget-object v3, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->font_size:I
    invoke-static {v3}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$1000(Lcom/android/samsungtest/EtcTest/touch_noise;)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    iget v3, v3, Lcom/android/samsungtest/EtcTest/touch_noise;->col_height:F

    iget-object v4, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->HEIGHT_BASIS:I
    invoke-static {v4}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$500(Lcom/android/samsungtest/EtcTest/touch_noise;)I

    move-result v4

    add-int/lit8 v4, v4, -0x3

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->mlinePaint:Landroid/graphics/Paint;
    invoke-static {v4}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$1100(Lcom/android/samsungtest/EtcTest/touch_noise;)Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 554
    iget-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->mCanvas:Landroid/graphics/Canvas;
    invoke-static {v0}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$400(Lcom/android/samsungtest/EtcTest/touch_noise;)Landroid/graphics/Canvas;

    move-result-object v0

    iget-object v1, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->touchValue_9:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$3300(Lcom/android/samsungtest/EtcTest/touch_noise;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    iget v2, v2, Lcom/android/samsungtest/EtcTest/touch_noise;->col_width:F

    iget-object v3, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->WIDTH_BASIS:I
    invoke-static {v3}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$600(Lcom/android/samsungtest/EtcTest/touch_noise;)I

    move-result v3

    add-int/lit8 v3, v3, -0x3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    iget v3, v3, Lcom/android/samsungtest/EtcTest/touch_noise;->col_height:F

    iget-object v4, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->HEIGHT_BASIS:I
    invoke-static {v4}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$500(Lcom/android/samsungtest/EtcTest/touch_noise;)I

    move-result v4

    add-int/lit8 v4, v4, -0x3

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->font_size:I
    invoke-static {v4}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$1000(Lcom/android/samsungtest/EtcTest/touch_noise;)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->mlinePaint:Landroid/graphics/Paint;
    invoke-static {v4}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$1100(Lcom/android/samsungtest/EtcTest/touch_noise;)Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 556
    iget-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->mCanvas:Landroid/graphics/Canvas;
    invoke-static {v0}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$400(Lcom/android/samsungtest/EtcTest/touch_noise;)Landroid/graphics/Canvas;

    move-result-object v0

    iget-object v1, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->deltaValue_9:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$3500(Lcom/android/samsungtest/EtcTest/touch_noise;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    iget v2, v2, Lcom/android/samsungtest/EtcTest/touch_noise;->col_width:F

    iget-object v3, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->WIDTH_BASIS:I
    invoke-static {v3}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$600(Lcom/android/samsungtest/EtcTest/touch_noise;)I

    move-result v3

    add-int/lit8 v3, v3, -0x3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    iget v3, v3, Lcom/android/samsungtest/EtcTest/touch_noise;->col_height:F

    iget-object v4, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->HEIGHT_BASIS:I
    invoke-static {v4}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$500(Lcom/android/samsungtest/EtcTest/touch_noise;)I

    move-result v4

    add-int/lit8 v4, v4, -0x3

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->mlinePaint:Landroid/graphics/Paint;
    invoke-static {v4}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$1100(Lcom/android/samsungtest/EtcTest/touch_noise;)Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 559
    iget-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->mCanvas:Landroid/graphics/Canvas;
    invoke-static {v0}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$400(Lcom/android/samsungtest/EtcTest/touch_noise;)Landroid/graphics/Canvas;

    move-result-object v0

    const-string v1, "Menu Key"

    iget-object v2, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->font_size:I
    invoke-static {v2}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$1000(Lcom/android/samsungtest/EtcTest/touch_noise;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    iget v3, v3, Lcom/android/samsungtest/EtcTest/touch_noise;->col_height:F

    iget-object v4, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->HEIGHT_BASIS:I
    invoke-static {v4}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$500(Lcom/android/samsungtest/EtcTest/touch_noise;)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->mlinePaint:Landroid/graphics/Paint;
    invoke-static {v4}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$1100(Lcom/android/samsungtest/EtcTest/touch_noise;)Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 560
    iget-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->mCanvas:Landroid/graphics/Canvas;
    invoke-static {v0}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$400(Lcom/android/samsungtest/EtcTest/touch_noise;)Landroid/graphics/Canvas;

    move-result-object v0

    iget-object v1, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->touchValue_10:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$3700(Lcom/android/samsungtest/EtcTest/touch_noise;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->font_size:I
    invoke-static {v2}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$1000(Lcom/android/samsungtest/EtcTest/touch_noise;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    iget v3, v3, Lcom/android/samsungtest/EtcTest/touch_noise;->col_height:F

    iget-object v4, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->HEIGHT_BASIS:I
    invoke-static {v4}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$500(Lcom/android/samsungtest/EtcTest/touch_noise;)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->font_size:I
    invoke-static {v4}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$1000(Lcom/android/samsungtest/EtcTest/touch_noise;)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->mlinePaint:Landroid/graphics/Paint;
    invoke-static {v4}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$1100(Lcom/android/samsungtest/EtcTest/touch_noise;)Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 565
    iget-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->mCanvas:Landroid/graphics/Canvas;
    invoke-static {v0}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$400(Lcom/android/samsungtest/EtcTest/touch_noise;)Landroid/graphics/Canvas;

    move-result-object v0

    const-string v1, "Back Key"

    iget-object v2, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    iget v2, v2, Lcom/android/samsungtest/EtcTest/touch_noise;->col_width:F

    iget-object v3, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->WIDTH_BASIS:I
    invoke-static {v3}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$600(Lcom/android/samsungtest/EtcTest/touch_noise;)I

    move-result v3

    add-int/lit8 v3, v3, -0x3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    iget v3, v3, Lcom/android/samsungtest/EtcTest/touch_noise;->col_height:F

    iget-object v4, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->HEIGHT_BASIS:I
    invoke-static {v4}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$500(Lcom/android/samsungtest/EtcTest/touch_noise;)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->mlinePaint:Landroid/graphics/Paint;
    invoke-static {v4}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$1100(Lcom/android/samsungtest/EtcTest/touch_noise;)Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 567
    iget-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->mCanvas:Landroid/graphics/Canvas;
    invoke-static {v0}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$400(Lcom/android/samsungtest/EtcTest/touch_noise;)Landroid/graphics/Canvas;

    move-result-object v0

    iget-object v1, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->touchValue_11:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$3900(Lcom/android/samsungtest/EtcTest/touch_noise;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    iget v2, v2, Lcom/android/samsungtest/EtcTest/touch_noise;->col_width:F

    iget-object v3, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->WIDTH_BASIS:I
    invoke-static {v3}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$600(Lcom/android/samsungtest/EtcTest/touch_noise;)I

    move-result v3

    add-int/lit8 v3, v3, -0x3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    iget v3, v3, Lcom/android/samsungtest/EtcTest/touch_noise;->col_height:F

    iget-object v4, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->HEIGHT_BASIS:I
    invoke-static {v4}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$500(Lcom/android/samsungtest/EtcTest/touch_noise;)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->font_size:I
    invoke-static {v4}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$1000(Lcom/android/samsungtest/EtcTest/touch_noise;)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #getter for: Lcom/android/samsungtest/EtcTest/touch_noise;->mlinePaint:Landroid/graphics/Paint;
    invoke-static {v4}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$1100(Lcom/android/samsungtest/EtcTest/touch_noise;)Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 572
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 5
    .parameter "canvas"

    .prologue
    const/4 v2, 0x0

    .line 576
    iget-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 577
    invoke-virtual {p0}, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->startTimer()V

    .line 578
    return-void
.end method

.method protected startTimer()V
    .registers 5

    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->mDrawHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 398
    return-void
.end method
