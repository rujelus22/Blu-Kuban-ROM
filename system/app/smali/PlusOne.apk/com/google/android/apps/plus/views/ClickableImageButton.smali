.class public Lcom/google/android/apps/plus/views/ClickableImageButton;
.super Ljava/lang/Object;
.source "ClickableImageButton.java"

# interfaces
.implements Lcom/google/android/apps/plus/views/ClickableItem;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/views/ClickableImageButton$ClickableImageButtonListener;
    }
.end annotation


# static fields
.field private static sImageSelectedPaint:Landroid/graphics/Paint;


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mClicked:Z

.field private mListener:Lcom/google/android/apps/plus/views/ClickableImageButton$ClickableImageButtonListener;

.field private mRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/google/android/apps/plus/views/ClickableImageButton$ClickableImageButtonListener;)V
    .registers 7
    .parameter "context"
    .parameter "bitmap"
    .parameter "listener"

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-virtual {p0, p2}, Lcom/google/android/apps/plus/views/ClickableImageButton;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 50
    iput-object p3, p0, Lcom/google/android/apps/plus/views/ClickableImageButton;->mListener:Lcom/google/android/apps/plus/views/ClickableImageButton$ClickableImageButtonListener;

    .line 52
    sget-object v0, Lcom/google/android/apps/plus/views/ClickableImageButton;->sImageSelectedPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_35

    .line 53
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/views/ClickableImageButton;->sImageSelectedPaint:Landroid/graphics/Paint;

    .line 54
    sget-object v0, Lcom/google/android/apps/plus/views/ClickableImageButton;->sImageSelectedPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4080

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 55
    sget-object v0, Lcom/google/android/apps/plus/views/ClickableImageButton;->sImageSelectedPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09001b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 57
    sget-object v0, Lcom/google/android/apps/plus/views/ClickableImageButton;->sImageSelectedPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 59
    :cond_35
    return-void
.end method


# virtual methods
.method public drawSelectionRect(Landroid/graphics/Canvas;)V
    .registers 8
    .parameter "canvas"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ClickableImageButton;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget-object v0, p0, Lcom/google/android/apps/plus/views/ClickableImageButton;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/google/android/apps/plus/views/ClickableImageButton;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x2

    int-to-float v3, v0

    iget-object v0, p0, Lcom/google/android/apps/plus/views/ClickableImageButton;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x2

    int-to-float v4, v0

    sget-object v5, Lcom/google/android/apps/plus/views/ClickableImageButton;->sImageSelectedPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 105
    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ClickableImageButton;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getRect()Landroid/graphics/Rect;
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ClickableImageButton;->mRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public handleEvent(III)Z
    .registers 7
    .parameter "x"
    .parameter "y"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 120
    const/4 v2, 0x3

    if-ne p3, v2, :cond_8

    .line 121
    iput-boolean v1, p0, Lcom/google/android/apps/plus/views/ClickableImageButton;->mClicked:Z

    .line 151
    :goto_7
    return v0

    .line 125
    :cond_8
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ClickableImageButton;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-nez v2, :cond_16

    .line 126
    if-ne p3, v0, :cond_14

    .line 127
    iput-boolean v1, p0, Lcom/google/android/apps/plus/views/ClickableImageButton;->mClicked:Z

    :cond_14
    move v0, v1

    .line 129
    goto :goto_7

    .line 132
    :cond_16
    packed-switch p3, :pswitch_data_2e

    goto :goto_7

    .line 134
    :pswitch_1a
    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/ClickableImageButton;->mClicked:Z

    goto :goto_7

    .line 139
    :pswitch_1d
    iget-boolean v2, p0, Lcom/google/android/apps/plus/views/ClickableImageButton;->mClicked:Z

    if-eqz v2, :cond_2a

    iget-object v2, p0, Lcom/google/android/apps/plus/views/ClickableImageButton;->mListener:Lcom/google/android/apps/plus/views/ClickableImageButton$ClickableImageButtonListener;

    if-eqz v2, :cond_2a

    .line 140
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ClickableImageButton;->mListener:Lcom/google/android/apps/plus/views/ClickableImageButton$ClickableImageButtonListener;

    invoke-interface {v2, p0}, Lcom/google/android/apps/plus/views/ClickableImageButton$ClickableImageButtonListener;->onClickableImageButtonClick(Lcom/google/android/apps/plus/views/ClickableImageButton;)V

    .line 142
    :cond_2a
    iput-boolean v1, p0, Lcom/google/android/apps/plus/views/ClickableImageButton;->mClicked:Z

    goto :goto_7

    .line 132
    nop

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_1d
    .end packed-switch
.end method

.method public isClicked()Z
    .registers 2

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/ClickableImageButton;->mClicked:Z

    return v0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .registers 8
    .parameter "bitmap"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/google/android/apps/plus/views/ClickableImageButton;->mBitmap:Landroid/graphics/Bitmap;

    .line 66
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ClickableImageButton;->mRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_2b

    .line 67
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/google/android/apps/plus/views/ClickableImageButton;->mRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/google/android/apps/plus/views/ClickableImageButton;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/google/android/apps/plus/views/ClickableImageButton;->mRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/google/android/apps/plus/views/ClickableImageButton;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/google/android/apps/plus/views/ClickableImageButton;->mRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/google/android/apps/plus/views/ClickableImageButton;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/ClickableImageButton;->mRect:Landroid/graphics/Rect;

    .line 70
    :cond_2b
    return-void
.end method

.method public setPosition(II)V
    .registers 6
    .parameter "left"
    .parameter "top"

    .prologue
    .line 85
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/google/android/apps/plus/views/ClickableImageButton;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    add-int/2addr v1, p1

    iget-object v2, p0, Lcom/google/android/apps/plus/views/ClickableImageButton;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    add-int/2addr v2, p2

    invoke-direct {v0, p1, p2, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/ClickableImageButton;->mRect:Landroid/graphics/Rect;

    .line 86
    return-void
.end method
