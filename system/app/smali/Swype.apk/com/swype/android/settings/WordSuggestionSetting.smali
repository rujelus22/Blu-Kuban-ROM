.class public Lcom/swype/android/settings/WordSuggestionSetting;
.super Landroid/preference/PreferenceActivity;
.source "WordSuggestionSetting.java"


# static fields
.field private static final HWCL_PREFS:[Ljava/lang/String;


# instance fields
.field private core:Lcom/swype/android/jni/SwypeCore;

.field private currentLang:Ljava/lang/String;

.field private isCoreStarted:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 16
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/swype/android/settings/SettingsManager$Key;->autoCorrection:Lcom/swype/android/settings/SettingsManager$Key;

    invoke-virtual {v2}, Lcom/swype/android/settings/SettingsManager$Key;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/swype/android/settings/SettingsManager$Key;->showSuggestedWordMGD:Lcom/swype/android/settings/SettingsManager$Key;

    invoke-virtual {v2}, Lcom/swype/android/settings/SettingsManager$Key;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/swype/android/settings/SettingsManager$Key;->showSuggestedWordNonMGD:Lcom/swype/android/settings/SettingsManager$Key;

    invoke-virtual {v2}, Lcom/swype/android/settings/SettingsManager$Key;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/swype/android/settings/WordSuggestionSetting;->HWCL_PREFS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private startSwypeCore()V
    .registers 2

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/swype/android/settings/WordSuggestionSetting;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/swype/android/inputmethod/SwypeApplication;

    invoke-virtual {v0}, Lcom/swype/android/inputmethod/SwypeApplication;->getSwypeCore()Lcom/swype/android/jni/SwypeCore;

    move-result-object v0

    iput-object v0, p0, Lcom/swype/android/settings/WordSuggestionSetting;->core:Lcom/swype/android/jni/SwypeCore;

    .line 102
    iget-object v0, p0, Lcom/swype/android/settings/WordSuggestionSetting;->core:Lcom/swype/android/jni/SwypeCore;

    invoke-virtual {v0}, Lcom/swype/android/jni/SwypeCore;->onCreateDefault()V

    .line 103
    return-void
.end method

.method private updatePreferences(Ljava/lang/String;)V
    .registers 8
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 71
    iget-object v0, p0, Lcom/swype/android/settings/WordSuggestionSetting;->currentLang:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 95
    :cond_a
    :goto_a
    return-void

    .line 74
    :cond_b
    iget-object v0, p0, Lcom/swype/android/settings/WordSuggestionSetting;->currentLang:Ljava/lang/String;

    if-eqz v0, :cond_16

    .line 75
    invoke-virtual {p0}, Lcom/swype/android/settings/WordSuggestionSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 77
    :cond_16
    iput-object p1, p0, Lcom/swype/android/settings/WordSuggestionSetting;->currentLang:Ljava/lang/String;

    .line 78
    iget-object v0, p0, Lcom/swype/android/settings/WordSuggestionSetting;->core:Lcom/swype/android/jni/SwypeCore;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1, v2}, Lcom/swype/android/jni/SwypeCore;->getSettingBool(IZ)Z

    move-result v0

    if-nez v0, :cond_55

    iget-object v0, p0, Lcom/swype/android/settings/WordSuggestionSetting;->core:Lcom/swype/android/jni/SwypeCore;

    invoke-virtual {v0, p1}, Lcom/swype/android/jni/SwypeCore;->isLanguageMGD(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_55

    move v0, v2

    .line 79
    :goto_2b
    if-eqz v0, :cond_57

    const v0, 0x7f05000a

    :goto_30
    invoke-virtual {p0, v0}, Lcom/swype/android/settings/WordSuggestionSetting;->addPreferencesFromResource(I)V

    .line 80
    iget-object v0, p0, Lcom/swype/android/settings/WordSuggestionSetting;->core:Lcom/swype/android/jni/SwypeCore;

    const/16 v1, 0x2a

    invoke-virtual {v0, v1, v2}, Lcom/swype/android/jni/SwypeCore;->getSettingBool(IZ)Z

    move-result v0

    .line 81
    if-nez v0, :cond_5b

    .line 82
    sget-object v0, Lcom/swype/android/settings/WordSuggestionSetting;->HWCL_PREFS:[Ljava/lang/String;

    array-length v1, v0

    move v2, v5

    :goto_41
    if-ge v2, v1, :cond_5b

    aget-object v3, v0, v2

    .line 83
    invoke-virtual {p0, v3}, Lcom/swype/android/settings/WordSuggestionSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 84
    if-eqz v3, :cond_52

    .line 85
    invoke-virtual {p0}, Lcom/swype/android/settings/WordSuggestionSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 82
    :cond_52
    add-int/lit8 v2, v2, 0x1

    goto :goto_41

    :cond_55
    move v0, v5

    .line 78
    goto :goto_2b

    .line 79
    :cond_57
    const v0, 0x7f050009

    goto :goto_30

    .line 89
    :cond_5b
    iget-object v0, p0, Lcom/swype/android/settings/WordSuggestionSetting;->core:Lcom/swype/android/jni/SwypeCore;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, v5}, Lcom/swype/android/jni/SwypeCore;->getSettingBool(IZ)Z

    move-result v0

    if-eqz v0, :cond_6e

    iget-object v0, p0, Lcom/swype/android/settings/WordSuggestionSetting;->core:Lcom/swype/android/jni/SwypeCore;

    const/16 v1, 0x11

    invoke-virtual {v0, v1, v5}, Lcom/swype/android/jni/SwypeCore;->getSettingBool(IZ)Z

    move-result v0

    if-nez v0, :cond_a

    .line 90
    :cond_6e
    sget-object v0, Lcom/swype/android/settings/SettingsManager$Key;->nextWordPrediction:Lcom/swype/android/settings/SettingsManager$Key;

    invoke-virtual {v0}, Lcom/swype/android/settings/SettingsManager$Key;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/swype/android/settings/WordSuggestionSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 91
    if-eqz v0, :cond_a

    .line 92
    invoke-virtual {p0}, Lcom/swype/android/settings/WordSuggestionSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_a
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/swype/android/settings/WordSuggestionSetting;->startSwypeCore()V

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/swype/android/settings/WordSuggestionSetting;->isCoreStarted:Z

    .line 29
    iget-object v0, p0, Lcom/swype/android/settings/WordSuggestionSetting;->core:Lcom/swype/android/jni/SwypeCore;

    invoke-static {p0, v0}, Lcom/swype/android/widget/Themes;->setActivityTheme(Landroid/app/Activity;Lcom/swype/android/jni/SwypeCore;)V

    .line 30
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 51
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 52
    invoke-virtual {p0}, Lcom/swype/android/settings/WordSuggestionSetting;->getApplication()Landroid/app/Application;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/swype/android/inputmethod/SwypeApplication;

    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeApplication;->getSettingsManager()Lcom/swype/android/settings/SettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/swype/android/settings/SettingsManager;->saveSettings()V

    .line 53
    return-void
.end method

.method public onRestart()V
    .registers 2

    .prologue
    .line 35
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onRestart()V

    .line 36
    iget-boolean v0, p0, Lcom/swype/android/settings/WordSuggestionSetting;->isCoreStarted:Z

    if-nez v0, :cond_d

    .line 37
    invoke-direct {p0}, Lcom/swype/android/settings/WordSuggestionSetting;->startSwypeCore()V

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/swype/android/settings/WordSuggestionSetting;->isCoreStarted:Z

    .line 40
    :cond_d
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 44
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 45
    invoke-virtual {p0}, Lcom/swype/android/settings/WordSuggestionSetting;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/swype/android/inputmethod/SwypeApplication;

    invoke-virtual {v0}, Lcom/swype/android/inputmethod/SwypeApplication;->getSettingsManager()Lcom/swype/android/settings/SettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/swype/android/settings/SettingsManager;->loadSettings()Z

    .line 46
    iget-object v0, p0, Lcom/swype/android/settings/WordSuggestionSetting;->core:Lcom/swype/android/jni/SwypeCore;

    invoke-virtual {v0}, Lcom/swype/android/jni/SwypeCore;->getMessageLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/swype/android/settings/WordSuggestionSetting;->updatePreferences(Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public onStop()V
    .registers 2

    .prologue
    .line 57
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 58
    iget-boolean v0, p0, Lcom/swype/android/settings/WordSuggestionSetting;->isCoreStarted:Z

    if-eqz v0, :cond_f

    .line 59
    iget-object v0, p0, Lcom/swype/android/settings/WordSuggestionSetting;->core:Lcom/swype/android/jni/SwypeCore;

    invoke-virtual {v0}, Lcom/swype/android/jni/SwypeCore;->onDestroy()V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/swype/android/settings/WordSuggestionSetting;->isCoreStarted:Z

    .line 62
    :cond_f
    return-void
.end method
