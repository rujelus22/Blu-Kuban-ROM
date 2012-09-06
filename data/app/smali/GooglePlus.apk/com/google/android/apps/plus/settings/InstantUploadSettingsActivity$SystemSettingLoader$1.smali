.class Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$SystemSettingLoader$1;
.super Ljava/lang/Object;
.source "InstantUploadSettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$SystemSettingLoader;->esLoadInBackground()Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$SystemSettingLoader;

.field final synthetic val$summary:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$SystemSettingLoader;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 544
    iput-object p1, p0, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$SystemSettingLoader$1;->this$1:Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$SystemSettingLoader;

    iput-object p2, p0, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$SystemSettingLoader$1;->val$title:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$SystemSettingLoader$1;->val$summary:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 547
    iget-object v1, p0, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$SystemSettingLoader$1;->this$1:Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$SystemSettingLoader;

    iget-object v1, v1, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$SystemSettingLoader;->this$0:Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;

    #getter for: Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->mMasterSyncEnabled:Z
    invoke-static {v1}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->access$1300(Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;)Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$SystemSettingLoader$1;->this$1:Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$SystemSettingLoader;

    iget-object v1, v1, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$SystemSettingLoader;->this$0:Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;

    #getter for: Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->mPhotoSyncEnabled:Z
    invoke-static {v1}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->access$1400(Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 561
    :cond_14
    :goto_14
    return-void

    .line 552
    :cond_15
    iget-object v1, p0, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$SystemSettingLoader$1;->this$1:Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$SystemSettingLoader;

    iget-object v1, v1, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$SystemSettingLoader;->this$0:Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;

    #getter for: Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->mIsUploading:Z
    invoke-static {v1}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->access$000(Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 553
    iget-object v1, p0, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$SystemSettingLoader$1;->this$1:Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$SystemSettingLoader;

    iget-object v1, v1, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$SystemSettingLoader;->this$0:Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;

    iget-object v2, p0, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$SystemSettingLoader$1;->this$1:Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$SystemSettingLoader;

    iget-object v2, v2, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$SystemSettingLoader;->this$0:Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;

    #getter for: Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->mUploadsProgressReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v2}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->access$100(Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-static {}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->access$1500()Landroid/content/IntentFilter;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 558
    :goto_32
    iget-object v1, p0, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$SystemSettingLoader$1;->this$1:Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$SystemSettingLoader;

    iget-object v1, v1, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$SystemSettingLoader;->this$0:Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;

    invoke-static {}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->access$300()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 559
    .local v0, syncNowPreference:Landroid/preference/Preference;
    iget-object v1, p0, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$SystemSettingLoader$1;->val$title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 560
    iget-object v1, p0, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$SystemSettingLoader$1;->val$summary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_14

    .line 555
    .end local v0           #syncNowPreference:Landroid/preference/Preference;
    :cond_49
    iget-object v1, p0, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$SystemSettingLoader$1;->this$1:Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$SystemSettingLoader;

    iget-object v1, v1, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$SystemSettingLoader;->this$0:Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;

    iget-object v2, p0, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$SystemSettingLoader$1;->this$1:Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$SystemSettingLoader;

    iget-object v2, v2, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$SystemSettingLoader;->this$0:Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;

    #getter for: Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->mUploadsProgressReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v2}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->access$100(Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_32
.end method
