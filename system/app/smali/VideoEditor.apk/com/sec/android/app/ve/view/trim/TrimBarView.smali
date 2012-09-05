.class public Lcom/sec/android/app/ve/view/trim/TrimBarView;
.super Landroid/widget/LinearLayout;
.source "TrimBarView.java"

# interfaces
.implements Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$TimeLineListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/ve/view/trim/TrimBarView$TrimUndoRedoInfo;
    }
.end annotation


# static fields
.field private static final DISTANCE:I = 0x50

.field private static mTrimUndoRedoInfo:Lcom/sec/android/app/ve/view/trim/TrimBarView$TrimUndoRedoInfo;


# instance fields
.field private mDragging:Z

.field private mLeftBarTotalMovement:I

.field private mLeftTrimbarParent:Landroid/view/ViewGroup;

.field private mLeftTrimbarText:Landroid/widget/TextView;

.field private mPrevX:F

.field private mRightBarTotalMovement:I

.field private mRightTrimbarParent:Landroid/view/ViewGroup;

.field private mRightTrimbarText:Landroid/widget/TextView;

.field mTouchListenerLeft:Landroid/view/View$OnTouchListener;

.field mTouchListenerRight:Landroid/view/View$OnTouchListener;

.field private mTrimLeftImg:Landroid/widget/ImageView;

.field private mTrimRightImg:Landroid/widget/ImageView;

.field private mWhichClicked:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/ve/view/trim/TrimBarView;->mWhichClicked:I

    .line 49
    const v0, -0x3b864000

    iput v0, p0, Lcom/sec/android/app/ve/view/trim/TrimBarView;->mPrevX:F

    .line 87
    new-instance v0, Lcom/sec/android/app/ve/view/trim/TrimBarView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/view/trim/TrimBarView$1;-><init>(Lcom/sec/android/app/ve/view/trim/TrimBarView;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/view/trim/TrimBarView;->mTouchListenerLeft:Landroid/view/View$OnTouchListener;

    .line 108
    new-instance v0, Lcom/sec/android/app/ve/view/trim/TrimBarView$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/view/trim/TrimBarView$2;-><init>(Lcom/sec/android/app/ve/view/trim/TrimBarView;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/view/trim/TrimBarView;->mTouchListenerRight:Landroid/view/View$OnTouchListener;

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/ve/view/trim/TrimBarView;->mWhichClicked:I

    .line 49
    const v0, -0x3b864000

    iput v0, p0, Lcom/sec/android/app/ve/view/trim/TrimBarView;->mPrevX:F

    .line 87
    new-instance v0, Lcom/sec/android/app/ve/view/trim/TrimBarView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/view/trim/TrimBarView$1;-><init>(Lcom/sec/android/app/ve/view/trim/TrimBarView;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/view/trim/TrimBarView;->mTouchListenerLeft:Landroid/view/View$OnTouchListener;

    .line 108
    new-instance v0, Lcom/sec/android/app/ve/view/trim/TrimBarView$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/view/trim/TrimBarView$2;-><init>(Lcom/sec/android/app/ve/view/trim/TrimBarView;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/view/trim/TrimBarView;->mTouchListenerRight:Landroid/view/View$OnTouchListener;

    .line 62
    return-void
.end method

.method static synthetic access$0(Lcom/sec/android/app/ve/view/trim/TrimBarView;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 48
    iput p1, p0, Lcom/sec/android/app/ve/view/trim/TrimBarView;->mWhichClicked:I

    return-void
.end method

.method static synthetic access$1(Lcom/sec/android/app/ve/view/trim/TrimBarView;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/sec/android/app/ve/view/trim/TrimBarView;->mDragging:Z

    return-void
.end method

.method private getMyWidth()I
    .registers 2

    .prologue
    .line 383
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getThumbnailsWidth()I

    move-result v0

    return v0
.end method

.method private getSecFromTime(Ljava/lang/String;)I
    .registers 6
    .parameter "str"

    .prologue
    .line 319
    const/4 v0, 0x0

    .line 320
    .local v0, sec:I
    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 322
    .local v1, splitArry:[Ljava/lang/String;
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 323
    array-length v2, v1

    add-int/lit8 v2, v2, -0x2

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x3c

    add-int/2addr v0, v2

    .line 324
    array-length v2, v1

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2d

    .line 325
    array-length v2, v1

    add-int/lit8 v2, v2, -0x3

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    mul-int/lit16 v2, v2, 0xe10

    add-int/2addr v0, v2

    .line 327
    :cond_2d
    return v0
.end method

.method public static getTrimUndoRedoInfo()Lcom/sec/android/app/ve/view/trim/TrimBarView$TrimUndoRedoInfo;
    .registers 1

    .prologue
    .line 478
    sget-object v0, Lcom/sec/android/app/ve/view/trim/TrimBarView;->mTrimUndoRedoInfo:Lcom/sec/android/app/ve/view/trim/TrimBarView$TrimUndoRedoInfo;

    return-object v0
.end method

.method private moveLeftBarLeft(I)V
    .registers 5
    .parameter "v"

    .prologue
    .line 348
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mving left bar left :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 349
    iget-object v1, p0, Lcom/sec/android/app/ve/view/trim/TrimBarView;->mLeftTrimbarParent:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 350
    .local v0, params:Landroid/widget/LinearLayout$LayoutParams;
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v1, p1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 351
    iget-object v1, p0, Lcom/sec/android/app/ve/view/trim/TrimBarView;->mLeftTrimbarParent:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 353
    iget-object v1, p0, Lcom/sec/android/app/ve/view/trim/TrimBarView;->mRightTrimbarParent:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0           #params:Landroid/widget/LinearLayout$LayoutParams;
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 354
    .restart local v0       #params:Landroid/widget/LinearLayout$LayoutParams;
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 355
    iget-object v1, p0, Lcom/sec/android/app/ve/view/trim/TrimBarView;->mRightTrimbarParent:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 357
    iget v1, p0, Lcom/sec/android/app/ve/view/trim/TrimBarView;->mLeftBarTotalMovement:I

    sub-int/2addr v1, p1

    iput v1, p0, Lcom/sec/android/app/ve/view/trim/TrimBarView;->mLeftBarTotalMovement:I

    .line 358
    invoke-direct {p0}, Lcom/sec/android/app/ve/view/trim/TrimBarView;->updateLeftTextBar()V

    .line 359
    return-void
.end method

.method private moveLeftBarRight(IZ)V
    .registers 6
    .parameter "v"
    .parameter "updateTextBar"

    .prologue
    .line 331
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "moving left bar right :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 332
    iget-object v1, p0, Lcom/sec/android/app/ve/view/trim/TrimBarView;->mLeftTrimbarParent:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 333
    .local v0, params:Landroid/widget/LinearLayout$LayoutParams;
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 334
    iget-object v1, p0, Lcom/sec/android/app/ve/view/trim/TrimBarView;->mLeftTrimbarParent:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 336
    iget-object v1, p0, Lcom/sec/android/app/ve/view/trim/TrimBarView;->mRightTrimbarParent:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0           #params:Landroid/widget/LinearLayout$LayoutParams;
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 337
    .restart local v0       #params:Landroid/widget/LinearLayout$LayoutParams;
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v1, p1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 338
    iget-object v1, p0, Lcom/sec/android/app/ve/view/trim/TrimBarView;->mRightTrimbarParent:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 340
    iget v1, p0, Lcom/sec/android/app/ve/view/trim/TrimBarView;->mLeftBarTotalMovement:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/sec/android/app/ve/view/trim/TrimBarView;->mLeftBarTotalMovement:I

    .line 343
    if-eqz p2, :cond_40

    .line 344
    invoke-direct {p0}, Lcom/sec/android/app/ve/view/trim/TrimBarView;->updateLeftTextBar()V

    .line 345
    :cond_40
    return-void
.end method

.method private moveRightBarLeft(IZ)V
    .registers 5
    .parameter "v"
    .parameter "updateTextBar"

    .prologue
    .line 363
    iget-object v1, p0, Lcom/sec/android/app/ve/view/trim/TrimBarView;->mRightTrimbarParent:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 364
    .local v0, params:Landroid/widget/LinearLayout$LayoutParams;
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v1, p1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 365
    iget-object v1, p0, Lcom/sec/android/app/ve/view/trim/TrimBarView;->mRightTrimbarParent:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 367
    iget v1, p0, Lcom/sec/android/app/ve/view/trim/TrimBarView;->mRightBarTotalMovement:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/sec/android/app/ve/view/trim/TrimBarView;->mRightBarTotalMovement:I

    .line 368
    if-eqz p2, :cond_1c

    .line 369
    invoke-direct {p0}, Lcom/sec/android/app/ve/view/trim/TrimBarView;->updateRightTextBar()V

    .line 372
    :cond_1c
    return-void
.end method

.method private moveRightBarRight(I)V
    .registers 4
    .parameter "v"

    .prologue
    .line 375
    iget-object v1, p0, Lcom/sec/android/app/ve/view/trim/TrimBarView;->mRightTrimbarParent:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 376
    .local v0, params:Landroid/widget/LinearLayout$LayoutParams;
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 377
    iget-object v1, p0, Lcom/sec/android/app/ve/view/trim/TrimBarView;->mRightTrimbarParent:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 378
    iget v1, p0, Lcom/sec/android/app/ve/view/trim/TrimBarView;->mRightBarTotalMovement:I

    sub-int/2addr v1, p1

    iput v1, p0, Lcom/sec/android/app/ve/view/trim/TrimBarView;->mRightBarTotalMovement:I

    .line 379
    invoke-direct {p0}, Lcom/sec/android/app/ve/view/trim/TrimBarView;->updateRightTextBar()V

    .line 380
    return-void
.end method

.method public static removeUndoInformation()V
    .registers 1

    .prologue
    .line 198
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/ve/view/trim/TrimBarView;->mTrimUndoRedoInfo:Lcom/sec/android/app/ve/view/trim/TrimBarView$TrimUndoRedoInfo;

    .line 199
    return-void
.end method

.method private saveUndoStuff(Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;)V
    .registers 5
    .parameter "view"

    .prologue
    .line 306
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->resetAllUndo()V

    .line 307
    sget-object v0, Lcom/sec/android/app/ve/view/trim/TrimBarView;->mTrimUndoRedoInfo:Lcom/sec/android/app/ve/view/trim/TrimBarView$TrimUndoRedoInfo;

    if-nez v0, :cond_14

    .line 308
    new-instance v0, Lcom/sec/android/app/ve/view/trim/TrimBarView$TrimUndoRedoInfo;

    invoke-direct {v0}, Lcom/sec/android/app/ve/view/trim/TrimBarView$TrimUndoRedoInfo;-><init>()V

    sput-object v0, Lcom/sec/android/app/ve/view/trim/TrimBarView;->mTrimUndoRedoInfo:Lcom/sec/android/app/ve/view/trim/TrimBarView$TrimUndoRedoInfo;

    .line 309
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->removeSplitUndoInformation()V

    .line 311
    :cond_14
    iget v0, p0, Lcom/sec/android/app/ve/view/trim/TrimBarView;->mWhichClicked:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2c

    .line 312
    sget-object v0, Lcom/sec/android/app/ve/view/trim/TrimBarView;->mTrimUndoRedoInfo:Lcom/sec/android/app/ve/view/trim/TrimBarView$TrimUndoRedoInfo;

    iget v1, p0, Lcom/sec/android/app/ve/view/trim/TrimBarView;->mWhichClicked:I

    invoke-virtual {p1}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getElement()Lcom/samsung/app/video/editor/external/Element;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/Element;->getStartTime()F

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/sec/android/app/ve/view/trim/TrimBarView$TrimUndoRedoInfo;->setTrimUndoRedoInfo(Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;IF)V

    .line 315
    :goto_28
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->undoSet()V

    .line 316
    return-void

    .line 314
    :cond_2c
    sget-object v0, Lcom/sec/android/app/ve/view/trim/TrimBarView;->mTrimUndoRedoInfo:Lcom/sec/android/app/ve/view/trim/TrimBarView$TrimUndoRedoInfo;

    iget v1, p0, Lcom/sec/android/app/ve/view/trim/TrimBarView;->mWhichClicked:I

    invoke-virtual {p1}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getElement()Lcom/samsung/app/video/editor/external/Element;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/Element;->getEndTime()F

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/sec/android/app/ve/view/trim/TrimBarView$TrimUndoRedoInfo;->setTrimUndoRedoInfo(Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;IF)V

    goto :goto_28
.end method

.method public static timeFormat(F)Ljava/lang/String;
    .registers 14
    .parameter "timesec"

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 442
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result v7

    rem-int/lit8 v7, v7, 0x3c

    int-to-long v5, v7

    .line 443
    .local v5, seconds:J
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result v7

    div-int/lit8 v7, v7, 0x3c

    rem-int/lit8 v7, v7, 0x3c

    int-to-long v3, v7

    .line 444
    .local v3, minutes:J
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result v7

    div-int/lit16 v0, v7, 0xe10

    .line 445
    .local v0, hours:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 446
    .local v1, mFormatBuilder:Ljava/lang/StringBuilder;
    new-instance v2, Ljava/util/Formatter;

    .line 447
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    .line 446
    invoke-direct {v2, v1, v7}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    .line 448
    .local v2, mFormatter:Ljava/util/Formatter;
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 449
    if-lez v0, :cond_4c

    .line 450
    const-string v7, "%02d:%02d:%02d"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v12

    invoke-virtual {v2, v7, v8}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v7

    .line 452
    :goto_4b
    return-object v7

    :cond_4c
    const-string v7, "%02d:%02d"

    new-array v8, v12, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-virtual {v2, v7, v8}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_4b
.end method

.method private updateLeftTextBar()V
    .registers 13

    .prologue
    const/4 v2, 0x0

    .line 387
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v0

    .line 388
    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getCurrentView()Landroid/view/View;

    move-result-object v7

    .line 387
    check-cast v7, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    .line 389
    .local v7, mCurrentView:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;
    if-eqz v7, :cond_5d

    .line 390
    invoke-virtual {v7}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getElement()Lcom/samsung/app/video/editor/external/Element;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/Element;->getDuration()F

    move-result v11

    .line 391
    .local v11, totalTime:F
    invoke-virtual {v7}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getNumberOfThumbnail()I

    move-result v0

    mul-int/lit8 v0, v0, 0x7d

    int-to-float v0, v0

    div-float v8, v11, v0

    .line 392
    .local v8, scale:F
    iget v0, p0, Lcom/sec/android/app/ve/view/trim/TrimBarView;->mLeftBarTotalMovement:I

    int-to-float v0, v0

    mul-float v9, v8, v0

    .line 393
    .local v9, sec:F
    invoke-static {v9}, Lcom/sec/android/app/ve/view/trim/TrimBarView;->timeFormat(F)Ljava/lang/String;

    move-result-object v10

    .line 396
    .local v10, str:Ljava/lang/String;
    const-string v0, ":"

    invoke-virtual {v10, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5e

    .line 397
    iget-object v0, p0, Lcom/sec/android/app/ve/view/trim/TrimBarView;->mLeftTrimbarText:Landroid/widget/TextView;

    const/high16 v1, 0x4190

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 401
    :goto_38
    iget-object v0, p0, Lcom/sec/android/app/ve/view/trim/TrimBarView;->mLeftTrimbarText:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 402
    iget-object v0, p0, Lcom/sec/android/app/ve/view/trim/TrimBarView;->mLeftTrimbarText:Landroid/widget/TextView;

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 404
    invoke-virtual {v7, v9}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->setCurrentStartTime(F)V

    .line 406
    invoke-static {}, Lcom/sec/android/app/ve/thread/PreviewFrameThread;->getInstance()Lcom/sec/android/app/ve/thread/PreviewFrameThread;

    move-result-object v0

    invoke-virtual {v7}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getElement()Lcom/samsung/app/video/editor/external/Element;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0x447a

    mul-float/2addr v3, v9

    float-to-long v3, v3

    const/16 v5, 0x258

    const/16 v6, 0x154

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/ve/thread/PreviewFrameThread;->setOperation(Lcom/samsung/app/video/editor/external/Element;Lcom/samsung/app/video/editor/external/Element;JII)V

    .line 409
    .end local v8           #scale:F
    .end local v9           #sec:F
    .end local v10           #str:Ljava/lang/String;
    .end local v11           #totalTime:F
    :cond_5d
    return-void

    .line 399
    .restart local v8       #scale:F
    .restart local v9       #sec:F
    .restart local v10       #str:Ljava/lang/String;
    .restart local v11       #totalTime:F
    :cond_5e
    iget-object v0, p0, Lcom/sec/android/app/ve/view/trim/TrimBarView;->mLeftTrimbarText:Landroid/widget/TextView;

    const/high16 v1, 0x41b0

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_38
.end method

.method private updateRightTextBar()V
    .registers 13

    .prologue
    const/4 v2, 0x0

    .line 412
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v0

    .line 413
    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getCurrentView()Landroid/view/View;

    move-result-object v7

    .line 412
    check-cast v7, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    .line 414
    .local v7, mCurrentView:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;
    if-eqz v7, :cond_6e

    .line 415
    invoke-virtual {v7}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getElement()Lcom/samsung/app/video/editor/external/Element;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/Element;->getDuration()F

    move-result v11

    .line 416
    .local v11, totalTime:F
    invoke-virtual {v7}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getNumberOfThumbnail()I

    move-result v0

    mul-int/lit8 v0, v0, 0x7d

    int-to-float v0, v0

    div-float v8, v11, v0

    .line 417
    .local v8, scale:F
    iget v0, p0, Lcom/sec/android/app/ve/view/trim/TrimBarView;->mRightBarTotalMovement:I

    int-to-float v0, v0

    mul-float v9, v8, v0

    .line 418
    .local v9, sec:F
    invoke-static {v9}, Lcom/sec/android/app/ve/view/trim/TrimBarView;->timeFormat(F)Ljava/lang/String;

    move-result-object v10

    .line 419
    .local v10, str:Ljava/lang/String;
    iget v0, p0, Lcom/sec/android/app/ve/view/trim/TrimBarView;->mRightBarTotalMovement:I

    int-to-float v0, v0

    mul-float v9, v8, v0

    .line 420
    sub-float v0, v11, v9

    invoke-static {v0}, Lcom/sec/android/app/ve/view/trim/TrimBarView;->timeFormat(F)Ljava/lang/String;

    move-result-object v10

    .line 423
    const-string v0, ":"

    invoke-virtual {v10, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_6f

    .line 424
    iget-object v0, p0, Lcom/sec/android/app/ve/view/trim/TrimBarView;->mRightTrimbarText:Landroid/widget/TextView;

    const/high16 v1, 0x4190

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 428
    :goto_43
    iget-object v0, p0, Lcom/sec/android/app/ve/view/trim/TrimBarView;->mRightTrimbarText:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 429
    iget-object v0, p0, Lcom/sec/android/app/ve/view/trim/TrimBarView;->mRightTrimbarText:Landroid/widget/TextView;

    sub-float v1, v11, v9

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 431
    sub-float v0, v11, v9

    invoke-virtual {v7, v0}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->setCurrentEndTime(F)V

    .line 433
    invoke-static {}, Lcom/sec/android/app/ve/thread/PreviewFrameThread;->getInstance()Lcom/sec/android/app/ve/thread/PreviewFrameThread;

    move-result-object v0

    .line 434
    invoke-virtual {v7}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getElement()Lcom/samsung/app/video/editor/external/Element;

    move-result-object v1

    const/4 v2, 0x0

    .line 435
    sub-float v3, v11, v9

    const/high16 v4, 0x447a

    mul-float/2addr v3, v4

    float-to-long v3, v3

    const/16 v5, 0x258

    .line 436
    const/16 v6, 0x154

    .line 433
    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/ve/thread/PreviewFrameThread;->setOperation(Lcom/samsung/app/video/editor/external/Element;Lcom/samsung/app/video/editor/external/Element;JII)V

    .line 438
    .end local v8           #scale:F
    .end local v9           #sec:F
    .end local v10           #str:Ljava/lang/String;
    .end local v11           #totalTime:F
    :cond_6e
    return-void

    .line 426
    .restart local v8       #scale:F
    .restart local v9       #sec:F
    .restart local v10       #str:Ljava/lang/String;
    .restart local v11       #totalTime:F
    :cond_6f
    iget-object v0, p0, Lcom/sec/android/app/ve/view/trim/TrimBarView;->mRightTrimbarText:Landroid/widget/TextView;

    const/high16 v1, 0x41b0

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_43
.end method


# virtual methods
.method public init()V
    .registers 2

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/trim/TrimBarView;->initBothBars()V

    .line 131
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->addTimeLineListener(Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$TimeLineListener;)V

    .line 132
    return-void
.end method

.method public initBothBars()V
    .registers 15

    .prologue
    const/4 v9, 0x0

    const/4 v13, 0x3

    const/high16 v12, 0x41b0

    const/high16 v11, 0x4190

    const/4 v10, 0x0

    .line 135
    iput v10, p0, Lcom/sec/android/app/ve/view/trim/TrimBarView;->mLeftBarTotalMovement:I

    .line 136
    iput v10, p0, Lcom/sec/android/app/ve/view/trim/TrimBarView;->mRightBarTotalMovement:I

    .line 138
    iget-object v8, p0, Lcom/sec/android/app/ve/view/trim/TrimBarView;->mLeftTrimbarText:Landroid/widget/TextView;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 139
    iget-object v8, p0, Lcom/sec/android/app/ve/view/trim/TrimBarView;->mRightTrimbarText:Landroid/widget/TextView;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 141
    iget-object v8, p0, Lcom/sec/android/app/ve/view/trim/TrimBarView;->mLeftTrimbarParent:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 142
    .local v3, params:Landroid/widget/LinearLayout$LayoutParams;
    iput v10, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 143
    iget-object v8, p0, Lcom/sec/android/app/ve/view/trim/TrimBarView;->mLeftTrimbarParent:Landroid/view/ViewGroup;

    invoke-virtual {v8, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 146
    iget-object v8, p0, Lcom/sec/android/app/ve/view/trim/TrimBarView;->mRightTrimbarParent:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .end local v3           #params:Landroid/widget/LinearLayout$LayoutParams;
    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 147
    .restart local v3       #params:Landroid/widget/LinearLayout$LayoutParams;
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    .line 149
    .local v0, currentView:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;
    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getNumberOfThumbnail()I

    move-result v8

    mul-int/lit8 v8, v8, 0x7d

    add-int/lit8 v8, v8, -0x67

    add-int/lit8 v8, v8, -0x9

    iput v8, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 150
    iget-object v8, p0, Lcom/sec/android/app/ve/view/trim/TrimBarView;->mRightTrimbarParent:Landroid/view/ViewGroup;

    invoke-virtual {v8, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 154
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getCurrentView()Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    invoke-virtual {v8}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getElement()Lcom/samsung/app/video/editor/external/Element;

    move-result-object v1

    .line 155
    .local v1, element:Lcom/samsung/app/video/editor/external/Element;
    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Element;->getSplitTime()F

    move-result v5

    .line 156
    .local v5, splitTime:F
    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Element;->getStartTime()F

    move-result v8

    sub-float v6, v8, v5

    .line 157
    .local v6, startTime:F
    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Element;->getEndTime()F

    move-result v8

    sub-float v2, v8, v5

    .line 159
    .local v2, endTime:F
    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Element;->getDuration()F

    move-result v8

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getNumberOfThumbnail()I

    move-result v9

    mul-int/lit8 v9, v9, 0x7d

    int-to-float v9, v9

    div-float v4, v8, v9

    .line 161
    .local v4, scale:F
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Get trim point start - end :"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Total :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Element;->getDuration()F

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " scale is :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 164
    div-float v8, v6, v4

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    invoke-direct {p0, v8, v10}, Lcom/sec/android/app/ve/view/trim/TrimBarView;->moveLeftBarRight(IZ)V

    .line 166
    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Element;->getDuration()F

    move-result v8

    sub-float/2addr v8, v2

    div-float/2addr v8, v4

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    invoke-direct {p0, v8, v10}, Lcom/sec/android/app/ve/view/trim/TrimBarView;->moveRightBarLeft(IZ)V

    .line 167
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "pix info :"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    div-float v9, v6, v4

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Element;->getDuration()F

    move-result v9

    sub-float/2addr v9, v2

    div-float/2addr v9, v4

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 170
    invoke-static {v6}, Lcom/sec/android/app/ve/view/trim/TrimBarView;->timeFormat(F)Ljava/lang/String;

    move-result-object v7

    .line 171
    .local v7, str:Ljava/lang/String;
    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v8, v8

    if-ne v8, v13, :cond_13b

    .line 172
    iget-object v8, p0, Lcom/sec/android/app/ve/view/trim/TrimBarView;->mLeftTrimbarText:Landroid/widget/TextView;

    invoke-virtual {v8, v10, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 176
    :goto_104
    iget-object v8, p0, Lcom/sec/android/app/ve/view/trim/TrimBarView;->mLeftTrimbarText:Landroid/widget/TextView;

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getCurrentView()Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    invoke-virtual {v8, v6}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->setCurrentStartTime(F)V

    .line 179
    invoke-static {v2}, Lcom/sec/android/app/ve/view/trim/TrimBarView;->timeFormat(F)Ljava/lang/String;

    move-result-object v7

    .line 181
    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v8, v8

    if-ne v8, v13, :cond_141

    .line 182
    iget-object v8, p0, Lcom/sec/android/app/ve/view/trim/TrimBarView;->mRightTrimbarText:Landroid/widget/TextView;

    invoke-virtual {v8, v10, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 186
    :goto_128
    iget-object v8, p0, Lcom/sec/android/app/ve/view/trim/TrimBarView;->mRightTrimbarText:Landroid/widget/TextView;

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getCurrentView()Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    invoke-virtual {v8, v2}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->setCurrentEndTime(F)V

    .line 190
    return-void

    .line 174
    :cond_13b
    iget-object v8, p0, Lcom/sec/android/app/ve/view/trim/TrimBarView;->mLeftTrimbarText:Landroid/widget/TextView;

    invoke-virtual {v8, v10, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_104

    .line 184
    :cond_141
    iget-object v8, p0, Lcom/sec/android/app/ve/view/trim/TrimBarView;->mRightTrimbarText:Landroid/widget/TextView;

    invoke-virtual {v8, v10, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_128
.end method

.method public onAdded(Lcom/samsung/app/video/editor/external/Element;)V
    .registers 2
    .parameter "addedView"

    .prologue
    .line 462
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 203
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 204
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->removeTimeLineListener(Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$TimeLineListener;)V

    .line 205
    return-void
.end method

.method protected onFinishInflate()V
    .registers 3

    .prologue
    .line 65
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 67
    const v0, 0x7f0b0117

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/view/trim/TrimBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sec/android/app/ve/view/trim/TrimBarView;->mLeftTrimbarParent:Landroid/view/ViewGroup;

    .line 68
    const v0, 0x7f0b0118

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/view/trim/TrimBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/ve/view/trim/TrimBarView;->mLeftTrimbarText:Landroid/widget/TextView;

    .line 72
    const v0, 0x7f0b011a

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/view/trim/TrimBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sec/android/app/ve/view/trim/TrimBarView;->mRightTrimbarParent:Landroid/view/ViewGroup;

    .line 73
    const v0, 0x7f0b011b

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/view/trim/TrimBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/ve/view/trim/TrimBarView;->mRightTrimbarText:Landroid/widget/TextView;

    .line 78
    const v0, 0x7f0b0119

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/view/trim/TrimBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/ve/view/trim/TrimBarView;->mTrimLeftImg:Landroid/widget/ImageView;

    .line 79
    const v0, 0x7f0b011c

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/view/trim/TrimBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/ve/view/trim/TrimBarView;->mTrimRightImg:Landroid/widget/ImageView;

    .line 81
    iget-object v0, p0, Lcom/sec/android/app/ve/view/trim/TrimBarView;->mTrimLeftImg:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/ve/view/trim/TrimBarView;->mTouchListenerLeft:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 82
    iget-object v0, p0, Lcom/sec/android/app/ve/view/trim/TrimBarView;->mTrimRightImg:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/ve/view/trim/TrimBarView;->mTouchListenerRight:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 85
    return-void
.end method

.method public onFocusedChange(Lcom/samsung/app/video/editor/external/Element;Lcom/samsung/app/video/editor/external/Element;)V
    .registers 4
    .parameter "focusElement"
    .parameter "lastFocusElement"

    .prologue
    .line 465
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->trimFocusChanged(Lcom/samsung/app/video/editor/external/Element;Lcom/samsung/app/video/editor/external/Element;)V

    .line 466
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 457
    iget-boolean v0, p0, Lcom/sec/android/app/ve/view/trim/TrimBarView;->mDragging:Z

    return v0
.end method

.method public onMusicChanged(Lcom/samsung/app/video/editor/external/Element;Z)V
    .registers 3
    .parameter "element"
    .parameter "added"

    .prologue
    .line 483
    return-void
.end method

.method public onRemoved(Lcom/samsung/app/video/editor/external/Element;)V
    .registers 2
    .parameter "removedView"

    .prologue
    .line 469
    return-void
.end method

.method public onScrolled(Lcom/samsung/app/video/editor/external/Element;FF)V
    .registers 4
    .parameter "element"
    .parameter "mSec"
    .parameter "transitionTime"

    .prologue
    .line 472
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 13
    .parameter "event"

    .prologue
    const/4 v10, 0x2

    const v9, -0x3b864000

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x1

    .line 209
    iget-boolean v4, p0, Lcom/sec/android/app/ve/view/trim/TrimBarView;->mDragging:Z

    if-eqz v4, :cond_10

    iget v4, p0, Lcom/sec/android/app/ve/view/trim/TrimBarView;->mWhichClicked:I

    const/4 v7, -0x1

    if-ne v4, v7, :cond_12

    :cond_10
    move v4, v6

    .line 302
    :goto_11
    return v4

    .line 212
    :cond_12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    sparse-switch v4, :sswitch_data_19e

    .line 297
    :cond_19
    :goto_19
    const-string v4, "----> TrimBarView some MotionEvent which is not handled plan B unfreeze TimeLineScroller <----------"

    invoke-static {v4}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 298
    invoke-static {}, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->getInstance()Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->freeze(Z)V

    :goto_25
    move v4, v5

    .line 302
    goto :goto_11

    :sswitch_27
    move v4, v5

    .line 219
    goto :goto_11

    .line 222
    :sswitch_29
    const v0, -0x3b864000

    .line 223
    .local v0, def:F
    iget v4, p0, Lcom/sec/android/app/ve/view/trim/TrimBarView;->mPrevX:F

    cmpl-float v4, v4, v9

    if-eqz v4, :cond_3a

    .line 224
    iget v4, p0, Lcom/sec/android/app/ve/view/trim/TrimBarView;->mPrevX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    sub-float v0, v4, v6

    .line 227
    :cond_3a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, p0, Lcom/sec/android/app/ve/view/trim/TrimBarView;->mPrevX:F

    .line 228
    cmpl-float v4, v0, v9

    if-nez v4, :cond_46

    move v4, v5

    .line 229
    goto :goto_11

    .line 231
    :cond_46
    iget v4, p0, Lcom/sec/android/app/ve/view/trim/TrimBarView;->mWhichClicked:I

    if-ne v4, v5, :cond_7e

    cmpg-float v4, v0, v8

    if-gez v4, :cond_7e

    iget v4, p0, Lcom/sec/android/app/ve/view/trim/TrimBarView;->mLeftBarTotalMovement:I

    iget v6, p0, Lcom/sec/android/app/ve/view/trim/TrimBarView;->mRightBarTotalMovement:I

    add-int/2addr v4, v6

    invoke-direct {p0}, Lcom/sec/android/app/ve/view/trim/TrimBarView;->getMyWidth()I

    move-result v6

    add-int/lit8 v6, v6, -0x50

    if-ge v4, v6, :cond_7e

    .line 233
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-int v4, v4

    iget v6, p0, Lcom/sec/android/app/ve/view/trim/TrimBarView;->mLeftBarTotalMovement:I

    add-int/2addr v4, v6

    invoke-direct {p0}, Lcom/sec/android/app/ve/view/trim/TrimBarView;->getMyWidth()I

    move-result v6

    add-int/lit8 v6, v6, -0x50

    iget v7, p0, Lcom/sec/android/app/ve/view/trim/TrimBarView;->mRightBarTotalMovement:I

    sub-int/2addr v6, v7

    if-ge v4, v6, :cond_76

    .line 235
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-int v4, v4

    invoke-direct {p0, v4, v5}, Lcom/sec/android/app/ve/view/trim/TrimBarView;->moveLeftBarRight(IZ)V

    .line 258
    :cond_76
    :goto_76
    invoke-static {}, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->getInstance()Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->freeze(Z)V

    goto :goto_25

    .line 237
    :cond_7e
    iget v4, p0, Lcom/sec/android/app/ve/view/trim/TrimBarView;->mWhichClicked:I

    if-ne v4, v5, :cond_a1

    cmpl-float v4, v0, v8

    if-lez v4, :cond_a1

    iget v4, p0, Lcom/sec/android/app/ve/view/trim/TrimBarView;->mLeftBarTotalMovement:I

    if-lez v4, :cond_a1

    .line 240
    iget v4, p0, Lcom/sec/android/app/ve/view/trim/TrimBarView;->mLeftBarTotalMovement:I

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-int v6, v6

    sub-int/2addr v4, v6

    if-lez v4, :cond_9d

    .line 241
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-int v4, v4

    invoke-direct {p0, v4}, Lcom/sec/android/app/ve/view/trim/TrimBarView;->moveLeftBarLeft(I)V

    goto :goto_76

    .line 243
    :cond_9d
    invoke-direct {p0, v5}, Lcom/sec/android/app/ve/view/trim/TrimBarView;->moveLeftBarLeft(I)V

    goto :goto_76

    .line 246
    :cond_a1
    iget v4, p0, Lcom/sec/android/app/ve/view/trim/TrimBarView;->mWhichClicked:I

    if-ne v4, v10, :cond_c4

    cmpg-float v4, v0, v8

    if-gez v4, :cond_c4

    iget v4, p0, Lcom/sec/android/app/ve/view/trim/TrimBarView;->mRightBarTotalMovement:I

    if-lez v4, :cond_c4

    .line 248
    iget v4, p0, Lcom/sec/android/app/ve/view/trim/TrimBarView;->mRightBarTotalMovement:I

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-int v6, v6

    sub-int/2addr v4, v6

    if-lez v4, :cond_c0

    .line 249
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-int v4, v4

    invoke-direct {p0, v4}, Lcom/sec/android/app/ve/view/trim/TrimBarView;->moveRightBarRight(I)V

    goto :goto_76

    .line 251
    :cond_c0
    invoke-direct {p0, v5}, Lcom/sec/android/app/ve/view/trim/TrimBarView;->moveRightBarRight(I)V

    goto :goto_76

    .line 252
    :cond_c4
    iget v4, p0, Lcom/sec/android/app/ve/view/trim/TrimBarView;->mWhichClicked:I

    if-ne v4, v10, :cond_76

    cmpl-float v4, v0, v8

    if-lez v4, :cond_76

    iget v4, p0, Lcom/sec/android/app/ve/view/trim/TrimBarView;->mLeftBarTotalMovement:I

    iget v6, p0, Lcom/sec/android/app/ve/view/trim/TrimBarView;->mRightBarTotalMovement:I

    add-int/2addr v4, v6

    invoke-direct {p0}, Lcom/sec/android/app/ve/view/trim/TrimBarView;->getMyWidth()I

    move-result v6

    add-int/lit8 v6, v6, -0x50

    if-ge v4, v6, :cond_76

    .line 254
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-int v4, v4

    iget v6, p0, Lcom/sec/android/app/ve/view/trim/TrimBarView;->mRightBarTotalMovement:I

    add-int/2addr v4, v6

    invoke-direct {p0}, Lcom/sec/android/app/ve/view/trim/TrimBarView;->getMyWidth()I

    move-result v6

    add-int/lit8 v6, v6, -0x50

    iget v7, p0, Lcom/sec/android/app/ve/view/trim/TrimBarView;->mLeftBarTotalMovement:I

    sub-int/2addr v6, v7

    if-ge v4, v6, :cond_76

    .line 255
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-int v4, v4

    invoke-direct {p0, v4, v5}, Lcom/sec/android/app/ve/view/trim/TrimBarView;->moveRightBarLeft(IZ)V

    goto :goto_76

    .line 264
    .end local v0           #def:F
    :sswitch_f5
    iput v9, p0, Lcom/sec/android/app/ve/view/trim/TrimBarView;->mPrevX:F

    .line 265
    iput-boolean v6, p0, Lcom/sec/android/app/ve/view/trim/TrimBarView;->mDragging:Z

    .line 266
    invoke-static {}, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->getInstance()Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->freeze(Z)V

    .line 268
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getCurrentView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    .line 269
    .local v3, view:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;
    if-eqz v3, :cond_19

    .line 277
    invoke-direct {p0, v3}, Lcom/sec/android/app/ve/view/trim/TrimBarView;->saveUndoStuff(Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;)V

    .line 280
    const/4 v2, 0x0

    .line 281
    .local v2, startSec:F
    invoke-virtual {v3}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getElement()Lcom/samsung/app/video/editor/external/Element;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/app/video/editor/external/Element;->getDuration()F

    move-result v1

    .line 282
    .local v1, endSec:F
    iget-object v4, p0, Lcom/sec/android/app/ve/view/trim/TrimBarView;->mLeftTrimbarText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_13c

    .line 283
    iget-object v4, p0, Lcom/sec/android/app/ve/view/trim/TrimBarView;->mLeftTrimbarText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 284
    invoke-virtual {v3}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getElement()Lcom/samsung/app/video/editor/external/Element;

    move-result-object v4

    invoke-virtual {v3}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getElement()Lcom/samsung/app/video/editor/external/Element;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/app/video/editor/external/Element;->getSplitTime()F

    move-result v7

    add-float/2addr v7, v2

    invoke-virtual {v4, v7}, Lcom/samsung/app/video/editor/external/Element;->setStartTime(F)V

    .line 286
    :cond_13c
    iget-object v4, p0, Lcom/sec/android/app/ve/view/trim/TrimBarView;->mRightTrimbarText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_160

    .line 287
    iget-object v4, p0, Lcom/sec/android/app/ve/view/trim/TrimBarView;->mRightTrimbarText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 288
    invoke-virtual {v3}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getElement()Lcom/samsung/app/video/editor/external/Element;

    move-result-object v4

    invoke-virtual {v3}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getElement()Lcom/samsung/app/video/editor/external/Element;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/app/video/editor/external/Element;->getSplitTime()F

    move-result v7

    add-float/2addr v7, v1

    invoke-virtual {v4, v7}, Lcom/samsung/app/video/editor/external/Element;->setEndTime(F)V

    .line 290
    :cond_160
    iget-object v4, p0, Lcom/sec/android/app/ve/view/trim/TrimBarView;->mTrimLeftImg:Landroid/widget/ImageView;

    const v7, 0x7f020156

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 291
    iget-object v4, p0, Lcom/sec/android/app/ve/view/trim/TrimBarView;->mTrimRightImg:Landroid/widget/ImageView;

    const v7, 0x7f02015a

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 293
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "Set trim point start - end :"

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getElement()Lcom/samsung/app/video/editor/external/Element;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/app/video/editor/external/Element;->getStartTime()F

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " - "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getElement()Lcom/samsung/app/video/editor/external/Element;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/app/video/editor/external/Element;->getEndTime()F

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    goto/16 :goto_19

    .line 212
    :sswitch_data_19e
    .sparse-switch
        0x1 -> :sswitch_f5
        0x2 -> :sswitch_29
        0x3 -> :sswitch_f5
        0x4 -> :sswitch_f5
        0x5 -> :sswitch_27
        0x6 -> :sswitch_27
        0x105 -> :sswitch_27
        0x106 -> :sswitch_27
    .end sparse-switch
.end method

.method public onUpdate(Lcom/samsung/app/video/editor/external/Element;)V
    .registers 2
    .parameter "updatedView"

    .prologue
    .line 475
    return-void
.end method

.method public terminate()V
    .registers 2

    .prologue
    .line 193
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->removeTimeLineListener(Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$TimeLineListener;)V

    .line 195
    return-void
.end method
