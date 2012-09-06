.class public Lcom/google/android/youtube/app/honeycomb/SettingsActivity;
.super Landroid/preference/PreferenceActivity;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/android/youtube/app/YouTubeApplication;

.field private b:Lcom/google/android/youtube/app/ui/dj;

.field private c:Lcom/google/android/youtube/app/honeycomb/SettingsActivity$PrefetchPrefsFragment;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 377
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/app/honeycomb/SettingsActivity;)Lcom/google/android/youtube/app/YouTubeApplication;
    .registers 2
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/SettingsActivity;->a:Lcom/google/android/youtube/app/YouTubeApplication;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/app/honeycomb/SettingsActivity$PrefetchPrefsFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 138
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/SettingsActivity;->c:Lcom/google/android/youtube/app/honeycomb/SettingsActivity$PrefetchPrefsFragment;

    .line 139
    return-void
.end method

.method public onBuildHeaders(Ljava/util/List;)V
    .registers 3
    .parameter

    .prologue
    .line 51
    const v0, 0x7f060002

    invoke-virtual {p0, v0, p1}, Lcom/google/android/youtube/app/honeycomb/SettingsActivity;->loadHeadersFromResource(ILjava/util/List;)V

    .line 52
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    const/16 v1, 0xc

    .line 56
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/SettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 59
    invoke-virtual {v0, v1, v1}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 62
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/SettingsActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/YouTubeApplication;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/SettingsActivity;->a:Lcom/google/android/youtube/app/YouTubeApplication;

    .line 63
    new-instance v0, Lcom/google/android/youtube/app/ui/dj;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/app/ui/dj;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/SettingsActivity;->b:Lcom/google/android/youtube/app/ui/dj;

    .line 64
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 6
    .parameter

    .prologue
    .line 74
    sparse-switch p1, :sswitch_data_66

    .line 108
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_7
    return-object v0

    .line 76
    :sswitch_8
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b00ca

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/google/android/youtube/app/honeycomb/e;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/app/honeycomb/e;-><init>(Lcom/google/android/youtube/app/honeycomb/SettingsActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_7

    .line 88
    :sswitch_2c
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b0130

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f110001

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/SettingsActivity;->a:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v2}, Lcom/google/android/youtube/app/YouTubeApplication;->R()Lcom/google/android/youtube/core/utils/SafeSearch;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/youtube/core/utils/SafeSearch;->a()Lcom/google/android/youtube/core/utils/SafeSearch$SafeSearchMode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/youtube/core/utils/SafeSearch$SafeSearchMode;->ordinal()I

    move-result v2

    new-instance v3, Lcom/google/android/youtube/app/honeycomb/f;

    invoke-direct {v3, p0}, Lcom/google/android/youtube/app/honeycomb/f;-><init>(Lcom/google/android/youtube/app/honeycomb/SettingsActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_7

    .line 102
    :sswitch_57
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/SettingsActivity;->b:Lcom/google/android/youtube/app/ui/dj;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/dj;->a()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_7

    .line 105
    :sswitch_5e
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/SettingsActivity;->c:Lcom/google/android/youtube/app/honeycomb/SettingsActivity$PrefetchPrefsFragment;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/honeycomb/SettingsActivity$PrefetchPrefsFragment;->a()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_7

    .line 74
    nop

    :sswitch_data_66
    .sparse-switch
        0x3ea -> :sswitch_8
        0x3f6 -> :sswitch_2c
        0x3fd -> :sswitch_57
        0x401 -> :sswitch_5e
    .end sparse-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter

    .prologue
    .line 122
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_e

    .line 127
    const/4 v0, 0x0

    :goto_8
    return v0

    .line 124
    :pswitch_9
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/SettingsActivity;->finish()V

    .line 125
    const/4 v0, 0x1

    goto :goto_8

    .line 122
    :pswitch_data_e
    .packed-switch 0x102002c
        :pswitch_9
    .end packed-switch
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 113
    const/16 v0, 0x401

    if-ne p1, v0, :cond_a

    .line 114
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/SettingsActivity;->c:Lcom/google/android/youtube/app/honeycomb/SettingsActivity$PrefetchPrefsFragment;

    invoke-virtual {v0, p3}, Lcom/google/android/youtube/app/honeycomb/SettingsActivity$PrefetchPrefsFragment;->a(Landroid/os/Bundle;)V

    .line 118
    :goto_9
    return-void

    .line 116
    :cond_a
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceActivity;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V

    goto :goto_9
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 68
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 69
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/SettingsActivity;->a:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->F()Lcom/google/android/youtube/core/Analytics;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/Analytics;->a(Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public onSearchRequested()Z
    .registers 2

    .prologue
    .line 134
    const/4 v0, 0x0

    return v0
.end method
