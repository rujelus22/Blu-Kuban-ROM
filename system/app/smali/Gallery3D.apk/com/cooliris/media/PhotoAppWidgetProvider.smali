.class public Lcom/cooliris/media/PhotoAppWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "PhotoAppWidgetProvider.java"


# static fields
.field private static mFrameInterval:F

.field private static mFrameTime:J

.field private static mTimeElapsedSinceView:F

.field private static mWidgetSlideshowMode:Z

.field private static sizeX:I

.field private static sizeY:I


# instance fields
.field private mAppWidgetList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDrawFrame:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 43
    sput-boolean v2, Lcom/cooliris/media/PhotoAppWidgetProvider;->mWidgetSlideshowMode:Z

    .line 47
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/cooliris/media/PhotoAppWidgetProvider;->mFrameTime:J

    .line 49
    const/4 v0, 0x0

    sput v0, Lcom/cooliris/media/PhotoAppWidgetProvider;->mFrameInterval:F

    .line 54
    sput v2, Lcom/cooliris/media/PhotoAppWidgetProvider;->sizeX:I

    .line 55
    sput v2, Lcom/cooliris/media/PhotoAppWidgetProvider;->sizeY:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 70
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 57
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/cooliris/media/PhotoAppWidgetProvider;->mHandler:Landroid/os/Handler;

    .line 59
    new-instance v0, Lcom/cooliris/media/PhotoAppWidgetProvider$1;

    invoke-direct {v0, p0}, Lcom/cooliris/media/PhotoAppWidgetProvider$1;-><init>(Lcom/cooliris/media/PhotoAppWidgetProvider;)V

    iput-object v0, p0, Lcom/cooliris/media/PhotoAppWidgetProvider;->mDrawFrame:Ljava/lang/Runnable;

    .line 68
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/cooliris/media/PhotoAppWidgetProvider;->mAppWidgetList:Ljava/util/LinkedList;

    .line 72
    return-void
.end method

.method private PauseSlideShow()V
    .registers 4

    .prologue
    .line 360
    const-string v1, "PhotoAppWidgetProvider"

    const-string v2, "PauseSlideShow"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    const/4 v1, 0x0

    sput-boolean v1, Lcom/cooliris/media/PhotoAppWidgetProvider;->mWidgetSlideshowMode:Z

    .line 364
    :try_start_a
    iget-object v1, p0, Lcom/cooliris/media/PhotoAppWidgetProvider;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/cooliris/media/PhotoAppWidgetProvider;->mDrawFrame:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_11} :catch_12

    .line 368
    :goto_11
    return-void

    .line 365
    :catch_12
    move-exception v0

    .line 366
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "PhotoAppWidgetProvider"

    const-string v2, "PauseSlideShow removeCallbacks"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11
.end method

.method private RestartSlideShow(Landroid/content/Context;)V
    .registers 7
    .parameter "context"

    .prologue
    .line 340
    const-string v3, "PhotoAppWidgetProvider"

    const-string v4, "RestartSlideShow"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    const/4 v2, 0x0

    .line 342
    .local v2, isListExist:Z
    iput-object p1, p0, Lcom/cooliris/media/PhotoAppWidgetProvider;->mContext:Landroid/content/Context;

    .line 344
    sget-boolean v3, Lcom/cooliris/media/PhotoAppWidgetProvider;->mWidgetSlideshowMode:Z

    if-nez v3, :cond_2e

    .line 346
    :try_start_e
    iget-object v3, p0, Lcom/cooliris/media/PhotoAppWidgetProvider;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/cooliris/media/PhotoAppWidgetProvider;->mDrawFrame:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 347
    new-instance v1, Lcom/cooliris/media/PhotoDatabaseHelper;

    iget-object v3, p0, Lcom/cooliris/media/PhotoAppWidgetProvider;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/cooliris/media/PhotoDatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 348
    .local v1, helper:Lcom/cooliris/media/PhotoDatabaseHelper;
    iget-object v3, p0, Lcom/cooliris/media/PhotoAppWidgetProvider;->mAppWidgetList:Ljava/util/LinkedList;

    invoke-virtual {v1, v3}, Lcom/cooliris/media/PhotoDatabaseHelper;->isWidgetIdListExist(Ljava/util/LinkedList;)Z
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_21} :catch_2f

    move-result v2

    .line 352
    .end local v1           #helper:Lcom/cooliris/media/PhotoDatabaseHelper;
    :goto_22
    if-eqz v2, :cond_2e

    .line 353
    const/4 v3, 0x1

    sput-boolean v3, Lcom/cooliris/media/PhotoAppWidgetProvider;->mWidgetSlideshowMode:Z

    .line 354
    iget-object v3, p0, Lcom/cooliris/media/PhotoAppWidgetProvider;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/cooliris/media/PhotoAppWidgetProvider;->mDrawFrame:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 357
    :cond_2e
    return-void

    .line 349
    :catch_2f
    move-exception v0

    .line 350
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "PhotoAppWidgetProvider"

    const-string v4, "RestartSlideShow removeCallbacks"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22
.end method

.method private StartSlideShow(Landroid/content/Context;I)V
    .registers 11
    .parameter "context"
    .parameter "appWidgetNewId"

    .prologue
    .line 310
    iput-object p1, p0, Lcom/cooliris/media/PhotoAppWidgetProvider;->mContext:Landroid/content/Context;

    .line 311
    const/4 v0, 0x1

    .line 313
    .local v0, InsertNewItem:Z
    iget-object v5, p0, Lcom/cooliris/media/PhotoAppWidgetProvider;->mAppWidgetList:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 314
    .local v4, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_9
    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 315
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 316
    .local v1, appWidgetId:I
    if-ne v1, p2, :cond_9

    .line 317
    const/4 v0, 0x0

    goto :goto_9

    .line 320
    .end local v1           #appWidgetId:I
    :cond_1d
    if-eqz v0, :cond_40

    .line 321
    iget-object v5, p0, Lcom/cooliris/media/PhotoAppWidgetProvider;->mAppWidgetList:Ljava/util/LinkedList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 322
    const-string v5, "PhotoAppWidgetProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MyMagazine StartSlideShow insert "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :cond_40
    sget-boolean v5, Lcom/cooliris/media/PhotoAppWidgetProvider;->mWidgetSlideshowMode:Z

    if-nez v5, :cond_79

    .line 326
    const-string v5, "PhotoAppWidgetProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MyMagazine StartSlideShow appWidgetId "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :try_start_5c
    iget-object v5, p0, Lcom/cooliris/media/PhotoAppWidgetProvider;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/cooliris/media/PhotoAppWidgetProvider;->mDrawFrame:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 329
    new-instance v3, Lcom/cooliris/media/PhotoDatabaseHelper;

    iget-object v5, p0, Lcom/cooliris/media/PhotoAppWidgetProvider;->mContext:Landroid/content/Context;

    invoke-direct {v3, v5}, Lcom/cooliris/media/PhotoDatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 330
    .local v3, helper:Lcom/cooliris/media/PhotoDatabaseHelper;
    iget-object v5, p0, Lcom/cooliris/media/PhotoAppWidgetProvider;->mAppWidgetList:Ljava/util/LinkedList;

    invoke-virtual {v3, v5}, Lcom/cooliris/media/PhotoDatabaseHelper;->isWidgetIdListExist(Ljava/util/LinkedList;)Z
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_6f} :catch_7a

    .line 334
    .end local v3           #helper:Lcom/cooliris/media/PhotoDatabaseHelper;
    :goto_6f
    const/4 v5, 0x1

    sput-boolean v5, Lcom/cooliris/media/PhotoAppWidgetProvider;->mWidgetSlideshowMode:Z

    .line 335
    iget-object v5, p0, Lcom/cooliris/media/PhotoAppWidgetProvider;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/cooliris/media/PhotoAppWidgetProvider;->mDrawFrame:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 337
    :cond_79
    return-void

    .line 331
    :catch_7a
    move-exception v2

    .line 332
    .local v2, e:Ljava/lang/Exception;
    const-string v5, "PhotoAppWidgetProvider"

    const-string v6, "CLICK_IMAGE removeCallbacks"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6f
.end method

.method static synthetic access$000(Lcom/cooliris/media/PhotoAppWidgetProvider;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/cooliris/media/PhotoAppWidgetProvider;->updateSlideShow()V

    return-void
.end method

.method private changeFilePermission(Ljava/lang/String;)V
    .registers 8
    .parameter "file"

    .prologue
    .line 372
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "chmod 444 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 373
    .local v0, cmd:Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    .line 375
    .local v3, rt:Ljava/lang/Runtime;
    invoke-virtual {v3, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 376
    .local v2, p:Ljava/lang/Process;
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1e} :catch_1f
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_1e} :catch_24

    .line 382
    .end local v0           #cmd:Ljava/lang/String;
    .end local v2           #p:Ljava/lang/Process;
    .end local v3           #rt:Ljava/lang/Runtime;
    :goto_1e
    return-void

    .line 377
    :catch_1f
    move-exception v1

    .line 378
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1e

    .line 379
    .end local v1           #e:Ljava/io/IOException;
    :catch_24
    move-exception v1

    .line 380
    .local v1, e:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1e
.end method

.method private changeFolderPermission(I)V
    .registers 9
    .parameter "id"

    .prologue
    .line 385
    new-instance v1, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/data/data/com.cooliris.media/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 387
    .local v1, dir:Ljava/io/File;
    :try_start_18
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "chmod 771 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 388
    .local v0, cmd:Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    .line 390
    .local v4, rt:Ljava/lang/Runtime;
    invoke-virtual {v4, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    .line 391
    .local v3, p:Ljava/lang/Process;
    invoke-virtual {v3}, Ljava/lang/Process;->waitFor()I
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_36} :catch_37
    .catch Ljava/lang/InterruptedException; {:try_start_18 .. :try_end_36} :catch_3c

    .line 397
    .end local v0           #cmd:Ljava/lang/String;
    .end local v3           #p:Ljava/lang/Process;
    .end local v4           #rt:Ljava/lang/Runtime;
    :goto_36
    return-void

    .line 392
    :catch_37
    move-exception v2

    .line 393
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_36

    .line 394
    .end local v2           #e:Ljava/io/IOException;
    :catch_3c
    move-exception v2

    .line 395
    .local v2, e:Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_36
.end method

.method private updateSlideShow()V
    .registers 12

    .prologue
    const v10, 0x7f080029

    const/4 v9, 0x1

    .line 120
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 121
    const v2, 0x3a83126f

    const-wide/16 v3, 0x32

    sget-wide v5, Lcom/cooliris/media/PhotoAppWidgetProvider;->mFrameTime:J

    sub-long v5, v0, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-float v3, v3

    mul-float/2addr v2, v3

    .line 122
    sput v2, Lcom/cooliris/media/PhotoAppWidgetProvider;->mFrameInterval:F

    .line 123
    sput-wide v0, Lcom/cooliris/media/PhotoAppWidgetProvider;->mFrameTime:J

    .line 125
    sget v0, Lcom/cooliris/media/PhotoAppWidgetProvider;->mTimeElapsedSinceView:F

    sget v1, Lcom/cooliris/media/PhotoAppWidgetProvider;->mFrameInterval:F

    add-float/2addr v0, v1

    sput v0, Lcom/cooliris/media/PhotoAppWidgetProvider;->mTimeElapsedSinceView:F

    .line 126
    sget v0, Lcom/cooliris/media/PhotoAppWidgetProvider;->mTimeElapsedSinceView:F

    const/high16 v1, 0x4000

    cmpl-float v0, v0, v1

    if-lez v0, :cond_fc

    .line 127
    const/4 v0, 0x0

    sput v0, Lcom/cooliris/media/PhotoAppWidgetProvider;->mTimeElapsedSinceView:F

    .line 129
    iget-object v0, p0, Lcom/cooliris/media/PhotoAppWidgetProvider;->mAppWidgetList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 130
    :cond_33
    :goto_33
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_fc

    .line 131
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 132
    const-string v0, "PhotoAppWidgetProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MyMagazine updateSlideShow Next - appWidgetId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    new-instance v0, Lcom/cooliris/media/PhotoDatabaseHelper;

    iget-object v2, p0, Lcom/cooliris/media/PhotoAppWidgetProvider;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/cooliris/media/PhotoDatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 134
    new-instance v2, Lcom/cooliris/media/PhotoAppWidgetController;

    invoke-direct {v2}, Lcom/cooliris/media/PhotoAppWidgetController;-><init>()V

    .line 135
    invoke-virtual {v2, v1}, Lcom/cooliris/media/PhotoAppWidgetController;->getItemsNum(I)I

    move-result v2

    .line 136
    if-gt v2, v9, :cond_75

    .line 137
    const-string v0, "PictureFrame"

    const-string v1, "do not update widget, saved file num 1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33

    .line 140
    :cond_75
    invoke-virtual {v0, v1}, Lcom/cooliris/media/PhotoDatabaseHelper;->getWidgetInfo(I)Landroid/os/Bundle;

    move-result-object v5

    .line 142
    const-string v2, "folderItems"

    invoke-virtual {v5, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_33

    .line 146
    invoke-virtual {v0, v1, v9}, Lcom/cooliris/media/PhotoDatabaseHelper;->getNextPhotoIndex(IZ)I

    move-result v2

    const-string v3, "folderID"

    const-wide/16 v7, -0x1

    invoke-virtual {v5, v3, v7, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    const-string v7, "folderItems"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/cooliris/media/PhotoDatabaseHelper;->setWidgetInfoAtDB(IIJLjava/lang/String;)Z

    .line 148
    invoke-virtual {v0, v1}, Lcom/cooliris/media/PhotoDatabaseHelper;->getPhotoUri(I)Ljava/lang/String;

    move-result-object v0

    .line 149
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 150
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_f3

    .line 151
    invoke-direct {p0, v0}, Lcom/cooliris/media/PhotoAppWidgetProvider;->changeFilePermission(Ljava/lang/String;)V

    .line 152
    new-instance v2, Landroid/widget/RemoteViews;

    iget-object v3, p0, Lcom/cooliris/media/PhotoAppWidgetProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f030014

    invoke-direct {v2, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 154
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    .line 155
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 156
    invoke-virtual {v2, v10, v0}, Landroid/widget/RemoteViews;->setImageViewUri(ILandroid/net/Uri;)V

    .line 157
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/cooliris/media/PhotoAppWidgetProvider;->mContext:Landroid/content/Context;

    const-class v4, Lcom/cooliris/media/PhotoAppWidgetClickHandler;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 158
    const-string v3, "APPWIDGET_ID"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 159
    iget-object v3, p0, Lcom/cooliris/media/PhotoAppWidgetProvider;->mContext:Landroid/content/Context;

    const/high16 v4, 0x800

    invoke-static {v3, v1, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 161
    invoke-virtual {v2, v10, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 162
    iget-object v0, p0, Lcom/cooliris/media/PhotoAppWidgetProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 163
    new-array v3, v9, [I

    const/4 v4, 0x0

    aput v1, v3, v4

    invoke-virtual {v0, v3, v2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget([ILandroid/widget/RemoteViews;)V

    goto/16 :goto_33

    .line 167
    :cond_f3
    const-string v0, "PictureFrame"

    const-string v1, "Can not load next bitmap"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_33

    .line 174
    :cond_fc
    :try_start_fc
    iget-object v0, p0, Lcom/cooliris/media/PhotoAppWidgetProvider;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/cooliris/media/PhotoAppWidgetProvider;->mDrawFrame:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_103
    .catch Ljava/lang/Exception; {:try_start_fc .. :try_end_103} :catch_111

    .line 179
    :goto_103
    sget-boolean v0, Lcom/cooliris/media/PhotoAppWidgetProvider;->mWidgetSlideshowMode:Z

    if-eqz v0, :cond_110

    .line 180
    iget-object v0, p0, Lcom/cooliris/media/PhotoAppWidgetProvider;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/cooliris/media/PhotoAppWidgetProvider;->mDrawFrame:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 183
    :cond_110
    return-void

    .line 175
    :catch_111
    move-exception v0

    .line 176
    const-string v0, "PhotoAppWidgetProvider"

    const-string v1, "updateSlideShow removeCallbacks"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_103
.end method


# virtual methods
.method public buildUpdate(Landroid/content/Context;ILcom/cooliris/media/PhotoDatabaseHelper;II)Landroid/widget/RemoteViews;
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    const v6, 0x7f080029

    const v5, 0x7f080026

    const/4 v0, 0x2

    const/4 v4, 0x0

    .line 237
    .line 238
    invoke-virtual {p3, p2}, Lcom/cooliris/media/PhotoDatabaseHelper;->getPhotoUri(I)Ljava/lang/String;

    move-result-object v2

    .line 239
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/data/com.cooliris.media/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "100.jpg"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 241
    const/4 v1, 0x0

    .line 242
    if-eqz v2, :cond_34

    .line 243
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 245
    :cond_34
    if-eqz v1, :cond_99

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_99

    .line 246
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v4, 0x7f030014

    invoke-direct {v0, v1, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 247
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    .line 248
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v4

    .line 249
    invoke-direct {p0, p2}, Lcom/cooliris/media/PhotoAppWidgetProvider;->changeFolderPermission(I)V

    .line 250
    invoke-direct {p0, v2}, Lcom/cooliris/media/PhotoAppWidgetProvider;->changeFilePermission(Ljava/lang/String;)V

    .line 251
    invoke-direct {p0, v3}, Lcom/cooliris/media/PhotoAppWidgetProvider;->changeFilePermission(Ljava/lang/String;)V

    .line 252
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 253
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 254
    invoke-virtual {v0, v6, v2}, Landroid/widget/RemoteViews;->setImageViewUri(ILandroid/net/Uri;)V

    .line 255
    invoke-virtual {v0, v6, v1}, Landroid/widget/RemoteViews;->setImageViewUri(ILandroid/net/Uri;)V

    .line 256
    invoke-direct {p0, p1, p2}, Lcom/cooliris/media/PhotoAppWidgetProvider;->StartSlideShow(Landroid/content/Context;I)V

    .line 259
    const-string v1, "PhotoAppWidgetProvider"

    const-string v2, "buildUpdate - recreate Pending Intent"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/cooliris/media/PhotoAppWidgetClickHandler;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 261
    const-string v2, "APPWIDGET_ID"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 262
    const/high16 v2, 0x800

    invoke-static {p1, p2, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 264
    invoke-virtual {v0, v6, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 306
    :goto_98
    return-object v0

    .line 268
    :cond_99
    sget v1, Lcom/cooliris/media/PhotoAppWidgetProvider;->sizeX:I

    if-eqz v1, :cond_cf

    sget v1, Lcom/cooliris/media/PhotoAppWidgetProvider;->sizeY:I

    if-eqz v1, :cond_cf

    .line 269
    const-string v1, "PhotoAppWidgetProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sizeX"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/cooliris/media/PhotoAppWidgetProvider;->sizeX:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "    sizeY "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/cooliris/media/PhotoAppWidgetProvider;->sizeY:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    sget p4, Lcom/cooliris/media/PhotoAppWidgetProvider;->sizeX:I

    .line 271
    sget p5, Lcom/cooliris/media/PhotoAppWidgetProvider;->sizeY:I

    .line 273
    sput v4, Lcom/cooliris/media/PhotoAppWidgetProvider;->sizeX:I

    .line 274
    sput v4, Lcom/cooliris/media/PhotoAppWidgetProvider;->sizeY:I

    .line 278
    :cond_cf
    const-string v1, "PhotoAppWidgetProvider"

    const-string v2, "buildUpdate- set default"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    if-nez p4, :cond_dc

    if-nez p5, :cond_dc

    .line 280
    const/4 p4, 0x4

    move p5, v0

    .line 283
    :cond_dc
    if-ne p4, v0, :cond_11e

    if-ne p5, v7, :cond_11e

    .line 284
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/cooliris/media/PhotoAppWidgetController;->layout_ID:[I

    add-int/lit8 v3, p4, -0x2

    aget v2, v2, v3

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 295
    :goto_ef
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/cooliris/media/PhotoAppWidgetConfigure;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 296
    const-string v2, "APPWIDGET_ID"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 297
    const-string v2, "AddPicture"

    invoke-virtual {v1, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 298
    const-string v2, "widgetspanx"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 299
    const-string v2, "widgetspany"

    invoke-virtual {v1, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 300
    const/high16 v2, 0x800

    invoke-static {p1, p2, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 302
    invoke-virtual {v0, v5, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 303
    invoke-virtual {v0, v5, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 304
    const v1, 0x7f080027

    invoke-virtual {v0, v1, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_98

    .line 286
    :cond_11e
    if-lt p4, v0, :cond_13e

    const/4 v1, 0x5

    if-gt p4, v1, :cond_13e

    if-lt p5, v0, :cond_13e

    const/4 v0, 0x5

    if-gt p5, v0, :cond_13e

    .line 287
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/cooliris/media/PhotoAppWidgetController;->layout_ID:[I

    add-int/lit8 v3, p4, -0x1

    aget v2, v2, v3

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 289
    const v1, 0x7f020011

    invoke-virtual {v0, v5, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_ef

    .line 292
    :cond_13e
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f03000f

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    goto :goto_ef
.end method

.method public onDeleted(Landroid/content/Context;[I)V
    .registers 12
    .parameter "context"
    .parameter "appWidgetIds"

    .prologue
    .line 214
    new-instance v3, Lcom/cooliris/media/PhotoDatabaseHelper;

    invoke-direct {v3, p1}, Lcom/cooliris/media/PhotoDatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 215
    .local v3, helper:Lcom/cooliris/media/PhotoDatabaseHelper;
    move-object v1, p2

    .local v1, arr$:[I
    array-length v5, v1

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_8
    if-ge v4, v5, :cond_23

    aget v0, v1, v4

    .line 216
    .local v0, appWidgetId:I
    invoke-virtual {v3, v0}, Lcom/cooliris/media/PhotoDatabaseHelper;->deleteWidgetFromDB(I)V

    .line 217
    new-instance v6, Lcom/cooliris/media/PhotoAppWidgetController;

    invoke-direct {v6}, Lcom/cooliris/media/PhotoAppWidgetController;-><init>()V

    .line 218
    .local v6, mController:Lcom/cooliris/media/PhotoAppWidgetController;
    invoke-virtual {v6, v0}, Lcom/cooliris/media/PhotoAppWidgetController;->deleteItemsFromId(I)Z

    .line 219
    iget-object v7, p0, Lcom/cooliris/media/PhotoAppWidgetProvider;->mAppWidgetList:Ljava/util/LinkedList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 215
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 221
    .end local v0           #appWidgetId:I
    .end local v6           #mController:Lcom/cooliris/media/PhotoAppWidgetController;
    :cond_23
    invoke-virtual {v3}, Lcom/cooliris/media/PhotoDatabaseHelper;->close()V

    .line 223
    iget-object v7, p0, Lcom/cooliris/media/PhotoAppWidgetProvider;->mAppWidgetList:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v7

    if-nez v7, :cond_3f

    .line 224
    const-string v7, "PhotoAppWidgetProvider"

    const-string v8, "MyMagazine onDeleted removeCallbacks "

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    const/4 v7, 0x0

    sput-boolean v7, Lcom/cooliris/media/PhotoAppWidgetProvider;->mWidgetSlideshowMode:Z

    .line 228
    :try_start_38
    iget-object v7, p0, Lcom/cooliris/media/PhotoAppWidgetProvider;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/cooliris/media/PhotoAppWidgetProvider;->mDrawFrame:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3f} :catch_40

    .line 233
    :cond_3f
    :goto_3f
    return-void

    .line 229
    :catch_40
    move-exception v2

    .line 230
    .local v2, e:Ljava/lang/Exception;
    const-string v7, "PhotoAppWidgetProvider"

    const-string v8, "onDeleted removeCallbacks"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3f
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 16
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v12, 0x0

    .line 76
    const-string v2, "PhotoAppWidgetProvider"

    const-string v3, "onReceive"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    .line 79
    .local v8, action:Ljava/lang/String;
    const-string v2, "CLICK_IMAGE"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 109
    :goto_14
    const-string v2, "PhotoAppWidgetProvider"

    const-string v3, "onReceive End"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    return-void

    .line 81
    :cond_1c
    const-string v2, "com.sec.android.widgetapp.APPWIDGET_RESIZE"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_90

    .line 82
    const-string v2, "widgetspanx"

    invoke-virtual {p2, v2, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 83
    .local v6, spanX:I
    const-string v2, "widgetspany"

    invoke-virtual {p2, v2, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 84
    .local v7, spanY:I
    const-string v2, "widgetId"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 87
    .local v1, widgetId:I
    sput v6, Lcom/cooliris/media/PhotoAppWidgetProvider;->sizeX:I

    .line 88
    sput v7, Lcom/cooliris/media/PhotoAppWidgetProvider;->sizeY:I

    .line 90
    const-string v2, "PhotoAppWidgetProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WIDGET_RESIZE spanX : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", spanY : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    new-instance v0, Lcom/cooliris/media/PhotoDatabaseHelper;

    invoke-direct {v0, p1}, Lcom/cooliris/media/PhotoDatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 92
    .local v0, helper:Lcom/cooliris/media/PhotoDatabaseHelper;
    invoke-virtual {v0, v1}, Lcom/cooliris/media/PhotoDatabaseHelper;->getWidgetInfo(I)Landroid/os/Bundle;

    move-result-object v10

    .line 93
    .local v10, data:Landroid/os/Bundle;
    invoke-virtual {v0, v1, v12}, Lcom/cooliris/media/PhotoDatabaseHelper;->getNextPhotoIndex(IZ)I

    move-result v2

    const-string v3, "folderID"

    const-wide/16 v4, -0x1

    invoke-virtual {v10, v3, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    const-string v5, "folderItems"

    invoke-virtual {v10, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/cooliris/media/PhotoDatabaseHelper;->setWidgetInfoAtDB(IIJLjava/lang/String;)Z

    move-object v2, p0

    move-object v3, p1

    move v4, v1

    move-object v5, v0

    .line 95
    invoke-virtual/range {v2 .. v7}, Lcom/cooliris/media/PhotoAppWidgetProvider;->buildUpdate(Landroid/content/Context;ILcom/cooliris/media/PhotoDatabaseHelper;II)Landroid/widget/RemoteViews;

    move-result-object v11

    .line 96
    .local v11, views:Landroid/widget/RemoteViews;
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v9

    .line 97
    .local v9, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    const/4 v2, 0x1

    new-array v2, v2, [I

    aput v1, v2, v12

    invoke-virtual {v9, v2, v11}, Landroid/appwidget/AppWidgetManager;->updateAppWidget([ILandroid/widget/RemoteViews;)V

    goto :goto_14

    .line 100
    .end local v0           #helper:Lcom/cooliris/media/PhotoDatabaseHelper;
    .end local v1           #widgetId:I
    .end local v6           #spanX:I
    .end local v7           #spanY:I
    .end local v9           #appWidgetManager:Landroid/appwidget/AppWidgetManager;
    .end local v10           #data:Landroid/os/Bundle;
    .end local v11           #views:Landroid/widget/RemoteViews;
    :cond_90
    const-string v2, "sec.android.intent.action.HOME_RESUME"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9d

    .line 101
    invoke-direct {p0, p1}, Lcom/cooliris/media/PhotoAppWidgetProvider;->RestartSlideShow(Landroid/content/Context;)V

    goto/16 :goto_14

    .line 102
    :cond_9d
    const-string v2, "sec.android.intent.action.HOME_PAUSE"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_aa

    .line 103
    invoke-direct {p0}, Lcom/cooliris/media/PhotoAppWidgetProvider;->PauseSlideShow()V

    goto/16 :goto_14

    .line 105
    :cond_aa
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_14
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .registers 15
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    .line 188
    new-instance v3, Lcom/cooliris/media/PhotoDatabaseHelper;

    invoke-direct {v3, p1}, Lcom/cooliris/media/PhotoDatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 189
    .local v3, helper:Lcom/cooliris/media/PhotoDatabaseHelper;
    move-object v6, p3

    .local v6, arr$:[I
    array-length v8, v6

    .local v8, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_8
    if-ge v7, v8, :cond_42

    aget v2, v6, v7

    .line 190
    .local v2, appWidgetId:I
    const/4 v0, 0x1

    new-array v9, v0, [I

    const/4 v0, 0x0

    aput v2, v9, v0

    .line 193
    .local v9, specificAppWidget:[I
    const/4 v4, 0x4

    const/4 v5, 0x2

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/cooliris/media/PhotoAppWidgetProvider;->buildUpdate(Landroid/content/Context;ILcom/cooliris/media/PhotoDatabaseHelper;II)Landroid/widget/RemoteViews;

    move-result-object v10

    .line 197
    .local v10, views:Landroid/widget/RemoteViews;
    const-string v0, "PhotoAppWidgetProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sending out views="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " for id="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-virtual {p2, v9, v10}, Landroid/appwidget/AppWidgetManager;->updateAppWidget([ILandroid/widget/RemoteViews;)V

    .line 189
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    .line 201
    .end local v2           #appWidgetId:I
    .end local v9           #specificAppWidget:[I
    .end local v10           #views:Landroid/widget/RemoteViews;
    :cond_42
    invoke-virtual {v3}, Lcom/cooliris/media/PhotoDatabaseHelper;->close()V

    .line 202
    return-void
.end method
