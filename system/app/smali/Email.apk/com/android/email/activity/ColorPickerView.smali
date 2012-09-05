.class public Lcom/android/email/activity/ColorPickerView;
.super Landroid/view/View;
.source "ColorPickerView.java"


# static fields
.field private static final COLORS_XHDPI:[I

.field private static COLOR_COLUMN_NUM:I

.field private static COLOR_ROW_NUM:I

.field private static COLOR_TILE_HEIGHT_SIZE:I

.field private static COLOR_TILE_WIDTH_SIZE:I

.field private static INTERVAL_BETWEEN_TILE:I

.field private static THICKNESS_OF_PEN_FOCUS:I


# instance fields
.field private COLORS:[I

.field private COLORS_HDPI:[I

.field private COLOR_HEIGHT:I

.field private COLOR_PICKER_HEIGHT:I

.field private COLOR_PICKER_WIDTH:I

.field private COLOR_SELECTED_IDX:I

.field private COLOR_WIDTH:I

.field private USER_COLOR_SELECTED_IDX:I

.field private colored:Landroid/graphics/Bitmap;

.field private context:Landroid/content/Context;

.field private isInDefaultColor:Z

.field public mCurColrIndx:I

.field private mSelectDrawable:Landroid/graphics/drawable/Drawable;

.field private rainbow:Landroid/graphics/Bitmap;

.field private selectedColor:I

.field private setting:Z

.field private user_selectedColor:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/16 v8, 0xcc

    const/16 v7, 0x63

    const/16 v6, 0x25

    const/4 v5, 0x0

    const/16 v4, 0xff

    .line 35
    const/16 v0, 0x12

    new-array v0, v0, [I

    invoke-static {v4, v5, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    aput v1, v0, v5

    const/4 v1, 0x1

    const/16 v2, 0x6c

    invoke-static {v4, v2, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0xef

    invoke-static {v4, v2, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x21

    const/16 v3, 0xb1

    invoke-static {v2, v3, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x44

    const/16 v3, 0xb5

    invoke-static {v5, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x4b

    const/16 v3, 0x82

    invoke-static {v2, v5, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x6

    invoke-static {v7, v7, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x7

    invoke-static {v6, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x8

    invoke-static {v5, v5, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x83

    const/16 v3, 0x5d

    invoke-static {v4, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x49

    const/16 v3, 0x67

    invoke-static {v4, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x49

    const/16 v3, 0xc9

    invoke-static {v4, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0xca

    const/16 v3, 0x85

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x38

    const/16 v3, 0xa8

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x1c

    const/16 v3, 0x33

    invoke-static {v2, v4, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xf

    invoke-static {v8, v8, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x10

    invoke-static {v4, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0xc8

    invoke-static {v2, v5, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    sput-object v0, Lcom/android/email/activity/ColorPickerView;->COLORS_XHDPI:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 11
    .parameter "context"

    .prologue
    const/4 v8, 0x1

    const/16 v7, 0x77

    const/16 v6, 0x2e

    const/16 v5, 0xff

    const/4 v4, 0x0

    .line 78
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 27
    const/16 v0, 0xe

    new-array v0, v0, [I

    invoke-static {v5, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    aput v1, v0, v4

    const/16 v1, 0x6c

    invoke-static {v5, v1, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    aput v1, v0, v8

    const/4 v1, 0x2

    const/16 v2, 0xef

    invoke-static {v5, v2, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x21

    const/16 v3, 0xb1

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x15

    const/16 v3, 0x6c

    invoke-static {v2, v3, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x38

    const/16 v3, 0xa8

    invoke-static {v2, v3, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x44

    const/16 v3, 0xb5

    invoke-static {v4, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x49

    const/16 v3, 0xc9

    invoke-static {v5, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x4b

    const/16 v3, 0x82

    invoke-static {v2, v4, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x9

    invoke-static {v5, v5, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xa

    invoke-static {v7, v7, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xb

    invoke-static {v6, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xc

    invoke-static {v4, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xd

    invoke-static {v5, v5, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    iput-object v0, p0, Lcom/android/email/activity/ColorPickerView;->COLORS_HDPI:[I

    .line 44
    iget-object v0, p0, Lcom/android/email/activity/ColorPickerView;->COLORS_HDPI:[I

    iput-object v0, p0, Lcom/android/email/activity/ColorPickerView;->COLORS:[I

    .line 69
    sget v0, Lcom/android/email/activity/ColorPickerView;->COLOR_COLUMN_NUM:I

    sget v1, Lcom/android/email/activity/ColorPickerView;->COLOR_ROW_NUM:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/email/activity/ColorPickerView;->mCurColrIndx:I

    .line 70
    iput-boolean v4, p0, Lcom/android/email/activity/ColorPickerView;->setting:Z

    .line 71
    iput-boolean v4, p0, Lcom/android/email/activity/ColorPickerView;->isInDefaultColor:Z

    .line 73
    iput v4, p0, Lcom/android/email/activity/ColorPickerView;->selectedColor:I

    .line 74
    iput v4, p0, Lcom/android/email/activity/ColorPickerView;->user_selectedColor:I

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 12
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v8, 0x1

    const/16 v7, 0x77

    const/16 v6, 0x2e

    const/16 v5, 0xff

    const/4 v4, 0x0

    .line 82
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    const/16 v0, 0xe

    new-array v0, v0, [I

    invoke-static {v5, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    aput v1, v0, v4

    const/16 v1, 0x6c

    invoke-static {v5, v1, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    aput v1, v0, v8

    const/4 v1, 0x2

    const/16 v2, 0xef

    invoke-static {v5, v2, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x21

    const/16 v3, 0xb1

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x15

    const/16 v3, 0x6c

    invoke-static {v2, v3, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x38

    const/16 v3, 0xa8

    invoke-static {v2, v3, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x44

    const/16 v3, 0xb5

    invoke-static {v4, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x49

    const/16 v3, 0xc9

    invoke-static {v5, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x4b

    const/16 v3, 0x82

    invoke-static {v2, v4, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x9

    invoke-static {v5, v5, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xa

    invoke-static {v7, v7, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xb

    invoke-static {v6, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xc

    invoke-static {v4, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xd

    invoke-static {v5, v5, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    iput-object v0, p0, Lcom/android/email/activity/ColorPickerView;->COLORS_HDPI:[I

    .line 44
    iget-object v0, p0, Lcom/android/email/activity/ColorPickerView;->COLORS_HDPI:[I

    iput-object v0, p0, Lcom/android/email/activity/ColorPickerView;->COLORS:[I

    .line 69
    sget v0, Lcom/android/email/activity/ColorPickerView;->COLOR_COLUMN_NUM:I

    sget v1, Lcom/android/email/activity/ColorPickerView;->COLOR_ROW_NUM:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/email/activity/ColorPickerView;->mCurColrIndx:I

    .line 70
    iput-boolean v4, p0, Lcom/android/email/activity/ColorPickerView;->setting:Z

    .line 71
    iput-boolean v4, p0, Lcom/android/email/activity/ColorPickerView;->isInDefaultColor:Z

    .line 73
    iput v4, p0, Lcom/android/email/activity/ColorPickerView;->selectedColor:I

    .line 74
    iput v4, p0, Lcom/android/email/activity/ColorPickerView;->user_selectedColor:I

    .line 83
    iput-object p1, p0, Lcom/android/email/activity/ColorPickerView;->context:Landroid/content/Context;

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 13
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v8, 0x1

    const/16 v7, 0x77

    const/16 v6, 0x2e

    const/16 v5, 0xff

    const/4 v4, 0x0

    .line 87
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    const/16 v0, 0xe

    new-array v0, v0, [I

    invoke-static {v5, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    aput v1, v0, v4

    const/16 v1, 0x6c

    invoke-static {v5, v1, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    aput v1, v0, v8

    const/4 v1, 0x2

    const/16 v2, 0xef

    invoke-static {v5, v2, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x21

    const/16 v3, 0xb1

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x15

    const/16 v3, 0x6c

    invoke-static {v2, v3, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x38

    const/16 v3, 0xa8

    invoke-static {v2, v3, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x44

    const/16 v3, 0xb5

    invoke-static {v4, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x49

    const/16 v3, 0xc9

    invoke-static {v5, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x4b

    const/16 v3, 0x82

    invoke-static {v2, v4, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x9

    invoke-static {v5, v5, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xa

    invoke-static {v7, v7, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xb

    invoke-static {v6, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xc

    invoke-static {v4, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xd

    invoke-static {v5, v5, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    iput-object v0, p0, Lcom/android/email/activity/ColorPickerView;->COLORS_HDPI:[I

    .line 44
    iget-object v0, p0, Lcom/android/email/activity/ColorPickerView;->COLORS_HDPI:[I

    iput-object v0, p0, Lcom/android/email/activity/ColorPickerView;->COLORS:[I

    .line 69
    sget v0, Lcom/android/email/activity/ColorPickerView;->COLOR_COLUMN_NUM:I

    sget v1, Lcom/android/email/activity/ColorPickerView;->COLOR_ROW_NUM:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/email/activity/ColorPickerView;->mCurColrIndx:I

    .line 70
    iput-boolean v4, p0, Lcom/android/email/activity/ColorPickerView;->setting:Z

    .line 71
    iput-boolean v4, p0, Lcom/android/email/activity/ColorPickerView;->isInDefaultColor:Z

    .line 73
    iput v4, p0, Lcom/android/email/activity/ColorPickerView;->selectedColor:I

    .line 74
    iput v4, p0, Lcom/android/email/activity/ColorPickerView;->user_selectedColor:I

    .line 88
    return-void
.end method

.method private changeColor(FF)V
    .registers 13
    .parameter "x"
    .parameter "y"

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/android/email/activity/ColorPickerView;->getWidth()I

    move-result v8

    iget v9, p0, Lcom/android/email/activity/ColorPickerView;->COLOR_PICKER_WIDTH:I

    sub-int/2addr v8, v9

    div-int/lit8 v4, v8, 0x2

    .line 170
    .local v4, pl_x:I
    invoke-virtual {p0}, Lcom/android/email/activity/ColorPickerView;->getHeight()I

    move-result v8

    iget v9, p0, Lcom/android/email/activity/ColorPickerView;->COLOR_PICKER_HEIGHT:I

    sub-int/2addr v8, v9

    div-int/lit8 v5, v8, 0x2

    .line 172
    .local v5, pl_y:I
    const/4 v6, 0x0

    .line 173
    .local v6, x_idx:I
    const/4 v7, 0x0

    .line 174
    .local v7, y_idx:I
    iget v8, p0, Lcom/android/email/activity/ColorPickerView;->COLOR_WIDTH:I

    add-int/2addr v8, v4

    sget v9, Lcom/android/email/activity/ColorPickerView;->THICKNESS_OF_PEN_FOCUS:I

    add-int v0, v8, v9

    .line 175
    .local v0, cur_x:I
    iget v8, p0, Lcom/android/email/activity/ColorPickerView;->COLOR_HEIGHT:I

    add-int/2addr v8, v5

    sget v9, Lcom/android/email/activity/ColorPickerView;->THICKNESS_OF_PEN_FOCUS:I

    add-int v1, v8, v9

    .line 177
    .local v1, cur_y:I
    const/4 v2, 0x1

    .local v2, i:I
    :goto_23
    sget v8, Lcom/android/email/activity/ColorPickerView;->COLOR_COLUMN_NUM:I

    add-int/lit8 v8, v8, 0x1

    if-ge v2, v8, :cond_30

    .line 178
    add-int/lit8 v6, v2, -0x1

    .line 179
    int-to-float v8, v0

    cmpl-float v8, v8, p1

    if-lez v8, :cond_5c

    .line 185
    :cond_30
    const/4 v3, 0x1

    .local v3, j:I
    :goto_31
    sget v8, Lcom/android/email/activity/ColorPickerView;->COLOR_ROW_NUM:I

    add-int/lit8 v8, v8, 0x1

    if-ge v3, v8, :cond_3e

    .line 186
    add-int/lit8 v7, v3, -0x1

    .line 187
    int-to-float v8, v1

    cmpl-float v8, v8, p2

    if-lez v8, :cond_65

    .line 193
    :cond_3e
    sget v8, Lcom/android/email/activity/ColorPickerView;->COLOR_COLUMN_NUM:I

    mul-int/2addr v8, v7

    add-int/2addr v8, v6

    iput v8, p0, Lcom/android/email/activity/ColorPickerView;->mCurColrIndx:I

    .line 194
    invoke-virtual {p0}, Lcom/android/email/activity/ColorPickerView;->invalidate()V

    .line 196
    iget-boolean v8, p0, Lcom/android/email/activity/ColorPickerView;->setting:Z

    const/4 v9, 0x1

    if-eq v8, v9, :cond_52

    iget v8, p0, Lcom/android/email/activity/ColorPickerView;->mCurColrIndx:I

    iget v9, p0, Lcom/android/email/activity/ColorPickerView;->COLOR_SELECTED_IDX:I

    if-eq v8, v9, :cond_5b

    .line 197
    :cond_52
    iget-object v8, p0, Lcom/android/email/activity/ColorPickerView;->COLORS:[I

    iget v9, p0, Lcom/android/email/activity/ColorPickerView;->mCurColrIndx:I

    aget v8, v8, v9

    invoke-virtual {p0, v8}, Lcom/android/email/activity/ColorPickerView;->setSelectorColor(I)V

    .line 198
    :cond_5b
    return-void

    .line 182
    .end local v3           #j:I
    :cond_5c
    iget v8, p0, Lcom/android/email/activity/ColorPickerView;->COLOR_WIDTH:I

    sget v9, Lcom/android/email/activity/ColorPickerView;->INTERVAL_BETWEEN_TILE:I

    add-int/2addr v8, v9

    add-int/2addr v0, v8

    .line 177
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    .line 190
    .restart local v3       #j:I
    :cond_65
    iget v8, p0, Lcom/android/email/activity/ColorPickerView;->COLOR_HEIGHT:I

    sget v9, Lcom/android/email/activity/ColorPickerView;->INTERVAL_BETWEEN_TILE:I

    add-int/2addr v8, v9

    add-int/2addr v1, v8

    .line 185
    add-int/lit8 v3, v3, 0x1

    goto :goto_31
.end method

.method private drawColors(Landroid/graphics/Canvas;)V
    .registers 18
    .parameter "canvas"

    .prologue
    .line 283
    sget v5, Lcom/android/email/activity/ColorPickerView;->THICKNESS_OF_PEN_FOCUS:I

    .line 284
    .local v5, cur_y:I
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 285
    .local v9, r:Landroid/graphics/Rect;
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 287
    .local v10, select_rect:Landroid/graphics/Rect;
    sget v4, Lcom/android/email/activity/ColorPickerView;->THICKNESS_OF_PEN_FOCUS:I

    .line 288
    .local v4, cur_x:I
    const/4 v7, 0x0

    .local v7, j:I
    :goto_f
    sget v11, Lcom/android/email/activity/ColorPickerView;->COLOR_ROW_NUM:I

    if-ge v7, v11, :cond_114

    .line 289
    const/4 v6, 0x0

    .local v6, i:I
    :goto_14
    sget v11, Lcom/android/email/activity/ColorPickerView;->COLOR_COLUMN_NUM:I

    if-ge v6, v11, :cond_106

    .line 290
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/email/activity/ColorPickerView;->COLOR_WIDTH:I

    add-int/2addr v11, v4

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/email/activity/ColorPickerView;->COLOR_HEIGHT:I

    add-int/2addr v12, v5

    invoke-virtual {v9, v4, v5, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 292
    sget v11, Lcom/android/email/activity/ColorPickerView;->COLOR_COLUMN_NUM:I

    add-int/lit8 v11, v11, -0x1

    if-ne v6, v11, :cond_c0

    sget v11, Lcom/android/email/activity/ColorPickerView;->COLOR_ROW_NUM:I

    add-int/lit8 v11, v11, -0x1

    if-ne v7, v11, :cond_c0

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/email/activity/ColorPickerView;->setting:Z

    if-nez v11, :cond_c0

    .line 294
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/email/activity/ColorPickerView;->user_selectedColor:I

    if-nez v11, :cond_81

    .line 295
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/ColorPickerView;->rainbow:Landroid/graphics/Bitmap;

    iget v12, v9, Landroid/graphics/Rect;->left:I

    int-to-float v12, v12

    iget v13, v9, Landroid/graphics/Rect;->top:I

    int-to-float v13, v13

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12, v13, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 325
    :goto_4d
    sget v11, Lcom/android/email/activity/ColorPickerView;->COLOR_COLUMN_NUM:I

    mul-int/2addr v11, v7

    add-int/2addr v11, v6

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/email/activity/ColorPickerView;->mCurColrIndx:I

    if-ne v11, v12, :cond_76

    .line 326
    const-string v11, "song"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "index = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/email/activity/ColorPickerView;->mCurColrIndx:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    invoke-virtual {v10, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 329
    :cond_76
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/email/activity/ColorPickerView;->COLOR_WIDTH:I

    sget v12, Lcom/android/email/activity/ColorPickerView;->INTERVAL_BETWEEN_TILE:I

    add-int/2addr v11, v12

    add-int/2addr v4, v11

    .line 289
    add-int/lit8 v6, v6, 0x1

    goto :goto_14

    .line 297
    :cond_81
    sget v11, Lcom/android/email/activity/ColorPickerView;->COLOR_TILE_WIDTH_SIZE:I

    sget v12, Lcom/android/email/activity/ColorPickerView;->COLOR_TILE_WIDTH_SIZE:I

    sget-object v13, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v12, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 300
    .local v1, bitmapColor:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 302
    .local v2, c:Landroid/graphics/Canvas;
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .line 304
    .local v8, p:Landroid/graphics/Paint;
    sget-object v11, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v11}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 305
    const/4 v11, 0x1

    invoke-virtual {v8, v11}, Landroid/graphics/Paint;->setDither(Z)V

    .line 306
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/email/activity/ColorPickerView;->user_selectedColor:I

    invoke-virtual {v8, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 307
    new-instance v11, Landroid/graphics/Rect;

    const/4 v12, 0x0

    const/4 v13, 0x0

    sget v14, Lcom/android/email/activity/ColorPickerView;->COLOR_TILE_WIDTH_SIZE:I

    sget v15, Lcom/android/email/activity/ColorPickerView;->COLOR_TILE_WIDTH_SIZE:I

    invoke-direct {v11, v12, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v11, v8}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 311
    iget v11, v9, Landroid/graphics/Rect;->left:I

    int-to-float v11, v11

    iget v12, v9, Landroid/graphics/Rect;->top:I

    int-to-float v12, v12

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v11, v12, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_4d

    .line 314
    .end local v1           #bitmapColor:Landroid/graphics/Bitmap;
    .end local v2           #c:Landroid/graphics/Canvas;
    .end local v8           #p:Landroid/graphics/Paint;
    :cond_c0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/ColorPickerView;->COLORS:[I

    sget v12, Lcom/android/email/activity/ColorPickerView;->COLOR_COLUMN_NUM:I

    mul-int/2addr v12, v7

    add-int/2addr v12, v6

    aget v3, v11, v12

    .line 315
    .local v3, color:I
    const-string v11, "ColorPickerView"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "drawColors() color = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/email/activity/ColorPickerView;->setShadowColor(I)V

    .line 319
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 320
    iget v11, v9, Landroid/graphics/Rect;->left:I

    int-to-float v11, v11

    iget v12, v9, Landroid/graphics/Rect;->top:I

    int-to-float v12, v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 321
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/ColorPickerView;->colored:Landroid/graphics/Bitmap;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12, v13, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 322
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_4d

    .line 331
    .end local v3           #color:I
    :cond_106
    sget v4, Lcom/android/email/activity/ColorPickerView;->THICKNESS_OF_PEN_FOCUS:I

    .line 332
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/email/activity/ColorPickerView;->COLOR_HEIGHT:I

    sget v12, Lcom/android/email/activity/ColorPickerView;->INTERVAL_BETWEEN_TILE:I

    add-int/2addr v11, v12

    add-int/2addr v5, v11

    .line 288
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_f

    .line 335
    .end local v6           #i:I
    :cond_114
    iget v11, v10, Landroid/graphics/Rect;->left:I

    sget v12, Lcom/android/email/activity/ColorPickerView;->THICKNESS_OF_PEN_FOCUS:I

    sub-int/2addr v11, v12

    iput v11, v10, Landroid/graphics/Rect;->left:I

    .line 336
    iget v11, v10, Landroid/graphics/Rect;->right:I

    sget v12, Lcom/android/email/activity/ColorPickerView;->THICKNESS_OF_PEN_FOCUS:I

    add-int/2addr v11, v12

    iput v11, v10, Landroid/graphics/Rect;->right:I

    .line 337
    iget v11, v10, Landroid/graphics/Rect;->top:I

    sget v12, Lcom/android/email/activity/ColorPickerView;->THICKNESS_OF_PEN_FOCUS:I

    sub-int/2addr v11, v12

    iput v11, v10, Landroid/graphics/Rect;->top:I

    .line 338
    iget v11, v10, Landroid/graphics/Rect;->bottom:I

    sget v12, Lcom/android/email/activity/ColorPickerView;->THICKNESS_OF_PEN_FOCUS:I

    add-int/2addr v11, v12

    iput v11, v10, Landroid/graphics/Rect;->bottom:I

    .line 340
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/ColorPickerView;->mSelectDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11, v10}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 341
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/ColorPickerView;->mSelectDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 342
    return-void
.end method

.method private setShadowColor(I)V
    .registers 10
    .parameter "color"

    .prologue
    const/4 v7, 0x0

    .line 201
    iget-object v4, p0, Lcom/android/email/activity/ColorPickerView;->colored:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v7}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 202
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/android/email/activity/ColorPickerView;->colored:Landroid/graphics/Bitmap;

    invoke-direct {v0, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 203
    .local v0, c:Landroid/graphics/Canvas;
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 204
    .local v2, p:Landroid/graphics/Paint;
    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 205
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 206
    new-instance v4, Landroid/graphics/Rect;

    sget v5, Lcom/android/email/activity/ColorPickerView;->COLOR_TILE_WIDTH_SIZE:I

    sget v6, Lcom/android/email/activity/ColorPickerView;->COLOR_TILE_HEIGHT_SIZE:I

    invoke-direct {v4, v7, v7, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v4, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 209
    const/4 v3, -0x1

    .line 211
    .local v3, settedcolor:I
    :try_start_27
    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2a} :catch_44

    move-result v3

    .line 217
    :goto_2b
    const-string v4, "ColorPickerView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setShadowColor() settedcolor = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    return-void

    .line 212
    :catch_44
    move-exception v1

    .line 213
    .local v1, ex:Ljava/lang/Exception;
    const-string v4, "ColorPickerView"

    const-string v5, "setShadowColor() p.getColor() failed"

    invoke-static {v4, v5}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2b
.end method

.method private setmCurColrIndxAsColor(I)V
    .registers 6
    .parameter "color"

    .prologue
    .line 254
    iget-object v2, p0, Lcom/android/email/activity/ColorPickerView;->COLORS:[I

    array-length v0, v2

    .line 255
    .local v0, colortablesize:I
    if-lez v0, :cond_14

    iget-object v2, p0, Lcom/android/email/activity/ColorPickerView;->COLORS:[I

    add-int/lit8 v3, v0, -0x1

    aget v2, v2, v3

    if-ne v2, p1, :cond_14

    .line 256
    iget v2, p0, Lcom/android/email/activity/ColorPickerView;->mCurColrIndx:I

    add-int/lit8 v3, v0, -0x1

    if-ne v2, v3, :cond_14

    .line 267
    :cond_13
    :goto_13
    return-void

    .line 260
    :cond_14
    const/4 v1, 0x0

    .local v1, i:I
    :goto_15
    if-ge v1, v0, :cond_13

    .line 261
    iget-object v2, p0, Lcom/android/email/activity/ColorPickerView;->COLORS:[I

    aget v2, v2, v1

    if-ne v2, p1, :cond_23

    .line 262
    iput v1, p0, Lcom/android/email/activity/ColorPickerView;->mCurColrIndx:I

    .line 263
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/email/activity/ColorPickerView;->isInDefaultColor:Z

    goto :goto_13

    .line 260
    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_15
.end method


# virtual methods
.method public GetCurColorIdx()I
    .registers 2

    .prologue
    .line 361
    iget v0, p0, Lcom/android/email/activity/ColorPickerView;->mCurColrIndx:I

    return v0
.end method

.method public SetCurColorIdx(I)V
    .registers 2
    .parameter "_idx"

    .prologue
    .line 365
    iput p1, p0, Lcom/android/email/activity/ColorPickerView;->mCurColrIndx:I

    .line 366
    return-void
.end method

.method public SetSelectedColor(I)V
    .registers 4
    .parameter "color"

    .prologue
    .line 243
    iget v0, p0, Lcom/android/email/activity/ColorPickerView;->USER_COLOR_SELECTED_IDX:I

    iput v0, p0, Lcom/android/email/activity/ColorPickerView;->mCurColrIndx:I

    .line 244
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/ColorPickerView;->setting:Z

    .line 245
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/ColorPickerView;->isInDefaultColor:Z

    .line 246
    iput p1, p0, Lcom/android/email/activity/ColorPickerView;->user_selectedColor:I

    .line 247
    iget-object v0, p0, Lcom/android/email/activity/ColorPickerView;->COLORS:[I

    iget v1, p0, Lcom/android/email/activity/ColorPickerView;->USER_COLOR_SELECTED_IDX:I

    aput p1, v0, v1

    .line 248
    invoke-direct {p0, p1}, Lcom/android/email/activity/ColorPickerView;->setmCurColrIndxAsColor(I)V

    .line 250
    invoke-virtual {p0}, Lcom/android/email/activity/ColorPickerView;->invalidate()V

    .line 251
    return-void
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 402
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 407
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public getSelectorColor()I
    .registers 3

    .prologue
    .line 270
    iget v0, p0, Lcom/android/email/activity/ColorPickerView;->mCurColrIndx:I

    iget v1, p0, Lcom/android/email/activity/ColorPickerView;->USER_COLOR_SELECTED_IDX:I

    if-ne v0, v1, :cond_9

    .line 271
    iget v0, p0, Lcom/android/email/activity/ColorPickerView;->user_selectedColor:I

    .line 278
    :goto_8
    return v0

    .line 273
    :cond_9
    iget v0, p0, Lcom/android/email/activity/ColorPickerView;->selectedColor:I

    if-eqz v0, :cond_10

    .line 275
    iget v0, p0, Lcom/android/email/activity/ColorPickerView;->selectedColor:I

    goto :goto_8

    .line 278
    :cond_10
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public initColorPicker(II)V
    .registers 16
    .parameter "width"
    .parameter "height"

    .prologue
    const v12, 0x7f090020

    const v3, 0x7f090019

    const/4 v7, 0x6

    const/4 v11, 0x0

    const/4 v1, 0x0

    .line 91
    invoke-virtual {p0}, Lcom/android/email/activity/ColorPickerView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 93
    .local v10, resources:Landroid/content/res/Resources;
    const v2, 0x7f09001a

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sput v2, Lcom/android/email/activity/ColorPickerView;->COLOR_COLUMN_NUM:I

    .line 94
    const v2, 0x7f09001b

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sput v2, Lcom/android/email/activity/ColorPickerView;->COLOR_ROW_NUM:I

    .line 95
    const v2, 0x7f09001c

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sput v2, Lcom/android/email/activity/ColorPickerView;->COLOR_TILE_WIDTH_SIZE:I

    .line 96
    const v2, 0x7f09001d

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sput v2, Lcom/android/email/activity/ColorPickerView;->COLOR_TILE_HEIGHT_SIZE:I

    .line 97
    const v2, 0x7f09001e

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sput v2, Lcom/android/email/activity/ColorPickerView;->THICKNESS_OF_PEN_FOCUS:I

    .line 98
    const v2, 0x7f09001f

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sput v2, Lcom/android/email/activity/ColorPickerView;->INTERVAL_BETWEEN_TILE:I

    .line 100
    invoke-virtual {v10, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/email/activity/ColorPickerView;->COLOR_SELECTED_IDX:I

    .line 101
    invoke-virtual {v10, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/email/activity/ColorPickerView;->USER_COLOR_SELECTED_IDX:I

    .line 103
    sget v2, Lcom/android/email/activity/ColorPickerView;->COLOR_COLUMN_NUM:I

    sget v3, Lcom/android/email/activity/ColorPickerView;->COLOR_ROW_NUM:I

    mul-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/email/activity/ColorPickerView;->COLORS_HDPI:[I

    array-length v3, v3

    if-ne v2, v3, :cond_df

    .line 104
    iget-object v2, p0, Lcom/android/email/activity/ColorPickerView;->COLORS_HDPI:[I

    iput-object v2, p0, Lcom/android/email/activity/ColorPickerView;->COLORS:[I

    .line 132
    :goto_5d
    iput p1, p0, Lcom/android/email/activity/ColorPickerView;->COLOR_PICKER_WIDTH:I

    .line 133
    iput p2, p0, Lcom/android/email/activity/ColorPickerView;->COLOR_PICKER_HEIGHT:I

    .line 135
    sget v2, Lcom/android/email/activity/ColorPickerView;->COLOR_TILE_WIDTH_SIZE:I

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/email/activity/ColorPickerView;->COLOR_WIDTH:I

    .line 136
    sget v2, Lcom/android/email/activity/ColorPickerView;->COLOR_TILE_HEIGHT_SIZE:I

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/email/activity/ColorPickerView;->COLOR_HEIGHT:I

    .line 138
    iget-object v2, p0, Lcom/android/email/activity/ColorPickerView;->mSelectDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_84

    .line 139
    invoke-virtual {p0}, Lcom/android/email/activity/ColorPickerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020186

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/activity/ColorPickerView;->mSelectDrawable:Landroid/graphics/drawable/Drawable;

    .line 142
    :cond_84
    new-array v5, v7, [I

    fill-array-data v5, :array_11c

    .line 145
    .local v5, colors:[I
    new-array v6, v7, [F

    fill-array-data v6, :array_12c

    .line 149
    .local v6, positions:[F
    iget-object v2, p0, Lcom/android/email/activity/ColorPickerView;->rainbow:Landroid/graphics/Bitmap;

    if-nez v2, :cond_ce

    .line 150
    sget v2, Lcom/android/email/activity/ColorPickerView;->COLOR_TILE_WIDTH_SIZE:I

    sget v3, Lcom/android/email/activity/ColorPickerView;->COLOR_TILE_HEIGHT_SIZE:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/activity/ColorPickerView;->rainbow:Landroid/graphics/Bitmap;

    .line 152
    new-instance v8, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/android/email/activity/ColorPickerView;->rainbow:Landroid/graphics/Bitmap;

    invoke-direct {v8, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 153
    .local v8, c:Landroid/graphics/Canvas;
    new-instance v0, Landroid/graphics/LinearGradient;

    sget v2, Lcom/android/email/activity/ColorPickerView;->COLOR_TILE_WIDTH_SIZE:I

    int-to-float v3, v2

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v4, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 155
    .local v0, g:Landroid/graphics/LinearGradient;
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    .line 156
    .local v9, p:Landroid/graphics/Paint;
    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 157
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 158
    const/4 v1, 0x1

    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 159
    new-instance v1, Landroid/graphics/Rect;

    sget v2, Lcom/android/email/activity/ColorPickerView;->COLOR_TILE_WIDTH_SIZE:I

    sget v3, Lcom/android/email/activity/ColorPickerView;->COLOR_TILE_HEIGHT_SIZE:I

    invoke-direct {v1, v11, v11, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v8, v1, v9}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 163
    .end local v0           #g:Landroid/graphics/LinearGradient;
    .end local v8           #c:Landroid/graphics/Canvas;
    .end local v9           #p:Landroid/graphics/Paint;
    :cond_ce
    iget-object v1, p0, Lcom/android/email/activity/ColorPickerView;->colored:Landroid/graphics/Bitmap;

    if-nez v1, :cond_de

    .line 164
    sget v1, Lcom/android/email/activity/ColorPickerView;->COLOR_TILE_WIDTH_SIZE:I

    sget v2, Lcom/android/email/activity/ColorPickerView;->COLOR_TILE_HEIGHT_SIZE:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/ColorPickerView;->colored:Landroid/graphics/Bitmap;

    .line 166
    :cond_de
    return-void

    .line 105
    .end local v5           #colors:[I
    .end local v6           #positions:[F
    :cond_df
    sget v2, Lcom/android/email/activity/ColorPickerView;->COLOR_COLUMN_NUM:I

    sget v3, Lcom/android/email/activity/ColorPickerView;->COLOR_ROW_NUM:I

    mul-int/2addr v2, v3

    sget-object v3, Lcom/android/email/activity/ColorPickerView;->COLORS_XHDPI:[I

    array-length v3, v3

    if-ne v2, v3, :cond_ef

    .line 106
    sget-object v2, Lcom/android/email/activity/ColorPickerView;->COLORS_XHDPI:[I

    iput-object v2, p0, Lcom/android/email/activity/ColorPickerView;->COLORS:[I

    goto/16 :goto_5d

    .line 108
    :cond_ef
    const-string v2, "ColorPickerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "what\'s wrong?? use default "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/email/activity/ColorPickerView;->COLOR_COLUMN_NUM:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/email/activity/ColorPickerView;->COLOR_ROW_NUM:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v2, p0, Lcom/android/email/activity/ColorPickerView;->COLORS_HDPI:[I

    iput-object v2, p0, Lcom/android/email/activity/ColorPickerView;->COLORS:[I

    goto/16 :goto_5d

    .line 142
    nop

    :array_11c
    .array-data 0x4
        0x0t 0x0t 0xfft 0xfft
        0x0t 0xfft 0xfft 0xfft
        0x0t 0xfft 0x0t 0xfft
        0xfft 0xfft 0x0t 0xfft
        0xfft 0x0t 0x0t 0xfft
        0xfft 0x0t 0xfft 0xfft
    .end array-data

    .line 145
    :array_12c
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xcdt 0xcct 0x4ct 0x3et
        0xcdt 0xcct 0xcct 0x3et
        0x9at 0x99t 0x19t 0x3ft
        0xcdt 0xcct 0x4ct 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 2
    .parameter "canvas"

    .prologue
    .line 379
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 381
    invoke-direct {p0, p1}, Lcom/android/email/activity/ColorPickerView;->drawColors(Landroid/graphics/Canvas;)V

    .line 382
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
    .line 370
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 372
    if-eqz p1, :cond_c

    .line 373
    sub-int v0, p4, p2

    sub-int v1, p5, p3

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/ColorPickerView;->initColorPicker(II)V

    .line 375
    :cond_c
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter "event"

    .prologue
    .line 386
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 387
    .local v0, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 389
    .local v1, y:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_18

    .line 397
    :goto_f
    :pswitch_f
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2

    .line 394
    :pswitch_14
    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/ColorPickerView;->changeColor(FF)V

    goto :goto_f

    .line 389
    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_f
        :pswitch_14
        :pswitch_14
    .end packed-switch
.end method

.method public setColor(I)V
    .registers 6
    .parameter "color"

    .prologue
    .line 345
    iget-object v2, p0, Lcom/android/email/activity/ColorPickerView;->COLORS:[I

    array-length v1, v2

    .line 346
    .local v1, nSize:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    if-ge v0, v1, :cond_16

    .line 347
    iget-object v2, p0, Lcom/android/email/activity/ColorPickerView;->COLORS:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_17

    .line 348
    iget v2, p0, Lcom/android/email/activity/ColorPickerView;->mCurColrIndx:I

    iget v3, p0, Lcom/android/email/activity/ColorPickerView;->COLOR_SELECTED_IDX:I

    if-eq v2, v3, :cond_14

    .line 349
    iput v0, p0, Lcom/android/email/activity/ColorPickerView;->mCurColrIndx:I

    .line 350
    :cond_14
    iput p1, p0, Lcom/android/email/activity/ColorPickerView;->selectedColor:I

    .line 354
    :cond_16
    return-void

    .line 346
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method public setSelectorColor(I)V
    .registers 4
    .parameter "color"

    .prologue
    .line 231
    iput p1, p0, Lcom/android/email/activity/ColorPickerView;->selectedColor:I

    .line 232
    invoke-direct {p0, p1}, Lcom/android/email/activity/ColorPickerView;->setmCurColrIndxAsColor(I)V

    .line 234
    iget-boolean v0, p0, Lcom/android/email/activity/ColorPickerView;->isInDefaultColor:Z

    if-nez v0, :cond_f

    .line 235
    iget-object v0, p0, Lcom/android/email/activity/ColorPickerView;->COLORS:[I

    iget v1, p0, Lcom/android/email/activity/ColorPickerView;->COLOR_SELECTED_IDX:I

    aput p1, v0, v1

    .line 237
    :cond_f
    invoke-virtual {p0}, Lcom/android/email/activity/ColorPickerView;->invalidate()V

    .line 238
    return-void
.end method
