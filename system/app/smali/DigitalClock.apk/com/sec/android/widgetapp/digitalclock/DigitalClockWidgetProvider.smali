.class public Lcom/sec/android/widgetapp/digitalclock/DigitalClockWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "DigitalClockWidgetProvider.java"


# static fields
.field private static mbWidgetRunning:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 51
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/widgetapp/digitalclock/DigitalClockWidgetProvider;->mbWidgetRunning:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method private static drawAmPm(Landroid/content/Context;Landroid/widget/RemoteViews;Ljava/util/Date;Ljava/lang/String;Z)V
    .registers 14
    .parameter "context"
    .parameter "views"
    .parameter "date"
    .parameter "lancode"
    .parameter "b24HourFormat"

    .prologue
    const v8, 0x7f07000a

    const v7, 0x7f070009

    const/4 v6, 0x0

    const v5, 0x7f070008

    const/4 v4, 0x4

    .line 266
    if-eqz p4, :cond_14

    .line 267
    const v2, 0x7f070007

    invoke-virtual {p1, v2, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 308
    :goto_13
    return-void

    .line 270
    :cond_14
    const v2, 0x7f070007

    invoke-virtual {p1, v2, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 272
    const/4 v0, 0x0

    .line 273
    .local v0, bAm:Z
    invoke-virtual {p2}, Ljava/util/Date;->getHours()I

    move-result v2

    if-ltz v2, :cond_2a

    invoke-virtual {p2}, Ljava/util/Date;->getHours()I

    move-result v2

    const/16 v3, 0xc

    if-ge v2, v3, :cond_2a

    .line 274
    const/4 v0, 0x1

    .line 276
    :cond_2a
    const-string v2, "en"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 277
    invoke-virtual {p1, v5, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 278
    invoke-virtual {p1, v7, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 279
    invoke-virtual {p1, v8, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 281
    if-eqz v0, :cond_43

    .line 282
    const/high16 v2, 0x7f02

    invoke-virtual {p1, v5, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_13

    .line 284
    :cond_43
    const v2, 0x7f020019

    invoke-virtual {p1, v5, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_13

    .line 287
    :cond_4a
    const-string v2, "ko"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6a

    .line 288
    invoke-virtual {p1, v5, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 289
    invoke-virtual {p1, v7, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 290
    invoke-virtual {p1, v8, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 292
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "aaaa"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 293
    .local v1, sdf:Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v8, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_13

    .line 296
    .end local v1           #sdf:Ljava/text/SimpleDateFormat;
    :cond_6a
    invoke-virtual {p1, v5, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 297
    invoke-virtual {p1, v7, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 298
    invoke-virtual {p1, v8, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 300
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "aaaa"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 301
    .restart local v1       #sdf:Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v7, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_13
.end method

.method private static drawBg(Landroid/content/Context;Landroid/widget/RemoteViews;)V
    .registers 4
    .parameter "context"
    .parameter "views"

    .prologue
    .line 194
    const/high16 v0, 0x7f07

    const v1, 0x7f020001

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 195
    return-void
.end method

.method private static drawColon(Landroid/content/Context;Landroid/widget/RemoteViews;)V
    .registers 4
    .parameter "context"
    .parameter "views"

    .prologue
    .line 243
    const v0, 0x7f070004

    const v1, 0x7f020018

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 244
    return-void
.end method

.method private static drawDateText(Landroid/content/Context;Landroid/widget/RemoteViews;Ljava/util/Date;Ljava/lang/String;)V
    .registers 12
    .parameter "context"
    .parameter "views"
    .parameter "date"
    .parameter "lancode"

    .prologue
    .line 396
    const/4 v0, 0x0

    .line 397
    .local v0, bFirstMM:Z
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object v5

    .line 399
    .local v5, orders:[C
    const/4 v6, 0x0

    aget-char v6, v5, v6

    const/16 v7, 0x79

    if-ne v6, v7, :cond_5b

    .line 400
    const/4 v6, 0x1

    aget-char v6, v5, v6

    const/16 v7, 0x4d

    if-ne v6, v7, :cond_14

    .line 401
    const/4 v0, 0x1

    .line 410
    :cond_14
    :goto_14
    invoke-virtual {p2}, Ljava/util/Date;->getMonth()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    div-int/lit8 v3, v6, 0xa

    .line 411
    .local v3, mm1:I
    invoke-virtual {p2}, Ljava/util/Date;->getMonth()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    rem-int/lit8 v4, v6, 0xa

    .line 416
    .local v4, mm2:I
    invoke-virtual {p2}, Ljava/util/Date;->getDate()I

    move-result v6

    div-int/lit8 v1, v6, 0xa

    .line 417
    .local v1, dd1:I
    invoke-virtual {p2}, Ljava/util/Date;->getDate()I

    move-result v6

    rem-int/lit8 v2, v6, 0xa

    .line 420
    .local v2, dd2:I
    if-eqz v0, :cond_64

    .line 421
    const v6, 0x7f070011

    invoke-static {v3}, Lcom/sec/android/widgetapp/digitalclock/DigitalClockWidgetProvider;->getMonthNumberResourceId(I)I

    move-result v7

    invoke-virtual {p1, v6, v7}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 422
    const v6, 0x7f070012

    invoke-static {v4}, Lcom/sec/android/widgetapp/digitalclock/DigitalClockWidgetProvider;->getMonthNumberResourceId(I)I

    move-result v7

    invoke-virtual {p1, v6, v7}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 424
    const v6, 0x7f070014

    invoke-static {v1}, Lcom/sec/android/widgetapp/digitalclock/DigitalClockWidgetProvider;->getDateNumberResourceId(I)I

    move-result v7

    invoke-virtual {p1, v6, v7}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 425
    const v6, 0x7f070015

    invoke-static {v2}, Lcom/sec/android/widgetapp/digitalclock/DigitalClockWidgetProvider;->getDateNumberResourceId(I)I

    move-result v7

    invoke-virtual {p1, v6, v7}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 434
    :goto_5a
    return-void

    .line 404
    .end local v1           #dd1:I
    .end local v2           #dd2:I
    .end local v3           #mm1:I
    .end local v4           #mm2:I
    :cond_5b
    const/4 v6, 0x0

    aget-char v6, v5, v6

    const/16 v7, 0x4d

    if-ne v6, v7, :cond_14

    .line 405
    const/4 v0, 0x1

    goto :goto_14

    .line 428
    .restart local v1       #dd1:I
    .restart local v2       #dd2:I
    .restart local v3       #mm1:I
    .restart local v4       #mm2:I
    :cond_64
    const v6, 0x7f070011

    invoke-static {v1}, Lcom/sec/android/widgetapp/digitalclock/DigitalClockWidgetProvider;->getDateNumberResourceId(I)I

    move-result v7

    invoke-virtual {p1, v6, v7}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 429
    const v6, 0x7f070012

    invoke-static {v2}, Lcom/sec/android/widgetapp/digitalclock/DigitalClockWidgetProvider;->getDateNumberResourceId(I)I

    move-result v7

    invoke-virtual {p1, v6, v7}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 431
    const v6, 0x7f070014

    invoke-static {v3}, Lcom/sec/android/widgetapp/digitalclock/DigitalClockWidgetProvider;->getMonthNumberResourceId(I)I

    move-result v7

    invoke-virtual {p1, v6, v7}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 432
    const v6, 0x7f070015

    invoke-static {v4}, Lcom/sec/android/widgetapp/digitalclock/DigitalClockWidgetProvider;->getMonthNumberResourceId(I)I

    move-result v7

    invoke-virtual {p1, v6, v7}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_5a
.end method

.method private static drawDayText(Landroid/content/Context;Landroid/widget/RemoteViews;Ljava/util/Date;Ljava/lang/String;)V
    .registers 13
    .parameter "context"
    .parameter "views"
    .parameter "date"
    .parameter "lancode"

    .prologue
    const v8, 0x7f07000f

    const v7, 0x7f07000d

    const v6, 0x7f07000c

    const/4 v5, 0x0

    const/4 v4, 0x4

    .line 314
    const v3, 0x7f07000b

    invoke-virtual {p1, v3, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 316
    const-string v3, "en"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 317
    invoke-virtual {p1, v6, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 318
    const v3, 0x7f07000e

    invoke-virtual {p1, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 319
    invoke-virtual {p1, v7, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 320
    invoke-virtual {p1, v8, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 322
    invoke-virtual {p2}, Ljava/util/Date;->getDay()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/widgetapp/digitalclock/DigitalClockWidgetProvider;->getDayResourceId(I)I

    move-result v3

    invoke-virtual {p1, v6, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 389
    :goto_33
    return-void

    .line 324
    :cond_34
    const-string v3, "ko"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 325
    invoke-virtual {p1, v6, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 326
    const v3, 0x7f07000e

    invoke-virtual {p1, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 327
    invoke-virtual {p1, v7, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 328
    invoke-virtual {p1, v8, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 330
    const v3, 0x7f06000a

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 331
    .local v1, dayformat:Ljava/lang/String;
    invoke-static {v1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 332
    .local v2, df:Ljava/lang/CharSequence;
    invoke-virtual {p1, v8, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_33

    .line 335
    .end local v1           #dayformat:Ljava/lang/String;
    .end local v2           #df:Ljava/lang/CharSequence;
    :cond_5a
    invoke-virtual {p1, v6, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 336
    invoke-virtual {p1, v8, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 340
    invoke-virtual {p2}, Ljava/util/Date;->getDay()I

    move-result v3

    invoke-static {p0, v3}, Lcom/sec/android/widgetapp/digitalclock/DigitalClockWidgetProvider;->getDayResourceString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 341
    .local v0, day:Ljava/lang/String;
    invoke-virtual {p1, v7, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 342
    invoke-virtual {p1, v7, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_33
.end method

.method private static drawHour(Landroid/content/Context;Landroid/widget/RemoteViews;Ljava/util/Date;Z)V
    .registers 10
    .parameter "context"
    .parameter "views"
    .parameter "date"
    .parameter "b24HourFormat"

    .prologue
    const/16 v3, 0xc

    const/4 v5, 0x4

    const v4, 0x7f070002

    .line 203
    invoke-virtual {p2}, Ljava/util/Date;->getHours()I

    move-result v2

    .line 205
    .local v2, hour:I
    if-eqz p3, :cond_28

    .line 206
    div-int/lit8 v0, v2, 0xa

    .line 207
    .local v0, hh1:I
    rem-int/lit8 v1, v2, 0xa

    .line 208
    .local v1, hh2:I
    const v3, 0x7f070007

    invoke-virtual {p1, v3, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 227
    :goto_16
    if-nez p3, :cond_3f

    if-nez v0, :cond_3f

    .line 228
    invoke-virtual {p1, v4, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 236
    :goto_1d
    const v3, 0x7f070003

    invoke-static {v1}, Lcom/sec/android/widgetapp/digitalclock/DigitalClockWidgetProvider;->getClockNumberResourceId(I)I

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 237
    return-void

    .line 211
    .end local v0           #hh1:I
    .end local v1           #hh2:I
    :cond_28
    if-eqz v2, :cond_2c

    if-ne v2, v3, :cond_2f

    .line 212
    :cond_2c
    const/4 v0, 0x1

    .line 213
    .restart local v0       #hh1:I
    const/4 v1, 0x2

    .restart local v1       #hh2:I
    goto :goto_16

    .line 215
    .end local v0           #hh1:I
    .end local v1           #hh2:I
    :cond_2f
    if-lez v2, :cond_38

    if-ge v2, v3, :cond_38

    .line 216
    div-int/lit8 v0, v2, 0xa

    .line 217
    .restart local v0       #hh1:I
    rem-int/lit8 v1, v2, 0xa

    .restart local v1       #hh2:I
    goto :goto_16

    .line 220
    .end local v0           #hh1:I
    .end local v1           #hh2:I
    :cond_38
    add-int/lit8 v2, v2, -0xc

    .line 221
    div-int/lit8 v0, v2, 0xa

    .line 222
    .restart local v0       #hh1:I
    rem-int/lit8 v1, v2, 0xa

    .restart local v1       #hh2:I
    goto :goto_16

    .line 230
    :cond_3f
    invoke-static {v0}, Lcom/sec/android/widgetapp/digitalclock/DigitalClockWidgetProvider;->getClockNumberResourceId(I)I

    move-result v3

    invoke-virtual {p1, v4, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 231
    const/4 v3, 0x0

    invoke-virtual {p1, v4, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_1d
.end method

.method private static drawMinute(Landroid/content/Context;Landroid/widget/RemoteViews;Ljava/util/Date;)V
    .registers 9
    .parameter "context"
    .parameter "views"
    .parameter "date"

    .prologue
    .line 250
    invoke-virtual {p2}, Ljava/util/Date;->getMinutes()I

    move-result v0

    .line 253
    .local v0, minute:I
    div-int/lit8 v1, v0, 0xa

    .line 254
    .local v1, mm1:I
    rem-int/lit8 v2, v0, 0xa

    .line 256
    .local v2, mm2:I
    const-string v3, "DigitalClockAppWidget"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " : drawMinute mm1_ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "mm2_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/android/widgetapp/digitalclock/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    const v3, 0x7f070005

    invoke-static {v1}, Lcom/sec/android/widgetapp/digitalclock/DigitalClockWidgetProvider;->getClockNumberResourceId(I)I

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 259
    const v3, 0x7f070006

    invoke-static {v2}, Lcom/sec/android/widgetapp/digitalclock/DigitalClockWidgetProvider;->getClockNumberResourceId(I)I

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 260
    return-void
.end method

.method private static getClockNumberResourceId(I)I
    .registers 2
    .parameter "number"

    .prologue
    .line 469
    const v0, 0x7f02000e

    add-int/2addr v0, p0

    return v0
.end method

.method private static getDateNumberResourceId(I)I
    .registers 2
    .parameter "number"

    .prologue
    .line 505
    const v0, 0x7f020003

    add-int/2addr v0, p0

    return v0
.end method

.method private static getDayResourceId(I)I
    .registers 2
    .parameter "day"

    .prologue
    const v0, 0x7f02001e

    .line 475
    packed-switch p0, :pswitch_data_20

    .line 484
    :goto_6
    :pswitch_6
    return v0

    .line 477
    :pswitch_7
    const v0, 0x7f02001c

    goto :goto_6

    .line 478
    :pswitch_b
    const v0, 0x7f020020

    goto :goto_6

    .line 479
    :pswitch_f
    const v0, 0x7f020021

    goto :goto_6

    .line 480
    :pswitch_13
    const v0, 0x7f02001f

    goto :goto_6

    .line 481
    :pswitch_17
    const v0, 0x7f02001b

    goto :goto_6

    .line 482
    :pswitch_1b
    const v0, 0x7f02001d

    goto :goto_6

    .line 475
    nop

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_b
        :pswitch_f
        :pswitch_13
        :pswitch_17
        :pswitch_1b
    .end packed-switch
.end method

.method private static getDayResourceString(Landroid/content/Context;I)Ljava/lang/String;
    .registers 3
    .parameter "context"
    .parameter "day"

    .prologue
    const v0, 0x7f060003

    .line 490
    packed-switch p1, :pswitch_data_40

    .line 499
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    .line 491
    :pswitch_b
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 492
    :pswitch_10
    const v0, 0x7f060004

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 493
    :pswitch_18
    const v0, 0x7f060005

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 494
    :pswitch_20
    const v0, 0x7f060006

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 495
    :pswitch_28
    const v0, 0x7f060007

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 496
    :pswitch_30
    const v0, 0x7f060008

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 497
    :pswitch_38
    const v0, 0x7f060009

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 490
    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_b
        :pswitch_10
        :pswitch_18
        :pswitch_20
        :pswitch_28
        :pswitch_30
        :pswitch_38
    .end packed-switch
.end method

.method private static getMonthNumberResourceId(I)I
    .registers 2
    .parameter "number"

    .prologue
    .line 511
    const v0, 0x7f020003

    add-int/2addr v0, p0

    return v0
.end method

.method public static getWidgetRunning()Z
    .registers 1

    .prologue
    .line 120
    sget-boolean v0, Lcom/sec/android/widgetapp/digitalclock/DigitalClockWidgetProvider;->mbWidgetRunning:Z

    return v0
.end method

.method private isDigitalClockWidgetServiceRunning(Landroid/content/Context;)Z
    .registers 9
    .parameter "context"

    .prologue
    .line 517
    const/16 v0, 0x64

    .line 518
    .local v0, MAX_NUM:I
    const/4 v1, 0x0

    .line 521
    .local v1, found:Z
    const-string v5, "activity"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    .line 523
    .local v3, manager:Landroid/app/ActivityManager;
    invoke-virtual {v3, v0}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v4

    .line 524
    .local v4, service_list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 525
    .local v2, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    :cond_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 526
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v5, v5, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.sec.android.widgetapp.digitalclock.DigitalClockService"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 527
    const/4 v1, 0x1

    .line 531
    :cond_2e
    return v1
.end method

.method public static updateClock(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 138
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/sec/android/widgetapp/digitalclock/DigitalClockWidgetProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-virtual {p1, v0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    .line 143
    const-string v1, "DigitalClockAppWidget"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " : updateClock =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/digitalclock/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-static {p0, p1, v0}, Lcom/sec/android/widgetapp/digitalclock/DigitalClockWidgetProvider;->updateViews(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 145
    return-void
.end method

.method private static updateViews(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .registers 16
    .parameter "context"
    .parameter "aw"
    .parameter "widgetIds"

    .prologue
    const v12, 0x7f030002

    const/4 v11, 0x0

    .line 151
    const-string v9, "window"

    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/WindowManager;

    .line 152
    .local v8, wm:Landroid/view/WindowManager;
    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 154
    .local v2, display:Landroid/view/Display;
    const/4 v7, 0x0

    .line 155
    .local v7, views:Landroid/widget/RemoteViews;
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    .line 156
    .local v0, b24HourFormat:Z
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget-object v9, v9, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v9}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v10}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_92

    if-nez v0, :cond_92

    .line 157
    invoke-virtual {v2}, Landroid/view/Display;->getOrientation()I

    move-result v9

    if-eqz v9, :cond_85

    .line 160
    new-instance v7, Landroid/widget/RemoteViews;

    .end local v7           #views:Landroid/widget/RemoteViews;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9, v12}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 170
    .restart local v7       #views:Landroid/widget/RemoteViews;
    :goto_40
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 171
    .local v3, intent:Landroid/content/Intent;
    const-string v9, "com.sec.android.app.clockpackage"

    const-string v10, "com.sec.android.app.clockpackage.ClockPackage"

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    invoke-static {p0, v11, v3, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 173
    .local v6, pendingIntent:Landroid/app/PendingIntent;
    const/high16 v9, 0x7f07

    invoke-virtual {v7, v9, v6}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 175
    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-direct {v1, v9, v10}, Ljava/util/Date;-><init>(J)V

    .line 176
    .local v1, date:Ljava/util/Date;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget-object v5, v9, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 177
    .local v5, locale:Ljava/util/Locale;
    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    .line 179
    .local v4, lancode:Ljava/lang/String;
    invoke-static {p0, v7}, Lcom/sec/android/widgetapp/digitalclock/DigitalClockWidgetProvider;->drawBg(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 180
    invoke-static {p0, v7, v1, v0}, Lcom/sec/android/widgetapp/digitalclock/DigitalClockWidgetProvider;->drawHour(Landroid/content/Context;Landroid/widget/RemoteViews;Ljava/util/Date;Z)V

    .line 181
    invoke-static {p0, v7}, Lcom/sec/android/widgetapp/digitalclock/DigitalClockWidgetProvider;->drawColon(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 182
    invoke-static {p0, v7, v1}, Lcom/sec/android/widgetapp/digitalclock/DigitalClockWidgetProvider;->drawMinute(Landroid/content/Context;Landroid/widget/RemoteViews;Ljava/util/Date;)V

    .line 183
    invoke-static {p0, v7, v1, v4, v0}, Lcom/sec/android/widgetapp/digitalclock/DigitalClockWidgetProvider;->drawAmPm(Landroid/content/Context;Landroid/widget/RemoteViews;Ljava/util/Date;Ljava/lang/String;Z)V

    .line 184
    invoke-static {p0, v7, v1, v4}, Lcom/sec/android/widgetapp/digitalclock/DigitalClockWidgetProvider;->drawDayText(Landroid/content/Context;Landroid/widget/RemoteViews;Ljava/util/Date;Ljava/lang/String;)V

    .line 185
    invoke-static {p0, v7, v1, v4}, Lcom/sec/android/widgetapp/digitalclock/DigitalClockWidgetProvider;->drawDateText(Landroid/content/Context;Landroid/widget/RemoteViews;Ljava/util/Date;Ljava/lang/String;)V

    .line 187
    invoke-static {p1, p2, v7}, Lcom/sec/android/widgetapp/digitalclock/DigitalClockWidgetProvider;->updateWidget(Landroid/appwidget/AppWidgetManager;[ILandroid/widget/RemoteViews;)V

    .line 188
    return-void

    .line 158
    .end local v1           #date:Ljava/util/Date;
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #lancode:Ljava/lang/String;
    .end local v5           #locale:Ljava/util/Locale;
    .end local v6           #pendingIntent:Landroid/app/PendingIntent;
    :cond_85
    new-instance v7, Landroid/widget/RemoteViews;

    .end local v7           #views:Landroid/widget/RemoteViews;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const v10, 0x7f030001

    invoke-direct {v7, v9, v10}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .restart local v7       #views:Landroid/widget/RemoteViews;
    goto :goto_40

    .line 162
    :cond_92
    invoke-virtual {v2}, Landroid/view/Display;->getOrientation()I

    move-result v9

    if-eqz v9, :cond_a2

    .line 165
    new-instance v7, Landroid/widget/RemoteViews;

    .end local v7           #views:Landroid/widget/RemoteViews;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9, v12}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .restart local v7       #views:Landroid/widget/RemoteViews;
    goto :goto_40

    .line 163
    :cond_a2
    new-instance v7, Landroid/widget/RemoteViews;

    .end local v7           #views:Landroid/widget/RemoteViews;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const/high16 v10, 0x7f03

    invoke-direct {v7, v9, v10}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .restart local v7       #views:Landroid/widget/RemoteViews;
    goto :goto_40
.end method

.method private static updateWidget(Landroid/appwidget/AppWidgetManager;[ILandroid/widget/RemoteViews;)V
    .registers 5
    .parameter "aw"
    .parameter "widgetIds"
    .parameter "views"

    .prologue
    .line 126
    if-eqz p0, :cond_10

    .line 127
    if-eqz p1, :cond_10

    .line 128
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    array-length v1, p1

    if-ge v0, v1, :cond_10

    .line 129
    aget v1, p1, v0

    invoke-virtual {p0, v1, p2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 128
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 133
    .end local v0           #i:I
    :cond_10
    return-void
.end method


# virtual methods
.method public onDeleted(Landroid/content/Context;[I)V
    .registers 5
    .parameter "context"
    .parameter "appWidgetIds"

    .prologue
    .line 81
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onDeleted(Landroid/content/Context;[I)V

    .line 82
    const-string v0, "DigitalClockAppWidget"

    const-string v1, "onDeleted"

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/digitalclock/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public onDisabled(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 88
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onDisabled(Landroid/content/Context;)V

    .line 90
    const-string v0, "DigitalClockAppWidget"

    const-string v1, "onDisabled"

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/digitalclock/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/widgetapp/digitalclock/DigitalClockWidgetProvider;->mbWidgetRunning:Z

    .line 93
    new-instance v0, Landroid/content/Intent;

    const-string v1, "digitalclock.action.stopservice"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 94
    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onEnabled(Landroid/content/Context;)V

    .line 59
    const-string v0, "DigitalClockAppWidget"

    const-string v1, "onEnabled"

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/digitalclock/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/widgetapp/digitalclock/DigitalClockWidgetProvider;->mbWidgetRunning:Z

    .line 61
    new-instance v0, Landroid/content/Intent;

    const-string v1, "digitalclock.action.startservice"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 62
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 100
    if-nez p2, :cond_3

    .line 113
    :goto_2
    return-void

    .line 102
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sec.android.intent.action.HOME_RESUME"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 103
    const-string v0, "DigitalClockAppWidget"

    const-string v1, "onReceive : ACTION_HOME_RESUME is called!!"

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/digitalclock/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/android/widgetapp/digitalclock/DigitalClockWidgetProvider;->updateClock(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;)V

    .line 107
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/digitalclock/DigitalClockWidgetProvider;->isDigitalClockWidgetServiceRunning(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 108
    new-instance v0, Landroid/content/Intent;

    const-string v1, "digitalclock.action.startservice"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 112
    :cond_2d
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_2
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .registers 6
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    .line 67
    invoke-super {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 69
    const-string v0, "DigitalClockAppWidget"

    const-string v1, "onUpdate"

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/digitalclock/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/android/widgetapp/digitalclock/DigitalClockWidgetProvider;->updateClock(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;)V

    .line 73
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/digitalclock/DigitalClockWidgetProvider;->isDigitalClockWidgetServiceRunning(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 74
    new-instance v0, Landroid/content/Intent;

    const-string v1, "digitalclock.action.startservice"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 76
    :cond_21
    return-void
.end method
