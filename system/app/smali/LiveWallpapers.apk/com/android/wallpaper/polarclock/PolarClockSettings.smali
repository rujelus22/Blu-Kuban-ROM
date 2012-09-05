.class public Lcom/android/wallpaper/polarclock/PolarClockSettings;
.super Landroid/service/wallpaper/WallpaperSettingsActivity;
.source "PolarClockSettings.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperSettingsActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "icicle"

    .prologue
    .line 30
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperSettingsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    invoke-virtual {p0}, Lcom/android/wallpaper/polarclock/PolarClockSettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    const-string v1, "polar_clock_settings"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 33
    const v0, 0x7f030006

    invoke-virtual {p0, v0}, Lcom/android/wallpaper/polarclock/PolarClockSettings;->addPreferencesFromResource(I)V

    .line 34
    invoke-virtual {p0}, Lcom/android/wallpaper/polarclock/PolarClockSettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 36
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/android/wallpaper/polarclock/PolarClockSettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 47
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperSettingsActivity;->onDestroy()V

    .line 48
    return-void
.end method

.method protected onResume()V
    .registers 1

    .prologue
    .line 40
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperSettingsActivity;->onResume()V

    .line 41
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 3
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 53
    return-void
.end method
