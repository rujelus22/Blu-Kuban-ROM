.class final Lcom/cooliris/media/PopupMenu$PopupTexture;
.super Lcom/cooliris/media/CanvasTexture;
.source "PopupMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cooliris/media/PopupMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PopupTexture"
.end annotation


# instance fields
.field private final mBackground:Landroid/graphics/NinePatch;

.field private final mBackgroundRect:Landroid/graphics/Rect;

.field private final mHighlightSelected:Landroid/graphics/NinePatch;

.field private final mTriangleBottom:Landroid/graphics/Bitmap;

.field private mTriangleX:I

.field final synthetic this$0:Lcom/cooliris/media/PopupMenu;


# direct methods
.method public constructor <init>(Lcom/cooliris/media/PopupMenu;Landroid/content/Context;)V
    .registers 9
    .parameter
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 430
    iput-object p1, p0, Lcom/cooliris/media/PopupMenu$PopupTexture;->this$0:Lcom/cooliris/media/PopupMenu;

    .line 431
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-direct {p0, v3}, Lcom/cooliris/media/CanvasTexture;-><init>(Landroid/graphics/Bitmap$Config;)V

    .line 425
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/cooliris/media/PopupMenu$PopupTexture;->mBackgroundRect:Landroid/graphics/Rect;

    .line 427
    const/4 v3, 0x0

    iput v3, p0, Lcom/cooliris/media/PopupMenu$PopupTexture;->mTriangleX:I

    .line 432
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 433
    .local v2, resources:Landroid/content/res/Resources;
    sget-object v3, Lcom/cooliris/app/Res;->drawable:Lcom/cooliris/media/R$drawable;

    const v3, 0x7f02006c

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 434
    .local v0, background:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/NinePatch;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v4

    invoke-direct {v3, v0, v4, v5}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    iput-object v3, p0, Lcom/cooliris/media/PopupMenu$PopupTexture;->mBackground:Landroid/graphics/NinePatch;

    .line 435
    sget-object v3, Lcom/cooliris/app/Res;->drawable:Lcom/cooliris/media/R$drawable;

    const v3, 0x7f02006d

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 437
    .local v1, highlightSelected:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/NinePatch;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v4

    invoke-direct {v3, v1, v4, v5}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    iput-object v3, p0, Lcom/cooliris/media/PopupMenu$PopupTexture;->mHighlightSelected:Landroid/graphics/NinePatch;

    .line 439
    sget-object v3, Lcom/cooliris/app/Res;->drawable:Lcom/cooliris/media/R$drawable;

    const v3, 0x7f02006e

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/cooliris/media/PopupMenu$PopupTexture;->mTriangleBottom:Landroid/graphics/Bitmap;

    .line 441
    return-void
.end method

.method static synthetic access$000(Lcom/cooliris/media/PopupMenu$PopupTexture;)Landroid/graphics/Bitmap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 418
    iget-object v0, p0, Lcom/cooliris/media/PopupMenu$PopupTexture;->mTriangleBottom:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$102(Lcom/cooliris/media/PopupMenu$PopupTexture;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 418
    iput p1, p0, Lcom/cooliris/media/PopupMenu$PopupTexture;->mTriangleX:I

    return p1
.end method


# virtual methods
.method protected onSizeChanged()V
    .registers 7

    .prologue
    const/high16 v5, 0x4160

    const/4 v4, 0x0

    .line 445
    sget v0, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    const/high16 v1, 0x3f80

    cmpg-float v0, v0, v1

    if-gez v0, :cond_20

    .line 446
    iget-object v0, p0, Lcom/cooliris/media/PopupMenu$PopupTexture;->mBackgroundRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/cooliris/media/PopupMenu$PopupTexture;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/cooliris/media/PopupMenu$PopupTexture;->getHeight()I

    move-result v2

    sget v3, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v3, v5

    float-to-int v3, v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 452
    :goto_1f
    return-void

    .line 449
    :cond_20
    iget-object v0, p0, Lcom/cooliris/media/PopupMenu$PopupTexture;->mBackgroundRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/cooliris/media/PopupMenu$PopupTexture;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/cooliris/media/PopupMenu$PopupTexture;->getHeight()I

    move-result v2

    sget v3, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v3, v5

    float-to-int v3, v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1f
.end method

.method protected renderCanvas(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;II)V
    .registers 14
    .parameter "canvas"
    .parameter "backing"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 457
    if-eqz p2, :cond_6

    .line 458
    const/4 v6, 0x0

    invoke-virtual {p2, v6}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 459
    :cond_6
    iget-object v6, p0, Lcom/cooliris/media/PopupMenu$PopupTexture;->mBackground:Landroid/graphics/NinePatch;

    iget-object v7, p0, Lcom/cooliris/media/PopupMenu$PopupTexture;->mBackgroundRect:Landroid/graphics/Rect;

    invoke-static {}, Lcom/cooliris/media/PopupMenu;->access$800()Landroid/graphics/Paint;

    move-result-object v8

    invoke-virtual {v6, p1, v7, v8}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 463
    iget-object v5, p0, Lcom/cooliris/media/PopupMenu$PopupTexture;->mTriangleBottom:Landroid/graphics/Bitmap;

    .line 464
    .local v5, triangle:Landroid/graphics/Bitmap;
    sget v6, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    const/high16 v7, 0x4000

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_5c

    .line 465
    iget v6, p0, Lcom/cooliris/media/PopupMenu$PopupTexture;->mTriangleX:I

    int-to-float v6, v6

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    sub-int v7, p4, v7

    add-int/lit8 v7, v7, -0x8

    int-to-float v7, v7

    invoke-static {}, Lcom/cooliris/media/PopupMenu;->access$800()Landroid/graphics/Paint;

    move-result-object v8

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 473
    :goto_2e
    iget-object v6, p0, Lcom/cooliris/media/PopupMenu$PopupTexture;->this$0:Lcom/cooliris/media/PopupMenu;

    #getter for: Lcom/cooliris/media/PopupMenu;->mOptions:[Lcom/cooliris/media/PopupMenu$Option;
    invoke-static {v6}, Lcom/cooliris/media/PopupMenu;->access$900(Lcom/cooliris/media/PopupMenu;)[Lcom/cooliris/media/PopupMenu$Option;

    move-result-object v3

    .line 474
    .local v3, options:[Lcom/cooliris/media/PopupMenu$Option;
    iget-object v6, p0, Lcom/cooliris/media/PopupMenu$PopupTexture;->this$0:Lcom/cooliris/media/PopupMenu;

    #getter for: Lcom/cooliris/media/PopupMenu;->mSelectedItem:I
    invoke-static {v6}, Lcom/cooliris/media/PopupMenu;->access$1000(Lcom/cooliris/media/PopupMenu;)I

    move-result v4

    .line 475
    .local v4, selectedItem:I
    const/4 v6, -0x1

    if-eq v4, v6, :cond_4c

    .line 476
    aget-object v2, v3, v4

    .line 477
    .local v2, option:Lcom/cooliris/media/PopupMenu$Option;
    iget-object v6, p0, Lcom/cooliris/media/PopupMenu$PopupTexture;->mHighlightSelected:Landroid/graphics/NinePatch;

    #getter for: Lcom/cooliris/media/PopupMenu$Option;->mDrawable:Lcom/cooliris/media/IconTitleDrawable;
    invoke-static {v2}, Lcom/cooliris/media/PopupMenu$Option;->access$300(Lcom/cooliris/media/PopupMenu$Option;)Lcom/cooliris/media/IconTitleDrawable;

    move-result-object v7

    invoke-virtual {v7}, Lcom/cooliris/media/IconTitleDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v6, p1, v7}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 481
    .end local v2           #option:Lcom/cooliris/media/PopupMenu$Option;
    :cond_4c
    array-length v1, v3

    .line 482
    .local v1, numOptions:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4e
    if-eq v0, v1, :cond_70

    .line 483
    aget-object v6, v3, v0

    #getter for: Lcom/cooliris/media/PopupMenu$Option;->mDrawable:Lcom/cooliris/media/IconTitleDrawable;
    invoke-static {v6}, Lcom/cooliris/media/PopupMenu$Option;->access$300(Lcom/cooliris/media/PopupMenu$Option;)Lcom/cooliris/media/IconTitleDrawable;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/cooliris/media/IconTitleDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 482
    add-int/lit8 v0, v0, 0x1

    goto :goto_4e

    .line 468
    .end local v0           #i:I
    .end local v1           #numOptions:I
    .end local v3           #options:[Lcom/cooliris/media/PopupMenu$Option;
    .end local v4           #selectedItem:I
    :cond_5c
    iget v6, p0, Lcom/cooliris/media/PopupMenu$PopupTexture;->mTriangleX:I

    int-to-float v6, v6

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    sub-int v7, p4, v7

    add-int/lit8 v7, v7, -0x1

    int-to-float v7, v7

    invoke-static {}, Lcom/cooliris/media/PopupMenu;->access$800()Landroid/graphics/Paint;

    move-result-object v8

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_2e

    .line 485
    .restart local v0       #i:I
    .restart local v1       #numOptions:I
    .restart local v3       #options:[Lcom/cooliris/media/PopupMenu$Option;
    .restart local v4       #selectedItem:I
    :cond_70
    return-void
.end method
