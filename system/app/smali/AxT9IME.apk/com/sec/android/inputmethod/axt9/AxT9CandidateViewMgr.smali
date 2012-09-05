.class public Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;
.super Landroid/widget/LinearLayout;
.source "AxT9CandidateViewMgr.java"


# static fields
.field public static CANDIDATE_TEXTVIEW_MIN_WIDTH:I

.field public static CANDIDATE_TEXTVIEW_PADDING:I

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

.field public static EXPAND_TEXTVIEW_HEIGHT:I

.field public static POPUP_EXPAND_HEIGHT:I

.field public static POPUP_EXPAND_YPOS:I

.field public static POPUP_HEIGHT:I

.field public static POPUP_HWR_EXPAND_HEIGHT:I

.field public static POPUP_HWR_EXPAND_YPOS:I

.field public static POPUP_HWR_HEIGHT:I

.field public static POPUP_HWR_YPOS:I

.field public static POPUP_WIDTH:I

.field public static POPUP_XPOS:I

.field public static POPUP_YPOS:I


# instance fields
.field private mCandidateMode:I

.field private mCandidates:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

.field private mCandidatesExpand:Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;

.field private mExpandWindow:Landroid/widget/PopupWindow;

.field private mService:Lcom/sec/android/inputmethod/axt9/AxT9IME;

.field private mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

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


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->EMPTY_LIST:Ljava/util/List;

    .line 54
    sput v1, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->EXPAND_TEXTVIEW_HEIGHT:I

    .line 55
    sput v1, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->CANDIDATE_TEXTVIEW_PADDING:I

    .line 56
    sput v1, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->CANDIDATE_TEXTVIEW_MIN_WIDTH:I

    .line 58
    sput v1, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->POPUP_WIDTH:I

    .line 59
    sput v1, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->POPUP_HEIGHT:I

    .line 60
    sput v1, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->POPUP_EXPAND_HEIGHT:I

    .line 61
    sput v1, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->POPUP_HWR_HEIGHT:I

    .line 62
    sput v1, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->POPUP_HWR_EXPAND_HEIGHT:I

    .line 63
    sput v1, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->POPUP_XPOS:I

    .line 64
    sput v1, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->POPUP_YPOS:I

    .line 65
    sput v1, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->POPUP_EXPAND_YPOS:I

    .line 66
    sput v1, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->POPUP_HWR_YPOS:I

    .line 67
    sput v1, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->POPUP_HWR_EXPAND_YPOS:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 41
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->mService:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    .line 42
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    .line 44
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->mCandidates:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    .line 45
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->mCandidatesExpand:Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->mCandidateMode:I

    .line 50
    sget-object v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->mSuggestionList:Ljava/util/List;

    .line 52
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->mExpandWindow:Landroid/widget/PopupWindow;

    .line 71
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->initVariables()V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->mService:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    .line 42
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    .line 44
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->mCandidates:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    .line 45
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->mCandidatesExpand:Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->mCandidateMode:I

    .line 50
    sget-object v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->mSuggestionList:Ljava/util/List;

    .line 52
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->mExpandWindow:Landroid/widget/PopupWindow;

    .line 76
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->initVariables()V

    .line 77
    return-void
.end method

.method private initVariables()V
    .registers 3

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 82
    .local v0, r:Landroid/content/res/Resources;
    if-eqz v0, :cond_38

    .line 83
    const v1, 0x7f080034

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->POPUP_WIDTH:I

    .line 92
    const v1, 0x7f08003b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->POPUP_EXPAND_YPOS:I

    .line 96
    const v1, 0x7f08003f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->EXPAND_TEXTVIEW_HEIGHT:I

    .line 97
    const v1, 0x7f08003e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->CANDIDATE_TEXTVIEW_PADDING:I

    .line 98
    const v1, 0x7f080040

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->CANDIDATE_TEXTVIEW_MIN_WIDTH:I

    .line 100
    :cond_38
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->mCandidates:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->clear()V

    .line 235
    return-void
.end method

.method public closeCandidateView()V
    .registers 3

    .prologue
    .line 281
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->dismissExpandPopup()V

    .line 282
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->mService:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setCandidatesViewShown(Z)V

    .line 283
    return-void
.end method

.method dismissExpandPopup()V
    .registers 2

    .prologue
    .line 270
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->mExpandWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->mExpandWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 271
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->mExpandWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 272
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->mService:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->invalidateInputView()V

    .line 274
    :cond_16
    return-void
.end method

.method protected freeVariables()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 103
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->mService:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    .line 104
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    .line 106
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->mSuggestionList:Ljava/util/List;

    .line 108
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->mExpandWindow:Landroid/widget/PopupWindow;

    .line 109
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->mCandidates:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    if-eqz v0, :cond_12

    .line 110
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->mCandidates:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->freeVariables()V

    .line 112
    :cond_12
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->mCandidates:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    .line 113
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->mCandidatesExpand:Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;

    if-eqz v0, :cond_1d

    .line 114
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->mCandidatesExpand:Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->freeVariables()V

    .line 116
    :cond_1d
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->mCandidatesExpand:Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;

    .line 117
    return-void
.end method

.method public getCandidateMode()I
    .registers 2

    .prologue
    .line 261
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->mCandidateMode:I

    return v0
.end method

.method public getSuggestionListNum()I
    .registers 3

    .prologue
    .line 148
    const/4 v0, 0x0

    .line 150
    .local v0, nResult:I
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->mSuggestionList:Ljava/util/List;

    if-eqz v1, :cond_b

    .line 151
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->mSuggestionList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 154
    :cond_b
    return v0
.end method

.method public initViews()V
    .registers 5

    .prologue
    .line 120
    sget-object v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->mSuggestionList:Ljava/util/List;

    .line 122
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->mCandidates:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    if-nez v0, :cond_23

    .line 123
    const v0, 0x7f070049

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->mCandidates:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    .line 124
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->mCandidates:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->initViews()V

    .line 125
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->mCandidates:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    invoke-virtual {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->setViewManager(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;)V

    .line 126
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->mCandidates:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->setCandidateMode(I)V

    .line 129
    :cond_23
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->mCandidatesExpand:Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;

    if-nez v0, :cond_62

    .line 132
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->mService:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030024

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->mCandidatesExpand:Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;

    .line 133
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->mCandidatesExpand:Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->initViews()V

    .line 134
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->mCandidatesExpand:Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;

    invoke-virtual {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->setViewManager(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;)V

    .line 136
    new-instance v2, Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->mCandidatesExpand:Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->mService:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isLandscapeMode()Z

    move-result v0

    if-eqz v0, :cond_63

    sget v0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->WINDOW_HEIGHT:I

    :goto_51
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->mService:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isLandscapeMode()Z

    move-result v1

    if-eqz v1, :cond_66

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->mService:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget v1, v1, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLandInputViewHeight:I

    :goto_5d
    invoke-direct {v2, v3, v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->mExpandWindow:Landroid/widget/PopupWindow;

    .line 140
    :cond_62
    return-void

    .line 136
    :cond_63
    sget v0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->WINDOW_WIDTH:I

    goto :goto_51

    :cond_66
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->mService:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget v1, v1, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mPortInputViewHeight:I

    goto :goto_5d
.end method

.method public isExpandCandidatesViewShown()Z
    .registers 2

    .prologue
    .line 308
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->mCandidatesExpand:Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->mCandidatesExpand:Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->isShown()Z

    move-result v0

    goto :goto_5
.end method

.method public onSizeChanged(IIII)V
    .registers 5
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 299
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 305
    return-void
.end method

.method public pickSuggestionManually(ILjava/lang/CharSequence;)V
    .registers 4
    .parameter "index"
    .parameter "suggestion"

    .prologue
    .line 265
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->mService:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->pickSuggestionManually(ILjava/lang/CharSequence;)V

    .line 267
    return-void
.end method

.method public setCandidateMode(I)V
    .registers 4
    .parameter "mode"

    .prologue
    .line 246
    iput p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->mCandidateMode:I

    .line 248
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->initVariables()V

    .line 250
    const/4 v0, 0x1

    if-ne p1, v0, :cond_14

    .line 251
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->mCandidatesExpand:Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->setVisibility(I)V

    .line 257
    :goto_e
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->mCandidates:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    invoke-virtual {v0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->setCandidateMode(I)V

    .line 258
    return-void

    .line 253
    :cond_14
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->dismissExpandPopup()V

    .line 254
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->mCandidatesExpand:Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->setVisibility(I)V

    goto :goto_e
.end method

.method public setService(Lcom/sec/android/inputmethod/axt9/AxT9IME;)V
    .registers 3
    .parameter "service"

    .prologue
    .line 143
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->mService:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    .line 144
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->mService:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getSipMgr()Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    .line 145
    return-void
.end method

.method public setSuggestions(Ljava/util/List;ZZB)V
    .registers 10
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
    .local p1, suggestions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 160
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->mService:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentPrivateImeOptionPrevNext()I

    move-result v1

    .line 162
    .local v1, prevNextCode:I
    if-eqz p1, :cond_4c

    .line 163
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->mSuggestionList:Ljava/util/List;

    .line 164
    invoke-virtual {p0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->setVisibility(I)V

    .line 174
    :goto_14
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->invalidate()V

    .line 175
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->requestLayout()V

    .line 177
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->mCandidates:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    if-nez v2, :cond_21

    .line 178
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->initViews()V

    .line 181
    :cond_21
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->mCandidates:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    if-eqz v2, :cond_4b

    .line 182
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->mCandidates:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    invoke-virtual {v2, v3}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->setVisibility(I)V

    .line 183
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->mCandidates:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->invalidate()V

    .line 184
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->mCandidates:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->requestLayout()V

    .line 186
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v0

    .line 188
    .local v0, inputMethod:I
    const/4 v2, 0x3

    if-eq v0, v2, :cond_42

    if-eq v0, v4, :cond_42

    const/4 v2, 0x5

    if-ne v0, v2, :cond_5e

    .line 191
    :cond_42
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->setCandidateMode(I)V

    .line 196
    :goto_46
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->mCandidates:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->setSuggestions(Ljava/util/List;ZZB)V

    .line 198
    .end local v0           #inputMethod:I
    :cond_4b
    return-void

    .line 165
    :cond_4c
    if-eqz v1, :cond_56

    .line 166
    sget-object v2, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->EMPTY_LIST:Ljava/util/List;

    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->mSuggestionList:Ljava/util/List;

    .line 167
    invoke-virtual {p0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->setVisibility(I)V

    goto :goto_14

    .line 169
    :cond_56
    sget-object v2, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->EMPTY_LIST:Ljava/util/List;

    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->mSuggestionList:Ljava/util/List;

    .line 170
    invoke-virtual {p0, v4}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->setVisibility(I)V

    goto :goto_14

    .line 193
    .restart local v0       #inputMethod:I
    :cond_5e
    invoke-virtual {p0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->setCandidateMode(I)V

    goto :goto_46
.end method

.method public setSuggestionsExpand(Ljava/util/List;ZZBII)V
    .registers 16
    .parameter
    .parameter "completions"
    .parameter "typedWordValid"
    .parameter "bActiveWordIndex"
    .parameter "mode"
    .parameter "displayedNum"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;ZZBII)V"
        }
    .end annotation

    .prologue
    .local p1, suggestions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    const/4 v8, 0x0

    .line 203
    const/4 v0, 0x1

    if-ne p5, v0, :cond_5c

    .line 204
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->getHeight()I

    move-result v6

    .line 206
    .local v6, height:I
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->mService:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isLandscapeMode()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 207
    sget v0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->WINDOW_WIDTH:I

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->mService:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentKeyboardHeight()I

    move-result v1

    sub-int v6, v0, v1

    .line 208
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->mService:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getWindow()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 209
    .local v7, inputHeight:I
    sget v0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->WINDOW_WIDTH:I

    sub-int/2addr v0, v7

    sub-int/2addr v6, v0

    .line 212
    .end local v7           #inputHeight:I
    :cond_30
    invoke-virtual {p0, p5}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->setCandidateMode(I)V

    .line 216
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->mCandidatesExpand:Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->setSuggestions(Ljava/util/List;ZZBI)V

    .line 217
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->mCandidatesExpand:Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;

    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->measure(II)V

    .line 219
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->mExpandWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->mCandidatesExpand:Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 220
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->mExpandWindow:Landroid/widget/PopupWindow;

    const/16 v1, 0x33

    invoke-virtual {v0, p0, v1, v8, v6}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 231
    .end local v6           #height:I
    :cond_5c
    return-void
.end method
