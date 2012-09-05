.class public Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;
.super Landroid/widget/FrameLayout;
.source "DurationViewGroup.java"


# static fields
.field private static final UPDATE_CAPTIONBAR:I = 0x1

.field private static _instance:Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;

.field private static mChangeModeListener:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$ChangeModeListener;

.field private static mTimeLineListener:Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$TimeLineListener;


# instance fields
.field mElement:Lcom/samsung/app/video/editor/external/Element;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 55
    new-instance v0, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup$2;

    invoke-direct {v0}, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup$2;-><init>()V

    sput-object v0, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->mChangeModeListener:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$ChangeModeListener;

    .line 63
    new-instance v0, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup$3;

    invoke-direct {v0}, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup$3;-><init>()V

    sput-object v0, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->mTimeLineListener:Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$TimeLineListener;

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 115
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 38
    new-instance v0, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup$1;-><init>(Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->mHandler:Landroid/os/Handler;

    .line 116
    sput-object p0, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->_instance:Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;

    .line 117
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 108
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    new-instance v0, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup$1;-><init>(Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->mHandler:Landroid/os/Handler;

    .line 109
    sput-object p0, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->_instance:Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;

    .line 112
    return-void
.end method

.method static synthetic access$0()Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->_instance:Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;

    return-object v0
.end method

.method static synthetic access$1(Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;)Landroid/os/Handler;
    .registers 2
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static getInstance()Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;
    .registers 1

    .prologue
    .line 120
    sget-object v0, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->_instance:Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;

    return-object v0
.end method


# virtual methods
.method public getMyWidth()I
    .registers 2

    .prologue
    .line 310
    const/16 v0, 0x4ec

    return v0
.end method

.method public getTime(I)F
    .registers 5
    .parameter "x"

    .prologue
    .line 187
    iget-object v1, p0, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->mElement:Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Element;->getDuration()F

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->getMyWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 188
    .local v0, scale:F
    int-to-float v1, p1

    mul-float/2addr v1, v0

    return v1
.end method

.method public final getView(I)Landroid/view/View;
    .registers 6
    .parameter "x"

    .prologue
    .line 279
    const/4 v2, 0x0

    .line 281
    .local v2, t:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->getChildCount()I

    move-result v3

    if-lt v1, v3, :cond_a

    .line 299
    const/4 v0, 0x0

    :cond_9
    return-object v0

    .line 282
    :cond_a
    invoke-virtual {p0, v1}, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 286
    .local v0, child:Landroid/view/View;
    instance-of v3, v0, Lcom/sec/android/app/ve/view/timeline/paint/DurationView;

    if-eqz v3, :cond_20

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_20

    move-object v3, v0

    .line 287
    check-cast v3, Lcom/sec/android/app/ve/view/timeline/paint/DurationView;

    invoke-virtual {v3}, Lcom/sec/android/app/ve/view/timeline/paint/DurationView;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    .line 289
    :cond_20
    if-lt p1, v2, :cond_9

    .line 281
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public getViewIndex(Landroid/view/View;)I
    .registers 5
    .parameter "v"

    .prologue
    .line 314
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->getChildCount()I

    move-result v2

    if-lt v1, v2, :cond_9

    .line 320
    const/4 v1, -0x1

    .end local v1           #i:I
    :cond_8
    return v1

    .line 315
    .restart local v1       #i:I
    :cond_9
    invoke-virtual {p0, v1}, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 316
    .local v0, child:Landroid/view/View;
    if-eq v0, p1, :cond_8

    .line 314
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getX(F)I
    .registers 5
    .parameter "time"

    .prologue
    .line 181
    iget-object v1, p0, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->mElement:Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Element;->getDuration()F

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->getMyWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 182
    .local v0, scale:F
    div-float v1, p1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    return v1
.end method

.method public init(Lcom/samsung/app/video/editor/external/Element;)V
    .registers 3
    .parameter "element"

    .prologue
    .line 137
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    if-nez v0, :cond_7

    .line 169
    :goto_6
    return-void

    .line 167
    :cond_7
    iput-object p1, p0, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->mElement:Lcom/samsung/app/video/editor/external/Element;

    .line 168
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->update()V

    goto :goto_6
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 173
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 174
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->mElement:Lcom/samsung/app/video/editor/external/Element;

    .line 175
    return-void
.end method

.method protected onFinishInflate()V
    .registers 1

    .prologue
    .line 124
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 128
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .registers 2
    .parameter "view"

    .prologue
    .line 131
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 133
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->update()V

    .line 134
    return-void
.end method

.method public update()V
    .registers 20

    .prologue
    .line 194
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->mElement:Lcom/samsung/app/video/editor/external/Element;

    .line 195
    .local v6, element:Lcom/samsung/app/video/editor/external/Element;
    const/4 v8, 0x0

    .line 196
    .local v8, i:I
    :goto_5
    invoke-virtual {v6}, Lcom/samsung/app/video/editor/external/Element;->getDrawingEleListCount()I

    move-result v17

    move/from16 v0, v17

    if-lt v8, v0, :cond_17

    .line 263
    move v10, v8

    .local v10, j:I
    :goto_e
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->getChildCount()I

    move-result v17

    move/from16 v0, v17

    if-lt v10, v0, :cond_11b

    .line 266
    return-void

    .line 197
    .end local v10           #j:I
    :cond_17
    invoke-virtual {v6}, Lcom/samsung/app/video/editor/external/Element;->getDrawingEleList()Ljava/util/List;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/app/video/editor/external/ClipartParams;

    .line 199
    .local v4, clipParams:Lcom/samsung/app/video/editor/external/ClipartParams;
    invoke-virtual {v4}, Lcom/samsung/app/video/editor/external/ClipartParams;->getStartTime()F

    move-result v17

    invoke-virtual {v6}, Lcom/samsung/app/video/editor/external/Element;->getSplitTime()F

    move-result v18

    sub-float v13, v17, v18

    .line 200
    .local v13, startTime:F
    invoke-virtual {v4}, Lcom/samsung/app/video/editor/external/ClipartParams;->getEndTime()F

    move-result v17

    invoke-virtual {v6}, Lcom/samsung/app/video/editor/external/Element;->getSplitTime()F

    move-result v18

    sub-float v7, v17, v18

    .line 215
    .local v7, endTime:F
    invoke-virtual {v6}, Lcom/samsung/app/video/editor/external/Element;->getDuration()F

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->getMyWidth()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v12, v17, v18

    .line 216
    .local v12, scale:F
    div-float v17, v13, v12

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v15

    .line 217
    .local v15, storyBoardStartX:I
    div-float v17, v7, v12

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v14

    .line 219
    .local v14, storyBoardEndX:I
    sub-int v16, v14, v15

    .line 221
    .local v16, width:I
    add-int/lit8 v16, v16, 0x7c

    .line 224
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 225
    .local v3, childView:Landroid/view/View;
    if-eqz v3, :cond_85

    .line 226
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/FrameLayout$LayoutParams;

    .line 227
    .local v11, params:Landroid/widget/FrameLayout$LayoutParams;
    move/from16 v0, v16

    iput v0, v11, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 228
    add-int/lit8 v17, v15, -0x3e

    move/from16 v0, v17

    iput v0, v11, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 229
    const/16 v17, 0x3

    move/from16 v0, v17

    iput v0, v11, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    move-object/from16 v17, v3

    .line 230
    check-cast v17, Lcom/sec/android/app/ve/view/timeline/paint/DurationView;

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/sec/android/app/ve/view/timeline/paint/DurationView;->updateText(Lcom/samsung/app/video/editor/external/ClipartParams;)V

    .line 231
    check-cast v3, Lcom/sec/android/app/ve/view/timeline/paint/DurationView;

    .end local v3           #childView:Landroid/view/View;
    invoke-virtual {v3, v11}, Lcom/sec/android/app/ve/view/timeline/paint/DurationView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 196
    :goto_82
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 238
    .end local v11           #params:Landroid/widget/FrameLayout$LayoutParams;
    .restart local v3       #childView:Landroid/view/View;
    :cond_85
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    .line 239
    const-string v18, "layout_inflater"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 238
    check-cast v9, Landroid/view/LayoutInflater;

    .line 241
    .local v9, inflater:Landroid/view/LayoutInflater;
    const v17, 0x7f03000f

    const/16 v18, 0x0

    .line 240
    move/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, v18

    invoke-virtual {v9, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/ve/view/timeline/paint/DurationView;

    .line 242
    .local v5, duration:Lcom/sec/android/app/ve/view/timeline/paint/DurationView;
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v17, 0xc8

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v11, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 245
    .restart local v11       #params:Landroid/widget/FrameLayout$LayoutParams;
    const/16 v17, 0xa

    move/from16 v0, v17

    iput v0, v11, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 247
    add-int/lit8 v17, v15, -0x3e

    move/from16 v0, v17

    iput v0, v11, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 248
    const/16 v17, 0x3

    move/from16 v0, v17

    iput v0, v11, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 250
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v11}, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 251
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "Caption bar added at :"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 252
    const-string v18, " with width :"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 251
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 253
    const/16 v17, 0xc8

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_10c

    .line 254
    const v17, 0x7f0b0031

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/sec/android/app/ve/view/timeline/paint/DurationView;->findViewById(I)Landroid/view/View;

    move-result-object v17

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    .line 255
    const v17, 0x7f0b0035

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/sec/android/app/ve/view/timeline/paint/DurationView;->findViewById(I)Landroid/view/View;

    move-result-object v17

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    .line 258
    :cond_10c
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Lcom/sec/android/app/ve/view/timeline/paint/DurationView;

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/sec/android/app/ve/view/timeline/paint/DurationView;->updateText(Lcom/samsung/app/video/editor/external/ClipartParams;)V

    goto/16 :goto_82

    .line 264
    .end local v3           #childView:Landroid/view/View;
    .end local v4           #clipParams:Lcom/samsung/app/video/editor/external/ClipartParams;
    .end local v5           #duration:Lcom/sec/android/app/ve/view/timeline/paint/DurationView;
    .end local v7           #endTime:F
    .end local v9           #inflater:Landroid/view/LayoutInflater;
    .end local v11           #params:Landroid/widget/FrameLayout$LayoutParams;
    .end local v12           #scale:F
    .end local v13           #startTime:F
    .end local v14           #storyBoardEndX:I
    .end local v15           #storyBoardStartX:I
    .end local v16           #width:I
    .restart local v10       #j:I
    :cond_11b
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-super {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 263
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_e
.end method
