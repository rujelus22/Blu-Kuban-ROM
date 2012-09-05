.class public Lcom/sec/android/app/ve/view/timeline/paint/DurationView;
.super Landroid/widget/RelativeLayout;
.source "DurationView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/ve/view/timeline/paint/DurationView$DragViewImpl;
    }
.end annotation


# static fields
.field private static final MAX_LIMIT_PIX:I = 0xc8

.field private static dragViewImpl:Lcom/sec/android/app/ve/view/timeline/paint/DurationView$DragViewImpl;

.field private static mClickListener:Landroid/view/View$OnClickListener;

.field private static mLongClickListener:Landroid/view/View$OnLongClickListener;


# instance fields
.field private clipParams:Lcom/samsung/app/video/editor/external/ClipartParams;

.field private mDragging:Z

.field private mImgLeftBar:Landroid/widget/ImageView;

.field private mImgRightBar:Landroid/widget/ImageView;

.field private mTouchListener:Landroid/view/View$OnTouchListener;

.field private mTouchPos:F

.field private myWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 45
    new-instance v0, Lcom/sec/android/app/ve/view/timeline/paint/DurationView$1;

    invoke-direct {v0}, Lcom/sec/android/app/ve/view/timeline/paint/DurationView$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/ve/view/timeline/paint/DurationView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 64
    new-instance v0, Lcom/sec/android/app/ve/view/timeline/paint/DurationView$2;

    invoke-direct {v0}, Lcom/sec/android/app/ve/view/timeline/paint/DurationView$2;-><init>()V

    sput-object v0, Lcom/sec/android/app/ve/view/timeline/paint/DurationView;->mClickListener:Landroid/view/View$OnClickListener;

    .line 321
    new-instance v0, Lcom/sec/android/app/ve/view/timeline/paint/DurationView$DragViewImpl;

    invoke-direct {v0}, Lcom/sec/android/app/ve/view/timeline/paint/DurationView$DragViewImpl;-><init>()V

    sput-object v0, Lcom/sec/android/app/ve/view/timeline/paint/DurationView;->dragViewImpl:Lcom/sec/android/app/ve/view/timeline/paint/DurationView$DragViewImpl;

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 389
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 37
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/sec/android/app/ve/view/timeline/paint/DurationView;->mTouchPos:F

    .line 131
    new-instance v0, Lcom/sec/android/app/ve/view/timeline/paint/DurationView$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/view/timeline/paint/DurationView$3;-><init>(Lcom/sec/android/app/ve/view/timeline/paint/DurationView;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/view/timeline/paint/DurationView;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 391
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 366
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/sec/android/app/ve/view/timeline/paint/DurationView;->mTouchPos:F

    .line 131
    new-instance v0, Lcom/sec/android/app/ve/view/timeline/paint/DurationView$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/view/timeline/paint/DurationView$3;-><init>(Lcom/sec/android/app/ve/view/timeline/paint/DurationView;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/view/timeline/paint/DurationView;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 367
    return-void
.end method

.method static synthetic access$0()Lcom/sec/android/app/ve/view/timeline/paint/DurationView$DragViewImpl;
    .registers 1

    .prologue
    .line 321
    sget-object v0, Lcom/sec/android/app/ve/view/timeline/paint/DurationView;->dragViewImpl:Lcom/sec/android/app/ve/view/timeline/paint/DurationView$DragViewImpl;

    return-object v0
.end method

.method static synthetic access$1(Lcom/sec/android/app/ve/view/timeline/paint/DurationView;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/sec/android/app/ve/view/timeline/paint/DurationView;->mDragging:Z

    return-void
.end method

.method static synthetic access$2(Lcom/sec/android/app/ve/view/timeline/paint/DurationView;)Lcom/samsung/app/video/editor/external/ClipartParams;
    .registers 2
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/paint/DurationView;->clipParams:Lcom/samsung/app/video/editor/external/ClipartParams;

    return-object v0
.end method

.method static synthetic access$3(Lcom/sec/android/app/ve/view/timeline/paint/DurationView;Landroid/view/View;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 122
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/ve/view/timeline/paint/DurationView;->setText(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4(Lcom/sec/android/app/ve/view/timeline/paint/DurationView;)F
    .registers 2
    .parameter

    .prologue
    .line 37
    iget v0, p0, Lcom/sec/android/app/ve/view/timeline/paint/DurationView;->mTouchPos:F

    return v0
.end method

.method private setText(Landroid/view/View;Ljava/lang/String;)V
    .registers 7
    .parameter "view"
    .parameter "str"

    .prologue
    const/4 v3, 0x0

    const v2, 0x7f0b0033

    .line 123
    const-string v0, ":"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_23

    .line 124
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/high16 v1, 0x41b0

    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 128
    :goto_19
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    return-void

    .line 126
    :cond_23
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/high16 v1, 0x4210

    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_19
.end method


# virtual methods
.method public getElement()Lcom/samsung/app/video/editor/external/ClipartParams;
    .registers 2

    .prologue
    .line 447
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/paint/DurationView;->clipParams:Lcom/samsung/app/video/editor/external/ClipartParams;

    return-object v0
.end method

.method public getMyWidth()I
    .registers 2

    .prologue
    .line 399
    iget v0, p0, Lcom/sec/android/app/ve/view/timeline/paint/DurationView;->myWidth:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 4

    .prologue
    .line 415
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 416
    iget-object v1, p0, Lcom/sec/android/app/ve/view/timeline/paint/DurationView;->clipParams:Lcom/samsung/app/video/editor/external/ClipartParams;

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/ClipartParams;->getEndTime()F

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/ve/view/trim/TrimBarView;->timeFormat(F)Ljava/lang/String;

    move-result-object v0

    .line 417
    .local v0, str:Ljava/lang/String;
    const v1, 0x7f0b0035

    invoke-virtual {p0, v1}, Lcom/sec/android/app/ve/view/timeline/paint/DurationView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/ve/view/timeline/paint/DurationView;->setText(Landroid/view/View;Ljava/lang/String;)V

    .line 419
    iget-object v1, p0, Lcom/sec/android/app/ve/view/timeline/paint/DurationView;->clipParams:Lcom/samsung/app/video/editor/external/ClipartParams;

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/ClipartParams;->getStartTime()F

    move-result v1

    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->mElement:Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/Element;->getSplitTime()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Lcom/sec/android/app/ve/view/trim/TrimBarView;->timeFormat(F)Ljava/lang/String;

    move-result-object v0

    .line 420
    const v1, 0x7f0b0031

    invoke-virtual {p0, v1}, Lcom/sec/android/app/ve/view/timeline/paint/DurationView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/ve/view/timeline/paint/DurationView;->setText(Landroid/view/View;Ljava/lang/String;)V

    .line 430
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 433
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 434
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/view/timeline/paint/DurationView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 435
    return-void
.end method

.method public onDoubleTap()V
    .registers 2

    .prologue
    .line 370
    const-string v0, "Double tap on Caption"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 371
    return-void
.end method

.method protected onFinishInflate()V
    .registers 3

    .prologue
    .line 403
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 405
    const v0, 0x7f0b0034

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/view/timeline/paint/DurationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/ve/view/timeline/paint/DurationView;->mImgLeftBar:Landroid/widget/ImageView;

    .line 406
    const v0, 0x7f0b0036

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/view/timeline/paint/DurationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/ve/view/timeline/paint/DurationView;->mImgRightBar:Landroid/widget/ImageView;

    .line 408
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/paint/DurationView;->mImgLeftBar:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/ve/view/timeline/paint/DurationView;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 409
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/paint/DurationView;->mImgRightBar:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/ve/view/timeline/paint/DurationView;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 412
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "arg0"

    .prologue
    .line 311
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_c

    .line 313
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/ve/view/timeline/paint/DurationView;->mTouchPos:F

    .line 315
    :cond_c
    iget-boolean v0, p0, Lcom/sec/android/app/ve/view/timeline/paint/DurationView;->mDragging:Z

    if-eqz v0, :cond_12

    .line 316
    const/4 v0, 0x1

    .line 318
    :goto_11
    return v0

    :cond_12
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_11
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3
    .parameter "params"

    .prologue
    .line 394
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 395
    iget v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, p0, Lcom/sec/android/app/ve/view/timeline/paint/DurationView;->myWidth:I

    .line 396
    return-void
.end method

.method public textDelete()V
    .registers 3

    .prologue
    .line 374
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v1

    if-nez v1, :cond_7

    .line 386
    :goto_6
    return-void

    .line 376
    :cond_7
    const-string v1, "Caption delete"

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 377
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v1

    .line 378
    invoke-virtual {v1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v0

    .line 379
    .local v0, transcodeElement:Lcom/samsung/app/video/editor/external/TranscodeElement;
    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getTextEleListCount()I

    move-result v1

    if-lez v1, :cond_1f

    .line 380
    iget-object v1, p0, Lcom/sec/android/app/ve/view/timeline/paint/DurationView;->clipParams:Lcom/samsung/app/video/editor/external/ClipartParams;

    invoke-virtual {v0, v1}, Lcom/samsung/app/video/editor/external/TranscodeElement;->removeTextEleList(Lcom/samsung/app/video/editor/external/ClipartParams;)V

    .line 385
    :cond_1f
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_6
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 451
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Text : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/ve/view/timeline/paint/DurationView;->clipParams:Lcom/samsung/app/video/editor/external/ClipartParams;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/paint/DurationView;->clipParams:Lcom/samsung/app/video/editor/external/ClipartParams;

    iget-object v0, v0, Lcom/samsung/app/video/editor/external/ClipartParams;->data:Ljava/lang/String;

    :goto_17
    return-object v0

    :cond_18
    const-string v0, "null"

    goto :goto_17
.end method

.method public updateText(Lcom/samsung/app/video/editor/external/ClipartParams;)V
    .registers 2
    .parameter "clipParams"

    .prologue
    .line 438
    iput-object p1, p0, Lcom/sec/android/app/ve/view/timeline/paint/DurationView;->clipParams:Lcom/samsung/app/video/editor/external/ClipartParams;

    .line 444
    return-void
.end method
