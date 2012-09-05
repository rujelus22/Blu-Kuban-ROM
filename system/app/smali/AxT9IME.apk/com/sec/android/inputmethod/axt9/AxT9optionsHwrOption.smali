.class public Lcom/sec/android/inputmethod/axt9/AxT9optionsHwrOption;
.super Landroid/preference/PreferenceActivity;
.source "AxT9optionsHwrOption.java"


# instance fields
.field aboutclickListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field private mListPreference_recognition_time:Landroid/preference/ListPreference;

.field private mPreference:Landroid/preference/Preference;

.field recognition_time_entry:[Ljava/lang/String;

.field recognition_time_valuse:[Ljava/lang/String;

.field sSecond:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 50
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9optionsHwrOption$1;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsHwrOption$1;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsHwrOption;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsHwrOption;->aboutclickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 33
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsHwrOption;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0086

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsHwrOption;->sSecond:Ljava/lang/String;

    .line 36
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0.1 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsHwrOption;->sSecond:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0.3 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsHwrOption;->sSecond:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0.5 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsHwrOption;->sSecond:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "1 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsHwrOption;->sSecond:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "2 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsHwrOption;->sSecond:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsHwrOption;->recognition_time_entry:[Ljava/lang/String;

    .line 37
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "100"

    aput-object v1, v0, v3

    const-string v1, "300"

    aput-object v1, v0, v4

    const-string v1, "500"

    aput-object v1, v0, v5

    const-string v1, "1000"

    aput-object v1, v0, v6

    const-string v1, "2000"

    aput-object v1, v0, v7

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsHwrOption;->recognition_time_valuse:[Ljava/lang/String;

    .line 39
    const v0, 0x7f030018

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsHwrOption;->addPreferencesFromResource(I)V

    .line 42
    const-string v0, "about_hwr"

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsHwrOption;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsHwrOption;->mPreference:Landroid/preference/Preference;

    .line 43
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsHwrOption;->mPreference:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsHwrOption;->aboutclickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 45
    const-string v0, "recognition_time"

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsHwrOption;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsHwrOption;->mListPreference_recognition_time:Landroid/preference/ListPreference;

    .line 46
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsHwrOption;->mListPreference_recognition_time:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsHwrOption;->recognition_time_entry:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 47
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsHwrOption;->mListPreference_recognition_time:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsHwrOption;->recognition_time_valuse:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 48
    return-void
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 92
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 93
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "outSettings"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsHwrOption;->sendBroadcast(Landroid/content/Intent;)V

    .line 95
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 96
    return-void
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 62
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 63
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "inSettings"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsHwrOption;->sendBroadcast(Landroid/content/Intent;)V

    .line 65
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 66
    return-void
.end method
