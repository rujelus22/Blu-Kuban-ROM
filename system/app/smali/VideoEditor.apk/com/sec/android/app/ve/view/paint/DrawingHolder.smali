.class public Lcom/sec/android/app/ve/view/paint/DrawingHolder;
.super Landroid/widget/ImageView;
.source "DrawingHolder.java"

# interfaces
.implements Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$TimeLineListener;
.implements Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher$DrawingThumbnaiFetcherCallbak;


# static fields
.field public static final GET_CURRENT_ELEMENT:I = 0x1

.field public static final MODE_EFFECT:I = 0x5

.field public static final MODE_NORMAL:I

.field private static _instance:Lcom/sec/android/app/ve/view/paint/DrawingHolder;


# instance fields
.field private mClipartParams:Lcom/samsung/app/video/editor/external/ClipartParams;

.field private mCurrentElement:Lcom/samsung/app/video/editor/external/Element;

.field mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/ve/view/paint/DrawingHolder;->mCurrentElement:Lcom/samsung/app/video/editor/external/Element;

    .line 128
    new-instance v0, Lcom/sec/android/app/ve/view/paint/DrawingHolder$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/view/paint/DrawingHolder$1;-><init>(Lcom/sec/android/app/ve/view/paint/DrawingHolder;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/view/paint/DrawingHolder;->mHandler:Landroid/os/Handler;

    .line 39
    sput-object p0, Lcom/sec/android/app/ve/view/paint/DrawingHolder;->_instance:Lcom/sec/android/app/ve/view/paint/DrawingHolder;

    .line 40
    invoke-static {}, Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher;->getInstance()Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 41
    invoke-static {}, Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher;->getInstance()Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher;->init()V

    .line 42
    :cond_1c
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/ve/view/paint/DrawingHolder;->mCurrentElement:Lcom/samsung/app/video/editor/external/Element;

    .line 128
    new-instance v0, Lcom/sec/android/app/ve/view/paint/DrawingHolder$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/view/paint/DrawingHolder$1;-><init>(Lcom/sec/android/app/ve/view/paint/DrawingHolder;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/view/paint/DrawingHolder;->mHandler:Landroid/os/Handler;

    .line 46
    sput-object p0, Lcom/sec/android/app/ve/view/paint/DrawingHolder;->_instance:Lcom/sec/android/app/ve/view/paint/DrawingHolder;

    .line 47
    invoke-static {}, Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher;->getInstance()Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 48
    invoke-static {}, Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher;->getInstance()Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher;->init()V

    .line 49
    :cond_1c
    return-void
.end method

.method static synthetic access$0(Lcom/sec/android/app/ve/view/paint/DrawingHolder;Lcom/samsung/app/video/editor/external/Element;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lcom/sec/android/app/ve/view/paint/DrawingHolder;->mCurrentElement:Lcom/samsung/app/video/editor/external/Element;

    return-void
.end method

.method static synthetic access$1(Lcom/sec/android/app/ve/view/paint/DrawingHolder;)Lcom/samsung/app/video/editor/external/Element;
    .registers 2
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sec/android/app/ve/view/paint/DrawingHolder;->mCurrentElement:Lcom/samsung/app/video/editor/external/Element;

    return-object v0
.end method

.method public static getInstance()Lcom/sec/android/app/ve/view/paint/DrawingHolder;
    .registers 1

    .prologue
    .line 52
    sget-object v0, Lcom/sec/android/app/ve/view/paint/DrawingHolder;->_instance:Lcom/sec/android/app/ve/view/paint/DrawingHolder;

    return-object v0
.end method


# virtual methods
.method public bitmapCreated(Lcom/samsung/app/video/editor/external/Element;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .registers 6
    .parameter "aElement"
    .parameter "bitmap"
    .parameter "aFilePath"

    .prologue
    .line 374
    if-eqz p2, :cond_1b

    invoke-virtual {p0, p1}, Lcom/sec/android/app/ve/view/paint/DrawingHolder;->isDrawingElemExist(Lcom/samsung/app/video/editor/external/Element;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 377
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 378
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/ve/view/paint/DrawingHolder$2;

    invoke-direct {v1, p0, p2}, Lcom/sec/android/app/ve/view/paint/DrawingHolder$2;-><init>(Lcom/sec/android/app/ve/view/paint/DrawingHolder;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 409
    :cond_1a
    :goto_1a
    return-void

    .line 405
    :cond_1b
    const-string v0, "Inside bitmapCreated and making it null"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 406
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/view/paint/DrawingHolder;->setDrawingClipartparams(Lcom/samsung/app/video/editor/external/ClipartParams;)V

    .line 407
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/view/paint/DrawingHolder;->setDrawingvisible(Z)V

    goto :goto_1a
.end method

.method public getARGBBuffer()[B
    .registers 5

    .prologue
    .line 259
    const v3, 0x3e8000

    new-array v0, v3, [B

    .line 260
    .local v0, argbBuff:[B
    iget-object v3, p0, Lcom/sec/android/app/ve/view/paint/DrawingHolder;->mClipartParams:Lcom/samsung/app/video/editor/external/ClipartParams;

    if-eqz v3, :cond_1e

    .line 262
    iget-object v3, p0, Lcom/sec/android/app/ve/view/paint/DrawingHolder;->mClipartParams:Lcom/samsung/app/video/editor/external/ClipartParams;

    iget-object v3, v3, Lcom/samsung/app/video/editor/external/ClipartParams;->Filepath:Ljava/lang/String;

    if-eqz v3, :cond_1e

    .line 266
    :try_start_f
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/sec/android/app/ve/view/paint/DrawingHolder;->mClipartParams:Lcom/samsung/app/video/editor/external/ClipartParams;

    iget-object v3, v3, Lcom/samsung/app/video/editor/external/ClipartParams;->Filepath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 267
    .local v2, fosdata:Ljava/io/FileInputStream;
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 268
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_1e} :catch_1f

    .line 278
    .end local v2           #fosdata:Ljava/io/FileInputStream;
    :cond_1e
    :goto_1e
    return-object v0

    .line 270
    :catch_1f
    move-exception v1

    .line 272
    .local v1, ex:Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1e
.end method

.method public getDrawingClipartparams()Lcom/samsung/app/video/editor/external/ClipartParams;
    .registers 2

    .prologue
    .line 253
    iget-object v0, p0, Lcom/sec/android/app/ve/view/paint/DrawingHolder;->mClipartParams:Lcom/samsung/app/video/editor/external/ClipartParams;

    return-object v0
.end method

.method public getmCurrentElement()Lcom/samsung/app/video/editor/external/Element;
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sec/android/app/ve/view/paint/DrawingHolder;->mCurrentElement:Lcom/samsung/app/video/editor/external/Element;

    return-object v0
.end method

.method public isDrawingElemExist(Lcom/samsung/app/video/editor/external/Element;)Z
    .registers 13
    .parameter "aElement"

    .prologue
    const/4 v6, 0x1

    const/4 v10, 0x0

    .line 284
    const/4 v2, 0x0

    .line 285
    .local v2, isExist:Z
    if-eqz p1, :cond_4b

    .line 287
    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/Element;->getDrawingEleList()Ljava/util/List;

    move-result-object v3

    .line 288
    .local v3, mDrawingEleList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/app/video/editor/external/ClipartParams;>;"
    if-eqz v3, :cond_4b

    .line 290
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getCurrentTimeInSec()F

    move-result v0

    .line 311
    .local v0, CurrentStory_time:F
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " drawing CurrentStory_time :"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " StartTime "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/Element;->getStartTime()F

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " du"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/Element;->getDuration()F

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 312
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_45
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_4c

    .line 368
    .end local v0           #CurrentStory_time:F
    .end local v2           #isExist:Z
    .end local v3           #mDrawingEleList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/app/video/editor/external/ClipartParams;>;"
    :cond_4b
    :goto_4b
    return v2

    .line 312
    .restart local v0       #CurrentStory_time:F
    .restart local v2       #isExist:Z
    .restart local v3       #mDrawingEleList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/app/video/editor/external/ClipartParams;>;"
    :cond_4c
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/app/video/editor/external/ClipartParams;

    .line 314
    .local v4, mtempClipartParams:Lcom/samsung/app/video/editor/external/ClipartParams;
    iput-object v4, p0, Lcom/sec/android/app/ve/view/paint/DrawingHolder;->mClipartParams:Lcom/samsung/app/video/editor/external/ClipartParams;

    .line 318
    const/4 v5, 0x0

    .line 319
    .local v5, startTime:F
    const/4 v1, 0x0

    .line 320
    .local v1, endTime:F
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getOperationMode()I

    move-result v8

    if-ne v8, v6, :cond_7e

    .line 322
    iget-object v8, p0, Lcom/sec/android/app/ve/view/paint/DrawingHolder;->mClipartParams:Lcom/samsung/app/video/editor/external/ClipartParams;

    invoke-virtual {v8}, Lcom/samsung/app/video/editor/external/ClipartParams;->getStartTime()F

    move-result v5

    .line 323
    iget-object v8, p0, Lcom/sec/android/app/ve/view/paint/DrawingHolder;->mClipartParams:Lcom/samsung/app/video/editor/external/ClipartParams;

    invoke-virtual {v8}, Lcom/samsung/app/video/editor/external/ClipartParams;->getEndTime()F

    move-result v8

    iget-object v9, p0, Lcom/sec/android/app/ve/view/paint/DrawingHolder;->mCurrentElement:Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v9}, Lcom/samsung/app/video/editor/external/Element;->getSplitTime()F

    move-result v9

    sub-float v1, v8, v9

    .line 356
    :cond_74
    :goto_74
    cmpl-float v8, v0, v5

    if-ltz v8, :cond_45

    .line 357
    cmpg-float v8, v0, v1

    if-gtz v8, :cond_45

    move v2, v6

    .line 359
    goto :goto_4b

    .line 327
    :cond_7e
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, " drawing CurrentStory_time :"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "drawing  StartTime "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/app/ve/view/paint/DrawingHolder;->mClipartParams:Lcom/samsung/app/video/editor/external/ClipartParams;

    invoke-virtual {v9}, Lcom/samsung/app/video/editor/external/ClipartParams;->getStartTime()F

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  drawing du"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/app/ve/view/paint/DrawingHolder;->mClipartParams:Lcom/samsung/app/video/editor/external/ClipartParams;

    invoke-virtual {v9}, Lcom/samsung/app/video/editor/external/ClipartParams;->getEndTime()F

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 328
    iget-object v8, p0, Lcom/sec/android/app/ve/view/paint/DrawingHolder;->mClipartParams:Lcom/samsung/app/video/editor/external/ClipartParams;

    invoke-virtual {v8}, Lcom/samsung/app/video/editor/external/ClipartParams;->getEndTime()F

    move-result v8

    iget-object v9, p0, Lcom/sec/android/app/ve/view/paint/DrawingHolder;->mCurrentElement:Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v9}, Lcom/samsung/app/video/editor/external/Element;->getStartTime()F

    move-result v9

    cmpg-float v8, v8, v9

    if-lez v8, :cond_45

    .line 331
    iget-object v8, p0, Lcom/sec/android/app/ve/view/paint/DrawingHolder;->mClipartParams:Lcom/samsung/app/video/editor/external/ClipartParams;

    invoke-virtual {v8}, Lcom/samsung/app/video/editor/external/ClipartParams;->getStartTime()F

    move-result v8

    iget-object v9, p0, Lcom/sec/android/app/ve/view/paint/DrawingHolder;->mCurrentElement:Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v9}, Lcom/samsung/app/video/editor/external/Element;->getEndTime()F

    move-result v9

    cmpl-float v8, v8, v9

    if-gez v8, :cond_45

    .line 335
    iget-object v8, p0, Lcom/sec/android/app/ve/view/paint/DrawingHolder;->mClipartParams:Lcom/samsung/app/video/editor/external/ClipartParams;

    invoke-virtual {v8}, Lcom/samsung/app/video/editor/external/ClipartParams;->getStartTime()F

    move-result v8

    iget-object v9, p0, Lcom/sec/android/app/ve/view/paint/DrawingHolder;->mCurrentElement:Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v9}, Lcom/samsung/app/video/editor/external/Element;->getStartTime()F

    move-result v9

    sub-float v5, v8, v9

    .line 336
    iget-object v8, p0, Lcom/sec/android/app/ve/view/paint/DrawingHolder;->mClipartParams:Lcom/samsung/app/video/editor/external/ClipartParams;

    invoke-virtual {v8}, Lcom/samsung/app/video/editor/external/ClipartParams;->getEndTime()F

    move-result v8

    iget-object v9, p0, Lcom/sec/android/app/ve/view/paint/DrawingHolder;->mCurrentElement:Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v9}, Lcom/samsung/app/video/editor/external/Element;->getStartTime()F

    move-result v9

    sub-float v1, v8, v9

    .line 338
    cmpg-float v8, v5, v10

    if-gtz v8, :cond_f4

    cmpg-float v8, v1, v10

    if-lez v8, :cond_45

    .line 341
    :cond_f4
    cmpg-float v8, v5, v10

    if-gez v8, :cond_f9

    .line 342
    const/4 v5, 0x0

    .line 345
    :cond_f9
    iget-object v8, p0, Lcom/sec/android/app/ve/view/paint/DrawingHolder;->mCurrentElement:Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v8}, Lcom/samsung/app/video/editor/external/Element;->getEndTime()F

    move-result v8

    iget-object v9, p0, Lcom/sec/android/app/ve/view/paint/DrawingHolder;->mCurrentElement:Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v9}, Lcom/samsung/app/video/editor/external/Element;->getStartTime()F

    move-result v9

    sub-float/2addr v8, v9

    cmpl-float v8, v1, v8

    if-lez v8, :cond_74

    .line 346
    iget-object v8, p0, Lcom/sec/android/app/ve/view/paint/DrawingHolder;->mCurrentElement:Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v8}, Lcom/samsung/app/video/editor/external/Element;->getEndTime()F

    move-result v8

    iget-object v9, p0, Lcom/sec/android/app/ve/view/paint/DrawingHolder;->mCurrentElement:Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v9}, Lcom/samsung/app/video/editor/external/Element;->getStartTime()F

    move-result v9

    sub-float v1, v8, v9

    goto/16 :goto_74
.end method

.method public onAdded(Lcom/samsung/app/video/editor/external/Element;)V
    .registers 2
    .parameter "addedView"

    .prologue
    .line 62
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .prologue
    .line 156
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 157
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->addTimeLineListener(Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$TimeLineListener;)V

    .line 158
    return-void
.end method

.method public onFocusedChange(Lcom/samsung/app/video/editor/external/Element;Lcom/samsung/app/video/editor/external/Element;)V
    .registers 3
    .parameter "focusElement"
    .parameter "lastFocusElement"

    .prologue
    .line 57
    return-void
.end method

.method public onMusicChanged(Lcom/samsung/app/video/editor/external/Element;Z)V
    .registers 3
    .parameter "element"
    .parameter "added"

    .prologue
    .line 153
    return-void
.end method

.method public onRemoved(Lcom/samsung/app/video/editor/external/Element;)V
    .registers 2
    .parameter "removedView"

    .prologue
    .line 66
    return-void
.end method

.method public onScrolled(Lcom/samsung/app/video/editor/external/Element;FF)V
    .registers 9
    .parameter "element"
    .parameter "elementTime"
    .parameter "transitionTime"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 80
    if-nez p1, :cond_7

    .line 82
    iput-object v4, p0, Lcom/sec/android/app/ve/view/paint/DrawingHolder;->mCurrentElement:Lcom/samsung/app/video/editor/external/Element;

    .line 119
    :goto_6
    return-void

    .line 85
    :cond_7
    iput-object p1, p0, Lcom/sec/android/app/ve/view/paint/DrawingHolder;->mCurrentElement:Lcom/samsung/app/video/editor/external/Element;

    .line 87
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 88
    .local v1, isdrawing:Ljava/lang/Boolean;
    const/4 v2, 0x0

    cmpl-float v2, p3, v2

    if-lez v2, :cond_34

    .line 89
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 93
    :goto_16
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-static {}, Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher;->getInstance()Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher;

    move-result-object v2

    if-eqz v2, :cond_3f

    .line 108
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getCurrentTimeInSec()F

    move-result v0

    .line 110
    .local v0, CurrentStory_time:F
    invoke-static {}, Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher;->getInstance()Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/ve/view/paint/DrawingHolder;->mCurrentElement:Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v2, v3, p0, v0}, Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher;->setOperation(Lcom/samsung/app/video/editor/external/Element;Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher$DrawingThumbnaiFetcherCallbak;F)V

    goto :goto_6

    .line 91
    .end local v0           #CurrentStory_time:F
    :cond_34
    iget-object v2, p0, Lcom/sec/android/app/ve/view/paint/DrawingHolder;->mCurrentElement:Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {p0, v2}, Lcom/sec/android/app/ve/view/paint/DrawingHolder;->isDrawingElemExist(Lcom/samsung/app/video/editor/external/Element;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_16

    .line 114
    :cond_3f
    invoke-virtual {p0, v4}, Lcom/sec/android/app/ve/view/paint/DrawingHolder;->setDrawingClipartparams(Lcom/samsung/app/video/editor/external/ClipartParams;)V

    .line 115
    invoke-virtual {p0, v3}, Lcom/sec/android/app/ve/view/paint/DrawingHolder;->setDrawingvisible(Z)V

    goto :goto_6
.end method

.method public onUpdate(Lcom/samsung/app/video/editor/external/Element;)V
    .registers 2
    .parameter "updatedView"

    .prologue
    .line 71
    return-void
.end method

.method public setCurrentElement()V
    .registers 2

    .prologue
    .line 124
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 125
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getCurrentElement()Lcom/samsung/app/video/editor/external/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/ve/view/paint/DrawingHolder;->mCurrentElement:Lcom/samsung/app/video/editor/external/Element;

    .line 126
    :cond_10
    return-void
.end method

.method public setDrawingClipartparams(Lcom/samsung/app/video/editor/external/ClipartParams;)V
    .registers 3
    .parameter "mParams"

    .prologue
    .line 242
    iput-object p1, p0, Lcom/sec/android/app/ve/view/paint/DrawingHolder;->mClipartParams:Lcom/samsung/app/video/editor/external/ClipartParams;

    .line 243
    iget-object v0, p0, Lcom/sec/android/app/ve/view/paint/DrawingHolder;->mClipartParams:Lcom/samsung/app/video/editor/external/ClipartParams;

    if-eqz v0, :cond_a

    .line 244
    iget-object v0, p0, Lcom/sec/android/app/ve/view/paint/DrawingHolder;->mClipartParams:Lcom/samsung/app/video/editor/external/ClipartParams;

    iget-object v0, v0, Lcom/samsung/app/video/editor/external/ClipartParams;->Filepath:Ljava/lang/String;

    .line 249
    :cond_a
    return-void
.end method

.method public setDrawingvisible(Z)V
    .registers 5
    .parameter "mDrawingflag"

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 215
    if-nez p1, :cond_7

    .line 216
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/ve/view/paint/DrawingHolder;->mClipartParams:Lcom/samsung/app/video/editor/external/ClipartParams;

    .line 219
    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/paint/DrawingHolder;->getVisibility()I

    move-result v0

    if-nez v0, :cond_10

    if-eqz p1, :cond_10

    .line 238
    :cond_f
    :goto_f
    return-void

    .line 221
    :cond_10
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/paint/DrawingHolder;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_18

    if-eqz p1, :cond_f

    .line 224
    :cond_18
    if-eqz p1, :cond_25

    .line 226
    invoke-virtual {p0, v1}, Lcom/sec/android/app/ve/view/paint/DrawingHolder;->setVisibility(I)V

    .line 236
    :goto_1d
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->updateDrawingDurationButton(ZI)V

    goto :goto_f

    .line 230
    :cond_25
    invoke-virtual {p0, v2}, Lcom/sec/android/app/ve/view/paint/DrawingHolder;->setVisibility(I)V

    goto :goto_1d
.end method

.method public showClipArtParam()V
    .registers 4

    .prologue
    .line 163
    iget-object v1, p0, Lcom/sec/android/app/ve/view/paint/DrawingHolder;->mCurrentElement:Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/ve/view/paint/DrawingHolder;->isDrawingElemExist(Lcom/samsung/app/video/editor/external/Element;)Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-static {}, Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher;->getInstance()Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 165
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getCurrentTimeInSec()F

    move-result v0

    .line 180
    .local v0, CurrentStory_time:F
    invoke-static {}, Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher;->getInstance()Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/ve/view/paint/DrawingHolder;->mCurrentElement:Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v1, v2, p0, v0}, Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher;->setOperation(Lcom/samsung/app/video/editor/external/Element;Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher$DrawingThumbnaiFetcherCallbak;F)V

    .line 186
    .end local v0           #CurrentStory_time:F
    :goto_1f
    return-void

    .line 183
    :cond_20
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/ve/view/paint/DrawingHolder;->setDrawingvisible(Z)V

    goto :goto_1f
.end method

.method public showDrawing(Lcom/samsung/app/video/editor/external/Element;I)V
    .registers 6
    .parameter "mElement"
    .parameter "mCurSec"

    .prologue
    .line 191
    iput-object p1, p0, Lcom/sec/android/app/ve/view/paint/DrawingHolder;->mCurrentElement:Lcom/samsung/app/video/editor/external/Element;

    .line 192
    int-to-float v1, p2

    const/high16 v2, 0x447a

    div-float v0, v1, v2

    .line 193
    .local v0, CurrentStory_time:F
    invoke-virtual {p0, p1}, Lcom/sec/android/app/ve/view/paint/DrawingHolder;->isDrawingElemExist(Lcom/samsung/app/video/editor/external/Element;)Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-static {}, Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher;->getInstance()Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher;

    move-result-object v1

    if-eqz v1, :cond_1a

    .line 194
    invoke-static {}, Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher;->getInstance()Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher;

    move-result-object v1

    invoke-virtual {v1, p1, p0, v0}, Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher;->setOperation(Lcom/samsung/app/video/editor/external/Element;Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher$DrawingThumbnaiFetcherCallbak;F)V

    .line 196
    :cond_1a
    return-void
.end method
