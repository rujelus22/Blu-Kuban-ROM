.class Lcom/sec/android/app/music/common/settings/MusicSettingsActivity$2;
.super Ljava/lang/Object;
.source "MusicSettingsActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity$2;->this$0:Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 144
    invoke-static {}, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "effect clicked!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity$2;->this$0:Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;

    #getter for: Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->mSoundEffectSetting:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->access$200(Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/Preference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 146
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity$2;->this$0:Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;

    #getter for: Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->access$000(Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 147
    const-string v1, "setting_type"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 148
    iget-object v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity$2;->this$0:Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 152
    :goto_2d
    return v3

    .line 150
    :cond_2e
    iget-object v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity$2;->this$0:Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;

    #calls: Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->showSoundEffectErrorToast()V
    invoke-static {v0}, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->access$300(Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;)V

    goto :goto_2d
.end method
