.class public abstract Lcom/android/browser/BaseUi;
.super Ljava/lang/Object;
.source "BaseUi.java"

# interfaces
.implements Lcom/android/browser/UI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/BaseUi$FullscreenHolder;
    }
.end annotation


# static fields
.field protected static final COVER_SCREEN_GRAVITY_CENTER:Landroid/widget/FrameLayout$LayoutParams;

.field protected static final COVER_SCREEN_PARAMS:Landroid/widget/FrameLayout$LayoutParams;


# instance fields
.field protected mActiveTab:Lcom/android/browser/Tab;

.field mActivity:Landroid/app/Activity;

.field private mActivityPaused:Z

.field protected mContentView:Landroid/widget/FrameLayout;

.field private mCustomView:Landroid/view/View;

.field private mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field protected mCustomViewContainer:Landroid/widget/FrameLayout;

.field private mDefaultVideoPoster:Landroid/graphics/Bitmap;

.field private mErrorConsoleContainer:Landroid/widget/LinearLayout;

.field protected mFullscreenContainer:Landroid/widget/FrameLayout;

.field protected mGenericFavicon:Landroid/graphics/drawable/Drawable;

.field private mHandler:Landroid/os/Handler;

.field private mInputManager:Landroid/view/inputmethod/InputMethodManager;

.field private mLockIconMixed:Landroid/graphics/drawable/Drawable;

.field private mLockIconSecure:Landroid/graphics/drawable/Drawable;

.field private mNavigationBar:Lcom/android/browser/NavigationBarBase;

.field private mOriginalOrientation:I

.field private mStopToast:Landroid/widget/Toast;

.field mTabControl:Lcom/android/browser/TabControl;

.field protected mTitleBar:Lcom/android/browser/TitleBar;

.field mUiController:Lcom/android/browser/UiController;

.field private mUrlBarAutoShow:Z

.field private mUrlBarAutoShowManager:Lcom/android/browser/UrlBarAutoShowManager;

.field protected mUseQuickControls:Z

.field private mVideoProgressView:Landroid/view/View;

.field private mWarningToast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, -0x1

    .line 66
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/android/browser/BaseUi;->COVER_SCREEN_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    .line 71
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x11

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    sput-object v0, Lcom/android/browser/BaseUi;->COVER_SCREEN_GRAVITY_CENTER:Landroid/widget/FrameLayout$LayoutParams;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/android/browser/UiController;)V
    .registers 9
    .parameter "browser"
    .parameter "controller"

    .prologue
    .line 121
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 98
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/browser/BaseUi;->mErrorConsoleContainer:Landroid/widget/LinearLayout;

    .line 850
    new-instance v2, Lcom/android/browser/BaseUi$2;

    invoke-direct {v2, p0}, Lcom/android/browser/BaseUi$2;-><init>(Lcom/android/browser/BaseUi;)V

    iput-object v2, p0, Lcom/android/browser/BaseUi;->mHandler:Landroid/os/Handler;

    .line 122
    iput-object p1, p0, Lcom/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    .line 123
    iput-object p2, p0, Lcom/android/browser/BaseUi;->mUiController:Lcom/android/browser/UiController;

    .line 124
    invoke-interface {p2}, Lcom/android/browser/UiController;->getTabControl()Lcom/android/browser/TabControl;

    move-result-object v2

    iput-object v2, p0, Lcom/android/browser/BaseUi;->mTabControl:Lcom/android/browser/TabControl;

    .line 125
    iget-object v2, p0, Lcom/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 126
    .local v1, res:Landroid/content/res/Resources;
    const-string v2, "input_method"

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    iput-object v2, p0, Lcom/android/browser/BaseUi;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    .line 128
    const v2, 0x7f020084

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/browser/BaseUi;->mLockIconSecure:Landroid/graphics/drawable/Drawable;

    .line 129
    const v2, 0x7f020085

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/browser/BaseUi;->mLockIconMixed:Landroid/graphics/drawable/Drawable;

    .line 130
    iget-object v2, p0, Lcom/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const v3, 0x1020002

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 132
    .local v0, frameLayout:Landroid/widget/FrameLayout;
    iget-object v2, p0, Lcom/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f04001d

    invoke-virtual {v2, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 134
    const v2, 0x7f0d005a

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/android/browser/BaseUi;->mContentView:Landroid/widget/FrameLayout;

    .line 136
    const v2, 0x7f0d0057

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/android/browser/BaseUi;->mCustomViewContainer:Landroid/widget/FrameLayout;

    .line 138
    const v2, 0x7f0d0059

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/browser/BaseUi;->mErrorConsoleContainer:Landroid/widget/LinearLayout;

    .line 140
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/browser/BrowserSettings;->useFullscreen()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/browser/BaseUi;->setFullscreen(Z)V

    .line 141
    const v2, 0x7f020002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/browser/BaseUi;->mGenericFavicon:Landroid/graphics/drawable/Drawable;

    .line 143
    new-instance v2, Lcom/android/browser/TitleBar;

    iget-object v3, p0, Lcom/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/android/browser/BaseUi;->mUiController:Lcom/android/browser/UiController;

    iget-object v5, p0, Lcom/android/browser/BaseUi;->mContentView:Landroid/widget/FrameLayout;

    invoke-direct {v2, v3, v4, p0, v5}, Lcom/android/browser/TitleBar;-><init>(Landroid/content/Context;Lcom/android/browser/UiController;Lcom/android/browser/BaseUi;Landroid/widget/FrameLayout;)V

    iput-object v2, p0, Lcom/android/browser/BaseUi;->mTitleBar:Lcom/android/browser/TitleBar;

    .line 145
    iget-object v2, p0, Lcom/android/browser/BaseUi;->mTitleBar:Lcom/android/browser/TitleBar;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Lcom/android/browser/TitleBar;->setProgress(I)V

    .line 146
    iget-object v2, p0, Lcom/android/browser/BaseUi;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v2}, Lcom/android/browser/TitleBar;->getNavigationBar()Lcom/android/browser/NavigationBarBase;

    move-result-object v2

    iput-object v2, p0, Lcom/android/browser/BaseUi;->mNavigationBar:Lcom/android/browser/NavigationBarBase;

    .line 147
    new-instance v2, Lcom/android/browser/UrlBarAutoShowManager;

    invoke-direct {v2, p0}, Lcom/android/browser/UrlBarAutoShowManager;-><init>(Lcom/android/browser/BaseUi;)V

    iput-object v2, p0, Lcom/android/browser/BaseUi;->mUrlBarAutoShowManager:Lcom/android/browser/UrlBarAutoShowManager;

    .line 151
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/browser/BaseUi;->mUrlBarAutoShow:Z

    .line 153
    return-void
.end method

.method private cancelStopToast()V
    .registers 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mStopToast:Landroid/widget/Toast;

    if-eqz v0, :cond_c

    .line 157
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mStopToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 158
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/BaseUi;->mStopToast:Landroid/widget/Toast;

    .line 160
    :cond_c
    return-void
.end method

.method private removeTabFromContentView(Lcom/android/browser/Tab;)V
    .registers 7
    .parameter "tab"

    .prologue
    .line 370
    invoke-virtual {p0}, Lcom/android/browser/BaseUi;->hideTitleBar()V

    .line 372
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    .line 373
    .local v2, mainView:Landroid/webkit/WebView;
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getViewContainer()Landroid/view/View;

    move-result-object v0

    .line 374
    .local v0, container:Landroid/view/View;
    if-nez v2, :cond_e

    .line 391
    :cond_d
    :goto_d
    return-void

    .line 380
    :cond_e
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/webkit/WebView;->setEmbeddedTitleBar(Landroid/view/View;)V

    .line 381
    const v4, 0x7f0d00bf

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    .line 383
    .local v3, wrapper:Landroid/widget/FrameLayout;
    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 384
    iget-object v4, p0, Lcom/android/browser/BaseUi;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 385
    iget-object v4, p0, Lcom/android/browser/BaseUi;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v4}, Lcom/android/browser/UiController;->endActionMode()V

    .line 386
    iget-object v4, p0, Lcom/android/browser/BaseUi;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v4, p1}, Lcom/android/browser/UiController;->removeSubWindow(Lcom/android/browser/Tab;)V

    .line 387
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Lcom/android/browser/Tab;->getErrorConsole(Z)Lcom/android/browser/ErrorConsoleView;

    move-result-object v1

    .line 388
    .local v1, errorConsole:Lcom/android/browser/ErrorConsoleView;
    if-eqz v1, :cond_d

    .line 389
    iget-object v4, p0, Lcom/android/browser/BaseUi;->mErrorConsoleContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    goto :goto_d
.end method

.method private updateLockIconImage(Lcom/android/browser/Tab$SecurityState;)V
    .registers 4
    .parameter "securityState"

    .prologue
    .line 629
    const/4 v0, 0x0

    .line 630
    .local v0, d:Landroid/graphics/drawable/Drawable;
    sget-object v1, Lcom/android/browser/Tab$SecurityState;->SECURITY_STATE_SECURE:Lcom/android/browser/Tab$SecurityState;

    if-ne p1, v1, :cond_d

    .line 631
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mLockIconSecure:Landroid/graphics/drawable/Drawable;

    .line 635
    :cond_7
    :goto_7
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mNavigationBar:Lcom/android/browser/NavigationBarBase;

    invoke-virtual {v1, v0}, Lcom/android/browser/NavigationBarBase;->setLock(Landroid/graphics/drawable/Drawable;)V

    .line 636
    return-void

    .line 632
    :cond_d
    sget-object v1, Lcom/android/browser/Tab$SecurityState;->SECURITY_STATE_MIXED:Lcom/android/browser/Tab$SecurityState;

    if-ne p1, v1, :cond_7

    .line 633
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mLockIconMixed:Landroid/graphics/drawable/Drawable;

    goto :goto_7
.end method


# virtual methods
.method public addTab(Lcom/android/browser/Tab;)V
    .registers 2
    .parameter "tab"

    .prologue
    .line 247
    return-void
.end method

.method public attachSubWindow(Landroid/view/View;)V
    .registers 4
    .parameter "container"

    .prologue
    .line 452
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 454
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 456
    :cond_f
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mContentView:Landroid/widget/FrameLayout;

    sget-object v1, Lcom/android/browser/BaseUi;->COVER_SCREEN_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 457
    return-void
.end method

.method public attachTab(Lcom/android/browser/Tab;)V
    .registers 2
    .parameter "tab"

    .prologue
    .line 329
    invoke-virtual {p0, p1}, Lcom/android/browser/BaseUi;->attachTabToContentView(Lcom/android/browser/Tab;)V

    .line 330
    return-void
.end method

.method protected attachTabToContentView(Lcom/android/browser/Tab;)V
    .registers 8
    .parameter "tab"

    .prologue
    .line 333
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v4

    if-nez v4, :cond_9

    .line 367
    :cond_8
    :goto_8
    return-void

    .line 336
    :cond_9
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getViewContainer()Landroid/view/View;

    move-result-object v0

    .line 337
    .local v0, container:Landroid/view/View;
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    .line 340
    .local v1, mainView:Landroid/webkit/WebView;
    const v4, 0x7f0d00bf

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    .line 342
    .local v3, wrapper:Landroid/widget/FrameLayout;
    invoke-virtual {v1}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 343
    .local v2, parent:Landroid/view/ViewGroup;
    if-eq v2, v3, :cond_54

    .line 344
    if-eqz v2, :cond_2e

    .line 345
    const-string v4, "BaseUi"

    const-string v5, "mMainView already has a parent in attachTabToContentView!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 349
    :cond_2e
    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 354
    :goto_31
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .end local v2           #parent:Landroid/view/ViewGroup;
    check-cast v2, Landroid/view/ViewGroup;

    .line 355
    .restart local v2       #parent:Landroid/view/ViewGroup;
    iget-object v4, p0, Lcom/android/browser/BaseUi;->mContentView:Landroid/widget/FrameLayout;

    if-eq v2, v4, :cond_5c

    .line 356
    if-eqz v2, :cond_47

    .line 357
    const-string v4, "BaseUi"

    const-string v5, "mContainer already has a parent in attachTabToContentView!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 361
    :cond_47
    iget-object v4, p0, Lcom/android/browser/BaseUi;->mContentView:Landroid/widget/FrameLayout;

    sget-object v5, Lcom/android/browser/BaseUi;->COVER_SCREEN_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v4, v0, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 366
    :goto_4e
    iget-object v4, p0, Lcom/android/browser/BaseUi;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v4, p1}, Lcom/android/browser/UiController;->attachSubWindow(Lcom/android/browser/Tab;)V

    goto :goto_8

    .line 351
    :cond_54
    const-string v4, "BaseUi"

    const-string v5, "mMainView is already attached to wrapper in attachTabToContentView!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31

    .line 363
    :cond_5c
    const-string v4, "BaseUi"

    const-string v5, "mContainer is already attached to content in attachTabToContentView!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4e
.end method

.method public bookmarkedStatusHasChanged(Lcom/android/browser/Tab;)V
    .registers 4
    .parameter "tab"

    .prologue
    .line 224
    invoke-virtual {p1}, Lcom/android/browser/Tab;->inForeground()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 225
    invoke-virtual {p1}, Lcom/android/browser/Tab;->isBookmarkedSite()Z

    move-result v0

    .line 226
    .local v0, isBookmark:Z
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mNavigationBar:Lcom/android/browser/NavigationBarBase;

    invoke-virtual {v1, v0}, Lcom/android/browser/NavigationBarBase;->setCurrentUrlIsBookmark(Z)V

    .line 228
    .end local v0           #isBookmark:Z
    :cond_f
    return-void
.end method

.method canShowTitleBar()Z
    .registers 2

    .prologue
    .line 477
    invoke-virtual {p0}, Lcom/android/browser/BaseUi;->isTitleBarShowing()Z

    move-result v0

    if-nez v0, :cond_22

    invoke-virtual {p0}, Lcom/android/browser/BaseUi;->isActivityPaused()Z

    move-result v0

    if-nez v0, :cond_22

    invoke-virtual {p0}, Lcom/android/browser/BaseUi;->getActiveTab()Lcom/android/browser/Tab;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-virtual {p0}, Lcom/android/browser/BaseUi;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/browser/BaseUi;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v0}, Lcom/android/browser/UiController;->isInCustomActionMode()Z

    move-result v0

    if-nez v0, :cond_22

    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public detachTab(Lcom/android/browser/Tab;)V
    .registers 2
    .parameter "tab"

    .prologue
    .line 324
    invoke-direct {p0, p1}, Lcom/android/browser/BaseUi;->removeTabFromContentView(Lcom/android/browser/Tab;)V

    .line 325
    return-void
.end method

.method public dismissDialog()V
    .registers 1

    .prologue
    .line 309
    return-void
.end method

.method public editUrl(Z)V
    .registers 3
    .parameter "clearInput"

    .prologue
    .line 467
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v0}, Lcom/android/browser/UiController;->isInCustomActionMode()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 468
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v0}, Lcom/android/browser/UiController;->endActionMode()V

    .line 470
    :cond_d
    invoke-virtual {p0}, Lcom/android/browser/BaseUi;->showTitleBar()V

    .line 471
    invoke-virtual {p0}, Lcom/android/browser/BaseUi;->getActiveTab()Lcom/android/browser/Tab;

    move-result-object v0

    if-eqz v0, :cond_25

    invoke-virtual {p0}, Lcom/android/browser/BaseUi;->getActiveTab()Lcom/android/browser/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/Tab;->isSnapshot()Z

    move-result v0

    if-nez v0, :cond_25

    .line 472
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mNavigationBar:Lcom/android/browser/NavigationBarBase;

    invoke-virtual {v0, p1}, Lcom/android/browser/NavigationBarBase;->startEditingUrl(Z)V

    .line 474
    :cond_25
    return-void
.end method

.method getActiveTab()Lcom/android/browser/Tab;
    .registers 2

    .prologue
    .line 291
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mActiveTab:Lcom/android/browser/Tab;

    return-object v0
.end method

.method public getActivity()Landroid/app/Activity;
    .registers 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getDefaultVideoPoster()Landroid/graphics/Bitmap;
    .registers 3

    .prologue
    .line 753
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mDefaultVideoPoster:Landroid/graphics/Bitmap;

    if-nez v0, :cond_13

    .line 754
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020031

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/BaseUi;->mDefaultVideoPoster:Landroid/graphics/Bitmap;

    .line 757
    :cond_13
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mDefaultVideoPoster:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getFaviconDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .registers 11
    .parameter "icon"

    .prologue
    const/4 v1, 0x1

    const/4 v8, 0x2

    .line 809
    const/4 v2, 0x3

    new-array v6, v2, [Landroid/graphics/drawable/Drawable;

    .line 810
    .local v6, array:[Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    new-instance v3, Landroid/graphics/drawable/PaintDrawable;

    const/high16 v4, -0x100

    invoke-direct {v3, v4}, Landroid/graphics/drawable/PaintDrawable;-><init>(I)V

    aput-object v3, v6, v2

    .line 811
    new-instance v7, Landroid/graphics/drawable/PaintDrawable;

    const/4 v2, -0x1

    invoke-direct {v7, v2}, Landroid/graphics/drawable/PaintDrawable;-><init>(I)V

    .line 812
    .local v7, p:Landroid/graphics/drawable/PaintDrawable;
    aput-object v7, v6, v1

    .line 813
    if-nez p1, :cond_32

    .line 814
    iget-object v2, p0, Lcom/android/browser/BaseUi;->mGenericFavicon:Landroid/graphics/drawable/Drawable;

    aput-object v2, v6, v8

    .line 818
    :goto_1d
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v0, v6}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .local v0, d:Landroid/graphics/drawable/LayerDrawable;
    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    .line 819
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    move v1, v8

    move v2, v8

    move v3, v8

    move v4, v8

    move v5, v8

    .line 820
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 821
    return-object v0

    .line 816
    .end local v0           #d:Landroid/graphics/drawable/LayerDrawable;
    :cond_32
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    aput-object v2, v6, v8

    goto :goto_1d
.end method

.method protected getMenu()Landroid/view/Menu;
    .registers 4

    .prologue
    .line 792
    new-instance v0, Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v1, p0, Lcom/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    .line 793
    .local v0, menu:Lcom/android/internal/view/menu/MenuBuilder;
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f100005

    invoke-virtual {v1, v2, v0}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 794
    return-object v0
.end method

.method public getTitleBar()Lcom/android/browser/TitleBar;
    .registers 2

    .prologue
    .line 506
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mTitleBar:Lcom/android/browser/TitleBar;

    return-object v0
.end method

.method public getVideoLoadingProgressView()Landroid/view/View;
    .registers 4

    .prologue
    .line 762
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mVideoProgressView:Landroid/view/View;

    if-nez v1, :cond_14

    .line 763
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 764
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f04005a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/BaseUi;->mVideoProgressView:Landroid/view/View;

    .line 767
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    :cond_14
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mVideoProgressView:Landroid/view/View;

    return-object v1
.end method

.method protected getWebView()Landroid/webkit/WebView;
    .registers 2

    .prologue
    .line 784
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mActiveTab:Lcom/android/browser/Tab;

    if-eqz v0, :cond_b

    .line 785
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mActiveTab:Lcom/android/browser/Tab;

    invoke-virtual {v0}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 787
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public hideAutoLogin(Lcom/android/browser/Tab;)V
    .registers 3
    .parameter "tab"

    .prologue
    .line 604
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/browser/BaseUi;->updateAutoLogin(Lcom/android/browser/Tab;Z)V

    .line 605
    return-void
.end method

.method protected hideTitleBar()V
    .registers 2

    .prologue
    .line 492
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0}, Lcom/android/browser/TitleBar;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 493
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0}, Lcom/android/browser/TitleBar;->hide()V

    .line 495
    :cond_d
    return-void
.end method

.method protected isActivityPaused()Z
    .registers 2

    .prologue
    .line 183
    iget-boolean v0, p0, Lcom/android/browser/BaseUi;->mActivityPaused:Z

    return v0
.end method

.method public isCustomViewShowing()Z
    .registers 2

    .prologue
    .line 582
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isEditingUrl()Z
    .registers 2

    .prologue
    .line 502
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0}, Lcom/android/browser/TitleBar;->isEditingUrl()Z

    move-result v0

    return v0
.end method

.method public isLoading()Z
    .registers 2

    .prologue
    .line 825
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mActiveTab:Lcom/android/browser/Tab;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/browser/BaseUi;->mActiveTab:Lcom/android/browser/Tab;

    invoke-virtual {v0}, Lcom/android/browser/Tab;->inPageLoad()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method protected isTitleBarShowing()Z
    .registers 2

    .prologue
    .line 498
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0}, Lcom/android/browser/TitleBar;->isShowing()Z

    move-result v0

    return v0
.end method

.method public isWebShowing()Z
    .registers 2

    .prologue
    .line 594
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mCustomView:Landroid/view/View;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public needsRestoreAllTabs()Z
    .registers 2

    .prologue
    .line 242
    const/4 v0, 0x1

    return v0
.end method

.method public onActionModeFinished(Z)V
    .registers 2
    .parameter "inLoad"

    .prologue
    .line 667
    return-void
.end method

.method public onBackKey()Z
    .registers 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_b

    .line 198
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v0}, Lcom/android/browser/UiController;->hideCustomView()V

    .line 199
    const/4 v0, 0x1

    .line 201
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .parameter "config"

    .prologue
    .line 187
    return-void
.end method

.method public onContextMenuClosed(Landroid/view/Menu;Z)V
    .registers 3
    .parameter "menu"
    .parameter "inLoad"

    .prologue
    .line 718
    return-void
.end method

.method public onContextMenuCreated(Landroid/view/Menu;)V
    .registers 2
    .parameter "menu"

    .prologue
    .line 714
    return-void
.end method

.method public onExtendedMenuClosed(Z)V
    .registers 2
    .parameter "inLoad"

    .prologue
    .line 710
    return-void
.end method

.method public onExtendedMenuOpened()V
    .registers 1

    .prologue
    .line 697
    return-void
.end method

.method public onHideCustomView()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 569
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mCustomView:Landroid/view/View;

    if-nez v1, :cond_6

    .line 578
    :goto_5
    return-void

    .line 571
    :cond_6
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 572
    .local v0, decor:Landroid/widget/FrameLayout;
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mFullscreenContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 573
    iput-object v2, p0, Lcom/android/browser/BaseUi;->mFullscreenContainer:Landroid/widget/FrameLayout;

    .line 574
    iput-object v2, p0, Lcom/android/browser/BaseUi;->mCustomView:Landroid/view/View;

    .line 575
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-interface {v1}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 577
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    iget v2, p0, Lcom/android/browser/BaseUi;->mOriginalOrientation:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_5
.end method

.method public onMenuKey()Z
    .registers 2

    .prologue
    .line 206
    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 701
    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsMenuClosed(Z)V
    .registers 2
    .parameter "inLoad"

    .prologue
    .line 706
    return-void
.end method

.method public onOptionsMenuOpened()V
    .registers 1

    .prologue
    .line 693
    return-void
.end method

.method public onPageStopped(Lcom/android/browser/Tab;)V
    .registers 5
    .parameter "tab"

    .prologue
    .line 232
    invoke-direct {p0}, Lcom/android/browser/BaseUi;->cancelStopToast()V

    .line 233
    invoke-virtual {p1}, Lcom/android/browser/Tab;->inForeground()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 234
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0c0025

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/BaseUi;->mStopToast:Landroid/widget/Toast;

    .line 236
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mStopToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 238
    :cond_1a
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/android/browser/BaseUi;->isCustomViewShowing()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 166
    invoke-virtual {p0}, Lcom/android/browser/BaseUi;->onHideCustomView()V

    .line 168
    :cond_9
    invoke-direct {p0}, Lcom/android/browser/BaseUi;->cancelStopToast()V

    .line 169
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/BaseUi;->mActivityPaused:Z

    .line 170
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .parameter "menu"

    .prologue
    .line 684
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 173
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/browser/BaseUi;->mActivityPaused:Z

    .line 176
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 177
    .local v0, ct:Lcom/android/browser/Tab;
    if-eqz v0, :cond_e

    .line 178
    invoke-virtual {p0, v0}, Lcom/android/browser/BaseUi;->setActiveTab(Lcom/android/browser/Tab;)V

    .line 180
    :cond_e
    return-void
.end method

.method public onSetWebView(Lcom/android/browser/Tab;Landroid/webkit/WebView;)V
    .registers 9
    .parameter "tab"
    .parameter "webView"

    .prologue
    .line 395
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getViewContainer()Landroid/view/View;

    move-result-object v0

    .line 396
    .local v0, container:Landroid/view/View;
    if-nez v0, :cond_19

    .line 399
    iget-object v2, p0, Lcom/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040040

    iget-object v4, p0, Lcom/android/browser/BaseUi;->mContentView:Landroid/widget/FrameLayout;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 401
    invoke-virtual {p1, v0}, Lcom/android/browser/Tab;->setViewContainer(Landroid/view/View;)V

    .line 403
    :cond_19
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    if-eq v2, p2, :cond_2f

    .line 405
    const v2, 0x7f0d00bf

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 407
    .local v1, wrapper:Landroid/widget/FrameLayout;
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 409
    .end local v1           #wrapper:Landroid/widget/FrameLayout;
    :cond_2f
    return-void
.end method

.method public onTabDataChanged(Lcom/android/browser/Tab;)V
    .registers 3
    .parameter "tab"

    .prologue
    .line 213
    invoke-virtual {p0, p1}, Lcom/android/browser/BaseUi;->setUrlTitle(Lcom/android/browser/Tab;)V

    .line 214
    invoke-virtual {p0, p1}, Lcom/android/browser/BaseUi;->setFavicon(Lcom/android/browser/Tab;)V

    .line 215
    invoke-virtual {p0, p1}, Lcom/android/browser/BaseUi;->updateLockIconToLatest(Lcom/android/browser/Tab;)V

    .line 216
    invoke-virtual {p0, p1}, Lcom/android/browser/BaseUi;->updateNavigationState(Lcom/android/browser/Tab;)V

    .line 217
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0, p1}, Lcom/android/browser/TitleBar;->onTabDataChanged(Lcom/android/browser/Tab;)V

    .line 218
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mNavigationBar:Lcom/android/browser/NavigationBarBase;

    invoke-virtual {v0, p1}, Lcom/android/browser/NavigationBarBase;->onTabDataChanged(Lcom/android/browser/Tab;)V

    .line 219
    invoke-virtual {p0, p1}, Lcom/android/browser/BaseUi;->onProgressChanged(Lcom/android/browser/Tab;)V

    .line 220
    return-void
.end method

.method public onUpdateUrl(Ljava/lang/String;)V
    .registers 3
    .parameter "url"

    .prologue
    .line 653
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mNavigationBar:Lcom/android/browser/NavigationBarBase;

    invoke-virtual {v0, p1}, Lcom/android/browser/NavigationBarBase;->setDisplayTitle(Ljava/lang/String;)V

    .line 654
    return-void
.end method

.method protected refreshWebView()V
    .registers 2

    .prologue
    .line 460
    invoke-virtual {p0}, Lcom/android/browser/BaseUi;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 461
    .local v0, web:Landroid/webkit/WebView;
    if-eqz v0, :cond_9

    .line 462
    invoke-virtual {v0}, Landroid/webkit/WebView;->invalidate()V

    .line 464
    :cond_9
    return-void
.end method

.method public registerDropdownChangeListener(Lcom/android/browser/UI$DropdownChangeListener;)V
    .registers 3
    .parameter "d"

    .prologue
    .line 531
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mNavigationBar:Lcom/android/browser/NavigationBarBase;

    invoke-virtual {v0, p1}, Lcom/android/browser/NavigationBarBase;->registerDropdownChangeListener(Lcom/android/browser/UI$DropdownChangeListener;)V

    .line 532
    return-void
.end method

.method public removeSubWindow(Landroid/view/View;)V
    .registers 3
    .parameter "subviewContainer"

    .prologue
    .line 443
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 444
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v0}, Lcom/android/browser/UiController;->endActionMode()V

    .line 445
    return-void
.end method

.method public removeTab(Lcom/android/browser/Tab;)V
    .registers 3
    .parameter "tab"

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mActiveTab:Lcom/android/browser/Tab;

    if-ne v0, p1, :cond_a

    .line 317
    invoke-direct {p0, p1}, Lcom/android/browser/BaseUi;->removeTabFromContentView(Lcom/android/browser/Tab;)V

    .line 318
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/BaseUi;->mActiveTab:Lcom/android/browser/Tab;

    .line 320
    :cond_a
    return-void
.end method

.method public revertVoiceTitleBar(Lcom/android/browser/Tab;)V
    .registers 6
    .parameter "tab"

    .prologue
    .line 524
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mNavigationBar:Lcom/android/browser/NavigationBarBase;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/browser/NavigationBarBase;->setInVoiceMode(ZLjava/util/List;)V

    .line 525
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 526
    .local v0, url:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mNavigationBar:Lcom/android/browser/NavigationBarBase;

    invoke-virtual {v1, v0}, Lcom/android/browser/NavigationBarBase;->setDisplayTitle(Ljava/lang/String;)V

    .line 527
    return-void
.end method

.method public runDialog()V
    .registers 1

    .prologue
    .line 305
    return-void
.end method

.method public setActiveTab(Lcom/android/browser/Tab;)V
    .registers 5
    .parameter "tab"

    .prologue
    .line 251
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 252
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mActiveTab:Lcom/android/browser/Tab;

    if-eq p1, v1, :cond_1f

    iget-object v1, p0, Lcom/android/browser/BaseUi;->mActiveTab:Lcom/android/browser/Tab;

    if-eqz v1, :cond_1f

    .line 253
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mActiveTab:Lcom/android/browser/Tab;

    invoke-direct {p0, v1}, Lcom/android/browser/BaseUi;->removeTabFromContentView(Lcom/android/browser/Tab;)V

    .line 254
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mActiveTab:Lcom/android/browser/Tab;

    invoke-virtual {v1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 255
    .local v0, web:Landroid/webkit/WebView;
    if-eqz v0, :cond_1f

    .line 256
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 259
    .end local v0           #web:Landroid/webkit/WebView;
    :cond_1f
    iput-object p1, p0, Lcom/android/browser/BaseUi;->mActiveTab:Lcom/android/browser/Tab;

    .line 260
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mActiveTab:Lcom/android/browser/Tab;

    invoke-virtual {v1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 261
    .restart local v0       #web:Landroid/webkit/WebView;
    invoke-virtual {p0}, Lcom/android/browser/BaseUi;->updateUrlBarAutoShowManagerTarget()V

    .line 262
    invoke-virtual {p0, p1}, Lcom/android/browser/BaseUi;->attachTabToContentView(Lcom/android/browser/Tab;)V

    .line 263
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v1}, Lcom/android/browser/UiController;->shouldShowErrorConsole()Z

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/android/browser/BaseUi;->setShouldShowErrorConsole(Lcom/android/browser/Tab;Z)V

    .line 264
    invoke-virtual {p0, p1}, Lcom/android/browser/BaseUi;->onTabDataChanged(Lcom/android/browser/Tab;)V

    .line 265
    invoke-virtual {p0, p1}, Lcom/android/browser/BaseUi;->onProgressChanged(Lcom/android/browser/Tab;)V

    .line 266
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mNavigationBar:Lcom/android/browser/NavigationBarBase;

    invoke-virtual {p1}, Lcom/android/browser/Tab;->isPrivateBrowsingEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/browser/NavigationBarBase;->setIncognitoMode(Z)V

    .line 267
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/browser/BaseUi;->updateAutoLogin(Lcom/android/browser/Tab;Z)V

    .line 268
    if-eqz v0, :cond_5e

    invoke-virtual {v0}, Landroid/webkit/WebView;->getVisibleTitleHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/browser/BaseUi;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v2}, Lcom/android/browser/TitleBar;->getEmbeddedHeight()I

    move-result v2

    if-eq v1, v2, :cond_5e

    iget-boolean v1, p0, Lcom/android/browser/BaseUi;->mUseQuickControls:Z

    if-nez v1, :cond_5e

    .line 271
    invoke-virtual {p0}, Lcom/android/browser/BaseUi;->showTitleBarForDuration()V

    .line 273
    :cond_5e
    return-void
.end method

.method protected setFavicon(Lcom/android/browser/Tab;)V
    .registers 4
    .parameter "tab"

    .prologue
    .line 659
    invoke-virtual {p1}, Lcom/android/browser/Tab;->inForeground()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 660
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 661
    .local v0, icon:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mNavigationBar:Lcom/android/browser/NavigationBarBase;

    invoke-virtual {v1, v0}, Lcom/android/browser/NavigationBarBase;->setFavicon(Landroid/graphics/Bitmap;)V

    .line 663
    .end local v0           #icon:Landroid/graphics/Bitmap;
    :cond_f
    return-void
.end method

.method public setFullscreen(Z)V
    .registers 4
    .parameter "enabled"

    .prologue
    const/16 v1, 0x400

    .line 798
    if-eqz p1, :cond_e

    .line 799
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 806
    :goto_d
    return-void

    .line 803
    :cond_e
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_d
.end method

.method public setReaderNavBar(Z)V
    .registers 2
    .parameter "val"

    .prologue
    .line 312
    return-void
.end method

.method public setShouldShowErrorConsole(Lcom/android/browser/Tab;Z)V
    .registers 8
    .parameter "tab"
    .parameter "flag"

    .prologue
    .line 724
    if-nez p1, :cond_3

    .line 745
    :goto_2
    return-void

    .line 725
    :cond_3
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/browser/Tab;->getErrorConsole(Z)Lcom/android/browser/ErrorConsoleView;

    move-result-object v0

    .line 726
    .local v0, errorConsole:Lcom/android/browser/ErrorConsoleView;
    if-eqz p2, :cond_31

    .line 729
    invoke-virtual {v0}, Lcom/android/browser/ErrorConsoleView;->numberOfErrors()I

    move-result v1

    if-lez v1, :cond_2c

    .line 730
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/browser/ErrorConsoleView;->showConsole(I)V

    .line 734
    :goto_14
    invoke-virtual {v0}, Lcom/android/browser/ErrorConsoleView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1f

    .line 735
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mErrorConsoleContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 738
    :cond_1f
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mErrorConsoleContainer:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 732
    :cond_2c
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/browser/ErrorConsoleView;->showConsole(I)V

    goto :goto_14

    .line 743
    :cond_31
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mErrorConsoleContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    goto :goto_2
.end method

.method protected setTitleGravity(I)V
    .registers 3
    .parameter "gravity"

    .prologue
    .line 510
    invoke-virtual {p0}, Lcom/android/browser/BaseUi;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 511
    .local v0, web:Landroid/webkit/WebView;
    if-eqz v0, :cond_9

    .line 512
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setTitleBarGravity(I)V

    .line 514
    :cond_9
    return-void
.end method

.method protected setUrlTitle(Lcom/android/browser/Tab;)V
    .registers 5
    .parameter "tab"

    .prologue
    .line 639
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 640
    .local v1, url:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 641
    .local v0, title:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 642
    move-object v0, v1

    .line 644
    :cond_f
    invoke-virtual {p1}, Lcom/android/browser/Tab;->isInVoiceSearchMode()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 648
    :cond_15
    :goto_15
    return-void

    .line 645
    :cond_16
    invoke-virtual {p1}, Lcom/android/browser/Tab;->inForeground()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 646
    iget-object v2, p0, Lcom/android/browser/BaseUi;->mNavigationBar:Lcom/android/browser/NavigationBarBase;

    invoke-virtual {v2, v1}, Lcom/android/browser/NavigationBarBase;->setDisplayTitle(Ljava/lang/String;)V

    goto :goto_15
.end method

.method public showAutoLogin(Lcom/android/browser/Tab;)V
    .registers 3
    .parameter "tab"

    .prologue
    .line 599
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/browser/BaseUi;->updateAutoLogin(Lcom/android/browser/Tab;Z)V

    .line 600
    return-void
.end method

.method public showComboView(Lcom/android/browser/UI$ComboViews;Landroid/os/Bundle;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 536
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/android/browser/ComboViewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 537
    const-string v1, "initial_view"

    invoke-virtual {p1}, Lcom/android/browser/UI$ComboViews;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 538
    const-string v1, "combo_args"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 539
    invoke-virtual {p0}, Lcom/android/browser/BaseUi;->getActiveTab()Lcom/android/browser/Tab;

    move-result-object v1

    .line 540
    if-eqz v1, :cond_26

    .line 541
    const-string v2, "url"

    invoke-virtual {v1}, Lcom/android/browser/Tab;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 543
    :cond_26
    const-string v1, "create_bookmark"

    iget-object v2, p0, Lcom/android/browser/BaseUi;->mUiController:Lcom/android/browser/UiController;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/browser/UiController;->createBookmarkCurrentPageIntent(Z)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 545
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 546
    return-void
.end method

.method public showCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V
    .registers 7
    .parameter "view"
    .parameter "requestedOrientation"
    .parameter "callback"

    .prologue
    .line 552
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mCustomView:Landroid/view/View;

    if-eqz v1, :cond_8

    .line 553
    invoke-interface {p3}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 565
    :goto_7
    return-void

    .line 557
    :cond_8
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v1

    iput v1, p0, Lcom/android/browser/BaseUi;->mOriginalOrientation:I

    .line 558
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 559
    .local v0, decor:Landroid/widget/FrameLayout;
    new-instance v1, Lcom/android/browser/BaseUi$FullscreenHolder;

    iget-object v2, p0, Lcom/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/android/browser/BaseUi$FullscreenHolder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/browser/BaseUi;->mFullscreenContainer:Landroid/widget/FrameLayout;

    .line 560
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mFullscreenContainer:Landroid/widget/FrameLayout;

    sget-object v2, Lcom/android/browser/BaseUi;->COVER_SCREEN_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v1, p1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 561
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mFullscreenContainer:Landroid/widget/FrameLayout;

    sget-object v2, Lcom/android/browser/BaseUi;->COVER_SCREEN_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 562
    iput-object p1, p0, Lcom/android/browser/BaseUi;->mCustomView:Landroid/view/View;

    .line 563
    iput-object p3, p0, Lcom/android/browser/BaseUi;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 564
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, p2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_7
.end method

.method public showMaxTabsWarning()V
    .registers 4

    .prologue
    const v2, 0x7f0c0171

    .line 772
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mWarningToast:Landroid/widget/Toast;

    if-nez v0, :cond_1c

    .line 773
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/BaseUi;->mWarningToast:Landroid/widget/Toast;

    .line 780
    :goto_16
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mWarningToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 781
    return-void

    .line 778
    :cond_1c
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mWarningToast:Landroid/widget/Toast;

    iget-object v1, p0, Lcom/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_16
.end method

.method protected showTitleBar()V
    .registers 3

    .prologue
    .line 485
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 486
    invoke-virtual {p0}, Lcom/android/browser/BaseUi;->canShowTitleBar()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 487
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0}, Lcom/android/browser/TitleBar;->show()V

    .line 489
    :cond_11
    return-void
.end method

.method protected final showTitleBarForDuration()V
    .registers 3

    .prologue
    .line 841
    const-wide/16 v0, 0x5dc

    invoke-virtual {p0, v0, v1}, Lcom/android/browser/BaseUi;->showTitleBarForDuration(J)V

    .line 842
    return-void
.end method

.method protected final showTitleBarForDuration(J)V
    .registers 6
    .parameter "duration"

    .prologue
    .line 845
    invoke-virtual {p0}, Lcom/android/browser/BaseUi;->showTitleBar()V

    .line 846
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 847
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 848
    return-void
.end method

.method public showVoiceTitleBar(Ljava/lang/String;Ljava/util/List;)V
    .registers 5
    .parameter "title"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 518
    .local p2, results:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mNavigationBar:Lcom/android/browser/NavigationBarBase;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Lcom/android/browser/NavigationBarBase;->setInVoiceMode(ZLjava/util/List;)V

    .line 519
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mNavigationBar:Lcom/android/browser/NavigationBarBase;

    invoke-virtual {v0, p1}, Lcom/android/browser/NavigationBarBase;->setDisplayTitle(Ljava/lang/String;)V

    .line 520
    return-void
.end method

.method public showWeb(Z)V
    .registers 3
    .parameter "animate"

    .prologue
    .line 862
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v0}, Lcom/android/browser/UiController;->hideCustomView()V

    .line 863
    return-void
.end method

.method public suggestHideTitleBar()V
    .registers 2

    .prologue
    .line 834
    invoke-virtual {p0}, Lcom/android/browser/BaseUi;->isLoading()Z

    move-result v0

    if-nez v0, :cond_1f

    invoke-virtual {p0}, Lcom/android/browser/BaseUi;->isEditingUrl()Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/android/browser/BaseUi;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0}, Lcom/android/browser/TitleBar;->wantsToBeVisible()Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/android/browser/BaseUi;->mNavigationBar:Lcom/android/browser/NavigationBarBase;

    invoke-virtual {v0}, Lcom/android/browser/NavigationBarBase;->isMenuShowing()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 836
    invoke-virtual {p0}, Lcom/android/browser/BaseUi;->hideTitleBar()V

    .line 838
    :cond_1f
    return-void
.end method

.method protected updateAutoLogin(Lcom/android/browser/Tab;Z)V
    .registers 4
    .parameter "tab"
    .parameter "animate"

    .prologue
    .line 613
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0, p1, p2}, Lcom/android/browser/TitleBar;->updateAutoLogin(Lcom/android/browser/Tab;Z)V

    .line 614
    return-void
.end method

.method protected updateLockIconToLatest(Lcom/android/browser/Tab;)V
    .registers 3
    .parameter "t"

    .prologue
    .line 620
    if-eqz p1, :cond_f

    invoke-virtual {p1}, Lcom/android/browser/Tab;->inForeground()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 621
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getSecurityState()Lcom/android/browser/Tab$SecurityState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/browser/BaseUi;->updateLockIconImage(Lcom/android/browser/Tab$SecurityState;)V

    .line 623
    :cond_f
    return-void
.end method

.method public updateMenuState(Lcom/android/browser/Tab;Landroid/view/Menu;)V
    .registers 3
    .parameter "tab"
    .parameter "menu"

    .prologue
    .line 689
    return-void
.end method

.method protected updateNavigationState(Lcom/android/browser/Tab;)V
    .registers 2
    .parameter "tab"

    .prologue
    .line 610
    return-void
.end method

.method public updateReaderIcon()V
    .registers 1

    .prologue
    .line 301
    return-void
.end method

.method public updateTabs(Ljava/util/List;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/browser/Tab;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 296
    .local p1, tabs:Ljava/util/List;,"Ljava/util/List<Lcom/android/browser/Tab;>;"
    return-void
.end method

.method protected updateUrlBarAutoShowManagerTarget()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 276
    iget-object v2, p0, Lcom/android/browser/BaseUi;->mActiveTab:Lcom/android/browser/Tab;

    if-eqz v2, :cond_1f

    iget-object v2, p0, Lcom/android/browser/BaseUi;->mActiveTab:Lcom/android/browser/Tab;

    invoke-virtual {v2}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 281
    .local v0, web:Landroid/webkit/WebView;
    :goto_b
    iget-boolean v2, p0, Lcom/android/browser/BaseUi;->mUseQuickControls:Z

    if-nez v2, :cond_21

    instance-of v2, v0, Lcom/android/browser/BrowserWebView;

    if-eqz v2, :cond_21

    iget-boolean v2, p0, Lcom/android/browser/BaseUi;->mUrlBarAutoShow:Z

    if-eqz v2, :cond_21

    .line 282
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mUrlBarAutoShowManager:Lcom/android/browser/UrlBarAutoShowManager;

    check-cast v0, Lcom/android/browser/BrowserWebView;

    .end local v0           #web:Landroid/webkit/WebView;
    invoke-virtual {v1, v0}, Lcom/android/browser/UrlBarAutoShowManager;->setTarget(Lcom/android/browser/BrowserWebView;)V

    .line 288
    :goto_1e
    return-void

    :cond_1f
    move-object v0, v1

    .line 276
    goto :goto_b

    .line 284
    .restart local v0       #web:Landroid/webkit/WebView;
    :cond_21
    iget-object v2, p0, Lcom/android/browser/BaseUi;->mUrlBarAutoShowManager:Lcom/android/browser/UrlBarAutoShowManager;

    invoke-virtual {v2, v1}, Lcom/android/browser/UrlBarAutoShowManager;->setTarget(Lcom/android/browser/BrowserWebView;)V

    goto :goto_1e
.end method
