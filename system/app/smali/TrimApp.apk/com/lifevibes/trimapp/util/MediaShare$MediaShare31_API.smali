.class Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;
.super Ljava/lang/Object;
.source "MediaShare.java"

# interfaces
.implements Lcom/lifevibes/trimapp/util/MediaShare$MediaShareAPI;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lifevibes/trimapp/util/MediaShare;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaShare31_API"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API$ActualExportThread;
    }
.end annotation


# instance fields
.field private final mExpertCancelHandler:Landroid/os/Handler;

.field private mExportThread:Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API$ActualExportThread;

.field private mListener:Lcom/lifevibes/trimapp/util/MediaShare$MediaShareListener;

.field private mMediaVideoItem:Lcom/lifevibes/videoeditor/MediaVideoItem;

.field private mOutput:Ljava/lang/String;

.field public mTrimmingStatus:I

.field private mVideoEditorImpl:Lcom/lifevibes/videoeditor/VideoEditorImpl;

.field final synthetic this$0:Lcom/lifevibes/trimapp/util/MediaShare;


# direct methods
.method private constructor <init>(Lcom/lifevibes/trimapp/util/MediaShare;)V
    .registers 3
    .parameter

    .prologue
    .line 248
    iput-object p1, p0, Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;->this$0:Lcom/lifevibes/trimapp/util/MediaShare;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 258
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;->mExpertCancelHandler:Landroid/os/Handler;

    .line 578
    return-void
.end method

.method synthetic constructor <init>(Lcom/lifevibes/trimapp/util/MediaShare;Lcom/lifevibes/trimapp/util/MediaShare$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 248
    invoke-direct {p0, p1}, Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;-><init>(Lcom/lifevibes/trimapp/util/MediaShare;)V

    return-void
.end method

.method static synthetic access$100(Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;)Lcom/lifevibes/trimapp/util/MediaShare$MediaShareListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 248
    iget-object v0, p0, Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;->mListener:Lcom/lifevibes/trimapp/util/MediaShare$MediaShareListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 248
    iget-object v0, p0, Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;->mOutput:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 248
    iget-object v0, p0, Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;->mExpertCancelHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;)Lcom/lifevibes/videoeditor/VideoEditorImpl;
    .registers 2
    .parameter "x0"

    .prologue
    .line 248
    iget-object v0, p0, Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;->mVideoEditorImpl:Lcom/lifevibes/videoeditor/VideoEditorImpl;

    return-object v0
.end method

.method static synthetic access$702(Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;Lcom/lifevibes/videoeditor/VideoEditorImpl;)Lcom/lifevibes/videoeditor/VideoEditorImpl;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 248
    iput-object p1, p0, Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;->mVideoEditorImpl:Lcom/lifevibes/videoeditor/VideoEditorImpl;

    return-object p1
.end method

.method static synthetic access$802(Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API$ActualExportThread;)Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API$ActualExportThread;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 248
    iput-object p1, p0, Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;->mExportThread:Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API$ActualExportThread;

    return-object p1
.end method


# virtual methods
.method public createThumbnail(Ljava/lang/String;II)Z
    .registers 10
    .parameter "input"
    .parameter "maximumWidth"
    .parameter "maximumHeight"

    .prologue
    const/4 v1, 0x0

    .line 348
    iget-object v2, p0, Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;->mVideoEditorImpl:Lcom/lifevibes/videoeditor/VideoEditorImpl;

    if-nez v2, :cond_c

    .line 349
    invoke-virtual {p0}, Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;->loadLibrary()Z

    move-result v2

    if-nez v2, :cond_c

    .line 365
    :goto_b
    return v1

    .line 354
    :cond_c
    :try_start_c
    const-string v2, "TrimApp_MS"

    const-string v3, "**** TN MediaVideoItem() call."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    new-instance v2, Lcom/lifevibes/videoeditor/MediaVideoItem;

    iget-object v3, p0, Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;->mVideoEditorImpl:Lcom/lifevibes/videoeditor/VideoEditorImpl;

    const-string v4, "ms3"

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, p1, v5}, Lcom/lifevibes/videoeditor/MediaVideoItem;-><init>(Lcom/lifevibes/videoeditor/VideoEditor;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;->mMediaVideoItem:Lcom/lifevibes/videoeditor/MediaVideoItem;

    .line 357
    const-string v2, "TrimApp_MS"

    const-string v3, "**** TN MediaVideoItem() done."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_26} :catch_28
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_26} :catch_46

    .line 358
    const/4 v1, 0x1

    goto :goto_b

    .line 359
    :catch_28
    move-exception v0

    .line 360
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    const-string v2, "TrimApp_MS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "new MediaVideoItem\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 361
    .end local v0           #ex:Ljava/lang/IllegalArgumentException;
    :catch_46
    move-exception v0

    .line 362
    .local v0, ex:Ljava/io/IOException;
    const-string v2, "TrimApp_MS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "new MediaVideoItem\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method

.method public getProperties(Ljava/lang/String;Lcom/lifevibes/trimapp/util/MediaShare$MediaShareProperties;)I
    .registers 16
    .parameter "input"
    .parameter "properties"

    .prologue
    const/4 v12, 0x5

    const/high16 v7, 0x4000

    const/4 v6, 0x0

    const v4, 0x40000008

    const v5, 0x4000000a

    .line 262
    const/4 v8, 0x1

    iput v8, p0, Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;->mTrimmingStatus:I

    .line 264
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 265
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/32 v10, 0x7fffffff

    cmp-long v8, v8, v10

    if-lez v8, :cond_21

    .line 266
    const v4, 0x40000006

    .line 343
    :goto_20
    return v4

    .line 268
    :cond_21
    iget-object v8, p0, Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;->mVideoEditorImpl:Lcom/lifevibes/videoeditor/VideoEditorImpl;

    if-nez v8, :cond_2f

    .line 269
    invoke-virtual {p0}, Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;->loadLibrary()Z

    move-result v8

    if-nez v8, :cond_2f

    .line 270
    const v4, -0x7ffffffc

    goto :goto_20

    .line 273
    :cond_2f
    const/4 v2, 0x0

    .line 275
    .local v2, mvi:Lcom/lifevibes/videoeditor/MediaVideoItem;
    :try_start_30
    new-instance v3, Lcom/lifevibes/videoeditor/MediaVideoItem;

    iget-object v8, p0, Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;->mVideoEditorImpl:Lcom/lifevibes/videoeditor/VideoEditorImpl;

    const-string v9, "m1"

    const/4 v10, 0x0

    invoke-direct {v3, v8, v9, p1, v10}, Lcom/lifevibes/videoeditor/MediaVideoItem;-><init>(Lcom/lifevibes/videoeditor/VideoEditor;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_3a
    .catchall {:try_start_30 .. :try_end_3a} :catchall_150
    .catch Ljava/lang/IllegalArgumentException; {:try_start_30 .. :try_end_3a} :catch_a1
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_3a} :catch_f8

    .line 282
    .end local v2           #mvi:Lcom/lifevibes/videoeditor/MediaVideoItem;
    .local v3, mvi:Lcom/lifevibes/videoeditor/MediaVideoItem;
    if-eqz v3, :cond_9e

    .line 283
    invoke-virtual {v3}, Lcom/lifevibes/videoeditor/MediaVideoItem;->getFileType()I

    move-result v8

    iput v8, p2, Lcom/lifevibes/trimapp/util/MediaShare$MediaShareProperties;->mFileType:I

    .line 284
    invoke-virtual {v3}, Lcom/lifevibes/videoeditor/MediaVideoItem;->getWidth()I

    move-result v8

    iput v8, p2, Lcom/lifevibes/trimapp/util/MediaShare$MediaShareProperties;->mWidth:I

    .line 285
    invoke-virtual {v3}, Lcom/lifevibes/videoeditor/MediaVideoItem;->getHeight()I

    move-result v8

    iput v8, p2, Lcom/lifevibes/trimapp/util/MediaShare$MediaShareProperties;->mHeight:I

    .line 286
    invoke-virtual {v3}, Lcom/lifevibes/videoeditor/MediaVideoItem;->getDuration()J

    move-result-wide v8

    long-to-int v8, v8

    iput v8, p2, Lcom/lifevibes/trimapp/util/MediaShare$MediaShareProperties;->mDurationMillis:I

    .line 287
    invoke-virtual {v3}, Lcom/lifevibes/videoeditor/MediaVideoItem;->getAspectRatio()I

    move-result v8

    iput v8, p2, Lcom/lifevibes/trimapp/util/MediaShare$MediaShareProperties;->mAspectRatio:I

    .line 288
    invoke-virtual {v3}, Lcom/lifevibes/videoeditor/MediaVideoItem;->getFps()I

    move-result v8

    iput v8, p2, Lcom/lifevibes/trimapp/util/MediaShare$MediaShareProperties;->mFps:I

    .line 289
    invoke-virtual {v3}, Lcom/lifevibes/videoeditor/MediaVideoItem;->getVideoType()I

    move-result v8

    iput v8, p2, Lcom/lifevibes/trimapp/util/MediaShare$MediaShareProperties;->mVideoType:I

    .line 290
    invoke-virtual {v3}, Lcom/lifevibes/videoeditor/MediaVideoItem;->getVideoBitrate()I

    move-result v8

    iput v8, p2, Lcom/lifevibes/trimapp/util/MediaShare$MediaShareProperties;->mVideoBitrate:I

    .line 291
    invoke-virtual {v3}, Lcom/lifevibes/videoeditor/MediaVideoItem;->getVideoProfile()I

    move-result v8

    iput v8, p2, Lcom/lifevibes/trimapp/util/MediaShare$MediaShareProperties;->mVideoProfile:I

    .line 292
    invoke-virtual {v3}, Lcom/lifevibes/videoeditor/MediaVideoItem;->getAudioType()I

    move-result v8

    iput v8, p2, Lcom/lifevibes/trimapp/util/MediaShare$MediaShareProperties;->mAudioType:I

    .line 293
    invoke-virtual {v3}, Lcom/lifevibes/videoeditor/MediaVideoItem;->getAudioBitrate()I

    move-result v8

    iput v8, p2, Lcom/lifevibes/trimapp/util/MediaShare$MediaShareProperties;->mAudioBitrate:I

    .line 294
    invoke-virtual {v3}, Lcom/lifevibes/videoeditor/MediaVideoItem;->getAudioChannels()I

    move-result v8

    iput v8, p2, Lcom/lifevibes/trimapp/util/MediaShare$MediaShareProperties;->mAudioChannels:I

    .line 295
    invoke-virtual {v3}, Lcom/lifevibes/videoeditor/MediaVideoItem;->getAudioSamplingFrequency()I

    move-result v8

    iput v8, p2, Lcom/lifevibes/trimapp/util/MediaShare$MediaShareProperties;->mAudioSamplingFrequency:I

    .line 308
    sget v8, Lcom/lifevibes/trimapp/Trim;->CURRENT_MODEL_TYPE:I

    and-int/2addr v7, v8

    if-eqz v7, :cond_23f

    .line 310
    iget v7, p2, Lcom/lifevibes/trimapp/util/MediaShare$MediaShareProperties;->mVideoProfile:I

    const/16 v8, 0xa5

    if-le v7, v8, :cond_24b

    .line 311
    const-string v5, "TrimApp_MS"

    const-string v6, "unsupported input profile or level"

    .end local v3           #mvi:Lcom/lifevibes/videoeditor/MediaVideoItem;
    :goto_9a
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20

    .restart local v3       #mvi:Lcom/lifevibes/videoeditor/MediaVideoItem;
    :cond_9e
    move-object v2, v3

    .end local v3           #mvi:Lcom/lifevibes/videoeditor/MediaVideoItem;
    .restart local v2       #mvi:Lcom/lifevibes/videoeditor/MediaVideoItem;
    :cond_9f
    move v4, v7

    .line 343
    goto :goto_20

    .line 277
    :catch_a1
    move-exception v0

    .line 278
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    :try_start_a2
    const-string v8, "TrimApp_MS"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "new MediaVideoItem\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_be
    .catchall {:try_start_a2 .. :try_end_be} :catchall_150

    .line 282
    if-eqz v2, :cond_9f

    .line 283
    throw v2

    move-result v8

    throw p2

    .line 284
    throw v2

    move-result v8

    throw p2

    .line 285
    throw v2

    move-result v8

    throw p2

    .line 286
    throw v2

    move-result-wide v8

    long-to-int v8, v8

    throw p2

    .line 287
    throw v2

    move-result v8

    throw p2

    .line 288
    throw v2

    move-result v8

    throw p2

    .line 289
    throw v2

    move-result v8

    throw p2

    .line 290
    throw v2

    move-result v8

    throw p2

    .line 291
    throw v2

    move-result v8

    throw p2

    .line 292
    throw v2

    move-result v8

    throw p2

    .line 293
    throw v2

    move-result v8

    throw p2

    .line 294
    throw v2

    move-result v8

    throw p2

    .line 295
    throw v2

    move-result v8

    throw p2

    .line 308
    sget v8, Lcom/lifevibes/trimapp/Trim;->CURRENT_MODEL_TYPE:I

    and-int/2addr v7, v8

    if-eqz v7, :cond_1d5

    .line 310
    throw p2

    const/16 v8, 0xa5

    if-le v7, v8, :cond_1df

    .line 311
    const-string v5, "TrimApp_MS"

    const-string v6, "unsupported input profile or level"

    goto/16 :goto_9a

    .line 279
    .end local v0           #ex:Ljava/lang/IllegalArgumentException;
    :catch_f8
    move-exception v0

    .line 280
    .local v0, ex:Ljava/io/IOException;
    :try_start_f9
    const-string v8, "TrimApp_MS"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "new MediaVideoItem\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_115
    .catchall {:try_start_f9 .. :try_end_115} :catchall_150

    .line 282
    if-eqz v2, :cond_9f

    .line 283
    throw v2

    move-result v8

    throw p2

    .line 284
    throw v2

    move-result v8

    throw p2

    .line 285
    throw v2

    move-result v8

    throw p2

    .line 286
    throw v2

    move-result-wide v8

    long-to-int v8, v8

    throw p2

    .line 287
    throw v2

    move-result v8

    throw p2

    .line 288
    throw v2

    move-result v8

    throw p2

    .line 289
    throw v2

    move-result v8

    throw p2

    .line 290
    throw v2

    move-result v8

    throw p2

    .line 291
    throw v2

    move-result v8

    throw p2

    .line 292
    throw v2

    move-result v8

    throw p2

    .line 293
    throw v2

    move-result v8

    throw p2

    .line 294
    throw v2

    move-result v8

    throw p2

    .line 295
    throw v2

    move-result v8

    throw p2

    .line 308
    sget v8, Lcom/lifevibes/trimapp/Trim;->CURRENT_MODEL_TYPE:I

    and-int/2addr v7, v8

    if-eqz v7, :cond_209

    .line 310
    throw p2

    const/16 v8, 0xa5

    if-le v7, v8, :cond_214

    .line 311
    const-string v5, "TrimApp_MS"

    const-string v6, "unsupported input profile or level"

    goto/16 :goto_9a

    .line 282
    .end local v0           #ex:Ljava/io/IOException;
    :cond_14f
    throw v8

    :catchall_150
    move-exception v8

    if-eqz v2, :cond_14f

    .line 283
    throw v2

    move-result v8

    throw p2

    .line 284
    throw v2

    move-result v8

    throw p2

    .line 285
    throw v2

    move-result v8

    throw p2

    .line 286
    throw v2

    move-result-wide v8

    long-to-int v8, v8

    throw p2

    .line 287
    throw v2

    move-result v8

    throw p2

    .line 288
    throw v2

    move-result v8

    throw p2

    .line 289
    throw v2

    move-result v8

    throw p2

    .line 290
    throw v2

    move-result v8

    throw p2

    .line 291
    throw v2

    move-result v8

    throw p2

    .line 292
    throw v2

    move-result v8

    throw p2

    .line 293
    throw v2

    move-result v8

    throw p2

    .line 294
    throw v2

    move-result v8

    throw p2

    .line 295
    throw v2

    move-result v8

    throw p2

    .line 308
    sget v8, Lcom/lifevibes/trimapp/Trim;->CURRENT_MODEL_TYPE:I

    and-int/2addr v7, v8

    if-eqz v7, :cond_18b

    .line 310
    throw p2

    const/16 v8, 0xa5

    if-le v7, v8, :cond_199

    .line 311
    const-string v5, "TrimApp_MS"

    const-string v6, "unsupported input profile or level"

    goto/16 :goto_9a

    .line 320
    :cond_18b
    throw p2

    const/16 v8, 0xe1

    if-ne v7, v8, :cond_1b3

    .line 321
    const-string v5, "TrimApp_MS"

    const-string v6, "unsupported input profile or level"

    .end local v2           #mvi:Lcom/lifevibes/videoeditor/MediaVideoItem;
    :goto_194
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_20

    .line 314
    .restart local v2       #mvi:Lcom/lifevibes/videoeditor/MediaVideoItem;
    :cond_199
    throw p2

    const/16 v7, 0x500

    if-le v4, v7, :cond_1a6

    throw p2

    const/16 v7, 0x2d0

    if-le v4, v7, :cond_1a6

    .end local v2           #mvi:Lcom/lifevibes/videoeditor/MediaVideoItem;
    :cond_1a3
    move v4, v5

    .line 315
    goto/16 :goto_20

    .line 329
    .restart local v2       #mvi:Lcom/lifevibes/videoeditor/MediaVideoItem;
    :cond_1a6
    throw p2

    const/16 v7, 0x80

    if-ge v4, v7, :cond_1c0

    throw p2

    const/16 v7, 0x60

    if-ge v4, v7, :cond_1c0

    .end local v2           #mvi:Lcom/lifevibes/videoeditor/MediaVideoItem;
    :cond_1b0
    move v4, v5

    .line 330
    goto/16 :goto_20

    .line 324
    .restart local v2       #mvi:Lcom/lifevibes/videoeditor/MediaVideoItem;
    :cond_1b3
    throw p2

    const/16 v7, 0x780

    if-le v4, v7, :cond_1a6

    throw p2

    const/16 v7, 0x438

    if-le v4, v7, :cond_1a6

    .end local v2           #mvi:Lcom/lifevibes/videoeditor/MediaVideoItem;
    :goto_1bd
    move v4, v5

    .line 325
    goto/16 :goto_20

    .line 333
    .restart local v2       #mvi:Lcom/lifevibes/videoeditor/MediaVideoItem;
    :cond_1c0
    throw p2

    throw p2

    throw p2

    throw p0

    move-result v4

    if-nez v4, :cond_1ca

    .end local v2           #mvi:Lcom/lifevibes/videoeditor/MediaVideoItem;
    :cond_1c7
    move v4, v5

    .line 334
    goto/16 :goto_20

    .line 336
    .restart local v2       #mvi:Lcom/lifevibes/videoeditor/MediaVideoItem;
    :cond_1ca
    throw p2

    if-ne v4, v12, :cond_1d2

    .line 337
    .end local v2           #mvi:Lcom/lifevibes/videoeditor/MediaVideoItem;
    :goto_1cd
    const v4, 0x4000000c

    goto/16 :goto_20

    :cond_1d2
    move v4, v6

    .line 339
    goto/16 :goto_20

    .line 320
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    .restart local v2       #mvi:Lcom/lifevibes/videoeditor/MediaVideoItem;
    :cond_1d5
    throw p2

    const/16 v8, 0xe1

    if-ne v7, v8, :cond_1fe

    .line 321
    const-string v5, "TrimApp_MS"

    const-string v6, "unsupported input profile or level"

    goto :goto_194

    .line 314
    :cond_1df
    throw p2

    const/16 v7, 0x500

    if-le v4, v7, :cond_1e9

    throw p2

    const/16 v7, 0x2d0

    if-gt v4, v7, :cond_1a3

    .line 329
    :cond_1e9
    throw p2

    const/16 v7, 0x80

    if-ge v4, v7, :cond_1f3

    throw p2

    const/16 v7, 0x60

    if-lt v4, v7, :cond_1b0

    .line 333
    :cond_1f3
    throw p2

    throw p2

    throw p2

    throw p0

    move-result v4

    if-eqz v4, :cond_1c7

    .line 336
    throw p2

    if-ne v4, v12, :cond_1d2

    goto :goto_1cd

    .line 324
    :cond_1fe
    throw p2

    const/16 v7, 0x780

    if-le v4, v7, :cond_1e9

    throw p2

    const/16 v7, 0x438

    if-le v4, v7, :cond_1e9

    goto :goto_1bd

    .line 320
    .local v0, ex:Ljava/io/IOException;
    :cond_209
    throw p2

    const/16 v8, 0xe1

    if-ne v7, v8, :cond_233

    .line 321
    const-string v5, "TrimApp_MS"

    const-string v6, "unsupported input profile or level"

    goto/16 :goto_194

    .line 314
    :cond_214
    throw p2

    const/16 v7, 0x500

    if-le v4, v7, :cond_21e

    throw p2

    const/16 v7, 0x2d0

    if-gt v4, v7, :cond_1a3

    .line 329
    :cond_21e
    throw p2

    const/16 v7, 0x80

    if-ge v4, v7, :cond_228

    throw p2

    const/16 v7, 0x60

    if-lt v4, v7, :cond_1b0

    .line 333
    :cond_228
    throw p2

    throw p2

    throw p2

    throw p0

    move-result v4

    if-eqz v4, :cond_1c7

    .line 336
    throw p2

    if-ne v4, v12, :cond_1d2

    goto :goto_1cd

    .line 324
    :cond_233
    throw p2

    const/16 v7, 0x780

    if-le v4, v7, :cond_21e

    throw p2

    const/16 v7, 0x438

    if-le v4, v7, :cond_21e

    goto/16 :goto_1bd

    .line 320
    .end local v0           #ex:Ljava/io/IOException;
    .end local v2           #mvi:Lcom/lifevibes/videoeditor/MediaVideoItem;
    .restart local v3       #mvi:Lcom/lifevibes/videoeditor/MediaVideoItem;
    :cond_23f
    iget v7, p2, Lcom/lifevibes/trimapp/util/MediaShare$MediaShareProperties;->mVideoProfile:I

    const/16 v8, 0xe1

    if-ne v7, v8, :cond_275

    .line 321
    const-string v5, "TrimApp_MS"

    const-string v6, "unsupported input profile or level"

    goto/16 :goto_194

    .line 314
    :cond_24b
    iget v4, p2, Lcom/lifevibes/trimapp/util/MediaShare$MediaShareProperties;->mWidth:I

    const/16 v7, 0x500

    if-le v4, v7, :cond_257

    iget v4, p2, Lcom/lifevibes/trimapp/util/MediaShare$MediaShareProperties;->mHeight:I

    const/16 v7, 0x2d0

    if-gt v4, v7, :cond_1a3

    .line 329
    :cond_257
    iget v4, p2, Lcom/lifevibes/trimapp/util/MediaShare$MediaShareProperties;->mWidth:I

    const/16 v7, 0x80

    if-ge v4, v7, :cond_263

    iget v4, p2, Lcom/lifevibes/trimapp/util/MediaShare$MediaShareProperties;->mHeight:I

    const/16 v7, 0x60

    if-lt v4, v7, :cond_1b0

    .line 333
    :cond_263
    iget v4, p2, Lcom/lifevibes/trimapp/util/MediaShare$MediaShareProperties;->mWidth:I

    iget v7, p2, Lcom/lifevibes/trimapp/util/MediaShare$MediaShareProperties;->mHeight:I

    iget v8, p2, Lcom/lifevibes/trimapp/util/MediaShare$MediaShareProperties;->mVideoType:I

    invoke-virtual {p0, v4, v7, v8}, Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;->isNullEncordingAvailable(III)Z

    move-result v4

    if-eqz v4, :cond_1c7

    .line 336
    iget v4, p2, Lcom/lifevibes/trimapp/util/MediaShare$MediaShareProperties;->mAudioType:I

    if-ne v4, v12, :cond_1d2

    goto/16 :goto_1cd

    .line 324
    :cond_275
    iget v4, p2, Lcom/lifevibes/trimapp/util/MediaShare$MediaShareProperties;->mWidth:I

    const/16 v7, 0x780

    if-le v4, v7, :cond_257

    iget v4, p2, Lcom/lifevibes/trimapp/util/MediaShare$MediaShareProperties;->mHeight:I

    const/16 v7, 0x438

    if-le v4, v7, :cond_257

    goto/16 :goto_1bd
.end method

.method public getThumbnail(III)Landroid/graphics/Bitmap;
    .registers 9
    .parameter "width"
    .parameter "height"
    .parameter "timeMillis"

    .prologue
    const/4 v1, 0x0

    .line 391
    iget-object v2, p0, Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;->mMediaVideoItem:Lcom/lifevibes/videoeditor/MediaVideoItem;

    if-nez v2, :cond_d

    .line 392
    const-string v2, "TrimApp_MS"

    const-string v3, "MediaVideoItem should be created before call this function"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    :goto_c
    return-object v1

    .line 398
    :cond_d
    :try_start_d
    iget-object v2, p0, Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;->mMediaVideoItem:Lcom/lifevibes/videoeditor/MediaVideoItem;

    int-to-long v3, p3

    invoke-virtual {v2, p1, p2, v3, v4}, Lcom/lifevibes/videoeditor/MediaVideoItem;->getThumbnail(IIJ)Landroid/graphics/Bitmap;
    :try_end_13
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_13} :catch_15
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_13} :catch_33
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_13} :catch_51

    move-result-object v1

    goto :goto_c

    .line 399
    :catch_15
    move-exception v0

    .line 400
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    const-string v2, "TrimApp_MS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MediaVideoItem getThumbnail()\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 401
    .end local v0           #ex:Ljava/lang/IllegalArgumentException;
    :catch_33
    move-exception v0

    .line 402
    .local v0, ex:Ljava/lang/IllegalStateException;
    const-string v2, "TrimApp_MS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MediaVideoItem getThumbnail()\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 403
    .end local v0           #ex:Ljava/lang/IllegalStateException;
    :catch_51
    move-exception v0

    .line 404
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v1, "TrimApp_MS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaVideoItem getThumbnail()\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getTrimmingStatus()I
    .registers 2

    .prologue
    .line 445
    iget v0, p0, Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;->mTrimmingStatus:I

    return v0
.end method

.method public isNullEncordingAvailable(III)Z
    .registers 10
    .parameter "width"
    .parameter "height"
    .parameter "videoFormat"

    .prologue
    const/4 v1, 0x0

    const/16 v5, 0x438

    const/16 v4, 0x2d0

    const/16 v3, 0x1e0

    const/4 v0, 0x1

    .line 524
    const/16 v2, 0x780

    if-gt p1, v2, :cond_e

    if-le p2, v5, :cond_10

    :cond_e
    move v0, v1

    .line 555
    :cond_f
    :goto_f
    return v0

    .line 526
    :cond_10
    const/16 v2, 0x780

    if-ne p1, v2, :cond_18

    if-ne p2, v5, :cond_18

    if-ne p3, v0, :cond_f

    .line 528
    :cond_18
    const/16 v2, 0x500

    if-ne p1, v2, :cond_20

    if-ne p2, v4, :cond_20

    if-ne p3, v0, :cond_f

    .line 530
    :cond_20
    if-ne p1, v5, :cond_26

    if-ne p2, v4, :cond_26

    if-ne p3, v0, :cond_f

    .line 532
    :cond_26
    const/16 v2, 0x3c0

    if-ne p1, v2, :cond_2e

    if-ne p2, v4, :cond_2e

    if-ne p3, v0, :cond_f

    .line 534
    :cond_2e
    const/16 v2, 0x356

    if-ne p1, v2, :cond_36

    if-ne p2, v3, :cond_36

    if-ne p3, v0, :cond_f

    .line 536
    :cond_36
    const/16 v2, 0x320

    if-ne p1, v2, :cond_3e

    if-ne p2, v3, :cond_3e

    if-ne p3, v0, :cond_f

    .line 538
    :cond_3e
    if-ne p1, v4, :cond_44

    if-ne p2, v3, :cond_44

    if-ne p3, v0, :cond_f

    .line 540
    :cond_44
    const/16 v2, 0x280

    if-ne p1, v2, :cond_4c

    if-ne p2, v3, :cond_4c

    if-ne p3, v0, :cond_f

    .line 542
    :cond_4c
    const/16 v2, 0x280

    if-ne p1, v2, :cond_56

    const/16 v2, 0x168

    if-ne p2, v2, :cond_56

    if-ne p3, v0, :cond_f

    .line 544
    :cond_56
    const/16 v2, 0x160

    if-ne p1, v2, :cond_5e

    const/16 v2, 0x120

    if-eq p2, v2, :cond_f

    .line 546
    :cond_5e
    const/16 v2, 0x140

    if-ne p1, v2, :cond_68

    const/16 v2, 0xf0

    if-ne p2, v2, :cond_68

    if-ne p3, v0, :cond_f

    .line 548
    :cond_68
    const/16 v2, 0xb0

    if-ne p1, v2, :cond_70

    const/16 v2, 0x90

    if-eq p2, v2, :cond_f

    .line 550
    :cond_70
    const/16 v2, 0xa0

    if-ne p1, v2, :cond_7a

    const/16 v2, 0x78

    if-ne p2, v2, :cond_7a

    if-ne p3, v0, :cond_f

    .line 552
    :cond_7a
    const/16 v2, 0x80

    if-ne p1, v2, :cond_82

    const/16 v2, 0x60

    if-eq p2, v2, :cond_f

    :cond_82
    move v0, v1

    .line 555
    goto :goto_f
.end method

.method public loadLibrary()Z
    .registers 6

    .prologue
    .line 560
    const-string v1, "/mnt/sdcard/Output/"

    .line 563
    .local v1, projectPath:Ljava/lang/String;
    :try_start_2
    new-instance v2, Lcom/lifevibes/videoeditor/VideoEditorImpl;

    invoke-direct {v2, v1}, Lcom/lifevibes/videoeditor/VideoEditorImpl;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;->mVideoEditorImpl:Lcom/lifevibes/videoeditor/VideoEditorImpl;
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_9} :catch_b
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_9} :catch_2a
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_2 .. :try_end_9} :catch_48
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_9} :catch_66

    .line 564
    const/4 v2, 0x1

    .line 575
    :goto_a
    return v2

    .line 565
    :catch_b
    move-exception v0

    .line 566
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    const-string v2, "TrimApp_MS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loading VideoEditorImpl JNI\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    .end local v0           #ex:Ljava/lang/IllegalArgumentException;
    :goto_28
    const/4 v2, 0x0

    goto :goto_a

    .line 567
    :catch_2a
    move-exception v0

    .line 568
    .local v0, ex:Ljava/io/FileNotFoundException;
    const-string v2, "TrimApp_MS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loading VideoEditorImpl JNI\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28

    .line 569
    .end local v0           #ex:Ljava/io/FileNotFoundException;
    :catch_48
    move-exception v0

    .line 570
    .local v0, ex:Ljava/lang/ExceptionInInitializerError;
    const-string v2, "TrimApp_MS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loading VideoEditorImpl JNI\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/ExceptionInInitializerError;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28

    .line 571
    .end local v0           #ex:Ljava/lang/ExceptionInInitializerError;
    :catch_66
    move-exception v0

    .line 572
    .local v0, ex:Ljava/io/IOException;
    const-string v2, "TrimApp_MS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loading VideoEditorImpl JNI\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28
.end method

.method public releaseThumbnail()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 433
    iget-object v0, p0, Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;->mVideoEditorImpl:Lcom/lifevibes/videoeditor/VideoEditorImpl;

    if-eqz v0, :cond_1c

    .line 434
    const-string v0, "TrimApp_MS"

    const-string v1, "**** TN VideoEditorImpl release() call."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    iget-object v0, p0, Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;->mVideoEditorImpl:Lcom/lifevibes/videoeditor/VideoEditorImpl;

    invoke-virtual {v0}, Lcom/lifevibes/videoeditor/VideoEditorImpl;->release()V

    .line 436
    const-string v0, "TrimApp_MS"

    const-string v1, "**** TN VideoEditorImpl release() done."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    iput-object v2, p0, Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;->mMediaVideoItem:Lcom/lifevibes/videoeditor/MediaVideoItem;

    .line 438
    iput-object v2, p0, Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;->mVideoEditorImpl:Lcom/lifevibes/videoeditor/VideoEditorImpl;

    .line 440
    :cond_1c
    const/4 v0, 0x1

    return v0
.end method

.method public releaseTrimming()Z
    .registers 3

    .prologue
    .line 510
    iget-object v0, p0, Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;->mExportThread:Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API$ActualExportThread;

    if-eqz v0, :cond_9

    .line 511
    iget-object v0, p0, Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;->mExportThread:Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API$ActualExportThread;

    invoke-virtual {v0}, Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API$ActualExportThread;->cancel()V

    .line 513
    :cond_9
    iget v0, p0, Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;->mTrimmingStatus:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_28

    iget-object v0, p0, Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;->mVideoEditorImpl:Lcom/lifevibes/videoeditor/VideoEditorImpl;

    if-eqz v0, :cond_28

    .line 514
    const-string v0, "TrimApp_MS"

    const-string v1, "**** Trim VideoEditorImpl release() call."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    iget-object v0, p0, Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;->mVideoEditorImpl:Lcom/lifevibes/videoeditor/VideoEditorImpl;

    invoke-virtual {v0}, Lcom/lifevibes/videoeditor/VideoEditorImpl;->release()V

    .line 516
    const-string v0, "TrimApp_MS"

    const-string v1, "**** Trim VideoEditorImpl release() done."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;->mVideoEditorImpl:Lcom/lifevibes/videoeditor/VideoEditorImpl;

    .line 519
    :cond_28
    const/4 v0, 0x1

    return v0
.end method

.method public startTrimming(Ljava/lang/String;Ljava/lang/String;IILcom/lifevibes/trimapp/util/MediaShare$MediaShareListener;)I
    .registers 16
    .parameter "input"
    .parameter "output"
    .parameter "beginMillis"
    .parameter "endMillis"
    .parameter "listener"

    .prologue
    const/4 v5, 0x0

    const v4, -0x7ffffffc

    .line 453
    iget-object v6, p0, Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;->mVideoEditorImpl:Lcom/lifevibes/videoeditor/VideoEditorImpl;

    if-nez v6, :cond_13

    .line 454
    invoke-virtual {p0}, Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;->loadLibrary()Z

    move-result v6

    if-nez v6, :cond_f

    .line 505
    :cond_e
    :goto_e
    return v4

    .line 457
    :cond_f
    iget-object v6, p0, Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;->mVideoEditorImpl:Lcom/lifevibes/videoeditor/VideoEditorImpl;

    if-eqz v6, :cond_e

    .line 461
    :cond_13
    const/4 v2, 0x0

    .line 462
    .local v2, mediaVideoItem:Lcom/lifevibes/videoeditor/MediaVideoItem;
    const/4 v0, 0x1

    .line 464
    .local v0, err:Z
    :try_start_15
    new-instance v3, Lcom/lifevibes/videoeditor/MediaVideoItem;

    iget-object v6, p0, Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;->mVideoEditorImpl:Lcom/lifevibes/videoeditor/VideoEditorImpl;

    const-string v7, "ms3"

    const/4 v8, 0x0

    invoke-direct {v3, v6, v7, p1, v8}, Lcom/lifevibes/videoeditor/MediaVideoItem;-><init>(Lcom/lifevibes/videoeditor/VideoEditor;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_15 .. :try_end_1f} :catch_49
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_1f} :catch_67

    .line 466
    .end local v2           #mediaVideoItem:Lcom/lifevibes/videoeditor/MediaVideoItem;
    .local v3, mediaVideoItem:Lcom/lifevibes/videoeditor/MediaVideoItem;
    const/4 v0, 0x0

    move-object v2, v3

    .line 472
    .end local v3           #mediaVideoItem:Lcom/lifevibes/videoeditor/MediaVideoItem;
    .restart local v2       #mediaVideoItem:Lcom/lifevibes/videoeditor/MediaVideoItem;
    :goto_21
    if-nez v0, :cond_e

    .line 476
    const/4 v0, 0x1

    .line 478
    int-to-long v6, p3

    int-to-long v8, p4

    :try_start_26
    invoke-virtual {v2, v6, v7, v8, v9}, Lcom/lifevibes/videoeditor/MediaVideoItem;->setExtractBoundaries(JJ)V
    :try_end_29
    .catch Ljava/lang/IllegalArgumentException; {:try_start_26 .. :try_end_29} :catch_85

    .line 479
    const/4 v0, 0x0

    .line 483
    :goto_2a
    if-nez v0, :cond_e

    .line 487
    const/4 v0, 0x1

    .line 489
    :try_start_2d
    iget-object v6, p0, Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;->mVideoEditorImpl:Lcom/lifevibes/videoeditor/VideoEditorImpl;

    invoke-virtual {v6, v2}, Lcom/lifevibes/videoeditor/VideoEditorImpl;->addMediaItem(Lcom/lifevibes/videoeditor/MediaItem;)V
    :try_end_32
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2d .. :try_end_32} :catch_a3
    .catch Ljava/lang/IllegalStateException; {:try_start_2d .. :try_end_32} :catch_c2

    .line 490
    const/4 v0, 0x0

    .line 496
    :goto_33
    if-nez v0, :cond_e

    .line 500
    iput-object p2, p0, Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;->mOutput:Ljava/lang/String;

    .line 501
    iput-object p5, p0, Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;->mListener:Lcom/lifevibes/trimapp/util/MediaShare$MediaShareListener;

    .line 502
    new-instance v4, Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API$ActualExportThread;

    invoke-direct {v4, p0}, Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API$ActualExportThread;-><init>(Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;)V

    iput-object v4, p0, Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;->mExportThread:Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API$ActualExportThread;

    .line 503
    iget-object v4, p0, Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;->mExportThread:Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API$ActualExportThread;

    new-array v6, v5, [Ljava/lang/Void;

    invoke-virtual {v4, v6}, Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API$ActualExportThread;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move v4, v5

    .line 505
    goto :goto_e

    .line 467
    :catch_49
    move-exception v1

    .line 468
    .local v1, ex:Ljava/lang/IllegalArgumentException;
    const-string v6, "TrimApp_MS"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "new MediaVideoItem\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21

    .line 469
    .end local v1           #ex:Ljava/lang/IllegalArgumentException;
    :catch_67
    move-exception v1

    .line 470
    .local v1, ex:Ljava/io/IOException;
    const-string v6, "TrimApp_MS"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "new MediaVideoItem\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21

    .line 480
    .end local v1           #ex:Ljava/io/IOException;
    :catch_85
    move-exception v1

    .line 481
    .local v1, ex:Ljava/lang/IllegalArgumentException;
    const-string v6, "TrimApp_MS"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MediaVideoItem setExtractBoundaries()\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    .line 491
    .end local v1           #ex:Ljava/lang/IllegalArgumentException;
    :catch_a3
    move-exception v1

    .line 492
    .restart local v1       #ex:Ljava/lang/IllegalArgumentException;
    const-string v6, "TrimApp_MS"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "VideoEditorImpl addMediaItem()\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_33

    .line 493
    .end local v1           #ex:Ljava/lang/IllegalArgumentException;
    :catch_c2
    move-exception v1

    .line 494
    .local v1, ex:Ljava/lang/IllegalStateException;
    const-string v6, "TrimApp_MS"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "VideoEditorImpl addMediaItem()\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_33
.end method
