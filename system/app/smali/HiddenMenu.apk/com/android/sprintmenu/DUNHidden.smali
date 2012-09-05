.class public Lcom/android/sprintmenu/DUNHidden;
.super Landroid/preference/PreferenceActivity;
.source "DUNHidden.java"


# instance fields
.field private mDunEnabler:Lcom/android/sprintmenu/DUNEnable;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const/high16 v0, 0x7f04

    invoke-virtual {p0, v0}, Lcom/android/sprintmenu/DUNHidden;->addPreferencesFromResource(I)V

    .line 48
    new-instance v1, Lcom/android/sprintmenu/DUNEnable;

    const-string v0, "button_dun_key"

    invoke-virtual {p0, v0}, Lcom/android/sprintmenu/DUNHidden;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-direct {v1, p0, v0}, Lcom/android/sprintmenu/DUNEnable;-><init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V

    iput-object v1, p0, Lcom/android/sprintmenu/DUNHidden;->mDunEnabler:Lcom/android/sprintmenu/DUNEnable;

    .line 50
    return-void
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 61
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 63
    iget-object v0, p0, Lcom/android/sprintmenu/DUNHidden;->mDunEnabler:Lcom/android/sprintmenu/DUNEnable;

    invoke-virtual {v0}, Lcom/android/sprintmenu/DUNEnable;->pause()V

    .line 64
    return-void
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 54
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 56
    iget-object v0, p0, Lcom/android/sprintmenu/DUNHidden;->mDunEnabler:Lcom/android/sprintmenu/DUNEnable;

    invoke-virtual {v0}, Lcom/android/sprintmenu/DUNEnable;->resume()V

    .line 57
    return-void
.end method
