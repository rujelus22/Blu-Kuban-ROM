.class public Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;
.super Landroid/widget/LinearLayout;
.source "AxT9CandidateExpandLayout.java"


# static fields
.field private static final BTN_MIN_SIZE:I

.field private static final EMPTY_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private static PADDING_LEFT:I

.field private static PADDING_RIGHT:I

.field private static ROW_HEIGHT:I

.field private static SCROLL_WIDTH:I


# instance fields
.field private mAddwordButton:Landroid/widget/Button;

.field private mBtnIndex:I

.field private mCandidateListLayout:Landroid/widget/LinearLayout;

.field private mColorNormal:I

.field private mColorRecommended:I

.field mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

.field private mCurrentPage:I

.field private mDisplayedNum:I

.field private mDotLangth:F

.field private mDownViewHeight:F

.field private mDownViewWidth:F

.field private mIsInDownButton:Z

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mPaint:Landroid/graphics/Paint;

.field private mPreviousY:I

.field private mScrolled:Z

.field private mSelectionHighlight:Landroid/graphics/drawable/Drawable;

.field private mStart_point:I

.field private mSuggestionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mTouchPosX:I

.field private mTypedWordValid:Z

.field private mViewManager:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

.field private mbActiveWordIndex:B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 32
    sput v1, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->PADDING_LEFT:I

    .line 33
    sput v1, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->PADDING_RIGHT:I

    .line 38
    sget v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->CANDIDATE_TEXTVIEW_MIN_WIDTH:I

    sput v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->BTN_MIN_SIZE:I

    .line 39
    sput v1, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->SCROLL_WIDTH:I

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->EMPTY_LIST:Ljava/util/List;

    .line 72
    sput v1, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->ROW_HEIGHT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 86
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 41
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 42
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 46
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mViewManager:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    .line 47
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mCandidateListLayout:Landroid/widget/LinearLayout;

    .line 50
    iput-byte v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mbActiveWordIndex:B

    .line 58
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mPreviousY:I

    .line 59
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mScrolled:Z

    .line 62
    sget-object v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mSuggestionList:Ljava/util/List;

    .line 64
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mBtnIndex:I

    .line 65
    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mCurrentPage:I

    .line 74
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mTouchPosX:I

    .line 75
    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mStart_point:I

    .line 78
    iput v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mDownViewWidth:F

    .line 79
    iput v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mDownViewHeight:F

    .line 80
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mIsInDownButton:Z

    .line 87
    check-cast p1, Lcom/sec/android/inputmethod/axt9/AxT9IME;

    .end local p1
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 91
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 42
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 46
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mViewManager:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    .line 47
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mCandidateListLayout:Landroid/widget/LinearLayout;

    .line 50
    iput-byte v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mbActiveWordIndex:B

    .line 58
    iput v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mPreviousY:I

    .line 59
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mScrolled:Z

    .line 62
    sget-object v1, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->EMPTY_LIST:Ljava/util/List;

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mSuggestionList:Ljava/util/List;

    .line 64
    iput v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mBtnIndex:I

    .line 65
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mCurrentPage:I

    .line 74
    iput v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mTouchPosX:I

    .line 75
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mStart_point:I

    .line 78
    iput v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mDownViewWidth:F

    .line 79
    iput v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mDownViewHeight:F

    .line 80
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mIsInDownButton:Z

    .line 92
    check-cast p1, Lcom/sec/android/inputmethod/axt9/AxT9IME;

    .end local p1
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    .line 93
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080045

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mDotLangth:F

    .line 94
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mSelectionHighlight:Landroid/graphics/drawable/Drawable;

    .line 95
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mPaint:Landroid/graphics/Paint;

    .line 96
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 97
    .local v0, r:Landroid/content/res/Resources;
    const v1, 0x7f08003f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->ROW_HEIGHT:I

    .line 99
    return-void
.end method

.method static synthetic access$002(Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mTouchPosX:I

    return p1
.end method

.method static synthetic access$100(Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 21
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mDownViewWidth:F

    return v0
.end method

.method static synthetic access$102(Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;F)F
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mDownViewWidth:F

    return p1
.end method

.method static synthetic access$200(Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 21
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mDownViewHeight:F

    return v0
.end method

.method static synthetic access$202(Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;F)F
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mDownViewHeight:F

    return p1
.end method

.method static synthetic access$300(Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 21
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mBtnIndex:I

    return v0
.end method

.method static synthetic access$302(Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mBtnIndex:I

    return p1
.end method

.method static synthetic access$400(Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mIsInDownButton:Z

    return v0
.end method

.method static synthetic access$402(Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mIsInDownButton:Z

    return p1
.end method

.method static synthetic access$500(Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 21
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mDisplayedNum:I

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->displayNormal(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;)Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;
    .registers 2
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mViewManager:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    return-object v0
.end method

.method private createLayoutForScroll()Landroid/widget/LinearLayout;
    .registers 6

    .prologue
    .line 359
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 361
    .local v0, layout:Landroid/widget/LinearLayout;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    sget v2, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->SCROLL_WIDTH:I

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 364
    .local v1, params:Landroid/widget/LinearLayout$LayoutParams;
    const v2, 0x7f0200fd

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 366
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mCandidateListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 368
    return-object v0
.end method

.method private displayNormal(I)V
    .registers 27
    .parameter "displayedNum"

    .prologue
    .line 227
    const/16 v20, 0x0

    .line 228
    .local v20, x:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mSuggestionList:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v21

    const/16 v22, 0x40

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 229
    .local v6, count:I
    const/4 v10, 0x0

    .line 231
    .local v10, paint:Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mTypedWordValid:Z

    move/from16 v18, v0

    .line 233
    .local v18, typedWordValid:Z
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mDisplayedNum:I

    .line 236
    const v21, 0x7f07004b

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ScrollView;

    .line 238
    .local v12, scroll:Landroid/widget/ScrollView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mCandidateListLayout:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 240
    move/from16 v0, p1

    if-lt v0, v6, :cond_65

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mAddwordButton:Landroid/widget/Button;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getFlagIsEditorAutoCompletion()Z

    move-result v21

    if-eqz v21, :cond_62

    const/16 v21, 0x8

    :goto_4d
    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 244
    invoke-virtual {v12}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    .line 245
    .local v9, lp:Landroid/view/ViewGroup$LayoutParams;
    const/16 v21, 0x1

    move/from16 v0, v21

    iput v0, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 246
    invoke-virtual {v12, v9}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 356
    :goto_61
    return-void

    .line 241
    .end local v9           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_62
    const/16 v21, 0x0

    goto :goto_4d

    .line 251
    :cond_65
    const/16 v17, 0x0

    .line 252
    .local v17, tv:Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->createLayoutForScroll()Landroid/widget/LinearLayout;

    move-result-object v5

    .line 254
    .local v5, cellLayout:Landroid/widget/LinearLayout;
    const/16 v16, 0x0

    .line 256
    .local v16, textWidth:F
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v21, -0x2

    sget v22, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->EXPAND_TEXTVIEW_HEIGHT:I

    const/16 v23, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v11, v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 258
    .local v11, params:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v21, 0x0

    move/from16 v0, v21

    iput v0, v11, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 261
    move/from16 v7, p1

    .local v7, idx:I
    :goto_86
    if-ge v7, v6, :cond_281

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mSuggestionList:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/CharSequence;

    .line 263
    .local v14, suggestion:Ljava/lang/CharSequence;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 264
    .local v15, temp:Ljava/lang/StringBuilder;
    new-instance v17, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;

    .end local v17           #tv:Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->getContext()Landroid/content/Context;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;-><init>(Landroid/content/Context;)V

    .line 265
    .restart local v17       #tv:Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;
    const/high16 v21, 0x41a0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;->setTextSize(F)V

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    move-object/from16 v21, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 268
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mbActiveWordIndex:B

    move/from16 v21, v0

    move/from16 v0, v21

    if-ne v7, v0, :cond_1e5

    if-eqz v18, :cond_1e5

    .line 269
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mColorRecommended:I

    move/from16 v21, v0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;->setTextColor(I)V

    .line 275
    :goto_d7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mIsInDownButton:Z

    move/from16 v21, v0

    if-eqz v21, :cond_1f4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mBtnIndex:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ne v0, v7, :cond_1f4

    .line 276
    const v21, 0x7f020006

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;->setBackgroundResource(I)V

    .line 277
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0d001f

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getColor(I)I

    move-result v21

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;->setTextColor(I)V

    .line 283
    :goto_105
    sget v21, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->BTN_MIN_SIZE:I

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;->setMinWidth(I)V

    .line 284
    const/16 v21, 0x11

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;->setGravity(I)V

    .line 285
    sget v21, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->CANDIDATE_TEXTVIEW_PADDING:I

    const/16 v22, 0x0

    sget v23, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->CANDIDATE_TEXTVIEW_PADDING:I

    const/16 v24, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;->setPadding(IIII)V

    .line 287
    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v10

    .line 289
    const/16 v21, 0x0

    invoke-interface {v14}, Ljava/lang/CharSequence;->length()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v10, v14, v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v21

    sget v22, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->CANDIDATE_TEXTVIEW_PADDING:I

    mul-int/lit8 v22, v22, 0x2

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    add-float v21, v21, v22

    sget v22, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->BTN_MIN_SIZE:I

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->max(FF)F

    move-result v16

    .line 290
    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v21, v0

    add-int/lit8 v21, v21, 0x0

    sget v22, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->BTN_MIN_SIZE:I

    add-int/lit8 v22, v22, 0x0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 292
    .local v19, wordWidth:I
    add-int v21, v20, v19

    sget v22, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->SCROLL_WIDTH:I

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_1d5

    .line 293
    if-nez v20, :cond_204

    .line 294
    const/4 v8, 0x0

    .local v8, index:I
    :goto_170
    invoke-interface {v14}, Ljava/lang/CharSequence;->length()I

    move-result v21

    move/from16 v0, v21

    if-gt v8, v0, :cond_1d5

    .line 295
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 296
    const-string v21, "..."

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    invoke-interface {v14}, Ljava/lang/CharSequence;->length()I

    move-result v21

    move/from16 v0, v21

    invoke-interface {v14, v8, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 298
    const/16 v21, 0x0

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v10, v15, v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mDotLangth:F

    move/from16 v22, v0

    add-float v21, v21, v22

    sget v22, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->BTN_MIN_SIZE:I

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->max(FF)F

    move-result v16

    .line 299
    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v21, v0

    add-int/lit8 v19, v21, 0x0

    .line 301
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v21, v0

    sget v22, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->SCROLL_WIDTH:I

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mDotLangth:F

    move/from16 v23, v0

    sub-float v22, v22, v23

    cmpg-float v21, v21, v22

    if-gez v21, :cond_200

    .line 327
    .end local v8           #index:I
    :cond_1d5
    move-object/from16 v0, v17

    invoke-virtual {v0, v15, v14, v7}, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;->setText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 328
    move-object/from16 v0, v17

    invoke-virtual {v5, v0, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 330
    add-int v20, v20, v19

    .line 261
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_86

    .line 271
    .end local v19           #wordWidth:I
    :cond_1e5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mColorNormal:I

    move/from16 v21, v0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;->setTextColor(I)V

    goto/16 :goto_d7

    .line 279
    :cond_1f4
    const v21, 0x7f020099

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;->setBackgroundResource(I)V

    goto/16 :goto_105

    .line 294
    .restart local v8       #index:I
    .restart local v19       #wordWidth:I
    :cond_200
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_170

    .line 306
    .end local v8           #index:I
    :cond_204
    const/16 v20, 0x0

    .line 307
    const/16 v21, 0x1

    move/from16 v0, v21

    if-le v6, v0, :cond_210

    .line 308
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->createLayoutForScroll()Landroid/widget/LinearLayout;

    move-result-object v5

    .line 311
    :cond_210
    sget v21, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->SCROLL_WIDTH:I

    move/from16 v0, v19

    move/from16 v1, v21

    if-le v0, v1, :cond_1d5

    .line 312
    const/4 v8, 0x0

    .restart local v8       #index:I
    :goto_219
    invoke-interface {v14}, Ljava/lang/CharSequence;->length()I

    move-result v21

    move/from16 v0, v21

    if-gt v8, v0, :cond_1d5

    .line 313
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 314
    const-string v21, "..."

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    invoke-interface {v14}, Ljava/lang/CharSequence;->length()I

    move-result v21

    move/from16 v0, v21

    invoke-interface {v14, v8, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 316
    const/16 v21, 0x0

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v10, v15, v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mDotLangth:F

    move/from16 v22, v0

    add-float v21, v21, v22

    sget v22, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->BTN_MIN_SIZE:I

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->max(FF)F

    move-result v16

    .line 317
    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v21, v0

    add-int/lit8 v19, v21, 0x0

    .line 319
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v21, v0

    sget v22, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->SCROLL_WIDTH:I

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mDotLangth:F

    move/from16 v23, v0

    sub-float v22, v22, v23

    cmpg-float v21, v21, v22

    if-ltz v21, :cond_1d5

    .line 312
    add-int/lit8 v8, v8, 0x1

    goto :goto_219

    .line 333
    .end local v8           #index:I
    .end local v14           #suggestion:Ljava/lang/CharSequence;
    .end local v15           #temp:Ljava/lang/StringBuilder;
    .end local v19           #wordWidth:I
    :cond_281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mAddwordButton:Landroid/widget/Button;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getFlagIsEditorAutoCompletion()Z

    move-result v21

    if-eqz v21, :cond_2c7

    const/16 v21, 0x8

    :goto_295
    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 336
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f080044

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v21

    move/from16 v0, v21

    float-to-int v13, v0

    .line 338
    .local v13, scrollHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mCandidateListLayout:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v21

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_2ca

    .line 339
    invoke-virtual {v12}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    .line 340
    .restart local v9       #lp:Landroid/view/ViewGroup$LayoutParams;
    iput v13, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 341
    invoke-virtual {v12, v9}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_61

    .line 333
    .end local v9           #lp:Landroid/view/ViewGroup$LayoutParams;
    .end local v13           #scrollHeight:I
    :cond_2c7
    const/16 v21, 0x0

    goto :goto_295

    .line 342
    .restart local v13       #scrollHeight:I
    :cond_2ca
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mCandidateListLayout:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v21

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_2ed

    .line 343
    invoke-virtual {v12}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    .line 344
    .restart local v9       #lp:Landroid/view/ViewGroup$LayoutParams;
    mul-int/lit8 v21, v13, 0x2

    div-int/lit8 v21, v21, 0x3

    move/from16 v0, v21

    iput v0, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 345
    invoke-virtual {v12, v9}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_61

    .line 346
    .end local v9           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_2ed
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mCandidateListLayout:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_30e

    .line 347
    invoke-virtual {v12}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    .line 348
    .restart local v9       #lp:Landroid/view/ViewGroup$LayoutParams;
    div-int/lit8 v21, v13, 0x3

    move/from16 v0, v21

    iput v0, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 349
    invoke-virtual {v12, v9}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_61

    .line 351
    .end local v9           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_30e
    invoke-virtual {v12}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    .line 352
    .restart local v9       #lp:Landroid/view/ViewGroup$LayoutParams;
    const/16 v21, 0x1

    move/from16 v0, v21

    iput v0, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 353
    invoke-virtual {v12, v9}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_61
.end method


# virtual methods
.method protected freeVariables()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 385
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 386
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 388
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mAddwordButton:Landroid/widget/Button;

    .line 390
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mViewManager:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    .line 391
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mCandidateListLayout:Landroid/widget/LinearLayout;

    .line 393
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mSuggestionList:Ljava/util/List;

    .line 394
    return-void
.end method

.method public initViews()V
    .registers 4

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 109
    .local v0, r:Landroid/content/res/Resources;
    const v1, 0x7f080041

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->PADDING_LEFT:I

    .line 110
    const v1, 0x7f080042

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->PADDING_RIGHT:I

    .line 111
    const v1, 0x7f080034

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sget v2, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->PADDING_LEFT:I

    sub-int/2addr v1, v2

    sget v2, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->PADDING_RIGHT:I

    sub-int/2addr v1, v2

    sput v1, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->SCROLL_WIDTH:I

    .line 114
    new-instance v1, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout$1;

    invoke-direct {v1, p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout$1;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;)V

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 183
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {p0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 185
    const v1, 0x7f07004e

    invoke-virtual {p0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mAddwordButton:Landroid/widget/Button;

    .line 186
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mAddwordButton:Landroid/widget/Button;

    const v2, 0x7f02011a

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 188
    new-instance v1, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout$2;

    invoke-direct {v1, p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout$2;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;)V

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 195
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mAddwordButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    return-void
.end method

.method public setSuggestions(Ljava/util/List;ZZBI)V
    .registers 8
    .parameter
    .parameter "completions"
    .parameter "typedWordValid"
    .parameter "bActiveWordIndex"
    .parameter "displayedNum"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;ZZBI)V"
        }
    .end annotation

    .prologue
    .line 205
    .local p1, suggestions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mColorNormal:I

    .line 206
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mColorRecommended:I

    .line 208
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mCandidateListLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_31

    .line 209
    const v0, 0x7f07004c

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mCandidateListLayout:Landroid/widget/LinearLayout;

    .line 212
    :cond_31
    if-eqz p1, :cond_3a

    .line 213
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mSuggestionList:Ljava/util/List;

    .line 216
    :cond_3a
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mCandidateListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViewsInLayout()V

    .line 218
    iput-boolean p3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mTypedWordValid:Z

    .line 219
    iput-byte p4, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mbActiveWordIndex:B

    .line 221
    invoke-direct {p0, p5}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->displayNormal(I)V

    .line 222
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mBtnIndex:I

    .line 223
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mCurrentPage:I

    .line 224
    return-void
.end method

.method public setViewManager(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;)V
    .registers 2
    .parameter "viewManager"

    .prologue
    .line 199
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mViewManager:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    .line 200
    return-void
.end method

.method public setVisibility(I)V
    .registers 3
    .parameter "visibility"

    .prologue
    .line 372
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 374
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mCandidateListLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_12

    .line 375
    const v0, 0x7f07004c

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mCandidateListLayout:Landroid/widget/LinearLayout;

    .line 377
    :cond_12
    return-void
.end method
