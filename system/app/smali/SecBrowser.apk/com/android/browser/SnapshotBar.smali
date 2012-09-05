.class public Lcom/android/browser/SnapshotBar;
.super Landroid/widget/LinearLayout;
.source "SnapshotBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mAnimRadius:F

.field private mBookmarks:Landroid/view/View;

.field private mDate:Landroid/widget/TextView;

.field private mDateAnimator:Landroid/view/ViewPropertyAnimator;

.field private mFavicon:Landroid/widget/ImageView;

.field private mHandler:Landroid/os/Handler;

.field private mIsAnimating:Z

.field private mOverflowMenu:Landroid/view/View;

.field private mTabSwitcher:Landroid/view/View;

.field private mTitle:Landroid/widget/TextView;

.field private mTitleAnimator:Landroid/view/ViewPropertyAnimator;

.field private mTitleBar:Lcom/android/browser/TitleBar;

.field private mToggleContainer:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 52
    const/high16 v0, 0x41a0

    iput v0, p0, Lcom/android/browser/SnapshotBar;->mAnimRadius:F

    .line 71
    new-instance v0, Lcom/android/browser/SnapshotBar$1;

    invoke-direct {v0, p0}, Lcom/android/browser/SnapshotBar$1;-><init>(Lcom/android/browser/SnapshotBar;)V

    iput-object v0, p0, Lcom/android/browser/SnapshotBar;->mHandler:Landroid/os/Handler;

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    const/high16 v0, 0x41a0

    iput v0, p0, Lcom/android/browser/SnapshotBar;->mAnimRadius:F

    .line 71
    new-instance v0, Lcom/android/browser/SnapshotBar$1;

    invoke-direct {v0, p0}, Lcom/android/browser/SnapshotBar$1;-><init>(Lcom/android/browser/SnapshotBar;)V

    iput-object v0, p0, Lcom/android/browser/SnapshotBar;->mHandler:Landroid/os/Handler;

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    const/high16 v0, 0x41a0

    iput v0, p0, Lcom/android/browser/SnapshotBar;->mAnimRadius:F

    .line 71
    new-instance v0, Lcom/android/browser/SnapshotBar$1;

    invoke-direct {v0, p0}, Lcom/android/browser/SnapshotBar$1;-><init>(Lcom/android/browser/SnapshotBar;)V

    iput-object v0, p0, Lcom/android/browser/SnapshotBar;->mHandler:Landroid/os/Handler;

    .line 64
    return-void
.end method

.method static synthetic access$002(Lcom/android/browser/SnapshotBar;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/android/browser/SnapshotBar;->mIsAnimating:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/browser/SnapshotBar;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/browser/SnapshotBar;->showTitle()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/browser/SnapshotBar;)Lcom/android/browser/TitleBar;
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/browser/SnapshotBar;->mTitleBar:Lcom/android/browser/TitleBar;

    return-object v0
.end method

.method private showDate()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 144
    iget-object v0, p0, Lcom/android/browser/SnapshotBar;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/android/browser/SnapshotBar;->mAnimRadius:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, -0x3d4c

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->rotationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/SnapshotBar;->mTitleAnimator:Landroid/view/ViewPropertyAnimator;

    .line 148
    iget-object v0, p0, Lcom/android/browser/SnapshotBar;->mDate:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->rotationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/SnapshotBar;->mDateAnimator:Landroid/view/ViewPropertyAnimator;

    .line 152
    return-void
.end method

.method private showTitle()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 155
    iget-object v0, p0, Lcom/android/browser/SnapshotBar;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->rotationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/SnapshotBar;->mTitleAnimator:Landroid/view/ViewPropertyAnimator;

    .line 159
    iget-object v0, p0, Lcom/android/browser/SnapshotBar;->mDate:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/android/browser/SnapshotBar;->mAnimRadius:F

    neg-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x42b4

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->rotationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/SnapshotBar;->mDateAnimator:Landroid/view/ViewPropertyAnimator;

    .line 163
    return-void
.end method


# virtual methods
.method public isAnimating()Z
    .registers 2

    .prologue
    .line 205
    iget-boolean v0, p0, Lcom/android/browser/SnapshotBar;->mIsAnimating:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    .line 167
    iget-object v2, p0, Lcom/android/browser/SnapshotBar;->mBookmarks:Landroid/view/View;

    if-ne v2, p1, :cond_10

    .line 168
    iget-object v2, p0, Lcom/android/browser/SnapshotBar;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v2}, Lcom/android/browser/TitleBar;->getUiController()Lcom/android/browser/UiController;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/browser/UiController;->bookmarksOrHistoryPicker(Z)V

    .line 183
    :cond_f
    :goto_f
    return-void

    .line 169
    :cond_10
    iget-object v2, p0, Lcom/android/browser/SnapshotBar;->mTabSwitcher:Landroid/view/View;

    if-ne v2, p1, :cond_20

    .line 170
    iget-object v2, p0, Lcom/android/browser/SnapshotBar;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v2}, Lcom/android/browser/TitleBar;->getUi()Lcom/android/browser/BaseUi;

    move-result-object v2

    check-cast v2, Lcom/android/browser/PhoneUi;

    invoke-virtual {v2}, Lcom/android/browser/PhoneUi;->toggleNavScreen()V

    goto :goto_f

    .line 171
    :cond_20
    iget-object v2, p0, Lcom/android/browser/SnapshotBar;->mOverflowMenu:Landroid/view/View;

    if-ne v2, p1, :cond_36

    .line 172
    iget-object v2, p0, Lcom/android/browser/SnapshotBar;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v2}, Lcom/android/browser/TitleBar;->getNavigationBar()Lcom/android/browser/NavigationBarBase;

    move-result-object v1

    .line 173
    .local v1, navBar:Lcom/android/browser/NavigationBarBase;
    instance-of v2, v1, Lcom/android/browser/NavigationBarPhone;

    if-eqz v2, :cond_f

    .line 174
    check-cast v1, Lcom/android/browser/NavigationBarPhone;

    .end local v1           #navBar:Lcom/android/browser/NavigationBarBase;
    iget-object v2, p0, Lcom/android/browser/SnapshotBar;->mOverflowMenu:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/android/browser/NavigationBarPhone;->showMenu(Landroid/view/View;)V

    goto :goto_f

    .line 176
    :cond_36
    iget-object v2, p0, Lcom/android/browser/SnapshotBar;->mToggleContainer:Landroid/view/View;

    if-ne v2, p1, :cond_f

    iget-boolean v2, p0, Lcom/android/browser/SnapshotBar;->mIsAnimating:Z

    if-nez v2, :cond_f

    .line 177
    iput-boolean v3, p0, Lcom/android/browser/SnapshotBar;->mIsAnimating:Z

    .line 178
    invoke-direct {p0}, Lcom/android/browser/SnapshotBar;->showDate()V

    .line 179
    iget-object v2, p0, Lcom/android/browser/SnapshotBar;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v2}, Lcom/android/browser/TitleBar;->getUi()Lcom/android/browser/BaseUi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/browser/BaseUi;->showTitleBar()V

    .line 180
    iget-object v2, p0, Lcom/android/browser/SnapshotBar;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 181
    .local v0, m:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/browser/SnapshotBar;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x5dc

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_f
.end method

.method protected onFinishInflate()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 84
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 85
    const v1, 0x7f0d0004

    invoke-virtual {p0, v1}, Lcom/android/browser/SnapshotBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/browser/SnapshotBar;->mFavicon:Landroid/widget/ImageView;

    .line 86
    const v1, 0x7f0d00ba

    invoke-virtual {p0, v1}, Lcom/android/browser/SnapshotBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/browser/SnapshotBar;->mDate:Landroid/widget/TextView;

    .line 87
    const v1, 0x7f0d0005

    invoke-virtual {p0, v1}, Lcom/android/browser/SnapshotBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/browser/SnapshotBar;->mTitle:Landroid/widget/TextView;

    .line 88
    const v1, 0x7f0d00e7

    invoke-virtual {p0, v1}, Lcom/android/browser/SnapshotBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/SnapshotBar;->mBookmarks:Landroid/view/View;

    .line 89
    const v1, 0x7f0d00dd

    invoke-virtual {p0, v1}, Lcom/android/browser/SnapshotBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/SnapshotBar;->mTabSwitcher:Landroid/view/View;

    .line 90
    const v1, 0x7f0d003b

    invoke-virtual {p0, v1}, Lcom/android/browser/SnapshotBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/SnapshotBar;->mOverflowMenu:Landroid/view/View;

    .line 91
    const v1, 0x7f0d00e8

    invoke-virtual {p0, v1}, Lcom/android/browser/SnapshotBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/SnapshotBar;->mToggleContainer:Landroid/view/View;

    .line 93
    iget-object v1, p0, Lcom/android/browser/SnapshotBar;->mBookmarks:Landroid/view/View;

    if-eqz v1, :cond_52

    .line 94
    iget-object v1, p0, Lcom/android/browser/SnapshotBar;->mBookmarks:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    :cond_52
    iget-object v1, p0, Lcom/android/browser/SnapshotBar;->mTabSwitcher:Landroid/view/View;

    if-eqz v1, :cond_5b

    .line 97
    iget-object v1, p0, Lcom/android/browser/SnapshotBar;->mTabSwitcher:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    :cond_5b
    iget-object v1, p0, Lcom/android/browser/SnapshotBar;->mToggleContainer:Landroid/view/View;

    if-eqz v1, :cond_67

    .line 100
    iget-object v1, p0, Lcom/android/browser/SnapshotBar;->mToggleContainer:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    invoke-virtual {p0}, Lcom/android/browser/SnapshotBar;->resetAnimation()V

    .line 104
    :cond_67
    iget-object v1, p0, Lcom/android/browser/SnapshotBar;->mOverflowMenu:Landroid/view/View;

    if-eqz v1, :cond_86

    .line 105
    iget-object v1, p0, Lcom/android/browser/SnapshotBar;->mOverflowMenu:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    invoke-virtual {p0}, Lcom/android/browser/SnapshotBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v1

    if-nez v1, :cond_87

    const/4 v0, 0x1

    .line 108
    .local v0, showMenu:Z
    :goto_7f
    iget-object v1, p0, Lcom/android/browser/SnapshotBar;->mOverflowMenu:Landroid/view/View;

    if-eqz v0, :cond_89

    :goto_83
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 110
    .end local v0           #showMenu:Z
    :cond_86
    return-void

    :cond_87
    move v0, v2

    .line 106
    goto :goto_7f

    .line 108
    .restart local v0       #showMenu:Z
    :cond_89
    const/16 v2, 0x8

    goto :goto_83
.end method

.method protected onLayout(ZIIII)V
    .registers 8
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 114
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 115
    iget-object v0, p0, Lcom/android/browser/SnapshotBar;->mToggleContainer:Landroid/view/View;

    if-eqz v0, :cond_13

    .line 116
    iget-object v0, p0, Lcom/android/browser/SnapshotBar;->mToggleContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/browser/SnapshotBar;->mAnimRadius:F

    .line 118
    :cond_13
    return-void
.end method

.method public onTabDataChanged(Lcom/android/browser/Tab;)V
    .registers 9
    .parameter "tab"

    .prologue
    .line 186
    invoke-virtual {p1}, Lcom/android/browser/Tab;->isSnapshot()Z

    move-result v3

    if-nez v3, :cond_7

    .line 197
    :goto_6
    return-void

    :cond_7
    move-object v1, p1

    .line 187
    check-cast v1, Lcom/android/browser/SnapshotTab;

    .line 188
    .local v1, snapshot:Lcom/android/browser/SnapshotTab;
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    .line 189
    .local v0, dateFormat:Ljava/text/DateFormat;
    iget-object v3, p0, Lcom/android/browser/SnapshotBar;->mDate:Landroid/widget/TextView;

    new-instance v4, Ljava/util/Date;

    invoke-virtual {v1}, Lcom/android/browser/SnapshotTab;->getDateCreated()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    invoke-virtual {v1}, Lcom/android/browser/SnapshotTab;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 191
    .local v2, title:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 192
    invoke-virtual {v1}, Lcom/android/browser/SnapshotTab;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/browser/UrlUtils;->stripUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 194
    :cond_33
    iget-object v3, p0, Lcom/android/browser/SnapshotBar;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/browser/SnapshotBar;->setFavicon(Landroid/graphics/Bitmap;)V

    .line 196
    invoke-virtual {p0}, Lcom/android/browser/SnapshotBar;->resetAnimation()V

    goto :goto_6
.end method

.method resetAnimation()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 121
    iget-object v0, p0, Lcom/android/browser/SnapshotBar;->mToggleContainer:Landroid/view/View;

    if-nez v0, :cond_7

    .line 141
    :goto_6
    return-void

    .line 125
    :cond_7
    iget-object v0, p0, Lcom/android/browser/SnapshotBar;->mTitleAnimator:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_12

    .line 126
    iget-object v0, p0, Lcom/android/browser/SnapshotBar;->mTitleAnimator:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 127
    iput-object v1, p0, Lcom/android/browser/SnapshotBar;->mTitleAnimator:Landroid/view/ViewPropertyAnimator;

    .line 129
    :cond_12
    iget-object v0, p0, Lcom/android/browser/SnapshotBar;->mDateAnimator:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_1d

    .line 130
    iget-object v0, p0, Lcom/android/browser/SnapshotBar;->mDateAnimator:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 131
    iput-object v1, p0, Lcom/android/browser/SnapshotBar;->mDateAnimator:Landroid/view/ViewPropertyAnimator;

    .line 133
    :cond_1d
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/SnapshotBar;->mIsAnimating:Z

    .line 134
    iget-object v0, p0, Lcom/android/browser/SnapshotBar;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 135
    iget-object v0, p0, Lcom/android/browser/SnapshotBar;->mTitle:Landroid/widget/TextView;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 136
    iget-object v0, p0, Lcom/android/browser/SnapshotBar;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 137
    iget-object v0, p0, Lcom/android/browser/SnapshotBar;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setRotationX(F)V

    .line 138
    iget-object v0, p0, Lcom/android/browser/SnapshotBar;->mDate:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 139
    iget-object v0, p0, Lcom/android/browser/SnapshotBar;->mDate:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/browser/SnapshotBar;->mAnimRadius:F

    neg-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 140
    iget-object v0, p0, Lcom/android/browser/SnapshotBar;->mDate:Landroid/widget/TextView;

    const/high16 v1, 0x42b4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setRotationX(F)V

    goto :goto_6
.end method

.method public setFavicon(Landroid/graphics/Bitmap;)V
    .registers 4
    .parameter "icon"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/browser/SnapshotBar;->mFavicon:Landroid/widget/ImageView;

    if-nez v0, :cond_5

    .line 202
    :goto_4
    return-void

    .line 201
    :cond_5
    iget-object v0, p0, Lcom/android/browser/SnapshotBar;->mFavicon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/browser/SnapshotBar;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v1}, Lcom/android/browser/TitleBar;->getUi()Lcom/android/browser/BaseUi;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/browser/BaseUi;->getFaviconDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4
.end method

.method public setTitleBar(Lcom/android/browser/TitleBar;)V
    .registers 3
    .parameter "titleBar"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/browser/SnapshotBar;->mTitleBar:Lcom/android/browser/TitleBar;

    .line 68
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/browser/SnapshotBar;->setFavicon(Landroid/graphics/Bitmap;)V

    .line 69
    return-void
.end method
