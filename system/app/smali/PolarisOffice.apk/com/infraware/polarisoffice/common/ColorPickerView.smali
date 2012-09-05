.class public Lcom/infraware/polarisoffice/common/ColorPickerView;
.super Landroid/view/View;
.source "ColorPickerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/infraware/polarisoffice/common/ColorPickerView$ColorChangedListener;
    }
.end annotation


# static fields
.field public static final COLORS:[I = null

.field private static final COLOR_COLUMN_NUM:I = 0x8

.field private static final COLOR_RAW_NUM:I = 0x2


# instance fields
.field private COLOR_HEIGHT:I

.field private COLOR_PICKER_HEIGHT:I

.field private COLOR_PICKER_WIDTH:I

.field private COLOR_SHADOW_HEIGHT:I

.field private COLOR_SHADOW_WIDTH:I

.field private COLOR_WIDTH:I

.field private GAP:I

.field private MARGIN:I

.field public MAX_COLOR_INDEX:I

.field private POSITION_GAP:I

.field private colored:Landroid/graphics/Bitmap;

.field private context:Landroid/content/Context;

.field private mColorChangedListener:Lcom/infraware/polarisoffice/common/ColorPickerView$ColorChangedListener;

.field private mColorShadow:Landroid/graphics/drawable/Drawable;

.field private mCurColrIndx:I

.field private mPrevColorIdx:I

.field private mSelectDrawable:Landroid/graphics/drawable/Drawable;

.field private rainbow:Landroid/graphics/Bitmap;

.field private setting:Z

.field public userSet:Z


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .prologue
    const/16 v9, 0xa5

    const/16 v8, 0x72

    const/16 v7, 0x30

    const/4 v6, 0x0

    const/16 v5, 0xff

    .line 21
    const/16 v0, 0x10

    new-array v0, v0, [I

    .line 22
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

    const/4 v1, 0x4

    .line 23
    const/16 v2, 0x49

    const/16 v3, 0xc8

    invoke-static {v5, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

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

    .line 24
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

    const/4 v2, 0x4

    const/16 v3, 0x67

    const/16 v4, 0x2e

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xb

    invoke-static {v9, v9, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xc

    .line 25
    invoke-static {v8, v8, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xd

    invoke-static {v7, v7, v7}, Landroid/graphics/Color;->rgb(III)I

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

    .line 21
    sput-object v0, Lcom/infraware/polarisoffice/common/ColorPickerView;->COLORS:[I

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 55
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 37
    iput v2, p0, Lcom/infraware/polarisoffice/common/ColorPickerView;->MARGIN:I

    .line 38
    const/4 v0, 0x1

    iput v0, p0, Lcom/infraware/polarisoffice/common/ColorPickerView;->GAP:I

    .line 39
    iput v2, p0, Lcom/infraware/polarisoffice/common/ColorPickerView;->POSITION_GAP:I

    .line 41
    iput-boolean v1, p0, Lcom/infraware/polarisoffice/common/ColorPickerView;->setting:Z

    .line 47
    const/4 v0, 0x3

    iput v0, p0, Lcom/infraware/polarisoffice/common/ColorPickerView;->mCurColrIndx:I

    .line 48
    iput v1, p0, Lcom/infraware/polarisoffice/common/ColorPickerView;->mPrevColorIdx:I

    .line 51
    iput-boolean v1, p0, Lcom/infraware/polarisoffice/common/ColorPickerView;->userSet:Z

    .line 52
    const/16 v0, 0xf

    iput v0, p0, Lcom/infraware/polarisoffice/common/ColorPickerView;->MAX_COLOR_INDEX:I

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 59
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    iput v2, p0, Lcom/infraware/polarisoffice/common/ColorPickerView;->MARGIN:I

    .line 38
    const/4 v0, 0x1

    iput v0, p0, Lcom/infraware/polarisoffice/common/ColorPickerView;->GAP:I

    .line 39
    iput v2, p0, Lcom/infraware/polarisoffice/common/ColorPickerView;->POSITION_GAP:I

    .line 41
    iput-boolean v1, p0, Lcom/infraware/polarisoffice/common/ColorPickerView;->setting:Z

    .line 47
    const/4 v0, 0x3

    iput v0, p0, Lcom/infraware/polarisoffice/common/ColorPickerView;->mCurColrIndx:I

    .line 48
    iput v1, p0, Lcom/infraware/polarisoffice/common/ColorPickerView;->mPrevColorIdx:I

    .line 51
    iput-boolean v1, p0, Lcom/infraware/polarisoffice/common/ColorPickerView;->userSet:Z

    .line 52
    const/16 v0, 0xf

    iput v0, p0, Lcom/infraware/polarisoffice/common/ColorPickerView;->MAX_COLOR_INDEX:I

    .line 60
    iput-object p1, p0, Lcom/infraware/polarisoffice/common/ColorPickerView;->context:Landroid/content/Context;

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 64
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    iput v2, p0, Lcom/infraware/polarisoffice/common/ColorPickerView;->MARGIN:I

    .line 38
    const/4 v0, 0x1

    iput v0, p0, Lcom/infraware/polarisoffice/common/ColorPickerView;->GAP:I

    .line 39
    iput v2, p0, Lcom/infraware/polarisoffice/common/ColorPickerView;->POSITION_GAP:I

    .line 41
    iput-boolean v1, p0, Lcom/infraware/polarisoffice/common/ColorPickerView;->setting:Z

    .line 47
    const/4 v0, 0x3

    iput v0, p0, Lcom/infraware/polarisoffice/common/ColorPickerView;->mCurColrIndx:I

    .line 48
    iput v1, p0, Lcom/infraware/polarisoffice/common/ColorPickerView;->mPrevColorIdx:I

    .line 51
    iput-boolean v1, p0, Lcom/infraware/polarisoffice/common/ColorPickerView;->userSet:Z

    .line 52
    const/16 v0, 0xf

    iput v0, p0, Lcom/infraware/polarisoffice/common/ColorPickerView;->MAX_COLOR_INDEX:I

    .line 65
    return-void
.end method

.method private changeColor(FFZ)V
    .registers 12
    .parameter "x"
    .parameter "y"
    .parameter "isUpEvent"

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/ColorPickerView;->getWidth()I

    move-result v5

    iget v6, p0, Lcom/infraware/polarisoffice/common/ColorPickerView;->COLOR_PICKER_WIDTH:I

    sub-int/2addr v5, v6

    div-int/lit8 v2, v5, 0x2

    .line 139
    .local v2, pl:I
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/ColorPickerView;->getHeight()I

    move-result v5

    div-int/lit8 v3, v5, 0x2

    .line 140
    .local v3, pt:I
    const/4 v4, 0x0

    .line 141
    .local v4, x_idx:I
    iget v5, p0, Lcom/infraware/polarisoffice/common/ColorPickerView;->COLOR_SHADOW_WIDTH:I

    add-int/2addr v5, v2

    iget v6, p0, Lcom/infraware/polarisoffice/common/ColorPickerView;->MARGIN:I

    add-int v0, v5, v6

    .line 143
    .local v0, cur_x:I
    const/4 v1, 0x1

    .local v1, i:I
    :goto_18
    const/16 v5, 0x9

    if-lt v1, v5, :cond_42

    .line 150
    :cond_1c
    int-to-float v5, v3

    cmpl-float v5, p2, v5

    if-ltz v5, :cond_23

    .line 151
    add-int/lit8 v4, v4, 0x8

    .line 153
    :cond_23
    iput v4, p0, Lcom/infraware/polarisoffice/common/ColorPickerView;->mCurColrIndx:I

    .line 154
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/ColorPickerView;->invalidate()V

    .line 160
    iget v5, p0, Lcom/infraware/polarisoffice/common/ColorPickerView;->mCurColrIndx:I

    iget v6, p0, Lcom/infraware/polarisoffice/common/ColorPickerView;->MAX_COLOR_INDEX:I

    if-ne v5, v6, :cond_32

    iget-boolean v5, p0, Lcom/infraware/polarisoffice/common/ColorPickerView;->userSet:Z

    if-eqz v5, :cond_41

    :cond_32
    iget-object v5, p0, Lcom/infraware/polarisoffice/common/ColorPickerView;->mColorChangedListener:Lcom/infraware/polarisoffice/common/ColorPickerView$ColorChangedListener;

    if-eqz v5, :cond_41

    .line 161
    iget-object v5, p0, Lcom/infraware/polarisoffice/common/ColorPickerView;->mColorChangedListener:Lcom/infraware/polarisoffice/common/ColorPickerView$ColorChangedListener;

    sget-object v6, Lcom/infraware/polarisoffice/common/ColorPickerView;->COLORS:[I

    iget v7, p0, Lcom/infraware/polarisoffice/common/ColorPickerView;->mCurColrIndx:I

    aget v6, v6, v7

    invoke-interface {v5, v6}, Lcom/infraware/polarisoffice/common/ColorPickerView$ColorChangedListener;->onColorChanged(I)V

    .line 163
    :cond_41
    return-void

    .line 144
    :cond_42
    add-int/lit8 v4, v1, -0x1

    .line 145
    int-to-float v5, v0

    cmpl-float v5, v5, p1

    if-gtz v5, :cond_1c

    .line 148
    iget v5, p0, Lcom/infraware/polarisoffice/common/ColorPickerView;->COLOR_SHADOW_WIDTH:I

    iget v6, p0, Lcom/infraware/polarisoffice/common/ColorPickerView;->GAP:I

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    .line 143
    add-int/lit8 v1, v1, 0x1

    goto :goto_18
.end method

.method private drawColors(Landroid/graphics/Canvas;)V
    .registers 14
    .parameter "canvas"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 181
    iget v0, p0, Lcom/infraware/polarisoffice/common/ColorPickerView;->MARGIN:I

    .line 182
    .local v0, cur_x:I
    iget v1, p0, Lcom/infraware/polarisoffice/common/ColorPickerView;->MARGIN:I

    .line 183
    .local v1, cur_y:I
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 184
    .local v5, r:Landroid/graphics/Rect;
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 186
    .local v6, select_rect:Landroid/graphics/Rect;
    iget v0, p0, Lcom/infraware/polarisoffice/common/ColorPickerView;->MARGIN:I

    .line 187
    const/4 v4, 0x0

    .local v4, j:I
    :goto_13
    const/4 v7, 0x2

    if-lt v4, v7, :cond_3d

    .line 211
    iget v7, v6, Landroid/graphics/Rect;->left:I

    iget v8, p0, Lcom/infraware/polarisoffice/common/ColorPickerView;->MARGIN:I

    sub-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->left:I

    .line 212
    iget v7, v6, Landroid/graphics/Rect;->right:I

    iget v8, p0, Lcom/infraware/polarisoffice/common/ColorPickerView;->MARGIN:I

    add-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->right:I

    .line 213
    iget v7, v6, Landroid/graphics/Rect;->top:I

    iget v8, p0, Lcom/infraware/polarisoffice/common/ColorPickerView;->MARGIN:I

    sub-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->top:I

    .line 214
    iget v7, v6, Landroid/graphics/Rect;->bottom:I

    iget v8, p0, Lcom/infraware/polarisoffice/common/ColorPickerView;->MARGIN:I

    add-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    .line 216
    iget-object v7, p0, Lcom/infraware/polarisoffice/common/ColorPickerView;->mSelectDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v6}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 217
    iget-object v7, p0, Lcom/infraware/polarisoffice/common/ColorPickerView;->mSelectDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 218
    return-void

    .line 188
    :cond_3d
    iget v0, p0, Lcom/infraware/polarisoffice/common/ColorPickerView;->MARGIN:I

    .line 189
    iget v7, p0, Lcom/infraware/polarisoffice/common/ColorPickerView;->MARGIN:I

    iget v8, p0, Lcom/infraware/polarisoffice/common/ColorPickerView;->COLOR_SHADOW_HEIGHT:I

    iget v9, p0, Lcom/infraware/polarisoffice/common/ColorPickerView;->MARGIN:I

    add-int/2addr v8, v9

    mul-int/2addr v8, v4

    add-int v1, v7, v8

    .line 190
    const/4 v2, 0x0

    .local v2, i:I
    :goto_4a
    const/16 v7, 0x8

    if-lt v2, v7, :cond_51

    .line 187
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 191
    :cond_51
    iget v7, p0, Lcom/infraware/polarisoffice/common/ColorPickerView;->COLOR_SHADOW_WIDTH:I

    add-int/2addr v7, v0

    iget v8, p0, Lcom/infraware/polarisoffice/common/ColorPickerView;->COLOR_SHADOW_WIDTH:I

    add-int/2addr v8, v1

    invoke-virtual {v5, v0, v1, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 192
    mul-int/lit8 v7, v4, 0x8

    add-int v3, v7, v2

    .line 193
    .local v3, idx:I
    const/4 v7, 0x7

    if-ne v2, v7, :cond_83

    const/4 v7, 0x1

    if-ne v4, v7, :cond_83

    iget-boolean v7, p0, Lcom/infraware/polarisoffice/common/ColorPickerView;->userSet:Z

    if-nez v7, :cond_83

    .line 194
    iget-object v7, p0, Lcom/infraware/polarisoffice/common/ColorPickerView;->rainbow:Landroid/graphics/Bitmap;

    iget v8, v5, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    iget v9, v5, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    invoke-virtual {p1, v7, v8, v9, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 204
    :goto_73
    iget v7, p0, Lcom/infraware/polarisoffice/common/ColorPickerView;->mCurColrIndx:I

    if-ne v3, v7, :cond_7a

    .line 205
    invoke-virtual {v6, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 207
    :cond_7a
    iget v7, p0, Lcom/infraware/polarisoffice/common/ColorPickerView;->COLOR_SHADOW_WIDTH:I

    iget v8, p0, Lcom/infraware/polarisoffice/common/ColorPickerView;->GAP:I

    add-int/2addr v7, v8

    add-int/2addr v0, v7

    .line 190
    add-int/lit8 v2, v2, 0x1

    goto :goto_4a

    .line 197
    :cond_83
    sget-object v7, Lcom/infraware/polarisoffice/common/ColorPickerView;->COLORS:[I

    mul-int/lit8 v8, v4, 0x8

    add-int/2addr v8, v2

    aget v7, v7, v8

    invoke-direct {p0, v7}, Lcom/infraware/polarisoffice/common/ColorPickerView;->setShadowColor(I)V

    .line 198
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 199
    iget v7, v5, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    iget v8, v5, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 200
    iget-object v7, p0, Lcom/infraware/polarisoffice/common/ColorPickerView;->colored:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v7, v10, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 201
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_73
.end method

.method private initColorPicker(II)V
    .registers 15
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v11, 0x6

    const/4 v10, 0x0

    const/4 v1, 0x0

    .line 77
    iput p1, p0, Lcom/infraware/polarisoffice/common/ColorPickerView;->COLOR_PICKER_WIDTH:I

    .line 78
    iput p2, p0, Lcom/infraware/polarisoffice/common/ColorPickerView;->COLOR_PICKER_HEIGHT:I

    .line 80
    iget-object v2, p0, Lcom/infraware/polarisoffice/common/ColorPickerView;->mColorShadow:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_42

    .line 81
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/ColorPickerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02024c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/infraware/polarisoffice/common/ColorPickerView;->mColorShadow:Landroid/graphics/drawable/Drawable;

    .line 82
    iget-object v2, p0, Lcom/infraware/polarisoffice/common/ColorPickerView;->mColorShadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iput v2, p0, Lcom/infraware/polarisoffice/common/ColorPickerView;->COLOR_SHADOW_WIDTH:I

    .line 83
    iget-object v2, p0, Lcom/infraware/polarisoffice/common/ColorPickerView;->mColorShadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iput v2, p0, Lcom/infraware/polarisoffice/common/ColorPickerView;->COLOR_SHADOW_HEIGHT:I

    .line 85
    iget v2, p0, Lcom/infraware/polarisoffice/common/ColorPickerView;->COLOR_SHADOW_WIDTH:I

    add-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/infraware/polarisoffice/common/ColorPickerView;->COLOR_WIDTH:I

    .line 86
    iget v2, p0, Lcom/infraware/polarisoffice/common/ColorPickerView;->COLOR_SHADOW_HEIGHT:I

    add-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/infraware/polarisoffice/common/ColorPickerView;->COLOR_HEIGHT:I

    .line 88
    iget-object v2, p0, Lcom/infraware/polarisoffice/common/ColorPickerView;->mColorShadow:Landroid/graphics/drawable/Drawable;

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/infraware/polarisoffice/common/ColorPickerView;->COLOR_SHADOW_WIDTH:I

    iget v7, p0, Lcom/infraware/polarisoffice/common/ColorPickerView;->COLOR_SHADOW_HEIGHT:I

    invoke-direct {v3, v10, v10, v4, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 91
    :cond_42
    iget-object v2, p0, Lcom/infraware/polarisoffice/common/ColorPickerView;->mColorShadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iput v2, p0, Lcom/infraware/polarisoffice/common/ColorPickerView;->COLOR_WIDTH:I

    .line 92
    iget-object v2, p0, Lcom/infraware/polarisoffice/common/ColorPickerView;->mColorShadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iput v2, p0, Lcom/infraware/polarisoffice/common/ColorPickerView;->COLOR_HEIGHT:I

    .line 94
    iget-object v2, p0, Lcom/infraware/polarisoffice/common/ColorPickerView;->mSelectDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_63

    .line 95
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/ColorPickerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02024a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/infraware/polarisoffice/common/ColorPickerView;->mSelectDrawable:Landroid/graphics/drawable/Drawable;

    .line 98
    :cond_63
    new-array v5, v11, [I

    fill-array-data v5, :array_cc

    .line 102
    .local v5, colors:[I
    new-array v6, v11, [F

    fill-array-data v6, :array_dc

    .line 106
    .local v6, positions:[F
    iget-object v2, p0, Lcom/infraware/polarisoffice/common/ColorPickerView;->rainbow:Landroid/graphics/Bitmap;

    if-nez v2, :cond_bb

    .line 107
    iget v2, p0, Lcom/infraware/polarisoffice/common/ColorPickerView;->COLOR_SHADOW_WIDTH:I

    iget v3, p0, Lcom/infraware/polarisoffice/common/ColorPickerView;->COLOR_SHADOW_HEIGHT:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/infraware/polarisoffice/common/ColorPickerView;->rainbow:Landroid/graphics/Bitmap;

    .line 108
    new-instance v8, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/infraware/polarisoffice/common/ColorPickerView;->rainbow:Landroid/graphics/Bitmap;

    invoke-direct {v8, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 109
    .local v8, c:Landroid/graphics/Canvas;
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v2, p0, Lcom/infraware/polarisoffice/common/ColorPickerView;->COLOR_SHADOW_WIDTH:I

    iget v3, p0, Lcom/infraware/polarisoffice/common/ColorPickerView;->POSITION_GAP:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v3, v2

    .line 110
    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v4, v1

    .line 109
    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 111
    .local v0, g:Landroid/graphics/LinearGradient;
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    .line 112
    .local v9, p:Landroid/graphics/Paint;
    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 113
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 114
    const/4 v1, 0x1

    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 115
    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Lcom/infraware/polarisoffice/common/ColorPickerView;->POSITION_GAP:I

    iget v3, p0, Lcom/infraware/polarisoffice/common/ColorPickerView;->POSITION_GAP:I

    iget v4, p0, Lcom/infraware/polarisoffice/common/ColorPickerView;->COLOR_WIDTH:I

    iget v7, p0, Lcom/infraware/polarisoffice/common/ColorPickerView;->COLOR_HEIGHT:I

    invoke-direct {v1, v2, v3, v4, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v8, v1, v9}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 116
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ColorPickerView;->mColorShadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 119
    .end local v0           #g:Landroid/graphics/LinearGradient;
    .end local v8           #c:Landroid/graphics/Canvas;
    .end local v9           #p:Landroid/graphics/Paint;
    :cond_bb
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ColorPickerView;->colored:Landroid/graphics/Bitmap;

    if-nez v1, :cond_cb

    .line 120
    iget v1, p0, Lcom/infraware/polarisoffice/common/ColorPickerView;->COLOR_SHADOW_WIDTH:I

    iget v2, p0, Lcom/infraware/polarisoffice/common/ColorPickerView;->COLOR_SHADOW_HEIGHT:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/infraware/polarisoffice/common/ColorPickerView;->colored:Landroid/graphics/Bitmap;

    .line 121
    :cond_cb
    return-void

    .line 98
    :array_cc
    .array-data 0x4
        0x0t 0x0t 0xfft 0xfft
        0x0t 0xfft 0xfft 0xfft
        0x0t 0xfft 0x0t 0xfft
        0xfft 0xfft 0x0t 0xfft
        0xfft 0x0t 0x0t 0xfft
        0xfft 0x0t 0xfft 0xfft
    .end array-data

    .line 102
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
    .line 166
    iget-object v2, p0, Lcom/infraware/polarisoffice/common/ColorPickerView;->colored:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 167
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/infraware/polarisoffice/common/ColorPickerView;->colored:Landroid/graphics/Bitmap;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 168
    .local v0, c:Landroid/graphics/Canvas;
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 169
    .local v1, p:Landroid/graphics/Paint;
    const/high16 v2, -0x100

    or-int/2addr p1, v2

    .line 170
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 171
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 172
    new-instance v2, Landroid/graphics/Rect;

    iget v3, p0, Lcom/infraware/polarisoffice/common/ColorPickerView;->MARGIN:I

    iget v4, p0, Lcom/infraware/polarisoffice/common/ColorPickerView;->MARGIN:I

    iget v5, p0, Lcom/infraware/polarisoffice/common/ColorPickerView;->COLOR_WIDTH:I

    iget v6, p0, Lcom/infraware/polarisoffice/common/ColorPickerView;->COLOR_HEIGHT:I

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 173
    iget-object v2, p0, Lcom/infraware/polarisoffice/common/ColorPickerView;->mColorShadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 174
    return-void
.end method


# virtual methods
.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 275
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 280
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public getColor()I
    .registers 3

    .prologue
    .line 233
    sget-object v0, Lcom/infraware/polarisoffice/common/ColorPickerView;->COLORS:[I

    iget v1, p0, Lcom/infraware/polarisoffice/common/ColorPickerView;->mCurColrIndx:I

    aget v0, v0, v1

    return v0
.end method

.method public getColorIndex()I
    .registers 2

    .prologue
    .line 73
    iget v0, p0, Lcom/infraware/polarisoffice/common/ColorPickerView;->mCurColrIndx:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 2
    .parameter "canvas"

    .prologue
    .line 251
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 253
    invoke-direct {p0, p1}, Lcom/infraware/polarisoffice/common/ColorPickerView;->drawColors(Landroid/graphics/Canvas;)V

    .line 254
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
    .line 242
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 244
    if-eqz p1, :cond_c

    .line 245
    sub-int v0, p4, p2

    sub-int v1, p5, p3

    invoke-direct {p0, v0, v1}, Lcom/infraware/polarisoffice/common/ColorPickerView;->initColorPicker(II)V

    .line 247
    :cond_c
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter "event"

    .prologue
    .line 258
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 259
    .local v0, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 260
    .local v1, y:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_1e

    .line 270
    :goto_f
    :pswitch_f
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2

    .line 264
    :pswitch_14
    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/infraware/polarisoffice/common/ColorPickerView;->changeColor(FFZ)V

    goto :goto_f

    .line 267
    :pswitch_19
    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/infraware/polarisoffice/common/ColorPickerView;->changeColor(FFZ)V

    goto :goto_f

    .line 260
    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_f
        :pswitch_19
        :pswitch_14
    .end packed-switch
.end method

.method public setColor(I)V
    .registers 5
    .parameter "color"

    .prologue
    .line 221
    sget-object v2, Lcom/infraware/polarisoffice/common/ColorPickerView;->COLORS:[I

    array-length v1, v2

    .line 222
    .local v1, nSize:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    if-lt v0, v1, :cond_a

    .line 229
    invoke-virtual {p0, p1}, Lcom/infraware/polarisoffice/common/ColorPickerView;->setSelectorColor(I)V

    .line 230
    :goto_9
    return-void

    .line 223
    :cond_a
    sget-object v2, Lcom/infraware/polarisoffice/common/ColorPickerView;->COLORS:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_13

    .line 224
    iput v0, p0, Lcom/infraware/polarisoffice/common/ColorPickerView;->mCurColrIndx:I

    goto :goto_9

    .line 222
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method public setColorIndex(I)V
    .registers 3
    .parameter "index"

    .prologue
    .line 68
    iget v0, p0, Lcom/infraware/polarisoffice/common/ColorPickerView;->mCurColrIndx:I

    iput v0, p0, Lcom/infraware/polarisoffice/common/ColorPickerView;->mPrevColorIdx:I

    .line 69
    iput p1, p0, Lcom/infraware/polarisoffice/common/ColorPickerView;->mCurColrIndx:I

    .line 70
    return-void
.end method

.method public setColorchangedListener(Lcom/infraware/polarisoffice/common/ColorPickerView$ColorChangedListener;)V
    .registers 2
    .parameter "l"

    .prologue
    .line 237
    iput-object p1, p0, Lcom/infraware/polarisoffice/common/ColorPickerView;->mColorChangedListener:Lcom/infraware/polarisoffice/common/ColorPickerView$ColorChangedListener;

    .line 238
    return-void
.end method

.method public setSelectorColor(I)V
    .registers 4
    .parameter "color"

    .prologue
    const/16 v1, 0xf

    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/infraware/polarisoffice/common/ColorPickerView;->setting:Z

    .line 132
    iput v1, p0, Lcom/infraware/polarisoffice/common/ColorPickerView;->mCurColrIndx:I

    .line 133
    sget-object v0, Lcom/infraware/polarisoffice/common/ColorPickerView;->COLORS:[I

    aput p1, v0, v1

    .line 134
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/ColorPickerView;->invalidate()V

    .line 135
    return-void
.end method

.method public setVisibility(I)V
    .registers 4
    .parameter "visibility"

    .prologue
    .line 125
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 126
    const/16 v0, 0x8

    if-ne p1, v0, :cond_15

    iget v0, p0, Lcom/infraware/polarisoffice/common/ColorPickerView;->mCurColrIndx:I

    iget v1, p0, Lcom/infraware/polarisoffice/common/ColorPickerView;->MAX_COLOR_INDEX:I

    if-ne v0, v1, :cond_15

    iget-boolean v0, p0, Lcom/infraware/polarisoffice/common/ColorPickerView;->userSet:Z

    if-nez v0, :cond_15

    .line 127
    iget v0, p0, Lcom/infraware/polarisoffice/common/ColorPickerView;->mPrevColorIdx:I

    iput v0, p0, Lcom/infraware/polarisoffice/common/ColorPickerView;->mCurColrIndx:I

    .line 128
    :cond_15
    return-void
.end method

.method public setuserSet(Z)V
    .registers 2
    .parameter "isuserSet"

    .prologue
    .line 177
    iput-boolean p1, p0, Lcom/infraware/polarisoffice/common/ColorPickerView;->userSet:Z

    .line 178
    return-void
.end method
