.class public abstract Lcom/google/android/googlequicksearchbox/preferences/SettingsControllerBase;
.super Ljava/lang/Object;
.source "SettingsControllerBase.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/preferences/PreferenceController;


# instance fields
.field private final mSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;


# direct methods
.method public constructor <init>(Lcom/google/android/googlequicksearchbox/SearchSettings;)V
    .registers 2
    .parameter "settings"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/preferences/SettingsControllerBase;->mSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

    .line 33
    return-void
.end method


# virtual methods
.method public filterPreference(Landroid/preference/Preference;)Z
    .registers 3
    .parameter "p"

    .prologue
    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method protected getSettings()Lcom/google/android/googlequicksearchbox/SearchSettings;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/SettingsControllerBase;->mSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

    return-object v0
.end method

.method public onCreateComplete(Landroid/os/Bundle;)V
    .registers 2
    .parameter "savedInstanceState"

    .prologue
    .line 46
    return-void
.end method

.method public onDestroy()V
    .registers 1

    .prologue
    .line 50
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 62
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 2
    .parameter "outState"

    .prologue
    .line 66
    return-void
.end method

.method public onStop()V
    .registers 1

    .prologue
    .line 54
    return-void
.end method

.method public setScreen(Landroid/preference/PreferenceScreen;)V
    .registers 2
    .parameter "screen"

    .prologue
    .line 58
    return-void
.end method
