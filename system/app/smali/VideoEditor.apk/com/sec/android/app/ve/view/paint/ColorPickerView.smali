.class public Lcom/sec/android/app/ve/view/paint/ColorPickerView;
.super Landroid/view/View;
.source "ColorPickerView.java"


# static fields
.field public static final COLORS:[I = null

.field private static final COLOR_COLUMN_NUM:I = 0x8

.field private static final COLOR_RAW_NUM:I = 0x2

.field private static mCurColrIndx:[I

.field private static setting:Z


# instance fields
.field private COLOR_HEIGHT:I

.field private COLOR_PICKER_HEIGHT:I

.field private COLOR_PICKER_WIDTH:I

.field private COLOR_SHADOW_HEIGHT:I

.field private COLOR_SHADOW_WIDTH:I

.field private COLOR_WIDTH:I

.field private GAP:I

.field private MARGIN:I

.field private POSITION_GAP:I

.field private colored:Landroid/graphics/Bitmap;

.field private mColorChangedListener:Lcom/sec/android/app/ve/view/paint/ColorChangedListener;

.field private mColorShadow:Landroid/graphics/drawable/Drawable;

.field private mPopup:Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;

.field private mSelectDrawable:Landroid/graphics/drawable/Drawable;

.field private rainbow:Landroid/graphics/Bitmap;

.field private select_rect_old:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .prologue
    const/16 v9, 0x72

    const/16 v8, 0x30

    const/4 v7, 0x4

    const/4 v6, 0x0

    const/16 v5, 0xff

    .line 23
    const/16 v0, 0x10

    new-array v0, v0, [I

    .line 24
    invoke-static {v5, v5, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    aput v1, v0, v6

    const/4 v1, 0x1

    const/16 v2, 0xfc

    const/16 v3, 0x2c

    invoke-static {v2, v5, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x83

    const/16 v3, 0x5d

    invoke-static {v5, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x36

    const/16 v3, 0x5b

    invoke-static {v5, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    .line 25
    const/16 v1, 0x49

    const/16 v2, 0xc8

    invoke-static {v5, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    aput v1, v0, v7

    const/4 v1, 0x5

    const/16 v2, 0xcb

    const/16 v3, 0x85

    invoke-static {v2, v3, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x38

    const/16 v3, 0xa8

    const/16 v4, 0xfe

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x34

    const/16 v3, 0x67

    const/16 v4, 0xfe

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x8

    .line 26
    const/16 v2, 0x16

    const/16 v3, 0xcc

    const/16 v4, 0x79

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x9

    const/4 v2, 0x1

    const/16 v3, 0x93

    const/16 v4, 0x2e

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x67

    const/16 v3, 0x2e

    invoke-static {v7, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0xa5

    const/16 v3, 0xa5

    const/16 v4, 0xa5

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xc

    .line 27
    invoke-static {v9, v9, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xd

    invoke-static {v8, v8, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xe

    invoke-static {v6, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xf

    invoke-static {v5, v5, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    .line 23
    sput-object v0, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->COLORS:[I

    .line 48
    new-array v0, v7, [I

    fill-array-data v0, :array_c4

    sput-object v0, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->mCurColrIndx:[I

    .line 49
    sput-boolean v6, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->setting:Z

    .line 22
    return-void

    .line 48
    nop

    :array_c4
    .array-data 0x4
        0xet 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    const/4 v1, 0x2

    .line 56
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 39
    iput v1, p0, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->MARGIN:I

    .line 40
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->GAP:I

    .line 41
    iput v1, p0, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->POSITION_GAP:I

    .line 51
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->select_rect_old:Landroid/graphics/Rect;

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x2

    .line 60
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    iput v1, p0, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->MARGIN:I

    .line 40
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->GAP:I

    .line 41
    iput v1, p0, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->POSITION_GAP:I

    .line 51
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->select_rect_old:Landroid/graphics/Rect;

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x2

    .line 64
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    iput v1, p0, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->MARGIN:I

    .line 40
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->GAP:I

    .line 41
    iput v1, p0, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->POSITION_GAP:I

    .line 51
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->select_rect_old:Landroid/graphics/Rect;

    .line 65
    return-void
.end method

.method private changeColor(FF)V
    .registers 12
    .parameter "x"
    .parameter "y"

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->getWidth()I

    move-result v5

    iget v6, p0, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->COLOR_PICKER_WIDTH:I

    sub-int/2addr v5, v6

    div-int/lit8 v2, v5, 0x2

    .line 126
    .local v2, pl:I
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->getHeight()I

    move-result v5

    div-int/lit8 v3, v5, 0x2

    .line 127
    .local v3, pt:I
    const/4 v4, 0x0

    .line 128
    .local v4, x_idx:I
    iget v5, p0, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->COLOR_SHADOW_WIDTH:I

    add-int/2addr v5, v2

    iget v6, p0, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->MARGIN:I

    add-int v0, v5, v6

    .line 130
    .local v0, cur_x:I
    const/4 v1, 0x1

    .local v1, i:I
    :goto_18
    const/16 v5, 0x9

    if-lt v1, v5, :cond_4e

    .line 137
    :cond_1c
    int-to-float v5, v3

    cmpl-float v5, p2, v5

    if-ltz v5, :cond_23

    .line 138
    add-int/lit8 v4, v4, 0x8

    .line 139
    :cond_23
    sget-object v5, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->mCurColrIndx:[I

    invoke-direct {p0}, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->getPaintPopup()Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->getPenTypeIndex()I

    move-result v6

    aput v4, v5, v6

    .line 140
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->invalidate()V

    .line 142
    sget-object v5, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->mCurColrIndx:[I

    invoke-direct {p0}, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->getPaintPopup()Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->getPenTypeIndex()I

    move-result v6

    aget v5, v5, v6

    const/16 v6, 0xf

    if-ne v5, v6, :cond_5e

    sget-boolean v5, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->setting:Z

    if-nez v5, :cond_5e

    .line 145
    invoke-direct {p0}, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->getPaintPopup()Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->toExpand()V

    .line 152
    :cond_4d
    :goto_4d
    return-void

    .line 131
    :cond_4e
    add-int/lit8 v4, v1, -0x1

    .line 132
    int-to-float v5, v0

    cmpl-float v5, v5, p1

    if-gtz v5, :cond_1c

    .line 135
    iget v5, p0, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->COLOR_SHADOW_WIDTH:I

    iget v6, p0, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->GAP:I

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    .line 130
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 149
    :cond_5e
    iget-object v5, p0, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->mColorChangedListener:Lcom/sec/android/app/ve/view/paint/ColorChangedListener;

    if-eqz v5, :cond_4d

    .line 150
    iget-object v5, p0, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->mColorChangedListener:Lcom/sec/android/app/ve/view/paint/ColorChangedListener;

    sget-object v6, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->COLORS:[I

    sget-object v7, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->mCurColrIndx:[I

    invoke-direct {p0}, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->getPaintPopup()Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->getPenTypeIndex()I

    move-result v8

    aget v7, v7, v8

    aget v6, v6, v7

    invoke-interface {v5, v6}, Lcom/sec/android/app/ve/view/paint/ColorChangedListener;->onColorChanged(I)V

    goto :goto_4d
.end method

.method private drawColors(Landroid/graphics/Canvas;)V
    .registers 15
    .parameter "canvas"

    .prologue
    const/4 v12, 0x0

    const/16 v11, 0xf

    const/4 v10, 0x0

    .line 174
    iget v1, p0, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->MARGIN:I

    .line 175
    .local v1, cur_y:I
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 176
    .local v5, r:Landroid/graphics/Rect;
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 178
    .local v6, select_rect:Landroid/graphics/Rect;
    iget v0, p0, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->MARGIN:I

    .line 179
    .local v0, cur_x:I
    const/4 v4, 0x0

    .local v4, j:I
    :goto_13
    const/4 v7, 0x2

    if-lt v4, v7, :cond_53

    .line 205
    iget v7, v6, Landroid/graphics/Rect;->left:I

    iget v8, p0, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->MARGIN:I

    sub-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->left:I

    .line 206
    iget v7, v6, Landroid/graphics/Rect;->right:I

    iget v8, p0, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->MARGIN:I

    add-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->right:I

    .line 207
    iget v7, v6, Landroid/graphics/Rect;->top:I

    iget v8, p0, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->MARGIN:I

    sub-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->top:I

    .line 208
    iget v7, v6, Landroid/graphics/Rect;->bottom:I

    iget v8, p0, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->MARGIN:I

    add-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    .line 210
    sget-object v7, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->mCurColrIndx:[I

    invoke-direct {p0}, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->getPaintPopup()Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->getPenTypeIndex()I

    move-result v8

    aget v7, v7, v8

    if-ne v7, v11, :cond_44

    sget-boolean v7, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->setting:Z

    if-eqz v7, :cond_46

    .line 212
    :cond_44
    iput-object v6, p0, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->select_rect_old:Landroid/graphics/Rect;

    .line 214
    :cond_46
    iget-object v7, p0, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->mSelectDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v8, p0, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->select_rect_old:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 215
    iget-object v7, p0, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->mSelectDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 216
    return-void

    .line 180
    :cond_53
    iget v0, p0, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->MARGIN:I

    .line 181
    iget v7, p0, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->MARGIN:I

    iget v8, p0, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->COLOR_SHADOW_HEIGHT:I

    iget v9, p0, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->MARGIN:I

    add-int/2addr v8, v9

    mul-int/2addr v8, v4

    add-int v1, v7, v8

    .line 182
    const/4 v2, 0x0

    .local v2, i:I
    :goto_60
    const/16 v7, 0x8

    if-lt v2, v7, :cond_67

    .line 179
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 183
    :cond_67
    iget v7, p0, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->COLOR_SHADOW_WIDTH:I

    add-int/2addr v7, v0

    iget v8, p0, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->COLOR_SHADOW_WIDTH:I

    add-int/2addr v8, v1

    invoke-virtual {v5, v0, v1, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 184
    mul-int/lit8 v7, v4, 0x8

    add-int v3, v7, v2

    .line 185
    .local v3, idx:I
    if-ne v3, v11, :cond_9f

    sget-boolean v7, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->setting:Z

    if-nez v7, :cond_9f

    .line 186
    iget-object v7, p0, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->rainbow:Landroid/graphics/Bitmap;

    iget v8, v5, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    iget v9, v5, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    invoke-virtual {p1, v7, v8, v9, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 198
    :goto_85
    sget-object v7, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->mCurColrIndx:[I

    invoke-direct {p0}, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->getPaintPopup()Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->getPenTypeIndex()I

    move-result v8

    aget v7, v7, v8

    if-ne v3, v7, :cond_96

    .line 199
    invoke-virtual {v6, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 201
    :cond_96
    iget v7, p0, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->COLOR_SHADOW_WIDTH:I

    iget v8, p0, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->GAP:I

    add-int/2addr v7, v8

    add-int/2addr v0, v7

    .line 182
    add-int/lit8 v2, v2, 0x1

    goto :goto_60

    .line 188
    :cond_9f
    sget-object v7, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->COLORS:[I

    mul-int/lit8 v8, v4, 0x8

    add-int/2addr v8, v2

    aget v7, v7, v8

    invoke-direct {p0, v7}, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->setShadowColor(I)V

    .line 192
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 193
    iget v7, v5, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    iget v8, v5, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 194
    iget-object v7, p0, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->colored:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v7, v10, v10, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 195
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_85
.end method

.method private getPaintPopup()Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;
    .registers 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->mPopup:Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;

    if-nez v0, :cond_a

    .line 222
    invoke-static {}, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->getInstance()Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->mPopup:Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;

    .line 224
    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->mPopup:Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;

    return-object v0
.end method

.method private initColorPicker(II)V
    .registers 15
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v11, 0x6

    const/4 v10, 0x0

    const/4 v1, 0x0

    .line 78
    iput p1, p0, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->COLOR_PICKER_WIDTH:I

    .line 79
    iput p2, p0, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->COLOR_PICKER_HEIGHT:I

    .line 81
    iget-object v2, p0, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->mColorShadow:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_42

    .line 82
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200f3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->mColorShadow:Landroid/graphics/drawable/Drawable;

    .line 83
    iget-object v2, p0, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->mColorShadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->COLOR_SHADOW_WIDTH:I

    .line 84
    iget-object v2, p0, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->mColorShadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->COLOR_SHADOW_HEIGHT:I

    .line 86
    iget v2, p0, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->COLOR_SHADOW_WIDTH:I

    add-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->COLOR_WIDTH:I

    .line 87
    iget v2, p0, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->COLOR_SHADOW_HEIGHT:I

    add-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->COLOR_HEIGHT:I

    .line 89
    iget-object v2, p0, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->mColorShadow:Landroid/graphics/drawable/Drawable;

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->COLOR_SHADOW_WIDTH:I

    iget v7, p0, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->COLOR_SHADOW_HEIGHT:I

    invoke-direct {v3, v10, v10, v4, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 92
    :cond_42
    iget-object v2, p0, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->mColorShadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->COLOR_WIDTH:I

    .line 93
    iget-object v2, p0, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->mColorShadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->COLOR_HEIGHT:I

    .line 95
    iget-object v2, p0, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->mSelectDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_63

    .line 96
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200f1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->mSelectDrawable:Landroid/graphics/drawable/Drawable;

    .line 99
    :cond_63
    new-array v5, v11, [I

    fill-array-data v5, :array_cc

    .line 103
    .local v5, colors:[I
    new-array v6, v11, [F

    fill-array-data v6, :array_dc

    .line 107
    .local v6, positions:[F
    iget-object v2, p0, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->rainbow:Landroid/graphics/Bitmap;

    if-nez v2, :cond_bb

    .line 108
    iget v2, p0, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->COLOR_SHADOW_WIDTH:I

    iget v3, p0, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->COLOR_SHADOW_HEIGHT:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->rainbow:Landroid/graphics/Bitmap;

    .line 109
    new-instance v8, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->rainbow:Landroid/graphics/Bitmap;

    invoke-direct {v8, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 110
    .local v8, c:Landroid/graphics/Canvas;
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v2, p0, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->COLOR_SHADOW_WIDTH:I

    iget v3, p0, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->POSITION_GAP:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v3, v2

    .line 111
    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v4, v1

    .line 110
    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 112
    .local v0, g:Landroid/graphics/LinearGradient;
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    .line 113
    .local v9, p:Landroid/graphics/Paint;
    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 114
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 115
    const/4 v1, 0x1

    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 116
    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->POSITION_GAP:I

    iget v3, p0, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->POSITION_GAP:I

    iget v4, p0, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->COLOR_WIDTH:I

    iget v7, p0, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->COLOR_HEIGHT:I

    invoke-direct {v1, v2, v3, v4, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v8, v1, v9}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 117
    iget-object v1, p0, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->mColorShadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 120
    .end local v0           #g:Landroid/graphics/LinearGradient;
    .end local v8           #c:Landroid/graphics/Canvas;
    .end local v9           #p:Landroid/graphics/Paint;
    :cond_bb
    iget-object v1, p0, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->colored:Landroid/graphics/Bitmap;

    if-nez v1, :cond_cb

    .line 121
    iget v1, p0, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->COLOR_SHADOW_WIDTH:I

    iget v2, p0, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->COLOR_SHADOW_HEIGHT:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->colored:Landroid/graphics/Bitmap;

    .line 122
    :cond_cb
    return-void

    .line 99
    :array_cc
    .array-data 0x4
        0x0t 0x0t 0xfft 0xfft
        0x0t 0xfft 0xfft 0xfft
        0x0t 0xfft 0x0t 0xfft
        0xfft 0xfft 0x0t 0xfft
        0xfft 0x0t 0x0t 0xfft
        0xfft 0x0t 0xfft 0xfft
    .end array-data

    .line 103
    :array_dc
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xcdt 0xcct 0x4ct 0x3et
        0xcdt 0xcct 0xcct 0x3et
        0x9at 0x99t 0x19t 0x3ft
        0xcdt 0xcct 0x4ct 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private setShadowColor(I)V
    .registers 9
    .parameter "color"

    .prologue
    .line 155
    iget-object v2, p0, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->colored:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 156
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->colored:Landroid/graphics/Bitmap;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 157
    .local v0, c:Landroid/graphics/Canvas;
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 158
    .local v1, p:Landroid/graphics/Paint;
    const/high16 v2, -0x100

    or-int/2addr p1, v2

    .line 159
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 160
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 161
    new-instance v2, Landroid/graphics/Rect;

    iget v3, p0, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->MARGIN:I

    iget v4, p0, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->MARGIN:I

    iget v5, p0, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->COLOR_WIDTH:I

    iget v6, p0, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->COLOR_HEIGHT:I

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 162
    iget-object v2, p0, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->mColorShadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 163
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 320
    iget-object v0, p0, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->rainbow:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_c

    .line 322
    iget-object v0, p0, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->rainbow:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 323
    iput-object v1, p0, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->rainbow:Landroid/graphics/Bitmap;

    .line 325
    :cond_c
    iget-object v0, p0, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->colored:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_17

    .line 327
    iget-object v0, p0, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->colored:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 328
    iput-object v1, p0, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->colored:Landroid/graphics/Bitmap;

    .line 330
    :cond_17
    iput-object v1, p0, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->mSelectDrawable:Landroid/graphics/drawable/Drawable;

    .line 331
    iput-object v1, p0, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->mColorShadow:Landroid/graphics/drawable/Drawable;

    .line 332
    iput-object v1, p0, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->mPopup:Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;

    .line 333
    iput-object v1, p0, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->mColorChangedListener:Lcom/sec/android/app/ve/view/paint/ColorChangedListener;

    .line 334
    return-void
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 309
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 315
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public getColor()I
    .registers 4

    .prologue
    .line 239
    sget-object v0, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->COLORS:[I

    sget-object v1, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->mCurColrIndx:[I

    invoke-direct {p0}, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->getPaintPopup()Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->getPenTypeIndex()I

    move-result v2

    aget v1, v1, v2

    aget v0, v0, v1

    return v0
.end method

.method public getColorIndex()I
    .registers 3

    .prologue
    .line 74
    sget-object v0, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->mCurColrIndx:[I

    invoke-direct {p0}, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->getPaintPopup()Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->getPenTypeIndex()I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method public initializeSettingFlag()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v2, 0xff

    .line 247
    sput-boolean v5, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->setting:Z

    .line 248
    sget-object v0, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->COLORS:[I

    const/16 v1, 0xf

    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    .line 249
    sget-object v0, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->mCurColrIndx:[I

    const/4 v1, 0x2

    sget-object v2, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->mCurColrIndx:[I

    sget-object v3, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->mCurColrIndx:[I

    const/16 v4, 0xe

    aput v4, v3, v5

    aput v4, v2, v6

    aput v4, v0, v1

    .line 250
    sget-object v0, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->mCurColrIndx:[I

    const/4 v1, 0x3

    aput v6, v0, v1

    .line 251
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 2
    .parameter "canvas"

    .prologue
    .line 269
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 271
    invoke-direct {p0, p1}, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->drawColors(Landroid/graphics/Canvas;)V

    .line 272
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 8
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 260
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 262
    if-eqz p1, :cond_c

    .line 263
    sub-int v0, p4, p2

    sub-int v1, p5, p3

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->initColorPicker(II)V

    .line 265
    :cond_c
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 11
    .parameter "event"

    .prologue
    .line 276
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 277
    .local v4, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 279
    .local v6, y:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    packed-switch v7, :pswitch_data_50

    .line 304
    :cond_f
    :goto_f
    :pswitch_f
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    return v7

    .line 283
    :pswitch_14
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->getWidth()I

    move-result v7

    iget v8, p0, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->COLOR_PICKER_WIDTH:I

    sub-int/2addr v7, v8

    div-int/lit8 v2, v7, 0x2

    .line 284
    .local v2, pl:I
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->getHeight()I

    move-result v7

    div-int/lit8 v3, v7, 0x2

    .line 285
    .local v3, pt:I
    const/4 v5, 0x0

    .line 286
    .local v5, x_idx:I
    iget v7, p0, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->COLOR_SHADOW_WIDTH:I

    add-int/2addr v7, v2

    iget v8, p0, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->MARGIN:I

    add-int v0, v7, v8

    .line 288
    .local v0, cur_x:I
    const/4 v1, 0x1

    .local v1, i:I
    :goto_2c
    const/16 v7, 0x9

    if-lt v1, v7, :cond_3f

    .line 295
    :cond_30
    int-to-float v7, v3

    cmpl-float v7, v6, v7

    if-ltz v7, :cond_37

    .line 296
    add-int/lit8 v5, v5, 0x8

    .line 297
    :cond_37
    const/16 v7, 0xf

    if-eq v5, v7, :cond_f

    .line 300
    .end local v0           #cur_x:I
    .end local v1           #i:I
    .end local v2           #pl:I
    .end local v3           #pt:I
    .end local v5           #x_idx:I
    :pswitch_3b
    invoke-direct {p0, v4, v6}, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->changeColor(FF)V

    goto :goto_f

    .line 289
    .restart local v0       #cur_x:I
    .restart local v1       #i:I
    .restart local v2       #pl:I
    .restart local v3       #pt:I
    .restart local v5       #x_idx:I
    :cond_3f
    add-int/lit8 v5, v1, -0x1

    .line 290
    int-to-float v7, v0

    cmpl-float v7, v7, v4

    if-gtz v7, :cond_30

    .line 293
    iget v7, p0, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->COLOR_SHADOW_WIDTH:I

    iget v8, p0, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->GAP:I

    add-int/2addr v7, v8

    add-int/2addr v0, v7

    .line 288
    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    .line 279
    nop

    :pswitch_data_50
    .packed-switch 0x0
        :pswitch_f
        :pswitch_3b
        :pswitch_14
    .end packed-switch
.end method

.method public setColor(I)V
    .registers 6
    .parameter "color"

    .prologue
    .line 228
    sget-object v2, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->COLORS:[I

    array-length v1, v2

    .line 229
    .local v1, nSize:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    if-lt v0, v1, :cond_7

    .line 235
    :goto_6
    return-void

    .line 230
    :cond_7
    sget-object v2, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->COLORS:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_1a

    .line 231
    sget-object v2, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->mCurColrIndx:[I

    invoke-direct {p0}, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->getPaintPopup()Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->getPenTypeIndex()I

    move-result v3

    aput v0, v2, v3

    goto :goto_6

    .line 229
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method public setColorIndex(I)V
    .registers 4
    .parameter "index"

    .prologue
    .line 69
    sget-object v0, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->mCurColrIndx:[I

    invoke-direct {p0}, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->getPaintPopup()Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->getPenTypeIndex()I

    move-result v1

    aput p1, v0, v1

    .line 70
    return-void
.end method

.method public setColorchangedListener(Lcom/sec/android/app/ve/view/paint/ColorChangedListener;)V
    .registers 2
    .parameter "l"

    .prologue
    .line 243
    iput-object p1, p0, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->mColorChangedListener:Lcom/sec/android/app/ve/view/paint/ColorChangedListener;

    .line 244
    return-void
.end method

.method public setFocusToRainbow()V
    .registers 4

    .prologue
    .line 254
    sget-object v0, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->mCurColrIndx:[I

    invoke-direct {p0}, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->getPaintPopup()Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->getPenTypeIndex()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1

    .line 255
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->invalidate()V

    .line 256
    return-void
.end method

.method public setSelectorColor(I)V
    .registers 5
    .parameter "color"

    .prologue
    const/16 v2, 0xf

    .line 166
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->setting:Z

    .line 167
    sget-object v0, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->mCurColrIndx:[I

    invoke-direct {p0}, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->getPaintPopup()Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->getPenTypeIndex()I

    move-result v1

    aput v2, v0, v1

    .line 168
    sget-object v0, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->COLORS:[I

    aput p1, v0, v2

    .line 169
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->invalidate()V

    .line 170
    return-void
.end method
