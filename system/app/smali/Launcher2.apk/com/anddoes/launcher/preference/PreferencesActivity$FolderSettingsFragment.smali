.class public Lcom/anddoes/launcher/preference/PreferencesActivity$FolderSettingsFragment;
.super Lcom/anddoes/launcher/preference/ap;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 1666
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/anddoes/launcher/preference/ap;-><init>(B)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .registers 3

    .prologue
    .line 1679
    iget-object v0, p0, Lcom/anddoes/launcher/preference/PreferencesActivity$FolderSettingsFragment;->a:Lcom/anddoes/launcher/preference/PreferencesActivity;

    iget-object v1, p0, Lcom/anddoes/launcher/preference/PreferencesActivity$FolderSettingsFragment;->b:Landroid/preference/PreferenceManager;

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/preference/PreferencesActivity;->k(Landroid/preference/PreferenceManager;)V

    .line 1680
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 1669
    invoke-super {p0, p1}, Lcom/anddoes/launcher/preference/ap;->onCreate(Landroid/os/Bundle;)V

    .line 1672
    const v0, 0x7f050007

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/preference/PreferencesActivity$FolderSettingsFragment;->addPreferencesFromResource(I)V

    .line 1673
    iget-object v0, p0, Lcom/anddoes/launcher/preference/PreferencesActivity$FolderSettingsFragment;->a:Lcom/anddoes/launcher/preference/PreferencesActivity;

    iget-object v1, p0, Lcom/anddoes/launcher/preference/PreferencesActivity$FolderSettingsFragment;->b:Landroid/preference/PreferenceManager;

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/preference/PreferencesActivity;->c(Landroid/preference/PreferenceManager;)V

    .line 1674
    iget-object v0, p0, Lcom/anddoes/launcher/preference/PreferencesActivity$FolderSettingsFragment;->a:Lcom/anddoes/launcher/preference/PreferencesActivity;

    invoke-static {v0}, Lcom/anddoes/launcher/i;->a(Landroid/content/Context;)Lcom/anddoes/launcher/i;

    move-result-object v0

    const-string v1, "/Settings/Folder"

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/i;->b(Ljava/lang/String;)V

    .line 1675
    return-void
.end method

.method public bridge synthetic onPause()V
    .registers 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/anddoes/launcher/preference/ap;->onPause()V

    return-void
.end method

.method public bridge synthetic onResume()V
    .registers 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/anddoes/launcher/preference/ap;->onResume()V

    return-void
.end method

.method public bridge synthetic onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1
    invoke-super {p0, p1, p2}, Lcom/anddoes/launcher/preference/ap;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method
