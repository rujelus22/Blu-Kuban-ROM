.class public Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;
.super Landroid/view/View;
.source "VideoClipProgressBarView.java"

# interfaces
.implements Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$TimeLineListener;


# static fields
.field private static SelectMarkerPosition:Ljava/lang/Integer; = null

.field private static final VIDEO_CLIPBAR_HIEGHT:F = 5.0f

.field private static final VIDEO_CLIPBAR_PADDING:F = 18.0f

.field private static final VIDEO_CLIPBAR_TOP_PADDING:F = 8.0f

.field private static final VIDEO_CLIPBAR_WIDTH:F = 800.0f

.field private static _instance:Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;


# instance fields
.field private ClipPossitions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private SeekPerSecond:Ljava/lang/Double;

.field private SeekPressed:Ljava/lang/Boolean;

.field private Selectmarker:Ljava/lang/Boolean;

.field private barpatch:Landroid/graphics/Bitmap;

.field private fullTime:J

.field private lastScrolledTime:F

.field private mClipPlaybarGap:F

.field private mClipPlayingWidth:F

.field private mClipSize:I

.field private mContext:Landroid/content/Context;

.field private mCurrentClip:F

.field private mCurrentDuration:D

.field mCurrentPosition:I

.field private mTotalDuration:D

.field private mVideoClipBarPaint:Landroid/graphics/Paint;

.field private mVideoClipBarY:F

.field private mVideoClipBar_image:Landroid/graphics/Bitmap;

.field private mVideoClipBar_image_new:Landroid/graphics/Bitmap;

.field private run_time:I

.field private videoclip_btn:Landroid/graphics/Bitmap;

.field private videoclip_btn_new:Landroid/graphics/Bitmap;

.field private videoclip_line:Landroid/graphics/Bitmap;

.field private videoclip_line_n:Landroid/graphics/Bitmap;

.field private videoclip_line_pendrawing:Landroid/graphics/Bitmap;

.field private videoclip_line_s:Landroid/graphics/Bitmap;

.field private videoclip_pendrawing_btn:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->SelectMarkerPosition:Ljava/lang/Integer;

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 68
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 36
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->mClipPlaybarGap:F

    .line 37
    const/high16 v0, 0x40a0

    iput v0, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->mVideoClipBarY:F

    .line 43
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->Selectmarker:Ljava/lang/Boolean;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->ClipPossitions:Ljava/util/ArrayList;

    .line 50
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->SeekPressed:Ljava/lang/Boolean;

    .line 51
    const-wide/high16 v0, -0x4010

    iput-wide v0, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->mCurrentDuration:D

    .line 52
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->mTotalDuration:D

    .line 54
    iput v2, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->mClipSize:I

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->lastScrolledTime:F

    .line 64
    iput v2, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->mCurrentPosition:I

    .line 69
    iput-object p1, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->mContext:Landroid/content/Context;

    .line 70
    sput-object p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->_instance:Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;

    .line 74
    invoke-direct {p0}, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->init()V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 6
    .parameter "context"
    .parameter "ClipSize"

    .prologue
    const/4 v2, 0x0

    .line 86
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 36
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->mClipPlaybarGap:F

    .line 37
    const/high16 v0, 0x40a0

    iput v0, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->mVideoClipBarY:F

    .line 43
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->Selectmarker:Ljava/lang/Boolean;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->ClipPossitions:Ljava/util/ArrayList;

    .line 50
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->SeekPressed:Ljava/lang/Boolean;

    .line 51
    const-wide/high16 v0, -0x4010

    iput-wide v0, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->mCurrentDuration:D

    .line 52
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->mTotalDuration:D

    .line 54
    iput v2, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->mClipSize:I

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->lastScrolledTime:F

    .line 64
    iput v2, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->mCurrentPosition:I

    .line 87
    iput-object p1, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->mContext:Landroid/content/Context;

    .line 88
    sput-object p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->_instance:Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;

    .line 91
    invoke-direct {p0}, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->init()V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 78
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->mClipPlaybarGap:F

    .line 37
    const/high16 v0, 0x40a0

    iput v0, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->mVideoClipBarY:F

    .line 43
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->Selectmarker:Ljava/lang/Boolean;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->ClipPossitions:Ljava/util/ArrayList;

    .line 50
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->SeekPressed:Ljava/lang/Boolean;

    .line 51
    const-wide/high16 v0, -0x4010

    iput-wide v0, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->mCurrentDuration:D

    .line 52
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->mTotalDuration:D

    .line 54
    iput v2, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->mClipSize:I

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->lastScrolledTime:F

    .line 64
    iput v2, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->mCurrentPosition:I

    .line 79
    iput-object p1, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->mContext:Landroid/content/Context;

    .line 80
    sput-object p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->_instance:Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;

    .line 82
    invoke-direct {p0}, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->init()V

    .line 83
    return-void
.end method

.method private drawVideoClipBtn(FLandroid/graphics/Canvas;)V
    .registers 14
    .parameter "startPoint"
    .parameter "canvas"

    .prologue
    const/high16 v10, 0x4190

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/high16 v7, 0x4100

    .line 179
    invoke-virtual {p0}, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->getSelectmarker()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 181
    invoke-virtual {p0}, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->getSelectMarkerPosition()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->ClipPossitions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_21

    .line 213
    :cond_20
    :goto_20
    return-void

    .line 185
    :cond_21
    iget-object v1, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->ClipPossitions:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->getSelectMarkerPosition()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpl-float v1, p1, v1

    if-nez v1, :cond_20

    .line 187
    invoke-virtual {p0}, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->getSeekPressed()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_9a

    .line 189
    invoke-virtual {p0}, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->getmClipPlayingWidth()F

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->getmTotalDuration()D

    move-result-wide v2

    double-to-float v2, v2

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->SeekPerSecond:Ljava/lang/Double;

    .line 190
    float-to-double v1, p1

    iget-object v3, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->SeekPerSecond:Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-virtual {p0}, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->getmCurrentDuration()D

    move-result-wide v5

    double-to-float v5, v5

    float-to-double v5, v5

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    double-to-float v0, v1

    .line 192
    .local v0, Btn_ClipDrawPoint:F
    cmpl-float v1, v0, v9

    if-lez v1, :cond_86

    .line 194
    const/high16 v1, 0x4448

    cmpl-float v1, v0, v1

    if-nez v1, :cond_7b

    .line 195
    iget-object v1, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->videoclip_btn_new:Landroid/graphics/Bitmap;

    const/high16 v2, 0x4170

    sub-float v2, v0, v2

    iget v3, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->mVideoClipBarY:F

    sub-float/2addr v3, v7

    invoke-virtual {p2, v1, v2, v3, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_20

    .line 197
    :cond_7b
    iget-object v1, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->videoclip_btn_new:Landroid/graphics/Bitmap;

    sub-float v2, v0, v10

    iget v3, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->mVideoClipBarY:F

    sub-float/2addr v3, v7

    invoke-virtual {p2, v1, v2, v3, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_20

    .line 200
    :cond_86
    iget-object v1, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->videoclip_btn_new:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->videoclip_btn:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x3

    int-to-float v2, v2

    sub-float v2, v0, v2

    iget v3, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->mVideoClipBarY:F

    sub-float/2addr v3, v7

    invoke-virtual {p2, v1, v2, v3, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_20

    .line 204
    .end local v0           #Btn_ClipDrawPoint:F
    :cond_9a
    cmpl-float v1, p1, v9

    if-lez v1, :cond_aa

    .line 205
    iget-object v1, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->videoclip_btn_new:Landroid/graphics/Bitmap;

    sub-float v2, p1, v10

    iget v3, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->mVideoClipBarY:F

    sub-float/2addr v3, v7

    invoke-virtual {p2, v1, v2, v3, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_20

    .line 207
    :cond_aa
    iget-object v1, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->videoclip_btn_new:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->videoclip_btn:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x3

    int-to-float v2, v2

    sub-float v2, p1, v2

    iget v3, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->mVideoClipBarY:F

    sub-float/2addr v3, v7

    invoke-virtual {p2, v1, v2, v3, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_20
.end method

.method private getCurrentDrawing(ILandroid/graphics/Canvas;)V
    .registers 29
    .parameter "mCurrentElementIndex"
    .parameter "canvas"

    .prologue
    .line 467
    const/16 v19, 0x0

    .line 468
    .local v19, trimFlag:Z
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementList()Ljava/util/List;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/samsung/app/video/editor/external/Element;

    .line 469
    .local v14, mElement:Lcom/samsung/app/video/editor/external/Element;
    const/4 v10, 0x0

    .line 471
    .local v10, durationTime:F
    invoke-virtual {v14}, Lcom/samsung/app/video/editor/external/Element;->getEndTime()F

    move-result v20

    invoke-virtual {v14}, Lcom/samsung/app/video/editor/external/Element;->getStartTime()F

    move-result v21

    sub-float v10, v20, v21

    .line 473
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getOperationMode()I

    move-result v20

    sparse-switch v20, :sswitch_data_1aa

    .line 494
    :goto_2e
    invoke-virtual {v14}, Lcom/samsung/app/video/editor/external/Element;->getDrawingEleList()Ljava/util/List;

    move-result-object v13

    .line 495
    .local v13, mDrawingList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/app/video/editor/external/ClipartParams;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->getmClipPlayingWidth()F

    move-result v20

    div-float v20, v20, v10

    move/from16 v0, v20

    float-to-double v15, v0

    .line 497
    .local v15, pixPerSec:D
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->mClipPlayingWidth:F

    move/from16 v20, v0

    add-int/lit8 v21, p1, 0x1

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v5, v20, v21

    .line 498
    .local v5, ClipStartPoint:F
    if-eqz v13, :cond_56

    .line 501
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_50
    :goto_50
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-nez v20, :cond_72

    .line 548
    :cond_56
    return-void

    .line 476
    .end local v5           #ClipStartPoint:F
    .end local v13           #mDrawingList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/app/video/editor/external/ClipartParams;>;"
    .end local v15           #pixPerSec:D
    :sswitch_57
    const/16 v19, 0x1

    .line 477
    invoke-virtual {v14}, Lcom/samsung/app/video/editor/external/Element;->getDuration()F

    move-result v10

    .line 478
    goto :goto_2e

    .line 482
    :sswitch_5e
    const/16 v18, 0x0

    .line 484
    .local v18, transitionTime:F
    invoke-virtual {v14}, Lcom/samsung/app/video/editor/external/Element;->getTransitionEdit()Lcom/samsung/app/video/editor/external/Edit;

    move-result-object v6

    .line 485
    .local v6, E1:Lcom/samsung/app/video/editor/external/Edit;
    if-eqz v6, :cond_6f

    .line 486
    invoke-virtual {v6}, Lcom/samsung/app/video/editor/external/Edit;->getTrans_duration()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v18, v0

    .line 488
    :cond_6f
    add-float v10, v10, v18

    goto :goto_2e

    .line 501
    .end local v6           #E1:Lcom/samsung/app/video/editor/external/Edit;
    .end local v18           #transitionTime:F
    .restart local v5       #ClipStartPoint:F
    .restart local v13       #mDrawingList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/app/video/editor/external/ClipartParams;>;"
    .restart local v15       #pixPerSec:D
    :cond_72
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/samsung/app/video/editor/external/ClipartParams;

    .line 503
    .local v12, mClipartParams:Lcom/samsung/app/video/editor/external/ClipartParams;
    const/16 v17, 0x0

    .line 504
    .local v17, startTime:F
    const/4 v11, 0x0

    .line 505
    .local v11, endTime:F
    if-eqz v19, :cond_14f

    .line 506
    invoke-virtual {v12}, Lcom/samsung/app/video/editor/external/ClipartParams;->getStartTime()F

    move-result v17

    .line 507
    invoke-virtual {v12}, Lcom/samsung/app/video/editor/external/ClipartParams;->getEndTime()F

    move-result v20

    invoke-virtual {v14}, Lcom/samsung/app/video/editor/external/Element;->getSplitTime()F

    move-result v22

    sub-float v11, v20, v22

    .line 531
    :cond_8b
    :goto_8b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->ClipPossitions:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Float;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Float;->floatValue()F

    move-result v20

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v22, v0

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v24, v0

    mul-double v24, v24, v15

    add-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-float v9, v0

    .line 533
    .local v9, drawstartPix:F
    float-to-double v0, v9

    move-wide/from16 v22, v0

    sub-float v20, v11, v17

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v24, v0

    mul-double v24, v24, v15

    add-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-float v8, v0

    .line 535
    .local v8, drawEndPix:F
    new-instance v7, Landroid/graphics/Rect;

    float-to-int v0, v9

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->mVideoClipBarY:F

    move/from16 v22, v0

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    add-int/lit8 v22, v22, 0x1

    float-to-int v0, v8

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->mVideoClipBarY:F

    move/from16 v24, v0

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    add-int/lit8 v24, v24, 0x7

    move/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-direct {v7, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 538
    .local v7, destDrawRect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->videoclip_line_pendrawing:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->mVideoClipBarPaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v7, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 540
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->videoclip_pendrawing_btn:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    const/high16 v22, 0x40e0

    sub-float v22, v9, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->mVideoClipBarY:F

    move/from16 v23, v0

    const/high16 v24, 0x4100

    sub-float v23, v23, v24

    const/16 v24, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move/from16 v2, v22

    move/from16 v3, v23

    move-object/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 541
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->videoclip_pendrawing_btn:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    const/high16 v22, 0x41b0

    sub-float v22, v8, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->mVideoClipBarY:F

    move/from16 v23, v0

    const/high16 v24, 0x4100

    sub-float v23, v23, v24

    const/16 v24, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move/from16 v2, v22

    move/from16 v3, v23

    move-object/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_50

    .line 510
    .end local v7           #destDrawRect:Landroid/graphics/Rect;
    .end local v8           #drawEndPix:F
    .end local v9           #drawstartPix:F
    :cond_14f
    invoke-virtual {v12}, Lcom/samsung/app/video/editor/external/ClipartParams;->getEndTime()F

    move-result v20

    invoke-virtual {v14}, Lcom/samsung/app/video/editor/external/Element;->getStartTime()F

    move-result v22

    cmpg-float v20, v20, v22

    if-lez v20, :cond_50

    .line 513
    invoke-virtual {v12}, Lcom/samsung/app/video/editor/external/ClipartParams;->getStartTime()F

    move-result v20

    invoke-virtual {v14}, Lcom/samsung/app/video/editor/external/Element;->getEndTime()F

    move-result v22

    cmpl-float v20, v20, v22

    if-gez v20, :cond_50

    .line 516
    invoke-virtual {v12}, Lcom/samsung/app/video/editor/external/ClipartParams;->getStartTime()F

    move-result v20

    invoke-virtual {v14}, Lcom/samsung/app/video/editor/external/Element;->getStartTime()F

    move-result v22

    sub-float v17, v20, v22

    .line 517
    invoke-virtual {v12}, Lcom/samsung/app/video/editor/external/ClipartParams;->getEndTime()F

    move-result v20

    invoke-virtual {v14}, Lcom/samsung/app/video/editor/external/Element;->getStartTime()F

    move-result v22

    sub-float v11, v20, v22

    .line 519
    const/16 v20, 0x0

    cmpg-float v20, v17, v20

    if-gtz v20, :cond_187

    const/16 v20, 0x0

    cmpg-float v20, v11, v20

    if-lez v20, :cond_50

    .line 522
    :cond_187
    const/16 v20, 0x0

    cmpg-float v20, v17, v20

    if-gez v20, :cond_18f

    .line 523
    const/16 v17, 0x0

    .line 526
    :cond_18f
    invoke-virtual {v14}, Lcom/samsung/app/video/editor/external/Element;->getEndTime()F

    move-result v20

    invoke-virtual {v14}, Lcom/samsung/app/video/editor/external/Element;->getStartTime()F

    move-result v22

    sub-float v20, v20, v22

    cmpl-float v20, v11, v20

    if-lez v20, :cond_8b

    .line 527
    invoke-virtual {v14}, Lcom/samsung/app/video/editor/external/Element;->getEndTime()F

    move-result v20

    invoke-virtual {v14}, Lcom/samsung/app/video/editor/external/Element;->getStartTime()F

    move-result v22

    sub-float v11, v20, v22

    goto/16 :goto_8b

    .line 473
    nop

    :sswitch_data_1aa
    .sparse-switch
        0x1 -> :sswitch_57
        0x5 -> :sswitch_5e
    .end sparse-switch
.end method

.method public static get_instance()Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;
    .registers 1

    .prologue
    .line 95
    sget-object v0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->_instance:Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;

    return-object v0
.end method

.method private init()V
    .registers 6

    .prologue
    const/16 v4, 0x15

    const/4 v3, 0x1

    .line 216
    invoke-virtual {p0}, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201b7

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->mVideoClipBar_image:Landroid/graphics/Bitmap;

    .line 217
    iget-object v0, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->mVideoClipBar_image:Landroid/graphics/Bitmap;

    const/16 v1, 0x320

    const/4 v2, 0x5

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->mVideoClipBar_image_new:Landroid/graphics/Bitmap;

    .line 218
    invoke-virtual {p0}, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201bd

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->videoclip_line_n:Landroid/graphics/Bitmap;

    .line 219
    invoke-virtual {p0}, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201bc

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->videoclip_line:Landroid/graphics/Bitmap;

    .line 220
    invoke-virtual {p0}, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201bf

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->videoclip_line_s:Landroid/graphics/Bitmap;

    .line 221
    invoke-virtual {p0}, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201be

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->videoclip_line_pendrawing:Landroid/graphics/Bitmap;

    .line 223
    invoke-virtual {p0}, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201ba

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->videoclip_btn:Landroid/graphics/Bitmap;

    .line 224
    iget-object v0, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->videoclip_btn:Landroid/graphics/Bitmap;

    invoke-static {v0, v4, v4, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->videoclip_btn_new:Landroid/graphics/Bitmap;

    .line 225
    invoke-virtual {p0}, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020013

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->barpatch:Landroid/graphics/Bitmap;

    .line 226
    invoke-virtual {p0}, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201c0

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->videoclip_pendrawing_btn:Landroid/graphics/Bitmap;

    .line 228
    invoke-virtual {p0}, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->invalidate()V

    .line 230
    return-void
.end method

.method private updateFullStoryTime()J
    .registers 8

    .prologue
    .line 455
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementList()Ljava/util/List;

    move-result-object v2

    .line 456
    .local v2, mList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/app/video/editor/external/Element;>;"
    const-wide/16 v3, 0x0

    .line 457
    .local v3, story_time:J
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 458
    .local v1, iterator:Ljava/util/Iterator;
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_19

    .line 462
    return-wide v3

    .line 459
    :cond_19
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/app/video/editor/external/Element;

    .line 460
    .local v0, e:Lcom/samsung/app/video/editor/external/Element;
    long-to-float v5, v3

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/Element;->getDuration()F

    move-result v6

    add-float/2addr v5, v6

    float-to-long v3, v5

    goto :goto_12
.end method

.method private final updateRunningTime(Lcom/samsung/app/video/editor/external/Element;J)V
    .registers 14
    .parameter "element"
    .parameter "elementSec"

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x1

    .line 409
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v4

    if-nez v4, :cond_9

    .line 450
    :cond_8
    :goto_8
    return-void

    .line 412
    :cond_9
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementList()Ljava/util/List;

    move-result-object v3

    .line 413
    .local v3, mList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/app/video/editor/external/Element;>;"
    const/4 v4, 0x0

    iput v4, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->run_time:I

    .line 414
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 415
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/samsung/app/video/editor/external/Element;>;"
    :cond_1c
    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_50

    .line 444
    :goto_22
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getOperationMode()I

    move-result v4

    if-eqz v4, :cond_41

    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getOperationMode()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_41

    .line 445
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getOperationMode()I

    move-result v4

    if-ne v4, v9, :cond_105

    .line 446
    :cond_41
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getTotalDuration()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->fullTime:J

    goto :goto_8

    .line 416
    :cond_50
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/app/video/editor/external/Element;

    .line 417
    .local v0, e:Lcom/samsung/app/video/editor/external/Element;
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_64

    .line 418
    iget v4, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->run_time:I

    int-to-long v4, v4

    add-long/2addr v4, p2

    long-to-int v4, v4

    iput v4, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->run_time:I

    goto :goto_22

    .line 421
    :cond_64
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getOperationMode()I

    move-result v4

    if-ne v4, v8, :cond_7a

    .line 422
    iget v4, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->run_time:I

    int-to-float v4, v4

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/Element;->getDuration()F

    move-result v5

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->run_time:I

    goto :goto_1c

    .line 423
    :cond_7a
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getOperationMode()I

    move-result v4

    if-ne v4, v9, :cond_d6

    .line 425
    iget v4, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->run_time:I

    int-to-float v4, v4

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/Element;->getEndTime()F

    move-result v5

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/Element;->getStartTime()F

    move-result v6

    sub-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->run_time:I

    .line 426
    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/Element;->getEditList()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_1c

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/Element;->getEditList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_1c

    .line 428
    const/4 v2, 0x0

    .local v2, j:I
    :goto_a5
    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/Element;->getEditList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1c

    .line 429
    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/Element;->getEditList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/app/video/editor/external/Edit;

    invoke-virtual {v4}, Lcom/samsung/app/video/editor/external/Edit;->getType()I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_d3

    .line 431
    iget v5, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->run_time:I

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/Element;->getEditList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/app/video/editor/external/Edit;

    invoke-virtual {v4}, Lcom/samsung/app/video/editor/external/Edit;->getTrans_duration()I

    move-result v4

    add-int/2addr v4, v5

    iput v4, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->run_time:I

    .line 428
    :cond_d3
    add-int/lit8 v2, v2, 0x1

    goto :goto_a5

    .line 436
    .end local v2           #j:I
    :cond_d6
    iget v4, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->run_time:I

    int-to-float v4, v4

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/Element;->getEndTime()F

    move-result v5

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/Element;->getStartTime()F

    move-result v6

    sub-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->run_time:I

    .line 437
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getTransitionDurationofElement(Lcom/samsung/app/video/editor/external/Element;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1c

    .line 438
    iget v4, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->run_time:I

    int-to-long v4, v4

    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getTransitionDurationofElement(Lcom/samsung/app/video/editor/external/Element;)J

    move-result-wide v6

    add-long/2addr v4, v6

    long-to-int v4, v4

    iput v4, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->run_time:I

    goto/16 :goto_1c

    .line 447
    .end local v0           #e:Lcom/samsung/app/video/editor/external/Element;
    :cond_105
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getOperationMode()I

    move-result v4

    if-ne v4, v8, :cond_8

    .line 448
    invoke-direct {p0}, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->updateFullStoryTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->fullTime:J

    goto/16 :goto_8
.end method


# virtual methods
.method public addClip()V
    .registers 2

    .prologue
    .line 243
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    if-nez v0, :cond_7

    .line 247
    :goto_6
    return-void

    .line 245
    :cond_7
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementCount()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->mClipSize:I

    .line 246
    invoke-virtual {p0}, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->invalidate()V

    goto :goto_6
.end method

.method public getSeekPressed()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 273
    iget-object v0, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->SeekPressed:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getSelectMarkerPosition()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 269
    sget-object v0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->SelectMarkerPosition:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSelectmarker()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 257
    iget-object v0, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->Selectmarker:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getmClipPlayingWidth()F
    .registers 2

    .prologue
    .line 297
    iget v0, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->mClipPlayingWidth:F

    return v0
.end method

.method public getmCurrentDuration()D
    .registers 3

    .prologue
    .line 281
    iget-wide v0, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->mCurrentDuration:D

    return-wide v0
.end method

.method public getmTotalDuration()D
    .registers 3

    .prologue
    .line 289
    iget-wide v0, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->mTotalDuration:D

    return-wide v0
.end method

.method public onAdded(Lcom/samsung/app/video/editor/external/Element;)V
    .registers 2
    .parameter "addedView"

    .prologue
    .line 306
    invoke-virtual {p0}, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->addClip()V

    .line 308
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .prologue
    .line 233
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 234
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->addTimeLineListener(Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$TimeLineListener;)V

    .line 235
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 238
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 239
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->removeTimeLineListener(Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$TimeLineListener;)V

    .line 240
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 16
    .parameter "canvas"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    .line 100
    iput v11, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->lastScrolledTime:F

    .line 101
    invoke-virtual {p1, v12}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 102
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 103
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v9

    if-nez v9, :cond_12

    .line 175
    :cond_11
    return-void

    .line 105
    :cond_12
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    iput-object v9, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->mVideoClipBarPaint:Landroid/graphics/Paint;

    .line 107
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementCount()I

    move-result v9

    iput v9, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->mClipSize:I

    .line 109
    iget-object v9, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->mVideoClipBar_image_new:Landroid/graphics/Bitmap;

    iget v10, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->mVideoClipBarY:F

    invoke-virtual {p1, v9, v11, v10, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 110
    new-instance v0, Landroid/graphics/Rect;

    iget v9, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->mVideoClipBarY:F

    float-to-int v9, v9

    add-int/lit8 v9, v9, 0x8

    const/16 v10, 0x320

    iget v11, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->mVideoClipBarY:F

    float-to-int v11, v11

    add-int/lit8 v11, v11, 0x14

    invoke-direct {v0, v12, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 111
    .local v0, ClipBarRect:Landroid/graphics/Rect;
    iget-object v9, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->barpatch:Landroid/graphics/Bitmap;

    iget-object v10, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->mVideoClipBarPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v13, v0, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 112
    iget v9, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->mClipSize:I

    if-eqz v9, :cond_52

    .line 115
    const/high16 v9, 0x4448

    iget v10, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->mClipSize:I

    int-to-float v10, v10

    div-float/2addr v9, v10

    iput v9, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->mClipPlayingWidth:F

    .line 117
    :cond_52
    iget-object v9, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->mVideoClipBarPaint:Landroid/graphics/Paint;

    const/high16 v10, -0x1

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 120
    const/4 v8, 0x0

    .line 121
    .local v8, startPoint:F
    iget v1, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->mClipPlayingWidth:F

    .line 122
    .local v1, Endpoint:F
    const/4 v7, 0x0

    .line 124
    .local v7, j:F
    const/4 v6, 0x0

    .local v6, i:I
    :goto_5e
    iget v9, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->mClipSize:I

    if-lt v6, v9, :cond_9a

    .line 167
    const/4 v6, 0x0

    :goto_63
    iget v9, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->mClipSize:I

    if-ge v6, v9, :cond_11

    .line 168
    iget-object v9, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->ClipPossitions:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v5

    .line 169
    .local v5, drawPoint:F
    if-eqz v6, :cond_97

    .line 170
    new-instance v2, Landroid/graphics/Rect;

    iget v9, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->mClipPlaybarGap:F

    sub-float v9, v5, v9

    float-to-int v9, v9

    iget v10, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->mVideoClipBarY:F

    float-to-int v10, v10

    add-int/lit8 v10, v10, 0x1

    iget v11, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->mClipPlaybarGap:F

    sub-float v11, v5, v11

    float-to-int v11, v11

    add-int/lit8 v11, v11, 0x1

    iget v12, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->mVideoClipBarY:F

    float-to-int v12, v12

    add-int/lit8 v12, v12, 0x7

    invoke-direct {v2, v9, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 171
    .local v2, destDivederRect:Landroid/graphics/Rect;
    iget-object v9, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->videoclip_line:Landroid/graphics/Bitmap;

    iget-object v10, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->mVideoClipBarPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v13, v2, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 167
    .end local v2           #destDivederRect:Landroid/graphics/Rect;
    :cond_97
    add-int/lit8 v6, v6, 0x1

    goto :goto_63

    .line 126
    .end local v5           #drawPoint:F
    :cond_9a
    iget-object v9, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->ClipPossitions:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    iget v10, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->mClipSize:I

    if-lt v9, v10, :cond_13b

    .line 127
    iget-object v9, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->ClipPossitions:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 128
    iget-object v9, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->ClipPossitions:Ljava/util/ArrayList;

    new-instance v10, Ljava/lang/Float;

    invoke-direct {v10, v8}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v9, v6, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 133
    :goto_b3
    iget v9, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->mClipPlayingWidth:F

    add-float v1, v8, v9

    .line 135
    new-instance v3, Landroid/graphics/Rect;

    float-to-int v9, v8

    iget v10, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->mVideoClipBarY:F

    float-to-int v10, v10

    add-int/lit8 v10, v10, 0x2

    float-to-int v11, v1

    iget v12, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->mVideoClipBarY:F

    float-to-int v12, v12

    add-int/lit8 v12, v12, 0x4

    invoke-direct {v3, v9, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 136
    .local v3, destR:Landroid/graphics/Rect;
    new-instance v4, Landroid/graphics/Rect;

    float-to-int v9, v8

    iget v10, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->mVideoClipBarY:F

    float-to-int v10, v10

    add-int/lit8 v10, v10, 0x5

    float-to-int v11, v1

    iget v12, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->mVideoClipBarY:F

    float-to-int v12, v12

    add-int/lit8 v12, v12, 0x7

    invoke-direct {v4, v9, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 137
    .local v4, destR1:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->getSelectmarker()Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_156

    .line 139
    invoke-virtual {p0}, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->getSelectMarkerPosition()Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v10, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->ClipPossitions:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v9, v10, :cond_11

    .line 144
    iget-object v9, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->ClipPossitions:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->getSelectMarkerPosition()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    cmpl-float v9, v8, v9

    if-nez v9, :cond_147

    .line 146
    iget-object v9, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->videoclip_line_s:Landroid/graphics/Bitmap;

    iget-object v10, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->mVideoClipBarPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v13, v3, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 147
    iget-object v9, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->barpatch:Landroid/graphics/Bitmap;

    iget-object v10, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->mVideoClipBarPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v13, v4, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 148
    iput v8, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->mCurrentClip:F

    .line 158
    :goto_11b
    const/high16 v9, 0x4120

    add-float/2addr v7, v9

    .line 159
    invoke-direct {p0, v6, p1}, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->getCurrentDrawing(ILandroid/graphics/Canvas;)V

    .line 160
    invoke-direct {p0, v8, p1}, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->drawVideoClipBtn(FLandroid/graphics/Canvas;)V

    .line 163
    iget v9, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->mClipPlayingWidth:F

    add-int/lit8 v10, v6, 0x1

    int-to-float v10, v10

    mul-float v8, v9, v10

    .line 164
    iget-object v9, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->barpatch:Landroid/graphics/Bitmap;

    iget v10, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->mVideoClipBarY:F

    const/high16 v11, 0x4100

    add-float/2addr v10, v11

    iget-object v11, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->mVideoClipBarPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v8, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 124
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_5e

    .line 130
    .end local v3           #destR:Landroid/graphics/Rect;
    .end local v4           #destR1:Landroid/graphics/Rect;
    :cond_13b
    iget-object v9, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->ClipPossitions:Ljava/util/ArrayList;

    new-instance v10, Ljava/lang/Float;

    invoke-direct {v10, v8}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_b3

    .line 150
    .restart local v3       #destR:Landroid/graphics/Rect;
    .restart local v4       #destR1:Landroid/graphics/Rect;
    :cond_147
    iget-object v9, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->videoclip_line_n:Landroid/graphics/Bitmap;

    iget-object v10, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->mVideoClipBarPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v13, v3, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 151
    iget-object v9, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->barpatch:Landroid/graphics/Bitmap;

    iget-object v10, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->mVideoClipBarPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v13, v4, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_11b

    .line 155
    :cond_156
    iget-object v9, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->videoclip_line_n:Landroid/graphics/Bitmap;

    iget-object v10, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->mVideoClipBarPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v13, v3, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 156
    iget-object v9, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->barpatch:Landroid/graphics/Bitmap;

    iget-object v10, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->mVideoClipBarPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v13, v4, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_11b
.end method

.method public onFocusedChange(Lcom/samsung/app/video/editor/external/Element;Lcom/samsung/app/video/editor/external/Element;)V
    .registers 3
    .parameter "focusElement"
    .parameter "lastFocusElement"

    .prologue
    .line 313
    return-void
.end method

.method public onMusicChanged(Lcom/samsung/app/video/editor/external/Element;Z)V
    .registers 3
    .parameter "element"
    .parameter "added"

    .prologue
    .line 318
    return-void
.end method

.method public onRemoved(Lcom/samsung/app/video/editor/external/Element;)V
    .registers 2
    .parameter "removedView"

    .prologue
    .line 322
    invoke-virtual {p0}, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->removeClip()V

    .line 324
    return-void
.end method

.method public onScrolled(Lcom/samsung/app/video/editor/external/Element;FF)V
    .registers 13
    .parameter "element"
    .parameter "sec"
    .parameter "transitionTime"

    .prologue
    const/4 v8, 0x1

    .line 329
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v7

    if-nez v7, :cond_8

    .line 401
    :cond_7
    :goto_7
    return-void

    .line 332
    :cond_8
    if-eqz p1, :cond_7

    .line 335
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->isPreviewPlaying()Z

    .line 338
    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/Element;->getStartTime()F

    move-result v5

    .line 339
    .local v5, startTime:F
    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/Element;->getEndTime()F

    move-result v3

    .line 340
    .local v3, endTime:F
    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/Element;->getDuration()F

    move-result v2

    .line 341
    .local v2, durationTime:F
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getMyPosition(Lcom/samsung/app/video/editor/external/Element;)I

    move-result v1

    .line 342
    .local v1, Position:I
    iput v1, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->mCurrentPosition:I

    .line 343
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementCount()I

    move-result v4

    .line 345
    .local v4, lCount:I
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementCount()I

    move-result v7

    iput v7, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->mClipSize:I

    .line 346
    if-lez v4, :cond_5e

    if-ltz v1, :cond_5e

    .line 347
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->setSelectmarker(Ljava/lang/Boolean;)V

    .line 348
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->setSeekPressed(Ljava/lang/Boolean;)V

    .line 349
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->setSelectMarkerPosition(Ljava/lang/Integer;)V

    .line 353
    :cond_5e
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getOperationMode()I

    move-result v7

    packed-switch v7, :pswitch_data_cc

    .line 400
    :cond_69
    :goto_69
    :pswitch_69
    float-to-long v7, p2

    invoke-direct {p0, p1, v7, v8}, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->updateRunningTime(Lcom/samsung/app/video/editor/external/Element;J)V

    goto :goto_7

    .line 358
    :pswitch_6e
    if-lez v4, :cond_69

    if-ltz v1, :cond_69

    .line 359
    float-to-double v7, p2

    invoke-virtual {p0, v7, v8}, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->setmCurrentDuration(D)V

    .line 360
    sub-float v7, v3, v5

    float-to-double v7, v7

    invoke-virtual {p0, v7, v8}, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->setmTotalDuration(D)V

    .line 361
    invoke-virtual {p0}, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->invalidate()V

    goto :goto_69

    .line 366
    :pswitch_80
    if-lez v4, :cond_69

    if-ltz v1, :cond_69

    .line 367
    float-to-double v7, p2

    invoke-virtual {p0, v7, v8}, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->setmCurrentDuration(D)V

    .line 368
    float-to-double v7, v2

    invoke-virtual {p0, v7, v8}, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->setmTotalDuration(D)V

    .line 369
    invoke-virtual {p0}, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->invalidate()V

    goto :goto_69

    .line 374
    :pswitch_90
    const/4 v6, 0x0

    .line 375
    .local v6, transitionTime1:F
    if-lez v4, :cond_69

    if-ltz v1, :cond_69

    .line 377
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getCurrentView()Landroid/view/View;

    move-result-object v7

    instance-of v7, v7, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;

    if-eqz v7, :cond_c6

    .line 378
    sub-float v7, v3, v5

    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getCurrentTimeInSec()F

    move-result v8

    add-float/2addr v7, v8

    float-to-double v7, v7

    invoke-virtual {p0, v7, v8}, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->setmCurrentDuration(D)V

    .line 381
    :goto_b0
    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/Element;->getTransitionEdit()Lcom/samsung/app/video/editor/external/Edit;

    move-result-object v0

    .line 382
    .local v0, E1:Lcom/samsung/app/video/editor/external/Edit;
    if-eqz v0, :cond_bb

    .line 383
    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/Edit;->getTrans_duration()I

    move-result v7

    int-to-float v6, v7

    .line 389
    :cond_bb
    sub-float v7, v3, v5

    add-float/2addr v7, v6

    float-to-double v7, v7

    invoke-virtual {p0, v7, v8}, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->setmTotalDuration(D)V

    .line 390
    invoke-virtual {p0}, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->invalidate()V

    goto :goto_69

    .line 380
    .end local v0           #E1:Lcom/samsung/app/video/editor/external/Edit;
    :cond_c6
    float-to-double v7, p2

    invoke-virtual {p0, v7, v8}, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->setmCurrentDuration(D)V

    goto :goto_b0

    .line 353
    nop

    :pswitch_data_cc
    .packed-switch 0x0
        :pswitch_6e
        :pswitch_80
        :pswitch_6e
        :pswitch_69
        :pswitch_69
        :pswitch_90
    .end packed-switch
.end method

.method public onUpdate(Lcom/samsung/app/video/editor/external/Element;)V
    .registers 2
    .parameter "updatedView"

    .prologue
    .line 406
    return-void
.end method

.method public removeClip()V
    .registers 2

    .prologue
    .line 250
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    if-nez v0, :cond_7

    .line 254
    :goto_6
    return-void

    .line 252
    :cond_7
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementCount()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->mClipSize:I

    .line 253
    invoke-virtual {p0}, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->invalidate()V

    goto :goto_6
.end method

.method public setSeekPressed(Ljava/lang/Boolean;)V
    .registers 2
    .parameter "seekPressed"

    .prologue
    .line 277
    iput-object p1, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->SeekPressed:Ljava/lang/Boolean;

    .line 278
    return-void
.end method

.method public setSelectMarkerPosition(Ljava/lang/Integer;)V
    .registers 2
    .parameter "selectMarkerPosition"

    .prologue
    .line 261
    sput-object p1, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->SelectMarkerPosition:Ljava/lang/Integer;

    .line 262
    return-void
.end method

.method public setSelectmarker(Ljava/lang/Boolean;)V
    .registers 2
    .parameter "selectmarker"

    .prologue
    .line 265
    iput-object p1, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->Selectmarker:Ljava/lang/Boolean;

    .line 266
    return-void
.end method

.method public setmClipPlayingWidth(F)V
    .registers 2
    .parameter "mClipPlayingWidth"

    .prologue
    .line 301
    iput p1, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->mClipPlayingWidth:F

    .line 302
    return-void
.end method

.method public setmCurrentDuration(D)V
    .registers 3
    .parameter "d"

    .prologue
    .line 285
    iput-wide p1, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->mCurrentDuration:D

    .line 286
    return-void
.end method

.method public setmTotalDuration(D)V
    .registers 3
    .parameter "d"

    .prologue
    .line 293
    iput-wide p1, p0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->mTotalDuration:D

    .line 294
    return-void
.end method
