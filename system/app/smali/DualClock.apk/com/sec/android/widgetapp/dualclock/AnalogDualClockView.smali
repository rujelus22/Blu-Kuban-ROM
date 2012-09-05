.class public Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;
.super Landroid/app/Activity;
.source "AnalogDualClockView.java"

# interfaces
.implements Lcom/sec/android/touchwiz/appwidget/IWidgetObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;,
        Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$ClockTimeZone;,
        Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DateFormatObserver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private calendarHome:Ljava/util/Calendar;

.field private calendarSecond:Ljava/util/Calendar;

.field private dualclockview:Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;

.field private mCityID:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCityList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mClickListener_home:Landroid/view/View$OnClickListener;

.field private mClickListener_second:Landroid/view/View$OnClickListener;

.field private mDateFormatObserver:Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DateFormatObserver;

.field private mDensity:F

.field private mHandler:Landroid/os/Handler;

.field private mSecTask:Ljava/lang/Runnable;

.field private mTimeZoneFinder:Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;

.field private mTimeZone_home:Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$ClockTimeZone;

.field private mTimeZone_second:Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$ClockTimeZone;

.field private receiver:Landroid/content/BroadcastReceiver;

.field private secondZoneVisible:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 46
    const-class v0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 50
    iput-object v1, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->mTimeZoneFinder:Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;

    .line 51
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->mHandler:Landroid/os/Handler;

    .line 52
    iput-object v1, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->mTimeZone_home:Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$ClockTimeZone;

    .line 53
    iput-object v1, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->mTimeZone_second:Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$ClockTimeZone;

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->secondZoneVisible:Z

    .line 58
    iput-object v1, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->mCityList:Ljava/util/ArrayList;

    .line 59
    iput-object v1, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->mCityID:Ljava/util/ArrayList;

    .line 60
    new-instance v0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DateFormatObserver;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DateFormatObserver;-><init>(Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->mDateFormatObserver:Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DateFormatObserver;

    .line 61
    new-instance v0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$1;-><init>(Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->receiver:Landroid/content/BroadcastReceiver;

    .line 716
    new-instance v0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$2;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$2;-><init>(Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->mSecTask:Ljava/lang/Runnable;

    .line 791
    new-instance v0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$3;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$3;-><init>(Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->mClickListener_home:Landroid/view/View$OnClickListener;

    .line 802
    new-instance v0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$4;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$4;-><init>(Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->mClickListener_second:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->readTimeZoneDB()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;)Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->dualclockview:Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->drawClock(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;)Landroid/view/View$OnClickListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->mClickListener_home:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;)Landroid/view/View$OnClickListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->mClickListener_second:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->mCityID:Ljava/util/ArrayList;

    return-object v0
.end method

.method private drawClock(Z)V
    .registers 11
    .parameter "flag"

    .prologue
    const/16 v8, 0xc

    const/16 v7, 0xb

    .line 372
    const/4 v0, 0x0

    .local v0, mHour1:I
    const/4 v2, 0x0

    .local v2, mMinute1:I
    const/4 v1, 0x0

    .local v1, mHour2:I
    const/4 v3, 0x0

    .local v3, mMinute2:I
    const/4 v4, 0x0

    .line 373
    .local v4, mSec:I
    iget-object v5, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->calendarHome:Ljava/util/Calendar;

    if-eqz v5, :cond_2b

    .line 374
    iget-object v5, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->mTimeZone_home:Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$ClockTimeZone;

    iget-object v5, v5, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$ClockTimeZone;->mTimezone:Ljava/util/TimeZone;

    invoke-static {v5}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->calendarHome:Ljava/util/Calendar;

    .line 375
    iget-object v5, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->calendarHome:Ljava/util/Calendar;

    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 376
    iget-object v5, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->calendarHome:Ljava/util/Calendar;

    invoke-virtual {v5, v8}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 377
    iget-object v5, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->calendarHome:Ljava/util/Calendar;

    const/16 v6, 0xd

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 379
    :cond_2b
    iget-object v5, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->calendarSecond:Ljava/util/Calendar;

    if-eqz v5, :cond_49

    iget-boolean v5, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->secondZoneVisible:Z

    if-eqz v5, :cond_49

    .line 380
    iget-object v5, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->mTimeZone_second:Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$ClockTimeZone;

    iget-object v5, v5, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$ClockTimeZone;->mTimezone:Ljava/util/TimeZone;

    invoke-static {v5}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->calendarSecond:Ljava/util/Calendar;

    .line 381
    iget-object v5, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->calendarSecond:Ljava/util/Calendar;

    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 382
    iget-object v5, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->calendarSecond:Ljava/util/Calendar;

    invoke-virtual {v5, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 385
    :cond_49
    if-eqz p1, :cond_cc

    .line 386
    iget-boolean v5, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->secondZoneVisible:Z

    if-eqz v5, :cond_8f

    iget-object v5, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->mTimeZone_second:Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$ClockTimeZone;

    if-eqz v5, :cond_8f

    .line 387
    iget-object v5, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->dualclockview:Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;

    iget-object v5, v5, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;->dualclock_second_hour_image:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v3}, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->getHourBitmapDrawable(II)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 390
    iget-object v5, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->dualclockview:Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;

    iget-object v5, v5, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;->dualclock_second_hour_image:Landroid/widget/ImageView;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 392
    iget-object v5, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->dualclockview:Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;

    iget-object v5, v5, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;->dualclock_second_min_image:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v3, v4}, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->getMinuteBitmapDrawable(III)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 395
    iget-object v5, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->dualclockview:Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;

    iget-object v5, v5, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;->dualclock_second_min_image:Landroid/widget/ImageView;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 397
    iget-object v5, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->dualclockview:Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;

    iget-object v5, v5, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;->dualclock_second_sec_image:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v4}, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->getSecondBitmapDrawable(II)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 399
    iget-object v5, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->dualclockview:Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;

    iget-object v5, v5, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;->dualclock_second_sec_image:Landroid/widget/ImageView;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 402
    :cond_8f
    iget-object v5, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->dualclockview:Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;

    iget-object v5, v5, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;->dualclock_home_hour_image:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v2}, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->getHourBitmapDrawable(II)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 404
    iget-object v5, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->dualclockview:Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;

    iget-object v5, v5, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;->dualclock_home_hour_image:Landroid/widget/ImageView;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 406
    iget-object v5, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->dualclockview:Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;

    iget-object v5, v5, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;->dualclock_home_min_image:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v2, v4}, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->getMinuteBitmapDrawable(III)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 409
    iget-object v5, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->dualclockview:Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;

    iget-object v5, v5, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;->dualclock_home_min_image:Landroid/widget/ImageView;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 411
    iget-object v5, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->dualclockview:Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;

    iget-object v5, v5, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;->dualclock_home_sec_image:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v4}, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->getSecondBitmapDrawable(II)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 413
    iget-object v5, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->dualclockview:Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;

    iget-object v5, v5, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;->dualclock_home_sec_image:Landroid/widget/ImageView;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 455
    :goto_cb
    return-void

    .line 416
    :cond_cc
    iget-boolean v5, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->secondZoneVisible:Z

    if-eqz v5, :cond_120

    iget-object v5, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->mTimeZone_second:Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$ClockTimeZone;

    if-eqz v5, :cond_120

    .line 417
    iget-object v5, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->mHandler:Landroid/os/Handler;

    if-eqz v5, :cond_dc

    rem-int/lit8 v5, v4, 0x3c

    if-nez v5, :cond_f0

    .line 418
    :cond_dc
    iget-object v5, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->dualclockview:Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;

    iget-object v5, v5, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;->dualclock_second_hour_image:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v3}, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->getHourBitmapDrawable(II)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 421
    iget-object v5, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->dualclockview:Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;

    iget-object v5, v5, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;->dualclock_second_hour_image:Landroid/widget/ImageView;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 424
    :cond_f0
    iget-object v5, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->mHandler:Landroid/os/Handler;

    if-eqz v5, :cond_f8

    rem-int/lit8 v5, v4, 0xa

    if-nez v5, :cond_10c

    .line 425
    :cond_f8
    iget-object v5, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->dualclockview:Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;

    iget-object v5, v5, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;->dualclock_second_min_image:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v3, v4}, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->getMinuteBitmapDrawable(III)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 428
    iget-object v5, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->dualclockview:Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;

    iget-object v5, v5, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;->dualclock_second_min_image:Landroid/widget/ImageView;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 431
    :cond_10c
    iget-object v5, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->dualclockview:Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;

    iget-object v5, v5, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;->dualclock_second_sec_image:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v4}, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->getSecondBitmapDrawable(II)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 433
    iget-object v5, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->dualclockview:Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;

    iget-object v5, v5, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;->dualclock_second_sec_image:Landroid/widget/ImageView;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 436
    :cond_120
    iget-object v5, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->mHandler:Landroid/os/Handler;

    if-eqz v5, :cond_128

    rem-int/lit8 v5, v4, 0x3c

    if-nez v5, :cond_13c

    .line 437
    :cond_128
    iget-object v5, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->dualclockview:Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;

    iget-object v5, v5, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;->dualclock_home_hour_image:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v2}, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->getHourBitmapDrawable(II)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 440
    iget-object v5, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->dualclockview:Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;

    iget-object v5, v5, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;->dualclock_home_hour_image:Landroid/widget/ImageView;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 443
    :cond_13c
    iget-object v5, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->mHandler:Landroid/os/Handler;

    if-eqz v5, :cond_144

    rem-int/lit8 v5, v4, 0xa

    if-nez v5, :cond_158

    .line 444
    :cond_144
    iget-object v5, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->dualclockview:Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;

    iget-object v5, v5, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;->dualclock_home_min_image:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v2, v4}, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->getMinuteBitmapDrawable(III)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 447
    iget-object v5, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->dualclockview:Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;

    iget-object v5, v5, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;->dualclock_home_min_image:Landroid/widget/ImageView;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 450
    :cond_158
    iget-object v5, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->dualclockview:Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;

    iget-object v5, v5, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;->dualclock_home_sec_image:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v4}, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->getSecondBitmapDrawable(II)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 452
    iget-object v5, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->dualclockview:Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;

    iget-object v5, v5, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;->dualclock_home_sec_image:Landroid/widget/ImageView;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto/16 :goto_cb
.end method

.method private drawClockBG()V
    .registers 3

    .prologue
    .line 362
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->secondZoneVisible:Z

    if-eqz v0, :cond_14

    .line 363
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->mTimeZone_home:Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$ClockTimeZone;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->mTimeZone_second:Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$ClockTimeZone;

    if-eqz v0, :cond_13

    .line 364
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->mTimeZone_home:Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$ClockTimeZone;

    iget-object v1, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->mTimeZone_second:Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$ClockTimeZone;

    invoke-direct {p0, v0, v1}, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->updateBG_ALL(Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$ClockTimeZone;Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$ClockTimeZone;)V

    .line 369
    :cond_13
    :goto_13
    return-void

    .line 366
    :cond_14
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->mTimeZone_home:Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$ClockTimeZone;

    if-eqz v0, :cond_13

    .line 367
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->mTimeZone_home:Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$ClockTimeZone;

    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->updateBG_Home(Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$ClockTimeZone;)V

    goto :goto_13
.end method

.method private drawSetCityImage(I)V
    .registers 5
    .parameter "mode"

    .prologue
    const/4 v2, 0x0

    .line 616
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->dualclockview:Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;

    iget-object v0, v0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;->dualclock_second_plus_image:Landroid/widget/ImageView;

    const v1, 0x7f020003

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 618
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->dualclockview:Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;

    iget-object v0, v0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;->dualclock_second_plus_text:Landroid/widget/TextView;

    const v1, 0x7f080009

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 619
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->dualclockview:Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;

    iget-object v0, v0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;->dualclock_second_city_text:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 620
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->dualclockview:Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;

    iget-object v0, v0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;->dualclock_second_city_text_with_dst:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 621
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->dualclockview:Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;

    iget-object v0, v0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;->dualclock_second_city_dst_image:Landroid/widget/ImageView;

    const v1, 0x7f020029

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 623
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->dualclockview:Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;

    iget-object v0, v0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;->dualclock_second_city_dst_image:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 624
    return-void
.end method

.method private getContentValues(Lcom/sec/android/widgetapp/dualclock/City$CityInfo;Ljava/lang/String;)Landroid/content/ContentValues;
    .registers 7
    .parameter "city"
    .parameter "type"

    .prologue
    const/4 v3, 0x1

    .line 257
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 258
    .local v0, c:Landroid/content/ContentValues;
    sget-object v1, Lcom/sec/android/widgetapp/dualclock/Const;->WC_COLUMNS:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/dualclock/City$CityInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    sget-object v1, Lcom/sec/android/widgetapp/dualclock/Const;->WC_COLUMNS:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/dualclock/City$CityInfo;->getRawOffsetMillis()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 260
    const-string v1, "insert"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 261
    sget-object v1, Lcom/sec/android/widgetapp/dualclock/Const;->WC_COLUMNS:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 262
    sget-object v1, Lcom/sec/android/widgetapp/dualclock/Const;->WC_COLUMNS:[Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    .line 264
    :cond_42
    sget-object v1, Lcom/sec/android/widgetapp/dualclock/Const;->WC_COLUMNS:[Ljava/lang/String;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/dualclock/City$CityInfo;->getUniqueID()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 265
    return-object v0
.end method

.method private getContentValues(Ljava/lang/String;I)Landroid/content/ContentValues;
    .registers 7
    .parameter "cityName"
    .parameter "uniqueId"

    .prologue
    .line 656
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 657
    .local v0, c:Landroid/content/ContentValues;
    sget-object v1, Lcom/sec/android/widgetapp/dualclock/Const;->WC_COLUMNS:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    sget-object v1, Lcom/sec/android/widgetapp/dualclock/Const;->WC_COLUMNS:[Ljava/lang/String;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    return-object v0
.end method

.method private getDBAll(Landroid/content/Context;)Landroid/database/Cursor;
    .registers 8
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 663
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/widgetapp/dualclock/DataContentProvider;->DATA_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private getHourBitmapDrawable(II)Landroid/graphics/drawable/BitmapDrawable;
    .registers 14
    .parameter "hour"
    .parameter "minute"

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 475
    mul-int/lit8 v2, p1, 0x1e

    int-to-float v2, v2

    div-int/lit8 v3, p2, 0x2

    int-to-float v3, v3

    add-float v8, v2, v3

    .line 477
    .local v8, degrees:F
    const/4 v2, 0x6

    if-lt p1, v2, :cond_47

    const/16 v2, 0x12

    if-ge p1, v2, :cond_47

    .line 478
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02001a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    check-cast v9, Landroid/graphics/drawable/BitmapDrawable;

    .line 480
    .local v9, drawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v9}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 487
    .local v0, hourDstBmp:Landroid/graphics/Bitmap;
    :goto_22
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 488
    .local v5, matrix:Landroid/graphics/Matrix;
    iget v2, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->mDensity:F

    iget v3, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->mDensity:F

    invoke-virtual {v5, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 489
    invoke-virtual {v5, v8}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 490
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 492
    .local v10, dstBmp:Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v7, v10}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 493
    .local v7, bd:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v7, v6}, Landroid/graphics/drawable/BitmapDrawable;->setAntiAlias(Z)V

    .line 494
    return-object v7

    .line 482
    .end local v0           #hourDstBmp:Landroid/graphics/Bitmap;
    .end local v5           #matrix:Landroid/graphics/Matrix;
    .end local v7           #bd:Landroid/graphics/drawable/BitmapDrawable;
    .end local v9           #drawable:Landroid/graphics/drawable/BitmapDrawable;
    .end local v10           #dstBmp:Landroid/graphics/Bitmap;
    :cond_47
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020017

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    check-cast v9, Landroid/graphics/drawable/BitmapDrawable;

    .line 484
    .restart local v9       #drawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v9}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .restart local v0       #hourDstBmp:Landroid/graphics/Bitmap;
    goto :goto_22
.end method

.method private getMinuteBitmapDrawable(III)Landroid/graphics/drawable/BitmapDrawable;
    .registers 15
    .parameter "hour"
    .parameter "minute"
    .parameter "sec"

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 498
    mul-int/lit8 v2, p2, 0x6

    int-to-float v2, v2

    div-int/lit8 v3, p3, 0xa

    int-to-float v3, v3

    add-float v8, v2, v3

    .line 500
    .local v8, degrees:F
    const/4 v2, 0x6

    if-lt p1, v2, :cond_47

    const/16 v2, 0x12

    if-ge p1, v2, :cond_47

    .line 501
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02001b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    check-cast v9, Landroid/graphics/drawable/BitmapDrawable;

    .line 503
    .local v9, drawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v9}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 509
    .local v0, minDstBmp:Landroid/graphics/Bitmap;
    :goto_22
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 510
    .local v5, matrix:Landroid/graphics/Matrix;
    iget v2, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->mDensity:F

    iget v3, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->mDensity:F

    invoke-virtual {v5, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 511
    invoke-virtual {v5, v8}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 512
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 514
    .local v10, dstBmp:Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v7, v10}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 515
    .local v7, bd:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v7, v6}, Landroid/graphics/drawable/BitmapDrawable;->setAntiAlias(Z)V

    .line 516
    return-object v7

    .line 505
    .end local v0           #minDstBmp:Landroid/graphics/Bitmap;
    .end local v5           #matrix:Landroid/graphics/Matrix;
    .end local v7           #bd:Landroid/graphics/drawable/BitmapDrawable;
    .end local v9           #drawable:Landroid/graphics/drawable/BitmapDrawable;
    .end local v10           #dstBmp:Landroid/graphics/Bitmap;
    :cond_47
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020018

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    check-cast v9, Landroid/graphics/drawable/BitmapDrawable;

    .line 507
    .restart local v9       #drawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v9}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .restart local v0       #minDstBmp:Landroid/graphics/Bitmap;
    goto :goto_22
.end method

.method private getSecondBitmapDrawable(II)Landroid/graphics/drawable/BitmapDrawable;
    .registers 14
    .parameter "hour"
    .parameter "sec"

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 520
    mul-int/lit8 v2, p2, 0x6

    int-to-float v8, v2

    .line 522
    .local v8, degrees:F
    const/4 v2, 0x6

    if-lt p1, v2, :cond_44

    const/16 v2, 0x12

    if-ge p1, v2, :cond_44

    .line 523
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02001c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    check-cast v9, Landroid/graphics/drawable/BitmapDrawable;

    .line 525
    .local v9, drawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v9}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 531
    .local v0, secDstBmp:Landroid/graphics/Bitmap;
    :goto_1d
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 532
    .local v5, matrix:Landroid/graphics/Matrix;
    iget v2, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->mDensity:F

    iget v3, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->mDensity:F

    invoke-virtual {v5, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 533
    invoke-virtual {v5, v8}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 534
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 536
    .local v10, dstBmp:Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v7, v10}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 537
    .local v7, bd:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v7, v6}, Landroid/graphics/drawable/BitmapDrawable;->setAntiAlias(Z)V

    .line 538
    const/4 v0, 0x0

    .line 539
    const/4 v10, 0x0

    .line 540
    return-object v7

    .line 527
    .end local v0           #secDstBmp:Landroid/graphics/Bitmap;
    .end local v5           #matrix:Landroid/graphics/Matrix;
    .end local v7           #bd:Landroid/graphics/drawable/BitmapDrawable;
    .end local v9           #drawable:Landroid/graphics/drawable/BitmapDrawable;
    .end local v10           #dstBmp:Landroid/graphics/Bitmap;
    :cond_44
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020019

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    check-cast v9, Landroid/graphics/drawable/BitmapDrawable;

    .line 529
    .restart local v9       #drawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v9}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .restart local v0       #secDstBmp:Landroid/graphics/Bitmap;
    goto :goto_1d
.end method

.method private readTimeZoneDB()V
    .registers 32

    .prologue
    .line 269
    const-string v9, "homezone asc"

    .line 270
    .local v9, orderBy:Ljava/lang/String;
    const-string v7, "homezone > 0"

    .line 271
    .local v7, whereClause:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    .line 272
    .local v14, context:Landroid/content/Context;
    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/sec/android/widgetapp/dualclock/Const;->DATA_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 274
    .local v11, c:Landroid/database/Cursor;
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v15

    .line 275
    .local v15, cursorCount:I
    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f050008

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v19

    .line 277
    .local v19, mCountries:[Ljava/lang/String;
    const/16 v4, 0x39

    aget-object v10, v19, v4

    .line 279
    .local v10, Russia:Ljava/lang/String;
    const/4 v4, 0x1

    if-ne v15, v4, :cond_a4

    .line 280
    :try_start_2a
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 281
    const/4 v4, 0x4

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_96

    .line 282
    const/4 v4, 0x5

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    .line 283
    .local v26, mZoneUniqueId:I
    sget-object v13, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->cityManager:Lcom/sec/android/widgetapp/dualclock/City;

    .line 284
    .local v13, cityI:Lcom/sec/android/widgetapp/dualclock/City;
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v13, v4}, Lcom/sec/android/widgetapp/dualclock/City;->findCity_objectByUniqueID(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v23

    .line 286
    .local v23, mZone:Ljava/lang/String;
    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Lcom/sec/android/widgetapp/dualclock/City;->findCity_objectByName(Ljava/lang/String;)Lcom/sec/android/widgetapp/dualclock/City$CityInfo;

    move-result-object v12

    .line 288
    .local v12, city:Lcom/sec/android/widgetapp/dualclock/City$CityInfo;
    const/4 v4, 0x3

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 289
    .local v20, mDST:I
    const/4 v4, -0x1

    move/from16 v0, v20

    if-ne v0, v4, :cond_5e

    .line 290
    iget-object v4, v12, Lcom/sec/android/widgetapp/dualclock/City$CityInfo;->country:Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9d

    .line 291
    const/16 v20, 0x0

    .line 296
    :cond_5e
    :goto_5e
    new-instance v21, Ljava/util/SimpleTimeZone;

    const/4 v4, 0x2

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const v5, 0x36ee80

    mul-int v5, v5, v20

    add-int/2addr v4, v5

    const-string v5, "GMT"

    move-object/from16 v0, v21

    invoke-direct {v0, v4, v5}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    .line 298
    .local v21, mTimeZone1:Ljava/util/TimeZone;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->secondZoneVisible:Z

    .line 300
    new-instance v4, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$ClockTimeZone;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v23

    move/from16 v3, v20

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$ClockTimeZone;-><init>(Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;Ljava/util/TimeZone;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->mTimeZone_home:Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$ClockTimeZone;

    .line 301
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->mTimeZone_home:Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$ClockTimeZone;

    iget-object v4, v4, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$ClockTimeZone;->mTimezone:Ljava/util/TimeZone;

    invoke-static {v4}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->calendarHome:Ljava/util/Calendar;

    .line 304
    .end local v12           #city:Lcom/sec/android/widgetapp/dualclock/City$CityInfo;
    .end local v13           #cityI:Lcom/sec/android/widgetapp/dualclock/City;
    .end local v20           #mDST:I
    .end local v21           #mTimeZone1:Ljava/util/TimeZone;
    .end local v23           #mZone:Ljava/lang/String;
    .end local v26           #mZoneUniqueId:I
    :cond_96
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_99
    .catchall {:try_start_2a .. :try_end_99} :catchall_1e4
    .catch Ljava/lang/NullPointerException; {:try_start_2a .. :try_end_99} :catch_1b4
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2a .. :try_end_99} :catch_1cc
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_99} :catch_1db

    .line 357
    :goto_99
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 359
    :goto_9c
    return-void

    .line 293
    .restart local v12       #city:Lcom/sec/android/widgetapp/dualclock/City$CityInfo;
    .restart local v13       #cityI:Lcom/sec/android/widgetapp/dualclock/City;
    .restart local v20       #mDST:I
    .restart local v23       #mZone:Ljava/lang/String;
    .restart local v26       #mZoneUniqueId:I
    :cond_9d
    :try_start_9d
    iget-object v4, v12, Lcom/sec/android/widgetapp/dualclock/City$CityInfo;->timeZoneID:Ljava/lang/String;

    invoke-static {v4}, Lcom/sec/android/widgetapp/dualclock/DualClockUtils;->isAutoDST(Ljava/lang/String;)I

    move-result v20

    goto :goto_5e

    .line 306
    .end local v12           #city:Lcom/sec/android/widgetapp/dualclock/City$CityInfo;
    .end local v13           #cityI:Lcom/sec/android/widgetapp/dualclock/City;
    .end local v20           #mDST:I
    .end local v23           #mZone:Ljava/lang/String;
    .end local v26           #mZoneUniqueId:I
    :cond_a4
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 307
    const/4 v4, 0x5

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    .line 308
    .local v27, mZoneUniqueId1:I
    sget-object v13, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->cityManager:Lcom/sec/android/widgetapp/dualclock/City;

    .line 309
    .restart local v13       #cityI:Lcom/sec/android/widgetapp/dualclock/City;
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v13, v4}, Lcom/sec/android/widgetapp/dualclock/City;->findCity_objectByUniqueID(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v24

    .line 310
    .local v24, mZone1:Ljava/lang/String;
    const-string v4, "St. John\'s"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_db

    const/16 v4, 0x11f

    move/from16 v0, v27

    if-ne v0, v4, :cond_db

    .line 311
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 313
    :cond_db
    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Lcom/sec/android/widgetapp/dualclock/City;->findCity_objectByName(Ljava/lang/String;)Lcom/sec/android/widgetapp/dualclock/City$CityInfo;

    move-result-object v12

    .line 314
    .restart local v12       #city:Lcom/sec/android/widgetapp/dualclock/City$CityInfo;
    const/4 v4, 0x3

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 315
    .local v16, dst1:I
    const/4 v4, -0x1

    move/from16 v0, v16

    if-ne v0, v4, :cond_f5

    .line 316
    iget-object v4, v12, Lcom/sec/android/widgetapp/dualclock/City$CityInfo;->country:Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1bd

    .line 317
    const/16 v16, 0x0

    .line 322
    :cond_f5
    :goto_f5
    new-instance v21, Ljava/util/SimpleTimeZone;

    const/4 v4, 0x2

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const v5, 0x36ee80

    mul-int v5, v5, v16

    add-int/2addr v4, v5

    const-string v5, "GMT"

    move-object/from16 v0, v21

    invoke-direct {v0, v4, v5}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    .line 324
    .restart local v21       #mTimeZone1:Ljava/util/TimeZone;
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    .line 325
    const/4 v4, 0x5

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    .line 326
    .local v28, mZoneUniqueId2:I
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v13, v4}, Lcom/sec/android/widgetapp/dualclock/City;->findCity_objectByUniqueID(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v25

    .line 327
    .local v25, mZone2:Ljava/lang/String;
    const-string v4, "St. John\'s"

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13e

    const/16 v4, 0x11f

    move/from16 v0, v28

    if-ne v0, v4, :cond_13e

    .line 328
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 330
    :cond_13e
    move-object/from16 v0, v25

    invoke-virtual {v13, v0}, Lcom/sec/android/widgetapp/dualclock/City;->findCity_objectByName(Ljava/lang/String;)Lcom/sec/android/widgetapp/dualclock/City$CityInfo;

    move-result-object v12

    .line 331
    const/4 v4, 0x3

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 332
    .local v17, dst2:I
    const/4 v4, -0x1

    move/from16 v0, v17

    if-ne v0, v4, :cond_158

    .line 333
    iget-object v4, v12, Lcom/sec/android/widgetapp/dualclock/City$CityInfo;->country:Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c5

    .line 334
    const/16 v17, 0x0

    .line 340
    :cond_158
    :goto_158
    new-instance v22, Ljava/util/SimpleTimeZone;

    const/4 v4, 0x2

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const v5, 0x36ee80

    mul-int v5, v5, v17

    add-int/2addr v4, v5

    const-string v5, "GMT"

    move-object/from16 v0, v22

    invoke-direct {v0, v4, v5}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    .line 342
    .local v22, mTimeZone2:Ljava/util/TimeZone;
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->secondZoneVisible:Z

    .line 343
    new-instance v4, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$ClockTimeZone;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v24

    move/from16 v3, v16

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$ClockTimeZone;-><init>(Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;Ljava/util/TimeZone;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->mTimeZone_home:Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$ClockTimeZone;

    .line 344
    new-instance v4, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$ClockTimeZone;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move/from16 v3, v17

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$ClockTimeZone;-><init>(Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;Ljava/util/TimeZone;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->mTimeZone_second:Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$ClockTimeZone;

    .line 345
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->mTimeZone_home:Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$ClockTimeZone;

    iget-object v4, v4, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$ClockTimeZone;->mTimezone:Ljava/util/TimeZone;

    invoke-static {v4}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->calendarHome:Ljava/util/Calendar;

    .line 346
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->mTimeZone_second:Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$ClockTimeZone;

    iget-object v4, v4, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$ClockTimeZone;->mTimezone:Ljava/util/TimeZone;

    invoke-static {v4}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->calendarSecond:Ljava/util/Calendar;

    .line 348
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_1b2
    .catchall {:try_start_9d .. :try_end_1b2} :catchall_1e4
    .catch Ljava/lang/NullPointerException; {:try_start_9d .. :try_end_1b2} :catch_1b4
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_9d .. :try_end_1b2} :catch_1cc
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_1b2} :catch_1db

    goto/16 :goto_99

    .line 350
    .end local v12           #city:Lcom/sec/android/widgetapp/dualclock/City$CityInfo;
    .end local v13           #cityI:Lcom/sec/android/widgetapp/dualclock/City;
    .end local v16           #dst1:I
    .end local v17           #dst2:I
    .end local v21           #mTimeZone1:Ljava/util/TimeZone;
    .end local v22           #mTimeZone2:Ljava/util/TimeZone;
    .end local v24           #mZone1:Ljava/lang/String;
    .end local v25           #mZone2:Ljava/lang/String;
    .end local v27           #mZoneUniqueId1:I
    .end local v28           #mZoneUniqueId2:I
    :catch_1b4
    move-exception v29

    .line 351
    .local v29, ne:Ljava/lang/NullPointerException;
    :try_start_1b5
    invoke-virtual/range {v29 .. v29}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_1b8
    .catchall {:try_start_1b5 .. :try_end_1b8} :catchall_1e4

    .line 357
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_9c

    .line 319
    .end local v29           #ne:Ljava/lang/NullPointerException;
    .restart local v12       #city:Lcom/sec/android/widgetapp/dualclock/City$CityInfo;
    .restart local v13       #cityI:Lcom/sec/android/widgetapp/dualclock/City;
    .restart local v16       #dst1:I
    .restart local v24       #mZone1:Ljava/lang/String;
    .restart local v27       #mZoneUniqueId1:I
    :cond_1bd
    :try_start_1bd
    iget-object v4, v12, Lcom/sec/android/widgetapp/dualclock/City$CityInfo;->timeZoneID:Ljava/lang/String;

    invoke-static {v4}, Lcom/sec/android/widgetapp/dualclock/DualClockUtils;->isAutoDST(Ljava/lang/String;)I

    move-result v16

    goto/16 :goto_f5

    .line 336
    .restart local v17       #dst2:I
    .restart local v21       #mTimeZone1:Ljava/util/TimeZone;
    .restart local v25       #mZone2:Ljava/lang/String;
    .restart local v28       #mZoneUniqueId2:I
    :cond_1c5
    iget-object v4, v12, Lcom/sec/android/widgetapp/dualclock/City$CityInfo;->timeZoneID:Ljava/lang/String;

    invoke-static {v4}, Lcom/sec/android/widgetapp/dualclock/DualClockUtils;->isAutoDST(Ljava/lang/String;)I
    :try_end_1ca
    .catchall {:try_start_1bd .. :try_end_1ca} :catchall_1e4
    .catch Ljava/lang/NullPointerException; {:try_start_1bd .. :try_end_1ca} :catch_1b4
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1bd .. :try_end_1ca} :catch_1cc
    .catch Ljava/lang/Exception; {:try_start_1bd .. :try_end_1ca} :catch_1db

    move-result v17

    goto :goto_158

    .line 352
    .end local v12           #city:Lcom/sec/android/widgetapp/dualclock/City$CityInfo;
    .end local v13           #cityI:Lcom/sec/android/widgetapp/dualclock/City;
    .end local v16           #dst1:I
    .end local v17           #dst2:I
    .end local v21           #mTimeZone1:Ljava/util/TimeZone;
    .end local v24           #mZone1:Ljava/lang/String;
    .end local v25           #mZone2:Ljava/lang/String;
    .end local v27           #mZoneUniqueId1:I
    .end local v28           #mZoneUniqueId2:I
    :catch_1cc
    move-exception v30

    .line 353
    .local v30, se:Landroid/database/sqlite/SQLiteFullException;
    :try_start_1cd
    new-instance v4, Lcom/sec/android/widgetapp/dualclock/Messages;

    invoke-direct {v4}, Lcom/sec/android/widgetapp/dualclock/Messages;-><init>()V

    const/4 v5, 0x1

    invoke-virtual {v4, v14, v5}, Lcom/sec/android/widgetapp/dualclock/Messages;->showTOAST(Landroid/content/Context;I)V
    :try_end_1d6
    .catchall {:try_start_1cd .. :try_end_1d6} :catchall_1e4

    .line 357
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_9c

    .line 354
    .end local v30           #se:Landroid/database/sqlite/SQLiteFullException;
    :catch_1db
    move-exception v18

    .line 355
    .local v18, e:Ljava/lang/Exception;
    :try_start_1dc
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1df
    .catchall {:try_start_1dc .. :try_end_1df} :catchall_1e4

    .line 357
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_9c

    .end local v18           #e:Ljava/lang/Exception;
    :catchall_1e4
    move-exception v4

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v4
.end method

.method private registerEVTReceiver()V
    .registers 5

    .prologue
    .line 233
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://settings/system/date_format"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->mDateFormatObserver:Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DateFormatObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 237
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->mSecTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 238
    return-void
.end method

.method private unregisterEVTReceiver()V
    .registers 3

    .prologue
    .line 243
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->mDateFormatObserver:Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DateFormatObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 245
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->mSecTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 246
    return-void
.end method

.method private updateBGImges(II)V
    .registers 5
    .parameter "hour"
    .parameter "mode"

    .prologue
    .line 545
    const/4 v1, 0x6

    if-lt p1, v1, :cond_15

    const/16 v1, 0x12

    if-ge p1, v1, :cond_15

    .line 546
    const v0, 0x7f02001f

    .line 550
    .local v0, rscId:I
    :goto_a
    const/4 v1, 0x1

    if-ne p2, v1, :cond_19

    .line 551
    iget-object v1, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->dualclockview:Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;

    iget-object v1, v1, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;->dualclock_home_bg_image:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 555
    :goto_14
    return-void

    .line 548
    .end local v0           #rscId:I
    :cond_15
    const v0, 0x7f02001d

    .restart local v0       #rscId:I
    goto :goto_a

    .line 553
    :cond_19
    iget-object v1, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->dualclockview:Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;

    iget-object v1, v1, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;->dualclock_second_bg_image:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_14
.end method

.method private updateBG_ALL(Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$ClockTimeZone;Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$ClockTimeZone;)V
    .registers 9
    .parameter "ctz_home"
    .parameter "ctz_second"

    .prologue
    const/16 v3, 0xb

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 465
    iget-object v2, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->calendarHome:Ljava/util/Calendar;

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 466
    .local v0, mHour1:I
    iget-object v2, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->calendarSecond:Ljava/util/Calendar;

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 467
    .local v1, mHour2:I
    invoke-direct {p0, v0, v4}, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->updateBGImges(II)V

    .line 468
    invoke-direct {p0, v1, v5}, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->updateBGImges(II)V

    .line 469
    iget-object v2, p1, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$ClockTimeZone;->mZonename:Ljava/lang/String;

    iget v3, p1, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$ClockTimeZone;->mDST:I

    invoke-direct {p0, v2, v3, v4}, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->updateZoneText(Ljava/lang/String;II)V

    .line 470
    iget-object v2, p2, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$ClockTimeZone;->mZonename:Ljava/lang/String;

    iget v3, p2, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$ClockTimeZone;->mDST:I

    invoke-direct {p0, v2, v3, v5}, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->updateZoneText(Ljava/lang/String;II)V

    .line 471
    return-void
.end method

.method private updateBG_Home(Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$ClockTimeZone;)V
    .registers 6
    .parameter "ctz"

    .prologue
    const/4 v3, 0x1

    .line 458
    iget-object v1, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->calendarHome:Ljava/util/Calendar;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 459
    .local v0, mHour:I
    invoke-direct {p0, v0, v3}, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->updateBGImges(II)V

    .line 460
    invoke-direct {p0, v3}, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->drawSetCityImage(I)V

    .line 461
    iget-object v1, p1, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$ClockTimeZone;->mZonename:Ljava/lang/String;

    iget v2, p1, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$ClockTimeZone;->mDST:I

    invoke-direct {p0, v1, v2, v3}, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->updateZoneText(Ljava/lang/String;II)V

    .line 462
    return-void
.end method

.method private updateCurrentLocationTime()V
    .registers 9

    .prologue
    .line 668
    iget-object v6, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->mTimeZoneFinder:Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;

    if-nez v6, :cond_f

    .line 669
    new-instance v6, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->mTimeZoneFinder:Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;

    .line 671
    :cond_f
    new-instance v4, Lcom/sec/android/widgetapp/dualclock/SharedPreference;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/sec/android/widgetapp/dualclock/SharedPreference;-><init>(Landroid/content/Context;)V

    .line 673
    .local v4, sharedPreference:Lcom/sec/android/widgetapp/dualclock/SharedPreference;
    invoke-virtual {v4}, Lcom/sec/android/widgetapp/dualclock/SharedPreference;->getUserSettingFlag()Z

    move-result v6

    if-nez v6, :cond_26

    .line 674
    iget-object v6, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->mTimeZoneFinder:Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;

    invoke-virtual {v6}, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->updateCurrentTimeZoneAtWidget()Z

    move-result v6

    if-eqz v6, :cond_27

    .line 714
    :cond_26
    :goto_26
    return-void

    .line 676
    :cond_27
    iget-object v6, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->mTimeZoneFinder:Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;

    invoke-virtual {v6}, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->isCurrentTimezoneCitiesExist()Z

    move-result v6

    if-eqz v6, :cond_26

    .line 678
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v2

    .line 680
    .local v2, currentOffset:I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->mCityList:Ljava/util/ArrayList;

    .line 681
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->mCityID:Ljava/util/ArrayList;

    .line 683
    iget-object v6, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->mTimeZoneFinder:Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;

    invoke-virtual {v6}, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->getCurrentTimezoneCities()Ljava/util/Iterator;

    move-result-object v3

    .line 685
    .local v3, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    if-eqz v3, :cond_26

    .line 686
    :cond_51
    :goto_51
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_84

    .line 687
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 688
    .local v5, uniqueID:I
    sget-object v6, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->cityManager:Lcom/sec/android/widgetapp/dualclock/City;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/android/widgetapp/dualclock/City;->findCity_objectByUniqueID(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    .line 690
    .local v1, cn:Ljava/lang/String;
    sget-object v6, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->cityManager:Lcom/sec/android/widgetapp/dualclock/City;

    invoke-virtual {v6, v1}, Lcom/sec/android/widgetapp/dualclock/City;->findCity_objectByName(Ljava/lang/String;)Lcom/sec/android/widgetapp/dualclock/City$CityInfo;

    move-result-object v0

    .line 693
    .local v0, ci:Lcom/sec/android/widgetapp/dualclock/City$CityInfo;
    iget v6, v0, Lcom/sec/android/widgetapp/dualclock/City$CityInfo;->rawOffset:I

    if-ne v2, v6, :cond_51

    .line 694
    iget-object v6, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->mCityList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 695
    iget-object v6, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->mCityID:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_51

    .line 698
    .end local v0           #ci:Lcom/sec/android/widgetapp/dualclock/City$CityInfo;
    .end local v1           #cn:Ljava/lang/String;
    .end local v5           #uniqueID:I
    :cond_84
    iget-object v6, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->mCityList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_26

    invoke-virtual {v4}, Lcom/sec/android/widgetapp/dualclock/SharedPreference;->getPOPUPFlag()Z

    move-result v6

    if-nez v6, :cond_26

    .line 700
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->displayMultiTimezoneDialog()V

    goto :goto_26
.end method

.method private updateZoneText(Ljava/lang/String;II)V
    .registers 11
    .parameter "zoneName"
    .parameter "dst"
    .parameter "mode"

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 558
    if-ne p3, v4, :cond_6c

    .line 559
    if-ne p2, v4, :cond_2a

    .line 560
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->dualclockview:Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;

    iget-object v0, v0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;->dualclock_home_city_dst_image:Landroid/widget/ImageView;

    const v1, 0x7f020027

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 562
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->dualclockview:Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;

    iget-object v0, v0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;->dualclock_home_city_dst_image:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 564
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->dualclockview:Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;

    iget-object v0, v0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;->dualclock_home_city_text_with_dst:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 566
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->dualclockview:Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;

    iget-object v0, v0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;->dualclock_home_city_text:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 613
    :goto_29
    return-void

    .line 567
    :cond_2a
    if-ne p2, v5, :cond_4c

    .line 568
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->dualclockview:Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;

    iget-object v0, v0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;->dualclock_home_city_dst_image:Landroid/widget/ImageView;

    const v1, 0x7f020028

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 570
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->dualclockview:Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;

    iget-object v0, v0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;->dualclock_home_city_dst_image:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 572
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->dualclockview:Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;

    iget-object v0, v0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;->dualclock_home_city_text_with_dst:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 574
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->dualclockview:Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;

    iget-object v0, v0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;->dualclock_home_city_text:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_29

    .line 576
    :cond_4c
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->dualclockview:Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;

    iget-object v0, v0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;->dualclock_home_city_dst_image:Landroid/widget/ImageView;

    const v1, 0x7f020029

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 578
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->dualclockview:Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;

    iget-object v0, v0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;->dualclock_home_city_dst_image:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 580
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->dualclockview:Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;

    iget-object v0, v0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;->dualclock_home_city_text_with_dst:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 581
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->dualclockview:Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;

    iget-object v0, v0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;->dualclock_home_city_text:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_29

    .line 585
    :cond_6c
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->dualclockview:Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;

    iget-object v0, v0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;->dualclock_second_plus_image:Landroid/widget/ImageView;

    const v1, 0x7f020001

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 587
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->dualclockview:Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;

    iget-object v0, v0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;->dualclock_second_plus_text:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 588
    if-ne p2, v4, :cond_9f

    .line 589
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->dualclockview:Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;

    iget-object v0, v0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;->dualclock_second_city_dst_image:Landroid/widget/ImageView;

    const v1, 0x7f020027

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 591
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->dualclockview:Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;

    iget-object v0, v0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;->dualclock_second_city_dst_image:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 593
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->dualclockview:Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;

    iget-object v0, v0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;->dualclock_second_city_text_with_dst:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 595
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->dualclockview:Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;

    iget-object v0, v0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;->dualclock_second_city_text:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_29

    .line 596
    :cond_9f
    if-ne p2, v5, :cond_c2

    .line 597
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->dualclockview:Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;

    iget-object v0, v0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;->dualclock_second_city_dst_image:Landroid/widget/ImageView;

    const v1, 0x7f020028

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 599
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->dualclockview:Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;

    iget-object v0, v0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;->dualclock_second_city_dst_image:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 601
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->dualclockview:Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;

    iget-object v0, v0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;->dualclock_second_city_text_with_dst:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 603
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->dualclockview:Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;

    iget-object v0, v0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;->dualclock_second_city_text:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_29

    .line 605
    :cond_c2
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->dualclockview:Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;

    iget-object v0, v0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;->dualclock_second_city_dst_image:Landroid/widget/ImageView;

    const v1, 0x7f020029

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 607
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->dualclockview:Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;

    iget-object v0, v0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;->dualclock_second_city_dst_image:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 609
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->dualclockview:Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;

    iget-object v0, v0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;->dualclock_second_city_text_with_dst:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 610
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->dualclockview:Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;

    iget-object v0, v0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;->dualclock_second_city_text:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_29
.end method


# virtual methods
.method public displayMultiTimezoneDialog()V
    .registers 6

    .prologue
    .line 814
    iget-object v3, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->mCityList:Ljava/util/ArrayList;

    if-eqz v3, :cond_51

    iget-object v3, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->mCityList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_51

    .line 815
    new-instance v3, Lcom/sec/android/widgetapp/dualclock/SharedPreference;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/sec/android/widgetapp/dualclock/SharedPreference;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sec/android/widgetapp/dualclock/SharedPreference;->setPOPUPFlag(Z)V

    .line 816
    iget-object v3, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->mCityList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v1, v3, [Ljava/lang/String;

    .line 817
    .local v1, cityList:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_22
    array-length v3, v1

    if-ge v2, v3, :cond_32

    .line 818
    iget-object v3, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->mCityList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v2

    .line 817
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    .line 820
    :cond_32
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 821
    .local v0, b:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f08000e

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 822
    const/4 v3, 0x0

    new-instance v4, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$5;

    invoke-direct {v4, p0}, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$5;-><init>(Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;)V

    invoke-virtual {v0, v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 838
    new-instance v3, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$6;

    invoke-direct {v3, p0}, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$6;-><init>(Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 846
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 849
    .end local v0           #b:Landroid/app/AlertDialog$Builder;
    .end local v1           #cityList:[Ljava/lang/String;
    .end local v2           #i:I
    :cond_51
    return-void
.end method

.method public fireOnPause()V
    .registers 1

    .prologue
    .line 212
    return-void
.end method

.method public fireOnResume()V
    .registers 1

    .prologue
    .line 217
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 6
    .parameter "newConfig"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->mSecTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 201
    invoke-direct {p0}, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->updateCurrentLocationTime()V

    .line 202
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->setContentView(I)V

    .line 203
    new-instance v0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;-><init>(Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->dualclockview:Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;

    .line 204
    invoke-direct {p0}, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->readTimeZoneDB()V

    .line 205
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->updateClock()V

    .line 206
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->mSecTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 207
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 12
    .parameter "savedInstanceState"

    .prologue
    .line 113
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 115
    const/high16 v8, 0x7f03

    invoke-virtual {p0, v8}, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->setContentView(I)V

    .line 116
    new-instance v8, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;

    invoke-direct {v8, p0}, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;-><init>(Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;)V

    iput-object v8, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->dualclockview:Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;

    .line 117
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->density:F

    iput v8, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->mDensity:F

    .line 118
    new-instance v8, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->mTimeZoneFinder:Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;

    .line 120
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 121
    .local v7, resolver:Landroid/content/ContentResolver;
    invoke-static {v7}, Lcom/sec/android/widgetapp/dualclock/DualClockUtils;->getAddedCityListCursor(Landroid/content/ContentResolver;)Landroid/database/Cursor;

    move-result-object v4

    .line 123
    .local v4, cursor:Landroid/database/Cursor;
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-nez v8, :cond_72

    .line 124
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    .line 127
    .local v3, currentTimeZone:Ljava/util/TimeZone;
    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_79

    .line 128
    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 129
    .local v6, mTemp:[Ljava/lang/String;
    const/4 v8, 0x1

    aget-object v2, v6, v8

    .line 134
    .end local v6           #mTemp:[Ljava/lang/String;
    .local v2, cityName:Ljava/lang/String;
    :goto_59
    sget-object v1, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->cityManager:Lcom/sec/android/widgetapp/dualclock/City;

    .line 135
    .local v1, cityI:Lcom/sec/android/widgetapp/dualclock/City;
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v2}, Lcom/sec/android/widgetapp/dualclock/DualClockUtils;->getIndexName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/sec/android/widgetapp/dualclock/City;->findCity_objectByName(Ljava/lang/String;)Lcom/sec/android/widgetapp/dualclock/City$CityInfo;

    move-result-object v0

    .line 138
    .local v0, city:Lcom/sec/android/widgetapp/dualclock/City$CityInfo;
    :try_start_67
    sget-object v8, Lcom/sec/android/widgetapp/dualclock/Const;->DATA_URI:Landroid/net/Uri;

    const-string v9, "insert"

    invoke-direct {p0, v0, v9}, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->getContentValues(Lcom/sec/android/widgetapp/dualclock/City$CityInfo;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_72} :catch_85

    .line 144
    .end local v0           #city:Lcom/sec/android/widgetapp/dualclock/City$CityInfo;
    .end local v1           #cityI:Lcom/sec/android/widgetapp/dualclock/City;
    .end local v2           #cityName:Ljava/lang/String;
    .end local v3           #currentTimeZone:Ljava/util/TimeZone;
    :cond_72
    :goto_72
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 147
    invoke-direct {p0}, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->updateCurrentLocationTime()V

    .line 148
    return-void

    .line 131
    .restart local v3       #currentTimeZone:Ljava/util/TimeZone;
    :cond_79
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f080004

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #cityName:Ljava/lang/String;
    goto :goto_59

    .line 140
    .restart local v0       #city:Lcom/sec/android/widgetapp/dualclock/City$CityInfo;
    .restart local v1       #cityI:Lcom/sec/android/widgetapp/dualclock/City;
    :catch_85
    move-exception v5

    .line 141
    .local v5, e:Ljava/lang/Exception;
    sget-object v8, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->TAG:Ljava/lang/String;

    const-string v9, "Exception"

    invoke-static {v8, v9, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_72
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->dualclockview:Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;

    iget-object v0, v0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;->secCenterBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_10

    .line 184
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->dualclockview:Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;

    iget-object v0, v0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;->secCenterBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 185
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->dualclockview:Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;

    .line 187
    :cond_10
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->mTimeZoneFinder:Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;

    if-eqz v0, :cond_19

    .line 188
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->mTimeZoneFinder:Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->destory()Z

    .line 190
    :cond_19
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 191
    return-void
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 169
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 170
    invoke-direct {p0}, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->unregisterEVTReceiver()V

    .line 171
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 159
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 160
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->updateClock()V

    .line 161
    invoke-direct {p0}, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->registerEVTReceiver()V

    .line 162
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->mTimeZoneFinder:Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;

    if-nez v0, :cond_18

    .line 163
    new-instance v0, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->mTimeZoneFinder:Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;

    .line 165
    :cond_18
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 195
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public onStart()V
    .registers 1

    .prologue
    .line 152
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 153
    invoke-direct {p0}, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->readTimeZoneDB()V

    .line 154
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->updateClock()V

    .line 155
    return-void
.end method

.method public onStop()V
    .registers 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->mTimeZoneFinder:Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;

    if-eqz v0, :cond_9

    .line 176
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->mTimeZoneFinder:Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->destory()Z

    .line 178
    :cond_9
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 179
    return-void
.end method

.method updateClock()V
    .registers 2

    .prologue
    .line 249
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->dualclockview:Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;

    if-eqz v0, :cond_b

    .line 250
    invoke-direct {p0}, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->drawClockBG()V

    .line 251
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->drawClock(Z)V

    .line 253
    :cond_b
    return-void
.end method

.method public updateDBCityCountry(Landroid/content/Context;Lcom/sec/android/widgetapp/dualclock/City;)V
    .registers 13
    .parameter "context"
    .parameter "city"

    .prologue
    const/4 v9, 0x0

    .line 627
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->getDBAll(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v3

    .line 628
    .local v3, cur:Landroid/database/Cursor;
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-nez v5, :cond_f

    .line 629
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 653
    :goto_e
    return-void

    .line 632
    :cond_f
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 641
    :goto_12
    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    if-nez v5, :cond_62

    .line 642
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/sec/android/widgetapp/dualclock/Const;->WC_COLUMNS:[Ljava/lang/String;

    aget-object v6, v6, v9

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 643
    .local v4, whereClause:Ljava/lang/String;
    const/4 v5, 0x5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 644
    .local v1, cityUnqID:I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v5}, Lcom/sec/android/widgetapp/dualclock/City;->findCity_objectByUniqueID(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v2

    .line 645
    .local v2, cityname:Ljava/lang/String;
    invoke-virtual {p2, v2}, Lcom/sec/android/widgetapp/dualclock/City;->findCity_objectByName(Ljava/lang/String;)Lcom/sec/android/widgetapp/dualclock/City$CityInfo;

    move-result-object v0

    .line 646
    .local v0, cityInfo:Lcom/sec/android/widgetapp/dualclock/City$CityInfo;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/sec/android/widgetapp/dualclock/DataContentProvider;->DATA_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/dualclock/City$CityInfo;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/dualclock/City$CityInfo;->getUniqueID()I

    move-result v8

    invoke-direct {p0, v7, v8}, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->getContentValues(Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v4, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 650
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_12

    .line 652
    .end local v0           #cityInfo:Lcom/sec/android/widgetapp/dualclock/City$CityInfo;
    .end local v1           #cityUnqID:I
    .end local v2           #cityname:Ljava/lang/String;
    .end local v4           #whereClause:Ljava/lang/String;
    :cond_62
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_e
.end method
