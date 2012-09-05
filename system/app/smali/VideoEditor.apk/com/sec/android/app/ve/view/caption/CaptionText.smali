.class public Lcom/sec/android/app/ve/view/caption/CaptionText;
.super Landroid/widget/TextView;
.source "CaptionText.java"


# static fields
.field private static CAPTION_THEME_NONE:I

.field public static CaptionTheme:[I

.field private static _instance:Lcom/sec/android/app/ve/view/caption/CaptionText;


# instance fields
.field public BITMAP_HEIGHT:I

.field public BITMAP_PADDING:I

.field public BITMAP_WIDTH:I

.field private Style:I

.field private currString:Ljava/lang/String;

.field private drawCanvas:Landroid/graphics/Canvas;

.field public isProjectPlay:Z

.field private mBackgroundPaint:Landroid/graphics/Paint;

.field private mCaptionTextParent:Landroid/widget/LinearLayout;

.field private mClipartParams:Lcom/samsung/app/video/editor/external/ClipartParams;

.field private mTextPaintOutline:Landroid/graphics/Paint;

.field public textColor:[I

.field public themeId:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 50
    sput v2, Lcom/sec/android/app/ve/view/caption/CaptionText;->CAPTION_THEME_NONE:I

    .line 52
    const/4 v0, 0x7

    new-array v0, v0, [I

    sget v1, Lcom/sec/android/app/ve/view/caption/CaptionText;->CAPTION_THEME_NONE:I

    aput v1, v0, v2

    const/4 v1, 0x1

    .line 53
    const v2, 0x7f02015c

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 54
    const v2, 0x7f02015d

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 55
    const v2, 0x7f02015e

    aput v2, v0, v1

    const/4 v1, 0x4

    .line 56
    const v2, 0x7f02015f

    aput v2, v0, v1

    const/4 v1, 0x5

    .line 57
    const v2, 0x7f020160

    aput v2, v0, v1

    const/4 v1, 0x6

    .line 58
    const v2, 0x7f020161

    aput v2, v0, v1

    .line 52
    sput-object v0, Lcom/sec/android/app/ve/view/caption/CaptionText;->CaptionTheme:[I

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 64
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 41
    const/16 v0, 0x500

    iput v0, p0, Lcom/sec/android/app/ve/view/caption/CaptionText;->BITMAP_WIDTH:I

    const/16 v0, 0xfc

    iput v0, p0, Lcom/sec/android/app/ve/view/caption/CaptionText;->BITMAP_HEIGHT:I

    const/16 v0, 0x50

    iput v0, p0, Lcom/sec/android/app/ve/view/caption/CaptionText;->BITMAP_PADDING:I

    .line 46
    iput-object v2, p0, Lcom/sec/android/app/ve/view/caption/CaptionText;->mClipartParams:Lcom/samsung/app/video/editor/external/ClipartParams;

    .line 47
    iput v1, p0, Lcom/sec/android/app/ve/view/caption/CaptionText;->Style:I

    .line 48
    iput-boolean v1, p0, Lcom/sec/android/app/ve/view/caption/CaptionText;->isProjectPlay:Z

    .line 49
    iput v1, p0, Lcom/sec/android/app/ve/view/caption/CaptionText;->themeId:I

    .line 59
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_2a

    .line 60
    iput-object v0, p0, Lcom/sec/android/app/ve/view/caption/CaptionText;->textColor:[I

    .line 61
    iput-object v2, p0, Lcom/sec/android/app/ve/view/caption/CaptionText;->currString:Ljava/lang/String;

    .line 65
    sput-object p0, Lcom/sec/android/app/ve/view/caption/CaptionText;->_instance:Lcom/sec/android/app/ve/view/caption/CaptionText;

    .line 66
    invoke-direct {p0}, Lcom/sec/android/app/ve/view/caption/CaptionText;->init()V

    .line 67
    return-void

    .line 59
    nop

    :array_2a
    .array-data 0x4
        0x26t 0x0t 0x7t 0x7ft
        0x27t 0x0t 0x7t 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 70
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    const/16 v0, 0x500

    iput v0, p0, Lcom/sec/android/app/ve/view/caption/CaptionText;->BITMAP_WIDTH:I

    const/16 v0, 0xfc

    iput v0, p0, Lcom/sec/android/app/ve/view/caption/CaptionText;->BITMAP_HEIGHT:I

    const/16 v0, 0x50

    iput v0, p0, Lcom/sec/android/app/ve/view/caption/CaptionText;->BITMAP_PADDING:I

    .line 46
    iput-object v2, p0, Lcom/sec/android/app/ve/view/caption/CaptionText;->mClipartParams:Lcom/samsung/app/video/editor/external/ClipartParams;

    .line 47
    iput v1, p0, Lcom/sec/android/app/ve/view/caption/CaptionText;->Style:I

    .line 48
    iput-boolean v1, p0, Lcom/sec/android/app/ve/view/caption/CaptionText;->isProjectPlay:Z

    .line 49
    iput v1, p0, Lcom/sec/android/app/ve/view/caption/CaptionText;->themeId:I

    .line 59
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_2a

    .line 60
    iput-object v0, p0, Lcom/sec/android/app/ve/view/caption/CaptionText;->textColor:[I

    .line 61
    iput-object v2, p0, Lcom/sec/android/app/ve/view/caption/CaptionText;->currString:Ljava/lang/String;

    .line 71
    sput-object p0, Lcom/sec/android/app/ve/view/caption/CaptionText;->_instance:Lcom/sec/android/app/ve/view/caption/CaptionText;

    .line 72
    invoke-direct {p0}, Lcom/sec/android/app/ve/view/caption/CaptionText;->init()V

    .line 75
    return-void

    .line 59
    nop

    :array_2a
    .array-data 0x4
        0x26t 0x0t 0x7t 0x7ft
        0x27t 0x0t 0x7t 0x7ft
    .end array-data
.end method

.method public static getCaptionThemeDrawable(I)I
    .registers 2
    .parameter "themeId"

    .prologue
    .line 367
    sget-object v0, Lcom/sec/android/app/ve/view/caption/CaptionText;->CaptionTheme:[I

    aget v0, v0, p0

    return v0
.end method

.method public static getCaptionThemeTextColor(ILandroid/content/Context;)I
    .registers 4
    .parameter "themeId"
    .parameter "mContext"

    .prologue
    .line 372
    if-nez p0, :cond_4

    .line 373
    const/4 v0, -0x1

    .line 383
    :goto_3
    return v0

    .line 374
    :cond_4
    const/4 v0, 0x3

    if-eq p0, v0, :cond_a

    const/4 v0, 0x5

    if-ne p0, v0, :cond_16

    .line 378
    :cond_a
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070026

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_3

    .line 383
    :cond_16
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070027

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_3
.end method

.method public static get_instance()Lcom/sec/android/app/ve/view/caption/CaptionText;
    .registers 1

    .prologue
    .line 139
    sget-object v0, Lcom/sec/android/app/ve/view/caption/CaptionText;->_instance:Lcom/sec/android/app/ve/view/caption/CaptionText;

    return-object v0
.end method

.method private init()V
    .registers 3

    .prologue
    .line 143
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/ve/view/caption/CaptionText;->mTextPaintOutline:Landroid/graphics/Paint;

    .line 144
    iget-object v0, p0, Lcom/sec/android/app/ve/view/caption/CaptionText;->mTextPaintOutline:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 145
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/caption/CaptionText;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/ve/view/caption/CaptionText;->isTextBigger(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 146
    iget-object v0, p0, Lcom/sec/android/app/ve/view/caption/CaptionText;->mTextPaintOutline:Landroid/graphics/Paint;

    const/high16 v1, 0x4248

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 149
    :goto_22
    iget-object v0, p0, Lcom/sec/android/app/ve/view/caption/CaptionText;->mTextPaintOutline:Landroid/graphics/Paint;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 150
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/ve/view/caption/CaptionText;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 151
    iget-object v0, p0, Lcom/sec/android/app/ve/view/caption/CaptionText;->mBackgroundPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x2900

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 158
    return-void

    .line 148
    :cond_38
    iget-object v0, p0, Lcom/sec/android/app/ve/view/caption/CaptionText;->mTextPaintOutline:Landroid/graphics/Paint;

    const/high16 v1, 0x42c8

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_22
.end method

.method public static isTextBigger(Ljava/lang/String;)Z
    .registers 4
    .parameter "str"

    .prologue
    .line 408
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 409
    .local v0, paint:Landroid/graphics/Paint;
    const/high16 v1, 0x42c8

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 410
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    const v2, 0x441d8000

    cmpl-float v1, v1, v2

    if-lez v1, :cond_17

    const/4 v1, 0x1

    :goto_16
    return v1

    :cond_17
    const/4 v1, 0x0

    goto :goto_16
.end method


# virtual methods
.method public CheckCaptionData()V
    .registers 4

    .prologue
    .line 107
    iget-boolean v1, p0, Lcom/sec/android/app/ve/view/caption/CaptionText;->isProjectPlay:Z

    if-nez v1, :cond_4b

    .line 108
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/caption/CaptionText;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 109
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/caption/CaptionText;->saveCaptionData()V

    .line 126
    :cond_1b
    :goto_1b
    return-void

    .line 110
    :cond_1c
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 111
    iget-object v1, p0, Lcom/sec/android/app/ve/view/caption/CaptionText;->mClipartParams:Lcom/samsung/app/video/editor/external/ClipartParams;

    if-eqz v1, :cond_1b

    .line 112
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v0

    .line 113
    .local v0, tElement:Lcom/samsung/app/video/editor/external/TranscodeElement;
    iget-object v1, p0, Lcom/sec/android/app/ve/view/caption/CaptionText;->mClipartParams:Lcom/samsung/app/video/editor/external/ClipartParams;

    invoke-virtual {v0, v1}, Lcom/samsung/app/video/editor/external/TranscodeElement;->removeTextEleList(Lcom/samsung/app/video/editor/external/ClipartParams;)V

    .line 114
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/ve/view/caption/CaptionText;->mClipartParams:Lcom/samsung/app/video/editor/external/ClipartParams;

    .line 115
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;->update()V

    .line 116
    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getTextEleListCount()I

    move-result v1

    if-nez v1, :cond_1b

    .line 117
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->hideCaptionBar()V

    goto :goto_1b

    .line 121
    .end local v0           #tElement:Lcom/samsung/app/video/editor/external/TranscodeElement;
    :cond_4b
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mCaptionHolder:Lcom/sec/android/app/ve/view/caption/CaptionHolder;

    invoke-virtual {v1}, Lcom/sec/android/app/ve/view/caption/CaptionHolder;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1b

    .line 123
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mCaptionHolder:Lcom/sec/android/app/ve/view/caption/CaptionHolder;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/app/ve/view/caption/CaptionHolder;->setVisibility(I)V

    goto :goto_1b
.end method

.method protected getAcceptedChars()[C
    .registers 2

    .prologue
    .line 135
    const/4 v0, 0x0

    new-array v0, v0, [C

    return-object v0
.end method

.method protected getDefaultEditable()Z
    .registers 2

    .prologue
    .line 334
    const/4 v0, 0x0

    return v0
.end method

.method public getInputType()I
    .registers 2

    .prologue
    .line 131
    const/4 v0, 0x0

    return v0
.end method

.method public getmClipartParams()Lcom/samsung/app/video/editor/external/ClipartParams;
    .registers 2

    .prologue
    .line 328
    iget-object v0, p0, Lcom/sec/android/app/ve/view/caption/CaptionText;->mClipartParams:Lcom/samsung/app/video/editor/external/ClipartParams;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 2
    .parameter "mCanvas"

    .prologue
    .line 269
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 270
    return-void
.end method

.method public onEditorAction(I)V
    .registers 2
    .parameter "arg0"

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/caption/CaptionText;->CheckCaptionData()V

    .line 89
    invoke-super {p0, p1}, Landroid/widget/TextView;->onEditorAction(I)V

    .line 103
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 6
    .parameter "focused"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "focused :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 82
    invoke-super {p0, p1, p2, p3}, Landroid/widget/TextView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 83
    return-void
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 163
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_a

    .line 164
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/caption/CaptionText;->CheckCaptionData()V

    .line 166
    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "event"

    .prologue
    .line 339
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_24

    .line 361
    :cond_7
    :goto_7
    :pswitch_7
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 341
    :pswitch_c
    iget-boolean v0, p0, Lcom/sec/android/app/ve/view/caption/CaptionText;->isProjectPlay:Z

    if-nez v0, :cond_7

    .line 343
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->isPreviewPlaying()Z

    move-result v0

    if-nez v0, :cond_7

    .line 346
    invoke-static {}, Lcom/sec/android/app/ve/view/caption/CaptionText;->get_instance()Lcom/sec/android/app/ve/view/caption/CaptionText;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/view/caption/CaptionText;->setCursorVisible(Z)V

    goto :goto_7

    .line 339
    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_c
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method public saveCaptionData()V
    .registers 15

    .prologue
    const/4 v12, 0x0

    .line 174
    iget-object v9, p0, Lcom/sec/android/app/ve/view/caption/CaptionText;->mClipartParams:Lcom/samsung/app/video/editor/external/ClipartParams;

    if-nez v9, :cond_3e

    .line 176
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v9

    if-eqz v9, :cond_3e

    .line 178
    const/high16 v7, 0x4040

    .line 179
    .local v7, time:F
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getCurrentElement()Lcom/samsung/app/video/editor/external/Element;

    move-result-object v1

    .line 180
    .local v1, element:Lcom/samsung/app/video/editor/external/Element;
    if-eqz v1, :cond_2c

    .line 181
    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Element;->getEndTime()F

    move-result v9

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Element;->getStartTime()F

    move-result v10

    sub-float v7, v9, v10

    .line 182
    const/high16 v9, 0x40a0

    div-float/2addr v7, v9

    .line 183
    const/high16 v9, 0x4040

    cmpg-float v9, v7, v9

    if-gez v9, :cond_2c

    .line 184
    const/high16 v7, 0x4040

    .line 186
    :cond_2c
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v9

    .line 187
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/caption/CaptionText;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    .line 186
    invoke-virtual {v9, v10, v7}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->addText(Ljava/lang/String;F)Lcom/samsung/app/video/editor/external/ClipartParams;

    move-result-object v9

    iput-object v9, p0, Lcom/sec/android/app/ve/view/caption/CaptionText;->mClipartParams:Lcom/samsung/app/video/editor/external/ClipartParams;

    .line 191
    .end local v1           #element:Lcom/samsung/app/video/editor/external/Element;
    .end local v7           #time:F
    :cond_3e
    iget-object v9, p0, Lcom/sec/android/app/ve/view/caption/CaptionText;->mClipartParams:Lcom/samsung/app/video/editor/external/ClipartParams;

    iget v10, p0, Lcom/sec/android/app/ve/view/caption/CaptionText;->BITMAP_HEIGHT:I

    iput v10, v9, Lcom/samsung/app/video/editor/external/ClipartParams;->clipart_height:I

    .line 192
    iget-object v9, p0, Lcom/sec/android/app/ve/view/caption/CaptionText;->mClipartParams:Lcom/samsung/app/video/editor/external/ClipartParams;

    iget v10, p0, Lcom/sec/android/app/ve/view/caption/CaptionText;->BITMAP_WIDTH:I

    iput v10, v9, Lcom/samsung/app/video/editor/external/ClipartParams;->clipart_width:I

    .line 193
    const/4 v0, 0x0

    .line 207
    .local v0, background:Landroid/graphics/Bitmap;
    iget v9, p0, Lcom/sec/android/app/ve/view/caption/CaptionText;->themeId:I

    if-eqz v9, :cond_63

    .line 208
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/caption/CaptionText;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 211
    iget v10, p0, Lcom/sec/android/app/ve/view/caption/CaptionText;->themeId:I

    invoke-static {v10}, Lcom/sec/android/app/ve/view/caption/CaptionText;->getCaptionThemeDrawable(I)I

    move-result v10

    .line 209
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 208
    check-cast v9, Landroid/graphics/drawable/BitmapDrawable;

    .line 212
    invoke-virtual {v9}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 214
    :cond_63
    iget v9, p0, Lcom/sec/android/app/ve/view/caption/CaptionText;->BITMAP_WIDTH:I

    iget v10, p0, Lcom/sec/android/app/ve/view/caption/CaptionText;->BITMAP_HEIGHT:I

    .line 215
    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 214
    invoke-static {v9, v10, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 217
    .local v8, viewCapture:Landroid/graphics/Bitmap;
    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v9, p0, Lcom/sec/android/app/ve/view/caption/CaptionText;->drawCanvas:Landroid/graphics/Canvas;

    .line 219
    iget v9, p0, Lcom/sec/android/app/ve/view/caption/CaptionText;->BITMAP_WIDTH:I

    .line 220
    iget v10, p0, Lcom/sec/android/app/ve/view/caption/CaptionText;->BITMAP_HEIGHT:I

    .line 219
    mul-int/2addr v9, v10

    mul-int/lit8 v9, v9, 0x4

    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 221
    .local v6, tempBuffer:Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_87

    .line 222
    iget-object v9, p0, Lcom/sec/android/app/ve/view/caption/CaptionText;->drawCanvas:Landroid/graphics/Canvas;

    const/4 v10, 0x0

    invoke-virtual {v9, v0, v12, v12, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 223
    :cond_87
    iget-object v9, p0, Lcom/sec/android/app/ve/view/caption/CaptionText;->drawCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/caption/CaptionText;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    iget v11, p0, Lcom/sec/android/app/ve/view/caption/CaptionText;->BITMAP_PADDING:I

    int-to-float v11, v11

    const/high16 v12, 0x4348

    .line 224
    iget-object v13, p0, Lcom/sec/android/app/ve/view/caption/CaptionText;->mTextPaintOutline:Landroid/graphics/Paint;

    .line 223
    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 225
    invoke-virtual {v8, v6}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 233
    new-instance v3, Ljava/io/File;

    iget-object v9, p0, Lcom/sec/android/app/ve/view/caption/CaptionText;->mClipartParams:Lcom/samsung/app/video/editor/external/ClipartParams;

    iget-object v9, v9, Lcom/samsung/app/video/editor/external/ClipartParams;->Filepath:Ljava/lang/String;

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 234
    .local v3, fdata:Ljava/io/File;
    const/4 v4, 0x0

    .line 236
    .local v4, fosdata:Ljava/io/FileOutputStream;
    :try_start_a8
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_ad
    .catch Ljava/lang/Throwable; {:try_start_a8 .. :try_end_ad} :catch_fd

    .line 237
    .end local v4           #fosdata:Ljava/io/FileOutputStream;
    .local v5, fosdata:Ljava/io/FileOutputStream;
    :try_start_ad
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/io/FileOutputStream;->write([B)V

    .line 238
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V

    .line 239
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_ba
    .catch Ljava/lang/Throwable; {:try_start_ad .. :try_end_ba} :catch_102

    move-object v4, v5

    .line 245
    .end local v5           #fosdata:Ljava/io/FileOutputStream;
    .restart local v4       #fosdata:Ljava/io/FileOutputStream;
    :goto_bb
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 250
    iget-object v9, p0, Lcom/sec/android/app/ve/view/caption/CaptionText;->mClipartParams:Lcom/samsung/app/video/editor/external/ClipartParams;

    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/caption/CaptionText;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/samsung/app/video/editor/external/ClipartParams;->data:Ljava/lang/String;

    .line 251
    iget-object v9, p0, Lcom/sec/android/app/ve/view/caption/CaptionText;->mClipartParams:Lcom/samsung/app/video/editor/external/ClipartParams;

    iget-object v10, p0, Lcom/sec/android/app/ve/view/caption/CaptionText;->mTextPaintOutline:Landroid/graphics/Paint;

    invoke-virtual {v10}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v10

    invoke-static {v10}, Lcom/sec/android/app/ve/view/caption/CaptionStyleView;->getTypeFaceInt(Landroid/graphics/Typeface;)I

    move-result v10

    iput v10, v9, Lcom/samsung/app/video/editor/external/ClipartParams;->tf:I

    .line 252
    iget-object v9, p0, Lcom/sec/android/app/ve/view/caption/CaptionText;->mClipartParams:Lcom/samsung/app/video/editor/external/ClipartParams;

    iget v10, p0, Lcom/sec/android/app/ve/view/caption/CaptionText;->Style:I

    iput v10, v9, Lcom/samsung/app/video/editor/external/ClipartParams;->Style:I

    .line 253
    iget-object v9, p0, Lcom/sec/android/app/ve/view/caption/CaptionText;->mClipartParams:Lcom/samsung/app/video/editor/external/ClipartParams;

    iget v10, p0, Lcom/sec/android/app/ve/view/caption/CaptionText;->themeId:I

    iput v10, v9, Lcom/samsung/app/video/editor/external/ClipartParams;->themeId:I

    .line 254
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;->update()V

    .line 256
    invoke-static {}, Lcom/sec/android/app/ve/view/caption/CaptionText;->get_instance()Lcom/sec/android/app/ve/view/caption/CaptionText;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/sec/android/app/ve/view/caption/CaptionText;->setCursorVisible(Z)V

    .line 258
    invoke-static {}, Lcom/sec/android/app/ve/view/caption/CaptionPreviewText;->getInstance()Lcom/sec/android/app/ve/view/caption/CaptionPreviewText;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/app/ve/view/caption/CaptionText;->mClipartParams:Lcom/samsung/app/video/editor/external/ClipartParams;

    invoke-virtual {v9, v10}, Lcom/sec/android/app/ve/view/caption/CaptionPreviewText;->setClipartparam(Lcom/samsung/app/video/editor/external/ClipartParams;)V

    .line 260
    return-void

    .line 241
    :catch_fd
    move-exception v2

    .line 243
    .local v2, ex:Ljava/lang/Throwable;
    :goto_fe
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_bb

    .line 241
    .end local v2           #ex:Ljava/lang/Throwable;
    .end local v4           #fosdata:Ljava/io/FileOutputStream;
    .restart local v5       #fosdata:Ljava/io/FileOutputStream;
    :catch_102
    move-exception v2

    move-object v4, v5

    .end local v5           #fosdata:Ljava/io/FileOutputStream;
    .restart local v4       #fosdata:Ljava/io/FileOutputStream;
    goto :goto_fe
.end method

.method public setCaptionStyle(Lcom/sec/android/app/ve/view/PreviewViewGroup$CaptionStyle;)V
    .registers 4
    .parameter "c"

    .prologue
    .line 264
    invoke-virtual {p1}, Lcom/sec/android/app/ve/view/PreviewViewGroup$CaptionStyle;->getTf()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/ve/view/PreviewViewGroup$CaptionStyle;->getmTextStyle()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/ve/view/caption/CaptionText;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 265
    return-void
.end method

.method public setClipartparam(Lcom/samsung/app/video/editor/external/ClipartParams;)V
    .registers 4
    .parameter "mParams"

    .prologue
    .line 315
    const-string v1, ""

    invoke-virtual {p0, v1}, Lcom/sec/android/app/ve/view/caption/CaptionText;->setText(Ljava/lang/CharSequence;)V

    .line 316
    iput-object p1, p0, Lcom/sec/android/app/ve/view/caption/CaptionText;->mClipartParams:Lcom/samsung/app/video/editor/external/ClipartParams;

    .line 317
    iget-object v1, p0, Lcom/sec/android/app/ve/view/caption/CaptionText;->mClipartParams:Lcom/samsung/app/video/editor/external/ClipartParams;

    if-eqz v1, :cond_27

    .line 318
    iget-object v1, p0, Lcom/sec/android/app/ve/view/caption/CaptionText;->mClipartParams:Lcom/samsung/app/video/editor/external/ClipartParams;

    iget-object v1, v1, Lcom/samsung/app/video/editor/external/ClipartParams;->data:Ljava/lang/String;

    if-eqz v1, :cond_27

    .line 319
    iget-object v1, p0, Lcom/sec/android/app/ve/view/caption/CaptionText;->mClipartParams:Lcom/samsung/app/video/editor/external/ClipartParams;

    iget v1, v1, Lcom/samsung/app/video/editor/external/ClipartParams;->tf:I

    invoke-static {v1}, Lcom/sec/android/app/ve/view/caption/CaptionStyleView;->getTypeFace(I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 320
    .local v0, type:Landroid/graphics/Typeface;
    iget-object v1, p0, Lcom/sec/android/app/ve/view/caption/CaptionText;->mClipartParams:Lcom/samsung/app/video/editor/external/ClipartParams;

    iget v1, v1, Lcom/samsung/app/video/editor/external/ClipartParams;->Style:I

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/ve/view/caption/CaptionText;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 321
    iget-object v1, p0, Lcom/sec/android/app/ve/view/caption/CaptionText;->mClipartParams:Lcom/samsung/app/video/editor/external/ClipartParams;

    iget-object v1, v1, Lcom/samsung/app/video/editor/external/ClipartParams;->data:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/ve/view/caption/CaptionText;->setText(Ljava/lang/CharSequence;)V

    .line 325
    .end local v0           #type:Landroid/graphics/Typeface;
    :cond_27
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .registers 5
    .parameter "text"
    .parameter "type"

    .prologue
    .line 388
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1f

    .line 389
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/ve/view/caption/CaptionText;->currString:Ljava/lang/String;

    .line 390
    iget-object v0, p0, Lcom/sec/android/app/ve/view/caption/CaptionText;->currString:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/ve/view/caption/CaptionText;->isTextBigger(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 391
    iget-object v0, p0, Lcom/sec/android/app/ve/view/caption/CaptionText;->mTextPaintOutline:Landroid/graphics/Paint;

    const/high16 v1, 0x4248

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 396
    :cond_1f
    :goto_1f
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 397
    return-void

    .line 393
    :cond_23
    iget-object v0, p0, Lcom/sec/android/app/ve/view/caption/CaptionText;->mTextPaintOutline:Landroid/graphics/Paint;

    const/high16 v1, 0x42c8

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_1f
.end method

.method public setTextColor(I)V
    .registers 3
    .parameter "color"

    .prologue
    .line 402
    iget-object v0, p0, Lcom/sec/android/app/ve/view/caption/CaptionText;->mTextPaintOutline:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 403
    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 404
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .registers 3
    .parameter "tf"

    .prologue
    .line 275
    iget-object v0, p0, Lcom/sec/android/app/ve/view/caption/CaptionText;->mTextPaintOutline:Landroid/graphics/Paint;

    if-eqz v0, :cond_9

    .line 276
    iget-object v0, p0, Lcom/sec/android/app/ve/view/caption/CaptionText;->mTextPaintOutline:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 277
    :cond_9
    invoke-super {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 278
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;I)V
    .registers 9
    .parameter "tf"
    .parameter "style"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 283
    iput p2, p0, Lcom/sec/android/app/ve/view/caption/CaptionText;->Style:I

    .line 284
    iget-object v4, p0, Lcom/sec/android/app/ve/view/caption/CaptionText;->mTextPaintOutline:Landroid/graphics/Paint;

    if-eqz v4, :cond_34

    .line 285
    if-lez p2, :cond_41

    .line 286
    if-nez p1, :cond_38

    .line 287
    invoke-static {p2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p1

    .line 292
    :goto_10
    iget-object v4, p0, Lcom/sec/android/app/ve/view/caption/CaptionText;->mTextPaintOutline:Landroid/graphics/Paint;

    invoke-virtual {v4, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 294
    if-eqz p1, :cond_3d

    invoke-virtual {p1}, Landroid/graphics/Typeface;->getStyle()I

    move-result v1

    .line 296
    .local v1, typefaceStyle:I
    :goto_1b
    xor-int/lit8 v4, v1, -0x1

    and-int v0, p2, v4

    .line 298
    .local v0, need:I
    iget-object v4, p0, Lcom/sec/android/app/ve/view/caption/CaptionText;->mTextPaintOutline:Landroid/graphics/Paint;

    and-int/lit8 v5, v0, 0x1

    if-eqz v5, :cond_26

    const/4 v2, 0x1

    :cond_26
    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 300
    iget-object v4, p0, Lcom/sec/android/app/ve/view/caption/CaptionText;->mTextPaintOutline:Landroid/graphics/Paint;

    .line 301
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_3f

    const/high16 v2, -0x4180

    :goto_31
    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setTextSkewX(F)V

    .line 309
    .end local v0           #need:I
    .end local v1           #typefaceStyle:I
    :cond_34
    :goto_34
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 310
    return-void

    .line 289
    :cond_38
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_10

    :cond_3d
    move v1, v2

    .line 294
    goto :goto_1b

    .restart local v0       #need:I
    .restart local v1       #typefaceStyle:I
    :cond_3f
    move v2, v3

    .line 302
    goto :goto_31

    .line 304
    .end local v0           #need:I
    .end local v1           #typefaceStyle:I
    :cond_41
    iget-object v4, p0, Lcom/sec/android/app/ve/view/caption/CaptionText;->mTextPaintOutline:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 305
    iget-object v2, p0, Lcom/sec/android/app/ve/view/caption/CaptionText;->mTextPaintOutline:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSkewX(F)V

    .line 306
    iget-object v2, p0, Lcom/sec/android/app/ve/view/caption/CaptionText;->mTextPaintOutline:Landroid/graphics/Paint;

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_34
.end method
