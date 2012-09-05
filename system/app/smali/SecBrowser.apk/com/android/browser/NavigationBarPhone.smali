.class public Lcom/android/browser/NavigationBarPhone;
.super Lcom/android/browser/NavigationBarBase;
.source "NavigationBarPhone.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnDismissListener;
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;
.implements Lcom/android/browser/UrlInputView$StateListener;


# instance fields
.field private mBookmarkButton:Landroid/widget/ImageView;

.field private mClearButton:Landroid/widget/ImageView;

.field private mComboIcon:Landroid/view/View;

.field private mDivider:Landroid/view/View;

.field private mDividerBeforeTab:Landroid/view/View;

.field private mIncognitoIcon:Landroid/view/View;

.field private mMagnify:Landroid/widget/ImageView;

.field private mMore:Landroid/view/View;

.field private mNeedsMenu:Z

.field private mOverflowMenuShowing:Z

.field private mPopupMenu:Landroid/widget/PopupMenu;

.field private mRefreshDescription:Ljava/lang/String;

.field private mRefreshDrawable:Landroid/graphics/drawable/Drawable;

.field private mRssIcon:Landroid/widget/ImageView;

.field private mStopButton:Landroid/widget/ImageView;

.field private mStopDescription:Ljava/lang/String;

.field private mStopDrawable:Landroid/graphics/drawable/Drawable;

.field private mTabSwitcher:Landroid/view/View;

.field private mTextfieldBGNormalDrawable:Landroid/graphics/drawable/Drawable;

.field private mTextfieldBgDrawable:Landroid/graphics/drawable/Drawable;

.field private mTitleContainer:Landroid/view/View;

.field private mVoiceButton:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/browser/NavigationBarBase;-><init>(Landroid/content/Context;)V

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
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 74
    invoke-direct {p0, p1, p2, p3}, Lcom/android/browser/NavigationBarBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 75
    return-void
.end method

.method private onMenuHidden()V
    .registers 2

    .prologue
    .line 243
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/NavigationBarPhone;->mOverflowMenuShowing:Z

    .line 244
    iget-object v0, p0, Lcom/android/browser/NavigationBarBase;->mBaseUi:Lcom/android/browser/BaseUi;

    invoke-virtual {v0}, Lcom/android/browser/BaseUi;->showTitleBarForDuration()V

    .line 245
    return-void
.end method


# virtual methods
.method public isMenuShowing()Z
    .registers 2

    .prologue
    .line 214
    invoke-super {p0}, Lcom/android/browser/NavigationBarBase;->isMenuShowing()Z

    move-result v0

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/android/browser/NavigationBarPhone;->mOverflowMenuShowing:Z

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 181
    iget-object v1, p0, Lcom/android/browser/NavigationBarPhone;->mStopButton:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_21

    .line 182
    iget-object v1, p0, Lcom/android/browser/NavigationBarBase;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v1}, Lcom/android/browser/TitleBar;->isInLoad()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 183
    iget-object v1, p0, Lcom/android/browser/NavigationBarBase;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v1}, Lcom/android/browser/UiController;->stopLoading()V

    .line 210
    :cond_11
    :goto_11
    return-void

    .line 185
    :cond_12
    iget-object v1, p0, Lcom/android/browser/NavigationBarBase;->mBaseUi:Lcom/android/browser/BaseUi;

    invoke-virtual {v1}, Lcom/android/browser/BaseUi;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 186
    .local v0, web:Landroid/webkit/WebView;
    if-eqz v0, :cond_11

    .line 187
    invoke-virtual {p0}, Lcom/android/browser/NavigationBarPhone;->stopEditingUrl()V

    .line 188
    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    goto :goto_11

    .line 191
    .end local v0           #web:Landroid/webkit/WebView;
    :cond_21
    iget-object v1, p0, Lcom/android/browser/NavigationBarPhone;->mVoiceButton:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_2b

    .line 192
    iget-object v1, p0, Lcom/android/browser/NavigationBarBase;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v1}, Lcom/android/browser/UiController;->startVoiceSearch()V

    goto :goto_11

    .line 193
    :cond_2b
    iget-object v1, p0, Lcom/android/browser/NavigationBarPhone;->mTabSwitcher:Landroid/view/View;

    if-ne p1, v1, :cond_37

    .line 194
    iget-object v1, p0, Lcom/android/browser/NavigationBarBase;->mBaseUi:Lcom/android/browser/BaseUi;

    check-cast v1, Lcom/android/browser/PhoneUi;

    invoke-virtual {v1}, Lcom/android/browser/PhoneUi;->toggleNavScreen()V

    goto :goto_11

    .line 195
    :cond_37
    iget-object v1, p0, Lcom/android/browser/NavigationBarPhone;->mMore:Landroid/view/View;

    if-ne v1, p1, :cond_41

    .line 196
    iget-object v1, p0, Lcom/android/browser/NavigationBarPhone;->mMore:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/browser/NavigationBarPhone;->showMenu(Landroid/view/View;)V

    goto :goto_11

    .line 197
    :cond_41
    iget-object v1, p0, Lcom/android/browser/NavigationBarPhone;->mClearButton:Landroid/widget/ImageView;

    if-ne v1, p1, :cond_4d

    .line 198
    iget-object v1, p0, Lcom/android/browser/NavigationBarBase;->mUrlInput:Lcom/android/browser/UrlInputView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/android/browser/UrlInputView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_11

    .line 199
    :cond_4d
    iget-object v1, p0, Lcom/android/browser/NavigationBarPhone;->mBookmarkButton:Landroid/widget/ImageView;

    if-ne v1, p1, :cond_58

    .line 200
    iget-object v1, p0, Lcom/android/browser/NavigationBarBase;->mUiController:Lcom/android/browser/UiController;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/browser/UiController;->bookmarksOrHistoryPicker(Z)V

    goto :goto_11

    .line 201
    :cond_58
    iget-object v1, p0, Lcom/android/browser/NavigationBarPhone;->mRssIcon:Landroid/widget/ImageView;

    if-ne v1, p1, :cond_62

    .line 202
    iget-object v1, p0, Lcom/android/browser/NavigationBarBase;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v1}, Lcom/android/browser/UiController;->displayRssLinks()V

    goto :goto_11

    .line 204
    :cond_62
    iget-object v1, p0, Lcom/android/browser/NavigationBarPhone;->mMagnify:Landroid/widget/ImageView;

    if-ne v1, p1, :cond_6c

    .line 205
    iget-object v1, p0, Lcom/android/browser/NavigationBarBase;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v1}, Lcom/android/browser/UrlInputView;->runSearch()V

    goto :goto_11

    .line 208
    :cond_6c
    invoke-super {p0, p1}, Lcom/android/browser/NavigationBarBase;->onClick(Landroid/view/View;)V

    goto :goto_11
.end method

.method public onDismiss(Landroid/widget/PopupMenu;)V
    .registers 3
    .parameter "menu"

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/browser/NavigationBarPhone;->mPopupMenu:Landroid/widget/PopupMenu;

    if-ne p1, v0, :cond_7

    .line 238
    invoke-direct {p0}, Lcom/android/browser/NavigationBarPhone;->onMenuHidden()V

    .line 240
    :cond_7
    return-void
.end method

.method protected onFinishInflate()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 79
    invoke-super {p0}, Lcom/android/browser/NavigationBarBase;->onFinishInflate()V

    .line 80
    const v1, 0x7f0d00d3

    invoke-virtual {p0, v1}, Lcom/android/browser/NavigationBarPhone;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/browser/NavigationBarPhone;->mStopButton:Landroid/widget/ImageView;

    .line 81
    iget-object v1, p0, Lcom/android/browser/NavigationBarPhone;->mStopButton:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    const v1, 0x7f0d00da

    invoke-virtual {p0, v1}, Lcom/android/browser/NavigationBarPhone;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/browser/NavigationBarPhone;->mVoiceButton:Landroid/widget/ImageView;

    .line 83
    iget-object v1, p0, Lcom/android/browser/NavigationBarPhone;->mVoiceButton:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    const v1, 0x7f0d00db

    invoke-virtual {p0, v1}, Lcom/android/browser/NavigationBarPhone;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/browser/NavigationBarPhone;->mClearButton:Landroid/widget/ImageView;

    .line 85
    iget-object v1, p0, Lcom/android/browser/NavigationBarPhone;->mClearButton:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    const v1, 0x7f0d00d6

    invoke-virtual {p0, v1}, Lcom/android/browser/NavigationBarPhone;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/browser/NavigationBarPhone;->mMagnify:Landroid/widget/ImageView;

    .line 87
    iget-object v1, p0, Lcom/android/browser/NavigationBarPhone;->mMagnify:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    const v1, 0x7f0d00dd

    invoke-virtual {p0, v1}, Lcom/android/browser/NavigationBarPhone;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/NavigationBarPhone;->mTabSwitcher:Landroid/view/View;

    .line 89
    iget-object v1, p0, Lcom/android/browser/NavigationBarPhone;->mTabSwitcher:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    const v1, 0x7f0d00dc

    invoke-virtual {p0, v1}, Lcom/android/browser/NavigationBarPhone;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/NavigationBarPhone;->mDividerBeforeTab:Landroid/view/View;

    .line 91
    const v1, 0x7f0d002d

    invoke-virtual {p0, v1}, Lcom/android/browser/NavigationBarPhone;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/browser/NavigationBarPhone;->mBookmarkButton:Landroid/widget/ImageView;

    .line 92
    iget-object v1, p0, Lcom/android/browser/NavigationBarPhone;->mBookmarkButton:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    const v1, 0x7f0d00d8

    invoke-virtual {p0, v1}, Lcom/android/browser/NavigationBarPhone;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/browser/NavigationBarPhone;->mRssIcon:Landroid/widget/ImageView;

    .line 94
    iget-object v1, p0, Lcom/android/browser/NavigationBarPhone;->mRssIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    const v1, 0x7f0d003b

    invoke-virtual {p0, v1}, Lcom/android/browser/NavigationBarPhone;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/NavigationBarPhone;->mMore:Landroid/view/View;

    .line 96
    iget-object v1, p0, Lcom/android/browser/NavigationBarPhone;->mMore:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    const v1, 0x7f0d00de

    invoke-virtual {p0, v1}, Lcom/android/browser/NavigationBarPhone;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/NavigationBarPhone;->mDivider:Landroid/view/View;

    .line 98
    const v1, 0x7f0d00d7

    invoke-virtual {p0, v1}, Lcom/android/browser/NavigationBarPhone;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/NavigationBarPhone;->mComboIcon:Landroid/view/View;

    .line 99
    const v1, 0x7f0d00d5

    invoke-virtual {p0, v1}, Lcom/android/browser/NavigationBarPhone;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/NavigationBarPhone;->mTitleContainer:Landroid/view/View;

    .line 100
    invoke-virtual {p0, v2}, Lcom/android/browser/NavigationBarPhone;->setFocusState(Z)V

    .line 101
    invoke-virtual {p0}, Lcom/android/browser/NavigationBarPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 102
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f020088

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/NavigationBarPhone;->mStopDrawable:Landroid/graphics/drawable/Drawable;

    .line 103
    const v1, 0x7f02007c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/NavigationBarPhone;->mRefreshDrawable:Landroid/graphics/drawable/Drawable;

    .line 104
    const v1, 0x7f0c0181

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/NavigationBarPhone;->mStopDescription:Ljava/lang/String;

    .line 105
    const v1, 0x7f0c0180

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/NavigationBarPhone;->mRefreshDescription:Ljava/lang/String;

    .line 106
    const v1, 0x7f0200ae

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/NavigationBarPhone;->mTextfieldBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 107
    const v1, 0x7f0200af

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/NavigationBarPhone;->mTextfieldBGNormalDrawable:Landroid/graphics/drawable/Drawable;

    .line 108
    iget-object v1, p0, Lcom/android/browser/NavigationBarBase;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v1, p0}, Lcom/android/browser/UrlInputView;->setContainer(Landroid/view/View;)V

    .line 109
    iget-object v1, p0, Lcom/android/browser/NavigationBarBase;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v1, p0}, Lcom/android/browser/UrlInputView;->setStateListener(Lcom/android/browser/UrlInputView$StateListener;)V

    .line 110
    invoke-virtual {p0}, Lcom/android/browser/NavigationBarPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v1

    if-nez v1, :cond_10a

    const/4 v1, 0x1

    :goto_fe
    iput-boolean v1, p0, Lcom/android/browser/NavigationBarPhone;->mNeedsMenu:Z

    .line 111
    const v1, 0x7f0d00d4

    invoke-virtual {p0, v1}, Lcom/android/browser/NavigationBarPhone;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/NavigationBarPhone;->mIncognitoIcon:Landroid/view/View;

    .line 112
    return-void

    :cond_10a
    move v1, v2

    .line 110
    goto :goto_fe
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .registers 6
    .parameter "view"
    .parameter "hasFocus"

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/browser/NavigationBarBase;->mUrlInput:Lcom/android/browser/UrlInputView;

    if-ne p1, v0, :cond_2a

    .line 250
    if-eqz p2, :cond_2e

    iget-object v0, p0, Lcom/android/browser/NavigationBarBase;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v0}, Lcom/android/browser/UrlInputView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/NavigationBarBase;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v1}, Lcom/android/browser/UrlInputView;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 252
    iget-object v1, p0, Lcom/android/browser/NavigationBarBase;->mUrlInput:Lcom/android/browser/UrlInputView;

    iget-object v0, p0, Lcom/android/browser/NavigationBarBase;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v0}, Lcom/android/browser/UrlInputView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/browser/UrlInputView;->setText(Ljava/lang/CharSequence;Z)V

    .line 257
    :cond_2a
    :goto_2a
    invoke-super {p0, p1, p2}, Lcom/android/browser/NavigationBarBase;->onFocusChange(Landroid/view/View;Z)V

    .line 258
    return-void

    .line 254
    :cond_2e
    iget-object v0, p0, Lcom/android/browser/NavigationBarBase;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v0}, Lcom/android/browser/UrlInputView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/browser/NavigationBarPhone;->setDisplayTitle(Ljava/lang/String;)V

    goto :goto_2a
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 339
    iget-object v0, p0, Lcom/android/browser/NavigationBarBase;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v0, p1}, Lcom/android/browser/UiController;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onProgressStarted()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 132
    invoke-super {p0}, Lcom/android/browser/NavigationBarBase;->onProgressStarted()V

    .line 133
    iget-object v0, p0, Lcom/android/browser/NavigationBarPhone;->mStopButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/NavigationBarPhone;->mStopDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, v1, :cond_30

    .line 134
    iget-object v0, p0, Lcom/android/browser/NavigationBarPhone;->mStopButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/browser/NavigationBarPhone;->mStopDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 135
    iget-object v0, p0, Lcom/android/browser/NavigationBarPhone;->mStopButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/browser/NavigationBarPhone;->mStopDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v0, p0, Lcom/android/browser/NavigationBarPhone;->mStopButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_30

    .line 137
    iget-object v0, p0, Lcom/android/browser/NavigationBarPhone;->mComboIcon:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 138
    iget-object v0, p0, Lcom/android/browser/NavigationBarPhone;->mStopButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 141
    :cond_30
    invoke-virtual {p0, v2}, Lcom/android/browser/NavigationBarPhone;->setRss(Z)V

    .line 142
    return-void
.end method

.method public onProgressStopped()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 146
    invoke-super {p0}, Lcom/android/browser/NavigationBarBase;->onProgressStopped()V

    .line 147
    iget-object v0, p0, Lcom/android/browser/NavigationBarPhone;->mStopButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/browser/NavigationBarPhone;->mRefreshDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 148
    iget-object v0, p0, Lcom/android/browser/NavigationBarPhone;->mStopButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/browser/NavigationBarPhone;->mRefreshDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 149
    invoke-virtual {p0}, Lcom/android/browser/NavigationBarPhone;->isEditingUrl()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 150
    iget-object v0, p0, Lcom/android/browser/NavigationBarPhone;->mComboIcon:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 153
    :cond_1d
    iget-object v0, p0, Lcom/android/browser/NavigationBarBase;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v0}, Lcom/android/browser/UiController;->isRssLinkedPage()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 154
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/browser/NavigationBarPhone;->setRss(Z)V

    .line 158
    :goto_29
    iget-object v0, p0, Lcom/android/browser/NavigationBarBase;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v0}, Lcom/android/browser/UrlInputView;->getState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/browser/NavigationBarPhone;->onStateChanged(I)V

    .line 159
    return-void

    .line 156
    :cond_33
    invoke-virtual {p0, v2}, Lcom/android/browser/NavigationBarPhone;->setRss(Z)V

    goto :goto_29
.end method

.method public onStateChanged(I)V
    .registers 7
    .parameter "state"

    .prologue
    const/4 v2, 0x0

    const/16 v3, 0x8

    .line 276
    packed-switch p1, :pswitch_data_ee

    .line 324
    :goto_6
    iget-object v1, p0, Lcom/android/browser/NavigationBarPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0b0043

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 325
    .local v0, paddingRight:I
    iget-object v1, p0, Lcom/android/browser/NavigationBarPhone;->mTitleContainer:Landroid/view/View;

    iget-object v3, p0, Lcom/android/browser/NavigationBarPhone;->mTitleContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Lcom/android/browser/NavigationBarPhone;->mTitleContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 328
    return-void

    .line 278
    .end local v0           #paddingRight:I
    :pswitch_25
    iget-object v1, p0, Lcom/android/browser/NavigationBarPhone;->mComboIcon:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 279
    iget-object v1, p0, Lcom/android/browser/NavigationBarPhone;->mStopButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 280
    iget-object v1, p0, Lcom/android/browser/NavigationBarPhone;->mClearButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 281
    iget-object v1, p0, Lcom/android/browser/NavigationBarPhone;->mMagnify:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 282
    iget-boolean v1, p0, Lcom/android/browser/NavigationBarBase;->mInVoiceMode:Z

    invoke-virtual {p0, v1}, Lcom/android/browser/NavigationBarPhone;->setSearchMode(Z)V

    .line 283
    iget-object v1, p0, Lcom/android/browser/NavigationBarPhone;->mBookmarkButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 284
    iget-object v1, p0, Lcom/android/browser/NavigationBarPhone;->mTabSwitcher:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 285
    iget-object v1, p0, Lcom/android/browser/NavigationBarPhone;->mDividerBeforeTab:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 286
    iget-object v1, p0, Lcom/android/browser/NavigationBarPhone;->mTitleContainer:Landroid/view/View;

    iget-object v4, p0, Lcom/android/browser/NavigationBarPhone;->mTextfieldBGNormalDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 287
    iget-object v4, p0, Lcom/android/browser/NavigationBarPhone;->mMore:Landroid/view/View;

    iget-boolean v1, p0, Lcom/android/browser/NavigationBarPhone;->mNeedsMenu:Z

    if-eqz v1, :cond_69

    move v1, v2

    :goto_5b
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 288
    iget-object v1, p0, Lcom/android/browser/NavigationBarPhone;->mDivider:Landroid/view/View;

    iget-boolean v4, p0, Lcom/android/browser/NavigationBarPhone;->mNeedsMenu:Z

    if-eqz v4, :cond_65

    move v3, v2

    :cond_65
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    :cond_69
    move v1, v3

    .line 287
    goto :goto_5b

    .line 291
    :pswitch_6b
    iget-object v1, p0, Lcom/android/browser/NavigationBarPhone;->mComboIcon:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 292
    iget-object v1, p0, Lcom/android/browser/NavigationBarPhone;->mStopButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 293
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Z)Z

    move-result v1

    if-eqz v1, :cond_af

    .line 294
    iget-object v1, p0, Lcom/android/browser/NavigationBarPhone;->mClearButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 297
    :goto_84
    iget-object v1, p0, Lcom/android/browser/NavigationBarPhone;->mMagnify:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 298
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/browser/NavigationBarPhone;->setSearchMode(Z)V

    .line 299
    iget-object v1, p0, Lcom/android/browser/NavigationBarPhone;->mBookmarkButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 300
    iget-object v1, p0, Lcom/android/browser/NavigationBarPhone;->mTabSwitcher:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 301
    iget-object v1, p0, Lcom/android/browser/NavigationBarPhone;->mDividerBeforeTab:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 302
    iget-object v1, p0, Lcom/android/browser/NavigationBarPhone;->mMore:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 303
    iget-object v1, p0, Lcom/android/browser/NavigationBarPhone;->mDivider:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 304
    iget-object v1, p0, Lcom/android/browser/NavigationBarPhone;->mTitleContainer:Landroid/view/View;

    iget-object v3, p0, Lcom/android/browser/NavigationBarPhone;->mTextfieldBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_6

    .line 296
    :cond_af
    iget-object v1, p0, Lcom/android/browser/NavigationBarPhone;->mClearButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_84

    .line 307
    :pswitch_b5
    iget-object v1, p0, Lcom/android/browser/NavigationBarPhone;->mComboIcon:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 308
    iget-object v1, p0, Lcom/android/browser/NavigationBarPhone;->mStopButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 309
    iget-object v1, p0, Lcom/android/browser/NavigationBarPhone;->mClearButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 310
    iget-object v1, p0, Lcom/android/browser/NavigationBarPhone;->mMagnify:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 311
    invoke-virtual {p0, v2}, Lcom/android/browser/NavigationBarPhone;->setSearchMode(Z)V

    .line 312
    iget-object v1, p0, Lcom/android/browser/NavigationBarPhone;->mBookmarkButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 313
    iget-object v1, p0, Lcom/android/browser/NavigationBarPhone;->mTabSwitcher:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 314
    iget-object v1, p0, Lcom/android/browser/NavigationBarPhone;->mDividerBeforeTab:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 315
    iget-object v1, p0, Lcom/android/browser/NavigationBarPhone;->mMore:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 316
    iget-object v1, p0, Lcom/android/browser/NavigationBarPhone;->mDivider:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 317
    iget-object v1, p0, Lcom/android/browser/NavigationBarPhone;->mTitleContainer:Landroid/view/View;

    iget-object v3, p0, Lcom/android/browser/NavigationBarPhone;->mTextfieldBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_6

    .line 276
    :pswitch_data_ee
    .packed-switch 0x0
        :pswitch_25
        :pswitch_6b
        :pswitch_b5
    .end packed-switch
.end method

.method public onTabDataChanged(Lcom/android/browser/Tab;)V
    .registers 4
    .parameter "tab"

    .prologue
    .line 332
    invoke-super {p0, p1}, Lcom/android/browser/NavigationBarBase;->onTabDataChanged(Lcom/android/browser/Tab;)V

    .line 333
    iget-object v1, p0, Lcom/android/browser/NavigationBarPhone;->mIncognitoIcon:Landroid/view/View;

    invoke-virtual {p1}, Lcom/android/browser/Tab;->isPrivateBrowsingEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    :goto_c
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 335
    return-void

    .line 333
    :cond_10
    const/16 v0, 0x8

    goto :goto_c
.end method

.method setDisplayTitle(Ljava/lang/String;)V
    .registers 5
    .parameter "title"

    .prologue
    const/4 v2, 0x0

    .line 168
    iget-object v0, p0, Lcom/android/browser/NavigationBarBase;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v0, p1}, Lcom/android/browser/UrlInputView;->setTag(Ljava/lang/Object;)V

    .line 169
    invoke-virtual {p0}, Lcom/android/browser/NavigationBarPhone;->isEditingUrl()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 170
    if-nez p1, :cond_1c

    .line 171
    iget-object v0, p0, Lcom/android/browser/NavigationBarBase;->mUrlInput:Lcom/android/browser/UrlInputView;

    const v1, 0x7f0c0004

    invoke-virtual {v0, v1}, Lcom/android/browser/UrlInputView;->setText(I)V

    .line 175
    :goto_16
    iget-object v0, p0, Lcom/android/browser/NavigationBarBase;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v0, v2}, Lcom/android/browser/UrlInputView;->setSelection(I)V

    .line 177
    :cond_1b
    return-void

    .line 173
    :cond_1c
    iget-object v0, p0, Lcom/android/browser/NavigationBarBase;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-static {p1}, Lcom/android/browser/UrlUtils;->stripUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/UrlInputView;->setText(Ljava/lang/CharSequence;Z)V

    goto :goto_16
.end method

.method public setReader(Z)V
    .registers 5
    .parameter "value"

    .prologue
    const/4 v2, 0x0

    .line 262
    iget-object v0, p0, Lcom/android/browser/NavigationBarBase;->mReaderIcon:Landroid/widget/ImageView;

    if-nez v0, :cond_6

    .line 271
    :goto_5
    return-void

    .line 264
    :cond_6
    if-nez p1, :cond_15

    .line 265
    iget-object v0, p0, Lcom/android/browser/NavigationBarBase;->mReaderIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 266
    iget-object v0, p0, Lcom/android/browser/NavigationBarBase;->mReaderIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_5

    .line 268
    :cond_15
    iget-object v0, p0, Lcom/android/browser/NavigationBarBase;->mReaderIcon:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 269
    iget-object v0, p0, Lcom/android/browser/NavigationBarBase;->mReaderIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5
.end method

.method setRss(Z)V
    .registers 4
    .parameter "value"

    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/browser/NavigationBarPhone;->mRssIcon:Landroid/widget/ImageView;

    if-nez v0, :cond_5

    .line 355
    :goto_4
    return-void

    .line 348
    :cond_5
    if-nez p1, :cond_f

    .line 349
    iget-object v0, p0, Lcom/android/browser/NavigationBarPhone;->mRssIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    .line 351
    :cond_f
    iget-object v0, p0, Lcom/android/browser/NavigationBarPhone;->mRssIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 352
    iget-object v0, p0, Lcom/android/browser/NavigationBarPhone;->mRssIcon:Landroid/widget/ImageView;

    const v1, 0x7f020066

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 353
    iget-object v0, p0, Lcom/android/browser/NavigationBarPhone;->mRssIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4
.end method

.method protected setSearchMode(Z)V
    .registers 8
    .parameter "voiceSearchEnabled"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 116
    if-eqz p1, :cond_21

    iget-object v4, p0, Lcom/android/browser/NavigationBarBase;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v4}, Lcom/android/browser/UiController;->supportsVoiceSearch()Z

    move-result v4

    if-eqz v4, :cond_21

    const/4 v1, 0x1

    .line 119
    .local v1, showvoicebutton:Z
    :goto_e
    :try_start_e
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Z)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 120
    iget-object v4, p0, Lcom/android/browser/NavigationBarPhone;->mVoiceButton:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 128
    :goto_20
    return-void

    .end local v1           #showvoicebutton:Z
    :cond_21
    move v1, v2

    .line 116
    goto :goto_e

    .line 122
    .restart local v1       #showvoicebutton:Z
    :cond_23
    iget-object v5, p0, Lcom/android/browser/NavigationBarPhone;->mVoiceButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_35

    move v4, v2

    :goto_28
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_2b
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_e .. :try_end_2b} :catch_2c

    goto :goto_20

    .line 124
    :catch_2c
    move-exception v0

    .line 125
    .local v0, e:Ljava/lang/NoClassDefFoundError;
    iget-object v4, p0, Lcom/android/browser/NavigationBarPhone;->mVoiceButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_37

    :goto_31
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_20

    .end local v0           #e:Ljava/lang/NoClassDefFoundError;
    :cond_35
    move v4, v3

    .line 122
    goto :goto_28

    .restart local v0       #e:Ljava/lang/NoClassDefFoundError;
    :cond_37
    move v2, v3

    .line 125
    goto :goto_31
.end method

.method showMenu(Landroid/view/View;)V
    .registers 6
    .parameter "anchor"

    .prologue
    .line 218
    iget-object v2, p0, Lcom/android/browser/NavigationBarBase;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v2}, Lcom/android/browser/UiController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 219
    .local v0, activity:Landroid/app/Activity;
    iget-object v2, p0, Lcom/android/browser/NavigationBarPhone;->mPopupMenu:Landroid/widget/PopupMenu;

    if-nez v2, :cond_2d

    .line 220
    new-instance v2, Landroid/widget/PopupMenu;

    iget-object v3, p0, Lcom/android/browser/NavigationBarPhone;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v2, p0, Lcom/android/browser/NavigationBarPhone;->mPopupMenu:Landroid/widget/PopupMenu;

    .line 221
    iget-object v2, p0, Lcom/android/browser/NavigationBarPhone;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v2, p0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 222
    iget-object v2, p0, Lcom/android/browser/NavigationBarPhone;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v2, p0}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    .line 223
    iget-object v2, p0, Lcom/android/browser/NavigationBarPhone;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v2}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    if-nez v2, :cond_2d

    .line 224
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/browser/NavigationBarPhone;->mPopupMenu:Landroid/widget/PopupMenu;

    .line 233
    :cond_2c
    :goto_2c
    return-void

    .line 228
    :cond_2d
    iget-object v2, p0, Lcom/android/browser/NavigationBarPhone;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v2}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    .line 229
    .local v1, menu:Landroid/view/Menu;
    invoke-virtual {v0, v1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 230
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/browser/NavigationBarPhone;->mOverflowMenuShowing:Z

    .line 231
    iget-object v2, p0, Lcom/android/browser/NavigationBarPhone;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v2}, Landroid/widget/PopupMenu;->show()V

    goto :goto_2c
.end method
