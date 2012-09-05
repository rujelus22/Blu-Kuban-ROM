.class public Lcom/sec/android/app/shutdown/ShutdownPreference;
.super Landroid/preference/PreferenceActivity;
.source "ShutdownPreference.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field enableShutdown:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/shutdown/ShutdownPreference;->enableShutdown:Landroid/preference/CheckBoxPreference;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    .line 35
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const/high16 v2, 0x7f02

    invoke-virtual {p0, v2}, Lcom/sec/android/app/shutdown/ShutdownPreference;->addPreferencesFromResource(I)V

    .line 41
    const-string v2, "shutdown"

    invoke-virtual {p0, v2}, Lcom/sec/android/app/shutdown/ShutdownPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/sec/android/app/shutdown/ShutdownPreference;->enableShutdown:Landroid/preference/CheckBoxPreference;

    .line 43
    const/4 v1, 0x0

    .line 47
    .local v1, value:I
    :try_start_14
    invoke-virtual {p0}, Lcom/sec/android/app/shutdown/ShutdownPreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "SHOULD_SHUT_DOWN"

    invoke-static {v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_1d
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_14 .. :try_end_1d} :catch_2c

    move-result v1

    .line 57
    :goto_1e
    iget-object v4, p0, Lcom/sec/android/app/shutdown/ShutdownPreference;->enableShutdown:Landroid/preference/CheckBoxPreference;

    if-ne v1, v3, :cond_32

    move v2, v3

    :goto_23
    invoke-virtual {v4, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 59
    iget-object v2, p0, Lcom/sec/android/app/shutdown/ShutdownPreference;->enableShutdown:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 61
    return-void

    .line 49
    :catch_2c
    move-exception v0

    .line 51
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    .line 53
    const/4 v1, 0x0

    goto :goto_1e

    .line 57
    .end local v0           #e:Landroid/provider/Settings$SettingNotFoundException;
    :cond_32
    const/4 v2, 0x0

    goto :goto_23
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 9
    .parameter "p"
    .parameter "newValue"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 67
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 69
    .local v0, enabled:Z
    const/4 v1, 0x0

    .line 71
    .local v1, tempFlag:I
    if-eqz v0, :cond_2a

    .line 73
    invoke-virtual {p0}, Lcom/sec/android/app/shutdown/ShutdownPreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "SHOULD_SHUT_DOWN"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 75
    invoke-virtual {p0}, Lcom/sec/android/app/shutdown/ShutdownPreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "SHOULD_SHUT_DOWN_FLAG"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 77
    if-ne v1, v5, :cond_29

    .line 79
    invoke-virtual {p0}, Lcom/sec/android/app/shutdown/ShutdownPreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "SHOULD_SHUT_DOWN_FLAG"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 89
    :cond_29
    :goto_29
    return v5

    .line 85
    :cond_2a
    invoke-virtual {p0}, Lcom/sec/android/app/shutdown/ShutdownPreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "SHOULD_SHUT_DOWN"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_29
.end method
