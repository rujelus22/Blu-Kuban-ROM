.class Lcom/google/android/apps/plus/phone/SettingsActivity$AclPreferenceChangeListener;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/phone/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AclPreferenceChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/phone/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/phone/SettingsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 555
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/SettingsActivity$AclPreferenceChangeListener;->this$0:Lcom/google/android/apps/plus/phone/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 10
    .parameter "preference"
    .parameter "value"

    .prologue
    .line 563
    instance-of v3, p2, Ljava/lang/String;

    if-eqz v3, :cond_82

    move-object v1, p2

    .line 564
    check-cast v1, Ljava/lang/String;

    .line 565
    .local v1, acl:Ljava/lang/String;
    const/4 v2, -0x1

    .line 566
    .local v2, aclValue:I
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/SettingsActivity$AclPreferenceChangeListener;->this$0:Lcom/google/android/apps/plus/phone/SettingsActivity;

    const v4, 0x7f0702cc

    invoke-virtual {v3, v4}, Lcom/google/android/apps/plus/phone/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_84

    .line 567
    const/4 v2, 0x1

    .line 573
    :cond_18
    :goto_18
    const/4 v3, -0x1

    if-eq v2, v3, :cond_a7

    .line 574
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/SettingsActivity$AclPreferenceChangeListener;->this$0:Lcom/google/android/apps/plus/phone/SettingsActivity;

    #setter for: Lcom/google/android/apps/plus/phone/SettingsActivity;->mAclValueToSet:Ljava/lang/String;
    invoke-static {v3, v1}, Lcom/google/android/apps/plus/phone/SettingsActivity;->access$702(Lcom/google/android/apps/plus/phone/SettingsActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 575
    const-string v3, "SettingsActivity"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_41

    .line 576
    const-string v3, "SettingsActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Changing acl to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    :cond_41
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/SettingsActivity$AclPreferenceChangeListener;->this$0:Lcom/google/android/apps/plus/phone/SettingsActivity;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/phone/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "account"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/content/EsAccount;

    .line 579
    .local v0, account:Lcom/google/android/apps/plus/content/EsAccount;
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/SettingsActivity$AclPreferenceChangeListener;->this$0:Lcom/google/android/apps/plus/phone/SettingsActivity;

    iget-object v4, p0, Lcom/google/android/apps/plus/phone/SettingsActivity$AclPreferenceChangeListener;->this$0:Lcom/google/android/apps/plus/phone/SettingsActivity;

    invoke-static {v4, v0, v2}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->setAcl(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    #setter for: Lcom/google/android/apps/plus/phone/SettingsActivity;->mRequestId:Ljava/lang/Integer;
    invoke-static {v3, v4}, Lcom/google/android/apps/plus/phone/SettingsActivity;->access$302(Lcom/google/android/apps/plus/phone/SettingsActivity;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 581
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/SettingsActivity$AclPreferenceChangeListener;->this$0:Lcom/google/android/apps/plus/phone/SettingsActivity;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/google/android/apps/plus/phone/SettingsActivity;->showDialog(ILandroid/os/Bundle;)Z

    .line 582
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/SettingsActivity$AclPreferenceChangeListener;->this$0:Lcom/google/android/apps/plus/phone/SettingsActivity;

    new-instance v4, Lcom/google/android/apps/plus/phone/SettingsActivity$TimeoutRunnable;

    iget-object v5, p0, Lcom/google/android/apps/plus/phone/SettingsActivity$AclPreferenceChangeListener;->this$0:Lcom/google/android/apps/plus/phone/SettingsActivity;

    invoke-direct {v4, v5}, Lcom/google/android/apps/plus/phone/SettingsActivity$TimeoutRunnable;-><init>(Lcom/google/android/apps/plus/phone/SettingsActivity;)V

    #setter for: Lcom/google/android/apps/plus/phone/SettingsActivity;->mTimeoutRunnable:Ljava/lang/Runnable;
    invoke-static {v3, v4}, Lcom/google/android/apps/plus/phone/SettingsActivity;->access$802(Lcom/google/android/apps/plus/phone/SettingsActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 583
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/SettingsActivity$AclPreferenceChangeListener;->this$0:Lcom/google/android/apps/plus/phone/SettingsActivity;

    #getter for: Lcom/google/android/apps/plus/phone/SettingsActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/google/android/apps/plus/phone/SettingsActivity;->access$900(Lcom/google/android/apps/plus/phone/SettingsActivity;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/plus/phone/SettingsActivity$AclPreferenceChangeListener;->this$0:Lcom/google/android/apps/plus/phone/SettingsActivity;

    #getter for: Lcom/google/android/apps/plus/phone/SettingsActivity;->mTimeoutRunnable:Ljava/lang/Runnable;
    invoke-static {v4}, Lcom/google/android/apps/plus/phone/SettingsActivity;->access$800(Lcom/google/android/apps/plus/phone/SettingsActivity;)Ljava/lang/Runnable;

    move-result-object v4

    const-wide/16 v5, 0x2710

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 592
    .end local v0           #account:Lcom/google/android/apps/plus/content/EsAccount;
    .end local v1           #acl:Ljava/lang/String;
    .end local v2           #aclValue:I
    :cond_82
    :goto_82
    const/4 v3, 0x0

    return v3

    .line 568
    .restart local v1       #acl:Ljava/lang/String;
    .restart local v2       #aclValue:I
    :cond_84
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/SettingsActivity$AclPreferenceChangeListener;->this$0:Lcom/google/android/apps/plus/phone/SettingsActivity;

    const v4, 0x7f0702cd

    invoke-virtual {v3, v4}, Lcom/google/android/apps/plus/phone/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_95

    .line 569
    const/4 v2, 0x3

    goto :goto_18

    .line 570
    :cond_95
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/SettingsActivity$AclPreferenceChangeListener;->this$0:Lcom/google/android/apps/plus/phone/SettingsActivity;

    const v4, 0x7f0702ce

    invoke-virtual {v3, v4}, Lcom/google/android/apps/plus/phone/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 571
    const/4 v2, 0x2

    goto/16 :goto_18

    .line 585
    :cond_a7
    const-string v3, "SettingsActivity"

    const/4 v4, 0x5

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_82

    .line 586
    const-string v3, "SettingsActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid ACL value ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_82
.end method
