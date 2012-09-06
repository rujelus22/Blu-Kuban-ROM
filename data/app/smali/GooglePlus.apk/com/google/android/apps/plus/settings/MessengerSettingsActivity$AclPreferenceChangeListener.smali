.class Lcom/google/android/apps/plus/settings/MessengerSettingsActivity$AclPreferenceChangeListener;
.super Ljava/lang/Object;
.source "MessengerSettingsActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AclPreferenceChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/google/android/apps/plus/settings/MessengerSettingsActivity$AclPreferenceChangeListener;->this$0:Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 11
    .parameter "preference"
    .parameter "value"

    .prologue
    .line 49
    instance-of v4, p2, Ljava/lang/String;

    if-eqz v4, :cond_8d

    move-object v1, p2

    .line 50
    check-cast v1, Ljava/lang/String;

    .line 51
    .local v1, acl:Ljava/lang/String;
    const/4 v2, -0x1

    .line 52
    .local v2, aclValue:I
    const/4 v3, -0x1

    .line 53
    .local v3, subtitle:I
    iget-object v4, p0, Lcom/google/android/apps/plus/settings/MessengerSettingsActivity$AclPreferenceChangeListener;->this$0:Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;

    const v5, 0x7f0803af

    invoke-virtual {v4, v5}, Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8f

    .line 54
    const/4 v2, 0x1

    .line 55
    const v3, 0x7f0802e0

    .line 63
    :cond_1c
    :goto_1c
    const/4 v4, -0x1

    if-eq v2, v4, :cond_b9

    .line 64
    iget-object v4, p0, Lcom/google/android/apps/plus/settings/MessengerSettingsActivity$AclPreferenceChangeListener;->this$0:Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;

    #setter for: Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;->mAclValueToSet:Ljava/lang/String;
    invoke-static {v4, v1}, Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;->access$002(Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 65
    iget-object v4, p0, Lcom/google/android/apps/plus/settings/MessengerSettingsActivity$AclPreferenceChangeListener;->this$0:Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    #setter for: Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;->mAclSummaryToSet:Ljava/lang/Integer;
    invoke-static {v4, v5}, Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;->access$102(Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 66
    const-string v4, "MessengerSettings"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_4e

    .line 67
    const-string v4, "MessengerSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Changing acl to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_4e
    iget-object v4, p0, Lcom/google/android/apps/plus/settings/MessengerSettingsActivity$AclPreferenceChangeListener;->this$0:Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;

    invoke-virtual {v4}, Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "account"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/content/EsAccount;

    .line 70
    .local v0, account:Lcom/google/android/apps/plus/content/EsAccount;
    iget-object v4, p0, Lcom/google/android/apps/plus/settings/MessengerSettingsActivity$AclPreferenceChangeListener;->this$0:Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;

    iget-object v5, p0, Lcom/google/android/apps/plus/settings/MessengerSettingsActivity$AclPreferenceChangeListener;->this$0:Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;

    invoke-static {v5, v0, v2}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->setAcl(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    #setter for: Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;->mRequestId:Ljava/lang/Integer;
    invoke-static {v4, v5}, Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;->access$202(Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 73
    iget-object v4, p0, Lcom/google/android/apps/plus/settings/MessengerSettingsActivity$AclPreferenceChangeListener;->this$0:Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;->showDialog(ILandroid/os/Bundle;)Z

    .line 74
    iget-object v4, p0, Lcom/google/android/apps/plus/settings/MessengerSettingsActivity$AclPreferenceChangeListener;->this$0:Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;

    new-instance v5, Lcom/google/android/apps/plus/settings/MessengerSettingsActivity$TimeoutRunnable;

    iget-object v6, p0, Lcom/google/android/apps/plus/settings/MessengerSettingsActivity$AclPreferenceChangeListener;->this$0:Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;

    invoke-direct {v5, v6}, Lcom/google/android/apps/plus/settings/MessengerSettingsActivity$TimeoutRunnable;-><init>(Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;)V

    #setter for: Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;->mTimeoutRunnable:Ljava/lang/Runnable;
    invoke-static {v4, v5}, Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;->access$302(Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 75
    iget-object v4, p0, Lcom/google/android/apps/plus/settings/MessengerSettingsActivity$AclPreferenceChangeListener;->this$0:Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;

    iget-object v4, v4, Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/google/android/apps/plus/settings/MessengerSettingsActivity$AclPreferenceChangeListener;->this$0:Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;

    #getter for: Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;->mTimeoutRunnable:Ljava/lang/Runnable;
    invoke-static {v5}, Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;->access$300(Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;)Ljava/lang/Runnable;

    move-result-object v5

    const-wide/16 v6, 0x2710

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 84
    .end local v0           #account:Lcom/google/android/apps/plus/content/EsAccount;
    .end local v1           #acl:Ljava/lang/String;
    .end local v2           #aclValue:I
    .end local v3           #subtitle:I
    :cond_8d
    :goto_8d
    const/4 v4, 0x0

    return v4

    .line 56
    .restart local v1       #acl:Ljava/lang/String;
    .restart local v2       #aclValue:I
    .restart local v3       #subtitle:I
    :cond_8f
    iget-object v4, p0, Lcom/google/android/apps/plus/settings/MessengerSettingsActivity$AclPreferenceChangeListener;->this$0:Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;

    const v5, 0x7f0803b0

    invoke-virtual {v4, v5}, Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a4

    .line 57
    const/4 v2, 0x3

    .line 58
    const v3, 0x7f0802e2

    goto/16 :goto_1c

    .line 59
    :cond_a4
    iget-object v4, p0, Lcom/google/android/apps/plus/settings/MessengerSettingsActivity$AclPreferenceChangeListener;->this$0:Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;

    const v5, 0x7f0803b1

    invoke-virtual {v4, v5}, Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 60
    const/4 v2, 0x2

    .line 61
    const v3, 0x7f0802e4

    goto/16 :goto_1c

    .line 77
    :cond_b9
    const-string v4, "MessengerSettings"

    const/4 v5, 0x5

    invoke-static {v4, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_8d

    .line 78
    const-string v4, "MessengerSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid ACL value ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8d
.end method
