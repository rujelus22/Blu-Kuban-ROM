.class public Lcom/sec/android/app/clockpackage/deskclock/AnalogClockView;
.super Landroid/view/View;
.source "AnalogClockView.java"


# instance fields
.field private attached:Z

.field private context:Landroid/content/Context;

.field private handl:Landroid/os/Handler;

.field private hour:F

.field private hourImg:Landroid/graphics/drawable/Drawable;

.field private mCalendar:Landroid/text/format/Time;

.field private min:F

.field private minuteImg:Landroid/graphics/drawable/Drawable;

.field private sec:F

.field public service:Landroid/content/BroadcastReceiver;

.field private widthPixel:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    iput v0, p0, Lcom/sec/android/app/clockpackage/deskclock/AnalogClockView;->hour:F

    iput v0, p0, Lcom/sec/android/app/clockpackage/deskclock/AnalogClockView;->min:F

    iput v0, p0, Lcom/sec/android/app/clockpackage/deskclock/AnalogClockView;->sec:F

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/clockpackage/deskclock/AnalogClockView;->attached:Z

    .line 24
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/AnalogClockView;->handl:Landroid/os/Handler;

    .line 104
    new-instance v0, Lcom/sec/android/app/clockpackage/deskclock/AnalogClockView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/clockpackage/deskclock/AnalogClockView$1;-><init>(Lcom/sec/android/app/clockpackage/deskclock/AnalogClockView;)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/AnalogClockView;->service:Landroid/content/BroadcastReceiver;

    .line 31
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/deskclock/AnalogClockView;->context:Landroid/content/Context;

    .line 32
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/AnalogClockView;->mCalendar:Landroid/text/format/Time;

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/AnalogClockView;->hourImg:Landroid/graphics/drawable/Drawable;

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/AnalogClockView;->minuteImg:Landroid/graphics/drawable/Drawable;

    .line 37
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/AnalogClockView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_69

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/sec/android/app/clockpackage/deskclock/AnalogClockView;->widthPixel:I

    .line 41
    :goto_57
    const/16 v0, 0x15e

    iput v0, p0, Lcom/sec/android/app/clockpackage/deskclock/AnalogClockView;->widthPixel:I

    .line 43
    iget v0, p0, Lcom/sec/android/app/clockpackage/deskclock/AnalogClockView;->widthPixel:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/AnalogClockView;->setMinimumWidth(I)V

    .line 44
    const/16 v0, 0x140

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/AnalogClockView;->setMinimumHeight(I)V

    .line 45
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/AnalogClockView;->onTimeChanged()V

    .line 46
    return-void

    .line 40
    :cond_69
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/sec/android/app/clockpackage/deskclock/AnalogClockView;->widthPixel:I

    goto :goto_57
.end method

.method static synthetic access$002(Lcom/sec/android/app/clockpackage/deskclock/AnalogClockView;Landroid/text/format/Time;)Landroid/text/format/Time;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/deskclock/AnalogClockView;->mCalendar:Landroid/text/format/Time;

    return-object p1
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .registers 6

    .prologue
    .line 85
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 86
    iget-boolean v1, p0, Lcom/sec/android/app/clockpackage/deskclock/AnalogClockView;->attached:Z

    if-nez v1, :cond_28

    .line 87
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/clockpackage/deskclock/AnalogClockView;->attached:Z

    .line 88
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 89
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 90
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 91
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 92
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/AnalogClockView;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/AnalogClockView;->service:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/android/app/clockpackage/deskclock/AnalogClockView;->handl:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 94
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_28
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 97
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 98
    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/deskclock/AnalogClockView;->attached:Z

    if-eqz v0, :cond_11

    .line 99
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/AnalogClockView;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/AnalogClockView;->service:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/clockpackage/deskclock/AnalogClockView;->attached:Z

    .line 102
    :cond_11
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 13
    .parameter "canvas"

    .prologue
    const/4 v10, 0x0

    const/high16 v9, 0x43b4

    const/high16 v8, 0x4270

    .line 49
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 52
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/AnalogClockView;->getWidth()I

    move-result v5

    div-int/lit8 v3, v5, 0x2

    .line 53
    .local v3, w:I
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/AnalogClockView;->getHeight()I

    move-result v5

    div-int/lit8 v0, v5, 0x2

    .line 54
    .local v0, h:I
    if-eqz v3, :cond_18

    if-nez v0, :cond_19

    .line 74
    :cond_18
    :goto_18
    return-void

    .line 56
    :cond_19
    iget v5, p0, Lcom/sec/android/app/clockpackage/deskclock/AnalogClockView;->hour:F

    iget v6, p0, Lcom/sec/android/app/clockpackage/deskclock/AnalogClockView;->min:F

    div-float/2addr v6, v8

    add-float v1, v5, v6

    .line 57
    .local v1, mHour:F
    iget v5, p0, Lcom/sec/android/app/clockpackage/deskclock/AnalogClockView;->min:F

    iget v6, p0, Lcom/sec/android/app/clockpackage/deskclock/AnalogClockView;->sec:F

    div-float/2addr v6, v8

    add-float v2, v5, v6

    .line 58
    .local v2, mMinute:F
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/deskclock/AnalogClockView;->hourImg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 60
    .local v4, x:I
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/deskclock/AnalogClockView;->hourImg:Landroid/graphics/drawable/Drawable;

    div-int/lit8 v6, v4, 0x2

    sub-int v6, v3, v6

    div-int/lit8 v7, v4, 0x2

    add-int/2addr v7, v3

    invoke-virtual {v5, v6, v10, v7, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 62
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 63
    const/high16 v5, 0x4140

    div-float v5, v1, v5

    mul-float/2addr v5, v9

    int-to-float v6, v3

    int-to-float v7, v0

    invoke-virtual {p1, v5, v6, v7}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 64
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/deskclock/AnalogClockView;->hourImg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 65
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 67
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 68
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/deskclock/AnalogClockView;->minuteImg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 70
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/deskclock/AnalogClockView;->minuteImg:Landroid/graphics/drawable/Drawable;

    div-int/lit8 v6, v4, 0x2

    sub-int v6, v3, v6

    div-int/lit8 v7, v4, 0x2

    add-int/2addr v7, v3

    invoke-virtual {v5, v6, v10, v7, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 71
    div-float v5, v2, v8

    mul-float/2addr v5, v9

    int-to-float v6, v3

    int-to-float v7, v0

    invoke-virtual {p1, v5, v6, v7}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 72
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/deskclock/AnalogClockView;->minuteImg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 73
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_18
.end method

.method public onTimeChanged()V
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/AnalogClockView;->mCalendar:Landroid/text/format/Time;

    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 78
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/AnalogClockView;->mCalendar:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->hour:I

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/app/clockpackage/deskclock/AnalogClockView;->hour:F

    .line 79
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/AnalogClockView;->mCalendar:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->minute:I

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/app/clockpackage/deskclock/AnalogClockView;->min:F

    .line 80
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/AnalogClockView;->mCalendar:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->second:I

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/app/clockpackage/deskclock/AnalogClockView;->sec:F

    .line 81
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/AnalogClockView;->invalidate()V

    .line 82
    return-void
.end method
