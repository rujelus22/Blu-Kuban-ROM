.class public Lcom/android/browser/NavigationBarBase;
.super Landroid/widget/LinearLayout;
.source "NavigationBarBase.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Lcom/android/browser/UrlInputView$UrlInputListener;
.implements Lcom/android/browser/autocomplete/SuggestedTextController$TextChangeWatcher;


# instance fields
.field protected mBaseUi:Lcom/android/browser/BaseUi;

.field private mFavicon:Landroid/widget/ImageView;

.field protected mInVoiceMode:Z

.field private mLockIcon:Landroid/widget/ImageView;

.field protected mReaderIcon:Landroid/widget/ImageView;

.field protected mTitleBar:Lcom/android/browser/TitleBar;

.field protected mUiController:Lcom/android/browser/UiController;

.field protected mUrlInput:Lcom/android/browser/UrlInputView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/NavigationBarBase;->mInVoiceMode:Z

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/NavigationBarBase;->mInVoiceMode:Z

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/NavigationBarBase;->mInVoiceMode:Z

    .line 67
    return-void
.end method


# virtual methods
.method clearCompletions()V
    .registers 3

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/browser/NavigationBarBase;->mUrlInput:Lcom/android/browser/UrlInputView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/browser/UrlInputView;->setSuggestedText(Ljava/lang/String;)V

    .line 190
    return-void
.end method

.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .registers 4
    .parameter "evt"

    .prologue
    .line 269
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_e

    .line 271
    iget-object v0, p0, Lcom/android/browser/NavigationBarBase;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v0}, Lcom/android/browser/UrlInputView;->clearFocus()V

    .line 272
    const/4 v0, 0x1

    .line 274
    :goto_d
    return v0

    :cond_e
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_d
.end method

.method public isEditingUrl()Z
    .registers 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/browser/NavigationBarBase;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v0}, Lcom/android/browser/UrlInputView;->hasFocus()Z

    move-result v0

    return v0
.end method

.method public isMenuShowing()Z
    .registers 2

    .prologue
    .line 308
    const/4 v0, 0x0

    return v0
.end method

.method public onAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .parameter "text"
    .parameter "extra"
    .parameter "source"

    .prologue
    .line 201
    iget-object v5, p0, Lcom/android/browser/NavigationBarBase;->mUiController:Lcom/android/browser/UiController;

    if-nez v5, :cond_5

    .line 236
    :goto_4
    return-void

    .line 204
    :cond_5
    iget-object v5, p0, Lcom/android/browser/NavigationBarBase;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v5}, Lcom/android/browser/UiController;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebView;->requestFocus()Z

    .line 205
    const-string v5, "browser-type"

    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_36

    .line 206
    const/4 v5, 0x0

    invoke-static {p1, v5}, Lcom/android/browser/UrlUtils;->smartUrlFilter(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 207
    .local v4, url:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/browser/NavigationBarBase;->mBaseUi:Lcom/android/browser/BaseUi;

    invoke-virtual {v5}, Lcom/android/browser/BaseUi;->getActiveTab()Lcom/android/browser/Tab;

    move-result-object v3

    .line 210
    .local v3, t:Lcom/android/browser/Tab;
    if-eqz v4, :cond_36

    if-eqz v3, :cond_36

    const-string v5, "javascript:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_36

    .line 211
    iget-object v5, p0, Lcom/android/browser/NavigationBarBase;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v5, v3, v4}, Lcom/android/browser/UiController;->loadUrl(Lcom/android/browser/Tab;Ljava/lang/String;)V

    .line 212
    invoke-virtual {p0, p1}, Lcom/android/browser/NavigationBarBase;->setDisplayTitle(Ljava/lang/String;)V

    goto :goto_4

    .line 216
    .end local v3           #t:Lcom/android/browser/Tab;
    .end local v4           #url:Ljava/lang/String;
    :cond_36
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 217
    .local v2, i:Landroid/content/Intent;
    const/4 v0, 0x0

    .line 218
    .local v0, action:Ljava/lang/String;
    const-string v5, "voice-search"

    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_70

    .line 219
    const-string v0, "android.speech.action.VOICE_SEARCH_RESULTS"

    .line 220
    const/4 p3, 0x0

    .line 224
    :goto_47
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    const-string v5, "query"

    invoke-virtual {v2, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    if-eqz p2, :cond_56

    .line 227
    const-string v5, "intent_extra_data_key"

    invoke-virtual {v2, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 229
    :cond_56
    if-eqz p3, :cond_67

    .line 230
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 231
    .local v1, appData:Landroid/os/Bundle;
    const-string v5, "source"

    invoke-virtual {v1, v5, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const-string v5, "app_data"

    invoke-virtual {v2, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 234
    .end local v1           #appData:Landroid/os/Bundle;
    :cond_67
    iget-object v5, p0, Lcom/android/browser/NavigationBarBase;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v5, v2}, Lcom/android/browser/UiController;->handleNewIntent(Landroid/content/Intent;)V

    .line 235
    invoke-virtual {p0, p1}, Lcom/android/browser/NavigationBarBase;->setDisplayTitle(Ljava/lang/String;)V

    goto :goto_4

    .line 222
    :cond_70
    const-string v0, "android.intent.action.SEARCH"

    goto :goto_47
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/browser/NavigationBarBase;->mReaderIcon:Landroid/widget/ImageView;

    if-ne v0, p1, :cond_9

    .line 114
    iget-object v0, p0, Lcom/android/browser/NavigationBarBase;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v0}, Lcom/android/browser/UiController;->displayReader()V

    .line 117
    :cond_9
    return-void
.end method

.method public onCopySuggestion(Ljava/lang/String;)V
    .registers 4
    .parameter "text"

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/browser/NavigationBarBase;->mUrlInput:Lcom/android/browser/UrlInputView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/browser/UrlInputView;->setText(Ljava/lang/CharSequence;Z)V

    .line 259
    if-eqz p1, :cond_11

    .line 260
    iget-object v0, p0, Lcom/android/browser/NavigationBarBase;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/browser/UrlInputView;->setSelection(I)V

    .line 262
    :cond_11
    return-void
.end method

.method public onDismiss()V
    .registers 3

    .prologue
    .line 240
    iget-object v1, p0, Lcom/android/browser/NavigationBarBase;->mBaseUi:Lcom/android/browser/BaseUi;

    invoke-virtual {v1}, Lcom/android/browser/BaseUi;->getActiveTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 241
    .local v0, currentTab:Lcom/android/browser/Tab;
    iget-object v1, p0, Lcom/android/browser/NavigationBarBase;->mBaseUi:Lcom/android/browser/BaseUi;

    invoke-virtual {v1}, Lcom/android/browser/BaseUi;->hideTitleBar()V

    .line 242
    new-instance v1, Lcom/android/browser/NavigationBarBase$1;

    invoke-direct {v1, p0, v0}, Lcom/android/browser/NavigationBarBase$1;-><init>(Lcom/android/browser/NavigationBarBase;Lcom/android/browser/Tab;)V

    invoke-virtual {p0, v1}, Lcom/android/browser/NavigationBarBase;->post(Ljava/lang/Runnable;)Z

    .line 250
    return-void
.end method

.method protected onFinishInflate()V
    .registers 3

    .prologue
    .line 71
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 72
    const v0, 0x7f0d00c5

    invoke-virtual {p0, v0}, Lcom/android/browser/NavigationBarBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/browser/NavigationBarBase;->mLockIcon:Landroid/widget/ImageView;

    .line 73
    const v0, 0x7f0d0004

    invoke-virtual {p0, v0}, Lcom/android/browser/NavigationBarBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/browser/NavigationBarBase;->mFavicon:Landroid/widget/ImageView;

    .line 74
    const v0, 0x7f0d0006

    invoke-virtual {p0, v0}, Lcom/android/browser/NavigationBarBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/browser/UrlInputView;

    iput-object v0, p0, Lcom/android/browser/NavigationBarBase;->mUrlInput:Lcom/android/browser/UrlInputView;

    .line 76
    const v0, 0x7f0d00d9

    invoke-virtual {p0, v0}, Lcom/android/browser/NavigationBarBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/browser/NavigationBarBase;->mReaderIcon:Landroid/widget/ImageView;

    .line 78
    iget-object v0, p0, Lcom/android/browser/NavigationBarBase;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v0, p0}, Lcom/android/browser/UrlInputView;->setUrlInputListener(Lcom/android/browser/UrlInputView$UrlInputListener;)V

    .line 79
    iget-object v0, p0, Lcom/android/browser/NavigationBarBase;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v0, p0}, Lcom/android/browser/UrlInputView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 80
    iget-object v0, p0, Lcom/android/browser/NavigationBarBase;->mUrlInput:Lcom/android/browser/UrlInputView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/browser/UrlInputView;->setSelectAllOnFocus(Z)V

    .line 81
    iget-object v0, p0, Lcom/android/browser/NavigationBarBase;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v0, p0}, Lcom/android/browser/UrlInputView;->addQueryTextWatcher(Lcom/android/browser/autocomplete/SuggestedTextController$TextChangeWatcher;)V

    .line 83
    iget-object v0, p0, Lcom/android/browser/NavigationBarBase;->mReaderIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .registers 6
    .parameter "view"
    .parameter "hasFocus"

    .prologue
    .line 122
    if-nez p2, :cond_10

    invoke-virtual {p1}, Landroid/view/View;->isInTouchMode()Z

    move-result v1

    if-nez v1, :cond_10

    iget-object v1, p0, Lcom/android/browser/NavigationBarBase;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v1}, Lcom/android/browser/UrlInputView;->needsUpdate()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 123
    :cond_10
    invoke-virtual {p0, p2}, Lcom/android/browser/NavigationBarBase;->setFocusState(Z)V

    .line 125
    :cond_13
    if-eqz p2, :cond_2e

    .line 126
    iget-object v1, p0, Lcom/android/browser/NavigationBarBase;->mBaseUi:Lcom/android/browser/BaseUi;

    invoke-virtual {v1}, Lcom/android/browser/BaseUi;->showTitleBar()V

    .line 127
    iget-object v1, p0, Lcom/android/browser/NavigationBarBase;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v1}, Lcom/android/browser/UrlInputView;->forceIme()V

    .line 128
    iget-boolean v1, p0, Lcom/android/browser/NavigationBarBase;->mInVoiceMode:Z

    if-eqz v1, :cond_28

    .line 129
    iget-object v1, p0, Lcom/android/browser/NavigationBarBase;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v1}, Lcom/android/browser/UrlInputView;->forceFilter()V

    .line 145
    :cond_28
    :goto_28
    iget-object v1, p0, Lcom/android/browser/NavigationBarBase;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v1}, Lcom/android/browser/UrlInputView;->clearNeedsUpdate()V

    .line 146
    return-void

    .line 131
    :cond_2e
    iget-object v1, p0, Lcom/android/browser/NavigationBarBase;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v1}, Lcom/android/browser/UrlInputView;->needsUpdate()Z

    move-result v1

    if-nez v1, :cond_28

    .line 132
    iget-object v1, p0, Lcom/android/browser/NavigationBarBase;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v1}, Lcom/android/browser/UrlInputView;->dismissDropDown()V

    .line 133
    iget-object v1, p0, Lcom/android/browser/NavigationBarBase;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v1}, Lcom/android/browser/UrlInputView;->hideIME()V

    .line 136
    iget-object v1, p0, Lcom/android/browser/NavigationBarBase;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v1}, Lcom/android/browser/UiController;->getTabControl()Lcom/android/browser/TabControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 137
    .local v0, currentTab:Lcom/android/browser/Tab;
    iget-object v1, p0, Lcom/android/browser/NavigationBarBase;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v1}, Lcom/android/browser/UrlInputView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-eqz v1, :cond_6a

    iget-object v1, p0, Lcom/android/browser/NavigationBarBase;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v1}, Lcom/android/browser/UrlInputView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/browser/Tab;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_73

    .line 139
    :cond_6a
    if-eqz v0, :cond_73

    .line 140
    invoke-virtual {v0}, Lcom/android/browser/Tab;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/browser/NavigationBarBase;->setDisplayTitle(Ljava/lang/String;)V

    .line 143
    :cond_73
    iget-object v1, p0, Lcom/android/browser/NavigationBarBase;->mBaseUi:Lcom/android/browser/BaseUi;

    invoke-virtual {v1}, Lcom/android/browser/BaseUi;->suggestHideTitleBar()V

    goto :goto_28
.end method

.method public onProgressStarted()V
    .registers 1

    .prologue
    .line 302
    return-void
.end method

.method public onProgressStopped()V
    .registers 1

    .prologue
    .line 305
    return-void
.end method

.method public onTabDataChanged(Lcom/android/browser/Tab;)V
    .registers 2
    .parameter "tab"

    .prologue
    .line 312
    return-void
.end method

.method public onTextChanged(Ljava/lang/String;)V
    .registers 4
    .parameter "newText"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/browser/NavigationBarBase;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v0}, Lcom/android/browser/UrlInputView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 173
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/browser/NavigationBarBase;->setInVoiceMode(ZLjava/util/List;)V

    .line 175
    :cond_d
    return-void
.end method

.method registerDropdownChangeListener(Lcom/android/browser/UI$DropdownChangeListener;)V
    .registers 3
    .parameter "d"

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/browser/NavigationBarBase;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v0, p1}, Lcom/android/browser/UrlInputView;->registerDropdownChangeListener(Lcom/android/browser/UI$DropdownChangeListener;)V

    .line 279
    return-void
.end method

.method public setCurrentUrlIsBookmark(Z)V
    .registers 2
    .parameter "isBookmark"

    .prologue
    .line 265
    return-void
.end method

.method setDisplayTitle(Ljava/lang/String;)V
    .registers 4
    .parameter "title"

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/android/browser/NavigationBarBase;->isEditingUrl()Z

    move-result v0

    if-nez v0, :cond_c

    .line 163
    iget-object v0, p0, Lcom/android/browser/NavigationBarBase;->mUrlInput:Lcom/android/browser/UrlInputView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/browser/UrlInputView;->setText(Ljava/lang/CharSequence;Z)V

    .line 165
    :cond_c
    return-void
.end method

.method public setFavicon(Landroid/graphics/Bitmap;)V
    .registers 4
    .parameter "icon"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/browser/NavigationBarBase;->mFavicon:Landroid/widget/ImageView;

    if-nez v0, :cond_5

    .line 107
    :goto_4
    return-void

    .line 106
    :cond_5
    iget-object v0, p0, Lcom/android/browser/NavigationBarBase;->mFavicon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/browser/NavigationBarBase;->mBaseUi:Lcom/android/browser/BaseUi;

    invoke-virtual {v1, p1}, Lcom/android/browser/BaseUi;->getFaviconDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4
.end method

.method protected setFocusState(Z)V
    .registers 2
    .parameter "focus"

    .prologue
    .line 149
    return-void
.end method

.method public setInVoiceMode(ZLjava/util/List;)V
    .registers 4
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
    .line 180
    .local p2, voiceResults:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iput-boolean p1, p0, Lcom/android/browser/NavigationBarBase;->mInVoiceMode:Z

    .line 181
    iget-object v0, p0, Lcom/android/browser/NavigationBarBase;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v0, p2}, Lcom/android/browser/UrlInputView;->setVoiceResults(Ljava/util/List;)V

    .line 182
    return-void
.end method

.method setIncognitoMode(Z)V
    .registers 3
    .parameter "incognito"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/browser/NavigationBarBase;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v0, p1}, Lcom/android/browser/UrlInputView;->setIncognitoMode(Z)V

    .line 186
    return-void
.end method

.method public setLock(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .parameter "d"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/browser/NavigationBarBase;->mLockIcon:Landroid/widget/ImageView;

    if-nez v0, :cond_5

    .line 102
    :goto_4
    return-void

    .line 96
    :cond_5
    if-nez p1, :cond_f

    .line 97
    iget-object v0, p0, Lcom/android/browser/NavigationBarBase;->mLockIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    .line 99
    :cond_f
    iget-object v0, p0, Lcom/android/browser/NavigationBarBase;->mLockIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 100
    iget-object v0, p0, Lcom/android/browser/NavigationBarBase;->mLockIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4
.end method

.method protected setSearchMode(Z)V
    .registers 2
    .parameter "voiceSearchEnabled"

    .prologue
    .line 151
    return-void
.end method

.method public setTitleBar(Lcom/android/browser/TitleBar;)V
    .registers 4
    .parameter "titleBar"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/browser/NavigationBarBase;->mTitleBar:Lcom/android/browser/TitleBar;

    .line 89
    iget-object v0, p0, Lcom/android/browser/NavigationBarBase;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0}, Lcom/android/browser/TitleBar;->getUi()Lcom/android/browser/BaseUi;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/NavigationBarBase;->mBaseUi:Lcom/android/browser/BaseUi;

    .line 90
    iget-object v0, p0, Lcom/android/browser/NavigationBarBase;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0}, Lcom/android/browser/TitleBar;->getUiController()Lcom/android/browser/UiController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/NavigationBarBase;->mUiController:Lcom/android/browser/UiController;

    .line 91
    iget-object v0, p0, Lcom/android/browser/NavigationBarBase;->mUrlInput:Lcom/android/browser/UrlInputView;

    iget-object v1, p0, Lcom/android/browser/NavigationBarBase;->mUiController:Lcom/android/browser/UiController;

    invoke-virtual {v0, v1}, Lcom/android/browser/UrlInputView;->setController(Lcom/android/browser/UiController;)V

    .line 92
    return-void
.end method

.method startEditingUrl(Z)V
    .registers 4
    .parameter "clearInput"

    .prologue
    .line 287
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/browser/NavigationBarBase;->setVisibility(I)V

    .line 288
    iget-object v0, p0, Lcom/android/browser/NavigationBarBase;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0}, Lcom/android/browser/TitleBar;->useQuickControls()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 289
    iget-object v0, p0, Lcom/android/browser/NavigationBarBase;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0}, Lcom/android/browser/TitleBar;->getProgressView()Lcom/android/browser/PageProgressView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/browser/PageProgressView;->setVisibility(I)V

    .line 291
    :cond_17
    iget-object v0, p0, Lcom/android/browser/NavigationBarBase;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v0}, Lcom/android/browser/UrlInputView;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_24

    .line 292
    iget-object v0, p0, Lcom/android/browser/NavigationBarBase;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v0}, Lcom/android/browser/UrlInputView;->requestFocus()Z

    .line 294
    :cond_24
    if-eqz p1, :cond_2e

    .line 295
    iget-object v0, p0, Lcom/android/browser/NavigationBarBase;->mUrlInput:Lcom/android/browser/UrlInputView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/browser/UrlInputView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    :cond_2d
    :goto_2d
    return-void

    .line 296
    :cond_2e
    iget-boolean v0, p0, Lcom/android/browser/NavigationBarBase;->mInVoiceMode:Z

    if-eqz v0, :cond_2d

    .line 297
    iget-object v0, p0, Lcom/android/browser/NavigationBarBase;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v0}, Lcom/android/browser/UrlInputView;->showDropDown()V

    goto :goto_2d
.end method

.method stopEditingUrl()V
    .registers 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/browser/NavigationBarBase;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v0}, Lcom/android/browser/UrlInputView;->clearFocus()V

    .line 159
    return-void
.end method
