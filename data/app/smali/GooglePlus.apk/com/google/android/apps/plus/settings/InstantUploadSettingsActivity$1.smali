.class Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "InstantUploadSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$1;->this$0:Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 16
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 71
    if-nez p2, :cond_3

    .line 110
    :cond_2
    :goto_2
    return-void

    .line 75
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, action:Ljava/lang/String;
    const-string v8, "com.google.android.apps.plus.iu.upload_all_progress"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 77
    const-string v8, "upload_all_progress"

    const/4 v9, -0x1

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 79
    .local v1, progress:I
    const-string v8, "upload_all_count"

    const/4 v9, -0x1

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 81
    .local v7, total:I
    const-string v8, "upload_all_state"

    const/4 v9, -0x1

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 86
    .local v2, state:I
    iget-object v9, p0, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$1;->this$0:Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;

    if-eq v7, v1, :cond_6d

    const/4 v8, 0x1

    :goto_29
    #setter for: Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->mIsUploading:Z
    invoke-static {v9, v8}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->access$002(Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;Z)Z

    .line 88
    iget-object v8, p0, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$1;->this$0:Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;

    #getter for: Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->mIsUploading:Z
    invoke-static {v8}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->access$000(Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;)Z

    move-result v8

    if-nez v8, :cond_6f

    .line 89
    iget-object v8, p0, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$1;->this$0:Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;

    const v9, 0x7f0800f1

    invoke-virtual {v8, v9}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 90
    .local v6, title:Ljava/lang/String;
    iget-object v8, p0, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$1;->this$0:Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;

    const v9, 0x7f0800f3

    invoke-virtual {v8, v9}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 91
    .local v4, summary:Ljava/lang/String;
    const v8, 0x7f080100

    const/4 v9, 0x0

    invoke-static {p1, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 93
    iget-object v8, p0, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$1;->this$0:Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;

    iget-object v9, p0, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$1;->this$0:Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;

    #getter for: Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->mUploadsProgressReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v9}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->access$100(Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;)Landroid/content/BroadcastReceiver;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 106
    :goto_5c
    iget-object v8, p0, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$1;->this$0:Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;

    invoke-static {}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->access$300()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 107
    .local v5, syncNowPreference:Landroid/preference/Preference;
    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 108
    invoke-virtual {v5, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 86
    .end local v4           #summary:Ljava/lang/String;
    .end local v5           #syncNowPreference:Landroid/preference/Preference;
    .end local v6           #title:Ljava/lang/String;
    :cond_6d
    const/4 v8, 0x0

    goto :goto_29

    .line 95
    :cond_6f
    iget-object v8, p0, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$1;->this$0:Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;

    const v9, 0x7f0800f2

    invoke-virtual {v8, v9}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 96
    .restart local v6       #title:Ljava/lang/String;
    if-eqz v2, :cond_7d

    const/4 v8, 0x1

    if-ne v2, v8, :cond_98

    .line 98
    :cond_7d
    iget-object v8, p0, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$1;->this$0:Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;

    const v9, 0x7f0800f5

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #summary:Ljava/lang/String;
    goto :goto_5c

    .line 101
    .end local v4           #summary:Ljava/lang/String;
    :cond_98
    iget-object v8, p0, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$1;->this$0:Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;

    #calls: Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->getRejectStateString(I)Ljava/lang/String;
    invoke-static {v8, v2}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->access$200(Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;I)Ljava/lang/String;

    move-result-object v3

    .line 102
    .local v3, stateString:Ljava/lang/String;
    iget-object v8, p0, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$1;->this$0:Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;

    const v9, 0x7f0800f6

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v3, v10, v11

    invoke-virtual {v8, v9, v10}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #summary:Ljava/lang/String;
    goto :goto_5c
.end method
