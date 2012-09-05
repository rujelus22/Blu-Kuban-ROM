.class Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockEngine;
.super Landroid/service/wallpaper/WallpaperService$Engine;
.source "PolarClockWallpaper.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wallpaper/polarclock/PolarClockWallpaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ClockEngine"
.end annotation


# instance fields
.field private mCalendar:Landroid/text/format/Time;

.field private final mDrawClock:Ljava/lang/Runnable;

.field private mOffsetX:F

.field private final mPaint:Landroid/graphics/Paint;

.field private mPalette:Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockPalette;

.field private final mPalettes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockPalette;",
            ">;"
        }
    .end annotation
.end field

.field private mPrefs:Landroid/content/SharedPreferences;

.field private final mRect:Landroid/graphics/RectF;

.field private mShowSeconds:Z

.field private mVariableLineWidth:Z

.field private mVisible:Z

.field private final mWatcher:Landroid/content/BroadcastReceiver;

.field private mWatcherRegistered:Z

.field final synthetic this$0:Lcom/android/wallpaper/polarclock/PolarClockWallpaper;


# direct methods
.method constructor <init>(Lcom/android/wallpaper/polarclock/PolarClockWallpaper;)V
    .registers 8
    .parameter

    .prologue
    .line 323
    iput-object p1, p0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockEngine;->this$0:Lcom/android/wallpaper/polarclock/PolarClockWallpaper;

    invoke-direct {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;-><init>(Landroid/service/wallpaper/WallpaperService;)V

    .line 293
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockEngine;->mPalettes:Ljava/util/HashMap;

    .line 303
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockEngine;->mPaint:Landroid/graphics/Paint;

    .line 304
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, p0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockEngine;->mRect:Landroid/graphics/RectF;

    .line 308
    new-instance v4, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockEngine$1;

    invoke-direct {v4, p0}, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockEngine$1;-><init>(Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockEngine;)V

    iput-object v4, p0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockEngine;->mWatcher:Landroid/content/BroadcastReceiver;

    .line 316
    new-instance v4, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockEngine$2;

    invoke-direct {v4, p0}, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockEngine$2;-><init>(Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockEngine;)V

    iput-object v4, p0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockEngine;->mDrawClock:Ljava/lang/Runnable;

    .line 324
    invoke-virtual {p1}, Lcom/android/wallpaper/polarclock/PolarClockWallpaper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f030005

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    .line 326
    .local v3, xrp:Landroid/content/res/XmlResourceParser;
    :try_start_33
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v2

    .line 327
    .local v2, what:I
    :goto_37
    const/4 v4, 0x1

    if-eq v2, v4, :cond_61

    .line 328
    const/4 v4, 0x2

    if-ne v2, v4, :cond_5c

    .line 329
    const-string v4, "palette"

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5c

    .line 330
    invoke-static {v3}, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockPalette;->parseXmlPaletteTag(Landroid/content/res/XmlResourceParser;)Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockPalette;

    move-result-object v1

    .line 331
    .local v1, pal:Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockPalette;
    invoke-virtual {v1}, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockPalette;->getId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5c

    .line 332
    iget-object v4, p0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockEngine;->mPalettes:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockPalette;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    .end local v1           #pal:Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockPalette;
    :cond_5c
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_5f
    .catchall {:try_start_33 .. :try_end_5f} :catchall_83
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_5f} :catch_6b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_33 .. :try_end_5f} :catch_77

    move-result v2

    goto :goto_37

    .line 343
    :cond_61
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    .line 346
    .end local v2           #what:I
    :goto_64
    invoke-static {}, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$CyclingClockPalette;->getFallback()Lcom/android/wallpaper/polarclock/PolarClockWallpaper$CyclingClockPalette;

    move-result-object v4

    iput-object v4, p0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockEngine;->mPalette:Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockPalette;

    .line 347
    return-void

    .line 338
    :catch_6b
    move-exception v0

    .line 339
    .local v0, e:Ljava/io/IOException;
    :try_start_6c
    const-string v4, "PolarClock"

    const-string v5, "An error occured during wallpaper configuration:"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_73
    .catchall {:try_start_6c .. :try_end_73} :catchall_83

    .line 343
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_64

    .line 340
    .end local v0           #e:Ljava/io/IOException;
    :catch_77
    move-exception v0

    .line 341
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_78
    const-string v4, "PolarClock"

    const-string v5, "An error occured during wallpaper configuration:"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7f
    .catchall {:try_start_78 .. :try_end_7f} :catchall_83

    .line 343
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_64

    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_83
    move-exception v4

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    throw v4
.end method

.method static synthetic access$002(Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockEngine;Landroid/text/format/Time;)Landroid/text/format/Time;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 283
    iput-object p1, p0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockEngine;->mCalendar:Landroid/text/format/Time;

    return-object p1
.end method


# virtual methods
.method drawFrame()V
    .registers 23

    .prologue
    .line 460
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockEngine;->mPalette:Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockPalette;

    if-nez v4, :cond_e

    .line 461
    const-string v4, "PolarClockWallpaper"

    const-string v5, "no palette?!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    :cond_d
    :goto_d
    return-void

    .line 465
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockEngine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v12

    .line 466
    .local v12, holder:Landroid/view/SurfaceHolder;
    invoke-interface {v12}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v10

    .line 467
    .local v10, frame:Landroid/graphics/Rect;
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v19

    .line 468
    .local v19, width:I
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v11

    .line 470
    .local v11, height:I
    const/4 v2, 0x0

    .line 472
    .local v2, c:Landroid/graphics/Canvas;
    :try_start_1f
    invoke-interface {v12}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v2

    .line 473
    if-eqz v2, :cond_1be

    .line 474
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockEngine;->mCalendar:Landroid/text/format/Time;

    .line 475
    .local v9, calendar:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockEngine;->mPaint:Landroid/graphics/Paint;

    .line 477
    .local v7, paint:Landroid/graphics/Paint;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 478
    .local v14, millis:J
    invoke-virtual {v9, v14, v15}, Landroid/text/format/Time;->set(J)V

    .line 479
    const/4 v4, 0x0

    invoke-virtual {v9, v4}, Landroid/text/format/Time;->normalize(Z)J

    .line 481
    div-int/lit8 v16, v19, 0x2

    .line 482
    .local v16, s:I
    div-int/lit8 v18, v11, 0x2

    .line 484
    .local v18, t:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockEngine;->mPalette:Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockPalette;

    invoke-virtual {v4}, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockPalette;->getBackgroundColor()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 486
    move/from16 v0, v16

    int-to-float v4, v0

    move/from16 v0, v16

    int-to-float v5, v0

    move/from16 v0, v16

    neg-int v6, v0

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockEngine;->mOffsetX:F

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-static {v5, v6, v0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v5

    add-float/2addr v4, v5

    move/from16 v0, v18

    int-to-float v5, v0

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 487
    const/high16 v4, -0x3d4c

    invoke-virtual {v2, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 488
    move/from16 v0, v19

    if-ge v11, v0, :cond_76

    .line 489
    const v4, 0x3f666666

    const v5, 0x3f666666

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Canvas;->scale(FF)V

    .line 492
    :cond_76
    move/from16 v0, v19

    invoke-static {v0, v11}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x3f00

    mul-float/2addr v4, v5

    const/high16 v5, 0x41c0

    sub-float v17, v4, v5

    .line 493
    .local v17, size:F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockEngine;->mRect:Landroid/graphics/RectF;

    .line 494
    .local v3, rect:Landroid/graphics/RectF;
    move/from16 v0, v17

    neg-float v4, v0

    move/from16 v0, v17

    neg-float v5, v0

    move/from16 v0, v17

    move/from16 v1, v17

    invoke-virtual {v3, v4, v5, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 497
    const/high16 v13, 0x41c0

    .line 499
    .local v13, lastRingThickness:F
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockEngine;->mShowSeconds:Z

    if-eqz v4, :cond_c6

    .line 501
    const-wide/32 v4, 0xea60

    rem-long v4, v14, v4

    long-to-float v4, v4

    const v5, 0x476a6000

    div-float v8, v4, v5

    .line 503
    .local v8, angle:F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockEngine;->mPalette:Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockPalette;

    invoke-virtual {v4, v8}, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockPalette;->getSecondColor(F)I

    move-result v4

    invoke-virtual {v7, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 505
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockEngine;->mVariableLineWidth:Z

    if-eqz v4, :cond_be

    .line 506
    const/high16 v13, 0x4100

    .line 507
    invoke-virtual {v7, v13}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 509
    :cond_be
    const/4 v4, 0x0

    const/high16 v5, 0x43b4

    mul-float/2addr v5, v8

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 513
    .end local v8           #angle:F
    :cond_c6
    const/high16 v4, 0x4160

    add-float/2addr v4, v13

    sub-float v17, v17, v4

    .line 514
    move/from16 v0, v17

    neg-float v4, v0

    move/from16 v0, v17

    neg-float v5, v0

    move/from16 v0, v17

    move/from16 v1, v17

    invoke-virtual {v3, v4, v5, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 516
    iget v4, v9, Landroid/text/format/Time;->minute:I

    int-to-float v4, v4

    const/high16 v5, 0x4270

    mul-float/2addr v4, v5

    iget v5, v9, Landroid/text/format/Time;->second:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    const/high16 v5, 0x4561

    rem-float/2addr v4, v5

    const/high16 v5, 0x4561

    div-float v8, v4, v5

    .line 517
    .restart local v8       #angle:F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockEngine;->mPalette:Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockPalette;

    invoke-virtual {v4, v8}, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockPalette;->getMinuteColor(F)I

    move-result v4

    invoke-virtual {v7, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 519
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockEngine;->mVariableLineWidth:Z

    if-eqz v4, :cond_ff

    .line 520
    const/high16 v13, 0x4180

    .line 521
    invoke-virtual {v7, v13}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 523
    :cond_ff
    const/4 v4, 0x0

    const/high16 v5, 0x43b4

    mul-float/2addr v5, v8

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 526
    const/high16 v4, 0x4160

    add-float/2addr v4, v13

    sub-float v17, v17, v4

    .line 527
    move/from16 v0, v17

    neg-float v4, v0

    move/from16 v0, v17

    neg-float v5, v0

    move/from16 v0, v17

    move/from16 v1, v17

    invoke-virtual {v3, v4, v5, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 529
    iget v4, v9, Landroid/text/format/Time;->hour:I

    int-to-float v4, v4

    const/high16 v5, 0x4270

    mul-float/2addr v4, v5

    iget v5, v9, Landroid/text/format/Time;->minute:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    const/high16 v5, 0x44b4

    rem-float/2addr v4, v5

    const/high16 v5, 0x44b4

    div-float v8, v4, v5

    .line 530
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockEngine;->mPalette:Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockPalette;

    invoke-virtual {v4, v8}, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockPalette;->getHourColor(F)I

    move-result v4

    invoke-virtual {v7, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 532
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockEngine;->mVariableLineWidth:Z

    if-eqz v4, :cond_140

    .line 533
    const/high16 v13, 0x4200

    .line 534
    invoke-virtual {v7, v13}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 536
    :cond_140
    const/4 v4, 0x0

    const/high16 v5, 0x43b4

    mul-float/2addr v5, v8

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 539
    const/high16 v4, 0x4218

    add-float/2addr v4, v13

    sub-float v17, v17, v4

    .line 540
    move/from16 v0, v17

    neg-float v4, v0

    move/from16 v0, v17

    neg-float v5, v0

    move/from16 v0, v17

    move/from16 v1, v17

    invoke-virtual {v3, v4, v5, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 542
    iget v4, v9, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    const/4 v5, 0x4

    invoke-virtual {v9, v5}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    int-to-float v5, v5

    div-float v8, v4, v5

    .line 544
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockEngine;->mPalette:Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockPalette;

    invoke-virtual {v4, v8}, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockPalette;->getDayColor(F)I

    move-result v4

    invoke-virtual {v7, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 546
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockEngine;->mVariableLineWidth:Z

    if-eqz v4, :cond_17f

    .line 547
    const/high16 v13, 0x4180

    .line 548
    invoke-virtual {v7, v13}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 550
    :cond_17f
    const/4 v4, 0x0

    const/high16 v5, 0x43b4

    mul-float/2addr v5, v8

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 553
    const/high16 v4, 0x4160

    add-float/2addr v4, v13

    sub-float v17, v17, v4

    .line 554
    move/from16 v0, v17

    neg-float v4, v0

    move/from16 v0, v17

    neg-float v5, v0

    move/from16 v0, v17

    move/from16 v1, v17

    invoke-virtual {v3, v4, v5, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 556
    iget v4, v9, Landroid/text/format/Time;->month:I

    int-to-float v4, v4

    const/high16 v5, 0x4130

    div-float v8, v4, v5

    .line 558
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockEngine;->mPalette:Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockPalette;

    invoke-virtual {v4, v8}, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockPalette;->getMonthColor(F)I

    move-result v4

    invoke-virtual {v7, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 560
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockEngine;->mVariableLineWidth:Z

    if-eqz v4, :cond_1b6

    .line 561
    const/high16 v13, 0x4200

    .line 562
    invoke-virtual {v7, v13}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 564
    :cond_1b6
    const/4 v4, 0x0

    const/high16 v5, 0x43b4

    mul-float/2addr v5, v8

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V
    :try_end_1be
    .catchall {:try_start_1f .. :try_end_1be} :catchall_1f3

    .line 567
    .end local v3           #rect:Landroid/graphics/RectF;
    .end local v7           #paint:Landroid/graphics/Paint;
    .end local v8           #angle:F
    .end local v9           #calendar:Landroid/text/format/Time;
    .end local v13           #lastRingThickness:F
    .end local v14           #millis:J
    .end local v16           #s:I
    .end local v17           #size:F
    .end local v18           #t:I
    :cond_1be
    if-eqz v2, :cond_1c3

    invoke-interface {v12, v2}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 570
    :cond_1c3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockEngine;->this$0:Lcom/android/wallpaper/polarclock/PolarClockWallpaper;

    #getter for: Lcom/android/wallpaper/polarclock/PolarClockWallpaper;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/wallpaper/polarclock/PolarClockWallpaper;->access$100(Lcom/android/wallpaper/polarclock/PolarClockWallpaper;)Landroid/os/Handler;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockEngine;->mDrawClock:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 571
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockEngine;->mVisible:Z

    if-eqz v4, :cond_d

    .line 572
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockEngine;->mShowSeconds:Z

    if-eqz v4, :cond_1fa

    .line 573
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockEngine;->this$0:Lcom/android/wallpaper/polarclock/PolarClockWallpaper;

    #getter for: Lcom/android/wallpaper/polarclock/PolarClockWallpaper;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/wallpaper/polarclock/PolarClockWallpaper;->access$100(Lcom/android/wallpaper/polarclock/PolarClockWallpaper;)Landroid/os/Handler;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockEngine;->mDrawClock:Ljava/lang/Runnable;

    const-wide/16 v20, 0x28

    move-wide/from16 v0, v20

    invoke-virtual {v4, v5, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_d

    .line 567
    :catchall_1f3
    move-exception v4

    if-eqz v2, :cond_1f9

    invoke-interface {v12, v2}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    :cond_1f9
    throw v4

    .line 577
    :cond_1fa
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockEngine;->this$0:Lcom/android/wallpaper/polarclock/PolarClockWallpaper;

    #getter for: Lcom/android/wallpaper/polarclock/PolarClockWallpaper;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/wallpaper/polarclock/PolarClockWallpaper;->access$100(Lcom/android/wallpaper/polarclock/PolarClockWallpaper;)Landroid/os/Handler;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockEngine;->mDrawClock:Ljava/lang/Runnable;

    const-wide/16 v20, 0x7d0

    move-wide/from16 v0, v20

    invoke-virtual {v4, v5, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_d
.end method

.method public onCreate(Landroid/view/SurfaceHolder;)V
    .registers 6
    .parameter "surfaceHolder"

    .prologue
    .line 351
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onCreate(Landroid/view/SurfaceHolder;)V

    .line 353
    iget-object v1, p0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockEngine;->this$0:Lcom/android/wallpaper/polarclock/PolarClockWallpaper;

    const-string v2, "polar_clock_settings"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/wallpaper/polarclock/PolarClockWallpaper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockEngine;->mPrefs:Landroid/content/SharedPreferences;

    .line 354
    iget-object v1, p0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockEngine;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 357
    iget-object v1, p0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockEngine;->mPrefs:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockEngine;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 359
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    iput-object v1, p0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockEngine;->mCalendar:Landroid/text/format/Time;

    .line 360
    iget-object v1, p0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockEngine;->mCalendar:Landroid/text/format/Time;

    invoke-virtual {v1}, Landroid/text/format/Time;->setToNow()V

    .line 362
    iget-object v0, p0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockEngine;->mPaint:Landroid/graphics/Paint;

    .line 363
    .local v0, paint:Landroid/graphics/Paint;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 364
    const/high16 v1, 0x41c0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 365
    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 366
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 368
    invoke-virtual {p0}, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockEngine;->isPreview()Z

    move-result v1

    if-eqz v1, :cond_44

    .line 369
    const/high16 v1, 0x3f00

    iput v1, p0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockEngine;->mOffsetX:F

    .line 371
    :cond_44
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 375
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->onDestroy()V

    .line 376
    iget-boolean v0, p0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockEngine;->mWatcherRegistered:Z

    if-eqz v0, :cond_11

    .line 377
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockEngine;->mWatcherRegistered:Z

    .line 378
    iget-object v0, p0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockEngine;->this$0:Lcom/android/wallpaper/polarclock/PolarClockWallpaper;

    iget-object v1, p0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockEngine;->mWatcher:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/android/wallpaper/polarclock/PolarClockWallpaper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 380
    :cond_11
    iget-object v0, p0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockEngine;->this$0:Lcom/android/wallpaper/polarclock/PolarClockWallpaper;

    #getter for: Lcom/android/wallpaper/polarclock/PolarClockWallpaper;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/wallpaper/polarclock/PolarClockWallpaper;->access$100(Lcom/android/wallpaper/polarclock/PolarClockWallpaper;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockEngine;->mDrawClock:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 381
    return-void
.end method

.method public onOffsetsChanged(FFFFII)V
    .registers 8
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "xStep"
    .parameter "yStep"
    .parameter "xPixels"
    .parameter "yPixels"

    .prologue
    .line 453
    invoke-virtual {p0}, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockEngine;->isPreview()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 457
    :goto_6
    return-void

    .line 455
    :cond_7
    iput p1, p0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockEngine;->mOffsetX:F

    .line 456
    invoke-virtual {p0}, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockEngine;->drawFrame()V

    goto :goto_6
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 8
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    const/4 v4, 0x1

    .line 386
    const/4 v0, 0x0

    .line 387
    .local v0, changed:Z
    if-eqz p2, :cond_c

    const-string v3, "show_seconds"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 388
    :cond_c
    const-string v3, "show_seconds"

    invoke-interface {p1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockEngine;->mShowSeconds:Z

    .line 390
    const/4 v0, 0x1

    .line 392
    :cond_15
    if-eqz p2, :cond_1f

    const-string v3, "variable_line_width"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 393
    :cond_1f
    const-string v3, "variable_line_width"

    invoke-interface {p1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockEngine;->mVariableLineWidth:Z

    .line 395
    const/4 v0, 0x1

    .line 397
    :cond_28
    if-eqz p2, :cond_32

    const-string v3, "palette"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_47

    .line 398
    :cond_32
    const-string v3, "palette"

    const-string v4, ""

    invoke-interface {p1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 400
    .local v2, paletteId:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockEngine;->mPalettes:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockPalette;

    .line 401
    .local v1, pal:Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockPalette;
    if-eqz v1, :cond_47

    .line 402
    iput-object v1, p0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockEngine;->mPalette:Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockPalette;

    .line 403
    const/4 v0, 0x1

    .line 407
    .end local v1           #pal:Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockPalette;
    .end local v2           #paletteId:Ljava/lang/String;
    :cond_47
    iget-boolean v3, p0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockEngine;->mVisible:Z

    if-eqz v3, :cond_50

    if-eqz v0, :cond_50

    .line 408
    invoke-virtual {p0}, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockEngine;->drawFrame()V

    .line 410
    :cond_50
    return-void
.end method

.method public onSurfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 5
    .parameter "holder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 434
    invoke-super {p0, p1, p2, p3, p4}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 435
    invoke-virtual {p0}, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockEngine;->drawFrame()V

    .line 436
    return-void
.end method

.method public onSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 2
    .parameter "holder"

    .prologue
    .line 440
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 441
    return-void
.end method

.method public onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 4
    .parameter "holder"

    .prologue
    .line 445
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 446
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockEngine;->mVisible:Z

    .line 447
    iget-object v0, p0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockEngine;->this$0:Lcom/android/wallpaper/polarclock/PolarClockWallpaper;

    #getter for: Lcom/android/wallpaper/polarclock/PolarClockWallpaper;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/wallpaper/polarclock/PolarClockWallpaper;->access$100(Lcom/android/wallpaper/polarclock/PolarClockWallpaper;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockEngine;->mDrawClock:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 448
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .registers 7
    .parameter "visible"

    .prologue
    .line 414
    iput-boolean p1, p0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockEngine;->mVisible:Z

    .line 415
    if-eqz p1, :cond_2f

    .line 416
    iget-boolean v0, p0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockEngine;->mWatcherRegistered:Z

    if-nez v0, :cond_1f

    .line 417
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockEngine;->mWatcherRegistered:Z

    .line 418
    iget-object v0, p0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockEngine;->this$0:Lcom/android/wallpaper/polarclock/PolarClockWallpaper;

    iget-object v1, p0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockEngine;->mWatcher:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockEngine;->this$0:Lcom/android/wallpaper/polarclock/PolarClockWallpaper;

    #getter for: Lcom/android/wallpaper/polarclock/PolarClockWallpaper;->mFilter:Landroid/content/IntentFilter;
    invoke-static {v2}, Lcom/android/wallpaper/polarclock/PolarClockWallpaper;->access$200(Lcom/android/wallpaper/polarclock/PolarClockWallpaper;)Landroid/content/IntentFilter;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockEngine;->this$0:Lcom/android/wallpaper/polarclock/PolarClockWallpaper;

    #getter for: Lcom/android/wallpaper/polarclock/PolarClockWallpaper;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/wallpaper/polarclock/PolarClockWallpaper;->access$100(Lcom/android/wallpaper/polarclock/PolarClockWallpaper;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/wallpaper/polarclock/PolarClockWallpaper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 420
    :cond_1f
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockEngine;->mCalendar:Landroid/text/format/Time;

    .line 421
    iget-object v0, p0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockEngine;->mCalendar:Landroid/text/format/Time;

    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 429
    :goto_2b
    invoke-virtual {p0}, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockEngine;->drawFrame()V

    .line 430
    return-void

    .line 423
    :cond_2f
    iget-boolean v0, p0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockEngine;->mWatcherRegistered:Z

    if-eqz v0, :cond_3d

    .line 424
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockEngine;->mWatcherRegistered:Z

    .line 425
    iget-object v0, p0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockEngine;->this$0:Lcom/android/wallpaper/polarclock/PolarClockWallpaper;

    iget-object v1, p0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockEngine;->mWatcher:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/android/wallpaper/polarclock/PolarClockWallpaper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 427
    :cond_3d
    iget-object v0, p0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockEngine;->this$0:Lcom/android/wallpaper/polarclock/PolarClockWallpaper;

    #getter for: Lcom/android/wallpaper/polarclock/PolarClockWallpaper;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/wallpaper/polarclock/PolarClockWallpaper;->access$100(Lcom/android/wallpaper/polarclock/PolarClockWallpaper;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockEngine;->mDrawClock:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_2b
.end method
