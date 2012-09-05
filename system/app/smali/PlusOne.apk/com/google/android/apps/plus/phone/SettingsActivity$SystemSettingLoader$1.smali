.class Lcom/google/android/apps/plus/phone/SettingsActivity$SystemSettingLoader$1;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/phone/SettingsActivity$SystemSettingLoader;->esLoadInBackground()Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/apps/plus/phone/SettingsActivity$SystemSettingLoader;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/phone/SettingsActivity$SystemSettingLoader;)V
    .registers 2
    .parameter

    .prologue
    .line 805
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/SettingsActivity$SystemSettingLoader$1;->this$1:Lcom/google/android/apps/plus/phone/SettingsActivity$SystemSettingLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 811
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/SettingsActivity$SystemSettingLoader$1;->this$1:Lcom/google/android/apps/plus/phone/SettingsActivity$SystemSettingLoader;

    iget-object v3, v3, Lcom/google/android/apps/plus/phone/SettingsActivity$SystemSettingLoader;->this$0:Lcom/google/android/apps/plus/phone/SettingsActivity;

    #getter for: Lcom/google/android/apps/plus/phone/SettingsActivity;->mPhotoSyncEnabled:Z
    invoke-static {v3}, Lcom/google/android/apps/plus/phone/SettingsActivity;->access$1700(Lcom/google/android/apps/plus/phone/SettingsActivity;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 830
    :goto_a
    return-void

    .line 816
    :cond_b
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/SettingsActivity$SystemSettingLoader$1;->this$1:Lcom/google/android/apps/plus/phone/SettingsActivity$SystemSettingLoader;

    iget-object v3, v3, Lcom/google/android/apps/plus/phone/SettingsActivity$SystemSettingLoader;->this$0:Lcom/google/android/apps/plus/phone/SettingsActivity;

    invoke-static {}, Lcom/google/android/apps/plus/phone/SettingsActivity;->access$200()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/apps/plus/phone/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 819
    .local v1, syncNowPreference:Landroid/preference/Preference;
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/SettingsActivity$SystemSettingLoader$1;->this$1:Lcom/google/android/apps/plus/phone/SettingsActivity$SystemSettingLoader;

    iget-object v3, v3, Lcom/google/android/apps/plus/phone/SettingsActivity$SystemSettingLoader;->this$0:Lcom/google/android/apps/plus/phone/SettingsActivity;

    #getter for: Lcom/google/android/apps/plus/phone/SettingsActivity;->mIsUploading:Z
    invoke-static {v3}, Lcom/google/android/apps/plus/phone/SettingsActivity;->access$000(Lcom/google/android/apps/plus/phone/SettingsActivity;)Z

    move-result v3

    if-eqz v3, :cond_51

    .line 820
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/SettingsActivity$SystemSettingLoader$1;->this$1:Lcom/google/android/apps/plus/phone/SettingsActivity$SystemSettingLoader;

    iget-object v3, v3, Lcom/google/android/apps/plus/phone/SettingsActivity$SystemSettingLoader;->this$0:Lcom/google/android/apps/plus/phone/SettingsActivity;

    const v4, 0x7f0700b6

    invoke-virtual {v3, v4}, Lcom/google/android/apps/plus/phone/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 821
    .local v2, title:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/SettingsActivity$SystemSettingLoader$1;->this$1:Lcom/google/android/apps/plus/phone/SettingsActivity$SystemSettingLoader;

    iget-object v3, v3, Lcom/google/android/apps/plus/phone/SettingsActivity$SystemSettingLoader;->this$0:Lcom/google/android/apps/plus/phone/SettingsActivity;

    const v4, 0x7f0700b8

    invoke-virtual {v3, v4}, Lcom/google/android/apps/plus/phone/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 822
    .local v0, summary:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/SettingsActivity$SystemSettingLoader$1;->this$1:Lcom/google/android/apps/plus/phone/SettingsActivity$SystemSettingLoader;

    iget-object v3, v3, Lcom/google/android/apps/plus/phone/SettingsActivity$SystemSettingLoader;->this$0:Lcom/google/android/apps/plus/phone/SettingsActivity;

    iget-object v4, p0, Lcom/google/android/apps/plus/phone/SettingsActivity$SystemSettingLoader$1;->this$1:Lcom/google/android/apps/plus/phone/SettingsActivity$SystemSettingLoader;

    iget-object v4, v4, Lcom/google/android/apps/plus/phone/SettingsActivity$SystemSettingLoader;->this$0:Lcom/google/android/apps/plus/phone/SettingsActivity;

    #getter for: Lcom/google/android/apps/plus/phone/SettingsActivity;->mUploadsProgressReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v4}, Lcom/google/android/apps/plus/phone/SettingsActivity;->access$100(Lcom/google/android/apps/plus/phone/SettingsActivity;)Landroid/content/BroadcastReceiver;

    move-result-object v4

    invoke-static {}, Lcom/google/android/apps/plus/phone/SettingsActivity;->access$1800()Landroid/content/IntentFilter;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/android/apps/plus/phone/SettingsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 828
    :goto_4a
    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 829
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_a

    .line 824
    .end local v0           #summary:Ljava/lang/String;
    .end local v2           #title:Ljava/lang/String;
    :cond_51
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/SettingsActivity$SystemSettingLoader$1;->this$1:Lcom/google/android/apps/plus/phone/SettingsActivity$SystemSettingLoader;

    iget-object v3, v3, Lcom/google/android/apps/plus/phone/SettingsActivity$SystemSettingLoader;->this$0:Lcom/google/android/apps/plus/phone/SettingsActivity;

    const v4, 0x7f0700b5

    invoke-virtual {v3, v4}, Lcom/google/android/apps/plus/phone/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 825
    .restart local v2       #title:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/SettingsActivity$SystemSettingLoader$1;->this$1:Lcom/google/android/apps/plus/phone/SettingsActivity$SystemSettingLoader;

    iget-object v3, v3, Lcom/google/android/apps/plus/phone/SettingsActivity$SystemSettingLoader;->this$0:Lcom/google/android/apps/plus/phone/SettingsActivity;

    const v4, 0x7f0700b7

    invoke-virtual {v3, v4}, Lcom/google/android/apps/plus/phone/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 826
    .restart local v0       #summary:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/SettingsActivity$SystemSettingLoader$1;->this$1:Lcom/google/android/apps/plus/phone/SettingsActivity$SystemSettingLoader;

    iget-object v3, v3, Lcom/google/android/apps/plus/phone/SettingsActivity$SystemSettingLoader;->this$0:Lcom/google/android/apps/plus/phone/SettingsActivity;

    iget-object v4, p0, Lcom/google/android/apps/plus/phone/SettingsActivity$SystemSettingLoader$1;->this$1:Lcom/google/android/apps/plus/phone/SettingsActivity$SystemSettingLoader;

    iget-object v4, v4, Lcom/google/android/apps/plus/phone/SettingsActivity$SystemSettingLoader;->this$0:Lcom/google/android/apps/plus/phone/SettingsActivity;

    #getter for: Lcom/google/android/apps/plus/phone/SettingsActivity;->mUploadsProgressReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v4}, Lcom/google/android/apps/plus/phone/SettingsActivity;->access$100(Lcom/google/android/apps/plus/phone/SettingsActivity;)Landroid/content/BroadcastReceiver;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/apps/plus/phone/SettingsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_4a
.end method
