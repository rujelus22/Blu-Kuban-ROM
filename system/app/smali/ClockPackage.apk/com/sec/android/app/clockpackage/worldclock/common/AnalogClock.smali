.class public Lcom/sec/android/app/clockpackage/worldclock/common/AnalogClock;
.super Landroid/view/View;
.source "AnalogClock.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# instance fields
.field private mCalendar:Landroid/text/format/Time;

.field private mChanged:Z

.field private mDial:Landroid/graphics/drawable/Drawable;

.field private mDialHeight:I

.field mDialIntrinsicHeight:I

.field mDialIntrinsicWidth:I

.field private mDialResourceId:[I

.field private mDialWidth:I

.field private mHour:F

.field private mHourHand:Landroid/graphics/drawable/Drawable;

.field private mHourHandResourceId:[I

.field private mMinuteHand:Landroid/graphics/drawable/Drawable;

.field private mMinuteHandResourceId:[I

.field private mMinutes:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    const/4 v1, 0x2

    .line 68
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 56
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/AnalogClock;->mDialResourceId:[I

    .line 58
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/AnalogClock;->mHourHandResourceId:[I

    .line 60
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/AnalogClock;->mMinuteHandResourceId:[I

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x2

    .line 74
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/AnalogClock;->mDialResourceId:[I

    .line 58
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/AnalogClock;->mHourHandResourceId:[I

    .line 60
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/AnalogClock;->mMinuteHandResourceId:[I

    .line 76
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/AnalogClock;->mCalendar:Landroid/text/format/Time;

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x2

    .line 82
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/AnalogClock;->mDialResourceId:[I

    .line 58
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/AnalogClock;->mHourHandResourceId:[I

    .line 60
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/AnalogClock;->mMinuteHandResourceId:[I

    .line 84
    return-void
.end method

.method private onTimeChanged()V
    .registers 4

    .prologue
    .line 241
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/AnalogClock;->mCalendar:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->minute:I

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/AnalogClock;->mMinutes:F

    .line 243
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/AnalogClock;->mCalendar:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->hour:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/app/clockpackage/worldclock/common/AnalogClock;->mMinutes:F

    const/high16 v2, 0x4270

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/AnalogClock;->mHour:F

    .line 245
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/AnalogClock;->mChanged:Z

    .line 247
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/common/AnalogClock;->setToNow()V

    .line 249
    return-void
.end method

.method private setClockDrawable()V
    .registers 6

    .prologue
    const/16 v4, 0x12

    const/4 v3, 0x6

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 294
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/AnalogClock;->mCalendar:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->hour:I

    if-ge v0, v4, :cond_11

    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/AnalogClock;->mCalendar:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->hour:I

    if-ge v0, v3, :cond_3f

    :cond_11
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/AnalogClock;->mDialResourceId:[I

    aget v0, v0, v1

    :goto_15
    invoke-direct {p0, v0}, Lcom/sec/android/app/clockpackage/worldclock/common/AnalogClock;->setDrawableDial(I)V

    .line 297
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/AnalogClock;->mCalendar:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->hour:I

    if-ge v0, v4, :cond_24

    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/AnalogClock;->mCalendar:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->hour:I

    if-ge v0, v3, :cond_44

    :cond_24
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/AnalogClock;->mHourHandResourceId:[I

    aget v0, v0, v1

    :goto_28
    invoke-direct {p0, v0}, Lcom/sec/android/app/clockpackage/worldclock/common/AnalogClock;->setDrawableHourHand(I)V

    .line 301
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/AnalogClock;->mCalendar:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->hour:I

    if-ge v0, v4, :cond_37

    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/AnalogClock;->mCalendar:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->hour:I

    if-ge v0, v3, :cond_49

    :cond_37
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/AnalogClock;->mMinuteHandResourceId:[I

    aget v0, v0, v1

    :goto_3b
    invoke-direct {p0, v0}, Lcom/sec/android/app/clockpackage/worldclock/common/AnalogClock;->setDrawableMinuteHand(I)V

    .line 305
    return-void

    .line 294
    :cond_3f
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/AnalogClock;->mDialResourceId:[I

    aget v0, v0, v2

    goto :goto_15

    .line 297
    :cond_44
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/AnalogClock;->mHourHandResourceId:[I

    aget v0, v0, v2

    goto :goto_28

    .line 301
    :cond_49
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/AnalogClock;->mMinuteHandResourceId:[I

    aget v0, v0, v2

    goto :goto_3b
.end method

.method private setDrawableDial(I)V
    .registers 3
    .parameter "resourceId"

    .prologue
    .line 253
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/common/AnalogClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/AnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    .line 255
    return-void
.end method

.method private setDrawableHourHand(I)V
    .registers 3
    .parameter "resourceId"

    .prologue
    .line 259
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/common/AnalogClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/AnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    .line 261
    return-void
.end method

.method private setDrawableMinuteHand(I)V
    .registers 6
    .parameter "resourceId"

    .prologue
    .line 266
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/common/AnalogClock;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/clockpackage/worldclock/common/AnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;
    :try_end_e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_e} :catch_f

    .line 271
    :goto_e
    return-void

    .line 267
    :catch_f
    move-exception v0

    .line 268
    .local v0, ex:Ljava/lang/OutOfMemoryError;
    const-string v1, "WC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MemoryError: this.mMinuteHand = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/worldclock/common/AnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .registers 1

    .prologue
    .line 88
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 90
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    .prologue
    .line 94
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 96
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 19
    .parameter "canvas"

    .prologue
    .line 144
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 146
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/app/clockpackage/worldclock/common/AnalogClock;->mChanged:Z

    .line 148
    .local v3, changed:Z
    if-eqz v3, :cond_e

    .line 150
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sec/android/app/clockpackage/worldclock/common/AnalogClock;->mChanged:Z

    .line 154
    :cond_e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/clockpackage/worldclock/common/AnalogClock;->mDialIntrinsicWidth:I

    .line 156
    .local v2, availableWidth:I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/clockpackage/worldclock/common/AnalogClock;->mDialIntrinsicHeight:I

    .line 158
    .local v1, availableHeight:I
    div-int/lit8 v11, v2, 0x2

    .line 160
    .local v11, x:I
    div-int/lit8 v12, v1, 0x2

    .line 162
    .local v12, y:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/clockpackage/worldclock/common/AnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    .line 164
    .local v4, dial:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    .line 166
    .local v10, w:I
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 168
    .local v5, h:I
    const/4 v9, 0x0

    .line 170
    .local v9, scaled:Z
    if-lt v2, v10, :cond_2b

    if-ge v1, v5, :cond_40

    .line 172
    :cond_2b
    const/4 v9, 0x1

    .line 174
    int-to-float v13, v2

    int-to-float v14, v10

    div-float/2addr v13, v14

    int-to-float v14, v1

    int-to-float v15, v5

    div-float/2addr v14, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 177
    .local v8, scale:F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 179
    int-to-float v13, v11

    int-to-float v14, v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v8, v13, v14}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 183
    .end local v8           #scale:F
    :cond_40
    if-eqz v3, :cond_56

    .line 185
    div-int/lit8 v13, v10, 0x2

    sub-int v13, v11, v13

    div-int/lit8 v14, v5, 0x2

    sub-int v14, v12, v14

    div-int/lit8 v15, v10, 0x2

    add-int/2addr v15, v11

    div-int/lit8 v16, v5, 0x2

    add-int v16, v16, v12

    move/from16 v0, v16

    invoke-virtual {v4, v13, v14, v15, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 189
    :cond_56
    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 191
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 193
    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/app/clockpackage/worldclock/common/AnalogClock;->mHour:F

    const/high16 v14, 0x4140

    div-float/2addr v13, v14

    const/high16 v14, 0x43b4

    mul-float/2addr v13, v14

    int-to-float v14, v11

    int-to-float v15, v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14, v15}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 195
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/clockpackage/worldclock/common/AnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    .line 197
    .local v6, hourHand:Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_91

    .line 199
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    .line 201
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 203
    div-int/lit8 v13, v10, 0x2

    sub-int v13, v11, v13

    div-int/lit8 v14, v5, 0x2

    sub-int v14, v12, v14

    div-int/lit8 v15, v10, 0x2

    add-int/2addr v15, v11

    div-int/lit8 v16, v5, 0x2

    add-int v16, v16, v12

    move/from16 v0, v16

    invoke-virtual {v6, v13, v14, v15, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 207
    :cond_91
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 209
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 211
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 213
    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/app/clockpackage/worldclock/common/AnalogClock;->mMinutes:F

    const/high16 v14, 0x4270

    div-float/2addr v13, v14

    const/high16 v14, 0x43b4

    mul-float/2addr v13, v14

    int-to-float v14, v11

    int-to-float v15, v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14, v15}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 215
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/clockpackage/worldclock/common/AnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    .line 217
    .local v7, minuteHand:Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_cf

    .line 219
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    .line 221
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 223
    div-int/lit8 v13, v10, 0x2

    sub-int v13, v11, v13

    div-int/lit8 v14, v5, 0x2

    sub-int v14, v12, v14

    div-int/lit8 v15, v10, 0x2

    add-int/2addr v15, v11

    div-int/lit8 v16, v5, 0x2

    add-int v16, v16, v12

    move/from16 v0, v16

    invoke-virtual {v7, v13, v14, v15, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 227
    :cond_cf
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 229
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 231
    if-eqz v9, :cond_dc

    .line 233
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 237
    :cond_dc
    return-void
.end method

.method protected onMeasure(II)V
    .registers 12
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 102
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 104
    .local v5, widthMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    iput v6, p0, Lcom/sec/android/app/clockpackage/worldclock/common/AnalogClock;->mDialIntrinsicWidth:I

    .line 106
    .local v6, widthSize:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 108
    .local v1, heightMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/clockpackage/worldclock/common/AnalogClock;->mDialIntrinsicHeight:I

    .line 110
    .local v2, heightSize:I
    const/high16 v0, 0x3f80

    .line 112
    .local v0, hScale:F
    const/high16 v4, 0x3f80

    .line 114
    .local v4, vScale:F
    if-eqz v5, :cond_24

    iget v7, p0, Lcom/sec/android/app/clockpackage/worldclock/common/AnalogClock;->mDialWidth:I

    if-ge v6, v7, :cond_24

    .line 116
    int-to-float v7, v6

    iget v8, p0, Lcom/sec/android/app/clockpackage/worldclock/common/AnalogClock;->mDialWidth:I

    int-to-float v8, v8

    div-float v0, v7, v8

    .line 120
    :cond_24
    if-eqz v1, :cond_30

    iget v7, p0, Lcom/sec/android/app/clockpackage/worldclock/common/AnalogClock;->mDialHeight:I

    if-ge v2, v7, :cond_30

    .line 122
    int-to-float v7, v2

    iget v8, p0, Lcom/sec/android/app/clockpackage/worldclock/common/AnalogClock;->mDialHeight:I

    int-to-float v8, v8

    div-float v4, v7, v8

    .line 126
    :cond_30
    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 128
    .local v3, scale:F
    iget v7, p0, Lcom/sec/android/app/clockpackage/worldclock/common/AnalogClock;->mDialWidth:I

    int-to-float v7, v7

    mul-float/2addr v7, v3

    float-to-int v7, v7

    invoke-static {v7, p1}, Lcom/sec/android/app/clockpackage/worldclock/common/AnalogClock;->resolveSize(II)I

    move-result v7

    iget v8, p0, Lcom/sec/android/app/clockpackage/worldclock/common/AnalogClock;->mDialHeight:I

    int-to-float v8, v8

    mul-float/2addr v8, v3

    float-to-int v8, v8

    invoke-static {v8, p2}, Lcom/sec/android/app/clockpackage/worldclock/common/AnalogClock;->resolveSize(II)I

    move-result v8

    invoke-virtual {p0, v7, v8}, Lcom/sec/android/app/clockpackage/worldclock/common/AnalogClock;->setMeasuredDimension(II)V

    .line 132
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 6
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 136
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/AnalogClock;->mChanged:Z

    .line 140
    return-void
.end method

.method public setDialResourceId([I)V
    .registers 2
    .parameter "resourceId"

    .prologue
    .line 309
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/worldclock/common/AnalogClock;->mDialResourceId:[I

    .line 311
    return-void
.end method

.method public setHourHandResourceId([I)V
    .registers 2
    .parameter "resourceId"

    .prologue
    .line 315
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/worldclock/common/AnalogClock;->mHourHandResourceId:[I

    .line 317
    return-void
.end method

.method public setMinuteHandResourceId([I)V
    .registers 2
    .parameter "resourceId"

    .prologue
    .line 321
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/worldclock/common/AnalogClock;->mMinuteHandResourceId:[I

    .line 323
    return-void
.end method

.method public setToNow()V
    .registers 8

    .prologue
    .line 285
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/AnalogClock;->mCalendar:Landroid/text/format/Time;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/worldclock/common/AnalogClock;->mCalendar:Landroid/text/format/Time;

    iget v1, v1, Landroid/text/format/Time;->second:I

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/worldclock/common/AnalogClock;->mCalendar:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->minute:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/worldclock/common/AnalogClock;->mCalendar:Landroid/text/format/Time;

    iget v3, v3, Landroid/text/format/Time;->hour:I

    iget-object v4, p0, Lcom/sec/android/app/clockpackage/worldclock/common/AnalogClock;->mCalendar:Landroid/text/format/Time;

    iget v4, v4, Landroid/text/format/Time;->yearDay:I

    iget-object v5, p0, Lcom/sec/android/app/clockpackage/worldclock/common/AnalogClock;->mCalendar:Landroid/text/format/Time;

    iget v5, v5, Landroid/text/format/Time;->month:I

    iget-object v6, p0, Lcom/sec/android/app/clockpackage/worldclock/common/AnalogClock;->mCalendar:Landroid/text/format/Time;

    iget v6, v6, Landroid/text/format/Time;->year:I

    invoke-virtual/range {v0 .. v6}, Landroid/text/format/Time;->set(IIIIII)V

    .line 290
    return-void
.end method

.method public setToNow(Landroid/text/format/Time;)V
    .registers 3
    .parameter "time"

    .prologue
    .line 275
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/AnalogClock;->mCalendar:Landroid/text/format/Time;

    invoke-virtual {v0, p1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 277
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/common/AnalogClock;->setClockDrawable()V

    .line 279
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/common/AnalogClock;->onTimeChanged()V

    .line 281
    return-void
.end method
