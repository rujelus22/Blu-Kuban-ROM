.class Lcom/google/android/apps/plus/phone/SettingsActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/phone/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/phone/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/phone/SettingsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/SettingsActivity$1;->this$0:Lcom/google/android/apps/plus/phone/SettingsActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 15
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x1

    const/4 v9, -0x1

    const/4 v8, 0x0

    .line 139
    if-nez p2, :cond_6

    .line 168
    :cond_5
    :goto_5
    return-void

    .line 143
    :cond_6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, action:Ljava/lang/String;
    const-string v6, "com.google.android.picasasync.upload_all_progress"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 145
    const-string v6, "upload_all_progress"

    invoke-virtual {p2, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 146
    .local v1, progress:I
    const-string v6, "upload_all_count"

    invoke-virtual {p2, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 150
    .local v5, total:I
    iget-object v9, p0, Lcom/google/android/apps/plus/phone/SettingsActivity$1;->this$0:Lcom/google/android/apps/plus/phone/SettingsActivity;

    if-eq v5, v1, :cond_66

    move v6, v7

    :goto_23
    #setter for: Lcom/google/android/apps/plus/phone/SettingsActivity;->mIsUploading:Z
    invoke-static {v9, v6}, Lcom/google/android/apps/plus/phone/SettingsActivity;->access$002(Lcom/google/android/apps/plus/phone/SettingsActivity;Z)Z

    .line 152
    iget-object v6, p0, Lcom/google/android/apps/plus/phone/SettingsActivity$1;->this$0:Lcom/google/android/apps/plus/phone/SettingsActivity;

    #getter for: Lcom/google/android/apps/plus/phone/SettingsActivity;->mIsUploading:Z
    invoke-static {v6}, Lcom/google/android/apps/plus/phone/SettingsActivity;->access$000(Lcom/google/android/apps/plus/phone/SettingsActivity;)Z

    move-result v6

    if-nez v6, :cond_68

    .line 153
    iget-object v6, p0, Lcom/google/android/apps/plus/phone/SettingsActivity$1;->this$0:Lcom/google/android/apps/plus/phone/SettingsActivity;

    const v7, 0x7f0700b5

    invoke-virtual {v6, v7}, Lcom/google/android/apps/plus/phone/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 154
    .local v4, title:Ljava/lang/String;
    iget-object v6, p0, Lcom/google/android/apps/plus/phone/SettingsActivity$1;->this$0:Lcom/google/android/apps/plus/phone/SettingsActivity;

    const v7, 0x7f0700b7

    invoke-virtual {v6, v7}, Lcom/google/android/apps/plus/phone/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 155
    .local v2, summary:Ljava/lang/String;
    const v6, 0x7f0700bb

    invoke-static {p1, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 157
    iget-object v6, p0, Lcom/google/android/apps/plus/phone/SettingsActivity$1;->this$0:Lcom/google/android/apps/plus/phone/SettingsActivity;

    iget-object v7, p0, Lcom/google/android/apps/plus/phone/SettingsActivity$1;->this$0:Lcom/google/android/apps/plus/phone/SettingsActivity;

    #getter for: Lcom/google/android/apps/plus/phone/SettingsActivity;->mUploadsProgressReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v7}, Lcom/google/android/apps/plus/phone/SettingsActivity;->access$100(Lcom/google/android/apps/plus/phone/SettingsActivity;)Landroid/content/BroadcastReceiver;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/apps/plus/phone/SettingsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 164
    :goto_55
    iget-object v6, p0, Lcom/google/android/apps/plus/phone/SettingsActivity$1;->this$0:Lcom/google/android/apps/plus/phone/SettingsActivity;

    invoke-static {}, Lcom/google/android/apps/plus/phone/SettingsActivity;->access$200()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/apps/plus/phone/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 165
    .local v3, syncNowPreference:Landroid/preference/Preference;
    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 166
    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_5

    .end local v2           #summary:Ljava/lang/String;
    .end local v3           #syncNowPreference:Landroid/preference/Preference;
    .end local v4           #title:Ljava/lang/String;
    :cond_66
    move v6, v8

    .line 150
    goto :goto_23

    .line 159
    :cond_68
    iget-object v6, p0, Lcom/google/android/apps/plus/phone/SettingsActivity$1;->this$0:Lcom/google/android/apps/plus/phone/SettingsActivity;

    const v9, 0x7f0700b6

    invoke-virtual {v6, v9}, Lcom/google/android/apps/plus/phone/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 160
    .restart local v4       #title:Ljava/lang/String;
    iget-object v6, p0, Lcom/google/android/apps/plus/phone/SettingsActivity$1;->this$0:Lcom/google/android/apps/plus/phone/SettingsActivity;

    const v9, 0x7f0700b9

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v10, v7

    invoke-virtual {v6, v9, v10}, Lcom/google/android/apps/plus/phone/SettingsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #summary:Ljava/lang/String;
    goto :goto_55
.end method
