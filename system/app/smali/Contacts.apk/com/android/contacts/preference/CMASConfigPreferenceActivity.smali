.class public Lcom/android/contacts/preference/CMASConfigPreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "CMASConfigPreferenceActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field mCheckBox:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const-string v0, "CMASConfigPreferenceActivity"

    const-string v1, "creating pref from XML"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    const/high16 v0, 0x7f05

    invoke-virtual {p0, v0}, Lcom/android/contacts/preference/CMASConfigPreferenceActivity;->addPreferencesFromResource(I)V

    .line 42
    const-string v0, "#cmas#type##all#enabled"

    invoke-virtual {p0, v0}, Lcom/android/contacts/preference/CMASConfigPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/preference/CMASConfigPreferenceActivity;->mCheckBox:Landroid/preference/Preference;

    .line 44
    iget-object v0, p0, Lcom/android/contacts/preference/CMASConfigPreferenceActivity;->mCheckBox:Landroid/preference/Preference;

    if-eqz v0, :cond_27

    .line 45
    const-string v0, "CMASConfigPreferenceActivity"

    const-string v1, "found Checkbox, setting listener"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    iget-object v0, p0, Lcom/android/contacts/preference/CMASConfigPreferenceActivity;->mCheckBox:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 48
    :cond_27
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 8
    .parameter "preference"

    .prologue
    const/4 v5, 0x0

    .line 51
    const-string v2, "CMASConfigPreferenceActivity"

    const-string v3, "finishing"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 54
    .local v1, prefs:Landroid/content/SharedPreferences;
    const/4 v0, 0x1

    .line 56
    .local v0, bTemp:Z
    const-string v2, "#cmas#type##all#enabled"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_2d

    .line 57
    const-string v2, "CMASConfigPreferenceActivity"

    const-string v3, "onPreferenceClick: CMAS NOT enabled.Setting val"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-virtual {p0}, Lcom/android/contacts/preference/CMASConfigPreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "cmas_enabled"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 65
    :goto_29
    invoke-virtual {p0}, Lcom/android/contacts/preference/CMASConfigPreferenceActivity;->finish()V

    .line 66
    return v5

    .line 61
    :cond_2d
    const-string v2, "CMASConfigPreferenceActivity"

    const-string v3, "onPreferenceClick: CMAS Enabled.Setting val"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-virtual {p0}, Lcom/android/contacts/preference/CMASConfigPreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "cmas_enabled"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_29
.end method
