.class public Lcom/android/calendar/OtherPreferences;
.super Landroid/preference/PreferenceFragment;
.source "OtherPreferences.java"


# instance fields
.field private mCopyDb:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 37
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "icicle"

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-virtual {p0}, Lcom/android/calendar/OtherPreferences;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    const-string v1, "com.android.calendar_preferences"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 43
    const v0, 0x7f060004

    invoke-virtual {p0, v0}, Lcom/android/calendar/OtherPreferences;->addPreferencesFromResource(I)V

    .line 44
    const-string v0, "preferences_copy_db"

    invoke-virtual {p0, v0}, Lcom/android/calendar/OtherPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/OtherPreferences;->mCopyDb:Landroid/preference/Preference;

    .line 45
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 7
    .parameter "screen"
    .parameter "preference"

    .prologue
    .line 49
    iget-object v1, p0, Lcom/android/calendar/OtherPreferences;->mCopyDb:Landroid/preference/Preference;

    if-ne p2, v1, :cond_1c

    .line 50
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 51
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.providers.calendar"

    const-string v3, "com.android.providers.calendar.CalendarDebugActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 53
    invoke-virtual {p0, v0}, Lcom/android/calendar/OtherPreferences;->startActivity(Landroid/content/Intent;)V

    .line 57
    const/4 v1, 0x1

    .end local v0           #intent:Landroid/content/Intent;
    :goto_1b
    return v1

    .line 55
    :cond_1c
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto :goto_1b
.end method
