.class public Lcom/sec/android/app/clockpackage/alarm/AutoPowerupSetting;
.super Landroid/preference/PreferenceActivity;
.source "AutoPowerupSetting.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 17
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    const v0, 0x7f050001

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AutoPowerupSetting;->addPreferencesFromResource(I)V

    .line 19
    return-void
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 25
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 28
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AutoPowerupSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 29
    return-void
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 35
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 38
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AutoPowerupSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 39
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 4
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 44
    const-string v0, "auto_power_up"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 45
    invoke-static {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmProvider;->enableNextAlert(Landroid/content/Context;)V

    .line 47
    :cond_b
    return-void
.end method
