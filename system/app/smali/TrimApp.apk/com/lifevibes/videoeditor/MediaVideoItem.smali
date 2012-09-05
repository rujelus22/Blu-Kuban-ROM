.class public Lcom/lifevibes/videoeditor/MediaVideoItem;
.super Lcom/lifevibes/videoeditor/MediaItem;
.source "MediaVideoItem.java"


# instance fields
.field private final mAspectRatio:I

.field private final mAudioBitrate:I

.field private final mAudioChannels:I

.field private final mAudioSamplingFrequency:I

.field private final mAudioType:I

.field private mAudioWaveformFilename:Ljava/lang/String;

.field private mBeginBoundaryTimeMs:J

.field private final mDurationMs:J

.field private mEndBoundaryTimeMs:J

.field private mExclude:Z

.field private mExcludeBeginTime:J

.field private mExcludeEndTime:J

.field private final mFileType:I

.field private final mFps:I

.field private final mHeight:I

.field private mIsVideo3D:Z

.field private mMANativeHelper:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;

.field private mMuted:Z

.field private final mVideoBitrate:I

.field private mVideoEditor:Lcom/lifevibes/videoeditor/VideoEditorImpl;

.field private final mVideoProfile:I

.field private final mVideoType:I

.field private mVolumePercentage:I

.field private final mWidth:I

.field private originalVolume:I


# direct methods
.method private constructor <init>()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, v1, v1, v1, v0}, Lcom/lifevibes/videoeditor/MediaVideoItem;-><init>(Lcom/lifevibes/videoeditor/VideoEditor;Ljava/lang/String;Ljava/lang/String;I)V

    .line 98
    return-void
.end method

.method public constructor <init>(Lcom/lifevibes/videoeditor/VideoEditor;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 17
    .parameter "editor"
    .parameter "mediaItemId"
    .parameter "filename"
    .parameter "renderingMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    const-wide/16 v5, 0x0

    const-wide/16 v7, -0x1

    const/16 v9, 0x64

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    invoke-direct/range {v0 .. v11}, Lcom/lifevibes/videoeditor/MediaVideoItem;-><init>(Lcom/lifevibes/videoeditor/VideoEditor;Ljava/lang/String;Ljava/lang/String;IJJIZLjava/lang/String;)V

    .line 113
    return-void
.end method

.method constructor <init>(Lcom/lifevibes/videoeditor/VideoEditor;Ljava/lang/String;Ljava/lang/String;IJJIZLjava/lang/String;)V
    .registers 18
    .parameter "editor"
    .parameter "mediaItemId"
    .parameter "filename"
    .parameter "renderingMode"
    .parameter "beginMs"
    .parameter "endMs"
    .parameter "volumePercent"
    .parameter "muted"
    .parameter "audioWaveformFilename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lifevibes/videoeditor/MediaItem;-><init>(Lcom/lifevibes/videoeditor/VideoEditor;Ljava/lang/String;Ljava/lang/String;I)V

    .line 138
    instance-of v3, p1, Lcom/lifevibes/videoeditor/VideoEditorImpl;

    if-eqz v3, :cond_14

    move-object v3, p1

    .line 139
    check-cast v3, Lcom/lifevibes/videoeditor/VideoEditorImpl;

    invoke-virtual {v3}, Lcom/lifevibes/videoeditor/VideoEditorImpl;->getNativeContext()Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;

    move-result-object v3

    iput-object v3, p0, Lcom/lifevibes/videoeditor/MediaVideoItem;->mMANativeHelper:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;

    .line 140
    check-cast p1, Lcom/lifevibes/videoeditor/VideoEditorImpl;

    .end local p1
    iput-object p1, p0, Lcom/lifevibes/videoeditor/MediaVideoItem;->mVideoEditor:Lcom/lifevibes/videoeditor/VideoEditorImpl;

    .line 145
    :cond_14
    :try_start_14
    iget-object v3, p0, Lcom/lifevibes/videoeditor/MediaVideoItem;->mMANativeHelper:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;

    invoke-virtual {v3, p3}, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->getMediaProperties(Ljava/lang/String;)Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_19} :catch_2d

    move-result-object v2

    .line 150
    .local v2, properties:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;
    iget-object v3, p0, Lcom/lifevibes/videoeditor/MediaVideoItem;->mMANativeHelper:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;

    iget v4, v2, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;->fileType:I

    invoke-virtual {v3, v4}, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->getFileType(I)I

    move-result v3

    sparse-switch v3, :sswitch_data_100

    .line 157
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unsupported Input File Type"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 146
    .end local v2           #properties:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;
    :catch_2d
    move-exception v1

    .line 147
    .local v1, e:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 160
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v2       #properties:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;
    :sswitch_4f
    iget-object v3, p0, Lcom/lifevibes/videoeditor/MediaVideoItem;->mMANativeHelper:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;

    iget v4, v2, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;->videoFormat:I

    invoke-virtual {v3, v4}, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->getVideoCodecType(I)I

    move-result v3

    packed-switch v3, :pswitch_data_10e

    .line 169
    :pswitch_5a
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unsupported Video Codec Format in Input File"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 172
    :pswitch_62
    iget v3, v2, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;->audioFormat:I

    if-eqz v3, :cond_79

    .line 173
    iget-object v3, p0, Lcom/lifevibes/videoeditor/MediaVideoItem;->mMANativeHelper:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;

    iget v4, v2, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;->audioFormat:I

    invoke-virtual {v3, v4}, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->getAudioCodecType(I)I

    move-result v3

    packed-switch v3, :pswitch_data_11e

    .line 182
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unsupported Audio Codec Format in Input File"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 186
    :cond_79
    :pswitch_79
    iget v3, v2, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;->profileAndLevel:I

    const/16 v4, 0xff

    if-ne v3, v4, :cond_87

    .line 187
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unsupported Video Codec Profile in Input File"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 190
    :cond_87
    iget-boolean v3, v2, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;->bIsVideo3D:Z

    iput-boolean v3, p0, Lcom/lifevibes/videoeditor/MediaVideoItem;->mIsVideo3D:Z

    .line 191
    iget v3, v2, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;->width:I

    iput v3, p0, Lcom/lifevibes/videoeditor/MediaVideoItem;->mWidth:I

    .line 192
    iget v3, v2, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;->height:I

    iput v3, p0, Lcom/lifevibes/videoeditor/MediaVideoItem;->mHeight:I

    .line 193
    iget-object v3, p0, Lcom/lifevibes/videoeditor/MediaVideoItem;->mMANativeHelper:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;

    iget v4, v2, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;->width:I

    iget v5, v2, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;->height:I

    invoke-virtual {v3, v4, v5}, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->getAspectRatio(II)I

    move-result v3

    iput v3, p0, Lcom/lifevibes/videoeditor/MediaVideoItem;->mAspectRatio:I

    .line 195
    iget-object v3, p0, Lcom/lifevibes/videoeditor/MediaVideoItem;->mMANativeHelper:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;

    iget v4, v2, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;->fileType:I

    invoke-virtual {v3, v4}, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->getFileType(I)I

    move-result v3

    iput v3, p0, Lcom/lifevibes/videoeditor/MediaVideoItem;->mFileType:I

    .line 196
    iget-object v3, p0, Lcom/lifevibes/videoeditor/MediaVideoItem;->mMANativeHelper:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;

    iget v4, v2, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;->videoFormat:I

    invoke-virtual {v3, v4}, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->getVideoCodecType(I)I

    move-result v3

    iput v3, p0, Lcom/lifevibes/videoeditor/MediaVideoItem;->mVideoType:I

    .line 197
    iget v3, v2, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;->profileAndLevel:I

    iput v3, p0, Lcom/lifevibes/videoeditor/MediaVideoItem;->mVideoProfile:I

    .line 198
    iget v3, v2, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;->videoDuration:I

    int-to-long v3, v3

    iput-wide v3, p0, Lcom/lifevibes/videoeditor/MediaVideoItem;->mDurationMs:J

    .line 199
    iget v3, v2, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;->videoBitrate:I

    iput v3, p0, Lcom/lifevibes/videoeditor/MediaVideoItem;->mVideoBitrate:I

    .line 200
    iget v3, v2, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;->audioBitrate:I

    iput v3, p0, Lcom/lifevibes/videoeditor/MediaVideoItem;->mAudioBitrate:I

    .line 201
    iget v3, v2, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;->averageFrameRate:F

    float-to-int v3, v3

    iput v3, p0, Lcom/lifevibes/videoeditor/MediaVideoItem;->mFps:I

    .line 202
    iget-object v3, p0, Lcom/lifevibes/videoeditor/MediaVideoItem;->mMANativeHelper:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;

    iget v4, v2, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;->audioFormat:I

    invoke-virtual {v3, v4}, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->getAudioCodecType(I)I

    move-result v3

    iput v3, p0, Lcom/lifevibes/videoeditor/MediaVideoItem;->mAudioType:I

    .line 203
    iget v3, v2, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;->audioChannels:I

    iput v3, p0, Lcom/lifevibes/videoeditor/MediaVideoItem;->mAudioChannels:I

    .line 204
    iget v3, v2, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;->audioSamplingFrequency:I

    iput v3, p0, Lcom/lifevibes/videoeditor/MediaVideoItem;->mAudioSamplingFrequency:I

    .line 205
    iput-wide p5, p0, Lcom/lifevibes/videoeditor/MediaVideoItem;->mBeginBoundaryTimeMs:J

    .line 206
    const-wide/16 v3, -0x1

    cmp-long v3, p7, v3

    if-nez v3, :cond_e5

    iget-wide p7, p0, Lcom/lifevibes/videoeditor/MediaVideoItem;->mDurationMs:J

    .end local p7
    :cond_e5
    iput-wide p7, p0, Lcom/lifevibes/videoeditor/MediaVideoItem;->mEndBoundaryTimeMs:J

    .line 207
    iput p9, p0, Lcom/lifevibes/videoeditor/MediaVideoItem;->mVolumePercentage:I

    iput p9, p0, Lcom/lifevibes/videoeditor/MediaVideoItem;->originalVolume:I

    .line 208
    move/from16 v0, p10

    iput-boolean v0, p0, Lcom/lifevibes/videoeditor/MediaVideoItem;->mMuted:Z

    .line 209
    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/lifevibes/videoeditor/MediaVideoItem;->mAudioWaveformFilename:Ljava/lang/String;

    .line 213
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/lifevibes/videoeditor/MediaVideoItem;->mExcludeBeginTime:J

    .line 214
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/lifevibes/videoeditor/MediaVideoItem;->mExcludeEndTime:J

    .line 216
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/lifevibes/videoeditor/MediaVideoItem;->mExclude:Z

    .line 217
    return-void

    .line 150
    nop

    :sswitch_data_100
    .sparse-switch
        0x0 -> :sswitch_4f
        0x1 -> :sswitch_4f
        0xa -> :sswitch_4f
    .end sparse-switch

    .line 160
    :pswitch_data_10e
    .packed-switch 0x1
        :pswitch_62
        :pswitch_62
        :pswitch_5a
        :pswitch_62
        :pswitch_62
        :pswitch_62
    .end packed-switch

    .line 173
    :pswitch_data_11e
    .packed-switch 0x1
        :pswitch_79
        :pswitch_79
        :pswitch_79
        :pswitch_79
        :pswitch_79
    .end packed-switch
.end method


# virtual methods
.method public getAspectRatio()I
    .registers 2

    .prologue
    .line 538
    iget v0, p0, Lcom/lifevibes/videoeditor/MediaVideoItem;->mAspectRatio:I

    return v0
.end method

.method public getAudioBitrate()I
    .registers 2

    .prologue
    .line 617
    iget v0, p0, Lcom/lifevibes/videoeditor/MediaVideoItem;->mAudioBitrate:I

    return v0
.end method

.method public getAudioChannels()I
    .registers 2

    .prologue
    .line 638
    iget v0, p0, Lcom/lifevibes/videoeditor/MediaVideoItem;->mAudioChannels:I

    return v0
.end method

.method public getAudioSamplingFrequency()I
    .registers 2

    .prologue
    .line 645
    iget v0, p0, Lcom/lifevibes/videoeditor/MediaVideoItem;->mAudioSamplingFrequency:I

    return v0
.end method

.method public getAudioType()I
    .registers 2

    .prologue
    .line 631
    iget v0, p0, Lcom/lifevibes/videoeditor/MediaVideoItem;->mAudioType:I

    return v0
.end method

.method public getBoundaryBeginTime()J
    .registers 3

    .prologue
    .line 267
    iget-wide v0, p0, Lcom/lifevibes/videoeditor/MediaVideoItem;->mBeginBoundaryTimeMs:J

    return-wide v0
.end method

.method public getBoundaryEndTime()J
    .registers 3

    .prologue
    .line 274
    iget-wide v0, p0, Lcom/lifevibes/videoeditor/MediaVideoItem;->mEndBoundaryTimeMs:J

    return-wide v0
.end method

.method public getDuration()J
    .registers 3

    .prologue
    .line 570
    iget-wide v0, p0, Lcom/lifevibes/videoeditor/MediaVideoItem;->mDurationMs:J

    return-wide v0
.end method

.method getExcludeBeginTime()J
    .registers 3

    .prologue
    .line 702
    iget-wide v0, p0, Lcom/lifevibes/videoeditor/MediaVideoItem;->mExcludeBeginTime:J

    return-wide v0
.end method

.method getExcludeEndTime()J
    .registers 3

    .prologue
    .line 705
    iget-wide v0, p0, Lcom/lifevibes/videoeditor/MediaVideoItem;->mExcludeEndTime:J

    return-wide v0
.end method

.method public getFileType()I
    .registers 2

    .prologue
    .line 546
    iget v0, p0, Lcom/lifevibes/videoeditor/MediaVideoItem;->mFileType:I

    return v0
.end method

.method public getFps()I
    .registers 2

    .prologue
    .line 624
    iget v0, p0, Lcom/lifevibes/videoeditor/MediaVideoItem;->mFps:I

    return v0
.end method

.method public getHeight()I
    .registers 2

    .prologue
    .line 562
    iget v0, p0, Lcom/lifevibes/videoeditor/MediaVideoItem;->mHeight:I

    return v0
.end method

.method public getThumbnail(IIJ)Landroid/graphics/Bitmap;
    .registers 11
    .parameter "width"
    .parameter "height"
    .parameter "timeMs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 295
    iget-wide v0, p0, Lcom/lifevibes/videoeditor/MediaVideoItem;->mDurationMs:J

    cmp-long v0, p3, v0

    if-lez v0, :cond_e

    .line 296
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Time Exceeds duration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 299
    :cond_e
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gez v0, :cond_1c

    .line 300
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid Time duration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 303
    :cond_1c
    if-lez p1, :cond_20

    if-gtz p2, :cond_28

    .line 304
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid Dimensions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 307
    :cond_28
    iget-object v0, p0, Lcom/lifevibes/videoeditor/MediaVideoItem;->mMANativeHelper:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;

    invoke-super {p0}, Lcom/lifevibes/videoeditor/MediaItem;->getFilename()Ljava/lang/String;

    move-result-object v1

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->getPixels(Ljava/lang/String;IIJ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getTimelineDuration()J
    .registers 7

    .prologue
    .line 578
    iget-boolean v0, p0, Lcom/lifevibes/videoeditor/MediaVideoItem;->mExclude:Z

    if-nez v0, :cond_a

    .line 579
    iget-wide v0, p0, Lcom/lifevibes/videoeditor/MediaVideoItem;->mEndBoundaryTimeMs:J

    iget-wide v2, p0, Lcom/lifevibes/videoeditor/MediaVideoItem;->mBeginBoundaryTimeMs:J

    sub-long/2addr v0, v2

    .line 581
    :goto_9
    return-wide v0

    :cond_a
    iget-wide v0, p0, Lcom/lifevibes/videoeditor/MediaVideoItem;->mExcludeBeginTime:J

    const-wide/16 v2, 0x0

    sub-long/2addr v0, v2

    invoke-virtual {p0}, Lcom/lifevibes/videoeditor/MediaVideoItem;->getDuration()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/lifevibes/videoeditor/MediaVideoItem;->mExcludeEndTime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    goto :goto_9
.end method

.method public getVideoBitrate()I
    .registers 2

    .prologue
    .line 610
    iget v0, p0, Lcom/lifevibes/videoeditor/MediaVideoItem;->mVideoBitrate:I

    return v0
.end method

.method public getVideoProfile()I
    .registers 2

    .prologue
    .line 603
    iget v0, p0, Lcom/lifevibes/videoeditor/MediaVideoItem;->mVideoProfile:I

    return v0
.end method

.method public getVideoType()I
    .registers 2

    .prologue
    .line 596
    iget v0, p0, Lcom/lifevibes/videoeditor/MediaVideoItem;->mVideoType:I

    return v0
.end method

.method public getWidth()I
    .registers 2

    .prologue
    .line 554
    iget v0, p0, Lcom/lifevibes/videoeditor/MediaVideoItem;->mWidth:I

    return v0
.end method

.method isExcludeCalled()Z
    .registers 2

    .prologue
    .line 699
    iget-boolean v0, p0, Lcom/lifevibes/videoeditor/MediaVideoItem;->mExclude:Z

    return v0
.end method

.method public setExtractBoundaries(JJ)V
    .registers 11
    .parameter "beginMs"
    .parameter "endMs"

    .prologue
    const-wide/16 v4, 0x0

    const-wide/16 v2, -0x1

    .line 234
    iget-wide v0, p0, Lcom/lifevibes/videoeditor/MediaVideoItem;->mDurationMs:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_12

    .line 235
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "setExtractBoundaries: Invalid start time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :cond_12
    iget-wide v0, p0, Lcom/lifevibes/videoeditor/MediaVideoItem;->mDurationMs:J

    cmp-long v0, p3, v0

    if-lez v0, :cond_20

    .line 239
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "setExtractBoundaries: Invalid end time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 242
    :cond_20
    cmp-long v0, p3, v2

    if-eqz v0, :cond_30

    cmp-long v0, p1, p3

    if-ltz v0, :cond_30

    .line 243
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "setExtractBoundaries: Start time is greater than end time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 246
    :cond_30
    cmp-long v0, p1, v4

    if-ltz v0, :cond_3c

    cmp-long v0, p3, v2

    if-eqz v0, :cond_44

    cmp-long v0, p3, v4

    if-gez v0, :cond_44

    .line 247
    :cond_3c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "setExtractBoundaries: Start time or end time is negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 251
    :cond_44
    iput-wide p1, p0, Lcom/lifevibes/videoeditor/MediaVideoItem;->mBeginBoundaryTimeMs:J

    .line 252
    iput-wide p3, p0, Lcom/lifevibes/videoeditor/MediaVideoItem;->mEndBoundaryTimeMs:J

    .line 253
    iget-object v0, p0, Lcom/lifevibes/videoeditor/MediaVideoItem;->mVideoEditor:Lcom/lifevibes/videoeditor/VideoEditorImpl;

    invoke-virtual {v0}, Lcom/lifevibes/videoeditor/VideoEditorImpl;->updateTimelineDuration()V

    .line 255
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lifevibes/videoeditor/MediaVideoItem;->mExclude:Z

    .line 261
    return-void
.end method
