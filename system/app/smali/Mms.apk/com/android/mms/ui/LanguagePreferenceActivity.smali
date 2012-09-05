.class public Lcom/android/mms/ui/LanguagePreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "LanguagePreferenceActivity.java"


# instance fields
.field private bChanged:Z

.field private mlangcount:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private setCount(I)V
    .registers 2
    .parameter "count"

    .prologue
    .line 82
    iput p1, p0, Lcom/android/mms/ui/LanguagePreferenceActivity;->mlangcount:I

    .line 83
    return-void
.end method

.method private validate(I)Z
    .registers 8
    .parameter "check"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 90
    const-string v5, "pref_key_cb_language"

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/LanguagePreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    .line 91
    .local v1, langgroup:Landroid/preference/PreferenceScreen;
    invoke-direct {p0, v4}, Lcom/android/mms/ui/LanguagePreferenceActivity;->setCount(I)V

    .line 92
    const/4 v0, 0x1

    .local v0, index:I
    :goto_e
    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v5

    if-ge v0, v5, :cond_3c

    .line 93
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    .line 94
    .local v2, preference:Landroid/preference/CheckBoxPreference;
    packed-switch p1, :pswitch_data_3e

    .line 92
    :cond_1d
    :goto_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 96
    :pswitch_20
    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1d

    .line 99
    :pswitch_24
    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1d

    .line 102
    :pswitch_28
    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-nez v5, :cond_1d

    .line 111
    .end local v2           #preference:Landroid/preference/CheckBoxPreference;
    :goto_2e
    return v3

    .line 106
    .restart local v2       #preference:Landroid/preference/CheckBoxPreference;
    :pswitch_2f
    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 107
    iget v5, p0, Lcom/android/mms/ui/LanguagePreferenceActivity;->mlangcount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/mms/ui/LanguagePreferenceActivity;->mlangcount:I

    goto :goto_1d

    .end local v2           #preference:Landroid/preference/CheckBoxPreference;
    :cond_3c
    move v3, v4

    .line 111
    goto :goto_2e

    .line 94
    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_20
        :pswitch_28
        :pswitch_2f
        :pswitch_24
    .end packed-switch
.end method


# virtual methods
.method public getCheckedCount()I
    .registers 2

    .prologue
    .line 74
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/mms/ui/LanguagePreferenceActivity;->validate(I)Z

    .line 75
    iget v0, p0, Lcom/android/mms/ui/LanguagePreferenceActivity;->mlangcount:I

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "icicle"

    .prologue
    const/4 v3, 0x0

    .line 62
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    const v2, 0x7f050001

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/LanguagePreferenceActivity;->addPreferencesFromResource(I)V

    .line 64
    const-string v2, "pref_key_cb_language"

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/LanguagePreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    .line 65
    .local v0, langgroup:Landroid/preference/PreferenceScreen;
    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    .line 66
    .local v1, preference:Landroid/preference/Preference;
    const v2, 0x7f03002f

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 67
    iput-boolean v3, p0, Lcom/android/mms/ui/LanguagePreferenceActivity;->bChanged:Z

    .line 68
    return-void
.end method

.method protected onPause()V
    .registers 5

    .prologue
    .line 49
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 50
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 51
    .local v1, sharedpref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 52
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "LanguageCount"

    invoke-virtual {p0}, Lcom/android/mms/ui/LanguagePreferenceActivity;->getCheckedCount()I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 53
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 54
    iget-boolean v2, p0, Lcom/android/mms/ui/LanguagePreferenceActivity;->bChanged:Z

    if-eqz v2, :cond_22

    .line 55
    invoke-virtual {p0}, Lcom/android/mms/ui/LanguagePreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/mms/ui/ChannelUtils;->setCbSettings(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    .line 56
    :cond_22
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 9
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 119
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_select_all_key"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    move-object v2, p2

    .line 120
    check-cast v2, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 121
    invoke-direct {p0, v4}, Lcom/android/mms/ui/LanguagePreferenceActivity;->validate(I)Z

    .line 133
    :goto_1a
    iput-boolean v4, p0, Lcom/android/mms/ui/LanguagePreferenceActivity;->bChanged:Z

    .line 134
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    return v2

    .line 123
    :cond_21
    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lcom/android/mms/ui/LanguagePreferenceActivity;->validate(I)Z

    goto :goto_1a

    .line 125
    :cond_26
    const-string v2, "pref_key_cb_language"

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/LanguagePreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    .line 126
    .local v0, langgroup:Landroid/preference/PreferenceScreen;
    invoke-virtual {v0, v5}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 128
    .local v1, selectallpreference:Landroid/preference/CheckBoxPreference;
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/android/mms/ui/LanguagePreferenceActivity;->validate(I)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 129
    invoke-virtual {v1, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1a

    .line 131
    :cond_3f
    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1a
.end method
