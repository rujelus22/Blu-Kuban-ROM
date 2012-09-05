.class public Lcom/sec/android/app/ve/view/caption/CaptionHolder;
.super Landroid/widget/LinearLayout;
.source "CaptionHolder.java"

# interfaces
.implements Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$TimeLineListener;


# static fields
.field public static final GET_CURRENT_ELEMENT:I = 0x1

.field public static final MODE_NORMAL:I

.field private static _instance:Lcom/sec/android/app/ve/view/caption/CaptionHolder;


# instance fields
.field public CaptionTheme:[I

.field public isProjectPlay:Z

.field private mCurrentElement:Lcom/samsung/app/video/editor/external/Element;

.field mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 38
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_1c

    .line 41
    iput-object v0, p0, Lcom/sec/android/app/ve/view/caption/CaptionHolder;->CaptionTheme:[I

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/ve/view/caption/CaptionHolder;->mCurrentElement:Lcom/samsung/app/video/editor/external/Element;

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/ve/view/caption/CaptionHolder;->isProjectPlay:Z

    .line 114
    new-instance v0, Lcom/sec/android/app/ve/view/caption/CaptionHolder$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/view/caption/CaptionHolder$1;-><init>(Lcom/sec/android/app/ve/view/caption/CaptionHolder;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/view/caption/CaptionHolder;->mHandler:Landroid/os/Handler;

    .line 53
    sput-object p0, Lcom/sec/android/app/ve/view/caption/CaptionHolder;->_instance:Lcom/sec/android/app/ve/view/caption/CaptionHolder;

    .line 54
    return-void

    .line 38
    nop

    :array_1c
    .array-data 0x4
        0x5ct 0x1t 0x2t 0x7ft
        0x5dt 0x1t 0x2t 0x7ft
        0x5et 0x1t 0x2t 0x7ft
        0x5ft 0x1t 0x2t 0x7ft
        0x60t 0x1t 0x2t 0x7ft
        0x61t 0x1t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_1c

    .line 41
    iput-object v0, p0, Lcom/sec/android/app/ve/view/caption/CaptionHolder;->CaptionTheme:[I

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/ve/view/caption/CaptionHolder;->mCurrentElement:Lcom/samsung/app/video/editor/external/Element;

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/ve/view/caption/CaptionHolder;->isProjectPlay:Z

    .line 114
    new-instance v0, Lcom/sec/android/app/ve/view/caption/CaptionHolder$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/view/caption/CaptionHolder$1;-><init>(Lcom/sec/android/app/ve/view/caption/CaptionHolder;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/view/caption/CaptionHolder;->mHandler:Landroid/os/Handler;

    .line 58
    sput-object p0, Lcom/sec/android/app/ve/view/caption/CaptionHolder;->_instance:Lcom/sec/android/app/ve/view/caption/CaptionHolder;

    .line 59
    return-void

    .line 38
    nop

    :array_1c
    .array-data 0x4
        0x5ct 0x1t 0x2t 0x7ft
        0x5dt 0x1t 0x2t 0x7ft
        0x5et 0x1t 0x2t 0x7ft
        0x5ft 0x1t 0x2t 0x7ft
        0x60t 0x1t 0x2t 0x7ft
        0x61t 0x1t 0x2t 0x7ft
    .end array-data
.end method

.method static synthetic access$0(Lcom/sec/android/app/ve/view/caption/CaptionHolder;Lcom/samsung/app/video/editor/external/Element;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/sec/android/app/ve/view/caption/CaptionHolder;->mCurrentElement:Lcom/samsung/app/video/editor/external/Element;

    return-void
.end method

.method static synthetic access$1(Lcom/sec/android/app/ve/view/caption/CaptionHolder;)Lcom/samsung/app/video/editor/external/Element;
    .registers 2
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sec/android/app/ve/view/caption/CaptionHolder;->mCurrentElement:Lcom/samsung/app/video/editor/external/Element;

    return-object v0
.end method

.method public static get_instance()Lcom/sec/android/app/ve/view/caption/CaptionHolder;
    .registers 1

    .prologue
    .line 62
    sget-object v0, Lcom/sec/android/app/ve/view/caption/CaptionHolder;->_instance:Lcom/sec/android/app/ve/view/caption/CaptionHolder;

    return-object v0
.end method

.method private searchCaptionText(F)V
    .registers 8
    .parameter "CurrentStory_time"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 156
    const/4 v1, 0x0

    .line 157
    .local v1, mClipartParams:Lcom/samsung/app/video/editor/external/ClipartParams;
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v3

    if-nez v3, :cond_a

    .line 193
    :cond_9
    :goto_9
    return-void

    .line 159
    :cond_a
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 162
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getTextEleList()Ljava/util/List;

    move-result-object v2

    .line 163
    .local v2, mTextEleList:Ljava/util/List;
    if-eqz v2, :cond_60

    .line 166
    const/4 v0, 0x0

    .local v0, k:I
    :goto_23
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lt v0, v3, :cond_36

    .line 185
    :goto_29
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_9

    .line 186
    invoke-virtual {p0, v5}, Lcom/sec/android/app/ve/view/caption/CaptionHolder;->setCaptionClipartParams(Lcom/samsung/app/video/editor/external/ClipartParams;)V

    .line 187
    invoke-virtual {p0, v4}, Lcom/sec/android/app/ve/view/caption/CaptionHolder;->setCaptionvisible(Z)V

    goto :goto_9

    .line 168
    :cond_36
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #mClipartParams:Lcom/samsung/app/video/editor/external/ClipartParams;
    check-cast v1, Lcom/samsung/app/video/editor/external/ClipartParams;

    .line 170
    .restart local v1       #mClipartParams:Lcom/samsung/app/video/editor/external/ClipartParams;
    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/ClipartParams;->getStoryBoardStartTime()F

    move-result v3

    cmpl-float v3, p1, v3

    if-ltz v3, :cond_57

    .line 172
    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/ClipartParams;->getStoryBoardEndTime()F

    move-result v3

    cmpg-float v3, p1, v3

    if-gtz v3, :cond_57

    .line 174
    invoke-virtual {p0, v1}, Lcom/sec/android/app/ve/view/caption/CaptionHolder;->setCaptionTheme(Lcom/samsung/app/video/editor/external/ClipartParams;)V

    .line 175
    invoke-virtual {p0, v1}, Lcom/sec/android/app/ve/view/caption/CaptionHolder;->setCaptionClipartParams(Lcom/samsung/app/video/editor/external/ClipartParams;)V

    .line 176
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/sec/android/app/ve/view/caption/CaptionHolder;->setCaptionvisible(Z)V

    goto :goto_29

    .line 180
    :cond_57
    invoke-virtual {p0, v5}, Lcom/sec/android/app/ve/view/caption/CaptionHolder;->setCaptionClipartParams(Lcom/samsung/app/video/editor/external/ClipartParams;)V

    .line 181
    invoke-virtual {p0, v4}, Lcom/sec/android/app/ve/view/caption/CaptionHolder;->setCaptionvisible(Z)V

    .line 166
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 190
    .end local v0           #k:I
    :cond_60
    invoke-virtual {p0, v5}, Lcom/sec/android/app/ve/view/caption/CaptionHolder;->setCaptionClipartParams(Lcom/samsung/app/video/editor/external/ClipartParams;)V

    .line 191
    invoke-virtual {p0, v4}, Lcom/sec/android/app/ve/view/caption/CaptionHolder;->setCaptionvisible(Z)V

    goto :goto_9
.end method

.method private setUpdateTypeface(Landroid/graphics/Typeface;ILandroid/graphics/Paint;)V
    .registers 9
    .parameter "tf"
    .parameter "style"
    .parameter "mTextPaintOutline"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 342
    if-eqz p3, :cond_2a

    .line 343
    if-lez p2, :cond_34

    .line 344
    if-nez p1, :cond_2b

    .line 345
    invoke-static {p2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p1

    .line 350
    :goto_c
    invoke-virtual {p3, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 352
    if-eqz p1, :cond_30

    invoke-virtual {p1}, Landroid/graphics/Typeface;->getStyle()I

    move-result v1

    .line 354
    .local v1, typefaceStyle:I
    :goto_15
    xor-int/lit8 v4, v1, -0x1

    and-int v0, p2, v4

    .line 356
    .local v0, need:I
    and-int/lit8 v4, v0, 0x1

    if-eqz v4, :cond_1e

    const/4 v2, 0x1

    :cond_1e
    invoke-virtual {p3, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 359
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_32

    const/high16 v2, -0x4180

    :goto_27
    invoke-virtual {p3, v2}, Landroid/graphics/Paint;->setTextSkewX(F)V

    .line 367
    .end local v0           #need:I
    .end local v1           #typefaceStyle:I
    :cond_2a
    :goto_2a
    return-void

    .line 347
    :cond_2b
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_c

    :cond_30
    move v1, v2

    .line 352
    goto :goto_15

    .restart local v0       #need:I
    .restart local v1       #typefaceStyle:I
    :cond_32
    move v2, v3

    .line 360
    goto :goto_27

    .line 362
    .end local v0           #need:I
    .end local v1           #typefaceStyle:I
    :cond_34
    invoke-virtual {p3, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 363
    invoke-virtual {p3, v3}, Landroid/graphics/Paint;->setTextSkewX(F)V

    .line 364
    invoke-virtual {p3, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_2a
.end method


# virtual methods
.method public getmCurrentElement()Lcom/samsung/app/video/editor/external/Element;
    .registers 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/sec/android/app/ve/view/caption/CaptionHolder;->mCurrentElement:Lcom/samsung/app/video/editor/external/Element;

    return-object v0
.end method

.method public isCaptionShown()Z
    .registers 9

    .prologue
    const/4 v3, 0x0

    .line 372
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->isKenburnsOn()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 393
    :cond_b
    :goto_b
    return v3

    .line 374
    :cond_c
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->isPreviewPlaying()Z

    move-result v4

    if-nez v4, :cond_b

    .line 376
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v4

    if-eqz v4, :cond_b

    .line 378
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v0

    .line 379
    .local v0, mCurrentTranscodeElement:Lcom/samsung/app/video/editor/external/TranscodeElement;
    if-eqz v0, :cond_b

    .line 381
    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementCount()I

    move-result v4

    if-eqz v4, :cond_b

    .line 384
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v4

    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getBaseLinePosition()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getStoryBoardTime(I)F

    move-result v1

    .line 385
    .local v1, time:F
    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getTotalDurationInFloat()F

    move-result v2

    .line 387
    .local v2, totalTime:F
    sub-float v4, v2, v1

    float-to-double v4, v4

    const-wide v6, 0x3fe6666666666666L

    cmpg-double v4, v4, v6

    if-ltz v4, :cond_b

    .line 393
    const/4 v3, 0x1

    goto :goto_b
.end method

.method public onAdded(Lcom/samsung/app/video/editor/external/Element;)V
    .registers 2
    .parameter "addedView"

    .prologue
    .line 75
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .prologue
    .line 225
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 226
    iget-boolean v0, p0, Lcom/sec/android/app/ve/view/caption/CaptionHolder;->isProjectPlay:Z

    if-nez v0, :cond_e

    .line 227
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->addTimeLineListener(Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$TimeLineListener;)V

    .line 228
    :cond_e
    return-void
.end method

.method protected onFinishInflate()V
    .registers 1

    .prologue
    .line 102
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 105
    return-void
.end method

.method public onFocusedChange(Lcom/samsung/app/video/editor/external/Element;Lcom/samsung/app/video/editor/external/Element;)V
    .registers 3
    .parameter "focusElement"
    .parameter "lastFocusElement"

    .prologue
    .line 69
    return-void
.end method

.method public onMusicChanged(Lcom/samsung/app/video/editor/external/Element;Z)V
    .registers 3
    .parameter "element"
    .parameter "added"

    .prologue
    .line 144
    return-void
.end method

.method public onRemoved(Lcom/samsung/app/video/editor/external/Element;)V
    .registers 2
    .parameter "removedView"

    .prologue
    .line 81
    return-void
.end method

.method public onScrolled(Lcom/samsung/app/video/editor/external/Element;FF)V
    .registers 4
    .parameter "element"
    .parameter "elementTime"
    .parameter "transitionTime"

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/caption/CaptionHolder;->showClipArtParam()V

    .line 97
    iput-object p1, p0, Lcom/sec/android/app/ve/view/caption/CaptionHolder;->mCurrentElement:Lcom/samsung/app/video/editor/external/Element;

    .line 98
    return-void
.end method

.method public onUpdate(Lcom/samsung/app/video/editor/external/Element;)V
    .registers 2
    .parameter "updatedView"

    .prologue
    .line 87
    return-void
.end method

.method public setCaptionClipartParams(Lcom/samsung/app/video/editor/external/ClipartParams;)V
    .registers 3
    .parameter "mClipartParams"

    .prologue
    .line 258
    invoke-static {}, Lcom/sec/android/app/ve/view/caption/CaptionPreviewText;->getInstance()Lcom/sec/android/app/ve/view/caption/CaptionPreviewText;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/ve/view/caption/CaptionPreviewText;->setClipartparam(Lcom/samsung/app/video/editor/external/ClipartParams;)V

    .line 259
    return-void
.end method

.method public setCaptionPreviewTextButtonVisible(Z)V
    .registers 6
    .parameter "flag"

    .prologue
    const/4 v3, 0x4

    .line 197
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v1

    .line 198
    const v2, 0x7f0b0096

    invoke-virtual {v1, v2}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 197
    check-cast v0, Landroid/widget/ImageButton;

    .line 200
    .local v0, mImageButton:Landroid/widget/ImageButton;
    if-eqz p1, :cond_21

    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/caption/CaptionHolder;->isCaptionShown()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 201
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/caption/CaptionHolder;->getVisibility()I

    move-result v1

    if-ne v1, v3, :cond_20

    .line 202
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 206
    :cond_20
    :goto_20
    return-void

    .line 204
    :cond_21
    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_20
.end method

.method public setCaptionTheme(Lcom/samsung/app/video/editor/external/ClipartParams;)V
    .registers 5
    .parameter "mClipartParams"

    .prologue
    .line 231
    iget v0, p1, Lcom/samsung/app/video/editor/external/ClipartParams;->themeId:I

    .line 233
    .local v0, mDrawbleID:I
    if-nez v0, :cond_11

    .line 234
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/ve/view/caption/CaptionHolder;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 235
    invoke-static {}, Lcom/sec/android/app/ve/view/caption/CaptionPreviewText;->getInstance()Lcom/sec/android/app/ve/view/caption/CaptionPreviewText;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/ve/view/caption/CaptionPreviewText;->setTextColor(I)V

    .line 240
    :goto_10
    return-void

    .line 239
    :cond_11
    invoke-static {v0}, Lcom/sec/android/app/ve/view/caption/CaptionText;->getCaptionThemeDrawable(I)I

    move-result v1

    .line 238
    invoke-virtual {p0, v1}, Lcom/sec/android/app/ve/view/caption/CaptionHolder;->setBackgroundResource(I)V

    goto :goto_10
.end method

.method public setCaptionvisible(Z)V
    .registers 4
    .parameter "mCaptionflag"

    .prologue
    const/4 v1, 0x0

    .line 244
    if-eqz p1, :cond_e

    .line 245
    invoke-virtual {p0, v1}, Lcom/sec/android/app/ve/view/caption/CaptionHolder;->setVisibility(I)V

    .line 246
    iget-boolean v0, p0, Lcom/sec/android/app/ve/view/caption/CaptionHolder;->isProjectPlay:Z

    if-nez v0, :cond_d

    .line 247
    invoke-virtual {p0, v1}, Lcom/sec/android/app/ve/view/caption/CaptionHolder;->setCaptionPreviewTextButtonVisible(Z)V

    .line 255
    :cond_d
    :goto_d
    return-void

    .line 250
    :cond_e
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/view/caption/CaptionHolder;->setVisibility(I)V

    .line 251
    iget-boolean v0, p0, Lcom/sec/android/app/ve/view/caption/CaptionHolder;->isProjectPlay:Z

    if-nez v0, :cond_d

    .line 252
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/view/caption/CaptionHolder;->setCaptionPreviewTextButtonVisible(Z)V

    goto :goto_d
.end method

.method public setCurrentElement()V
    .registers 2

    .prologue
    .line 110
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 111
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getCurrentElement()Lcom/samsung/app/video/editor/external/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/ve/view/caption/CaptionHolder;->mCurrentElement:Lcom/samsung/app/video/editor/external/Element;

    .line 112
    :cond_10
    return-void
.end method

.method public showCaption(Lcom/samsung/app/video/editor/external/Element;I)V
    .registers 9
    .parameter "mElement"
    .parameter "mCurSec"

    .prologue
    .line 210
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v3

    .line 211
    invoke-virtual {v3}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementList()Ljava/util/List;

    move-result-object v1

    .line 212
    .local v1, ElementList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/app/video/editor/external/Element;>;"
    int-to-float v3, p2

    const/high16 v4, 0x447a

    div-float v0, v3, v4

    .line 213
    .local v0, CurrentStory_time:F
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1f

    .line 221
    :cond_1b
    invoke-direct {p0, v0}, Lcom/sec/android/app/ve/view/caption/CaptionHolder;->searchCaptionText(F)V

    .line 222
    return-void

    .line 213
    :cond_1f
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/app/video/editor/external/Element;

    .line 215
    .local v2, mtempElement:Lcom/samsung/app/video/editor/external/Element;
    if-eq v2, p1, :cond_1b

    .line 219
    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/Element;->getEndTime()F

    move-result v4

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/Element;->getStartTime()F

    move-result v5

    sub-float/2addr v4, v5

    add-float/2addr v0, v4

    goto :goto_15
.end method

.method public showClipArtParam()V
    .registers 4

    .prologue
    .line 148
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getBaseLinePosition()I

    move-result v1

    .line 149
    .local v1, x:I
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v2

    .line 150
    invoke-virtual {v2, v1}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getStoryBoardTime(I)F

    move-result v0

    .line 151
    .local v0, CurrentStory_time:F
    invoke-direct {p0, v0}, Lcom/sec/android/app/ve/view/caption/CaptionHolder;->searchCaptionText(F)V

    .line 153
    return-void
.end method

.method public update()V
    .registers 18

    .prologue
    .line 265
    const/4 v9, 0x0

    .line 266
    .local v9, mClipartParams:Lcom/samsung/app/video/editor/external/ClipartParams;
    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    .line 267
    .local v11, mTextPaintOutline:Landroid/graphics/Paint;
    const/4 v14, 0x1

    invoke-virtual {v11, v14}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 268
    const/high16 v14, 0x42c8

    invoke-virtual {v11, v14}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 270
    const/4 v13, 0x0

    .line 271
    .local v13, viewCapture:Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 272
    .local v2, drawCanvas:Landroid/graphics/Canvas;
    const/4 v8, 0x0

    .line 273
    .local v8, mBackGround:Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v14

    if-eqz v14, :cond_31

    .line 274
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v14

    .line 275
    invoke-virtual {v14}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v14

    invoke-virtual {v14}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getTextEleList()Ljava/util/List;

    move-result-object v10

    .line 277
    .local v10, mTextEleList:Ljava/util/List;
    if-eqz v10, :cond_31

    .line 279
    const/4 v7, 0x0

    .local v7, i:I
    :goto_2b
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v14

    if-lt v7, v14, :cond_32

    .line 337
    .end local v7           #i:I
    .end local v10           #mTextEleList:Ljava/util/List;
    :cond_31
    return-void

    .line 280
    .restart local v7       #i:I
    .restart local v10       #mTextEleList:Ljava/util/List;
    :cond_32
    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #mClipartParams:Lcom/samsung/app/video/editor/external/ClipartParams;
    check-cast v9, Lcom/samsung/app/video/editor/external/ClipartParams;

    .line 282
    .restart local v9       #mClipartParams:Lcom/samsung/app/video/editor/external/ClipartParams;
    iget v14, v9, Lcom/samsung/app/video/editor/external/ClipartParams;->tf:I

    invoke-static {v14}, Lcom/sec/android/app/ve/view/caption/CaptionStyleView;->getTypeFace(I)Landroid/graphics/Typeface;

    move-result-object v14

    .line 283
    iget v15, v9, Lcom/samsung/app/video/editor/external/ClipartParams;->Style:I

    .line 281
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15, v11}, Lcom/sec/android/app/ve/view/caption/CaptionHolder;->setUpdateTypeface(Landroid/graphics/Typeface;ILandroid/graphics/Paint;)V

    .line 284
    iget v1, v9, Lcom/samsung/app/video/editor/external/ClipartParams;->themeId:I

    .line 285
    .local v1, ThemeId:I
    if-eqz v1, :cond_5b

    .line 286
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/ve/view/caption/CaptionHolder;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 289
    invoke-static {v1}, Lcom/sec/android/app/ve/view/caption/CaptionText;->getCaptionThemeDrawable(I)I

    move-result v15

    .line 287
    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 286
    check-cast v14, Landroid/graphics/drawable/BitmapDrawable;

    .line 290
    invoke-virtual {v14}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    .line 293
    :cond_5b
    iget v14, v9, Lcom/samsung/app/video/editor/external/ClipartParams;->clipart_width:I

    .line 294
    iget v15, v9, Lcom/samsung/app/video/editor/external/ClipartParams;->clipart_height:I

    .line 295
    sget-object v16, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 292
    invoke-static/range {v14 .. v16}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 296
    new-instance v2, Landroid/graphics/Canvas;

    .end local v2           #drawCanvas:Landroid/graphics/Canvas;
    invoke-direct {v2, v13}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 299
    .restart local v2       #drawCanvas:Landroid/graphics/Canvas;
    iget v14, v9, Lcom/samsung/app/video/editor/external/ClipartParams;->clipart_width:I

    .line 300
    iget v15, v9, Lcom/samsung/app/video/editor/external/ClipartParams;->clipart_height:I

    .line 299
    mul-int/2addr v14, v15

    mul-int/lit8 v14, v14, 0x4

    invoke-static {v14}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v12

    .line 301
    .local v12, tempBuffer:Ljava/nio/ByteBuffer;
    if-eqz v8, :cond_80

    .line 302
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v2, v8, v14, v15, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 303
    :cond_80
    iget-object v14, v9, Lcom/samsung/app/video/editor/external/ClipartParams;->data:Ljava/lang/String;

    invoke-static {v14}, Lcom/sec/android/app/ve/view/caption/CaptionText;->isTextBigger(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_bf

    .line 304
    const/high16 v14, 0x4248

    invoke-virtual {v11, v14}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 307
    :goto_8d
    iget-object v14, v9, Lcom/samsung/app/video/editor/external/ClipartParams;->data:Ljava/lang/String;

    .line 308
    invoke-static {}, Lcom/sec/android/app/ve/view/caption/CaptionPreviewText;->getInstance()Lcom/sec/android/app/ve/view/caption/CaptionPreviewText;

    move-result-object v15

    iget v15, v15, Lcom/sec/android/app/ve/view/caption/CaptionPreviewText;->BITMAP_PADDING:I

    int-to-float v15, v15

    .line 309
    const/high16 v16, 0x4348

    .line 307
    move/from16 v0, v16

    invoke-virtual {v2, v14, v15, v0, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 310
    invoke-virtual {v13, v12}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 312
    new-instance v4, Ljava/io/File;

    iget-object v14, v9, Lcom/samsung/app/video/editor/external/ClipartParams;->Filepath:Ljava/lang/String;

    invoke-direct {v4, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 313
    .local v4, fdata:Ljava/io/File;
    const/4 v5, 0x0

    .line 315
    .local v5, fosdata:Ljava/io/FileOutputStream;
    :try_start_a8
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_ad
    .catch Ljava/lang/Throwable; {:try_start_a8 .. :try_end_ad} :catch_c5

    .line 316
    .end local v5           #fosdata:Ljava/io/FileOutputStream;
    .local v6, fosdata:Ljava/io/FileOutputStream;
    :try_start_ad
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/io/FileOutputStream;->write([B)V

    .line 317
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->flush()V

    .line 318
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_ba
    .catch Ljava/lang/Throwable; {:try_start_ad .. :try_end_ba} :catch_ca

    move-object v5, v6

    .line 279
    .end local v6           #fosdata:Ljava/io/FileOutputStream;
    .restart local v5       #fosdata:Ljava/io/FileOutputStream;
    :goto_bb
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2b

    .line 306
    .end local v4           #fdata:Ljava/io/File;
    .end local v5           #fosdata:Ljava/io/FileOutputStream;
    :cond_bf
    const/high16 v14, 0x42c8

    invoke-virtual {v11, v14}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_8d

    .line 320
    .restart local v4       #fdata:Ljava/io/File;
    .restart local v5       #fosdata:Ljava/io/FileOutputStream;
    :catch_c5
    move-exception v3

    .line 322
    .local v3, ex:Ljava/lang/Throwable;
    :goto_c6
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_bb

    .line 320
    .end local v3           #ex:Ljava/lang/Throwable;
    .end local v5           #fosdata:Ljava/io/FileOutputStream;
    .restart local v6       #fosdata:Ljava/io/FileOutputStream;
    :catch_ca
    move-exception v3

    move-object v5, v6

    .end local v6           #fosdata:Ljava/io/FileOutputStream;
    .restart local v5       #fosdata:Ljava/io/FileOutputStream;
    goto :goto_c6
.end method
