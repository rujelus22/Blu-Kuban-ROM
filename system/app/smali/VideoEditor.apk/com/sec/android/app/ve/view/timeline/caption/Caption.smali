.class public Lcom/sec/android/app/ve/view/timeline/caption/Caption;
.super Landroid/widget/LinearLayout;
.source "Caption.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/ve/view/timeline/caption/Caption$DragViewImpl;
    }
.end annotation


# static fields
.field private static final MAX_LIMIT_PIX:I = 0x80

.field private static final MAX_REQ:I = 0x190

.field private static _instace:Lcom/sec/android/app/ve/view/timeline/caption/Caption;

.field private static dragViewImpl:Lcom/sec/android/app/ve/view/timeline/caption/Caption$DragViewImpl;

.field private static mClickListener:Landroid/view/View$OnClickListener;

.field private static mLongClickListener:Landroid/view/View$OnLongClickListener;


# instance fields
.field private clipParams:Lcom/samsung/app/video/editor/external/ClipartParams;

.field private mDragging:Z

.field private mImgLeftBar:Landroid/widget/ImageView;

.field private mImgRightBar:Landroid/widget/ImageView;

.field private mText:Landroid/widget/TextView;

.field private mTouchListener:Landroid/view/View$OnTouchListener;

.field private mTouchPos:F

.field private myWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 55
    new-instance v0, Lcom/sec/android/app/ve/view/timeline/caption/Caption$1;

    invoke-direct {v0}, Lcom/sec/android/app/ve/view/timeline/caption/Caption$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/ve/view/timeline/caption/Caption;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 91
    new-instance v0, Lcom/sec/android/app/ve/view/timeline/caption/Caption$2;

    invoke-direct {v0}, Lcom/sec/android/app/ve/view/timeline/caption/Caption$2;-><init>()V

    sput-object v0, Lcom/sec/android/app/ve/view/timeline/caption/Caption;->mClickListener:Landroid/view/View$OnClickListener;

    .line 349
    new-instance v0, Lcom/sec/android/app/ve/view/timeline/caption/Caption$DragViewImpl;

    invoke-direct {v0}, Lcom/sec/android/app/ve/view/timeline/caption/Caption$DragViewImpl;-><init>()V

    sput-object v0, Lcom/sec/android/app/ve/view/timeline/caption/Caption;->dragViewImpl:Lcom/sec/android/app/ve/view/timeline/caption/Caption$DragViewImpl;

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 428
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 45
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/sec/android/app/ve/view/timeline/caption/Caption;->mTouchPos:F

    .line 198
    new-instance v0, Lcom/sec/android/app/ve/view/timeline/caption/Caption$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/view/timeline/caption/Caption$3;-><init>(Lcom/sec/android/app/ve/view/timeline/caption/Caption;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/view/timeline/caption/Caption;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 430
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 394
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/sec/android/app/ve/view/timeline/caption/Caption;->mTouchPos:F

    .line 198
    new-instance v0, Lcom/sec/android/app/ve/view/timeline/caption/Caption$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/view/timeline/caption/Caption$3;-><init>(Lcom/sec/android/app/ve/view/timeline/caption/Caption;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/view/timeline/caption/Caption;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 395
    return-void
.end method

.method static synthetic access$0(Lcom/sec/android/app/ve/view/timeline/caption/Caption;)Landroid/widget/TextView;
    .registers 2
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/caption/Caption;->mText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1()Lcom/sec/android/app/ve/view/timeline/caption/Caption$DragViewImpl;
    .registers 1

    .prologue
    .line 349
    sget-object v0, Lcom/sec/android/app/ve/view/timeline/caption/Caption;->dragViewImpl:Lcom/sec/android/app/ve/view/timeline/caption/Caption$DragViewImpl;

    return-object v0
.end method

.method static synthetic access$2(Lcom/sec/android/app/ve/view/timeline/caption/Caption;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/sec/android/app/ve/view/timeline/caption/Caption;->mDragging:Z

    return-void
.end method

.method static synthetic access$3(Lcom/sec/android/app/ve/view/timeline/caption/Caption;)Lcom/samsung/app/video/editor/external/ClipartParams;
    .registers 2
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/caption/Caption;->clipParams:Lcom/samsung/app/video/editor/external/ClipartParams;

    return-object v0
.end method

.method static synthetic access$4(Lcom/sec/android/app/ve/view/timeline/caption/Caption;)F
    .registers 2
    .parameter

    .prologue
    .line 45
    iget v0, p0, Lcom/sec/android/app/ve/view/timeline/caption/Caption;->mTouchPos:F

    return v0
.end method

.method public static hideBars(Landroid/view/View;)V
    .registers 5
    .parameter "view"

    .prologue
    const/16 v3, 0x8

    .line 76
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;->getChildCount()I

    move-result v2

    if-lt v1, v2, :cond_e

    .line 83
    return-void

    .line 77
    :cond_e
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 78
    .local v0, childView:Landroid/view/View;
    if-eq v0, p0, :cond_2c

    .line 79
    const v2, 0x7f0b0018

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 80
    const v2, 0x7f0b0019

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 76
    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method public static hideBarsWhileRemoving(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    const/16 v1, 0x8

    .line 87
    const v0, 0x7f0b0018

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 88
    const v0, 0x7f0b0019

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 89
    return-void
.end method


# virtual methods
.method public getElement()Lcom/samsung/app/video/editor/external/ClipartParams;
    .registers 2

    .prologue
    .line 474
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/caption/Caption;->clipParams:Lcom/samsung/app/video/editor/external/ClipartParams;

    return-object v0
.end method

.method public getMyWidth()I
    .registers 2

    .prologue
    .line 439
    iget v0, p0, Lcom/sec/android/app/ve/view/timeline/caption/Caption;->myWidth:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .prologue
    .line 455
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 456
    sget-object v0, Lcom/sec/android/app/ve/view/timeline/caption/Caption;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/view/timeline/caption/Caption;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 457
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 460
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 461
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/view/timeline/caption/Caption;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 462
    return-void
.end method

.method public onDoubleTap()V
    .registers 5

    .prologue
    .line 398
    const-string v2, "Double tap on Caption"

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 400
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/app/ve/view/timeline/caption/Caption;->mContext:Landroid/content/Context;

    const-class v3, Lcom/sec/android/app/ve/activity/CaptionEditActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 401
    .local v1, mCaptionEditIntent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/sec/android/app/ve/view/timeline/caption/Caption;->clipParams:Lcom/samsung/app/video/editor/external/ClipartParams;

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/ClipartParams;->getStoryBoardStartTime()F

    move-result v2

    const/high16 v3, 0x447a

    mul-float/2addr v2, v3

    float-to-int v0, v2

    .line 402
    .local v0, Current_Storytime:I
    const-string v2, "clipparamStartTime"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 404
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->startActivity(Landroid/content/Intent;)V

    .line 408
    return-void
.end method

.method protected onFinishInflate()V
    .registers 3

    .prologue
    .line 443
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 444
    const v0, 0x7f0b006b

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/view/timeline/caption/Caption;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/ve/view/timeline/caption/Caption;->mText:Landroid/widget/TextView;

    .line 445
    const v0, 0x7f0b0018

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/view/timeline/caption/Caption;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/ve/view/timeline/caption/Caption;->mImgLeftBar:Landroid/widget/ImageView;

    .line 446
    const v0, 0x7f0b0019

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/view/timeline/caption/Caption;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/ve/view/timeline/caption/Caption;->mImgRightBar:Landroid/widget/ImageView;

    .line 448
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/caption/Caption;->mImgLeftBar:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/ve/view/timeline/caption/Caption;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 449
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/caption/Caption;->mImgRightBar:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/ve/view/timeline/caption/Caption;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 451
    sget-object v0, Lcom/sec/android/app/ve/view/timeline/caption/Caption;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/view/timeline/caption/Caption;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 452
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "arg0"

    .prologue
    .line 339
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_c

    .line 341
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/ve/view/timeline/caption/Caption;->mTouchPos:F

    .line 343
    :cond_c
    iget-boolean v0, p0, Lcom/sec/android/app/ve/view/timeline/caption/Caption;->mDragging:Z

    if-eqz v0, :cond_12

    .line 344
    const/4 v0, 0x1

    .line 346
    :goto_11
    return v0

    :cond_12
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_11
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3
    .parameter "params"

    .prologue
    .line 433
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 434
    iget v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, p0, Lcom/sec/android/app/ve/view/timeline/caption/Caption;->myWidth:I

    .line 436
    return-void
.end method

.method public textDelete()V
    .registers 3

    .prologue
    .line 412
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v1

    if-nez v1, :cond_7

    .line 425
    :goto_6
    return-void

    .line 414
    :cond_7
    const-string v1, "Caption delete"

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 415
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v1

    .line 416
    invoke-virtual {v1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v0

    .line 417
    .local v0, transcodeElement:Lcom/samsung/app/video/editor/external/TranscodeElement;
    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getTextEleListCount()I

    move-result v1

    if-lez v1, :cond_1f

    .line 418
    iget-object v1, p0, Lcom/sec/android/app/ve/view/timeline/caption/Caption;->clipParams:Lcom/samsung/app/video/editor/external/ClipartParams;

    invoke-virtual {v0, v1}, Lcom/samsung/app/video/editor/external/TranscodeElement;->removeTextEleList(Lcom/samsung/app/video/editor/external/ClipartParams;)V

    .line 423
    :cond_1f
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;->removeView(Landroid/view/View;)V

    .line 424
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mCaptionHolder:Lcom/sec/android/app/ve/view/caption/CaptionHolder;

    invoke-virtual {v1}, Lcom/sec/android/app/ve/view/caption/CaptionHolder;->showClipArtParam()V

    goto :goto_6
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 478
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Text : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/ve/view/timeline/caption/Caption;->clipParams:Lcom/samsung/app/video/editor/external/ClipartParams;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/caption/Caption;->clipParams:Lcom/samsung/app/video/editor/external/ClipartParams;

    .line 479
    iget-object v0, v0, Lcom/samsung/app/video/editor/external/ClipartParams;->data:Ljava/lang/String;

    .line 478
    :goto_17
    return-object v0

    .line 479
    :cond_18
    const-string v0, "null"

    goto :goto_17
.end method

.method public updateText(Lcom/samsung/app/video/editor/external/ClipartParams;)V
    .registers 4
    .parameter "clipParams"

    .prologue
    .line 465
    iput-object p1, p0, Lcom/sec/android/app/ve/view/timeline/caption/Caption;->clipParams:Lcom/samsung/app/video/editor/external/ClipartParams;

    .line 468
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/caption/Caption;->mText:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/samsung/app/video/editor/external/ClipartParams;->data:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 469
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/caption/Caption;->mText:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 471
    return-void
.end method
