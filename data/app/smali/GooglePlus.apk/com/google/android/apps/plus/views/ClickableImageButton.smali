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
.field private mClicked:Z

.field private mClickedBitmap:Landroid/graphics/Bitmap;

.field private mDefaultBitmap:Landroid/graphics/Bitmap;

.field private mListener:Lcom/google/android/apps/plus/views/ClickableImageButton$ClickableImageButtonListener;

.field private mRect:Landroid/graphics/Rect;

.field private mSelectionRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lcom/google/android/apps/plus/views/ClickableImageButton$ClickableImageButtonListener;)V
    .registers 8
    .parameter "context"
    .parameter "defaultBitmap"
    .parameter "clickedBitmap"
    .parameter "listener"

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-virtual {p0, p2}, Lcom/google/android/apps/plus/views/ClickableImageButton;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 53
    iput-object p3, p0, Lcom/google/android/apps/plus/views/ClickableImageButton;->mClickedBitmap:Landroid/graphics/Bitmap;

    .line 54
    iput-object p4, p0, Lcom/google/android/apps/plus/views/ClickableImageButton;->mListener:Lcom/google/android/apps/plus/views/ClickableImageButton$ClickableImageButtonListener;

    .line 56
    sget-object v0, Lcom/google/android/apps/plus/views/ClickableImageButton;->sImageSelectedPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_37

    .line 57
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/views/ClickableImageButton;->sImageSelectedPaint:Landroid/graphics/Paint;

    .line 58
    sget-object v0, Lcom/google/android/apps/plus/views/ClickableImageButton;->sImageSelectedPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4080

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 59
    sget-object v0, Lcom/google/android/apps/plus/views/ClickableImageButton;->sImageSelectedPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a003c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 61
    sget-object v0, Lcom/google/android/apps/plus/views/ClickableImageButton;->sImageSelectedPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 63
    :cond_37
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 6
    .parameter "canvas"

    .prologue
    const/4 v3, 0x0

    .line 120
    iget-boolean v2, p0, Lcom/google/android/apps/plus/views/ClickableImageButton;->mClicked:Z

    if-eqz v2, :cond_27

    iget-object v2, p0, Lcom/google/android/apps/plus/views/ClickableImageButton;->mClickedBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_27

    iget-object v2, p0, Lcom/google/android/apps/plus/views/ClickableImageButton;->mListener:Lcom/google/android/apps/plus/views/ClickableImageButton$ClickableImageButtonListener;

    if-eqz v2, :cond_27

    const/4 v1, 0x1

    .line 121
    .local v1, drawSelectionRect:Z
    :goto_e
    iget-boolean v2, p0, Lcom/google/android/apps/plus/views/ClickableImageButton;->mClicked:Z

    if-eqz v2, :cond_29

    iget-object v2, p0, Lcom/google/android/apps/plus/views/ClickableImageButton;->mClickedBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_29

    iget-object v2, p0, Lcom/google/android/apps/plus/views/ClickableImageButton;->mListener:Lcom/google/android/apps/plus/views/ClickableImageButton$ClickableImageButtonListener;

    if-eqz v2, :cond_29

    iget-object v0, p0, Lcom/google/android/apps/plus/views/ClickableImageButton;->mClickedBitmap:Landroid/graphics/Bitmap;

    .line 124
    .local v0, bitmapToDraw:Landroid/graphics/Bitmap;
    :goto_1c
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ClickableImageButton;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v3, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 125
    if-eqz v1, :cond_26

    .line 126
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/views/ClickableImageButton;->drawSelectionRect(Landroid/graphics/Canvas;)V

    .line 128
    :cond_26
    return-void

    .line 120
    .end local v0           #bitmapToDraw:Landroid/graphics/Bitmap;
    .end local v1           #drawSelectionRect:Z
    :cond_27
    const/4 v1, 0x0

    goto :goto_e

    .line 121
    .restart local v1       #drawSelectionRect:Z
    :cond_29
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ClickableImageButton;->mDefaultBitmap:Landroid/graphics/Bitmap;

    goto :goto_1c
.end method

.method public drawSelectionRect(Landroid/graphics/Canvas;)V
    .registers 8
    .parameter "canvas"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ClickableImageButton;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, 0x2

    int-to-float v1, v0

    iget-object v0, p0, Lcom/google/android/apps/plus/views/ClickableImageButton;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, 0x2

    int-to-float v2, v0

    iget-object v0, p0, Lcom/google/android/apps/plus/views/ClickableImageButton;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, -0x2

    int-to-float v3, v0

    iget-object v0, p0, Lcom/google/android/apps/plus/views/ClickableImageButton;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, -0x2

    int-to-float v4, v0

    sget-object v5, Lcom/google/android/apps/plus/views/ClickableImageButton;->sImageSelectedPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 138
    return-void
.end method

.method public getRect()Landroid/graphics/Rect;
    .registers 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ClickableImageButton;->mRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public handleEvent(III)Z
    .registers 8
    .parameter "x"
    .parameter "y"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 153
    const/4 v3, 0x3

    if-ne p3, v3, :cond_8

    .line 154
    iput-boolean v2, p0, Lcom/google/android/apps/plus/views/ClickableImageButton;->mClicked:Z

    .line 185
    :goto_7
    return v1

    .line 158
    :cond_8
    iget-object v3, p0, Lcom/google/android/apps/plus/views/ClickableImageButton;->mSelectionRect:Landroid/graphics/Rect;

    if-nez v3, :cond_1a

    iget-object v0, p0, Lcom/google/android/apps/plus/views/ClickableImageButton;->mRect:Landroid/graphics/Rect;

    .line 159
    .local v0, checkRect:Landroid/graphics/Rect;
    :goto_e
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-nez v3, :cond_1d

    .line 160
    if-ne p3, v1, :cond_18

    .line 161
    iput-boolean v2, p0, Lcom/google/android/apps/plus/views/ClickableImageButton;->mClicked:Z

    :cond_18
    move v1, v2

    .line 163
    goto :goto_7

    .line 158
    .end local v0           #checkRect:Landroid/graphics/Rect;
    :cond_1a
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ClickableImageButton;->mSelectionRect:Landroid/graphics/Rect;

    goto :goto_e

    .line 166
    .restart local v0       #checkRect:Landroid/graphics/Rect;
    :cond_1d
    packed-switch p3, :pswitch_data_34

    goto :goto_7

    .line 168
    :pswitch_21
    iput-boolean v1, p0, Lcom/google/android/apps/plus/views/ClickableImageButton;->mClicked:Z

    goto :goto_7

    .line 173
    :pswitch_24
    iget-boolean v3, p0, Lcom/google/android/apps/plus/views/ClickableImageButton;->mClicked:Z

    if-eqz v3, :cond_31

    iget-object v3, p0, Lcom/google/android/apps/plus/views/ClickableImageButton;->mListener:Lcom/google/android/apps/plus/views/ClickableImageButton$ClickableImageButtonListener;

    if-eqz v3, :cond_31

    .line 174
    iget-object v3, p0, Lcom/google/android/apps/plus/views/ClickableImageButton;->mListener:Lcom/google/android/apps/plus/views/ClickableImageButton$ClickableImageButtonListener;

    invoke-interface {v3, p0}, Lcom/google/android/apps/plus/views/ClickableImageButton$ClickableImageButtonListener;->onClickableImageButtonClick(Lcom/google/android/apps/plus/views/ClickableImageButton;)V

    .line 176
    :cond_31
    iput-boolean v2, p0, Lcom/google/android/apps/plus/views/ClickableImageButton;->mClicked:Z

    goto :goto_7

    .line 166
    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_21
        :pswitch_24
    .end packed-switch
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .registers 8
    .parameter "defaultBitmap"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/google/android/apps/plus/views/ClickableImageButton;->mDefaultBitmap:Landroid/graphics/Bitmap;

    .line 70
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ClickableImageButton;->mRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_2b

    .line 71
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/google/android/apps/plus/views/ClickableImageButton;->mRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/google/android/apps/plus/views/ClickableImageButton;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/google/android/apps/plus/views/ClickableImageButton;->mRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/google/android/apps/plus/views/ClickableImageButton;->mDefaultBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/google/android/apps/plus/views/ClickableImageButton;->mRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/google/android/apps/plus/views/ClickableImageButton;->mDefaultBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/ClickableImageButton;->mRect:Landroid/graphics/Rect;

    .line 74
    :cond_2b
    return-void
.end method

.method public setPosition(II)V
    .registers 6
    .parameter "left"
    .parameter "top"

    .prologue
    .line 89
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/google/android/apps/plus/views/ClickableImageButton;->mDefaultBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    add-int/2addr v1, p1

    iget-object v2, p0, Lcom/google/android/apps/plus/views/ClickableImageButton;->mDefaultBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    add-int/2addr v2, p2

    invoke-direct {v0, p1, p2, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/ClickableImageButton;->mRect:Landroid/graphics/Rect;

    .line 91
    return-void
.end method

.method public setSelectionPadding(I)V
    .registers 7
    .parameter "padding"

    .prologue
    .line 106
    if-gtz p1, :cond_6

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/views/ClickableImageButton;->mSelectionRect:Landroid/graphics/Rect;

    .line 112
    :goto_5
    return-void

    .line 109
    :cond_6
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/google/android/apps/plus/views/ClickableImageButton;->mRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, p1

    iget-object v2, p0, Lcom/google/android/apps/plus/views/ClickableImageButton;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, p1

    iget-object v3, p0, Lcom/google/android/apps/plus/views/ClickableImageButton;->mRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, p1

    iget-object v4, p0, Lcom/google/android/apps/plus/views/ClickableImageButton;->mRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/ClickableImageButton;->mSelectionRect:Landroid/graphics/Rect;

    goto :goto_5
.end method
