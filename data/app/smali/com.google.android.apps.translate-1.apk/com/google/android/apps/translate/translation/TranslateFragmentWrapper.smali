.class public Lcom/google/android/apps/translate/translation/TranslateFragmentWrapper;
.super Ljava/lang/Object;
.source "TranslateFragmentWrapper.java"


# static fields
.field private static final MINIMUM_SCREEN_WIDTH_FOR_TAB_MENU:F = 600.0f

.field private static final TAG:Ljava/lang/String; = "TranslateFragmentWrapper"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mSpinnerAdapter:Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;

.field private mTranslateFragment:Lcom/google/android/apps/translate/translation/TranslateFragment;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 8
    .parameter "activity"

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateFragmentWrapper;->mSpinnerAdapter:Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;

    .line 35
    iput-object p1, p0, Lcom/google/android/apps/translate/translation/TranslateFragmentWrapper;->mActivity:Landroid/app/Activity;

    .line 36
    invoke-direct {p0, v0}, Lcom/google/android/apps/translate/translation/TranslateFragmentWrapper;->shouldUseTabMenu(Landroid/content/res/Configuration;)Z

    move-result v4

    .line 37
    .local v4, tabMenuMode:Z
    new-instance v0, Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;

    sget v2, Lcom/google/android/apps/translate/R$layout;->action_bar_spinner_item:I

    sget v3, Lcom/google/android/apps/translate/R$id;->spinner_item_text_view:I

    move-object v1, p1

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;-><init>(Landroid/content/Context;IIZLcom/google/android/apps/translate/translation/TranslateFragmentWrapper;)V

    iput-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateFragmentWrapper;->mSpinnerAdapter:Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;

    .line 43
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateFragmentWrapper;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/apps/translate/translation/TranslateFragmentWrapper;->mSpinnerAdapter:Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/home/TabMenuFragment;->setTabMenuFragment(Landroid/app/Activity;Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;)V

    .line 44
    invoke-static {}, Lcom/google/android/apps/translate/SdkVersionWrapper;->getWrapper()Lcom/google/android/apps/translate/SdkVersionWrapper$WrapperBase;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/translate/translation/TranslateFragmentWrapper;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/apps/translate/translation/TranslateFragmentWrapper;->mSpinnerAdapter:Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/translate/SdkVersionWrapper$WrapperBase;->setActionBarTitle(Landroid/app/Activity;Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;)V

    .line 45
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateFragmentWrapper;->mSpinnerAdapter:Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;->getTranslateFragment()Lcom/google/android/apps/translate/translation/TranslateFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateFragmentWrapper;->mTranslateFragment:Lcom/google/android/apps/translate/translation/TranslateFragment;

    .line 46
    return-void
.end method

.method private shouldUseTabMenu(Landroid/content/res/Configuration;)Z
    .registers 8
    .parameter "config"

    .prologue
    const/4 v3, 0x0

    .line 92
    if-nez p1, :cond_d

    .line 93
    iget-object v4, p0, Lcom/google/android/apps/translate/translation/TranslateFragmentWrapper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 95
    :cond_d
    if-nez p1, :cond_17

    .line 96
    const-string v4, "TranslateFragmentWrapper"

    const-string v5, "shouldUseTabMenu false: null"

    invoke-static {v4, v5}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :goto_16
    return v3

    .line 99
    :cond_17
    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_24

    .line 100
    const-string v4, "TranslateFragmentWrapper"

    const-string v5, "shouldUseTabMenu false: not landscape"

    invoke-static {v4, v5}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16

    .line 103
    :cond_24
    iget-object v4, p0, Lcom/google/android/apps/translate/translation/TranslateFragmentWrapper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v4

    int-to-float v2, v4

    .line 104
    .local v2, screenWidthPx:F
    iget-object v4, p0, Lcom/google/android/apps/translate/translation/TranslateFragmentWrapper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v0, v4, Landroid/util/DisplayMetrics;->density:F

    .line 105
    .local v0, density:F
    div-float v1, v2, v0

    .line 106
    .local v1, screenWidthDp:F
    const/high16 v4, 0x4416

    cmpl-float v4, v1, v4

    if-ltz v4, :cond_50

    .line 107
    const-string v3, "TranslateFragmentWrapper"

    const-string v4, "shouldUseTabMenu true"

    invoke-static {v3, v4}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const/4 v3, 0x1

    goto :goto_16

    .line 110
    :cond_50
    const-string v4, "TranslateFragmentWrapper"

    const-string v5, "shouldUseTabMenu false: small screenl"

    invoke-static {v4, v5}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16
.end method


# virtual methods
.method public getHelper()Lcom/google/android/apps/translate/translation/TranslateHelper;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateFragmentWrapper;->mTranslateFragment:Lcom/google/android/apps/translate/translation/TranslateFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/translation/TranslateFragment;->getHelper()Lcom/google/android/apps/translate/translation/TranslateHelper;

    move-result-object v0

    return-object v0
.end method

.method public getTranslateFragment()Lcom/google/android/apps/translate/translation/TranslateFragment;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateFragmentWrapper;->mTranslateFragment:Lcom/google/android/apps/translate/translation/TranslateFragment;

    return-object v0
.end method

.method public goBackHome()V
    .registers 3

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateFragmentWrapper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 68
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateFragmentWrapper;->mSpinnerAdapter:Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;

    if-eqz v0, :cond_9

    .line 54
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateFragmentWrapper;->mSpinnerAdapter:Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;->onActivityResult(IILandroid/content/Intent;)Z

    .line 56
    :cond_9
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 6
    .parameter "newConfig"

    .prologue
    .line 119
    const-string v1, "TranslateFragmentWrapper"

    const-string v2, "onConfigurationChanged"

    invoke-static {v1, v2}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/TranslateFragmentWrapper;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/google/android/apps/translate/translation/TranslateFragmentWrapper;->mSpinnerAdapter:Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;

    if-eqz v1, :cond_23

    .line 121
    invoke-direct {p0, p1}, Lcom/google/android/apps/translate/translation/TranslateFragmentWrapper;->shouldUseTabMenu(Landroid/content/res/Configuration;)Z

    move-result v0

    .line 122
    .local v0, tabMenuMode:Z
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/TranslateFragmentWrapper;->mSpinnerAdapter:Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;->setTabMenuMode(Z)V

    .line 123
    invoke-static {}, Lcom/google/android/apps/translate/SdkVersionWrapper;->getWrapper()Lcom/google/android/apps/translate/SdkVersionWrapper$WrapperBase;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/translate/translation/TranslateFragmentWrapper;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/google/android/apps/translate/translation/TranslateFragmentWrapper;->mSpinnerAdapter:Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/translate/SdkVersionWrapper$WrapperBase;->setActionBarTitle(Landroid/app/Activity;Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;)V

    .line 125
    .end local v0           #tabMenuMode:Z
    :cond_23
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 5
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateFragmentWrapper;->mTranslateFragment:Lcom/google/android/apps/translate/translation/TranslateFragment;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/apps/translate/translation/TranslateFragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 60
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateFragmentWrapper;->mSpinnerAdapter:Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;

    if-eqz v0, :cond_b

    .line 83
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateFragmentWrapper;->mSpinnerAdapter:Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 85
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 7
    .parameter "item"

    .prologue
    const/4 v1, 0x0

    .line 132
    const-string v2, "TranslateFragmentWrapper"

    const-string v3, "onOptionsItemSelected"

    invoke-static {v2, v3}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 134
    .local v0, id:I
    const v2, 0x102002c

    if-ne v0, v2, :cond_2e

    iget-object v2, p0, Lcom/google/android/apps/translate/translation/TranslateFragmentWrapper;->mActivity:Landroid/app/Activity;

    if-eqz v2, :cond_2e

    iget-object v2, p0, Lcom/google/android/apps/translate/translation/TranslateFragmentWrapper;->mSpinnerAdapter:Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;

    if-eqz v2, :cond_2e

    .line 135
    iget-object v2, p0, Lcom/google/android/apps/translate/translation/TranslateFragmentWrapper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->popBackStack()V

    .line 136
    iget-object v2, p0, Lcom/google/android/apps/translate/translation/TranslateFragmentWrapper;->mSpinnerAdapter:Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;

    int-to-long v3, v0

    invoke-virtual {v2, v1, v3, v4}, Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;->onNavigationItemSelected(IJ)Z

    .line 140
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/TranslateFragmentWrapper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 141
    const/4 v1, 0x1

    .line 143
    :cond_2e
    return v1
.end method

.method public onResume()V
    .registers 4

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateFragmentWrapper;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateFragmentWrapper;->mSpinnerAdapter:Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;

    if-eqz v0, :cond_13

    .line 77
    invoke-static {}, Lcom/google/android/apps/translate/SdkVersionWrapper;->getWrapper()Lcom/google/android/apps/translate/SdkVersionWrapper$WrapperBase;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/translate/translation/TranslateFragmentWrapper;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/apps/translate/translation/TranslateFragmentWrapper;->mSpinnerAdapter:Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/translate/SdkVersionWrapper$WrapperBase;->setActionBarTitle(Landroid/app/Activity;Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;)V

    .line 79
    :cond_13
    return-void
.end method
