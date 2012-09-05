.class public Lcom/google/android/finsky/layout/AutoUpdateSection;
.super Landroid/widget/LinearLayout;
.source "AutoUpdateSection.java"


# instance fields
.field private mCheckBox:Landroid/widget/CheckBox;

.field private mLabel:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/layout/AutoUpdateSection;)Landroid/widget/CheckBox;
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/finsky/layout/AutoUpdateSection;->mCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method


# virtual methods
.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 40
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 42
    const v0, 0x7f080025

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/AutoUpdateSection;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/google/android/finsky/layout/AutoUpdateSection;->mCheckBox:Landroid/widget/CheckBox;

    .line 43
    const v0, 0x7f080026

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/AutoUpdateSection;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/AutoUpdateSection;->mLabel:Landroid/widget/TextView;

    .line 44
    return-void
.end method

.method public setApplicationPackageName(Ljava/lang/String;Landroid/support/v4/app/Fragment;)V
    .registers 14
    .parameter "packageName"
    .parameter "fragment"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 53
    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    .line 55
    .local v2, fragmentManager:Landroid/support/v4/app/FragmentManager;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/finsky/FinskyApp;->getAssetStore()Lcom/google/android/finsky/local/AssetStore;

    move-result-object v0

    .line 56
    .local v0, assetStore:Lcom/google/android/finsky/local/AssetStore;
    invoke-interface {v0, p1}, Lcom/google/android/finsky/local/AssetStore;->getAsset(Ljava/lang/String;)Lcom/google/android/finsky/local/LocalAsset;

    move-result-object v4

    .line 58
    .local v4, localAsset:Lcom/google/android/finsky/local/LocalAsset;
    if-eqz v4, :cond_20

    invoke-interface {v4}, Lcom/google/android/finsky/local/LocalAsset;->isDownloadingOrInstalling()Z

    move-result v7

    if-nez v7, :cond_26

    invoke-interface {v4}, Lcom/google/android/finsky/local/LocalAsset;->isInstalled()Z

    move-result v7

    if-nez v7, :cond_26

    .line 60
    :cond_20
    const/16 v7, 0x8

    invoke-virtual {p0, v7}, Lcom/google/android/finsky/layout/AutoUpdateSection;->setVisibility(I)V

    .line 131
    :goto_25
    return-void

    .line 64
    :cond_26
    invoke-virtual {p0, v9}, Lcom/google/android/finsky/layout/AutoUpdateSection;->setVisibility(I)V

    .line 65
    invoke-interface {v4}, Lcom/google/android/finsky/local/LocalAsset;->getAutoUpdateState()Lcom/google/android/finsky/local/AutoUpdateState;

    move-result-object v1

    .line 67
    .local v1, autoUpdateState:Lcom/google/android/finsky/local/AutoUpdateState;
    sget-object v7, Lcom/google/android/finsky/utils/VendingPreferences;->AUTO_UPDATE_BY_DEFAULT:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v7}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 68
    .local v5, stickyAutoUpdateState:Z
    sget-object v7, Lcom/google/android/finsky/local/AutoUpdateState;->DEFAULT:Lcom/google/android/finsky/local/AutoUpdateState;

    if-ne v1, v7, :cond_73

    .line 70
    move v3, v5

    .line 79
    .local v3, isAutoUpdateEnabled:Z
    :goto_3e
    new-instance v7, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/AutoUpdateSection;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v10

    invoke-direct {v7, v10}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v10, Lcom/google/android/finsky/layout/AutoUpdateSection$1;

    invoke-direct {v10, p0, v3}, Lcom/google/android/finsky/layout/AutoUpdateSection$1;-><init>(Lcom/google/android/finsky/layout/AutoUpdateSection;Z)V

    invoke-virtual {v7, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 86
    invoke-interface {v4}, Lcom/google/android/finsky/local/LocalAsset;->isInstalled()Z

    move-result v7

    if-nez v7, :cond_5f

    invoke-interface {v4}, Lcom/google/android/finsky/local/LocalAsset;->isDownloadingOrInstalling()Z

    move-result v7

    if-eqz v7, :cond_7b

    :cond_5f
    move v6, v8

    .line 89
    .local v6, toEnableControls:Z
    :goto_60
    iget-object v7, p0, Lcom/google/android/finsky/layout/AutoUpdateSection;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v7, v6}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 90
    iget-object v7, p0, Lcom/google/android/finsky/layout/AutoUpdateSection;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 94
    new-instance v7, Lcom/google/android/finsky/layout/AutoUpdateSection$2;

    invoke-direct {v7, p0, v4, v2, p1}, Lcom/google/android/finsky/layout/AutoUpdateSection$2;-><init>(Lcom/google/android/finsky/layout/AutoUpdateSection;Lcom/google/android/finsky/local/LocalAsset;Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Lcom/google/android/finsky/layout/AutoUpdateSection;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_25

    .line 73
    .end local v3           #isAutoUpdateEnabled:Z
    .end local v6           #toEnableControls:Z
    :cond_73
    sget-object v7, Lcom/google/android/finsky/local/AutoUpdateState;->ENABLED:Lcom/google/android/finsky/local/AutoUpdateState;

    if-ne v1, v7, :cond_79

    move v3, v8

    .restart local v3       #isAutoUpdateEnabled:Z
    :goto_78
    goto :goto_3e

    .end local v3           #isAutoUpdateEnabled:Z
    :cond_79
    move v3, v9

    goto :goto_78

    .restart local v3       #isAutoUpdateEnabled:Z
    :cond_7b
    move v6, v9

    .line 86
    goto :goto_60
.end method
