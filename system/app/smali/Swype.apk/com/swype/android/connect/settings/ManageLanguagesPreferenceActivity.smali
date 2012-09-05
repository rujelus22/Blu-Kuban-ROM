.class public Lcom/swype/android/connect/settings/ManageLanguagesPreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "ManageLanguagesPreferenceActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2
    .parameter "savedInstanceState"

    .prologue
    .line 22
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    return-void
.end method

.method protected onPause()V
    .registers 1

    .prologue
    .line 46
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 47
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 51
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .registers 5

    .prologue
    .line 27
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 29
    invoke-virtual {p0}, Lcom/swype/android/connect/settings/ManageLanguagesPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 30
    .local v2, root:Landroid/preference/PreferenceScreen;
    if-eqz v2, :cond_12

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v3

    if-lez v3, :cond_12

    .line 31
    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 34
    :cond_12
    const v3, 0x7f050003

    invoke-virtual {p0, v3}, Lcom/swype/android/connect/settings/ManageLanguagesPreferenceActivity;->addPreferencesFromResource(I)V

    .line 36
    invoke-virtual {p0}, Lcom/swype/android/connect/settings/ManageLanguagesPreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/swype/android/connect/manager/LanguageManager;->getInstalledLanguages(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    .line 37
    .local v1, removeLangs:[Ljava/lang/String;
    if-eqz v1, :cond_25

    array-length v3, v1

    if-gtz v3, :cond_31

    .line 38
    :cond_25
    const-string v3, "pref_manage_languages_remove_btn"

    invoke-virtual {p0, v3}, Lcom/swype/android/connect/settings/ManageLanguagesPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 39
    .local v0, pref:Landroid/preference/Preference;
    if-eqz v0, :cond_31

    .line 40
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 43
    .end local v0           #pref:Landroid/preference/Preference;
    :cond_31
    return-void
.end method
