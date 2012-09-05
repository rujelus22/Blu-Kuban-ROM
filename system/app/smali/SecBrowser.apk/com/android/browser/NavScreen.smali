.class public Lcom/android/browser/NavScreen;
.super Landroid/widget/LinearLayout;
.source "NavScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;
.implements Lcom/android/browser/TabControl$OnThumbnailUpdatedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/NavScreen$TabAdapter;,
        Lcom/android/browser/NavScreen$LearnGestureListener;
    }
.end annotation


# instance fields
.field indicatorPressed:Z

.field isClosingTab:Z

.field isOpeningNewTab:Z

.field mActivity:Landroid/app/Activity;

.field mAdapter:Lcom/android/browser/NavScreen$TabAdapter;

.field private mCloseIconPressed:Z

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGestureListener:Lcom/android/browser/NavScreen$LearnGestureListener;

.field mNewTab_I:Landroid/widget/ImageButton;

.field private mNewWindowPressed:Z

.field mOrientation:I

.field private mPageCount:I

.field private mPageIndicatorView:Landroid/widget/LinearLayout;

.field private mPageIndicatorViewPressed:Z

.field private mPageTextView:[Landroid/widget/TextView;

.field mScroller:Lcom/android/browser/NavTabScroller;

.field mTabTitle:Landroid/widget/TextView;

.field private mTabTitleBar:Landroid/view/View;

.field mTabUrl:Landroid/widget/TextView;

.field mTabViews:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/browser/Tab;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mUi:Lcom/android/browser/PhoneUi;

.field mUiController:Lcom/android/browser/UiController;

.field private mWidth:I

.field private mnewincognitotabPressed:Z

.field mnewincognitotab_I:Landroid/widget/ImageButton;

.field tc:Lcom/android/browser/TabControl;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/android/browser/UiController;Lcom/android/browser/PhoneUi;)V
    .registers 5
    .parameter "activity"
    .parameter "ctl"
    .parameter "ui"

    .prologue
    const/4 v0, 0x0

    .line 116
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 102
    iput-boolean v0, p0, Lcom/android/browser/NavScreen;->mCloseIconPressed:Z

    .line 103
    iput-boolean v0, p0, Lcom/android/browser/NavScreen;->mNewWindowPressed:Z

    .line 104
    iput-boolean v0, p0, Lcom/android/browser/NavScreen;->mPageIndicatorViewPressed:Z

    .line 105
    iput-boolean v0, p0, Lcom/android/browser/NavScreen;->mnewincognitotabPressed:Z

    .line 109
    iput-boolean v0, p0, Lcom/android/browser/NavScreen;->indicatorPressed:Z

    .line 110
    iput-boolean v0, p0, Lcom/android/browser/NavScreen;->isOpeningNewTab:Z

    .line 111
    iput-boolean v0, p0, Lcom/android/browser/NavScreen;->isClosingTab:Z

    .line 117
    iput-object p1, p0, Lcom/android/browser/NavScreen;->mActivity:Landroid/app/Activity;

    .line 118
    iput-object p2, p0, Lcom/android/browser/NavScreen;->mUiController:Lcom/android/browser/UiController;

    .line 119
    iput-object p3, p0, Lcom/android/browser/NavScreen;->mUi:Lcom/android/browser/PhoneUi;

    .line 120
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/browser/NavScreen;->mOrientation:I

    .line 121
    invoke-direct {p0}, Lcom/android/browser/NavScreen;->init()V

    .line 122
    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/NavScreen;Lcom/android/browser/Tab;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/browser/NavScreen;->onCloseTab(Lcom/android/browser/Tab;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/browser/NavScreen;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget v0, p0, Lcom/android/browser/NavScreen;->mPageCount:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/browser/NavScreen;)Landroid/widget/LinearLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/browser/NavScreen;->mPageIndicatorView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/browser/NavScreen;)[Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/browser/NavScreen;->mPageTextView:[Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/browser/NavScreen;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/android/browser/NavScreen;->mPageIndicatorViewPressed:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/browser/NavScreen;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/android/browser/NavScreen;->mPageIndicatorViewPressed:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/browser/NavScreen;)Landroid/view/GestureDetector;
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/browser/NavScreen;->mGestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/browser/NavScreen;Lcom/android/browser/Tab;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/browser/NavScreen;->switchToTab(Lcom/android/browser/Tab;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/browser/NavScreen;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/browser/NavScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/browser/NavScreen;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/android/browser/NavScreen;->mCloseIconPressed:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/browser/NavScreen;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/android/browser/NavScreen;->mCloseIconPressed:Z

    return p1
.end method

.method private init()V
    .registers 6

    .prologue
    .line 168
    const-string v1, "Nav"

    const-string v2, "NavScreen init()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v1, p0, Lcom/android/browser/NavScreen;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04002d

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 170
    iget-object v1, p0, Lcom/android/browser/NavScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0190

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/browser/NavScreen;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 173
    invoke-virtual {p0}, Lcom/android/browser/NavScreen;->getmWidth()I

    move-result v1

    iput v1, p0, Lcom/android/browser/NavScreen;->mWidth:I

    .line 174
    const v1, 0x7f0d007a

    invoke-virtual {p0, v1}, Lcom/android/browser/NavScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/browser/NavScreen;->mNewTab_I:Landroid/widget/ImageButton;

    .line 175
    const v1, 0x7f0d007b

    invoke-virtual {p0, v1}, Lcom/android/browser/NavScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/browser/NavScreen;->mnewincognitotab_I:Landroid/widget/ImageButton;

    .line 176
    iget-object v1, p0, Lcom/android/browser/NavScreen;->mNewTab_I:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    iget-object v1, p0, Lcom/android/browser/NavScreen;->mnewincognitotab_I:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    const v1, 0x7f0d007c

    invoke-virtual {p0, v1}, Lcom/android/browser/NavScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/browser/NavTabScroller;

    iput-object v1, p0, Lcom/android/browser/NavScreen;->mScroller:Lcom/android/browser/NavTabScroller;

    .line 184
    const v1, 0x7f0d007e

    invoke-virtual {p0, v1}, Lcom/android/browser/NavScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/NavScreen;->mTabTitleBar:Landroid/view/View;

    .line 185
    const v1, 0x7f0d007f

    invoke-virtual {p0, v1}, Lcom/android/browser/NavScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/browser/NavScreen;->mTabTitle:Landroid/widget/TextView;

    .line 186
    const v1, 0x7f0d0080

    invoke-virtual {p0, v1}, Lcom/android/browser/NavScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/browser/NavScreen;->mTabUrl:Landroid/widget/TextView;

    .line 188
    iget-object v1, p0, Lcom/android/browser/NavScreen;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v1}, Lcom/android/browser/UiController;->getTabControl()Lcom/android/browser/TabControl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/NavScreen;->tc:Lcom/android/browser/TabControl;

    .line 190
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/browser/NavScreen;->tc:Lcom/android/browser/TabControl;

    invoke-virtual {v2}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/android/browser/NavScreen;->mTabViews:Ljava/util/HashMap;

    .line 191
    new-instance v1, Lcom/android/browser/NavScreen$TabAdapter;

    iget-object v2, p0, Lcom/android/browser/NavScreen;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/browser/NavScreen;->tc:Lcom/android/browser/TabControl;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/browser/NavScreen$TabAdapter;-><init>(Lcom/android/browser/NavScreen;Landroid/content/Context;Lcom/android/browser/TabControl;)V

    iput-object v1, p0, Lcom/android/browser/NavScreen;->mAdapter:Lcom/android/browser/NavScreen$TabAdapter;

    .line 196
    iget-object v1, p0, Lcom/android/browser/NavScreen;->mScroller:Lcom/android/browser/NavTabScroller;

    iget-object v2, p0, Lcom/android/browser/NavScreen;->mAdapter:Lcom/android/browser/NavScreen$TabAdapter;

    iget-object v3, p0, Lcom/android/browser/NavScreen;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v3}, Lcom/android/browser/UiController;->getTabControl()Lcom/android/browser/TabControl;

    move-result-object v3

    iget-object v4, p0, Lcom/android/browser/NavScreen;->mUi:Lcom/android/browser/PhoneUi;

    invoke-virtual {v4}, Lcom/android/browser/PhoneUi;->getActiveTab()Lcom/android/browser/Tab;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/browser/TabControl;->getTabPosition(Lcom/android/browser/Tab;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/browser/NavTabScroller;->setAdapter(Landroid/widget/BaseAdapter;I)V

    .line 198
    iget-object v1, p0, Lcom/android/browser/NavScreen;->mScroller:Lcom/android/browser/NavTabScroller;

    iget-object v2, p0, Lcom/android/browser/NavScreen;->tc:Lcom/android/browser/TabControl;

    invoke-virtual {v2}, Lcom/android/browser/TabControl;->getCurrentPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/browser/NavTabScroller;->setSelection(I)V

    .line 200
    iget-object v1, p0, Lcom/android/browser/NavScreen;->mScroller:Lcom/android/browser/NavTabScroller;

    new-instance v2, Lcom/android/browser/NavScreen$1;

    invoke-direct {v2, p0}, Lcom/android/browser/NavScreen$1;-><init>(Lcom/android/browser/NavScreen;)V

    invoke-virtual {v1, v2}, Lcom/android/browser/NavTabScroller;->setOnRemoveListener(Lcom/android/browser/NavTabScroller$OnRemoveListener;)V

    .line 208
    new-instance v1, Lcom/android/browser/NavScreen$LearnGestureListener;

    invoke-direct {v1, p0}, Lcom/android/browser/NavScreen$LearnGestureListener;-><init>(Lcom/android/browser/NavScreen;)V

    iput-object v1, p0, Lcom/android/browser/NavScreen;->mGestureListener:Lcom/android/browser/NavScreen$LearnGestureListener;

    .line 209
    new-instance v1, Landroid/view/GestureDetector;

    iget-object v2, p0, Lcom/android/browser/NavScreen;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/android/browser/NavScreen;->mGestureListener:Lcom/android/browser/NavScreen$LearnGestureListener;

    invoke-direct {v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/android/browser/NavScreen;->mGestureDetector:Landroid/view/GestureDetector;

    .line 210
    iget-object v1, p0, Lcom/android/browser/NavScreen;->mGestureListener:Lcom/android/browser/NavScreen$LearnGestureListener;

    invoke-virtual {v1, p0}, Lcom/android/browser/NavScreen$LearnGestureListener;->setContext(Lcom/android/browser/NavScreen;)V

    .line 212
    const v1, 0x7f0d007d

    invoke-virtual {p0, v1}, Lcom/android/browser/NavScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/browser/NavScreen;->mPageIndicatorView:Landroid/widget/LinearLayout;

    .line 213
    iget-object v1, p0, Lcom/android/browser/NavScreen;->tc:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v1

    iput v1, p0, Lcom/android/browser/NavScreen;->mPageCount:I

    .line 214
    iget v1, p0, Lcom/android/browser/NavScreen;->mPageCount:I

    new-array v1, v1, [Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/browser/NavScreen;->mPageTextView:[Landroid/widget/TextView;

    .line 216
    const/4 v0, 0x0

    .local v0, page:I
    :goto_f0
    iget v1, p0, Lcom/android/browser/NavScreen;->mPageCount:I

    if-ge v0, v1, :cond_135

    .line 218
    const-string v1, "Nav"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NavScreen init() new Textview page"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v1, p0, Lcom/android/browser/NavScreen;->mPageTextView:[Landroid/widget/TextView;

    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/browser/NavScreen;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    aput-object v2, v1, v0

    .line 220
    iget-object v1, p0, Lcom/android/browser/NavScreen;->mPageTextView:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    const/high16 v2, -0x100

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 221
    iget-object v1, p0, Lcom/android/browser/NavScreen;->mPageTextView:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 222
    iget-object v1, p0, Lcom/android/browser/NavScreen;->mPageTextView:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    const/high16 v2, 0x4170

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 216
    add-int/lit8 v0, v0, 0x1

    goto :goto_f0

    .line 225
    :cond_135
    iget-object v1, p0, Lcom/android/browser/NavScreen;->mScroller:Lcom/android/browser/NavTabScroller;

    new-instance v2, Lcom/android/browser/NavScreen$2;

    invoke-direct {v2, p0}, Lcom/android/browser/NavScreen$2;-><init>(Lcom/android/browser/NavScreen;)V

    invoke-virtual {v1, v2}, Lcom/android/browser/NavTabScroller;->setOnItemClickListener(Lcom/android/browser/SecBrowserAdapterView$OnItemClickListener;)V

    .line 239
    iget-object v1, p0, Lcom/android/browser/NavScreen;->mScroller:Lcom/android/browser/NavTabScroller;

    new-instance v2, Lcom/android/browser/NavScreen$3;

    invoke-direct {v2, p0}, Lcom/android/browser/NavScreen$3;-><init>(Lcom/android/browser/NavScreen;)V

    invoke-virtual {v1, v2}, Lcom/android/browser/NavTabScroller;->setOnItemSelectedListener(Lcom/android/browser/SecBrowserAdapterView$OnItemSelectedListener;)V

    .line 278
    iget-object v1, p0, Lcom/android/browser/NavScreen;->mPageIndicatorView:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/android/browser/NavScreen$4;

    invoke-direct {v2, p0}, Lcom/android/browser/NavScreen$4;-><init>(Lcom/android/browser/NavScreen;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 332
    return-void
.end method

.method private onCloseTab(Lcom/android/browser/Tab;)V
    .registers 4
    .parameter "tab"

    .prologue
    .line 386
    const-string v0, "Nav"

    const-string v1, "NavScreen onCloseTab()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    if-eqz p1, :cond_1e

    .line 388
    iget-object v0, p0, Lcom/android/browser/NavScreen;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v0}, Lcom/android/browser/UiController;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    if-ne p1, v0, :cond_1f

    .line 389
    iget-object v0, p0, Lcom/android/browser/NavScreen;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v0}, Lcom/android/browser/UiController;->closeCurrentTab()V

    .line 393
    :goto_16
    iget-object v0, p0, Lcom/android/browser/NavScreen;->mScroller:Lcom/android/browser/NavTabScroller;

    invoke-virtual {v0}, Lcom/android/browser/NavTabScroller;->handleDataChanged()V

    .line 394
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/NavScreen;->isClosingTab:Z

    .line 396
    :cond_1e
    return-void

    .line 391
    :cond_1f
    iget-object v0, p0, Lcom/android/browser/NavScreen;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v0, p1}, Lcom/android/browser/UiController;->closeTab(Lcom/android/browser/Tab;)V

    goto :goto_16
.end method

.method private openNewIncognitoTab()V
    .registers 5

    .prologue
    .line 421
    const-string v2, "Nav"

    const-string v3, "NavScreen openNewIncognitoTab()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    iget-object v2, p0, Lcom/android/browser/NavScreen;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v2}, Lcom/android/browser/UiController;->openIncognitoTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 425
    .local v0, tab:Lcom/android/browser/Tab;
    if-eqz v0, :cond_32

    .line 426
    iget-object v2, p0, Lcom/android/browser/NavScreen;->mUiController:Lcom/android/browser/UiController;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/android/browser/UiController;->setBlockEvents(Z)V

    .line 427
    iget-object v2, p0, Lcom/android/browser/NavScreen;->mUi:Lcom/android/browser/PhoneUi;

    iget-object v2, v2, Lcom/android/browser/BaseUi;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v2, v0}, Lcom/android/browser/TabControl;->getTabPosition(Lcom/android/browser/Tab;)I

    move-result v1

    .line 428
    .local v1, tix:I
    iget-object v2, p0, Lcom/android/browser/NavScreen;->mScroller:Lcom/android/browser/NavTabScroller;

    new-instance v3, Lcom/android/browser/NavScreen$6;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/browser/NavScreen$6;-><init>(Lcom/android/browser/NavScreen;ILcom/android/browser/Tab;)V

    invoke-virtual {v2, v3}, Lcom/android/browser/NavTabScroller;->setOnLayoutListener(Lcom/android/browser/NavTabScroller$OnLayoutListener;)V

    .line 437
    iget-object v2, p0, Lcom/android/browser/NavScreen;->mScroller:Lcom/android/browser/NavTabScroller;

    invoke-virtual {v2, v1}, Lcom/android/browser/NavTabScroller;->handleDataChanged(I)V

    .line 438
    iget-object v2, p0, Lcom/android/browser/NavScreen;->mUiController:Lcom/android/browser/UiController;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/browser/UiController;->setBlockEvents(Z)V

    .line 440
    .end local v1           #tix:I
    :cond_32
    return-void
.end method

.method private openNewTab()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 399
    const-string v2, "Nav"

    const-string v3, "NavScreen openNewTab()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    iget-object v2, p0, Lcom/android/browser/NavScreen;->mUiController:Lcom/android/browser/UiController;

    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/browser/BrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v4, v4, v4}, Lcom/android/browser/UiController;->openTab(Ljava/lang/String;ZZZ)Lcom/android/browser/Tab;

    move-result-object v0

    .line 403
    .local v0, tab:Lcom/android/browser/Tab;
    if-eqz v0, :cond_3a

    .line 404
    iget-object v2, p0, Lcom/android/browser/NavScreen;->mUiController:Lcom/android/browser/UiController;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/android/browser/UiController;->setBlockEvents(Z)V

    .line 405
    iget-object v2, p0, Lcom/android/browser/NavScreen;->mUi:Lcom/android/browser/PhoneUi;

    iget-object v2, v2, Lcom/android/browser/BaseUi;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v2, v0}, Lcom/android/browser/TabControl;->getTabPosition(Lcom/android/browser/Tab;)I

    move-result v1

    .line 406
    .local v1, tix:I
    iget-object v2, p0, Lcom/android/browser/NavScreen;->mScroller:Lcom/android/browser/NavTabScroller;

    new-instance v3, Lcom/android/browser/NavScreen$5;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/browser/NavScreen$5;-><init>(Lcom/android/browser/NavScreen;ILcom/android/browser/Tab;)V

    invoke-virtual {v2, v3}, Lcom/android/browser/NavTabScroller;->setOnLayoutListener(Lcom/android/browser/NavTabScroller$OnLayoutListener;)V

    .line 415
    iget-object v2, p0, Lcom/android/browser/NavScreen;->mScroller:Lcom/android/browser/NavTabScroller;

    invoke-virtual {v2, v1}, Lcom/android/browser/NavTabScroller;->handleDataChanged(I)V

    .line 416
    iget-object v2, p0, Lcom/android/browser/NavScreen;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v2, v4}, Lcom/android/browser/UiController;->setBlockEvents(Z)V

    .line 418
    .end local v1           #tix:I
    :cond_3a
    return-void
.end method

.method private switchToTab(Lcom/android/browser/Tab;)V
    .registers 3
    .parameter "tab"

    .prologue
    .line 444
    iget-object v0, p0, Lcom/android/browser/NavScreen;->mUi:Lcom/android/browser/PhoneUi;

    invoke-virtual {v0}, Lcom/android/browser/PhoneUi;->getActiveTab()Lcom/android/browser/Tab;

    move-result-object v0

    if-eq p1, v0, :cond_d

    .line 445
    iget-object v0, p0, Lcom/android/browser/NavScreen;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v0, p1}, Lcom/android/browser/UiController;->setActiveTab(Lcom/android/browser/Tab;)V

    .line 447
    :cond_d
    return-void
.end method


# virtual methods
.method protected close(I)V
    .registers 4
    .parameter "position"

    .prologue
    .line 451
    iget-object v0, p0, Lcom/android/browser/NavScreen;->tc:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_b

    .line 455
    :goto_a
    return-void

    .line 453
    :cond_b
    const-string v0, "Nav"

    const-string v1, "NavScreen close(int position)"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/browser/NavScreen;->close(IZ)V

    goto :goto_a
.end method

.method protected close(IZ)V
    .registers 5
    .parameter "position"
    .parameter "animate"

    .prologue
    .line 458
    const-string v0, "Nav"

    const-string v1, "NavScreen close(int position, boolean animate)"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    iget-object v0, p0, Lcom/android/browser/NavScreen;->mUi:Lcom/android/browser/PhoneUi;

    invoke-virtual {v0, p1, p2}, Lcom/android/browser/PhoneUi;->hideNavScreen(IZ)V

    .line 460
    return-void
.end method

.method protected getTabView(I)Lcom/android/browser/NavTabView;
    .registers 7
    .parameter "pos"

    .prologue
    .line 463
    const-string v3, "Nav"

    const-string v4, "NavScreen getTabView()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    iget-object v3, p0, Lcom/android/browser/NavScreen;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v0, v3, Landroid/content/res/Configuration;->orientation:I

    .line 466
    .local v0, orientation:I
    new-instance v2, Lcom/android/browser/NavTabView;

    iget-object v3, p0, Lcom/android/browser/NavScreen;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/browser/NavTabView;-><init>(Landroid/content/Context;)V

    .line 468
    .local v2, tabview:Lcom/android/browser/NavTabView;
    iget-object v3, p0, Lcom/android/browser/NavScreen;->mUi:Lcom/android/browser/PhoneUi;

    iget-object v3, v3, Lcom/android/browser/BaseUi;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v3, p1}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/Tab;

    move-result-object v1

    .line 469
    .local v1, tab:Lcom/android/browser/Tab;
    invoke-virtual {v2, v1, v0}, Lcom/android/browser/NavTabView;->setWebView(Lcom/android/browser/Tab;I)V

    .line 471
    return-object v2
.end method

.method protected getmWidth()I
    .registers 3

    .prologue
    .line 145
    const-string v0, "Nav"

    const-string v1, "NavScreen getmWidth()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v0, p0, Lcom/android/browser/NavScreen;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    .line 369
    const-string v0, "Nav"

    const-string v1, "NavScreen onClick()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    iget-boolean v0, p0, Lcom/android/browser/NavScreen;->isClosingTab:Z

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/android/browser/NavScreen;->tc:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 374
    iget-object v0, p0, Lcom/android/browser/NavScreen;->mnewincognitotab_I:Landroid/widget/ImageButton;

    if-ne v0, p1, :cond_1e

    .line 375
    invoke-direct {p0}, Lcom/android/browser/NavScreen;->openNewIncognitoTab()V

    .line 376
    iput-boolean v2, p0, Lcom/android/browser/NavScreen;->isOpeningNewTab:Z

    .line 383
    :cond_1d
    :goto_1d
    return-void

    .line 378
    :cond_1e
    iget-object v0, p0, Lcom/android/browser/NavScreen;->mNewTab_I:Landroid/widget/ImageButton;

    if-ne v0, p1, :cond_1d

    .line 379
    invoke-direct {p0}, Lcom/android/browser/NavScreen;->openNewTab()V

    .line 380
    iput-boolean v2, p0, Lcom/android/browser/NavScreen;->isOpeningNewTab:Z

    goto :goto_1d
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5
    .parameter "newconfig"

    .prologue
    .line 151
    const-string v1, "Nav"

    const-string v2, "NavScreen .onConfigurationChanged()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    iget v2, p0, Lcom/android/browser/NavScreen;->mOrientation:I

    if-eq v1, v2, :cond_27

    .line 153
    iget-object v1, p0, Lcom/android/browser/NavScreen;->mScroller:Lcom/android/browser/NavTabScroller;

    invoke-virtual {v1}, Lcom/android/browser/NavTabScroller;->getScrollValue()I

    move-result v0

    .line 154
    .local v0, sv:I
    invoke-virtual {p0}, Lcom/android/browser/NavScreen;->removeAllViews()V

    .line 155
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/android/browser/NavScreen;->mOrientation:I

    .line 156
    invoke-direct {p0}, Lcom/android/browser/NavScreen;->init()V

    .line 157
    iget-object v1, p0, Lcom/android/browser/NavScreen;->mScroller:Lcom/android/browser/NavTabScroller;

    invoke-virtual {v1, v0}, Lcom/android/browser/NavTabScroller;->setScrollValue(I)V

    .line 158
    iget-object v1, p0, Lcom/android/browser/NavScreen;->mAdapter:Lcom/android/browser/NavScreen$TabAdapter;

    invoke-virtual {v1}, Lcom/android/browser/NavScreen$TabAdapter;->notifyDataSetChanged()V

    .line 160
    .end local v0           #sv:I
    :cond_27
    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 5
    .parameter "item"

    .prologue
    .line 135
    const-string v0, "Nav"

    const-string v1, "NavScreen onMenuItemClick()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v0, p0, Lcom/android/browser/NavScreen;->mUi:Lcom/android/browser/PhoneUi;

    iget-object v1, p0, Lcom/android/browser/NavScreen;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v1}, Lcom/android/browser/UiController;->getTabControl()Lcom/android/browser/TabControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentPosition()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/PhoneUi;->hideNavScreen(IZ)V

    .line 137
    iget-object v0, p0, Lcom/android/browser/NavScreen;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v0, p1}, Lcom/android/browser/UiController;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onThumbnailUpdated(Lcom/android/browser/Tab;)V
    .registers 5
    .parameter "t"

    .prologue
    .line 705
    const-string v1, "Nav"

    const-string v2, "NavScreen :TabAdapter onThumbnailUpdated()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    iget-object v1, p0, Lcom/android/browser/NavScreen;->mTabViews:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 707
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_14

    .line 708
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 710
    :cond_14
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "event"

    .prologue
    .line 487
    const-string v0, "Nav"

    const-string v1, "NavScreen onTouchEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    iget-object v0, p0, Lcom/android/browser/NavScreen;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 489
    const/4 v0, 0x1

    .line 491
    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public setscrollToChild(II)Z
    .registers 10
    .parameter "newselectedPage"
    .parameter "selectedPage"

    .prologue
    const/4 v3, 0x1

    .line 336
    const/4 v2, 0x0

    .line 337
    .local v2, scrollValue:I
    const/4 v0, 0x0

    .line 338
    .local v0, FirstPosition:I
    const/4 v1, 0x0

    .line 340
    .local v1, i:I
    const-string v4, "Nav"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NavScreen :setscrollToChild newselectedPage = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " selectedPage ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mNextSelectedPosition = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/browser/NavScreen;->mScroller:Lcom/android/browser/NavTabScroller;

    invoke-virtual {v6}, Lcom/android/browser/NavTabScroller;->getSelectedItemPosition()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    if-le p1, p2, :cond_4a

    .line 343
    sub-int v2, p1, p2

    .line 345
    if-le v2, v3, :cond_43

    .line 346
    iget-object v3, p0, Lcom/android/browser/NavScreen;->mScroller:Lcom/android/browser/NavTabScroller;

    invoke-virtual {v3, v2}, Lcom/android/browser/NavTabScroller;->moveselectedNext(I)Z

    move-result v3

    .line 363
    :cond_42
    :goto_42
    return v3

    .line 348
    :cond_43
    iget-object v3, p0, Lcom/android/browser/NavScreen;->mScroller:Lcom/android/browser/NavTabScroller;

    invoke-virtual {v3}, Lcom/android/browser/NavTabScroller;->moveNext()Z

    move-result v3

    goto :goto_42

    .line 350
    :cond_4a
    if-ge p1, p2, :cond_42

    .line 352
    sub-int v2, p2, p1

    .line 354
    if-le v2, v3, :cond_57

    .line 355
    iget-object v3, p0, Lcom/android/browser/NavScreen;->mScroller:Lcom/android/browser/NavTabScroller;

    invoke-virtual {v3, v2}, Lcom/android/browser/NavTabScroller;->moveselectedPrevious(I)Z

    move-result v3

    goto :goto_42

    .line 357
    :cond_57
    iget-object v3, p0, Lcom/android/browser/NavScreen;->mScroller:Lcom/android/browser/NavTabScroller;

    invoke-virtual {v3}, Lcom/android/browser/NavTabScroller;->movePrevious()Z

    move-result v3

    goto :goto_42
.end method
