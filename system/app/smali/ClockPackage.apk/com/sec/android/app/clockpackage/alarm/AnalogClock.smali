.class public Lcom/sec/android/app/clockpackage/alarm/AnalogClock;
.super Landroid/view/View;
.source "AnalogClock.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# instance fields
.field private mAttached:Z

.field private mCalendar:Landroid/text/format/Time;

.field private mChanged:Z

.field private mDial:Landroid/graphics/drawable/Drawable;

.field private mDialHeight:I

.field private mDialWidth:I

.field private final mHandler:Landroid/os/Handler;

.field private mHandsOffsetY:I

.field private mHour:F

.field private mHourHand:Landroid/graphics/drawable/Drawable;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mMinuteHand:Landroid/graphics/drawable/Drawable;

.field private mMinutes:F

.field private mSecHand:Landroid/graphics/drawable/Drawable;

.field private mSecond:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/clockpackage/alarm/AnalogClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/app/clockpackage/alarm/AnalogClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x0

    .line 75
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AnalogClock;->mHandler:Landroid/os/Handler;

    .line 63
    iput v3, p0, Lcom/sec/android/app/clockpackage/alarm/AnalogClock;->mHandsOffsetY:I

    .line 268
    new-instance v2, Lcom/sec/android/app/clockpackage/alarm/AnalogClock$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/clockpackage/alarm/AnalogClock$1;-><init>(Lcom/sec/android/app/clockpackage/alarm/AnalogClock;)V

    iput-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AnalogClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 76
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AnalogClock;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 77
    .local v1, r:Landroid/content/res/Resources;
    sget-object v2, Lcom/android/internal/R$styleable;->AnalogClock:[I

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 81
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    .line 82
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_33

    .line 83
    const v2, 0x108020d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    .line 86
    :cond_33
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    .line 87
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_47

    .line 88
    const v2, 0x108020e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    .line 91
    :cond_47
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    .line 92
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_5b

    .line 93
    const v2, 0x108020f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    .line 96
    :cond_5b
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AnalogClock;->mCalendar:Landroid/text/format/Time;

    .line 98
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/clockpackage/alarm/AnalogClock;->mDialWidth:I

    .line 99
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/clockpackage/alarm/AnalogClock;->mDialHeight:I

    .line 100
    return-void
.end method

.method static synthetic access$002(Lcom/sec/android/app/clockpackage/alarm/AnalogClock;Landroid/text/format/Time;)Landroid/text/format/Time;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/AnalogClock;->mCalendar:Landroid/text/format/Time;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/clockpackage/alarm/AnalogClock;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AnalogClock;->onTimeChanged()V

    return-void
.end method

.method private onTimeChanged()V
    .registers 7

    .prologue
    const/high16 v5, 0x4270

    .line 246
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AnalogClock;->mCalendar:Landroid/text/format/Time;

    invoke-virtual {v3}, Landroid/text/format/Time;->setToNow()V

    .line 248
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AnalogClock;->mCalendar:Landroid/text/format/Time;

    iget v0, v3, Landroid/text/format/Time;->hour:I

    .line 249
    .local v0, hour:I
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AnalogClock;->mCalendar:Landroid/text/format/Time;

    iget v1, v3, Landroid/text/format/Time;->minute:I

    .line 250
    .local v1, minute:I
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AnalogClock;->mCalendar:Landroid/text/format/Time;

    iget v2, v3, Landroid/text/format/Time;->second:I

    .line 252
    .local v2, second:I
    int-to-float v3, v1

    int-to-float v4, v2

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Lcom/sec/android/app/clockpackage/alarm/AnalogClock;->mMinutes:F

    .line 253
    int-to-float v3, v0

    iget v4, p0, Lcom/sec/android/app/clockpackage/alarm/AnalogClock;->mMinutes:F

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Lcom/sec/android/app/clockpackage/alarm/AnalogClock;->mHour:F

    .line 254
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sec/android/app/clockpackage/alarm/AnalogClock;->mChanged:Z

    .line 261
    iget v3, p0, Lcom/sec/android/app/clockpackage/alarm/AnalogClock;->mSecond:F

    int-to-float v4, v2

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_2d

    .line 262
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AnalogClock;->invalidate()V

    .line 265
    :cond_2d
    int-to-float v3, v2

    iput v3, p0, Lcom/sec/android/app/clockpackage/alarm/AnalogClock;->mSecond:F

    .line 266
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .registers 6

    .prologue
    .line 104
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 106
    iget-boolean v1, p0, Lcom/sec/android/app/clockpackage/alarm/AnalogClock;->mAttached:Z

    if-nez v1, :cond_2a

    .line 107
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/clockpackage/alarm/AnalogClock;->mAttached:Z

    .line 108
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 110
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 111
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 112
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AnalogClock;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AnalogClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AnalogClock;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 121
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_2a
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AnalogClock;->mCalendar:Landroid/text/format/Time;

    .line 124
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AnalogClock;->onTimeChanged()V

    .line 125
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 129
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 130
    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/alarm/AnalogClock;->mAttached:Z

    if-eqz v0, :cond_13

    .line 131
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AnalogClock;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AnalogClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/clockpackage/alarm/AnalogClock;->mAttached:Z

    .line 134
    :cond_13
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 24
    .parameter "canvas"

    .prologue
    .line 169
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 171
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/sec/android/app/clockpackage/alarm/AnalogClock;->mChanged:Z

    .line 172
    .local v6, changed:Z
    if-eqz v6, :cond_11

    .line 173
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/clockpackage/alarm/AnalogClock;->mChanged:Z

    .line 176
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AnalogClock;->mRight:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AnalogClock;->mLeft:I

    move/from16 v18, v0

    sub-int v5, v17, v18

    .line 177
    .local v5, availableWidth:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AnalogClock;->mBottom:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AnalogClock;->mTop:I

    move/from16 v18, v0

    sub-int v4, v17, v18

    .line 179
    .local v4, availableHeight:I
    div-int/lit8 v15, v5, 0x2

    .line 180
    .local v15, x:I
    div-int/lit8 v16, v4, 0x2

    .line 182
    .local v16, y:I
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/clockpackage/alarm/AnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    .line 183
    .local v7, dial:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    .line 184
    .local v14, w:I
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    .line 186
    .local v8, h:I
    const/4 v12, 0x0

    .line 188
    .local v12, scaled:Z
    if-lt v5, v14, :cond_42

    if-ge v4, v8, :cond_6b

    .line 189
    :cond_42
    const/4 v12, 0x1

    .line 190
    int-to-float v0, v5

    move/from16 v17, v0

    int-to-float v0, v14

    move/from16 v18, v0

    div-float v17, v17, v18

    int-to-float v0, v4

    move/from16 v18, v0

    int-to-float v0, v8

    move/from16 v19, v0

    div-float v18, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(FF)F

    move-result v11

    .line 192
    .local v11, scale:F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 193
    int-to-float v0, v15

    move/from16 v17, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v11, v11, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 196
    .end local v11           #scale:F
    :cond_6b
    if-eqz v6, :cond_88

    .line 197
    div-int/lit8 v17, v14, 0x2

    sub-int v17, v15, v17

    div-int/lit8 v18, v8, 0x2

    sub-int v18, v16, v18

    div-int/lit8 v19, v14, 0x2

    add-int v19, v19, v15

    div-int/lit8 v20, v8, 0x2

    add-int v20, v20, v16

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 199
    :cond_88
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 201
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 202
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AnalogClock;->mHour:F

    move/from16 v17, v0

    const/high16 v18, 0x4140

    div-float v17, v17, v18

    const/high16 v18, 0x43b4

    mul-float v17, v17, v18

    int-to-float v0, v15

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AnalogClock;->mHandsOffsetY:I

    move/from16 v19, v0

    add-int v19, v19, v16

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 203
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/clockpackage/alarm/AnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    .line 204
    .local v9, hourHand:Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_f2

    .line 205
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    .line 206
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    .line 207
    div-int/lit8 v17, v14, 0x2

    sub-int v17, v15, v17

    div-int/lit8 v18, v8, 0x2

    sub-int v18, v16, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AnalogClock;->mHandsOffsetY:I

    move/from16 v19, v0

    add-int v18, v18, v19

    div-int/lit8 v19, v14, 0x2

    add-int v19, v19, v15

    div-int/lit8 v20, v8, 0x2

    add-int v20, v20, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AnalogClock;->mHandsOffsetY:I

    move/from16 v21, v0

    add-int v20, v20, v21

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 209
    :cond_f2
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 210
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 212
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 213
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AnalogClock;->mMinutes:F

    move/from16 v17, v0

    const/high16 v18, 0x4270

    div-float v17, v17, v18

    const/high16 v18, 0x43b4

    mul-float v17, v17, v18

    int-to-float v0, v15

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AnalogClock;->mHandsOffsetY:I

    move/from16 v19, v0

    add-int v19, v19, v16

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 215
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/clockpackage/alarm/AnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    .line 216
    .local v10, minuteHand:Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_15f

    .line 217
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    .line 218
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    .line 219
    div-int/lit8 v17, v14, 0x2

    sub-int v17, v15, v17

    div-int/lit8 v18, v8, 0x2

    sub-int v18, v16, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AnalogClock;->mHandsOffsetY:I

    move/from16 v19, v0

    add-int v18, v18, v19

    div-int/lit8 v19, v14, 0x2

    add-int v19, v19, v15

    div-int/lit8 v20, v8, 0x2

    add-int v20, v20, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AnalogClock;->mHandsOffsetY:I

    move/from16 v21, v0

    add-int v20, v20, v21

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 221
    :cond_15f
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 222
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/clockpackage/alarm/AnalogClock;->mSecHand:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1dc

    .line 225
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 226
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AnalogClock;->mSecond:F

    move/from16 v17, v0

    const/high16 v18, 0x4270

    div-float v17, v17, v18

    const/high16 v18, 0x43b4

    mul-float v17, v17, v18

    int-to-float v0, v15

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AnalogClock;->mHandsOffsetY:I

    move/from16 v19, v0

    add-int v19, v19, v16

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 228
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/clockpackage/alarm/AnalogClock;->mSecHand:Landroid/graphics/drawable/Drawable;

    .line 229
    .local v13, secondHand:Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_1d4

    .line 230
    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    .line 231
    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    .line 232
    div-int/lit8 v17, v14, 0x2

    sub-int v17, v15, v17

    div-int/lit8 v18, v8, 0x2

    sub-int v18, v16, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AnalogClock;->mHandsOffsetY:I

    move/from16 v19, v0

    add-int v18, v18, v19

    div-int/lit8 v19, v14, 0x2

    add-int v19, v19, v15

    div-int/lit8 v20, v8, 0x2

    add-int v20, v20, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AnalogClock;->mHandsOffsetY:I

    move/from16 v21, v0

    add-int v20, v20, v21

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 234
    :cond_1d4
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 235
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 238
    .end local v13           #secondHand:Landroid/graphics/drawable/Drawable;
    :cond_1dc
    if-eqz v12, :cond_1e1

    .line 239
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 242
    :cond_1e1
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/alarm/AnalogClock;->onTimeChanged()V

    .line 243
    return-void
.end method

.method protected onMeasure(II)V
    .registers 12
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 139
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 140
    .local v5, widthMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 141
    .local v6, widthSize:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 142
    .local v1, heightMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 144
    .local v2, heightSize:I
    const/high16 v0, 0x3f80

    .line 145
    .local v0, hScale:F
    const/high16 v4, 0x3f80

    .line 147
    .local v4, vScale:F
    if-eqz v5, :cond_20

    iget v7, p0, Lcom/sec/android/app/clockpackage/alarm/AnalogClock;->mDialWidth:I

    if-ge v6, v7, :cond_20

    .line 148
    int-to-float v7, v6

    iget v8, p0, Lcom/sec/android/app/clockpackage/alarm/AnalogClock;->mDialWidth:I

    int-to-float v8, v8

    div-float v0, v7, v8

    .line 151
    :cond_20
    if-eqz v1, :cond_2c

    iget v7, p0, Lcom/sec/android/app/clockpackage/alarm/AnalogClock;->mDialHeight:I

    if-ge v2, v7, :cond_2c

    .line 152
    int-to-float v7, v2

    iget v8, p0, Lcom/sec/android/app/clockpackage/alarm/AnalogClock;->mDialHeight:I

    int-to-float v8, v8

    div-float v4, v7, v8

    .line 155
    :cond_2c
    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 157
    .local v3, scale:F
    iget v7, p0, Lcom/sec/android/app/clockpackage/alarm/AnalogClock;->mDialWidth:I

    int-to-float v7, v7

    mul-float/2addr v7, v3

    float-to-int v7, v7

    invoke-static {v7, p1}, Lcom/sec/android/app/clockpackage/alarm/AnalogClock;->resolveSize(II)I

    move-result v7

    iget v8, p0, Lcom/sec/android/app/clockpackage/alarm/AnalogClock;->mDialHeight:I

    int-to-float v8, v8

    mul-float/2addr v8, v3

    float-to-int v8, v8

    invoke-static {v8, p2}, Lcom/sec/android/app/clockpackage/alarm/AnalogClock;->resolveSize(II)I

    move-result v8

    invoke-virtual {p0, v7, v8}, Lcom/sec/android/app/clockpackage/alarm/AnalogClock;->setMeasuredDimension(II)V

    .line 159
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 6
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 163
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 164
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/clockpackage/alarm/AnalogClock;->mChanged:Z

    .line 165
    return-void
.end method

.method public setHandsOffset(II)V
    .registers 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 288
    iput p2, p0, Lcom/sec/android/app/clockpackage/alarm/AnalogClock;->mHandsOffsetY:I

    .line 289
    return-void
.end method

.method public setSecondHand(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .parameter "secHand"

    .prologue
    .line 283
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/AnalogClock;->mSecHand:Landroid/graphics/drawable/Drawable;

    .line 284
    return-void
.end method
