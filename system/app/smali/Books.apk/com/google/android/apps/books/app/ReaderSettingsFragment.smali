.class public Lcom/google/android/apps/books/app/ReaderSettingsFragment;
.super Landroid/app/Fragment;
.source "ReaderSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/app/ReaderSettingsFragment$ReaderSettingsListener;
    }
.end annotation


# instance fields
.field private final mBrightnessListener:Lcom/google/android/apps/books/preference/LightweightPreference$ChangeListener;

.field private mContainer:Landroid/view/ViewGroup;

.field private mFadeAnimationController:Lcom/google/android/apps/books/util/FadeAnimationController;

.field private mFlowingTextSettings:Landroid/view/View;

.field private mImageModeSettings:Landroid/view/View;

.field private mListener:Lcom/google/android/apps/books/app/ReaderSettingsFragment$ReaderSettingsListener;

.field private final mTextSettingsListener:Lcom/google/android/apps/books/preference/LightweightPreference$ChangeListener;

.field private mTextSize:Lcom/google/android/apps/books/preference/TextZoomPreference;

.field private final mTextZoomSettingListener:Lcom/google/android/apps/books/preference/LightweightPreference$ChangeListener;

.field private final mThemeListener:Lcom/google/android/apps/books/preference/LightweightPreference$ChangeListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 169
    new-instance v0, Lcom/google/android/apps/books/app/ReaderSettingsFragment$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/books/app/ReaderSettingsFragment$1;-><init>(Lcom/google/android/apps/books/app/ReaderSettingsFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/books/app/ReaderSettingsFragment;->mBrightnessListener:Lcom/google/android/apps/books/preference/LightweightPreference$ChangeListener;

    .line 179
    new-instance v0, Lcom/google/android/apps/books/app/ReaderSettingsFragment$2;

    invoke-direct {v0, p0}, Lcom/google/android/apps/books/app/ReaderSettingsFragment$2;-><init>(Lcom/google/android/apps/books/app/ReaderSettingsFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/books/app/ReaderSettingsFragment;->mThemeListener:Lcom/google/android/apps/books/preference/LightweightPreference$ChangeListener;

    .line 187
    new-instance v0, Lcom/google/android/apps/books/app/ReaderSettingsFragment$3;

    invoke-direct {v0, p0}, Lcom/google/android/apps/books/app/ReaderSettingsFragment$3;-><init>(Lcom/google/android/apps/books/app/ReaderSettingsFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/books/app/ReaderSettingsFragment;->mTextSettingsListener:Lcom/google/android/apps/books/preference/LightweightPreference$ChangeListener;

    .line 195
    new-instance v0, Lcom/google/android/apps/books/app/ReaderSettingsFragment$4;

    invoke-direct {v0, p0}, Lcom/google/android/apps/books/app/ReaderSettingsFragment$4;-><init>(Lcom/google/android/apps/books/app/ReaderSettingsFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/books/app/ReaderSettingsFragment;->mTextZoomSettingListener:Lcom/google/android/apps/books/preference/LightweightPreference$ChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/books/app/ReaderSettingsFragment;)Lcom/google/android/apps/books/app/ReaderSettingsFragment$ReaderSettingsListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderSettingsFragment;->mListener:Lcom/google/android/apps/books/app/ReaderSettingsFragment$ReaderSettingsListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/books/app/ReaderSettingsFragment;)Landroid/view/ViewGroup;
    .registers 2
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderSettingsFragment;->mContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/books/app/ReaderSettingsFragment;)Lcom/google/android/apps/books/preference/TextZoomPreference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderSettingsFragment;->mTextSize:Lcom/google/android/apps/books/preference/TextZoomPreference;

    return-object v0
.end method


# virtual methods
.method public getVisible()Z
    .registers 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderSettingsFragment;->mFadeAnimationController:Lcom/google/android/apps/books/util/FadeAnimationController;

    invoke-virtual {v0}, Lcom/google/android/apps/books/util/FadeAnimationController;->getVisible()Z

    move-result v0

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 15
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 48
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 49
    .local v4, originalContext:Landroid/content/Context;
    new-instance v1, Landroid/view/ContextThemeWrapper;

    const v9, 0x103006b

    invoke-direct {v1, v4, v9}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 51
    .local v1, context:Landroid/content/Context;
    invoke-virtual {p1, v1}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 53
    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 55
    .local v5, prefs:Landroid/content/SharedPreferences;
    const v9, 0x7f030013

    const/4 v10, 0x0

    invoke-virtual {p1, v9, p2, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    iput-object v9, p0, Lcom/google/android/apps/books/app/ReaderSettingsFragment;->mContainer:Landroid/view/ViewGroup;

    .line 60
    const v9, 0x7f030014

    const/4 v10, 0x0

    invoke-virtual {p1, v9, p2, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/google/android/apps/books/app/ReaderSettingsFragment;->mImageModeSettings:Landroid/view/View;

    .line 63
    iget-object v9, p0, Lcom/google/android/apps/books/app/ReaderSettingsFragment;->mImageModeSettings:Landroid/view/View;

    const v10, 0x7f0f0050

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/preference/BrightnessPreference;

    .line 65
    .local v0, brightness:Lcom/google/android/apps/books/preference/BrightnessPreference;
    iget-object v9, p0, Lcom/google/android/apps/books/app/ReaderSettingsFragment;->mBrightnessListener:Lcom/google/android/apps/books/preference/LightweightPreference$ChangeListener;

    invoke-virtual {v0, v5, v9}, Lcom/google/android/apps/books/preference/BrightnessPreference;->setupPreference(Landroid/content/SharedPreferences;Lcom/google/android/apps/books/preference/LightweightPreference$ChangeListener;)V

    .line 66
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/ReaderSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/google/android/apps/books/preference/BrightnessPreference;->setWindow(Landroid/view/Window;)V

    .line 68
    iget-object v9, p0, Lcom/google/android/apps/books/app/ReaderSettingsFragment;->mImageModeSettings:Landroid/view/View;

    const v10, 0x7f0f005c

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/books/preference/SpinnerPreference;

    .line 70
    .local v6, theme:Lcom/google/android/apps/books/preference/SpinnerPreference;
    iget-object v9, p0, Lcom/google/android/apps/books/app/ReaderSettingsFragment;->mThemeListener:Lcom/google/android/apps/books/preference/LightweightPreference$ChangeListener;

    invoke-virtual {v6, v5, v9}, Lcom/google/android/apps/books/preference/SpinnerPreference;->setupPreference(Landroid/content/SharedPreferences;Lcom/google/android/apps/books/preference/LightweightPreference$ChangeListener;)V

    .line 75
    const v9, 0x7f030012

    const/4 v10, 0x0

    invoke-virtual {p1, v9, p2, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    .line 76
    .local v8, view:Landroid/view/View;
    iput-object v8, p0, Lcom/google/android/apps/books/app/ReaderSettingsFragment;->mFlowingTextSettings:Landroid/view/View;

    .line 78
    const v9, 0x7f0f0050

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #brightness:Lcom/google/android/apps/books/preference/BrightnessPreference;
    check-cast v0, Lcom/google/android/apps/books/preference/BrightnessPreference;

    .line 80
    .restart local v0       #brightness:Lcom/google/android/apps/books/preference/BrightnessPreference;
    iget-object v9, p0, Lcom/google/android/apps/books/app/ReaderSettingsFragment;->mBrightnessListener:Lcom/google/android/apps/books/preference/LightweightPreference$ChangeListener;

    invoke-virtual {v0, v5, v9}, Lcom/google/android/apps/books/preference/BrightnessPreference;->setupPreference(Landroid/content/SharedPreferences;Lcom/google/android/apps/books/preference/LightweightPreference$ChangeListener;)V

    .line 81
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/ReaderSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/google/android/apps/books/preference/BrightnessPreference;->setWindow(Landroid/view/Window;)V

    .line 83
    const v9, 0x7f0f005c

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .end local v6           #theme:Lcom/google/android/apps/books/preference/SpinnerPreference;
    check-cast v6, Lcom/google/android/apps/books/preference/SpinnerPreference;

    .line 84
    .restart local v6       #theme:Lcom/google/android/apps/books/preference/SpinnerPreference;
    iget-object v9, p0, Lcom/google/android/apps/books/app/ReaderSettingsFragment;->mThemeListener:Lcom/google/android/apps/books/preference/LightweightPreference$ChangeListener;

    invoke-virtual {v6, v5, v9}, Lcom/google/android/apps/books/preference/SpinnerPreference;->setupPreference(Landroid/content/SharedPreferences;Lcom/google/android/apps/books/preference/LightweightPreference$ChangeListener;)V

    .line 86
    const v9, 0x7f0f0059

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/google/android/apps/books/preference/TextZoomPreference;

    iput-object v9, p0, Lcom/google/android/apps/books/app/ReaderSettingsFragment;->mTextSize:Lcom/google/android/apps/books/preference/TextZoomPreference;

    .line 87
    iget-object v9, p0, Lcom/google/android/apps/books/app/ReaderSettingsFragment;->mTextSize:Lcom/google/android/apps/books/preference/TextZoomPreference;

    iget-object v10, p0, Lcom/google/android/apps/books/app/ReaderSettingsFragment;->mTextZoomSettingListener:Lcom/google/android/apps/books/preference/LightweightPreference$ChangeListener;

    invoke-virtual {v9, v5, v10}, Lcom/google/android/apps/books/preference/TextZoomPreference;->setupPreference(Landroid/content/SharedPreferences;Lcom/google/android/apps/books/preference/LightweightPreference$ChangeListener;)V

    .line 89
    const v9, 0x7f0f005e

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/google/android/apps/books/preference/SpinnerPreference;

    .line 91
    .local v7, typeface:Lcom/google/android/apps/books/preference/SpinnerPreference;
    iget-object v9, p0, Lcom/google/android/apps/books/app/ReaderSettingsFragment;->mTextSettingsListener:Lcom/google/android/apps/books/preference/LightweightPreference$ChangeListener;

    invoke-virtual {v7, v5, v9}, Lcom/google/android/apps/books/preference/SpinnerPreference;->setupPreference(Landroid/content/SharedPreferences;Lcom/google/android/apps/books/preference/LightweightPreference$ChangeListener;)V

    .line 93
    const v9, 0x7f0f0054

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/books/preference/SpinnerPreference;

    .line 95
    .local v2, justification:Lcom/google/android/apps/books/preference/SpinnerPreference;
    iget-object v9, p0, Lcom/google/android/apps/books/app/ReaderSettingsFragment;->mTextSettingsListener:Lcom/google/android/apps/books/preference/LightweightPreference$ChangeListener;

    invoke-virtual {v2, v5, v9}, Lcom/google/android/apps/books/preference/SpinnerPreference;->setupPreference(Landroid/content/SharedPreferences;Lcom/google/android/apps/books/preference/LightweightPreference$ChangeListener;)V

    .line 97
    const v9, 0x7f0f0056

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/books/preference/LineHeightPreference;

    .line 99
    .local v3, lineHeight:Lcom/google/android/apps/books/preference/LineHeightPreference;
    iget-object v9, p0, Lcom/google/android/apps/books/app/ReaderSettingsFragment;->mTextSettingsListener:Lcom/google/android/apps/books/preference/LightweightPreference$ChangeListener;

    invoke-virtual {v3, v5, v9}, Lcom/google/android/apps/books/preference/LineHeightPreference;->setupPreference(Landroid/content/SharedPreferences;Lcom/google/android/apps/books/preference/LightweightPreference$ChangeListener;)V

    .line 103
    iget-object v9, p0, Lcom/google/android/apps/books/app/ReaderSettingsFragment;->mContainer:Landroid/view/ViewGroup;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 105
    new-instance v9, Lcom/google/android/apps/books/util/FadeAnimationController;

    iget-object v10, p0, Lcom/google/android/apps/books/app/ReaderSettingsFragment;->mContainer:Landroid/view/ViewGroup;

    invoke-direct {v9, v10}, Lcom/google/android/apps/books/util/FadeAnimationController;-><init>(Landroid/view/View;)V

    iput-object v9, p0, Lcom/google/android/apps/books/app/ReaderSettingsFragment;->mFadeAnimationController:Lcom/google/android/apps/books/util/FadeAnimationController;

    .line 107
    iget-object v9, p0, Lcom/google/android/apps/books/app/ReaderSettingsFragment;->mContainer:Landroid/view/ViewGroup;

    return-object v9
.end method

.method public onModesAvailable(IZZ)V
    .registers 7
    .parameter "preferredMode"
    .parameter "hasTextMode"
    .parameter "hasImageMode"

    .prologue
    .line 132
    const-string v0, "ReaderSettingsFragment"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 133
    const-string v0, "ReaderSettingsFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onModesAvailable() with preferredMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", hasTextMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", hasImageMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_35
    invoke-virtual {p0, p1}, Lcom/google/android/apps/books/app/ReaderSettingsFragment;->updateEnabled(I)V

    .line 138
    return-void
.end method

.method public setListener(Lcom/google/android/apps/books/app/ReaderSettingsFragment$ReaderSettingsListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 111
    iput-object p1, p0, Lcom/google/android/apps/books/app/ReaderSettingsFragment;->mListener:Lcom/google/android/apps/books/app/ReaderSettingsFragment$ReaderSettingsListener;

    .line 112
    return-void
.end method

.method public setTextZoom(F)V
    .registers 3
    .parameter "textZoom"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderSettingsFragment;->mTextSize:Lcom/google/android/apps/books/preference/TextZoomPreference;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderSettingsFragment;->mTextSize:Lcom/google/android/apps/books/preference/TextZoomPreference;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/books/preference/TextZoomPreference;->setTextZoom(F)V

    .line 117
    return-void
.end method

.method public setVisible(Z)V
    .registers 3
    .parameter "visible"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderSettingsFragment;->mFadeAnimationController:Lcom/google/android/apps/books/util/FadeAnimationController;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/books/util/FadeAnimationController;->setVisible(Z)V

    .line 125
    return-void
.end method

.method public updateEnabled(I)V
    .registers 5
    .parameter "readingMode"

    .prologue
    .line 141
    const-string v0, "ReaderSettingsFragment"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 142
    const-string v0, "ReaderSettingsFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateEnabled() with mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_21
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderSettingsFragment;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 147
    const/4 v0, 0x2

    if-ne p1, v0, :cond_31

    .line 148
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderSettingsFragment;->mContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderSettingsFragment;->mFlowingTextSettings:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 152
    :cond_30
    :goto_30
    return-void

    .line 149
    :cond_31
    const/4 v0, 0x1

    if-ne p1, v0, :cond_30

    .line 150
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderSettingsFragment;->mContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderSettingsFragment;->mImageModeSettings:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_30
.end method
