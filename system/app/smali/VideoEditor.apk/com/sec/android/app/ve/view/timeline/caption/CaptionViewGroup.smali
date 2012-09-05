.class public Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;
.super Landroid/widget/FrameLayout;
.source "CaptionViewGroup.java"


# static fields
.field private static final UPDATE_CAPTIONBAR:I = 0x1

.field private static _instance:Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;

.field private static mChangeModeListener:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$ChangeModeListener;

.field private static mTimeLineListener:Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$TimeLineListener;


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 59
    new-instance v0, Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup$2;

    invoke-direct {v0}, Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup$2;-><init>()V

    sput-object v0, Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;->mChangeModeListener:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$ChangeModeListener;

    .line 67
    new-instance v0, Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup$3;

    invoke-direct {v0}, Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup$3;-><init>()V

    sput-object v0, Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;->mTimeLineListener:Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$TimeLineListener;

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 119
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 42
    new-instance v0, Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup$1;-><init>(Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;->mHandler:Landroid/os/Handler;

    .line 120
    sput-object p0, Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;->_instance:Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;

    .line 121
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 112
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    new-instance v0, Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup$1;-><init>(Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;->mHandler:Landroid/os/Handler;

    .line 113
    sput-object p0, Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;->_instance:Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;

    .line 116
    return-void
.end method

.method static synthetic access$0()Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;
    .registers 1

    .prologue
    .line 37
    sget-object v0, Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;->_instance:Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;

    return-object v0
.end method

.method static synthetic access$1(Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;)Landroid/os/Handler;
    .registers 2
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private createTextElement(FLjava/lang/String;)Lcom/samsung/app/video/editor/external/ClipartParams;
    .registers 6
    .parameter "duration"
    .parameter "displayName"

    .prologue
    .line 272
    new-instance v0, Lcom/samsung/app/video/editor/external/ClipartParams;

    invoke-direct {v0}, Lcom/samsung/app/video/editor/external/ClipartParams;-><init>()V

    .line 274
    .local v0, clipParams:Lcom/samsung/app/video/editor/external/ClipartParams;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "got the duration for clipParams create:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 275
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 274
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 277
    return-object v0
.end method

.method public static getInstance()Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;
    .registers 1

    .prologue
    .line 124
    sget-object v0, Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;->_instance:Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;

    return-object v0
.end method

.method private init()V
    .registers 3

    .prologue
    .line 145
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    if-nez v0, :cond_7

    .line 151
    :goto_6
    return-void

    .line 148
    :cond_7
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;->mTimeLineListener:Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$TimeLineListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->addTimeLineListener(Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$TimeLineListener;)V

    .line 149
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;->mChangeModeListener:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$ChangeModeListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->addChangeModeListener(Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$ChangeModeListener;)V

    .line 150
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;->update()V

    goto :goto_6
.end method

.method private setText(Ljava/lang/String;Lcom/samsung/app/video/editor/external/ClipartParams;)V
    .registers 4
    .parameter "displayName"
    .parameter "clipParams"

    .prologue
    .line 198
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    if-nez v0, :cond_7

    .line 205
    :goto_6
    return-void

    .line 201
    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;->update()V

    goto :goto_6
.end method


# virtual methods
.method public changePosition(FFLcom/sec/android/app/ve/view/timeline/caption/Caption;)V
    .registers 8
    .parameter "x"
    .parameter "y"
    .parameter "view"

    .prologue
    .line 334
    float-to-int v2, p1

    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    .line 335
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getBaseLinePosition()I

    move-result v3

    .line 334
    add-int/2addr v2, v3

    int-to-float p1, v2

    .line 344
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getMyWidth()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_23

    .line 345
    const-string v2, "Caption clip dropped out of the timeline"

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 359
    :goto_22
    return-void

    .line 348
    :cond_23
    const/4 v2, 0x0

    cmpg-float v2, p1, v2

    if-gez v2, :cond_29

    .line 349
    const/4 p1, 0x0

    .line 351
    :cond_29
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v2

    float-to-int v3, p1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getStoryBoardTime(I)F

    move-result v1

    .line 352
    .local v1, startTimeInStoryBoard:F
    invoke-virtual {p3}, Lcom/sec/android/app/ve/view/timeline/caption/Caption;->getElement()Lcom/samsung/app/video/editor/external/ClipartParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/ClipartParams;->getStoryBoardEndTime()F

    move-result v2

    add-float/2addr v2, v1

    invoke-virtual {p3}, Lcom/sec/android/app/ve/view/timeline/caption/Caption;->getElement()Lcom/samsung/app/video/editor/external/ClipartParams;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/app/video/editor/external/ClipartParams;->getStoryBoardStartTime()F

    move-result v3

    sub-float v0, v2, v3

    .line 353
    .local v0, endTimeInStoryBoard:F
    invoke-virtual {p3}, Lcom/sec/android/app/ve/view/timeline/caption/Caption;->getElement()Lcom/samsung/app/video/editor/external/ClipartParams;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/app/video/editor/external/ClipartParams;->setStoryBoardStartTime(F)V

    .line 354
    invoke-virtual {p3}, Lcom/sec/android/app/ve/view/timeline/caption/Caption;->getElement()Lcom/samsung/app/video/editor/external/ClipartParams;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/samsung/app/video/editor/external/ClipartParams;->setStoryBoardEndTime(F)V

    .line 356
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/TranscodeElement;->updateTextEleList()V

    .line 357
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;->update()V

    goto :goto_22
.end method

.method public getMyWidth()I
    .registers 4

    .prologue
    .line 314
    const/4 v1, 0x0

    .line 315
    .local v1, width:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;->getChildCount()I

    move-result v2

    if-lt v0, v2, :cond_9

    .line 319
    return v1

    .line 316
    :cond_9
    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    .line 315
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public final getView(I)Landroid/view/View;
    .registers 6
    .parameter "x"

    .prologue
    .line 290
    const/4 v2, 0x0

    .line 292
    .local v2, t:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;->getChildCount()I

    move-result v3

    if-lt v1, v3, :cond_a

    .line 310
    const/4 v0, 0x0

    :cond_9
    return-object v0

    .line 293
    :cond_a
    invoke-virtual {p0, v1}, Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 297
    .local v0, child:Landroid/view/View;
    instance-of v3, v0, Lcom/sec/android/app/ve/view/timeline/caption/Caption;

    if-eqz v3, :cond_20

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_20

    move-object v3, v0

    .line 298
    check-cast v3, Lcom/sec/android/app/ve/view/timeline/caption/Caption;

    invoke-virtual {v3}, Lcom/sec/android/app/ve/view/timeline/caption/Caption;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    .line 300
    :cond_20
    if-lt p1, v2, :cond_9

    .line 292
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public getViewIndex(Landroid/view/View;)I
    .registers 5
    .parameter "v"

    .prologue
    .line 323
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;->getChildCount()I

    move-result v2

    if-lt v1, v2, :cond_9

    .line 329
    const/4 v1, -0x1

    .end local v1           #i:I
    :cond_8
    return v1

    .line 324
    .restart local v1       #i:I
    :cond_9
    invoke-virtual {p0, v1}, Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 325
    .local v0, child:Landroid/view/View;
    if-eq v0, p1, :cond_8

    .line 323
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public insertText(FFLjava/lang/String;F)Lcom/samsung/app/video/editor/external/ClipartParams;
    .registers 10
    .parameter "x"
    .parameter "y"
    .parameter "displayName"
    .parameter "duration"

    .prologue
    .line 154
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v3

    if-nez v3, :cond_8

    .line 155
    const/4 v0, 0x0

    .line 192
    :goto_7
    return-object v0

    .line 156
    :cond_8
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v3

    .line 157
    invoke-virtual {v3}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v2

    .line 159
    .local v2, transcodeElement:Lcom/samsung/app/video/editor/external/TranscodeElement;
    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getTextEleListCount()I

    move-result v3

    if-eqz v3, :cond_25

    .line 160
    float-to-int v3, p1

    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    .line 161
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getBaseLinePosition()I

    move-result v4

    .line 160
    add-int/2addr v3, v4

    .line 177
    :cond_25
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v3

    .line 178
    float-to-int v4, p1

    invoke-virtual {v3, v4}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getStoryBoardTime(I)F

    move-result v1

    .line 181
    .local v1, startTimeInStoryBoard:F
    invoke-direct {p0, p4, p3}, Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;->createTextElement(FLjava/lang/String;)Lcom/samsung/app/video/editor/external/ClipartParams;

    move-result-object v0

    .line 182
    .local v0, clipParams:Lcom/samsung/app/video/editor/external/ClipartParams;
    invoke-virtual {v0, v1}, Lcom/samsung/app/video/editor/external/ClipartParams;->setStoryBoardStartTime(F)V

    .line 183
    add-float v3, v1, p4

    invoke-virtual {v0, v3}, Lcom/samsung/app/video/editor/external/ClipartParams;->setStoryBoardEndTime(F)V

    .line 185
    iput-object p3, v0, Lcom/samsung/app/video/editor/external/ClipartParams;->data:Ljava/lang/String;

    .line 187
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Text startTime and end time in storyboard :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 188
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-float v4, v1, p4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 187
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 190
    invoke-virtual {v2, v0}, Lcom/samsung/app/video/editor/external/TranscodeElement;->addTextEleList(Lcom/samsung/app/video/editor/external/ClipartParams;)V

    .line 191
    invoke-direct {p0, p3, v0}, Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;->setText(Ljava/lang/String;Lcom/samsung/app/video/editor/external/ClipartParams;)V

    goto :goto_7
.end method

.method protected onFinishInflate()V
    .registers 1

    .prologue
    .line 128
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 132
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 135
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 136
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_10

    .line 138
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->hideCaptionBar()V

    .line 141
    :cond_10
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;->update()V

    .line 142
    return-void
.end method

.method public setVisibility(I)V
    .registers 5
    .parameter "visibility"

    .prologue
    .line 210
    const/16 v2, 0x8

    if-ne p1, v2, :cond_b

    .line 211
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    :try_start_5
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;->getChildCount()I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_8} :catch_19

    move-result v2

    if-lt v1, v2, :cond_f

    .line 218
    .end local v1           #i:I
    :cond_b
    :goto_b
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 220
    return-void

    .line 212
    .restart local v1       #i:I
    :cond_f
    :try_start_f
    invoke-virtual {p0, v1}, Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/ve/view/timeline/caption/Caption;->hideBarsWhileRemoving(Landroid/view/View;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_16} :catch_19

    .line 211
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 215
    :catch_19
    move-exception v0

    .line 216
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public timeLineFinishInflate()V
    .registers 1

    .prologue
    .line 362
    invoke-direct {p0}, Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;->init()V

    .line 363
    return-void
.end method

.method public update()V
    .registers 14

    .prologue
    .line 223
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v11

    .line 224
    invoke-virtual {v11}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v9

    .line 225
    .local v9, tElement:Lcom/samsung/app/video/editor/external/TranscodeElement;
    const/4 v3, 0x0

    .line 226
    .local v3, i:I
    :goto_9
    invoke-virtual {v9}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getTextEleListCount()I

    move-result v11

    if-lt v3, v11, :cond_17

    .line 263
    move v5, v3

    .local v5, j:I
    :goto_10
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;->getChildCount()I

    move-result v11

    if-lt v5, v11, :cond_97

    .line 266
    return-void

    .line 227
    .end local v5           #j:I
    :cond_17
    invoke-virtual {v9}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getTextEleList()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/app/video/editor/external/ClipartParams;

    .line 229
    .local v2, clipParams:Lcom/samsung/app/video/editor/external/ClipartParams;
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v11

    .line 230
    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/ClipartParams;->getStoryBoardStartTime()F

    move-result v12

    invoke-virtual {v11, v12}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getStoryBoardX(F)I

    move-result v8

    .line 231
    .local v8, storyBoardStartX:I
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v11

    .line 232
    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/ClipartParams;->getStoryBoardEndTime()F

    move-result v12

    invoke-virtual {v11, v12}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getStoryBoardX(F)I

    move-result v7

    .line 234
    .local v7, storyBoardEndX:I
    sub-int v10, v7, v8

    .line 236
    .local v10, width:I
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 237
    const/4 v11, -0x2

    .line 236
    invoke-direct {v6, v10, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 238
    .local v6, params:Landroid/widget/FrameLayout$LayoutParams;
    iput v8, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 239
    const/4 v11, 0x3

    iput v11, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 241
    invoke-virtual {p0, v3}, Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 242
    .local v1, childView:Landroid/view/View;
    if-eqz v1, :cond_5a

    move-object v11, v1

    .line 243
    check-cast v11, Lcom/sec/android/app/ve/view/timeline/caption/Caption;

    invoke-virtual {v11, v2}, Lcom/sec/android/app/ve/view/timeline/caption/Caption;->updateText(Lcom/samsung/app/video/editor/external/ClipartParams;)V

    .line 244
    check-cast v1, Lcom/sec/android/app/ve/view/timeline/caption/Caption;

    .end local v1           #childView:Landroid/view/View;
    invoke-virtual {v1, v6}, Lcom/sec/android/app/ve/view/timeline/caption/Caption;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 226
    :goto_57
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 248
    .restart local v1       #childView:Landroid/view/View;
    :cond_5a
    iget-object v11, p0, Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;->mContext:Landroid/content/Context;

    .line 249
    const-string v12, "layout_inflater"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 248
    check-cast v4, Landroid/view/LayoutInflater;

    .line 251
    .local v4, inflater:Landroid/view/LayoutInflater;
    const v11, 0x7f030006

    const/4 v12, 0x0

    .line 250
    invoke-virtual {v4, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/ve/view/timeline/caption/Caption;

    .line 254
    .local v0, caption:Lcom/sec/android/app/ve/view/timeline/caption/Caption;
    invoke-virtual {p0, v0, v6}, Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 255
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Caption bar added at :"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 256
    const-string v12, " with width :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 255
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 258
    invoke-virtual {p0, v3}, Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/sec/android/app/ve/view/timeline/caption/Caption;

    invoke-virtual {v11, v2}, Lcom/sec/android/app/ve/view/timeline/caption/Caption;->updateText(Lcom/samsung/app/video/editor/external/ClipartParams;)V

    goto :goto_57

    .line 264
    .end local v0           #caption:Lcom/sec/android/app/ve/view/timeline/caption/Caption;
    .end local v1           #childView:Landroid/view/View;
    .end local v2           #clipParams:Lcom/samsung/app/video/editor/external/ClipartParams;
    .end local v4           #inflater:Landroid/view/LayoutInflater;
    .end local v6           #params:Landroid/widget/FrameLayout$LayoutParams;
    .end local v7           #storyBoardEndX:I
    .end local v8           #storyBoardStartX:I
    .end local v10           #width:I
    .restart local v5       #j:I
    :cond_97
    invoke-virtual {p0, v5}, Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-super {p0, v11}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 263
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_10
.end method
