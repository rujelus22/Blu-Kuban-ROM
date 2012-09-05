.class public Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;
.super Landroid/app/Activity;
.source "AnalogClockActivity.java"

# interfaces
.implements Lcom/sec/android/touchwiz/appwidget/IWidgetObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity$AnalogClockResManager;
    }
.end annotation


# instance fields
.field protected final TAG:Ljava/lang/String;

.field private mClockResManager:Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity$AnalogClockResManager;

.field private mDensity:F

.field private mHourImageView:Landroid/widget/ImageView;

.field private mMinImageView:Landroid/widget/ImageView;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSecImageView:Landroid/widget/ImageView;

.field private mSecond:I

.field private mStandardMilliSec:I

.field private mTheme:Ljava/lang/String;

.field private mTimeHandler:Landroid/os/Handler;

.field mTimeRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;->TAG:Ljava/lang/String;

    .line 279
    new-instance v0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity$2;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity$2;-><init>(Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;->mTimeRunnable:Ljava/lang/Runnable;

    .line 404
    new-instance v0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity$3;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity$3;-><init>(Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 423
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;->drawTime()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;->getDelayTime()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$200(Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;->destroyTimeHandler()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;->createTimeHandler()V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;->mTimeHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private createTimeHandler()V
    .registers 5

    .prologue
    .line 177
    iget-object v0, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;->TAG:Ljava/lang/String;

    const-string v1, "createTimeHandler  "

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/analogclock/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-direct {p0}, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;->initializeTime()V

    .line 182
    invoke-direct {p0}, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;->drawTime()V

    .line 184
    iget-object v0, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;->mTimeHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1b

    .line 185
    iget-object v0, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;->mTimeHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;->mTimeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 186
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;->mTimeHandler:Landroid/os/Handler;

    .line 189
    :cond_1b
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;->mTimeHandler:Landroid/os/Handler;

    .line 192
    iget-object v0, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;->mTimeHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;->mTimeRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x384

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 193
    return-void
.end method

.method private destroyTimeHandler()V
    .registers 3

    .prologue
    .line 200
    iget-object v0, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;->TAG:Ljava/lang/String;

    const-string v1, "destroyTimeHandler "

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/analogclock/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;->mTimeHandler:Landroid/os/Handler;

    if-eqz v0, :cond_15

    .line 203
    iget-object v0, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;->mTimeHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;->mTimeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 204
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;->mTimeHandler:Landroid/os/Handler;

    .line 206
    :cond_15
    return-void
.end method

.method private drawTime()V
    .registers 6

    .prologue
    .line 309
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    add-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 312
    .local v0, date:Ljava/util/Date;
    iget-object v1, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;->mTimeHandler:Landroid/os/Handler;

    if-eqz v1, :cond_18

    invoke-virtual {v0}, Ljava/util/Date;->getSeconds()I

    move-result v1

    rem-int/lit8 v1, v1, 0x3c

    if-nez v1, :cond_2e

    .line 314
    :cond_18
    iget-object v1, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;->mHourImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;->mClockResManager:Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity$AnalogClockResManager;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity$AnalogClockResManager;->getHourResourceId()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;->getHourBitmapDrawable(Ljava/util/Date;I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 316
    iget-object v1, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;->mHourImageView:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 320
    :cond_2e
    iget-object v1, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;->mTimeHandler:Landroid/os/Handler;

    if-eqz v1, :cond_3a

    invoke-virtual {v0}, Ljava/util/Date;->getSeconds()I

    move-result v1

    rem-int/lit8 v1, v1, 0xa

    if-nez v1, :cond_50

    .line 322
    :cond_3a
    iget-object v1, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;->mMinImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;->mClockResManager:Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity$AnalogClockResManager;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity$AnalogClockResManager;->getMinResourceId()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;->getMinuteBitmapDrawable(Ljava/util/Date;I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 323
    iget-object v1, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;->mMinImageView:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 328
    :cond_50
    iget-object v1, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;->mSecImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;->mClockResManager:Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity$AnalogClockResManager;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity$AnalogClockResManager;->getSecResourceId()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;->getSecondBitmapDrawable(Ljava/util/Date;I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 329
    iget-object v1, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;->mSecImageView:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 331
    return-void
.end method

.method private getDelayTime()J
    .registers 13

    .prologue
    const/16 v11, 0x3c

    const/16 v8, 0x3b

    const-wide/16 v9, 0x3e8

    .line 226
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 229
    .local v0, calendar:Ljava/util/Calendar;
    const/16 v7, 0xd

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    add-int/lit8 v6, v7, 0x1

    .line 230
    .local v6, sec:I
    if-ne v6, v11, :cond_15

    .line 231
    const/4 v6, 0x0

    .line 232
    :cond_15
    const/16 v7, 0xe

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 236
    .local v5, millisec:I
    iget v7, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;->mSecond:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;->mSecond:I

    .line 237
    iget v7, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;->mSecond:I

    if-ne v7, v11, :cond_28

    .line 238
    const/4 v7, 0x0

    iput v7, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;->mSecond:I

    .line 243
    :cond_28
    iget v7, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;->mSecond:I

    if-ne v7, v6, :cond_3f

    .line 244
    iget v7, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;->mStandardMilliSec:I

    if-le v7, v5, :cond_37

    .line 245
    iget v7, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;->mStandardMilliSec:I

    sub-int/2addr v7, v5

    add-int/lit16 v7, v7, 0x3e8

    int-to-long v1, v7

    .line 272
    .local v1, delayTime:J
    :goto_36
    return-wide v1

    .line 248
    .end local v1           #delayTime:J
    :cond_37
    iget v7, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;->mStandardMilliSec:I

    sub-int v7, v5, v7

    rsub-int v7, v7, 0x3e8

    int-to-long v1, v7

    .restart local v1       #delayTime:J
    goto :goto_36

    .line 251
    .end local v1           #delayTime:J
    :cond_3f
    iget v7, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;->mSecond:I

    if-le v7, v6, :cond_5b

    .line 252
    iget v7, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;->mSecond:I

    if-ne v7, v8, :cond_52

    if-nez v6, :cond_52

    .line 253
    add-int/lit16 v7, v5, 0x3e8

    iget v8, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;->mStandardMilliSec:I

    sub-int/2addr v7, v8

    int-to-long v3, v7

    .line 254
    .local v3, interval:J
    sub-long v1, v9, v3

    .line 255
    .restart local v1       #delayTime:J
    goto :goto_36

    .line 257
    .end local v1           #delayTime:J
    .end local v3           #interval:J
    :cond_52
    iget v7, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;->mStandardMilliSec:I

    add-int/lit16 v7, v7, 0x3e8

    sub-int/2addr v7, v5

    int-to-long v3, v7

    .line 258
    .restart local v3       #interval:J
    add-long v1, v9, v3

    .line 259
    .restart local v1       #delayTime:J
    goto :goto_36

    .line 262
    .end local v1           #delayTime:J
    .end local v3           #interval:J
    :cond_5b
    iget v7, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;->mSecond:I

    if-nez v7, :cond_6a

    if-ne v6, v8, :cond_6a

    .line 263
    iget v7, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;->mStandardMilliSec:I

    add-int/lit16 v7, v7, 0x3e8

    sub-int/2addr v7, v5

    int-to-long v3, v7

    .line 264
    .restart local v3       #interval:J
    add-long v1, v9, v3

    .line 265
    .restart local v1       #delayTime:J
    goto :goto_36

    .line 266
    .end local v1           #delayTime:J
    .end local v3           #interval:J
    :cond_6a
    add-int/lit16 v7, v5, 0x3e8

    iget v8, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;->mStandardMilliSec:I

    sub-int/2addr v7, v8

    int-to-long v3, v7

    .line 267
    .restart local v3       #interval:J
    sub-long v1, v9, v3

    .restart local v1       #delayTime:J
    goto :goto_36
.end method

.method private getHourBitmapDrawable(Ljava/util/Date;I)Landroid/graphics/drawable/BitmapDrawable;
    .registers 13
    .parameter "date"
    .parameter "rscId"

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 338
    invoke-virtual {p1}, Ljava/util/Date;->getHours()I

    move-result v2

    mul-int/lit8 v2, v2, 0x1e

    int-to-float v2, v2

    invoke-virtual {p1}, Ljava/util/Date;->getMinutes()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float v8, v2, v3

    .line 340
    .local v8, degrees:F
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 343
    .local v0, srcBmp:Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 345
    .local v5, matrix:Landroid/graphics/Matrix;
    iget v2, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;->mDensity:F

    iget v3, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;->mDensity:F

    invoke-virtual {v5, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 346
    invoke-virtual {v5, v8}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 349
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 351
    .local v9, dstBmp:Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v7, v9}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 352
    .local v7, bd:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v7, v6}, Landroid/graphics/drawable/BitmapDrawable;->setAntiAlias(Z)V

    .line 353
    return-object v7
.end method

.method private getMinuteBitmapDrawable(Ljava/util/Date;I)Landroid/graphics/drawable/BitmapDrawable;
    .registers 13
    .parameter "date"
    .parameter "rscId"

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 361
    invoke-virtual {p1}, Ljava/util/Date;->getMinutes()I

    move-result v2

    mul-int/lit8 v2, v2, 0x6

    int-to-float v2, v2

    invoke-virtual {p1}, Ljava/util/Date;->getSeconds()I

    move-result v3

    div-int/lit8 v3, v3, 0xa

    int-to-float v3, v3

    add-float v8, v2, v3

    .line 363
    .local v8, degrees:F
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 365
    .local v0, srcBmp:Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 366
    .local v5, matrix:Landroid/graphics/Matrix;
    iget v2, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;->mDensity:F

    iget v3, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;->mDensity:F

    invoke-virtual {v5, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 367
    invoke-virtual {v5, v8}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 369
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 371
    .local v9, dstBmp:Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v7, v9}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 372
    .local v7, bd:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v7, v6}, Landroid/graphics/drawable/BitmapDrawable;->setAntiAlias(Z)V

    .line 377
    return-object v7
.end method

.method private getSecondBitmapDrawable(Ljava/util/Date;I)Landroid/graphics/drawable/BitmapDrawable;
    .registers 13
    .parameter "date"
    .parameter "rscId"

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 386
    invoke-virtual {p1}, Ljava/util/Date;->getSeconds()I

    move-result v2

    mul-int/lit8 v2, v2, 0x6

    int-to-float v8, v2

    .line 388
    .local v8, degrees:F
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 390
    .local v0, srcBmp:Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 391
    .local v5, matrix:Landroid/graphics/Matrix;
    iget v2, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;->mDensity:F

    iget v3, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;->mDensity:F

    invoke-virtual {v5, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 392
    invoke-virtual {v5, v8}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 394
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 396
    .local v9, dstBmp:Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v7, v9}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 397
    .local v7, bd:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v7, v6}, Landroid/graphics/drawable/BitmapDrawable;->setAntiAlias(Z)V

    .line 398
    return-object v7
.end method

.method private initializeTime()V
    .registers 4

    .prologue
    .line 213
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 216
    .local v0, calendar:Ljava/util/Calendar;
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;->mSecond:I

    .line 217
    iget v1, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;->mSecond:I

    const/16 v2, 0x3c

    if-ne v1, v2, :cond_17

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;->mSecond:I

    .line 218
    :cond_17
    const/16 v1, 0x320

    iput v1, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;->mStandardMilliSec:I

    .line 219
    return-void
.end method

.method private setLayout()V
    .registers 4

    .prologue
    .line 149
    new-instance v1, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity$AnalogClockResManager;

    iget-object v2, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;->mTheme:Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity$AnalogClockResManager;-><init>(Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;->mClockResManager:Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity$AnalogClockResManager;

    .line 150
    iget-object v1, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;->mClockResManager:Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity$AnalogClockResManager;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity$AnalogClockResManager;->getLayoutId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;->setContentView(I)V

    .line 152
    iget-object v1, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;->mClockResManager:Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity$AnalogClockResManager;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity$AnalogClockResManager;->getLayoutViewId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 153
    .local v0, layout:Landroid/widget/LinearLayout;
    new-instance v1, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity$1;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity$1;-><init>(Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    iget-object v1, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;->mClockResManager:Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity$AnalogClockResManager;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity$AnalogClockResManager;->getHourImageViewId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;->mHourImageView:Landroid/widget/ImageView;

    .line 167
    iget-object v1, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;->mClockResManager:Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity$AnalogClockResManager;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity$AnalogClockResManager;->getMinImageViewId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;->mMinImageView:Landroid/widget/ImageView;

    .line 168
    iget-object v1, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;->mClockResManager:Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity$AnalogClockResManager;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity$AnalogClockResManager;->getSecImageViewId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;->mSecImageView:Landroid/widget/ImageView;

    .line 169
    return-void
.end method


# virtual methods
.method public fireOnPause()V
    .registers 1

    .prologue
    .line 137
    return-void
.end method

.method public fireOnResume()V
    .registers 1

    .prologue
    .line 143
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .parameter "newConfig"

    .prologue
    .line 124
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 125
    iget-object v0, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;->TAG:Ljava/lang/String;

    const-string v1, "onConfigurationChanged...."

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/analogclock/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-direct {p0}, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;->destroyTimeHandler()V

    .line 128
    invoke-direct {p0}, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;->setLayout()V

    .line 129
    invoke-direct {p0}, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;->createTimeHandler()V

    .line 131
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "bundle"

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.samsung.sec.android.SAMSUNG_WIDGET.themename"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;->mTheme:Ljava/lang/String;

    .line 72
    iget-object v0, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "##################  onCreate : mTheme = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;->mTheme:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/analogclock/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;->mTimeHandler:Landroid/os/Handler;

    .line 75
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;->mDensity:F

    .line 77
    invoke-direct {p0}, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;->setLayout()V

    .line 78
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 116
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 117
    iget-object v0, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/analogclock/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 102
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 103
    iget-object v0, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;->TAG:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/analogclock/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-direct {p0}, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;->destroyTimeHandler()V

    .line 110
    return-void
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 83
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 91
    iget-object v0, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;->TAG:Ljava/lang/String;

    const-string v1, "##################  onResume"

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/analogclock/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-direct {p0}, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;->createTimeHandler()V

    .line 96
    return-void
.end method
