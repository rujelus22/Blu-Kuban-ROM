.class public Lcom/android/inputmethod/latin/CandidateView;
.super Landroid/view/View;
.source "CandidateView.java"


# static fields
.field private static final EMPTY_LIST:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_SUGGESTIONS:I = 0x20

.field private static final MSG_REMOVE_PREVIEW:I = 0x1

.field private static final MSG_REMOVE_THROUGH_PREVIEW:I = 0x2

.field private static final OUT_OF_BOUNDS:I = -0x1

.field private static final SCROLL_PIXELS:I = 0x14

.field private static final X_GAP:I = 0xa


# instance fields
.field private mBgPadding:Landroid/graphics/Rect;

.field private mColorNormal:I

.field private mColorOther:I

.field private mColorRecommended:I

.field private mCurrentWordIndex:I

.field private mDescent:I

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field mHandler:Landroid/os/Handler;

.field private mHaveMinimalSuggestion:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mPopupPreviewX:I

.field private mPopupPreviewY:I

.field private mPreviewPopup:Landroid/widget/PopupWindow;

.field private mPreviewText:Landroid/widget/TextView;

.field private mScrolled:Z

.field private mSelectedIndex:I

.field private mSelectedString:Ljava/lang/CharSequence;

.field private mSelectionHighlight:Landroid/graphics/drawable/Drawable;

.field private mService:Lcom/android/inputmethod/latin/LatinIME;

.field private mShowingCompletions:Z

.field private mSuggestions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetScrollX:I

.field private mTotalWidth:I

.field private mTouchX:I

.field private mTypedWordValid:Z

.field private mWordWidth:[I

.field private mWordX:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/inputmethod/latin/CandidateView;->EMPTY_LIST:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v6, 0x0

    const/16 v2, 0x20

    const/4 v5, 0x1

    const/4 v4, -0x2

    const/4 v3, 0x0

    .line 115
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    sget-object v1, Lcom/android/inputmethod/latin/CandidateView;->EMPTY_LIST:Ljava/util/List;

    iput-object v1, p0, Lcom/android/inputmethod/latin/CandidateView;->mSuggestions:Ljava/util/List;

    .line 53
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/inputmethod/latin/CandidateView;->mTouchX:I

    .line 72
    new-array v1, v2, [I

    iput-object v1, p0, Lcom/android/inputmethod/latin/CandidateView;->mWordWidth:[I

    .line 73
    new-array v1, v2, [I

    iput-object v1, p0, Lcom/android/inputmethod/latin/CandidateView;->mWordX:[I

    .line 91
    new-instance v1, Lcom/android/inputmethod/latin/CandidateView$1;

    invoke-direct {v1, p0}, Lcom/android/inputmethod/latin/CandidateView$1;-><init>(Lcom/android/inputmethod/latin/CandidateView;)V

    iput-object v1, p0, Lcom/android/inputmethod/latin/CandidateView;->mHandler:Landroid/os/Handler;

    .line 116
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1080062

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/inputmethod/latin/CandidateView;->mSelectionHighlight:Landroid/graphics/drawable/Drawable;

    .line 120
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 123
    .local v0, inflate:Landroid/view/LayoutInflater;
    new-instance v1, Landroid/widget/PopupWindow;

    invoke-direct {v1, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/inputmethod/latin/CandidateView;->mPreviewPopup:Landroid/widget/PopupWindow;

    .line 124
    const v1, 0x7f030004

    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/inputmethod/latin/CandidateView;->mPreviewText:Landroid/widget/TextView;

    .line 125
    iget-object v1, p0, Lcom/android/inputmethod/latin/CandidateView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v4, v4}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    .line 126
    iget-object v1, p0, Lcom/android/inputmethod/latin/CandidateView;->mPreviewPopup:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/android/inputmethod/latin/CandidateView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 127
    iget-object v1, p0, Lcom/android/inputmethod/latin/CandidateView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v6}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 128
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f0a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/inputmethod/latin/CandidateView;->mColorNormal:I

    .line 129
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/inputmethod/latin/CandidateView;->mColorRecommended:I

    .line 130
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/inputmethod/latin/CandidateView;->mColorOther:I

    .line 131
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200c2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/inputmethod/latin/CandidateView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 133
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/inputmethod/latin/CandidateView;->mPaint:Landroid/graphics/Paint;

    .line 134
    iget-object v1, p0, Lcom/android/inputmethod/latin/CandidateView;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/inputmethod/latin/CandidateView;->mColorNormal:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 135
    iget-object v1, p0, Lcom/android/inputmethod/latin/CandidateView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 136
    iget-object v1, p0, Lcom/android/inputmethod/latin/CandidateView;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/inputmethod/latin/CandidateView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 137
    iget-object v1, p0, Lcom/android/inputmethod/latin/CandidateView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 138
    iget-object v1, p0, Lcom/android/inputmethod/latin/CandidateView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/inputmethod/latin/CandidateView;->mDescent:I

    .line 140
    new-instance v1, Landroid/view/GestureDetector;

    new-instance v2, Lcom/android/inputmethod/latin/CandidateView$2;

    invoke-direct {v2, p0}, Lcom/android/inputmethod/latin/CandidateView$2;-><init>(Lcom/android/inputmethod/latin/CandidateView;)V

    invoke-direct {v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/android/inputmethod/latin/CandidateView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 170
    invoke-virtual {p0, v5}, Lcom/android/inputmethod/latin/CandidateView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 171
    invoke-virtual {p0, v3}, Lcom/android/inputmethod/latin/CandidateView;->setWillNotDraw(Z)V

    .line 172
    invoke-virtual {p0, v3}, Lcom/android/inputmethod/latin/CandidateView;->setHorizontalScrollBarEnabled(Z)V

    .line 173
    invoke-virtual {p0, v3}, Lcom/android/inputmethod/latin/CandidateView;->setVerticalScrollBarEnabled(Z)V

    .line 174
    invoke-virtual {p0, v3, v3}, Lcom/android/inputmethod/latin/CandidateView;->scrollTo(II)V

    .line 175
    return-void
.end method

.method static synthetic access$000(Lcom/android/inputmethod/latin/CandidateView;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/inputmethod/latin/CandidateView;->mPreviewText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/inputmethod/latin/CandidateView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Lcom/android/inputmethod/latin/CandidateView;->mTouchX:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/inputmethod/latin/CandidateView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/inputmethod/latin/CandidateView;->removeHighlight()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/inputmethod/latin/CandidateView;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/inputmethod/latin/CandidateView;->mSuggestions:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/inputmethod/latin/CandidateView;)[I
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/inputmethod/latin/CandidateView;->mWordWidth:[I

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/inputmethod/latin/CandidateView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/inputmethod/latin/CandidateView;->longPressFirstWord()V

    return-void
.end method

.method static synthetic access$602(Lcom/android/inputmethod/latin/CandidateView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/android/inputmethod/latin/CandidateView;->mScrolled:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/inputmethod/latin/CandidateView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Lcom/android/inputmethod/latin/CandidateView;->mTotalWidth:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/inputmethod/latin/CandidateView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput p1, p0, Lcom/android/inputmethod/latin/CandidateView;->mTargetScrollX:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/inputmethod/latin/CandidateView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/inputmethod/latin/CandidateView;->hidePreview()V

    return-void
.end method

.method private hidePreview()V
    .registers 5

    .prologue
    .line 443
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/inputmethod/latin/CandidateView;->mCurrentWordIndex:I

    .line 444
    iget-object v0, p0, Lcom/android/inputmethod/latin/CandidateView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 445
    iget-object v0, p0, Lcom/android/inputmethod/latin/CandidateView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/inputmethod/latin/CandidateView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 448
    :cond_19
    return-void
.end method

.method private longPressFirstWord()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 492
    iget-object v1, p0, Lcom/android/inputmethod/latin/CandidateView;->mSuggestions:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 493
    .local v0, word:Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/android/inputmethod/latin/CandidateView;->mService:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/inputmethod/latin/LatinIME;->addWordToDictionary(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 494
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/CandidateView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090011

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v4, v1}, Lcom/android/inputmethod/latin/CandidateView;->showPreview(ILjava/lang/String;)V

    .line 496
    :cond_2c
    return-void
.end method

.method private removeHighlight()V
    .registers 2

    .prologue
    .line 487
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/inputmethod/latin/CandidateView;->mTouchX:I

    .line 488
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/CandidateView;->invalidate()V

    .line 489
    return-void
.end method

.method private scrollToTarget(I)V
    .registers 4
    .parameter "scrollX"

    .prologue
    const/4 v1, 0x0

    .line 276
    iget v0, p0, Lcom/android/inputmethod/latin/CandidateView;->mTargetScrollX:I

    if-le v0, p1, :cond_1e

    .line 277
    add-int/lit8 p1, p1, 0x14

    .line 278
    iget v0, p0, Lcom/android/inputmethod/latin/CandidateView;->mTargetScrollX:I

    if-lt p1, v0, :cond_14

    .line 279
    iget p1, p0, Lcom/android/inputmethod/latin/CandidateView;->mTargetScrollX:I

    .line 280
    invoke-virtual {p0, p1, v1}, Lcom/android/inputmethod/latin/CandidateView;->scrollTo(II)V

    .line 281
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/CandidateView;->requestLayout()V

    .line 282
    const/4 p1, -0x1

    .line 293
    :cond_14
    :goto_14
    const/4 v0, -0x1

    if-eq p1, v0, :cond_1a

    .line 294
    invoke-virtual {p0, p1, v1}, Lcom/android/inputmethod/latin/CandidateView;->scrollTo(II)V

    .line 295
    :cond_1a
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/CandidateView;->invalidate()V

    .line 296
    return-void

    .line 285
    :cond_1e
    add-int/lit8 p1, p1, -0x14

    .line 286
    iget v0, p0, Lcom/android/inputmethod/latin/CandidateView;->mTargetScrollX:I

    if-gt p1, v0, :cond_14

    .line 287
    iget p1, p0, Lcom/android/inputmethod/latin/CandidateView;->mTargetScrollX:I

    .line 288
    invoke-virtual {p0, p1, v1}, Lcom/android/inputmethod/latin/CandidateView;->scrollTo(II)V

    .line 289
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/CandidateView;->requestLayout()V

    .line 290
    const/4 p1, -0x1

    goto :goto_14
.end method

.method private showPreview(ILjava/lang/String;)V
    .registers 14
    .parameter "wordIndex"
    .parameter "altText"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 451
    iget v1, p0, Lcom/android/inputmethod/latin/CandidateView;->mCurrentWordIndex:I

    .line 452
    .local v1, oldWordIndex:I
    iput p1, p0, Lcom/android/inputmethod/latin/CandidateView;->mCurrentWordIndex:I

    .line 454
    iget v6, p0, Lcom/android/inputmethod/latin/CandidateView;->mCurrentWordIndex:I

    if-ne v1, v6, :cond_c

    if-eqz p2, :cond_12

    .line 455
    :cond_c
    const/4 v6, -0x1

    if-ne p1, v6, :cond_13

    .line 456
    invoke-direct {p0}, Lcom/android/inputmethod/latin/CandidateView;->hidePreview()V

    .line 484
    :cond_12
    :goto_12
    return-void

    .line 458
    :cond_13
    if-eqz p2, :cond_85

    move-object v4, p2

    .line 459
    .local v4, word:Ljava/lang/CharSequence;
    :goto_16
    iget-object v6, p0, Lcom/android/inputmethod/latin/CandidateView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 460
    iget-object v6, p0, Lcom/android/inputmethod/latin/CandidateView;->mPreviewText:Landroid/widget/TextView;

    invoke-static {v10, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-static {v10, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/TextView;->measure(II)V

    .line 462
    iget-object v6, p0, Lcom/android/inputmethod/latin/CandidateView;->mPaint:Landroid/graphics/Paint;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v7

    invoke-virtual {v6, v4, v10, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v6

    const/high16 v7, 0x41a0

    add-float/2addr v6, v7

    float-to-int v5, v6

    .line 463
    .local v5, wordWidth:I
    iget-object v6, p0, Lcom/android/inputmethod/latin/CandidateView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v6

    add-int/2addr v6, v5

    iget-object v7, p0, Lcom/android/inputmethod/latin/CandidateView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v7

    add-int v3, v6, v7

    .line 465
    .local v3, popupWidth:I
    iget-object v6, p0, Lcom/android/inputmethod/latin/CandidateView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    .line 467
    .local v2, popupHeight:I
    iget-object v6, p0, Lcom/android/inputmethod/latin/CandidateView;->mWordX:[I

    aget v6, v6, p1

    iget-object v7, p0, Lcom/android/inputmethod/latin/CandidateView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/CandidateView;->getScrollX()I

    move-result v7

    sub-int/2addr v6, v7

    iput v6, p0, Lcom/android/inputmethod/latin/CandidateView;->mPopupPreviewX:I

    .line 468
    neg-int v6, v2

    iput v6, p0, Lcom/android/inputmethod/latin/CandidateView;->mPopupPreviewY:I

    .line 469
    iget-object v6, p0, Lcom/android/inputmethod/latin/CandidateView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 470
    const/4 v6, 0x2

    new-array v0, v6, [I

    .line 471
    .local v0, offsetInWindow:[I
    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/CandidateView;->getLocationInWindow([I)V

    .line 472
    iget-object v6, p0, Lcom/android/inputmethod/latin/CandidateView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_8f

    .line 473
    iget-object v6, p0, Lcom/android/inputmethod/latin/CandidateView;->mPreviewPopup:Landroid/widget/PopupWindow;

    iget v7, p0, Lcom/android/inputmethod/latin/CandidateView;->mPopupPreviewX:I

    iget v8, p0, Lcom/android/inputmethod/latin/CandidateView;->mPopupPreviewY:I

    aget v9, v0, v9

    add-int/2addr v8, v9

    invoke-virtual {v6, v7, v8, v3, v2}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 481
    :goto_7f
    iget-object v6, p0, Lcom/android/inputmethod/latin/CandidateView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_12

    .line 458
    .end local v0           #offsetInWindow:[I
    .end local v2           #popupHeight:I
    .end local v3           #popupWidth:I
    .end local v4           #word:Ljava/lang/CharSequence;
    .end local v5           #wordWidth:I
    :cond_85
    iget-object v6, p0, Lcom/android/inputmethod/latin/CandidateView;->mSuggestions:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    move-object v4, v6

    goto :goto_16

    .line 476
    .restart local v0       #offsetInWindow:[I
    .restart local v2       #popupHeight:I
    .restart local v3       #popupWidth:I
    .restart local v4       #word:Ljava/lang/CharSequence;
    .restart local v5       #wordWidth:I
    :cond_8f
    iget-object v6, p0, Lcom/android/inputmethod/latin/CandidateView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v6, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 477
    iget-object v6, p0, Lcom/android/inputmethod/latin/CandidateView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v6, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 478
    iget-object v6, p0, Lcom/android/inputmethod/latin/CandidateView;->mPreviewPopup:Landroid/widget/PopupWindow;

    iget v7, p0, Lcom/android/inputmethod/latin/CandidateView;->mPopupPreviewX:I

    iget v8, p0, Lcom/android/inputmethod/latin/CandidateView;->mPopupPreviewY:I

    aget v9, v0, v9

    add-int/2addr v8, v9

    invoke-virtual {v6, p0, v10, v7, v8}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_7f
.end method

.method private updateScrollPosition(I)V
    .registers 3
    .parameter "targetX"

    .prologue
    .line 349
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/CandidateView;->getScrollX()I

    move-result v0

    if-eq p1, v0, :cond_11

    .line 351
    iput p1, p0, Lcom/android/inputmethod/latin/CandidateView;->mTargetScrollX:I

    .line 352
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/CandidateView;->requestLayout()V

    .line 353
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/CandidateView;->invalidate()V

    .line 354
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/inputmethod/latin/CandidateView;->mScrolled:Z

    .line 356
    :cond_11
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 359
    sget-object v0, Lcom/android/inputmethod/latin/CandidateView;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/android/inputmethod/latin/CandidateView;->mSuggestions:Ljava/util/List;

    .line 360
    iput v1, p0, Lcom/android/inputmethod/latin/CandidateView;->mTouchX:I

    .line 361
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/inputmethod/latin/CandidateView;->mSelectedString:Ljava/lang/CharSequence;

    .line 362
    iput v1, p0, Lcom/android/inputmethod/latin/CandidateView;->mSelectedIndex:I

    .line 363
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/CandidateView;->invalidate()V

    .line 364
    iget-object v0, p0, Lcom/android/inputmethod/latin/CandidateView;->mWordWidth:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    .line 365
    iget-object v0, p0, Lcom/android/inputmethod/latin/CandidateView;->mWordX:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    .line 366
    iget-object v0, p0, Lcom/android/inputmethod/latin/CandidateView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 367
    iget-object v0, p0, Lcom/android/inputmethod/latin/CandidateView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 369
    :cond_27
    return-void
.end method

.method public computeHorizontalScrollRange()I
    .registers 2

    .prologue
    .line 187
    iget v0, p0, Lcom/android/inputmethod/latin/CandidateView;->mTotalWidth:I

    return v0
.end method

.method public onDetachedFromWindow()V
    .registers 1

    .prologue
    .line 500
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 501
    invoke-direct {p0}, Lcom/android/inputmethod/latin/CandidateView;->hidePreview()V

    .line 502
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 23
    .parameter "canvas"

    .prologue
    .line 196
    if-eqz p1, :cond_5

    .line 197
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 199
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/latin/CandidateView;->mWordWidth:[I

    if-nez v2, :cond_c

    .line 273
    :cond_b
    :goto_b
    return-void

    .line 201
    :cond_c
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/inputmethod/latin/CandidateView;->mTotalWidth:I

    .line 202
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/latin/CandidateView;->mSuggestions:Ljava/util/List;

    if-eqz v2, :cond_b

    .line 204
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/latin/CandidateView;->getHeight()I

    move-result v11

    .line 205
    .local v11, height:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/latin/CandidateView;->mBgPadding:Landroid/graphics/Rect;

    if-nez v2, :cond_5d

    .line 206
    new-instance v2, Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v2, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/inputmethod/latin/CandidateView;->mBgPadding:Landroid/graphics/Rect;

    .line 207
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/latin/CandidateView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_3f

    .line 208
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/latin/CandidateView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/inputmethod/latin/CandidateView;->mBgPadding:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 210
    :cond_3f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/latin/CandidateView;->mDivider:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/inputmethod/latin/CandidateView;->mBgPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/inputmethod/latin/CandidateView;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/inputmethod/latin/CandidateView;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 213
    :cond_5d
    const/16 v19, 0x0

    .line 214
    .local v19, x:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/latin/CandidateView;->mSuggestions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    .line 216
    .local v10, count:I
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/inputmethod/latin/CandidateView;->mBgPadding:Landroid/graphics/Rect;

    .line 217
    .local v9, bgPadding:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/inputmethod/latin/CandidateView;->mPaint:Landroid/graphics/Paint;

    .line 218
    .local v8, paint:Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/latin/CandidateView;->mTouchX:I

    move/from16 v16, v0

    .line 219
    .local v16, touchX:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/latin/CandidateView;->getScrollX()I

    move-result v13

    .line 220
    .local v13, scrollX:I
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/inputmethod/latin/CandidateView;->mScrolled:Z

    .line 221
    .local v14, scrolled:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/inputmethod/latin/CandidateView;->mTypedWordValid:Z

    move/from16 v17, v0

    .line 222
    .local v17, typedWordValid:Z
    int-to-float v2, v11

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/inputmethod/latin/CandidateView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getTextSize()F

    move-result v4

    add-float/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/inputmethod/latin/CandidateView;->mDescent:I

    int-to-float v4, v4

    sub-float/2addr v2, v4

    float-to-int v2, v2

    div-int/lit8 v20, v2, 0x2

    .line 224
    .local v20, y:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_97
    if-ge v12, v10, :cond_188

    .line 225
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/latin/CandidateView;->mSuggestions:Ljava/util/List;

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 226
    .local v3, suggestion:Ljava/lang/CharSequence;
    if-nez v3, :cond_a8

    .line 224
    :goto_a5
    add-int/lit8 v12, v12, 0x1

    goto :goto_97

    .line 227
    :cond_a8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/inputmethod/latin/CandidateView;->mColorNormal:I

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 228
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/inputmethod/latin/CandidateView;->mHaveMinimalSuggestion:Z

    if-eqz v2, :cond_169

    const/4 v2, 0x1

    if-ne v12, v2, :cond_ba

    if-eqz v17, :cond_be

    :cond_ba
    if-nez v12, :cond_169

    if-eqz v17, :cond_169

    .line 230
    :cond_be
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 231
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/inputmethod/latin/CandidateView;->mColorRecommended:I

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 236
    :cond_ca
    :goto_ca
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/latin/CandidateView;->mWordWidth:[I

    aget v2, v2, v12

    if-eqz v2, :cond_174

    .line 237
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/latin/CandidateView;->mWordWidth:[I

    aget v18, v2, v12

    .line 244
    .local v18, wordWidth:I
    :goto_d8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/latin/CandidateView;->mWordX:[I

    aput v19, v2, v12

    .line 246
    add-int v2, v16, v13

    move/from16 v0, v19

    if-lt v2, v0, :cond_129

    add-int v2, v16, v13

    add-int v4, v19, v18

    if-ge v2, v4, :cond_129

    if-nez v14, :cond_129

    const/4 v2, -0x1

    move/from16 v0, v16

    if-eq v0, v2, :cond_129

    .line 248
    if-eqz p1, :cond_121

    .line 249
    move/from16 v0, v19

    int-to-float v2, v0

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 250
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/latin/CandidateView;->mSelectionHighlight:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    iget v5, v9, Landroid/graphics/Rect;->top:I

    move/from16 v0, v18

    invoke-virtual {v2, v4, v5, v0, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 251
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/latin/CandidateView;->mSelectionHighlight:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 252
    move/from16 v0, v19

    neg-int v2, v0

    int-to-float v2, v2

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 253
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v2}, Lcom/android/inputmethod/latin/CandidateView;->showPreview(ILjava/lang/String;)V

    .line 255
    :cond_121
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/inputmethod/latin/CandidateView;->mSelectedString:Ljava/lang/CharSequence;

    .line 256
    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/inputmethod/latin/CandidateView;->mSelectedIndex:I

    .line 259
    :cond_129
    if-eqz p1, :cond_160

    .line 260
    const/4 v4, 0x0

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    add-int/lit8 v2, v19, 0xa

    int-to-float v6, v2

    move/from16 v0, v20

    int-to-float v7, v0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 261
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/inputmethod/latin/CandidateView;->mColorOther:I

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 262
    add-int v2, v19, v18

    int-to-float v2, v2

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 263
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/latin/CandidateView;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 264
    move/from16 v0, v19

    neg-int v2, v0

    sub-int v2, v2, v18

    int-to-float v2, v2

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 266
    :cond_160
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 267
    add-int v19, v19, v18

    goto/16 :goto_a5

    .line 232
    .end local v18           #wordWidth:I
    :cond_169
    if-eqz v12, :cond_ca

    .line 233
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/inputmethod/latin/CandidateView;->mColorOther:I

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_ca

    .line 239
    :cond_174
    const/4 v2, 0x0

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-virtual {v8, v3, v2, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v15

    .line 240
    .local v15, textWidth:F
    float-to-int v2, v15

    add-int/lit8 v18, v2, 0x14

    .line 241
    .restart local v18       #wordWidth:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/latin/CandidateView;->mWordWidth:[I

    aput v18, v2, v12

    goto/16 :goto_d8

    .line 269
    .end local v3           #suggestion:Ljava/lang/CharSequence;
    .end local v15           #textWidth:F
    .end local v18           #wordWidth:I
    :cond_188
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/inputmethod/latin/CandidateView;->mTotalWidth:I

    .line 270
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/inputmethod/latin/CandidateView;->mTargetScrollX:I

    if-eq v2, v13, :cond_b

    .line 271
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/inputmethod/latin/CandidateView;->scrollToTarget(I)V

    goto/16 :goto_b
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 11
    .parameter "me"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v4, 0x0

    .line 374
    iget-object v3, p0, Lcom/android/inputmethod/latin/CandidateView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v3, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 420
    :goto_c
    return v7

    .line 378
    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 379
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 380
    .local v1, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 381
    .local v2, y:I
    iput v1, p0, Lcom/android/inputmethod/latin/CandidateView;->mTouchX:I

    .line 383
    packed-switch v0, :pswitch_data_80

    goto :goto_c

    .line 385
    :pswitch_21
    iput-boolean v4, p0, Lcom/android/inputmethod/latin/CandidateView;->mScrolled:Z

    .line 386
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/CandidateView;->invalidate()V

    goto :goto_c

    .line 389
    :pswitch_27
    if-gtz v2, :cond_4b

    .line 391
    iget-object v3, p0, Lcom/android/inputmethod/latin/CandidateView;->mSelectedString:Ljava/lang/CharSequence;

    if-eqz v3, :cond_4b

    .line 392
    iget-boolean v3, p0, Lcom/android/inputmethod/latin/CandidateView;->mShowingCompletions:Z

    if-nez v3, :cond_3e

    .line 393
    iget-object v3, p0, Lcom/android/inputmethod/latin/CandidateView;->mSuggestions:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/android/inputmethod/latin/CandidateView;->mSelectedString:Ljava/lang/CharSequence;

    invoke-static {v3, v4}, Lcom/android/inputmethod/latin/TextEntryState;->acceptedSuggestion(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 396
    :cond_3e
    iget-object v3, p0, Lcom/android/inputmethod/latin/CandidateView;->mService:Lcom/android/inputmethod/latin/LatinIME;

    iget v4, p0, Lcom/android/inputmethod/latin/CandidateView;->mSelectedIndex:I

    iget-object v5, p0, Lcom/android/inputmethod/latin/CandidateView;->mSelectedString:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4, v5}, Lcom/android/inputmethod/latin/LatinIME;->pickSuggestionManually(ILjava/lang/CharSequence;)V

    .line 397
    iput-object v8, p0, Lcom/android/inputmethod/latin/CandidateView;->mSelectedString:Ljava/lang/CharSequence;

    .line 398
    iput v6, p0, Lcom/android/inputmethod/latin/CandidateView;->mSelectedIndex:I

    .line 401
    :cond_4b
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/CandidateView;->invalidate()V

    goto :goto_c

    .line 404
    :pswitch_4f
    iget-boolean v3, p0, Lcom/android/inputmethod/latin/CandidateView;->mScrolled:Z

    if-nez v3, :cond_71

    .line 405
    iget-object v3, p0, Lcom/android/inputmethod/latin/CandidateView;->mSelectedString:Ljava/lang/CharSequence;

    if-eqz v3, :cond_71

    .line 406
    iget-boolean v3, p0, Lcom/android/inputmethod/latin/CandidateView;->mShowingCompletions:Z

    if-nez v3, :cond_68

    .line 407
    iget-object v3, p0, Lcom/android/inputmethod/latin/CandidateView;->mSuggestions:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/android/inputmethod/latin/CandidateView;->mSelectedString:Ljava/lang/CharSequence;

    invoke-static {v3, v4}, Lcom/android/inputmethod/latin/TextEntryState;->acceptedSuggestion(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 410
    :cond_68
    iget-object v3, p0, Lcom/android/inputmethod/latin/CandidateView;->mService:Lcom/android/inputmethod/latin/LatinIME;

    iget v4, p0, Lcom/android/inputmethod/latin/CandidateView;->mSelectedIndex:I

    iget-object v5, p0, Lcom/android/inputmethod/latin/CandidateView;->mSelectedString:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4, v5}, Lcom/android/inputmethod/latin/LatinIME;->pickSuggestionManually(ILjava/lang/CharSequence;)V

    .line 413
    :cond_71
    iput-object v8, p0, Lcom/android/inputmethod/latin/CandidateView;->mSelectedString:Ljava/lang/CharSequence;

    .line 414
    iput v6, p0, Lcom/android/inputmethod/latin/CandidateView;->mSelectedIndex:I

    .line 415
    invoke-direct {p0}, Lcom/android/inputmethod/latin/CandidateView;->removeHighlight()V

    .line 416
    invoke-direct {p0}, Lcom/android/inputmethod/latin/CandidateView;->hidePreview()V

    .line 417
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/CandidateView;->requestLayout()V

    goto :goto_c

    .line 383
    nop

    :pswitch_data_80
    .packed-switch 0x0
        :pswitch_21
        :pswitch_4f
        :pswitch_27
    .end packed-switch
.end method

.method public scrollNext()V
    .registers 8

    .prologue
    .line 333
    const/4 v1, 0x0

    .line 334
    .local v1, i:I
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/CandidateView;->getScrollX()I

    move-result v3

    .line 335
    .local v3, targetX:I
    iget-object v4, p0, Lcom/android/inputmethod/latin/CandidateView;->mSuggestions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .line 336
    .local v0, count:I
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/CandidateView;->getScrollX()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/CandidateView;->getWidth()I

    move-result v5

    add-int v2, v4, v5

    .line 337
    .local v2, rightEdge:I
    :goto_15
    if-ge v1, v0, :cond_37

    .line 338
    iget-object v4, p0, Lcom/android/inputmethod/latin/CandidateView;->mWordX:[I

    aget v4, v4, v1

    if-gt v4, v2, :cond_3b

    iget-object v4, p0, Lcom/android/inputmethod/latin/CandidateView;->mWordX:[I

    aget v4, v4, v1

    iget-object v5, p0, Lcom/android/inputmethod/latin/CandidateView;->mWordWidth:[I

    aget v5, v5, v1

    add-int/2addr v4, v5

    if-lt v4, v2, :cond_3b

    .line 340
    iget-object v4, p0, Lcom/android/inputmethod/latin/CandidateView;->mWordX:[I

    aget v4, v4, v1

    iget v5, p0, Lcom/android/inputmethod/latin/CandidateView;->mTotalWidth:I

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/CandidateView;->getWidth()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 345
    :cond_37
    invoke-direct {p0, v3}, Lcom/android/inputmethod/latin/CandidateView;->updateScrollPosition(I)V

    .line 346
    return-void

    .line 343
    :cond_3b
    add-int/lit8 v1, v1, 0x1

    goto :goto_15
.end method

.method public scrollPrev()V
    .registers 7

    .prologue
    .line 316
    const/4 v2, 0x0

    .line 317
    .local v2, i:I
    iget-object v4, p0, Lcom/android/inputmethod/latin/CandidateView;->mSuggestions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .line 318
    .local v0, count:I
    const/4 v1, 0x0

    .line 319
    .local v1, firstItem:I
    :goto_8
    if-ge v2, v0, :cond_26

    .line 320
    iget-object v4, p0, Lcom/android/inputmethod/latin/CandidateView;->mWordX:[I

    aget v4, v4, v2

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/CandidateView;->getScrollX()I

    move-result v5

    if-ge v4, v5, :cond_3c

    iget-object v4, p0, Lcom/android/inputmethod/latin/CandidateView;->mWordX:[I

    aget v4, v4, v2

    iget-object v5, p0, Lcom/android/inputmethod/latin/CandidateView;->mWordWidth:[I

    aget v5, v5, v2

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/CandidateView;->getScrollX()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-lt v4, v5, :cond_3c

    .line 322
    move v1, v2

    .line 327
    :cond_26
    iget-object v4, p0, Lcom/android/inputmethod/latin/CandidateView;->mWordX:[I

    aget v4, v4, v1

    iget-object v5, p0, Lcom/android/inputmethod/latin/CandidateView;->mWordWidth:[I

    aget v5, v5, v1

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/CandidateView;->getWidth()I

    move-result v5

    sub-int v3, v4, v5

    .line 328
    .local v3, leftEdge:I
    if-gez v3, :cond_38

    const/4 v3, 0x0

    .line 329
    :cond_38
    invoke-direct {p0, v3}, Lcom/android/inputmethod/latin/CandidateView;->updateScrollPosition(I)V

    .line 330
    return-void

    .line 325
    .end local v3           #leftEdge:I
    :cond_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_8
.end method

.method public setService(Lcom/android/inputmethod/latin/LatinIME;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 182
    iput-object p1, p0, Lcom/android/inputmethod/latin/CandidateView;->mService:Lcom/android/inputmethod/latin/LatinIME;

    .line 183
    return-void
.end method

.method public setSuggestions(Ljava/util/List;ZZZ)V
    .registers 7
    .parameter
    .parameter "completions"
    .parameter "typedWordValid"
    .parameter "haveMinimalSuggestion"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;ZZZ)V"
        }
    .end annotation

    .prologue
    .local p1, suggestions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    const/4 v1, 0x0

    .line 300
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/CandidateView;->clear()V

    .line 301
    if-eqz p1, :cond_d

    .line 302
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/inputmethod/latin/CandidateView;->mSuggestions:Ljava/util/List;

    .line 304
    :cond_d
    iput-boolean p2, p0, Lcom/android/inputmethod/latin/CandidateView;->mShowingCompletions:Z

    .line 305
    iput-boolean p3, p0, Lcom/android/inputmethod/latin/CandidateView;->mTypedWordValid:Z

    .line 306
    invoke-virtual {p0, v1, v1}, Lcom/android/inputmethod/latin/CandidateView;->scrollTo(II)V

    .line 307
    iput v1, p0, Lcom/android/inputmethod/latin/CandidateView;->mTargetScrollX:I

    .line 308
    iput-boolean p4, p0, Lcom/android/inputmethod/latin/CandidateView;->mHaveMinimalSuggestion:Z

    .line 310
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/CandidateView;->onDraw(Landroid/graphics/Canvas;)V

    .line 311
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/CandidateView;->invalidate()V

    .line 312
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/CandidateView;->requestLayout()V

    .line 313
    return-void
.end method

.method public takeSuggestionAt(F)V
    .registers 6
    .parameter "x"

    .prologue
    .line 429
    float-to-int v0, p1

    iput v0, p0, Lcom/android/inputmethod/latin/CandidateView;->mTouchX:I

    .line 431
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/CandidateView;->onDraw(Landroid/graphics/Canvas;)V

    .line 432
    iget-object v0, p0, Lcom/android/inputmethod/latin/CandidateView;->mSelectedString:Ljava/lang/CharSequence;

    if-eqz v0, :cond_26

    .line 433
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/CandidateView;->mShowingCompletions:Z

    if-nez v0, :cond_1d

    .line 434
    iget-object v0, p0, Lcom/android/inputmethod/latin/CandidateView;->mSuggestions:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/inputmethod/latin/CandidateView;->mSelectedString:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lcom/android/inputmethod/latin/TextEntryState;->acceptedSuggestion(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 436
    :cond_1d
    iget-object v0, p0, Lcom/android/inputmethod/latin/CandidateView;->mService:Lcom/android/inputmethod/latin/LatinIME;

    iget v1, p0, Lcom/android/inputmethod/latin/CandidateView;->mSelectedIndex:I

    iget-object v2, p0, Lcom/android/inputmethod/latin/CandidateView;->mSelectedString:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Lcom/android/inputmethod/latin/LatinIME;->pickSuggestionManually(ILjava/lang/CharSequence;)V

    .line 438
    :cond_26
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/CandidateView;->invalidate()V

    .line 439
    iget-object v0, p0, Lcom/android/inputmethod/latin/CandidateView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/inputmethod/latin/CandidateView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 440
    return-void
.end method
