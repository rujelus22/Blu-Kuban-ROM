.class public Lcom/google/android/youtube/videos/honeycomb/SettingsActivity;
.super Landroid/preference/PreferenceActivity;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/videos/honeycomb/SettingsActivity$GeneralPrefsFragment;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 54
    return-void
.end method

.method public static createIntent(Landroid/content/Context;)Landroid/content/Intent;
    .registers 4
    .parameter

    .prologue
    .line 39
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/youtube/videos/honeycomb/SettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, ":android:no_headers"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const-string v1, ":android:show_fragment"

    const-class v2, Lcom/google/android/youtube/videos/honeycomb/SettingsActivity$GeneralPrefsFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "icicle"

    .prologue
    .line 26
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    invoke-virtual {p0}, Lcom/google/android/youtube/videos/honeycomb/SettingsActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/videos/VideosApplication;

    .line 29
    .local v1, application:Lcom/google/android/youtube/videos/VideosApplication;
    invoke-virtual {p0}, Lcom/google/android/youtube/videos/honeycomb/SettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 30
    .local v0, actionBar:Landroid/app/ActionBar;
    const/16 v2, 0xc

    .line 31
    .local v2, displayOptions:I
    invoke-virtual {v0, v2, v2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 33
    invoke-virtual {v1}, Lcom/google/android/youtube/videos/VideosApplication;->getPlatformUtil()Lcom/google/android/youtube/core/PlatformUtil;

    move-result-object v3

    invoke-interface {v3, p0}, Lcom/google/android/youtube/core/PlatformUtil;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 34
    const/4 v3, 0x6

    invoke-virtual {p0, v3}, Lcom/google/android/youtube/videos/honeycomb/SettingsActivity;->setRequestedOrientation(I)V

    .line 36
    :cond_20
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 46
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_e

    .line 51
    const/4 v0, 0x0

    :goto_8
    return v0

    .line 48
    :pswitch_9
    invoke-virtual {p0}, Lcom/google/android/youtube/videos/honeycomb/SettingsActivity;->finish()V

    .line 49
    const/4 v0, 0x1

    goto :goto_8

    .line 46
    :pswitch_data_e
    .packed-switch 0x102002c
        :pswitch_9
    .end packed-switch
.end method
