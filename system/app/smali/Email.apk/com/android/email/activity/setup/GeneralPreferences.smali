.class public Lcom/android/email/activity/setup/GeneralPreferences;
.super Landroid/preference/PreferenceFragment;
.source "GeneralPreferences.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mAutoAdvance:Landroid/preference/ListPreference;

.field private mPreferences:Lcom/android/email/Preferences;

.field mSizeSummaries:[Ljava/lang/CharSequence;

.field private mTextZoom:Landroid/preference/ListPreference;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method private loadSettings()V
    .registers 3

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/android/email/activity/setup/GeneralPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/GeneralPreferences;->mPreferences:Lcom/android/email/Preferences;

    .line 104
    const-string v0, "auto_advance"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/GeneralPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/email/activity/setup/GeneralPreferences;->mAutoAdvance:Landroid/preference/ListPreference;

    .line 105
    iget-object v0, p0, Lcom/android/email/activity/setup/GeneralPreferences;->mAutoAdvance:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/email/activity/setup/GeneralPreferences;->mPreferences:Lcom/android/email/Preferences;

    invoke-virtual {v1}, Lcom/android/email/Preferences;->getAutoAdvanceDirection()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 106
    iget-object v0, p0, Lcom/android/email/activity/setup/GeneralPreferences;->mAutoAdvance:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 108
    const-string v0, "text_zoom"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/GeneralPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/email/activity/setup/GeneralPreferences;->mTextZoom:Landroid/preference/ListPreference;

    .line 109
    iget-object v0, p0, Lcom/android/email/activity/setup/GeneralPreferences;->mTextZoom:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/email/activity/setup/GeneralPreferences;->mPreferences:Lcom/android/email/Preferences;

    invoke-virtual {v1}, Lcom/android/email/Preferences;->getTextZoom()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 110
    iget-object v0, p0, Lcom/android/email/activity/setup/GeneralPreferences;->mTextZoom:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 112
    invoke-direct {p0}, Lcom/android/email/activity/setup/GeneralPreferences;->reloadDynamicSummaries()V

    .line 113
    return-void
.end method

.method private reloadDynamicSummaries()V
    .registers 5

    .prologue
    .line 119
    iget-object v2, p0, Lcom/android/email/activity/setup/GeneralPreferences;->mPreferences:Lcom/android/email/Preferences;

    invoke-virtual {v2}, Lcom/android/email/Preferences;->getTextZoom()I

    move-result v1

    .line 121
    .local v1, textZoomIndex:I
    iget-object v2, p0, Lcom/android/email/activity/setup/GeneralPreferences;->mSizeSummaries:[Ljava/lang/CharSequence;

    if-nez v2, :cond_1b

    .line 122
    invoke-virtual {p0}, Lcom/android/email/activity/setup/GeneralPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060012

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/activity/setup/GeneralPreferences;->mSizeSummaries:[Ljava/lang/CharSequence;

    .line 125
    :cond_1b
    const/4 v0, 0x0

    .line 126
    .local v0, summary:Ljava/lang/CharSequence;
    if-ltz v1, :cond_27

    iget-object v2, p0, Lcom/android/email/activity/setup/GeneralPreferences;->mSizeSummaries:[Ljava/lang/CharSequence;

    array-length v2, v2

    if-ge v1, v2, :cond_27

    .line 127
    iget-object v2, p0, Lcom/android/email/activity/setup/GeneralPreferences;->mSizeSummaries:[Ljava/lang/CharSequence;

    aget-object v0, v2, v1

    .line 129
    :cond_27
    iget-object v2, p0, Lcom/android/email/activity/setup/GeneralPreferences;->mTextZoom:Landroid/preference/ListPreference;

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 130
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {p0}, Lcom/android/email/activity/setup/GeneralPreferences;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    const-string v2, "AndroidMail.Main"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 54
    const v1, 0x7f050006

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/GeneralPreferences;->addPreferencesFromResource(I)V

    .line 56
    invoke-virtual {p0}, Lcom/android/email/activity/setup/GeneralPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/email/activity/UiUtilities;->useTwoPane(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 58
    const-string v1, "category_general_preferences"

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/GeneralPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 59
    .local v0, pc:Landroid/preference/PreferenceCategory;
    const-string v1, "reply_all"

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/GeneralPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 61
    .end local v0           #pc:Landroid/preference/PreferenceCategory;
    :cond_2d
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 7
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v1, 0x1

    .line 71
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, key:Ljava/lang/String;
    const-string v2, "auto_advance"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 74
    iget-object v2, p0, Lcom/android/email/activity/setup/GeneralPreferences;->mPreferences:Lcom/android/email/Preferences;

    iget-object v3, p0, Lcom/android/email/activity/setup/GeneralPreferences;->mAutoAdvance:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v3, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/email/Preferences;->setAutoAdvanceDirection(I)V

    .line 81
    :goto_1a
    return v1

    .line 76
    .restart local p2
    :cond_1b
    const-string v2, "text_zoom"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 77
    iget-object v2, p0, Lcom/android/email/activity/setup/GeneralPreferences;->mPreferences:Lcom/android/email/Preferences;

    iget-object v3, p0, Lcom/android/email/activity/setup/GeneralPreferences;->mTextZoom:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v3, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/email/Preferences;->setTextZoom(I)V

    .line 78
    invoke-direct {p0}, Lcom/android/email/activity/setup/GeneralPreferences;->reloadDynamicSummaries()V

    goto :goto_1a

    .line 81
    .restart local p2
    :cond_34
    const/4 v1, 0x0

    goto :goto_1a
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 7
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-virtual {p0}, Lcom/android/email/activity/setup/GeneralPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_8

    .line 99
    :cond_7
    :goto_7
    return v1

    .line 91
    :cond_8
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, key:Ljava/lang/String;
    const-string v2, "clear_trusted_senders"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 93
    iget-object v2, p0, Lcom/android/email/activity/setup/GeneralPreferences;->mPreferences:Lcom/android/email/Preferences;

    invoke-virtual {v2}, Lcom/android/email/Preferences;->clearTrustedSenders()V

    .line 94
    invoke-virtual {p0}, Lcom/android/email/activity/setup/GeneralPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f08017e

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 96
    const/4 v1, 0x1

    goto :goto_7
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/email/activity/setup/GeneralPreferences;->loadSettings()V

    .line 66
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 67
    return-void
.end method
