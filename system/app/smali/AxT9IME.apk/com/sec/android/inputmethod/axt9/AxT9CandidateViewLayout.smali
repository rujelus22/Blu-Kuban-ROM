.class public Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;
.super Landroid/widget/LinearLayout;
.source "AxT9CandidateViewLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static BTN_HWR_SIZE:I

.field private static BTN_MIN_SIZE:I

.field private static CANDIDATEVIEW_WIDTH:I

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

.field private static EXPAND_BTN_BOTTOM_MARGIN:I

.field private static EXPAND_BTN_LEFT_MARGIN:I

.field private static EXPAND_BTN_RIGHT_MARGIN:I

.field private static EXPAND_BTN_TOP_MARGIN:I

.field private static EXPAND_BTN_WIDTH:I

.field private static PADDING_RIGHT:I

.field private static PREV_NEXT_BTN_WIDTH:I

.field private static ROW_HEIGHT:I

.field private static SCROLL_WIDTH:I


# instance fields
.field private mCandidateMode:I

.field private mCandidateView:[Landroid/widget/LinearLayout;

.field private mCandidateViewExpand:Landroid/widget/LinearLayout;

.field private mCandidateViewHwr:Landroid/widget/LinearLayout;

.field private mCandidateViewNormal:Landroid/widget/LinearLayout;

.field private mColorCandidatePress:I

.field private mColorNormal:I

.field private mColorPress:I

.field private mColorRecommended:I

.field private mCompletions:Z

.field private mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

.field private mDotLangth:F

.field private mExpandNextBtn:Landroid/widget/Button;

.field private mExpandPrevBtn:Landroid/widget/Button;

.field private mFaceDroidSans:Landroid/graphics/Typeface;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHwrIsExpand:Z

.field private mHwrNextBtn:Landroid/widget/Button;

.field private mHwrPrevBtn:Landroid/widget/Button;

.field private mIsDown:Z

.field private mMoreBtn:Landroid/widget/Button;

.field private mNextString:Ljava/lang/String;

.field private mNormalNextBtn:Landroid/widget/Button;

.field private mNormalPrevBtn:Landroid/widget/Button;

.field private mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mPaint:Landroid/graphics/Paint;

.field private mPrevString:Ljava/lang/String;

.field private mRealStart_point:I

.field private mScrolled:Z

.field private mSelectedButton:I

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

.field private mTotalWidth:I

.field private mTouchPosX:I

.field private mTypedWordValid:Z

.field private mViewManager:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

.field private mbActiveWordIndex:B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EMPTY_LIST:Ljava/util/List;

    .line 40
    sput v1, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EXPAND_BTN_LEFT_MARGIN:I

    .line 41
    sput v1, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EXPAND_BTN_RIGHT_MARGIN:I

    .line 42
    sput v1, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EXPAND_BTN_TOP_MARGIN:I

    .line 43
    sput v1, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EXPAND_BTN_BOTTOM_MARGIN:I

    .line 44
    sput v1, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EXPAND_BTN_WIDTH:I

    .line 47
    sput v1, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->ROW_HEIGHT:I

    .line 48
    sput v1, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->PADDING_RIGHT:I

    .line 50
    sget v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->CANDIDATE_TEXTVIEW_MIN_WIDTH:I

    sput v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->BTN_MIN_SIZE:I

    .line 51
    sput v1, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->CANDIDATEVIEW_WIDTH:I

    .line 52
    sput v1, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->SCROLL_WIDTH:I

    .line 53
    sput v1, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->PREV_NEXT_BTN_WIDTH:I

    .line 54
    sput v1, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->BTN_HWR_SIZE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 122
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 58
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mViewManager:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    .line 59
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    .line 60
    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateMode:I

    .line 67
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateView:[Landroid/widget/LinearLayout;

    .line 68
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateViewNormal:Landroid/widget/LinearLayout;

    .line 69
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateViewExpand:Landroid/widget/LinearLayout;

    .line 70
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateViewHwr:Landroid/widget/LinearLayout;

    .line 71
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 73
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mMoreBtn:Landroid/widget/Button;

    .line 75
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mNormalPrevBtn:Landroid/widget/Button;

    .line 76
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mNormalNextBtn:Landroid/widget/Button;

    .line 78
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mExpandPrevBtn:Landroid/widget/Button;

    .line 79
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mExpandNextBtn:Landroid/widget/Button;

    .line 81
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mHwrPrevBtn:Landroid/widget/Button;

    .line 82
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mHwrNextBtn:Landroid/widget/Button;

    .line 86
    sget-object v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mSuggestionList:Ljava/util/List;

    .line 89
    iput-byte v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mbActiveWordIndex:B

    .line 106
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mIsDown:Z

    .line 107
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mTouchPosX:I

    .line 108
    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mStart_point:I

    .line 109
    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mRealStart_point:I

    .line 473
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mHwrIsExpand:Z

    .line 123
    check-cast p1, Lcom/sec/android/inputmethod/axt9/AxT9IME;

    .end local p1
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    .line 124
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 127
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mViewManager:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    .line 59
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    .line 60
    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateMode:I

    .line 67
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateView:[Landroid/widget/LinearLayout;

    .line 68
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateViewNormal:Landroid/widget/LinearLayout;

    .line 69
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateViewExpand:Landroid/widget/LinearLayout;

    .line 70
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateViewHwr:Landroid/widget/LinearLayout;

    .line 71
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 73
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mMoreBtn:Landroid/widget/Button;

    .line 75
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mNormalPrevBtn:Landroid/widget/Button;

    .line 76
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mNormalNextBtn:Landroid/widget/Button;

    .line 78
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mExpandPrevBtn:Landroid/widget/Button;

    .line 79
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mExpandNextBtn:Landroid/widget/Button;

    .line 81
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mHwrPrevBtn:Landroid/widget/Button;

    .line 82
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mHwrNextBtn:Landroid/widget/Button;

    .line 86
    sget-object v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mSuggestionList:Ljava/util/List;

    .line 89
    iput-byte v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mbActiveWordIndex:B

    .line 106
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mIsDown:Z

    .line 107
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mTouchPosX:I

    .line 108
    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mStart_point:I

    .line 109
    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mRealStart_point:I

    .line 473
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mHwrIsExpand:Z

    move-object v0, p1

    .line 128
    check-cast v0, Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    .line 129
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateView:[Landroid/widget/LinearLayout;

    .line 132
    const-string v0, "/system/fonts/DroidSans.ttf"

    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mFaceDroidSans:Landroid/graphics/Typeface;

    .line 135
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mColorNormal:I

    .line 136
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mColorRecommended:I

    .line 138
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0019

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mColorPress:I

    .line 139
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080045

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mDotLangth:F

    .line 140
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mColorCandidatePress:I

    .line 142
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00d9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mPrevString:Ljava/lang/String;

    .line 143
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0072

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mNextString:Ljava/lang/String;

    .line 144
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mSelectionHighlight:Landroid/graphics/drawable/Drawable;

    .line 145
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mPaint:Landroid/graphics/Paint;

    .line 146
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mScrolled:Z

    return v0
.end method

.method static synthetic access$002(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mScrolled:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;)Landroid/view/GestureDetector;
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mGestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mRealStart_point:I

    return v0
.end method

.method static synthetic access$1002(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mRealStart_point:I

    return p1
.end method

.method static synthetic access$1012(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;I)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mRealStart_point:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mRealStart_point:I

    return v0
.end method

.method static synthetic access$1100()I
    .registers 1

    .prologue
    .line 29
    sget v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->BTN_MIN_SIZE:I

    return v0
.end method

.method static synthetic access$1200()I
    .registers 1

    .prologue
    .line 29
    sget v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->SCROLL_WIDTH:I

    return v0
.end method

.method static synthetic access$1300()I
    .registers 1

    .prologue
    .line 29
    sget v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->PREV_NEXT_BTN_WIDTH:I

    return v0
.end method

.method static synthetic access$1400()I
    .registers 1

    .prologue
    .line 29
    sget v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->BTN_HWR_SIZE:I

    return v0
.end method

.method static synthetic access$1500(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->displayExpand()I

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCompletions:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mTypedWordValid:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;)B
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-byte v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mbActiveWordIndex:B

    return v0
.end method

.method static synthetic access$1900(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mTotalWidth:I

    return v0
.end method

.method static synthetic access$1902(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mTotalWidth:I

    return p1
.end method

.method static synthetic access$200(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mTouchPosX:I

    return v0
.end method

.method static synthetic access$2000(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;)Landroid/widget/LinearLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateViewNormal:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mTouchPosX:I

    return p1
.end method

.method static synthetic access$300(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;)Lcom/sec/android/inputmethod/axt9/AxT9IME;
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mSuggestionList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$502(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mIsDown:Z

    return p1
.end method

.method static synthetic access$600(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;)Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mViewManager:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mSelectedButton:I

    return v0
.end method

.method static synthetic access$702(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mSelectedButton:I

    return p1
.end method

.method static synthetic access$800(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->displayHwr()V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mStart_point:I

    return v0
.end method

.method static synthetic access$902(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mStart_point:I

    return p1
.end method

.method static synthetic access$912(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;I)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mStart_point:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mStart_point:I

    return v0
.end method

.method private createExpandViews()V
    .registers 12

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x5

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 476
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateView:[Landroid/widget/LinearLayout;

    new-instance v4, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    aput-object v4, v3, v6

    .line 478
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v10, v3, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 483
    .local v2, params:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateView:[Landroid/widget/LinearLayout;

    aget-object v3, v3, v6

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 484
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateView:[Landroid/widget/LinearLayout;

    aget-object v3, v3, v6

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 486
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .end local v2           #params:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v3, -0x2

    const/high16 v4, 0x3f80

    invoke-direct {v2, v8, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 489
    .restart local v2       #params:Landroid/widget/LinearLayout$LayoutParams;
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateViewExpand:Landroid/widget/LinearLayout;

    .line 490
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateViewExpand:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 492
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateViewExpand:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 494
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateView:[Landroid/widget/LinearLayout;

    aget-object v3, v3, v6

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateViewExpand:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 496
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .end local v2           #params:Landroid/widget/LinearLayout$LayoutParams;
    sget v3, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EXPAND_BTN_WIDTH:I

    sget v4, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EXPAND_BTN_WIDTH:I

    invoke-direct {v2, v3, v4, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 497
    .restart local v2       #params:Landroid/widget/LinearLayout$LayoutParams;
    sget v3, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EXPAND_BTN_TOP_MARGIN:I

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 498
    sget v3, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EXPAND_BTN_BOTTOM_MARGIN:I

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 499
    sget v3, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EXPAND_BTN_LEFT_MARGIN:I

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 500
    sget v3, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EXPAND_BTN_RIGHT_MARGIN:I

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 502
    new-instance v1, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 503
    .local v1, closeBtn:Landroid/widget/Button;
    const v3, 0x7f020105

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 505
    new-instance v3, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$6;

    invoke-direct {v3, p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$6;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 511
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateView:[Landroid/widget/LinearLayout;

    aget-object v3, v3, v6

    invoke-virtual {v3, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 513
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08005a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 515
    .local v0, BtnWidth:I
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .end local v2           #params:Landroid/widget/LinearLayout$LayoutParams;
    sget v3, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EXPAND_BTN_WIDTH:I

    invoke-direct {v2, v0, v3, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 516
    .restart local v2       #params:Landroid/widget/LinearLayout$LayoutParams;
    sget v3, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EXPAND_BTN_TOP_MARGIN:I

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 517
    sget v3, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EXPAND_BTN_BOTTOM_MARGIN:I

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 518
    sget v3, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EXPAND_BTN_LEFT_MARGIN:I

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 519
    sget v3, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EXPAND_BTN_RIGHT_MARGIN:I

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 521
    new-instance v3, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mExpandPrevBtn:Landroid/widget/Button;

    .line 522
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mExpandPrevBtn:Landroid/widget/Button;

    const v4, 0x7f020114

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 523
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mPrevString:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v3, v9, :cond_ca

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mNextString:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v9, :cond_d2

    .line 524
    :cond_ca
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mNormalPrevBtn:Landroid/widget/Button;

    const v4, 0x414a6666

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTextSize(F)V

    .line 526
    :cond_d2
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mExpandPrevBtn:Landroid/widget/Button;

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mPrevString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 527
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mExpandPrevBtn:Landroid/widget/Button;

    invoke-virtual {v3, v10}, Landroid/widget/Button;->setTextColor(I)V

    .line 528
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mExpandPrevBtn:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setSingleLine(Z)V

    .line 530
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mExpandPrevBtn:Landroid/widget/Button;

    new-instance v4, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$7;

    invoke-direct {v4, p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$7;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 539
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateView:[Landroid/widget/LinearLayout;

    aget-object v3, v3, v6

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mExpandPrevBtn:Landroid/widget/Button;

    invoke-virtual {v3, v4, v8, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 541
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .end local v2           #params:Landroid/widget/LinearLayout$LayoutParams;
    sget v3, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EXPAND_BTN_WIDTH:I

    invoke-direct {v2, v0, v3, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 542
    .restart local v2       #params:Landroid/widget/LinearLayout$LayoutParams;
    sget v3, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EXPAND_BTN_TOP_MARGIN:I

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 543
    sget v3, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EXPAND_BTN_BOTTOM_MARGIN:I

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 544
    sget v3, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EXPAND_BTN_LEFT_MARGIN:I

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 545
    sget v3, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EXPAND_BTN_RIGHT_MARGIN:I

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 547
    new-instance v3, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mExpandNextBtn:Landroid/widget/Button;

    .line 548
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mExpandNextBtn:Landroid/widget/Button;

    const v4, 0x7f020114

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 549
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mPrevString:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v3, v9, :cond_130

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mNextString:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v9, :cond_138

    .line 550
    :cond_130
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mExpandNextBtn:Landroid/widget/Button;

    const v4, 0x414a6666

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTextSize(F)V

    .line 552
    :cond_138
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mExpandNextBtn:Landroid/widget/Button;

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mNextString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 553
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mExpandNextBtn:Landroid/widget/Button;

    invoke-virtual {v3, v10}, Landroid/widget/Button;->setTextColor(I)V

    .line 554
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mExpandNextBtn:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setSingleLine(Z)V

    .line 556
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mExpandNextBtn:Landroid/widget/Button;

    new-instance v4, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$8;

    invoke-direct {v4, p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$8;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 565
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateView:[Landroid/widget/LinearLayout;

    aget-object v3, v3, v6

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mExpandNextBtn:Landroid/widget/Button;

    invoke-virtual {v3, v4, v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 566
    return-void
.end method

.method private createHwrViews()V
    .registers 11

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x0

    const/4 v7, 0x5

    const/4 v6, 0x0

    const/4 v5, 0x2

    .line 569
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateView:[Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    aput-object v3, v2, v5

    .line 572
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    sget v2, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->ROW_HEIGHT:I

    invoke-direct {v1, v9, v2, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 577
    .local v1, params:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateView:[Landroid/widget/LinearLayout;

    aget-object v2, v2, v5

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 578
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateView:[Landroid/widget/LinearLayout;

    aget-object v2, v2, v5

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 580
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .end local v1           #params:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v2, -0x2

    const/high16 v3, 0x3f80

    invoke-direct {v1, v6, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 583
    .restart local v1       #params:Landroid/widget/LinearLayout$LayoutParams;
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateViewHwr:Landroid/widget/LinearLayout;

    .line 584
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateViewHwr:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 586
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateViewHwr:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 588
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateView:[Landroid/widget/LinearLayout;

    aget-object v2, v2, v5

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateViewHwr:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 597
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08005a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 599
    .local v0, BtnWidth:I
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .end local v1           #params:Landroid/widget/LinearLayout$LayoutParams;
    sget v2, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EXPAND_BTN_WIDTH:I

    invoke-direct {v1, v0, v2, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 600
    .restart local v1       #params:Landroid/widget/LinearLayout$LayoutParams;
    sget v2, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EXPAND_BTN_TOP_MARGIN:I

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 601
    sget v2, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EXPAND_BTN_BOTTOM_MARGIN:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 602
    sget v2, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EXPAND_BTN_LEFT_MARGIN:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 603
    sget v2, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EXPAND_BTN_RIGHT_MARGIN:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 606
    new-instance v2, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mHwrPrevBtn:Landroid/widget/Button;

    .line 607
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mHwrPrevBtn:Landroid/widget/Button;

    const v3, 0x7f020114

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 608
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mPrevString:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v2, v7, :cond_94

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mNextString:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v7, :cond_9c

    .line 609
    :cond_94
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mNormalPrevBtn:Landroid/widget/Button;

    const v3, 0x414a6666

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextSize(F)V

    .line 611
    :cond_9c
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mHwrPrevBtn:Landroid/widget/Button;

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mPrevString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 612
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mHwrPrevBtn:Landroid/widget/Button;

    invoke-virtual {v2, v9}, Landroid/widget/Button;->setTextColor(I)V

    .line 613
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mHwrPrevBtn:Landroid/widget/Button;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setSingleLine(Z)V

    .line 615
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mHwrPrevBtn:Landroid/widget/Button;

    new-instance v3, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$9;

    invoke-direct {v3, p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$9;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 624
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateView:[Landroid/widget/LinearLayout;

    aget-object v2, v2, v5

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mHwrPrevBtn:Landroid/widget/Button;

    invoke-virtual {v2, v3, v6, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 626
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .end local v1           #params:Landroid/widget/LinearLayout$LayoutParams;
    sget v2, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EXPAND_BTN_WIDTH:I

    invoke-direct {v1, v0, v2, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 627
    .restart local v1       #params:Landroid/widget/LinearLayout$LayoutParams;
    sget v2, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EXPAND_BTN_TOP_MARGIN:I

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 628
    sget v2, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EXPAND_BTN_BOTTOM_MARGIN:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 629
    sget v2, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EXPAND_BTN_LEFT_MARGIN:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 630
    sget v2, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EXPAND_BTN_RIGHT_MARGIN:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 632
    new-instance v2, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mHwrNextBtn:Landroid/widget/Button;

    .line 633
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mHwrNextBtn:Landroid/widget/Button;

    const v3, 0x7f020114

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 634
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mPrevString:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v2, v7, :cond_fb

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mNextString:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v7, :cond_103

    .line 635
    :cond_fb
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mHwrNextBtn:Landroid/widget/Button;

    const v3, 0x414a6666

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextSize(F)V

    .line 637
    :cond_103
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mHwrNextBtn:Landroid/widget/Button;

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mNextString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 638
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mHwrNextBtn:Landroid/widget/Button;

    invoke-virtual {v2, v9}, Landroid/widget/Button;->setTextColor(I)V

    .line 639
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mHwrNextBtn:Landroid/widget/Button;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setSingleLine(Z)V

    .line 641
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mHwrNextBtn:Landroid/widget/Button;

    new-instance v3, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$10;

    invoke-direct {v3, p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$10;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 650
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateView:[Landroid/widget/LinearLayout;

    aget-object v2, v2, v5

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mHwrNextBtn:Landroid/widget/Button;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 672
    return-void
.end method

.method private createLayoutForExpand()Landroid/widget/LinearLayout;
    .registers 6

    .prologue
    .line 1116
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1118
    .local v0, layout:Landroid/widget/LinearLayout;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    sget v2, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->SCROLL_WIDTH:I

    sget v3, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->ROW_HEIGHT:I

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1121
    .local v1, params:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateViewExpand:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1123
    return-object v0
.end method

.method private createLayoutForExpandPrevNext()Landroid/widget/LinearLayout;
    .registers 6

    .prologue
    .line 1127
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1129
    .local v0, layout:Landroid/widget/LinearLayout;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    sget v2, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->SCROLL_WIDTH:I

    sget v3, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->PREV_NEXT_BTN_WIDTH:I

    sub-int/2addr v2, v3

    sget v3, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->ROW_HEIGHT:I

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1132
    .local v1, params:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateViewExpand:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1134
    return-object v0
.end method

.method private createLayoutForOneLine()Landroid/widget/LinearLayout;
    .registers 6

    .prologue
    .line 1083
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1085
    .local v0, layout:Landroid/widget/LinearLayout;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    sget v2, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->CANDIDATEVIEW_WIDTH:I

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1088
    .local v1, params:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateViewNormal:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1090
    return-object v0
.end method

.method private createLayoutForPrevNext()Landroid/widget/LinearLayout;
    .registers 6

    .prologue
    .line 1094
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1096
    .local v0, layout:Landroid/widget/LinearLayout;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    sget v2, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->SCROLL_WIDTH:I

    sget v3, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->PREV_NEXT_BTN_WIDTH:I

    sub-int/2addr v2, v3

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1099
    .local v1, params:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateViewNormal:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1101
    return-object v0
.end method

.method private createLayoutForPrevNextOneLine()Landroid/widget/LinearLayout;
    .registers 6

    .prologue
    .line 1105
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1107
    .local v0, layout:Landroid/widget/LinearLayout;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    sget v2, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->CANDIDATEVIEW_WIDTH:I

    sget v3, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->PREV_NEXT_BTN_WIDTH:I

    sub-int/2addr v2, v3

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1110
    .local v1, params:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateViewNormal:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1112
    return-object v0
.end method

.method private createLayoutForScroll()Landroid/widget/LinearLayout;
    .registers 6

    .prologue
    .line 1072
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1074
    .local v0, layout:Landroid/widget/LinearLayout;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    sget v2, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->SCROLL_WIDTH:I

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1077
    .local v1, params:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateViewNormal:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1079
    return-object v0
.end method

.method private createNormalViews()V
    .registers 11

    .prologue
    const/4 v9, 0x1

    const/4 v8, -0x1

    const/4 v7, 0x5

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 208
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateView:[Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    aput-object v3, v2, v5

    .line 210
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v8, v2, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 215
    .local v1, params:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateView:[Landroid/widget/LinearLayout;

    aget-object v2, v2, v5

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 216
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateView:[Landroid/widget/LinearLayout;

    aget-object v2, v2, v5

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 218
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .end local v1           #params:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v2, -0x2

    const/high16 v3, 0x3f80

    invoke-direct {v1, v5, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 221
    .restart local v1       #params:Landroid/widget/LinearLayout$LayoutParams;
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateViewNormal:Landroid/widget/LinearLayout;

    .line 222
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateViewNormal:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 224
    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$1;

    invoke-direct {v2, p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$1;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;)V

    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 357
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateViewNormal:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 358
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateView:[Landroid/widget/LinearLayout;

    aget-object v2, v2, v5

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateViewNormal:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 360
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .end local v1           #params:Landroid/widget/LinearLayout$LayoutParams;
    sget v2, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EXPAND_BTN_WIDTH:I

    sget v3, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EXPAND_BTN_WIDTH:I

    invoke-direct {v1, v2, v3, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 361
    .restart local v1       #params:Landroid/widget/LinearLayout$LayoutParams;
    sget v2, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EXPAND_BTN_TOP_MARGIN:I

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 362
    sget v2, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EXPAND_BTN_BOTTOM_MARGIN:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 363
    sget v2, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EXPAND_BTN_LEFT_MARGIN:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 364
    sget v2, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EXPAND_BTN_RIGHT_MARGIN:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 366
    new-instance v2, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mMoreBtn:Landroid/widget/Button;

    .line 367
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mMoreBtn:Landroid/widget/Button;

    const v3, 0x7f020108

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 369
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mMoreBtn:Landroid/widget/Button;

    new-instance v3, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$2;

    invoke-direct {v3, p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$2;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 380
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateView:[Landroid/widget/LinearLayout;

    aget-object v2, v2, v5

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mMoreBtn:Landroid/widget/Button;

    invoke-virtual {v2, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 382
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08005a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 384
    .local v0, BtnWidth:I
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .end local v1           #params:Landroid/widget/LinearLayout$LayoutParams;
    sget v2, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EXPAND_BTN_WIDTH:I

    invoke-direct {v1, v0, v2, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 385
    .restart local v1       #params:Landroid/widget/LinearLayout$LayoutParams;
    sget v2, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EXPAND_BTN_TOP_MARGIN:I

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 386
    sget v2, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EXPAND_BTN_BOTTOM_MARGIN:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 387
    sget v2, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EXPAND_BTN_LEFT_MARGIN:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 388
    sget v2, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EXPAND_BTN_RIGHT_MARGIN:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 390
    new-instance v2, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mNormalPrevBtn:Landroid/widget/Button;

    .line 391
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mNormalPrevBtn:Landroid/widget/Button;

    const v3, 0x7f020114

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 393
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mNormalPrevBtn:Landroid/widget/Button;

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mFaceDroidSans:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 395
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mPrevString:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v2, v7, :cond_e0

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mNextString:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v7, :cond_e8

    .line 396
    :cond_e0
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mNormalPrevBtn:Landroid/widget/Button;

    const v3, 0x414a6666

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextSize(F)V

    .line 398
    :cond_e8
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mNormalPrevBtn:Landroid/widget/Button;

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mPrevString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 399
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mNormalPrevBtn:Landroid/widget/Button;

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setTextColor(I)V

    .line 400
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mNormalPrevBtn:Landroid/widget/Button;

    invoke-virtual {v2, v9}, Landroid/widget/Button;->setSingleLine(Z)V

    .line 402
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mNormalPrevBtn:Landroid/widget/Button;

    new-instance v3, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$3;

    invoke-direct {v3, p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$3;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 411
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateView:[Landroid/widget/LinearLayout;

    aget-object v2, v2, v5

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mNormalPrevBtn:Landroid/widget/Button;

    invoke-virtual {v2, v3, v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 413
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .end local v1           #params:Landroid/widget/LinearLayout$LayoutParams;
    sget v2, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EXPAND_BTN_WIDTH:I

    invoke-direct {v1, v0, v2, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 414
    .restart local v1       #params:Landroid/widget/LinearLayout$LayoutParams;
    sget v2, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EXPAND_BTN_TOP_MARGIN:I

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 415
    sget v2, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EXPAND_BTN_BOTTOM_MARGIN:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 416
    sget v2, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EXPAND_BTN_LEFT_MARGIN:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 417
    sget v2, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EXPAND_BTN_RIGHT_MARGIN:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 419
    new-instance v2, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mNormalNextBtn:Landroid/widget/Button;

    .line 420
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mNormalNextBtn:Landroid/widget/Button;

    const v3, 0x7f020114

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 422
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mNormalNextBtn:Landroid/widget/Button;

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mFaceDroidSans:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 424
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mPrevString:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v2, v7, :cond_14d

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mNextString:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v7, :cond_155

    .line 425
    :cond_14d
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mNormalNextBtn:Landroid/widget/Button;

    const v3, 0x414a6666

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextSize(F)V

    .line 427
    :cond_155
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mNormalNextBtn:Landroid/widget/Button;

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mNextString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 428
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mNormalNextBtn:Landroid/widget/Button;

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setTextColor(I)V

    .line 429
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mNormalNextBtn:Landroid/widget/Button;

    invoke-virtual {v2, v9}, Landroid/widget/Button;->setSingleLine(Z)V

    .line 431
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mNormalNextBtn:Landroid/widget/Button;

    new-instance v3, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$4;

    invoke-direct {v3, p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$4;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 440
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateView:[Landroid/widget/LinearLayout;

    aget-object v2, v2, v5

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mNormalNextBtn:Landroid/widget/Button;

    invoke-virtual {v2, v3, v9, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 442
    new-instance v2, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$5;

    invoke-direct {v4, p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$5;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;)V

    invoke-direct {v2, v3, v4}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mGestureDetector:Landroid/view/GestureDetector;

    .line 471
    return-void
.end method

.method private displayExpand()I
    .registers 26

    .prologue
    .line 935
    const/4 v7, 0x1

    .line 936
    .local v7, displayedNum:I
    const/4 v10, 0x0

    .line 937
    .local v10, isSetted:Z
    const/16 v20, 0x0

    .line 938
    .local v20, x:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mSuggestionList:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v21

    const/16 v22, 0x40

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 940
    .local v6, count:I
    const/4 v11, 0x0

    .line 942
    .local v11, paint:Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mTypedWordValid:Z

    move/from16 v18, v0

    .line 944
    .local v18, typedWordValid:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateViewExpand:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 946
    const/16 v17, 0x0

    .line 948
    .local v17, tv:Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentPrivateImeOptionPrevNext()I

    move-result v13

    .line 950
    .local v13, prevNextCode:I
    const/4 v5, 0x0

    .line 951
    .local v5, cellLayout:Landroid/widget/LinearLayout;
    if-eqz v13, :cond_19b

    .line 952
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->createLayoutForExpandPrevNext()Landroid/widget/LinearLayout;

    move-result-object v5

    .line 957
    :goto_37
    const/16 v16, 0x0

    .line 960
    .local v16, textWidth:F
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v21, -0x2

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v12, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 963
    .local v12, params:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v8, 0x0

    .local v8, idx:I
    :goto_47
    if-ge v8, v6, :cond_1c7

    .line 964
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mSuggestionList:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/CharSequence;

    .line 966
    .local v14, suggestion:Ljava/lang/CharSequence;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 967
    .local v15, temp:Ljava/lang/StringBuilder;
    new-instance v17, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;

    .end local v17           #tv:Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->getContext()Landroid/content/Context;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;-><init>(Landroid/content/Context;)V

    .line 968
    .restart local v17       #tv:Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;
    const/high16 v21, 0x41a0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;->setTextSize(F)V

    .line 969
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    move-object/from16 v21, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 971
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mbActiveWordIndex:B

    move/from16 v21, v0

    move/from16 v0, v21

    if-ne v8, v0, :cond_1a1

    if-eqz v18, :cond_1a1

    .line 972
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mColorRecommended:I

    move/from16 v21, v0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;->setTextColor(I)V

    .line 977
    :goto_98
    const v21, 0x7f020099

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;->setBackgroundResource(I)V

    .line 978
    sget v21, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->BTN_MIN_SIZE:I

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;->setMinWidth(I)V

    .line 979
    const/16 v21, 0x11

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;->setGravity(I)V

    .line 980
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mColorPress:I

    move/from16 v21, v0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;->setHighlightColor(I)V

    .line 981
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

    .line 983
    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v11

    .line 985
    const/16 v21, 0x0

    invoke-interface {v14}, Ljava/lang/CharSequence;->length()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v11, v14, v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v21

    sget v22, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->CANDIDATE_TEXTVIEW_PADDING:I

    mul-int/lit8 v22, v22, 0x2

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    add-float v21, v21, v22

    sget v22, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->BTN_MIN_SIZE:I

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->max(FF)F

    move-result v16

    .line 986
    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v21, v0

    add-int/lit8 v21, v21, 0x0

    sget v22, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->BTN_MIN_SIZE:I

    add-int/lit8 v22, v22, 0x0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 988
    .local v19, wordWidth:I
    add-int v22, v20, v19

    if-eqz v13, :cond_1b0

    sget v21, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->SCROLL_WIDTH:I

    sget v23, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->PREV_NEXT_BTN_WIDTH:I

    sub-int v21, v21, v23

    :goto_117
    move/from16 v0, v22

    move/from16 v1, v21

    if-le v0, v1, :cond_266

    .line 989
    if-nez v20, :cond_1bb

    .line 990
    const/4 v9, 0x0

    .local v9, index:I
    :goto_120
    invoke-interface {v14}, Ljava/lang/CharSequence;->length()I

    move-result v21

    move/from16 v0, v21

    if-gt v9, v0, :cond_18b

    .line 991
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 992
    const-string v21, "..."

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 993
    invoke-interface {v14}, Ljava/lang/CharSequence;->length()I

    move-result v21

    move/from16 v0, v21

    invoke-interface {v14, v9, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 994
    const/16 v21, 0x0

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v11, v15, v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mDotLangth:F

    move/from16 v22, v0

    add-float v21, v21, v22

    sget v22, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->BTN_MIN_SIZE:I

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->max(FF)F

    move-result v16

    .line 995
    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v21, v0

    add-int/lit8 v19, v21, 0x0

    .line 997
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v22, v0

    if-eqz v13, :cond_1b4

    sget v21, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->SCROLL_WIDTH:I

    sget v23, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->PREV_NEXT_BTN_WIDTH:I

    sub-int v21, v21, v23

    :goto_17a
    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mDotLangth:F

    move/from16 v23, v0

    sub-float v21, v21, v23

    cmpg-float v21, v22, v21

    if-gez v21, :cond_1b7

    .line 1031
    .end local v9           #index:I
    :cond_18b
    :goto_18b
    move-object/from16 v0, v17

    invoke-virtual {v0, v15, v14, v8}, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;->setText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 1032
    move-object/from16 v0, v17

    invoke-virtual {v5, v0, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1034
    add-int v20, v20, v19

    .line 963
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_47

    .line 954
    .end local v8           #idx:I
    .end local v12           #params:Landroid/widget/LinearLayout$LayoutParams;
    .end local v14           #suggestion:Ljava/lang/CharSequence;
    .end local v15           #temp:Ljava/lang/StringBuilder;
    .end local v16           #textWidth:F
    .end local v19           #wordWidth:I
    :cond_19b
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->createLayoutForExpand()Landroid/widget/LinearLayout;

    move-result-object v5

    goto/16 :goto_37

    .line 974
    .restart local v8       #idx:I
    .restart local v12       #params:Landroid/widget/LinearLayout$LayoutParams;
    .restart local v14       #suggestion:Ljava/lang/CharSequence;
    .restart local v15       #temp:Ljava/lang/StringBuilder;
    .restart local v16       #textWidth:F
    :cond_1a1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mColorNormal:I

    move/from16 v21, v0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;->setTextColor(I)V

    goto/16 :goto_98

    .line 988
    .restart local v19       #wordWidth:I
    :cond_1b0
    sget v21, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->SCROLL_WIDTH:I

    goto/16 :goto_117

    .line 997
    .restart local v9       #index:I
    :cond_1b4
    sget v21, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->SCROLL_WIDTH:I

    goto :goto_17a

    .line 990
    :cond_1b7
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_120

    .line 1003
    .end local v9           #index:I
    :cond_1bb
    if-nez v10, :cond_1bf

    .line 1004
    move v7, v8

    .line 1005
    const/4 v10, 0x1

    .line 1007
    :cond_1bf
    const/16 v20, 0x0

    .line 1008
    const/16 v21, 0x1

    move/from16 v0, v21

    if-le v6, v0, :cond_1e3

    .line 1037
    .end local v14           #suggestion:Ljava/lang/CharSequence;
    .end local v15           #temp:Ljava/lang/StringBuilder;
    .end local v19           #wordWidth:I
    :cond_1c7
    if-eqz v13, :cond_2f5

    .line 1038
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mExpandNextBtn:Landroid/widget/Button;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Button;->setVisibility(I)V

    .line 1039
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mExpandPrevBtn:Landroid/widget/Button;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Button;->setVisibility(I)V

    .line 1040
    packed-switch v13, :pswitch_data_30e

    .line 1068
    :goto_1e2
    return v7

    .line 1012
    .restart local v14       #suggestion:Ljava/lang/CharSequence;
    .restart local v15       #temp:Ljava/lang/StringBuilder;
    .restart local v19       #wordWidth:I
    :cond_1e3
    if-eqz v13, :cond_260

    sget v21, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->SCROLL_WIDTH:I

    sget v22, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->PREV_NEXT_BTN_WIDTH:I

    sub-int v21, v21, v22

    :goto_1eb
    move/from16 v0, v19

    move/from16 v1, v21

    if-le v0, v1, :cond_18b

    .line 1013
    const/4 v9, 0x0

    .restart local v9       #index:I
    :goto_1f2
    invoke-interface {v14}, Ljava/lang/CharSequence;->length()I

    move-result v21

    move/from16 v0, v21

    if-gt v9, v0, :cond_18b

    .line 1014
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1015
    const-string v21, "..."

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1016
    invoke-interface {v14}, Ljava/lang/CharSequence;->length()I

    move-result v21

    move/from16 v0, v21

    invoke-interface {v14, v9, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1017
    const/16 v21, 0x0

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v11, v15, v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mDotLangth:F

    move/from16 v22, v0

    add-float v21, v21, v22

    sget v22, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->BTN_MIN_SIZE:I

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->max(FF)F

    move-result v16

    .line 1018
    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v21, v0

    add-int/lit8 v19, v21, 0x0

    .line 1020
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v22, v0

    if-eqz v13, :cond_263

    sget v21, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->SCROLL_WIDTH:I

    sget v23, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->PREV_NEXT_BTN_WIDTH:I

    sub-int v21, v21, v23

    :goto_24c
    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mDotLangth:F

    move/from16 v23, v0

    sub-float v21, v21, v23

    cmpg-float v21, v22, v21

    if-ltz v21, :cond_18b

    .line 1013
    add-int/lit8 v9, v9, 0x1

    goto :goto_1f2

    .line 1012
    .end local v9           #index:I
    :cond_260
    sget v21, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->SCROLL_WIDTH:I

    goto :goto_1eb

    .line 1020
    .restart local v9       #index:I
    :cond_263
    sget v21, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->SCROLL_WIDTH:I

    goto :goto_24c

    .line 1028
    .end local v9           #index:I
    :cond_266
    move v7, v6

    goto/16 :goto_18b

    .line 1042
    .end local v14           #suggestion:Ljava/lang/CharSequence;
    .end local v15           #temp:Ljava/lang/StringBuilder;
    .end local v19           #wordWidth:I
    :pswitch_269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mExpandNextBtn:Landroid/widget/Button;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1043
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mExpandNextBtn:Landroid/widget/Button;

    move-object/from16 v21, v0

    const/16 v22, -0x1

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Button;->setTextColor(I)V

    .line 1044
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mExpandPrevBtn:Landroid/widget/Button;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1045
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mExpandPrevBtn:Landroid/widget/Button;

    move-object/from16 v21, v0

    const/16 v22, -0x1

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Button;->setTextColor(I)V

    goto/16 :goto_1e2

    .line 1048
    :pswitch_297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mExpandNextBtn:Landroid/widget/Button;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1049
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mExpandNextBtn:Landroid/widget/Button;

    move-object/from16 v21, v0

    const v22, -0x777778

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Button;->setTextColor(I)V

    .line 1050
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mExpandPrevBtn:Landroid/widget/Button;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1051
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mExpandPrevBtn:Landroid/widget/Button;

    move-object/from16 v21, v0

    const/16 v22, -0x1

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Button;->setTextColor(I)V

    goto/16 :goto_1e2

    .line 1054
    :pswitch_2c6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mExpandNextBtn:Landroid/widget/Button;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1055
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mExpandNextBtn:Landroid/widget/Button;

    move-object/from16 v21, v0

    const/16 v22, -0x1

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Button;->setTextColor(I)V

    .line 1056
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mExpandPrevBtn:Landroid/widget/Button;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1057
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mExpandPrevBtn:Landroid/widget/Button;

    move-object/from16 v21, v0

    const v22, -0x777778

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Button;->setTextColor(I)V

    goto/16 :goto_1e2

    .line 1063
    :cond_2f5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mExpandNextBtn:Landroid/widget/Button;

    move-object/from16 v21, v0

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Button;->setVisibility(I)V

    .line 1064
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mExpandPrevBtn:Landroid/widget/Button;

    move-object/from16 v21, v0

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_1e2

    .line 1040
    nop

    :pswitch_data_30e
    .packed-switch 0x7
        :pswitch_269
        :pswitch_297
        :pswitch_2c6
    .end packed-switch
.end method

.method private displayHwr()V
    .registers 16

    .prologue
    const v14, -0x777778

    const/4 v13, 0x0

    const/4 v12, 0x1

    const/4 v11, -0x1

    const/4 v10, 0x0

    .line 1160
    iget-object v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v8}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentPrivateImeOptionPrevNext()I

    move-result v3

    .line 1162
    .local v3, prevNextCode:I
    if-eqz v3, :cond_8b

    const/4 v0, 0x4

    .line 1163
    .local v0, count:I
    :goto_10
    iget-object v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mSuggestionList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x6

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1164
    .local v4, realCount:I
    iget-boolean v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mTypedWordValid:Z

    .line 1168
    .local v7, typedWordValid:Z
    iget-object v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateViewHwr:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1169
    const/4 v6, 0x0

    .line 1171
    .local v6, tv:Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    sget v8, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->BTN_HWR_SIZE:I

    sget v9, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->ROW_HEIGHT:I

    invoke-direct {v2, v8, v9, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1174
    .local v2, params:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v1, 0x0

    .local v1, idx:I
    :goto_2d
    if-ge v1, v0, :cond_b3

    .line 1175
    const/4 v5, 0x0

    .line 1176
    .local v5, suggestion:Ljava/lang/CharSequence;
    if-ge v1, v4, :cond_8d

    .line 1177
    iget-object v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mSuggestionList:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #suggestion:Ljava/lang/CharSequence;
    check-cast v5, Ljava/lang/CharSequence;

    .line 1178
    .restart local v5       #suggestion:Ljava/lang/CharSequence;
    new-instance v6, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;

    .end local v6           #tv:Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v6, v8}, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;-><init>(Landroid/content/Context;)V

    .line 1180
    .restart local v6       #tv:Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;
    iget-object v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v6, v8}, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1181
    iget v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mColorPress:I

    invoke-virtual {v6, v8}, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;->setHighlightColor(I)V

    .line 1182
    invoke-virtual {v6, v5, v5, v1}, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;->setText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 1188
    :goto_50
    const/high16 v8, 0x41a0

    invoke-virtual {v6, v8}, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;->setTextSize(F)V

    .line 1189
    add-int/lit8 v8, v0, -0x1

    if-ge v1, v8, :cond_9e

    .line 1190
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f020099

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1194
    :goto_67
    sget v8, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->BTN_HWR_SIZE:I

    invoke-virtual {v6, v8}, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;->setMinWidth(I)V

    .line 1195
    const/16 v8, 0x11

    invoke-virtual {v6, v8}, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;->setGravity(I)V

    .line 1196
    invoke-virtual {v6, v10, v10, v10, v10}, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;->setPadding(IIII)V

    .line 1198
    iget-byte v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mbActiveWordIndex:B

    if-ne v1, v8, :cond_ad

    if-eqz v7, :cond_ad

    iget-boolean v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mIsDown:Z

    if-nez v8, :cond_ad

    .line 1199
    iget v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mColorRecommended:I

    invoke-virtual {v6, v8}, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;->setTextColor(I)V

    .line 1204
    :goto_83
    iget-object v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateViewHwr:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1174
    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    .line 1162
    .end local v0           #count:I
    .end local v1           #idx:I
    .end local v2           #params:Landroid/widget/LinearLayout$LayoutParams;
    .end local v4           #realCount:I
    .end local v5           #suggestion:Ljava/lang/CharSequence;
    .end local v6           #tv:Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;
    .end local v7           #typedWordValid:Z
    :cond_8b
    const/4 v0, 0x6

    goto :goto_10

    .line 1184
    .restart local v0       #count:I
    .restart local v1       #idx:I
    .restart local v2       #params:Landroid/widget/LinearLayout$LayoutParams;
    .restart local v4       #realCount:I
    .restart local v5       #suggestion:Ljava/lang/CharSequence;
    .restart local v6       #tv:Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;
    .restart local v7       #typedWordValid:Z
    :cond_8d
    new-instance v6, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;

    .end local v6           #tv:Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v6, v8}, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;-><init>(Landroid/content/Context;)V

    .line 1185
    .restart local v6       #tv:Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;
    const-string v8, ""

    const-string v9, ""

    invoke-virtual {v6, v8, v9, v10}, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;->setText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    goto :goto_50

    .line 1192
    :cond_9e
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f02011b

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_67

    .line 1201
    :cond_ad
    iget v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mColorNormal:I

    invoke-virtual {v6, v8}, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;->setTextColor(I)V

    goto :goto_83

    .line 1207
    .end local v5           #suggestion:Ljava/lang/CharSequence;
    :cond_b3
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .end local v2           #params:Landroid/widget/LinearLayout$LayoutParams;
    sget v8, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EXPAND_BTN_WIDTH:I

    sget v9, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EXPAND_BTN_WIDTH:I

    invoke-direct {v2, v8, v9, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1209
    .restart local v2       #params:Landroid/widget/LinearLayout$LayoutParams;
    sget v8, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EXPAND_BTN_TOP_MARGIN:I

    iput v8, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1210
    sget v8, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EXPAND_BTN_BOTTOM_MARGIN:I

    iput v8, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 1211
    sget v8, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EXPAND_BTN_LEFT_MARGIN:I

    iput v8, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1214
    if-eqz v3, :cond_117

    .line 1215
    iget-object v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mHwrNextBtn:Landroid/widget/Button;

    invoke-virtual {v8, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 1216
    iget-object v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mHwrPrevBtn:Landroid/widget/Button;

    invoke-virtual {v8, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 1217
    packed-switch v3, :pswitch_data_126

    .line 1248
    :goto_d7
    return-void

    .line 1219
    :pswitch_d8
    iget-object v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mHwrNextBtn:Landroid/widget/Button;

    invoke-virtual {v8, v12}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1220
    iget-object v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mHwrNextBtn:Landroid/widget/Button;

    invoke-virtual {v8, v11}, Landroid/widget/Button;->setTextColor(I)V

    .line 1221
    iget-object v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mHwrPrevBtn:Landroid/widget/Button;

    invoke-virtual {v8, v12}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1222
    iget-object v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mHwrPrevBtn:Landroid/widget/Button;

    invoke-virtual {v8, v11}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_d7

    .line 1225
    :pswitch_ed
    iget-object v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mHwrNextBtn:Landroid/widget/Button;

    invoke-virtual {v8, v10}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1226
    iget-object v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mHwrNextBtn:Landroid/widget/Button;

    invoke-virtual {v8, v14}, Landroid/widget/Button;->setTextColor(I)V

    .line 1227
    iget-object v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mHwrPrevBtn:Landroid/widget/Button;

    invoke-virtual {v8, v12}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1228
    iget-object v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mHwrPrevBtn:Landroid/widget/Button;

    invoke-virtual {v8, v11}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_d7

    .line 1231
    :pswitch_102
    iget-object v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mHwrNextBtn:Landroid/widget/Button;

    invoke-virtual {v8, v12}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1232
    iget-object v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mHwrNextBtn:Landroid/widget/Button;

    invoke-virtual {v8, v11}, Landroid/widget/Button;->setTextColor(I)V

    .line 1233
    iget-object v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mHwrPrevBtn:Landroid/widget/Button;

    invoke-virtual {v8, v10}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1234
    iget-object v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mHwrPrevBtn:Landroid/widget/Button;

    invoke-virtual {v8, v14}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_d7

    .line 1240
    :cond_117
    iget-object v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mHwrNextBtn:Landroid/widget/Button;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 1241
    iget-object v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mHwrPrevBtn:Landroid/widget/Button;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_d7

    .line 1217
    :pswitch_data_126
    .packed-switch 0x7
        :pswitch_d8
        :pswitch_ed
        :pswitch_102
    .end packed-switch
.end method

.method private displayNormal()V
    .registers 24

    .prologue
    .line 781
    const/16 v18, 0x0

    .line 782
    .local v18, x:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mSuggestionList:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    const/16 v20, 0x40

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 783
    .local v5, count:I
    const/4 v9, 0x0

    .line 785
    .local v9, paint:Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mTypedWordValid:Z

    move/from16 v16, v0

    .line 787
    .local v16, typedWordValid:Z
    const/4 v8, 0x0

    .line 789
    .local v8, isMoreBtnShouldVisible:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateViewNormal:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 791
    const/4 v15, 0x0

    .line 793
    .local v15, tv:Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentPrivateImeOptionPrevNext()I

    move-result v11

    .line 795
    .local v11, prevNextCode:I
    const/4 v4, 0x0

    .line 796
    .local v4, cellLayout:Landroid/widget/LinearLayout;
    if-eqz v11, :cond_192

    const/16 v19, 0x1

    move/from16 v0, v19

    if-gt v5, v0, :cond_192

    .line 797
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->createLayoutForPrevNextOneLine()Landroid/widget/LinearLayout;

    move-result-object v4

    .line 807
    :goto_3b
    const/4 v14, 0x0

    .line 809
    .local v14, textWidth:F
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v19, -0x2

    sget v20, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->EXPAND_TEXTVIEW_HEIGHT:I

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v10, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 812
    .local v10, params:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v6, 0x0

    .local v6, idx:I
    :goto_4a
    if-ge v6, v5, :cond_2d7

    .line 813
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mSuggestionList:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/CharSequence;

    .line 815
    .local v12, suggestion:Ljava/lang/CharSequence;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 816
    .local v13, temp:Ljava/lang/StringBuilder;
    new-instance v15, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;

    .end local v15           #tv:Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->getContext()Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v15, v0}, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;-><init>(Landroid/content/Context;)V

    .line 817
    .restart local v15       #tv:Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;
    const/high16 v19, 0x41a0

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;->setTextSize(F)V

    .line 818
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 820
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mbActiveWordIndex:B

    move/from16 v19, v0

    move/from16 v0, v19

    if-ne v6, v0, :cond_1ac

    if-eqz v16, :cond_1ac

    .line 821
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mColorRecommended:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;->setTextColor(I)V

    .line 826
    :goto_93
    const v19, 0x7f020099

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;->setBackgroundResource(I)V

    .line 827
    sget v19, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->BTN_MIN_SIZE:I

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;->setMinWidth(I)V

    .line 828
    const/16 v19, 0x11

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;->setGravity(I)V

    .line 829
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mColorPress:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;->setHighlightColor(I)V

    .line 830
    sget v19, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->CANDIDATE_TEXTVIEW_PADDING:I

    const/16 v20, 0x0

    sget v21, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->CANDIDATE_TEXTVIEW_PADDING:I

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v15, v0, v1, v2, v3}, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;->setPadding(IIII)V

    .line 832
    invoke-virtual {v15}, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v9

    .line 834
    const/16 v19, 0x0

    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v9, v12, v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v19

    sget v20, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->CANDIDATE_TEXTVIEW_PADDING:I

    mul-int/lit8 v20, v20, 0x2

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    add-float v19, v19, v20

    sget v20, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->BTN_MIN_SIZE:I

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(FF)F

    move-result v14

    .line 835
    float-to-int v0, v14

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x0

    sget v20, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->BTN_MIN_SIZE:I

    add-int/lit8 v20, v20, 0x0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 837
    .local v17, wordWidth:I
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v5, v0, :cond_1c4

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->getContext()Landroid/content/Context;

    move-result-object v19

    check-cast v19, Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getFlagIsEditorAutoCompletion()Z

    move-result v19

    if-eqz v19, :cond_1c4

    .line 838
    if-eqz v11, :cond_1b9

    sget v19, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->CANDIDATEVIEW_WIDTH:I

    sget v20, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->PREV_NEXT_BTN_WIDTH:I

    sub-int v19, v19, v20

    :goto_116
    move/from16 v0, v17

    move/from16 v1, v19

    if-le v0, v1, :cond_186

    .line 839
    const/4 v7, 0x0

    .local v7, index:I
    :goto_11d
    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v19

    move/from16 v0, v19

    if-gt v7, v0, :cond_186

    .line 840
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 841
    const-string v19, "..."

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 842
    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v19

    move/from16 v0, v19

    invoke-interface {v12, v7, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 843
    const/16 v19, 0x0

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v9, v13, v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mDotLangth:F

    move/from16 v20, v0

    add-float v19, v19, v20

    sget v20, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->BTN_MIN_SIZE:I

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(FF)F

    move-result v14

    .line 844
    float-to-int v0, v14

    move/from16 v19, v0

    add-int/lit8 v17, v19, 0x0

    .line 846
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v20, v0

    if-eqz v11, :cond_1bd

    sget v19, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->CANDIDATEVIEW_WIDTH:I

    sget v21, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->PREV_NEXT_BTN_WIDTH:I

    sub-int v19, v19, v21

    :goto_175
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mDotLangth:F

    move/from16 v21, v0

    sub-float v19, v19, v21

    cmpg-float v19, v20, v19

    if-gez v19, :cond_1c0

    .line 889
    .end local v7           #index:I
    :cond_186
    invoke-virtual {v15, v13, v12, v6}, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;->setText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 890
    invoke-virtual {v4, v15, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 892
    add-int v18, v18, v17

    .line 812
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_4a

    .line 798
    .end local v6           #idx:I
    .end local v10           #params:Landroid/widget/LinearLayout$LayoutParams;
    .end local v12           #suggestion:Ljava/lang/CharSequence;
    .end local v13           #temp:Ljava/lang/StringBuilder;
    .end local v14           #textWidth:F
    .end local v17           #wordWidth:I
    :cond_192
    if-eqz v11, :cond_19a

    .line 799
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->createLayoutForPrevNext()Landroid/widget/LinearLayout;

    move-result-object v4

    goto/16 :goto_3b

    .line 800
    :cond_19a
    const/16 v19, 0x1

    move/from16 v0, v19

    if-gt v5, v0, :cond_1a6

    .line 801
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->createLayoutForOneLine()Landroid/widget/LinearLayout;

    move-result-object v4

    goto/16 :goto_3b

    .line 803
    :cond_1a6
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->createLayoutForScroll()Landroid/widget/LinearLayout;

    move-result-object v4

    goto/16 :goto_3b

    .line 823
    .restart local v6       #idx:I
    .restart local v10       #params:Landroid/widget/LinearLayout$LayoutParams;
    .restart local v12       #suggestion:Ljava/lang/CharSequence;
    .restart local v13       #temp:Ljava/lang/StringBuilder;
    .restart local v14       #textWidth:F
    :cond_1ac
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mColorNormal:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;->setTextColor(I)V

    goto/16 :goto_93

    .line 838
    .restart local v17       #wordWidth:I
    :cond_1b9
    sget v19, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->CANDIDATEVIEW_WIDTH:I

    goto/16 :goto_116

    .line 846
    .restart local v7       #index:I
    :cond_1bd
    sget v19, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->CANDIDATEVIEW_WIDTH:I

    goto :goto_175

    .line 839
    :cond_1c0
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_11d

    .line 852
    .end local v7           #index:I
    :cond_1c4
    add-int v20, v18, v17

    if-eqz v11, :cond_243

    sget v19, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->SCROLL_WIDTH:I

    sget v21, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->PREV_NEXT_BTN_WIDTH:I

    sub-int v19, v19, v21

    :goto_1ce
    move/from16 v0, v20

    move/from16 v1, v19

    if-le v0, v1, :cond_186

    .line 853
    if-nez v18, :cond_249

    .line 854
    const/4 v7, 0x0

    .restart local v7       #index:I
    :goto_1d7
    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v19

    move/from16 v0, v19

    if-gt v7, v0, :cond_186

    .line 855
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 856
    const-string v19, "..."

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 857
    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v19

    move/from16 v0, v19

    invoke-interface {v12, v7, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 858
    const/16 v19, 0x0

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v9, v13, v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mDotLangth:F

    move/from16 v20, v0

    add-float v19, v19, v20

    sget v20, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->BTN_MIN_SIZE:I

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(FF)F

    move-result v14

    .line 859
    float-to-int v0, v14

    move/from16 v19, v0

    add-int/lit8 v17, v19, 0x0

    .line 861
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v20, v0

    if-eqz v11, :cond_246

    sget v19, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->SCROLL_WIDTH:I

    sget v21, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->PREV_NEXT_BTN_WIDTH:I

    sub-int v19, v19, v21

    :goto_22f
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mDotLangth:F

    move/from16 v21, v0

    sub-float v19, v19, v21

    cmpg-float v19, v20, v19

    if-ltz v19, :cond_186

    .line 854
    add-int/lit8 v7, v7, 0x1

    goto :goto_1d7

    .line 852
    .end local v7           #index:I
    :cond_243
    sget v19, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->SCROLL_WIDTH:I

    goto :goto_1ce

    .line 861
    .restart local v7       #index:I
    :cond_246
    sget v19, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->SCROLL_WIDTH:I

    goto :goto_22f

    .line 866
    .end local v7           #index:I
    :cond_249
    const/16 v18, 0x0

    .line 867
    const/16 v19, 0x1

    move/from16 v0, v19

    if-le v5, v0, :cond_256

    .line 868
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->createLayoutForScroll()Landroid/widget/LinearLayout;

    move-result-object v4

    .line 869
    const/4 v8, 0x1

    .line 871
    :cond_256
    if-eqz v11, :cond_2d1

    sget v19, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->SCROLL_WIDTH:I

    sget v20, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->PREV_NEXT_BTN_WIDTH:I

    sub-int v19, v19, v20

    :goto_25e
    move/from16 v0, v17

    move/from16 v1, v19

    if-le v0, v1, :cond_186

    .line 872
    const/4 v7, 0x0

    .restart local v7       #index:I
    :goto_265
    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v19

    move/from16 v0, v19

    if-gt v7, v0, :cond_186

    .line 873
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 874
    const-string v19, "..."

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 875
    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v19

    move/from16 v0, v19

    invoke-interface {v12, v7, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 876
    const/16 v19, 0x0

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v9, v13, v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mDotLangth:F

    move/from16 v20, v0

    add-float v19, v19, v20

    sget v20, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->BTN_MIN_SIZE:I

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(FF)F

    move-result v14

    .line 877
    float-to-int v0, v14

    move/from16 v19, v0

    add-int/lit8 v17, v19, 0x0

    .line 879
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v20, v0

    if-eqz v11, :cond_2d4

    sget v19, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->SCROLL_WIDTH:I

    sget v21, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->PREV_NEXT_BTN_WIDTH:I

    sub-int v19, v19, v21

    :goto_2bd
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mDotLangth:F

    move/from16 v21, v0

    sub-float v19, v19, v21

    cmpg-float v19, v20, v19

    if-ltz v19, :cond_186

    .line 872
    add-int/lit8 v7, v7, 0x1

    goto :goto_265

    .line 871
    .end local v7           #index:I
    :cond_2d1
    sget v19, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->SCROLL_WIDTH:I

    goto :goto_25e

    .line 879
    .restart local v7       #index:I
    :cond_2d4
    sget v19, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->SCROLL_WIDTH:I

    goto :goto_2bd

    .line 894
    .end local v7           #index:I
    .end local v12           #suggestion:Ljava/lang/CharSequence;
    .end local v13           #temp:Ljava/lang/StringBuilder;
    .end local v17           #wordWidth:I
    :cond_2d7
    if-nez v8, :cond_30e

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->getContext()Landroid/content/Context;

    move-result-object v19

    check-cast v19, Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getFlagIsEditorAutoCompletion()Z

    move-result v19

    if-nez v19, :cond_2e7

    if-nez v5, :cond_30e

    .line 896
    :cond_2e7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mMoreBtn:Landroid/widget/Button;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Button;->setVisibility(I)V

    .line 902
    :goto_2f2
    if-eqz v11, :cond_3a4

    .line 903
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mNormalNextBtn:Landroid/widget/Button;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Button;->setVisibility(I)V

    .line 904
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mNormalPrevBtn:Landroid/widget/Button;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Button;->setVisibility(I)V

    .line 905
    packed-switch v11, :pswitch_data_3bc

    .line 931
    :goto_30d
    return-void

    .line 899
    :cond_30e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mMoreBtn:Landroid/widget/Button;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2f2

    .line 907
    :pswitch_31a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mNormalNextBtn:Landroid/widget/Button;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Button;->setEnabled(Z)V

    .line 908
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mNormalNextBtn:Landroid/widget/Button;

    move-object/from16 v19, v0

    const/16 v20, -0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Button;->setTextColor(I)V

    .line 909
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mNormalPrevBtn:Landroid/widget/Button;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Button;->setEnabled(Z)V

    .line 910
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mNormalPrevBtn:Landroid/widget/Button;

    move-object/from16 v19, v0

    const/16 v20, -0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_30d

    .line 913
    :pswitch_347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mNormalNextBtn:Landroid/widget/Button;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Button;->setEnabled(Z)V

    .line 914
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mNormalNextBtn:Landroid/widget/Button;

    move-object/from16 v19, v0

    const v20, -0x777778

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Button;->setTextColor(I)V

    .line 915
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mNormalPrevBtn:Landroid/widget/Button;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Button;->setEnabled(Z)V

    .line 916
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mNormalPrevBtn:Landroid/widget/Button;

    move-object/from16 v19, v0

    const/16 v20, -0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_30d

    .line 919
    :pswitch_375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mNormalNextBtn:Landroid/widget/Button;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Button;->setEnabled(Z)V

    .line 920
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mNormalNextBtn:Landroid/widget/Button;

    move-object/from16 v19, v0

    const/16 v20, -0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Button;->setTextColor(I)V

    .line 921
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mNormalPrevBtn:Landroid/widget/Button;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Button;->setEnabled(Z)V

    .line 922
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mNormalPrevBtn:Landroid/widget/Button;

    move-object/from16 v19, v0

    const v20, -0x777778

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Button;->setTextColor(I)V

    goto/16 :goto_30d

    .line 928
    :cond_3a4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mNormalNextBtn:Landroid/widget/Button;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Button;->setVisibility(I)V

    .line 929
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mNormalPrevBtn:Landroid/widget/Button;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_30d

    .line 905
    :pswitch_data_3bc
    .packed-switch 0x7
        :pswitch_31a
        :pswitch_347
        :pswitch_375
    .end packed-switch
.end method


# virtual methods
.method public clear()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 741
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mViewManager:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->setCandidateMode(I)V

    .line 742
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->setVisibility(I)V

    .line 743
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->invalidate()V

    .line 744
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->requestLayout()V

    .line 745
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mHwrIsExpand:Z

    .line 746
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 16
    .parameter "canvas"

    .prologue
    .line 1346
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1347
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mPaint:Landroid/graphics/Paint;

    .line 1348
    .local v3, paint:Landroid/graphics/Paint;
    const/4 v7, 0x0

    .line 1349
    .local v7, x:I
    const/4 v8, 0x0

    .line 1350
    .local v8, y:I
    const/4 v1, 0x0

    .line 1351
    .local v1, measuredTextWidth:I
    const/4 v5, 0x0

    .line 1352
    .local v5, textWidth:F
    iget-object v9, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v9}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentPrivateImeOptionPrevNext()I

    move-result v4

    .line 1354
    .local v4, prevNextCode:I
    if-eqz p1, :cond_b4

    iget-boolean v9, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mIsDown:Z

    if-eqz v9, :cond_b4

    iget-object v9, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mSuggestionList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    iget v10, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mSelectedButton:I

    if-le v9, v10, :cond_b4

    iget v9, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mSelectedButton:I

    if-ltz v9, :cond_b4

    .line 1355
    iget-object v9, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mViewManager:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    invoke-virtual {v9}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->getCandidateMode()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_d9

    iget-boolean v9, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mIsDown:Z

    if-eqz v9, :cond_d9

    .line 1356
    iget v9, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mColorCandidatePress:I

    invoke-virtual {v3, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 1357
    const/high16 v9, 0x41f0

    invoke-virtual {v3, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1358
    const/4 v9, 0x1

    invoke-virtual {v3, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1359
    if-eqz v4, :cond_b5

    .line 1360
    sget v9, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->BTN_HWR_SIZE:I

    iget v10, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mSelectedButton:I

    mul-int/2addr v9, v10

    sget v10, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->PREV_NEXT_BTN_WIDTH:I

    add-int v7, v9, v10

    .line 1365
    :goto_49
    int-to-float v9, v7

    const/4 v10, 0x0

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1366
    iget-object v9, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mSelectionHighlight:Landroid/graphics/drawable/Drawable;

    const/4 v10, 0x0

    const/4 v11, 0x2

    sget v12, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->BTN_HWR_SIZE:I

    sget v13, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->ROW_HEIGHT:I

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1367
    iget-object v9, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mSelectionHighlight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1368
    neg-int v9, v7

    int-to-float v9, v9

    const/4 v10, 0x0

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1370
    iget-object v9, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mSuggestionList:Ljava/util/List;

    iget v10, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mSelectedButton:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v9

    float-to-int v1, v9

    .line 1371
    sget v9, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->ROW_HEIGHT:I

    int-to-float v9, v9

    iget-object v10, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v10}, Landroid/graphics/Paint;->getTextSize()F

    move-result v10

    sub-float/2addr v9, v10

    const/high16 v10, 0x4000

    div-float/2addr v9, v10

    iget-object v10, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v10}, Landroid/graphics/Paint;->ascent()F

    move-result v10

    sub-float/2addr v9, v10

    const/high16 v10, 0x3f80

    sub-float/2addr v9, v10

    float-to-int v8, v9

    .line 1373
    if-eqz v4, :cond_bc

    .line 1374
    iget-object v9, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mSuggestionList:Ljava/util/List;

    iget v10, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mSelectedButton:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    sget v10, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->BTN_HWR_SIZE:I

    iget v11, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mSelectedButton:I

    mul-int/2addr v10, v11

    sget v11, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->BTN_HWR_SIZE:I

    div-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    div-int/lit8 v11, v1, 0x2

    sub-int/2addr v10, v11

    sget v11, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->PREV_NEXT_BTN_WIDTH:I

    add-int/2addr v10, v11

    int-to-float v10, v10

    int-to-float v11, v8

    invoke-virtual {p1, v9, v10, v11, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1415
    :cond_b4
    :goto_b4
    return-void

    .line 1362
    :cond_b5
    sget v9, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->BTN_HWR_SIZE:I

    iget v10, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mSelectedButton:I

    mul-int v7, v9, v10

    goto :goto_49

    .line 1376
    :cond_bc
    iget-object v9, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mSuggestionList:Ljava/util/List;

    iget v10, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mSelectedButton:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    sget v10, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->BTN_HWR_SIZE:I

    iget v11, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mSelectedButton:I

    mul-int/2addr v10, v11

    sget v11, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->BTN_HWR_SIZE:I

    div-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    div-int/lit8 v11, v1, 0x2

    sub-int/2addr v10, v11

    int-to-float v10, v10

    int-to-float v11, v8

    invoke-virtual {p1, v9, v10, v11, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_b4

    .line 1380
    :cond_d9
    iget-boolean v9, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mIsDown:Z

    if-eqz v9, :cond_b4

    .line 1382
    const/high16 v9, 0x41f0

    invoke-virtual {v3, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1383
    const/4 v9, 0x1

    invoke-virtual {v3, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1384
    iget v9, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mColorCandidatePress:I

    invoke-virtual {v3, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 1385
    iget-boolean v9, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mScrolled:Z

    if-nez v9, :cond_b4

    .line 1386
    const/4 v0, 0x0

    .local v0, idx:I
    :goto_f0
    iget v9, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mSelectedButton:I

    if-ge v0, v9, :cond_16d

    .line 1387
    iget-object v9, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mSuggestionList:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    const/4 v11, 0x0

    iget-object v10, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mSuggestionList:Ljava/util/List;

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/CharSequence;

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v10

    invoke-virtual {v3, v9, v11, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v9

    sget v10, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->CANDIDATE_TEXTVIEW_PADDING:I

    mul-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    add-float/2addr v9, v10

    sget v10, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->BTN_MIN_SIZE:I

    int-to-float v10, v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 1388
    float-to-int v9, v5

    add-int/lit8 v9, v9, 0x0

    sget v10, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->BTN_MIN_SIZE:I

    add-int/lit8 v10, v10, 0x0

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1389
    .local v6, wordWidth:I
    add-int/2addr v7, v6

    .line 1390
    iget-object v9, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mSuggestionList:Ljava/util/List;

    add-int/lit8 v10, v0, 0x1

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    const/4 v11, 0x0

    iget-object v10, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mSuggestionList:Ljava/util/List;

    add-int/lit8 v12, v0, 0x1

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/CharSequence;

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v10

    invoke-virtual {v3, v9, v11, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v9

    sget v10, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->CANDIDATE_TEXTVIEW_PADDING:I

    mul-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    add-float/2addr v9, v10

    sget v10, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->BTN_MIN_SIZE:I

    int-to-float v10, v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 1391
    float-to-int v9, v5

    add-int/lit8 v9, v9, 0x0

    sget v10, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->BTN_MIN_SIZE:I

    add-int/lit8 v10, v10, 0x0

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1392
    .local v2, next_wordWidth:I
    add-int v10, v7, v2

    if-eqz v4, :cond_16a

    sget v9, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->SCROLL_WIDTH:I

    sget v11, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->PREV_NEXT_BTN_WIDTH:I

    sub-int/2addr v9, v11

    :goto_164
    if-le v10, v9, :cond_167

    .line 1393
    const/4 v7, 0x0

    .line 1386
    :cond_167
    add-int/lit8 v0, v0, 0x1

    goto :goto_f0

    .line 1392
    :cond_16a
    sget v9, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->SCROLL_WIDTH:I

    goto :goto_164

    .line 1396
    .end local v2           #next_wordWidth:I
    .end local v6           #wordWidth:I
    :cond_16d
    iget-object v9, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mSuggestionList:Ljava/util/List;

    iget v10, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mSelectedButton:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    const/4 v11, 0x0

    iget-object v10, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mSuggestionList:Ljava/util/List;

    iget v12, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mSelectedButton:I

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/CharSequence;

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v10

    invoke-virtual {v3, v9, v11, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v9

    sget v10, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->CANDIDATE_TEXTVIEW_PADDING:I

    mul-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    add-float/2addr v9, v10

    sget v10, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->BTN_MIN_SIZE:I

    int-to-float v10, v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 1397
    float-to-int v9, v5

    add-int/lit8 v9, v9, 0x0

    sget v10, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->BTN_MIN_SIZE:I

    add-int/lit8 v10, v10, 0x0

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1398
    .restart local v6       #wordWidth:I
    if-eqz v4, :cond_1a7

    .line 1399
    sget v9, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->PREV_NEXT_BTN_WIDTH:I

    add-int/2addr v7, v9

    .line 1402
    :cond_1a7
    int-to-float v9, v7

    const/4 v10, 0x0

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1403
    iget-object v9, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mSelectionHighlight:Landroid/graphics/drawable/Drawable;

    const/4 v10, 0x0

    const/4 v11, 0x2

    sget v12, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->ROW_HEIGHT:I

    invoke-virtual {v9, v10, v11, v6, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1404
    iget-object v9, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mSelectionHighlight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1405
    neg-int v9, v7

    int-to-float v9, v9

    const/4 v10, 0x0

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1407
    iget-object v9, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mSuggestionList:Ljava/util/List;

    iget v10, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mSelectedButton:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v9

    float-to-int v1, v9

    .line 1408
    sget v9, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->ROW_HEIGHT:I

    int-to-float v9, v9

    iget-object v10, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v10}, Landroid/graphics/Paint;->getTextSize()F

    move-result v10

    sub-float/2addr v9, v10

    const/high16 v10, 0x4000

    div-float/2addr v9, v10

    iget-object v10, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v10}, Landroid/graphics/Paint;->ascent()F

    move-result v10

    sub-float/2addr v9, v10

    const/high16 v10, 0x3f80

    sub-float/2addr v9, v10

    float-to-int v8, v9

    .line 1409
    iget-object v9, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mSuggestionList:Ljava/util/List;

    iget v10, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mSelectedButton:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    div-int/lit8 v10, v6, 0x2

    add-int/2addr v10, v7

    div-int/lit8 v11, v1, 0x2

    sub-int/2addr v10, v11

    int-to-float v10, v10

    int-to-float v11, v8

    invoke-virtual {p1, v9, v10, v11, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_b4
.end method

.method protected freeVariables()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 1327
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mViewManager:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    .line 1329
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateView:[Landroid/widget/LinearLayout;

    .line 1330
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateViewNormal:Landroid/widget/LinearLayout;

    .line 1331
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateViewExpand:Landroid/widget/LinearLayout;

    .line 1332
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 1334
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mSuggestionList:Ljava/util/List;

    .line 1336
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mGestureDetector:Landroid/view/GestureDetector;

    .line 1339
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mFaceDroidSans:Landroid/graphics/Typeface;

    .line 1341
    return-void
.end method

.method public initDimens()V
    .registers 4

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 181
    .local v0, r:Landroid/content/res/Resources;
    if-eqz v0, :cond_85

    .line 182
    const v1, 0x7f080046

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EXPAND_BTN_LEFT_MARGIN:I

    .line 183
    const v1, 0x7f080047

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EXPAND_BTN_RIGHT_MARGIN:I

    .line 184
    const v1, 0x7f080048

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EXPAND_BTN_TOP_MARGIN:I

    .line 185
    const v1, 0x7f080049

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EXPAND_BTN_BOTTOM_MARGIN:I

    .line 186
    const v1, 0x7f08004a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EXPAND_BTN_WIDTH:I

    .line 187
    const v1, 0x7f080041

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->PADDING_RIGHT:I

    .line 188
    const v1, 0x7f080042

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->PADDING_RIGHT:I

    .line 189
    const v1, 0x7f080034

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->CANDIDATEVIEW_WIDTH:I

    .line 190
    sget v1, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->CANDIDATEVIEW_WIDTH:I

    sget v2, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EXPAND_BTN_WIDTH:I

    sub-int/2addr v1, v2

    sget v2, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EXPAND_BTN_LEFT_MARGIN:I

    sub-int/2addr v1, v2

    sget v2, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EXPAND_BTN_RIGHT_MARGIN:I

    sub-int/2addr v1, v2

    sget v2, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->PADDING_RIGHT:I

    sub-int/2addr v1, v2

    sput v1, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->SCROLL_WIDTH:I

    .line 197
    const v1, 0x7f08005a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sget v2, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EXPAND_BTN_LEFT_MARGIN:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sget v2, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EXPAND_BTN_RIGHT_MARGIN:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sput v1, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->PREV_NEXT_BTN_WIDTH:I

    .line 200
    const v1, 0x7f08003f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->ROW_HEIGHT:I

    .line 202
    const v1, 0x7f080052

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->BTN_HWR_SIZE:I

    .line 205
    :cond_85
    return-void
.end method

.method public initViews()V
    .registers 6

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 149
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->initDimens()V

    .line 151
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateView:[Landroid/widget/LinearLayout;

    if-nez v0, :cond_11

    .line 152
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateView:[Landroid/widget/LinearLayout;

    .line 154
    :cond_11
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->createNormalViews()V

    .line 155
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->createHwrViews()V

    .line 156
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->createExpandViews()V

    .line 158
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_23

    .line 159
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->removeAllViews()V

    .line 161
    :cond_23
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateView:[Landroid/widget/LinearLayout;

    aget-object v0, v0, v2

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 163
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateView:[Landroid/widget/LinearLayout;

    aget-object v0, v0, v3

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 165
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateView:[Landroid/widget/LinearLayout;

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->addView(Landroid/view/View;)V

    .line 166
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateView:[Landroid/widget/LinearLayout;

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->addView(Landroid/view/View;)V

    .line 168
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateView:[Landroid/widget/LinearLayout;

    aget-object v0, v0, v3

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->addView(Landroid/view/View;)V

    .line 170
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateViewNormal:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 171
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateViewExpand:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 173
    sget-object v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mSuggestionList:Ljava/util/List;

    .line 175
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mIsDown:Z

    .line 176
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 1322
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mViewManager:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    move-object v0, p1

    check-cast v0, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;->getIndex()I

    move-result v0

    check-cast p1, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;

    .end local p1
    invoke-virtual {p1}, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;->getSuggestion()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->pickSuggestionManually(ILjava/lang/CharSequence;)V

    .line 1324
    return-void
.end method

.method public setCandidateMode(I)V
    .registers 8
    .parameter "mode"

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 679
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateMode:I

    if-eq v1, p1, :cond_f

    .line 680
    if-eqz p1, :cond_10

    if-eq p1, v3, :cond_10

    if-eq p1, v4, :cond_10

    .line 738
    :cond_f
    :goto_f
    return-void

    .line 687
    :cond_10
    iput p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateMode:I

    .line 692
    const-string v0, ""

    .line 694
    .local v0, m:Ljava/lang/String;
    if-nez p1, :cond_66

    .line 695
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateView:[Landroid/widget/LinearLayout;

    aget-object v1, v1, v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 696
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateView:[Landroid/widget/LinearLayout;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->invalidate()V

    .line 697
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateView:[Landroid/widget/LinearLayout;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 699
    const-string v0, "MODE_NORMAL"

    .line 704
    :goto_2d
    if-ne p1, v3, :cond_6e

    .line 705
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateView:[Landroid/widget/LinearLayout;

    aget-object v1, v1, v3

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 706
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateView:[Landroid/widget/LinearLayout;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->invalidate()V

    .line 707
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateView:[Landroid/widget/LinearLayout;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 709
    const-string v0, "MODE_EXPAND"

    .line 714
    :goto_46
    if-ne p1, v4, :cond_76

    .line 716
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateView:[Landroid/widget/LinearLayout;

    aget-object v1, v1, v4

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 717
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateView:[Landroid/widget/LinearLayout;

    aget-object v1, v1, v4

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->invalidate()V

    .line 718
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateView:[Landroid/widget/LinearLayout;

    aget-object v1, v1, v4

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 720
    const-string v0, "MODE_HWR"

    .line 736
    :goto_5f
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->invalidate()V

    .line 737
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->requestLayout()V

    goto :goto_f

    .line 701
    :cond_66
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateView:[Landroid/widget/LinearLayout;

    aget-object v1, v1, v2

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2d

    .line 711
    :cond_6e
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateView:[Landroid/widget/LinearLayout;

    aget-object v1, v1, v3

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_46

    .line 722
    :cond_76
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateView:[Landroid/widget/LinearLayout;

    aget-object v1, v1, v4

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_5f
.end method

.method public setSuggestions(Ljava/util/List;ZZB)V
    .registers 8
    .parameter
    .parameter "completions"
    .parameter "typedWordValid"
    .parameter "bActiveWordIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;ZZB)V"
        }
    .end annotation

    .prologue
    .line 751
    .local p1, suggestions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    if-eqz p1, :cond_23

    .line 752
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mSuggestionList:Ljava/util/List;

    .line 757
    :goto_9
    iput-boolean p3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mTypedWordValid:Z

    .line 758
    iput-byte p4, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mbActiveWordIndex:B

    .line 759
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateMode:I

    packed-switch v0, :pswitch_data_30

    .line 774
    :goto_12
    :pswitch_12
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateViewNormal:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->getScrollY()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->scrollTo(II)V

    .line 776
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->invalidate()V

    .line 777
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->requestLayout()V

    .line 778
    return-void

    .line 754
    :cond_23
    sget-object v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mSuggestionList:Ljava/util/List;

    goto :goto_9

    .line 761
    :pswitch_28
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->displayNormal()V

    goto :goto_12

    .line 768
    :pswitch_2c
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->displayHwr()V

    goto :goto_12

    .line 759
    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_28
        :pswitch_12
        :pswitch_2c
    .end packed-switch
.end method

.method public setViewManager(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;)V
    .registers 2
    .parameter "manager"

    .prologue
    .line 675
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mViewManager:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    .line 676
    return-void
.end method
