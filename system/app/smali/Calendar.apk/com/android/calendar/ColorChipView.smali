.class public Lcom/android/calendar/ColorChipView;
.super Landroid/view/View;
.source "ColorChipView.java"


# instance fields
.field mBorderWidth:I

.field mColor:I

.field mDrawStyle:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/calendar/ColorChipView;->mDrawStyle:I

    .line 50
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/calendar/ColorChipView;->mBorderWidth:I

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/calendar/ColorChipView;->mDrawStyle:I

    .line 50
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/calendar/ColorChipView;->mBorderWidth:I

    .line 60
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 16
    .parameter "c"

    .prologue
    const/4 v1, 0x0

    .line 85
    invoke-virtual {p0}, Lcom/android/calendar/ColorChipView;->getWidth()I

    move-result v0

    add-int/lit8 v12, v0, -0x1

    .line 86
    .local v12, right:I
    invoke-virtual {p0}, Lcom/android/calendar/ColorChipView;->getHeight()I

    move-result v0

    add-int/lit8 v6, v0, -0x1

    .line 87
    .local v6, bottom:I
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 88
    .local v5, p:Landroid/graphics/Paint;
    iget v0, p0, Lcom/android/calendar/ColorChipView;->mDrawStyle:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2b

    iget v0, p0, Lcom/android/calendar/ColorChipView;->mColor:I

    invoke-static {v0}, Lcom/android/calendar/Utils;->getDeclinedColorFromColor(I)I

    move-result v0

    :goto_1d
    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 89
    sget-object v0, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 91
    iget v0, p0, Lcom/android/calendar/ColorChipView;->mDrawStyle:I

    packed-switch v0, :pswitch_data_a4

    .line 126
    :cond_2a
    :goto_2a
    return-void

    .line 88
    :cond_2b
    iget v0, p0, Lcom/android/calendar/ColorChipView;->mColor:I

    goto :goto_1d

    .line 94
    :pswitch_2e
    int-to-float v3, v12

    int-to-float v4, v6

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_2a

    .line 97
    :pswitch_36
    iget v0, p0, Lcom/android/calendar/ColorChipView;->mBorderWidth:I

    if-lez v0, :cond_2a

    .line 100
    iget v0, p0, Lcom/android/calendar/ColorChipView;->mBorderWidth:I

    div-int/lit8 v7, v0, 0x2

    .line 101
    .local v7, halfBorderWidth:I
    move v13, v7

    .line 102
    .local v13, top:I
    move v8, v7

    .line 103
    .local v8, left:I
    iget v0, p0, Lcom/android/calendar/ColorChipView;->mBorderWidth:I

    int-to-float v0, v0

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 105
    const/16 v0, 0x10

    new-array v9, v0, [F

    .line 106
    .local v9, lines:[F
    const/4 v10, 0x0

    .line 107
    .local v10, ptr:I
    add-int/lit8 v11, v10, 0x1

    .end local v10           #ptr:I
    .local v11, ptr:I
    aput v1, v9, v10

    .line 108
    add-int/lit8 v10, v11, 0x1

    .end local v11           #ptr:I
    .restart local v10       #ptr:I
    int-to-float v0, v13

    aput v0, v9, v11

    .line 109
    add-int/lit8 v11, v10, 0x1

    .end local v10           #ptr:I
    .restart local v11       #ptr:I
    int-to-float v0, v12

    aput v0, v9, v10

    .line 110
    add-int/lit8 v10, v11, 0x1

    .end local v11           #ptr:I
    .restart local v10       #ptr:I
    int-to-float v0, v13

    aput v0, v9, v11

    .line 111
    add-int/lit8 v11, v10, 0x1

    .end local v10           #ptr:I
    .restart local v11       #ptr:I
    aput v1, v9, v10

    .line 112
    add-int/lit8 v10, v11, 0x1

    .end local v11           #ptr:I
    .restart local v10       #ptr:I
    sub-int v0, v6, v7

    int-to-float v0, v0

    aput v0, v9, v11

    .line 113
    add-int/lit8 v11, v10, 0x1

    .end local v10           #ptr:I
    .restart local v11       #ptr:I
    int-to-float v0, v12

    aput v0, v9, v10

    .line 114
    add-int/lit8 v10, v11, 0x1

    .end local v11           #ptr:I
    .restart local v10       #ptr:I
    sub-int v0, v6, v7

    int-to-float v0, v0

    aput v0, v9, v11

    .line 115
    add-int/lit8 v11, v10, 0x1

    .end local v10           #ptr:I
    .restart local v11       #ptr:I
    int-to-float v0, v8

    aput v0, v9, v10

    .line 116
    add-int/lit8 v10, v11, 0x1

    .end local v11           #ptr:I
    .restart local v10       #ptr:I
    aput v1, v9, v11

    .line 117
    add-int/lit8 v11, v10, 0x1

    .end local v10           #ptr:I
    .restart local v11       #ptr:I
    int-to-float v0, v8

    aput v0, v9, v10

    .line 118
    add-int/lit8 v10, v11, 0x1

    .end local v11           #ptr:I
    .restart local v10       #ptr:I
    int-to-float v0, v6

    aput v0, v9, v11

    .line 119
    add-int/lit8 v11, v10, 0x1

    .end local v10           #ptr:I
    .restart local v11       #ptr:I
    sub-int v0, v12, v7

    int-to-float v0, v0

    aput v0, v9, v10

    .line 120
    add-int/lit8 v10, v11, 0x1

    .end local v11           #ptr:I
    .restart local v10       #ptr:I
    aput v1, v9, v11

    .line 121
    add-int/lit8 v11, v10, 0x1

    .end local v10           #ptr:I
    .restart local v11       #ptr:I
    sub-int v0, v12, v7

    int-to-float v0, v0

    aput v0, v9, v10

    .line 122
    add-int/lit8 v10, v11, 0x1

    .end local v11           #ptr:I
    .restart local v10       #ptr:I
    int-to-float v0, v6

    aput v0, v9, v11

    .line 123
    invoke-virtual {p1, v9, v5}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    goto :goto_2a

    .line 91
    nop

    :pswitch_data_a4
    .packed-switch 0x0
        :pswitch_2e
        :pswitch_36
        :pswitch_2e
    .end packed-switch
.end method

.method public setColor(I)V
    .registers 2
    .parameter "color"

    .prologue
    .line 78
    iput p1, p0, Lcom/android/calendar/ColorChipView;->mColor:I

    .line 79
    invoke-virtual {p0}, Lcom/android/calendar/ColorChipView;->invalidate()V

    .line 80
    return-void
.end method

.method public setDrawStyle(I)V
    .registers 3
    .parameter "style"

    .prologue
    .line 63
    if-eqz p1, :cond_9

    const/4 v0, 0x1

    if-eq p1, v0, :cond_9

    const/4 v0, 0x2

    if-eq p1, v0, :cond_9

    .line 68
    :goto_8
    return-void

    .line 66
    :cond_9
    iput p1, p0, Lcom/android/calendar/ColorChipView;->mDrawStyle:I

    .line 67
    invoke-virtual {p0}, Lcom/android/calendar/ColorChipView;->invalidate()V

    goto :goto_8
.end method
