.class public Lcom/android/browser/NavigationBarTablet;
.super Lcom/android/browser/NavigationBarBase;
.source "NavigationBarTablet.java"


# instance fields
.field private mAllButton:Landroid/view/View;

.field private mBackButton:Landroid/widget/ImageButton;

.field private mClearButton:Landroid/view/View;

.field private mFaviconDrawable:Landroid/graphics/drawable/Drawable;

.field private mFocusDrawable:Landroid/graphics/drawable/Drawable;

.field private mForwardButton:Landroid/widget/ImageButton;

.field private mGoButton:Landroid/view/View;

.field private mHideNavButtons:Z

.field private mIsBookmark:Z

.field private mNavButtons:Landroid/view/View;

.field private mRefreshDescription:Ljava/lang/String;

.field private mReloadDrawable:Landroid/graphics/drawable/Drawable;

.field private mSearchButton:Landroid/widget/ImageView;

.field private mStar:Landroid/widget/ImageView;

.field private mStopButton:Landroid/widget/ImageView;

.field private mStopDescription:Ljava/lang/String;

.field private mStopDrawable:Landroid/graphics/drawable/Drawable;

.field private mUnfocusDrawable:Landroid/graphics/drawable/Drawable;

.field private mUrlContainer:Landroid/view/View;

.field private mUrlIcon:Landroid/widget/ImageView;

.field private mVoiceSearch:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/browser/NavigationBarBase;-><init>(Landroid/content/Context;)V

    .line 66
    invoke-direct {p0, p1}, Lcom/android/browser/NavigationBarTablet;->init(Landroid/content/Context;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Lcom/android/browser/NavigationBarBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    invoke-direct {p0, p1}, Lcom/android/browser/NavigationBarTablet;->init(Landroid/content/Context;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 75
    invoke-direct {p0, p1, p2, p3}, Lcom/android/browser/NavigationBarBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    invoke-direct {p0, p1}, Lcom/android/browser/NavigationBarTablet;->init(Landroid/content/Context;)V

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/NavigationBarTablet;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/browser/NavigationBarTablet;->mNavButtons:Landroid/view/View;

    return-object v0
.end method

.method private clearOrClose()V
    .registers 3

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/browser/NavigationBarBase;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v0}, Lcom/android/browser/UrlInputView;->getUserText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 207
    iget-object v0, p0, Lcom/android/browser/NavigationBarBase;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v0}, Lcom/android/browser/UrlInputView;->clearFocus()V

    .line 212
    :goto_11
    return-void

    .line 210
    :cond_12
    iget-object v0, p0, Lcom/android/browser/NavigationBarBase;->mUrlInput:Lcom/android/browser/UrlInputView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/browser/UrlInputView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_11
.end method

.method private hideNavButtons()V
    .registers 13

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x2

    .line 310
    iget-object v5, p0, Lcom/android/browser/NavigationBarTablet;->mNavButtons:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 311
    .local v3, awidth:I
    iget-object v5, p0, Lcom/android/browser/NavigationBarTablet;->mNavButtons:Landroid/view/View;

    sget-object v6, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v7, v9, [F

    const/4 v8, 0x0

    aput v8, v7, v10

    neg-int v8, v3

    int-to-float v8, v8

    aput v8, v7, v11

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 312
    .local v0, anim1:Landroid/animation/Animator;
    iget-object v5, p0, Lcom/android/browser/NavigationBarTablet;->mUrlContainer:Landroid/view/View;

    const-string v6, "left"

    new-array v7, v9, [I

    iget-object v8, p0, Lcom/android/browser/NavigationBarTablet;->mUrlContainer:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v8

    aput v8, v7, v10

    iget-object v8, p0, Lcom/android/browser/NavigationBarTablet;->mUrlContainer:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getPaddingLeft()I

    move-result v8

    aput v8, v7, v11

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 314
    .local v1, anim2:Landroid/animation/Animator;
    iget-object v5, p0, Lcom/android/browser/NavigationBarTablet;->mNavButtons:Landroid/view/View;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v9, [F

    fill-array-data v7, :array_64

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 315
    .local v2, anim3:Landroid/animation/Animator;
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 316
    .local v4, combo:Landroid/animation/AnimatorSet;
    const/4 v5, 0x3

    new-array v5, v5, [Landroid/animation/Animator;

    aput-object v0, v5, v10

    aput-object v1, v5, v11

    aput-object v2, v5, v9

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 317
    new-instance v5, Lcom/android/browser/NavigationBarTablet$1;

    invoke-direct {v5, p0}, Lcom/android/browser/NavigationBarTablet$1;-><init>(Lcom/android/browser/NavigationBarTablet;)V

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 323
    const-wide/16 v5, 0x96

    invoke-virtual {v4, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 324
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    .line 325
    return-void

    .line 314
    nop

    :array_64
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private init(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 81
    .local v0, resources:Landroid/content/res/Resources;
    const v1, 0x7f020088

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/NavigationBarTablet;->mStopDrawable:Landroid/graphics/drawable/Drawable;

    .line 82
    const v1, 0x7f02007c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/NavigationBarTablet;->mReloadDrawable:Landroid/graphics/drawable/Drawable;

    .line 83
    const v1, 0x7f0c0181

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/NavigationBarTablet;->mStopDescription:Ljava/lang/String;

    .line 84
    const v1, 0x7f0c0180

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/NavigationBarTablet;->mRefreshDescription:Ljava/lang/String;

    .line 85
    const v1, 0x7f0200ae

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/NavigationBarTablet;->mFocusDrawable:Landroid/graphics/drawable/Drawable;

    .line 87
    const v1, 0x7f0200af

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/NavigationBarTablet;->mUnfocusDrawable:Landroid/graphics/drawable/Drawable;

    .line 89
    const v1, 0x7f090001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/browser/NavigationBarTablet;->mHideNavButtons:Z

    .line 90
    return-void
.end method

.method private showNavButtons()V
    .registers 13

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x2

    const/4 v9, 0x0

    .line 328
    iget-object v5, p0, Lcom/android/browser/NavigationBarTablet;->mNavButtons:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 329
    .local v3, awidth:I
    iget-object v5, p0, Lcom/android/browser/NavigationBarTablet;->mNavButtons:Landroid/view/View;

    sget-object v6, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v7, v10, [F

    neg-int v8, v3

    int-to-float v8, v8

    aput v8, v7, v9

    const/4 v8, 0x0

    aput v8, v7, v11

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 330
    .local v0, anim1:Landroid/animation/Animator;
    iget-object v5, p0, Lcom/android/browser/NavigationBarTablet;->mUrlContainer:Landroid/view/View;

    const-string v6, "left"

    new-array v7, v10, [I

    aput v9, v7, v9

    aput v3, v7, v11

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 331
    .local v1, anim2:Landroid/animation/Animator;
    iget-object v5, p0, Lcom/android/browser/NavigationBarTablet;->mNavButtons:Landroid/view/View;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v10, [F

    fill-array-data v7, :array_54

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 332
    .local v2, anim3:Landroid/animation/Animator;
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 333
    .local v4, combo:Landroid/animation/AnimatorSet;
    const/4 v5, 0x3

    new-array v5, v5, [Landroid/animation/Animator;

    aput-object v0, v5, v9

    aput-object v1, v5, v11

    aput-object v2, v5, v10

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 334
    iget-object v5, p0, Lcom/android/browser/NavigationBarTablet;->mNavButtons:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 335
    const-wide/16 v5, 0x96

    invoke-virtual {v4, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 336
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    .line 337
    return-void

    .line 331
    :array_54
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private stopOrRefresh()V
    .registers 2

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/browser/NavigationBarBase;->mUiController:Lcom/android/browser/UiController;

    if-nez v0, :cond_5

    .line 273
    :goto_4
    return-void

    .line 268
    :cond_5
    iget-object v0, p0, Lcom/android/browser/NavigationBarBase;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0}, Lcom/android/browser/TitleBar;->isInLoad()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 269
    iget-object v0, p0, Lcom/android/browser/NavigationBarBase;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v0}, Lcom/android/browser/UiController;->stopLoading()V

    goto :goto_4

    .line 271
    :cond_13
    iget-object v0, p0, Lcom/android/browser/NavigationBarBase;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v0}, Lcom/android/browser/UiController;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    goto :goto_4
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    .line 167
    iget-object v2, p0, Lcom/android/browser/NavigationBarTablet;->mBackButton:Landroid/widget/ImageButton;

    if-ne v2, p1, :cond_f

    .line 168
    iget-object v2, p0, Lcom/android/browser/NavigationBarBase;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v2}, Lcom/android/browser/UiController;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/browser/Tab;->goBack()V

    .line 202
    :cond_e
    :goto_e
    return-void

    .line 169
    :cond_f
    iget-object v2, p0, Lcom/android/browser/NavigationBarTablet;->mForwardButton:Landroid/widget/ImageButton;

    if-ne v2, p1, :cond_1d

    .line 170
    iget-object v2, p0, Lcom/android/browser/NavigationBarBase;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v2}, Lcom/android/browser/UiController;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/browser/Tab;->goForward()V

    goto :goto_e

    .line 171
    :cond_1d
    iget-object v2, p0, Lcom/android/browser/NavigationBarTablet;->mStar:Landroid/widget/ImageView;

    if-ne v2, p1, :cond_57

    .line 173
    iget-object v2, p0, Lcom/android/browser/NavigationBarBase;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v2}, Lcom/android/browser/UiController;->getTabControl()Lcom/android/browser/TabControl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 174
    .local v0, currentTab:Lcom/android/browser/Tab;
    iget-boolean v2, p0, Lcom/android/browser/NavigationBarTablet;->mIsBookmark:Z

    if-eqz v2, :cond_47

    .line 175
    invoke-virtual {p0}, Lcom/android/browser/NavigationBarTablet;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/browser/NavigationBarTablet;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/browser/Tab;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/browser/Tab;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/android/browser/Bookmarks;->removeFromBookmarks(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    .line 178
    :cond_47
    iget-object v2, p0, Lcom/android/browser/NavigationBarBase;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v2, v3}, Lcom/android/browser/UiController;->createBookmarkCurrentPageIntent(Z)Landroid/content/Intent;

    move-result-object v1

    .line 179
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_e

    .line 180
    invoke-virtual {p0}, Lcom/android/browser/NavigationBarTablet;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_e

    .line 184
    .end local v0           #currentTab:Lcom/android/browser/Tab;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_57
    iget-object v2, p0, Lcom/android/browser/NavigationBarTablet;->mAllButton:Landroid/view/View;

    if-ne v2, p1, :cond_62

    .line 185
    iget-object v2, p0, Lcom/android/browser/NavigationBarBase;->mUiController:Lcom/android/browser/UiController;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/browser/UiController;->bookmarksOrHistoryPicker(Z)V

    goto :goto_e

    .line 186
    :cond_62
    iget-object v2, p0, Lcom/android/browser/NavigationBarTablet;->mSearchButton:Landroid/widget/ImageView;

    if-ne v2, p1, :cond_6c

    .line 187
    iget-object v2, p0, Lcom/android/browser/NavigationBarBase;->mBaseUi:Lcom/android/browser/BaseUi;

    invoke-virtual {v2, v3}, Lcom/android/browser/BaseUi;->editUrl(Z)V

    goto :goto_e

    .line 188
    :cond_6c
    iget-object v2, p0, Lcom/android/browser/NavigationBarTablet;->mStopButton:Landroid/widget/ImageView;

    if-ne v2, p1, :cond_74

    .line 189
    invoke-direct {p0}, Lcom/android/browser/NavigationBarTablet;->stopOrRefresh()V

    goto :goto_e

    .line 190
    :cond_74
    iget-object v2, p0, Lcom/android/browser/NavigationBarTablet;->mGoButton:Landroid/view/View;

    if-ne v2, p1, :cond_96

    .line 191
    iget-object v2, p0, Lcom/android/browser/NavigationBarBase;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v2}, Lcom/android/browser/UrlInputView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 192
    iget-object v2, p0, Lcom/android/browser/NavigationBarBase;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v2}, Lcom/android/browser/UrlInputView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "browser-type"

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/browser/NavigationBarTablet;->onAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e

    .line 195
    :cond_96
    iget-object v2, p0, Lcom/android/browser/NavigationBarTablet;->mClearButton:Landroid/view/View;

    if-ne v2, p1, :cond_9f

    .line 196
    invoke-direct {p0}, Lcom/android/browser/NavigationBarTablet;->clearOrClose()V

    goto/16 :goto_e

    .line 197
    :cond_9f
    iget-object v2, p0, Lcom/android/browser/NavigationBarTablet;->mVoiceSearch:Landroid/widget/ImageView;

    if-ne v2, p1, :cond_aa

    .line 198
    iget-object v2, p0, Lcom/android/browser/NavigationBarBase;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v2}, Lcom/android/browser/UiController;->startVoiceSearch()V

    goto/16 :goto_e

    .line 200
    :cond_aa
    invoke-super {p0, p1}, Lcom/android/browser/NavigationBarBase;->onClick(Landroid/view/View;)V

    goto/16 :goto_e
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 7
    .parameter "config"

    .prologue
    const/16 v3, 0x8

    const/4 v4, 0x0

    .line 122
    invoke-super {p0, p1}, Lcom/android/browser/NavigationBarBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 123
    iget-object v2, p0, Lcom/android/browser/NavigationBarTablet;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 124
    .local v1, res:Landroid/content/res/Resources;
    const v2, 0x7f090001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/browser/NavigationBarTablet;->mHideNavButtons:Z

    .line 125
    iget-object v2, p0, Lcom/android/browser/NavigationBarBase;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v2}, Lcom/android/browser/UrlInputView;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_40

    .line 126
    iget-boolean v2, p0, Lcom/android/browser/NavigationBarTablet;->mHideNavButtons:Z

    if-eqz v2, :cond_41

    iget-object v2, p0, Lcom/android/browser/NavigationBarTablet;->mNavButtons:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_41

    .line 127
    iget-object v2, p0, Lcom/android/browser/NavigationBarTablet;->mNavButtons:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 128
    .local v0, aw:I
    iget-object v2, p0, Lcom/android/browser/NavigationBarTablet;->mNavButtons:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 129
    iget-object v2, p0, Lcom/android/browser/NavigationBarTablet;->mNavButtons:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    .line 130
    iget-object v2, p0, Lcom/android/browser/NavigationBarTablet;->mNavButtons:Landroid/view/View;

    neg-int v3, v0

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 137
    .end local v0           #aw:I
    :cond_40
    :goto_40
    return-void

    .line 131
    :cond_41
    iget-boolean v2, p0, Lcom/android/browser/NavigationBarTablet;->mHideNavButtons:Z

    if-nez v2, :cond_40

    iget-object v2, p0, Lcom/android/browser/NavigationBarTablet;->mNavButtons:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-ne v2, v3, :cond_40

    .line 132
    iget-object v2, p0, Lcom/android/browser/NavigationBarTablet;->mNavButtons:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 133
    iget-object v2, p0, Lcom/android/browser/NavigationBarTablet;->mNavButtons:Landroid/view/View;

    const/high16 v3, 0x3f80

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 134
    iget-object v2, p0, Lcom/android/browser/NavigationBarTablet;->mNavButtons:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_40
.end method

.method protected onFinishInflate()V
    .registers 3

    .prologue
    .line 94
    invoke-super {p0}, Lcom/android/browser/NavigationBarBase;->onFinishInflate()V

    .line 95
    const v0, 0x7f0d00e7

    invoke-virtual {p0, v0}, Lcom/android/browser/NavigationBarTablet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/NavigationBarTablet;->mAllButton:Landroid/view/View;

    .line 98
    const v0, 0x7f0d00df

    invoke-virtual {p0, v0}, Lcom/android/browser/NavigationBarTablet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/NavigationBarTablet;->mNavButtons:Landroid/view/View;

    .line 99
    const v0, 0x7f0d00e0

    invoke-virtual {p0, v0}, Lcom/android/browser/NavigationBarTablet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/browser/NavigationBarTablet;->mBackButton:Landroid/widget/ImageButton;

    .line 100
    const v0, 0x7f0d00e1

    invoke-virtual {p0, v0}, Lcom/android/browser/NavigationBarTablet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/browser/NavigationBarTablet;->mForwardButton:Landroid/widget/ImageButton;

    .line 101
    const v0, 0x7f0d00e3

    invoke-virtual {p0, v0}, Lcom/android/browser/NavigationBarTablet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/browser/NavigationBarTablet;->mUrlIcon:Landroid/widget/ImageView;

    .line 102
    const v0, 0x7f0d006e

    invoke-virtual {p0, v0}, Lcom/android/browser/NavigationBarTablet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/browser/NavigationBarTablet;->mStar:Landroid/widget/ImageView;

    .line 103
    const v0, 0x7f0d00d3

    invoke-virtual {p0, v0}, Lcom/android/browser/NavigationBarTablet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/browser/NavigationBarTablet;->mStopButton:Landroid/widget/ImageView;

    .line 104
    const v0, 0x7f0d00e6

    invoke-virtual {p0, v0}, Lcom/android/browser/NavigationBarTablet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/browser/NavigationBarTablet;->mSearchButton:Landroid/widget/ImageView;

    .line 105
    const v0, 0x7f0d00e4

    invoke-virtual {p0, v0}, Lcom/android/browser/NavigationBarTablet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/NavigationBarTablet;->mGoButton:Landroid/view/View;

    .line 106
    const v0, 0x7f0d00db

    invoke-virtual {p0, v0}, Lcom/android/browser/NavigationBarTablet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/NavigationBarTablet;->mClearButton:Landroid/view/View;

    .line 107
    const v0, 0x7f0d00e5

    invoke-virtual {p0, v0}, Lcom/android/browser/NavigationBarTablet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/browser/NavigationBarTablet;->mVoiceSearch:Landroid/widget/ImageView;

    .line 108
    const v0, 0x7f0d00e2

    invoke-virtual {p0, v0}, Lcom/android/browser/NavigationBarTablet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/NavigationBarTablet;->mUrlContainer:Landroid/view/View;

    .line 109
    iget-object v0, p0, Lcom/android/browser/NavigationBarTablet;->mBackButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iget-object v0, p0, Lcom/android/browser/NavigationBarTablet;->mForwardButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object v0, p0, Lcom/android/browser/NavigationBarTablet;->mStar:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object v0, p0, Lcom/android/browser/NavigationBarTablet;->mAllButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object v0, p0, Lcom/android/browser/NavigationBarTablet;->mStopButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object v0, p0, Lcom/android/browser/NavigationBarTablet;->mSearchButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object v0, p0, Lcom/android/browser/NavigationBarTablet;->mGoButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-object v0, p0, Lcom/android/browser/NavigationBarTablet;->mClearButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object v0, p0, Lcom/android/browser/NavigationBarTablet;->mVoiceSearch:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object v0, p0, Lcom/android/browser/NavigationBarBase;->mUrlInput:Lcom/android/browser/UrlInputView;

    iget-object v1, p0, Lcom/android/browser/NavigationBarTablet;->mUrlContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/browser/UrlInputView;->setContainer(Landroid/view/View;)V

    .line 119
    return-void
.end method

.method public onProgressStarted()V
    .registers 3

    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/browser/NavigationBarTablet;->mStopButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/browser/NavigationBarTablet;->mStopDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 278
    iget-object v0, p0, Lcom/android/browser/NavigationBarTablet;->mStopButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/browser/NavigationBarTablet;->mStopDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 279
    return-void
.end method

.method public onProgressStopped()V
    .registers 3

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/browser/NavigationBarTablet;->mStopButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/browser/NavigationBarTablet;->mReloadDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 284
    iget-object v0, p0, Lcom/android/browser/NavigationBarTablet;->mStopButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/browser/NavigationBarTablet;->mRefreshDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 285
    return-void
.end method

.method public setCurrentUrlIsBookmark(Z)V
    .registers 3
    .parameter "isBookmark"

    .prologue
    .line 160
    iput-boolean p1, p0, Lcom/android/browser/NavigationBarTablet;->mIsBookmark:Z

    .line 162
    iget-object v0, p0, Lcom/android/browser/NavigationBarTablet;->mStar:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setActivated(Z)V

    .line 163
    return-void
.end method

.method public setFavicon(Landroid/graphics/Bitmap;)V
    .registers 3
    .parameter "icon"

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/browser/NavigationBarBase;->mBaseUi:Lcom/android/browser/BaseUi;

    invoke-virtual {v0, p1}, Lcom/android/browser/BaseUi;->getFaviconDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/NavigationBarTablet;->mFaviconDrawable:Landroid/graphics/drawable/Drawable;

    .line 217
    invoke-virtual {p0}, Lcom/android/browser/NavigationBarTablet;->updateUrlIcon()V

    .line 218
    return-void
.end method

.method protected setFocusState(Z)V
    .registers 5
    .parameter "focus"

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 237
    invoke-super {p0, p1}, Lcom/android/browser/NavigationBarBase;->setFocusState(Z)V

    .line 238
    if-eqz p1, :cond_33

    .line 239
    iget-boolean v0, p0, Lcom/android/browser/NavigationBarTablet;->mHideNavButtons:Z

    if-eqz v0, :cond_f

    .line 240
    invoke-direct {p0}, Lcom/android/browser/NavigationBarTablet;->hideNavButtons()V

    .line 242
    :cond_f
    iget-object v0, p0, Lcom/android/browser/NavigationBarTablet;->mSearchButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 243
    iget-object v0, p0, Lcom/android/browser/NavigationBarTablet;->mStar:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 244
    iget-object v0, p0, Lcom/android/browser/NavigationBarTablet;->mClearButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 245
    iget-object v0, p0, Lcom/android/browser/NavigationBarTablet;->mUrlIcon:Landroid/widget/ImageView;

    const v1, 0x7f020083

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 246
    invoke-virtual {p0, v2}, Lcom/android/browser/NavigationBarTablet;->updateSearchMode(Z)V

    .line 262
    :goto_29
    iget-object v1, p0, Lcom/android/browser/NavigationBarTablet;->mUrlContainer:Landroid/view/View;

    if-eqz p1, :cond_65

    iget-object v0, p0, Lcom/android/browser/NavigationBarTablet;->mFocusDrawable:Landroid/graphics/drawable/Drawable;

    :goto_2f
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 264
    return-void

    .line 248
    :cond_33
    iget-boolean v0, p0, Lcom/android/browser/NavigationBarTablet;->mHideNavButtons:Z

    if-eqz v0, :cond_3a

    .line 249
    invoke-direct {p0}, Lcom/android/browser/NavigationBarTablet;->showNavButtons()V

    .line 251
    :cond_3a
    iget-object v0, p0, Lcom/android/browser/NavigationBarTablet;->mGoButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 252
    iget-object v0, p0, Lcom/android/browser/NavigationBarTablet;->mVoiceSearch:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 253
    iget-object v0, p0, Lcom/android/browser/NavigationBarTablet;->mStar:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 254
    iget-object v0, p0, Lcom/android/browser/NavigationBarTablet;->mClearButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 255
    iget-object v0, p0, Lcom/android/browser/NavigationBarBase;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0}, Lcom/android/browser/TitleBar;->useQuickControls()Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 256
    iget-object v0, p0, Lcom/android/browser/NavigationBarTablet;->mSearchButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 260
    :goto_5b
    invoke-virtual {p0}, Lcom/android/browser/NavigationBarTablet;->updateUrlIcon()V

    goto :goto_29

    .line 258
    :cond_5f
    iget-object v0, p0, Lcom/android/browser/NavigationBarTablet;->mSearchButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5b

    .line 262
    :cond_65
    iget-object v0, p0, Lcom/android/browser/NavigationBarTablet;->mUnfocusDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_2f
.end method

.method public setInVoiceMode(ZLjava/util/List;)V
    .registers 5
    .parameter "voicemode"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 303
    .local p2, voiceResults:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-super {p0, p1, p2}, Lcom/android/browser/NavigationBarBase;->setInVoiceMode(ZLjava/util/List;)V

    .line 304
    if-eqz p1, :cond_10

    .line 305
    iget-object v0, p0, Lcom/android/browser/NavigationBarTablet;->mUrlIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/browser/NavigationBarTablet;->mSearchButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 307
    :cond_10
    return-void
.end method

.method protected setSearchMode(Z)V
    .registers 7
    .parameter "voiceSearchEnabled"

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x0

    .line 293
    if-eqz p1, :cond_1e

    iget-object v2, p0, Lcom/android/browser/NavigationBarBase;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v2}, Lcom/android/browser/UiController;->supportsVoiceSearch()Z

    move-result v2

    if-eqz v2, :cond_1e

    const/4 v0, 0x1

    .line 295
    .local v0, showvoicebutton:Z
    :goto_e
    iget-object v4, p0, Lcom/android/browser/NavigationBarTablet;->mVoiceSearch:Landroid/widget/ImageView;

    if-eqz v0, :cond_20

    move v2, v1

    :goto_13
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 297
    iget-object v2, p0, Lcom/android/browser/NavigationBarTablet;->mGoButton:Landroid/view/View;

    if-eqz p1, :cond_22

    :goto_1a
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 299
    return-void

    .end local v0           #showvoicebutton:Z
    :cond_1e
    move v0, v1

    .line 293
    goto :goto_e

    .restart local v0       #showvoicebutton:Z
    :cond_20
    move v2, v3

    .line 295
    goto :goto_13

    :cond_22
    move v3, v1

    .line 297
    goto :goto_1a
.end method

.method public setTitleBar(Lcom/android/browser/TitleBar;)V
    .registers 3
    .parameter "titleBar"

    .prologue
    .line 141
    invoke-super {p0, p1}, Lcom/android/browser/NavigationBarBase;->setTitleBar(Lcom/android/browser/TitleBar;)V

    .line 142
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/browser/NavigationBarTablet;->setFocusState(Z)V

    .line 143
    return-void
.end method

.method updateNavigationState(Lcom/android/browser/Tab;)V
    .registers 4
    .parameter "tab"

    .prologue
    .line 146
    if-eqz p1, :cond_1e

    .line 147
    iget-object v1, p0, Lcom/android/browser/NavigationBarTablet;->mBackButton:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Lcom/android/browser/Tab;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_22

    const v0, 0x7f02003f

    :goto_d
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 150
    iget-object v1, p0, Lcom/android/browser/NavigationBarTablet;->mForwardButton:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Lcom/android/browser/Tab;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_26

    const v0, 0x7f020054

    :goto_1b
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 154
    :cond_1e
    invoke-virtual {p0}, Lcom/android/browser/NavigationBarTablet;->updateUrlIcon()V

    .line 155
    return-void

    .line 147
    :cond_22
    const v0, 0x7f02003d

    goto :goto_d

    .line 150
    :cond_26
    const v0, 0x7f020053

    goto :goto_1b
.end method

.method protected updateSearchMode(Z)V
    .registers 3
    .parameter "userEdited"

    .prologue
    .line 288
    if-eqz p1, :cond_e

    iget-object v0, p0, Lcom/android/browser/NavigationBarBase;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v0}, Lcom/android/browser/UrlInputView;->getUserText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    :cond_e
    const/4 v0, 0x1

    :goto_f
    invoke-virtual {p0, v0}, Lcom/android/browser/NavigationBarTablet;->setSearchMode(Z)V

    .line 289
    return-void

    .line 288
    :cond_13
    const/4 v0, 0x0

    goto :goto_f
.end method

.method updateUrlIcon()V
    .registers 3

    .prologue
    const v1, 0x7f020083

    .line 221
    iget-object v0, p0, Lcom/android/browser/NavigationBarBase;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v0}, Lcom/android/browser/UrlInputView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 222
    iget-object v0, p0, Lcom/android/browser/NavigationBarTablet;->mUrlIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 233
    :goto_10
    return-void

    .line 224
    :cond_11
    iget-boolean v0, p0, Lcom/android/browser/NavigationBarBase;->mInVoiceMode:Z

    if-eqz v0, :cond_1b

    .line 225
    iget-object v0, p0, Lcom/android/browser/NavigationBarTablet;->mUrlIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_10

    .line 227
    :cond_1b
    iget-object v0, p0, Lcom/android/browser/NavigationBarTablet;->mFaviconDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_28

    .line 228
    iget-object v0, p0, Lcom/android/browser/NavigationBarBase;->mBaseUi:Lcom/android/browser/BaseUi;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/browser/BaseUi;->getFaviconDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/NavigationBarTablet;->mFaviconDrawable:Landroid/graphics/drawable/Drawable;

    .line 230
    :cond_28
    iget-object v0, p0, Lcom/android/browser/NavigationBarTablet;->mUrlIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/browser/NavigationBarTablet;->mFaviconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_10
.end method
