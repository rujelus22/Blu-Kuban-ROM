.class Lcom/android/email/activity/setup/AccountSettingsFragment$46;
.super Ljava/lang/Object;
.source "AccountSettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

.field final synthetic val$items:Ljava/util/ArrayList;


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 9
    .parameter "dialog"
    .parameter "index"

    .prologue
    const v5, 0x7f080545

    .line 3462
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$46;->val$items:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$46;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    invoke-virtual {v4, v5}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_75

    .line 3464
    const/4 v1, 0x0

    .line 3467
    .local v1, existingUri:Landroid/net/Uri;
    :try_start_18
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$46;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$46;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    invoke-static {v4}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$500(Lcom/android/email/activity/setup/AccountSettingsFragment;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/emailcommon/provider/EmailContent$Account;->getRingtone()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    #setter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mRingtoneUri:Landroid/net/Uri;
    invoke-static {v3, v4}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$3602(Lcom/android/email/activity/setup/AccountSettingsFragment;Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_2b
    .catch Ljava/lang/NullPointerException; {:try_start_18 .. :try_end_2b} :catch_76

    .line 3473
    :goto_2b
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.RINGTONE_PICKER"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3474
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "android.intent.extra.ringtone.SHOW_DEFAULT"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3475
    const-string v3, "android.intent.extra.ringtone.SHOW_SILENT"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3476
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$46;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mRingtoneUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$3600(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_54

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$46;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mRingtoneUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$3600(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    if-ne v3, v4, :cond_85

    .line 3477
    :cond_54
    const-string v3, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3482
    :goto_59
    const-string v3, "android.intent.extra.ringtone.TYPE"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3484
    const-string v3, "android.intent.extra.ringtone.TITLE"

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$46;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$200(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3486
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$46;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    const/16 v4, 0xbdb

    invoke-virtual {v3, v2, v4}, Lcom/android/email/activity/setup/AccountSettingsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 3488
    .end local v1           #existingUri:Landroid/net/Uri;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_75
    return-void

    .line 3468
    .restart local v1       #existingUri:Landroid/net/Uri;
    :catch_76
    move-exception v0

    .line 3469
    .local v0, e:Ljava/lang/NullPointerException;
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$46;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    const/4 v4, 0x0

    #setter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mRingtoneUri:Landroid/net/Uri;
    invoke-static {v3, v4}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$3602(Lcom/android/email/activity/setup/AccountSettingsFragment;Landroid/net/Uri;)Landroid/net/Uri;

    .line 3470
    const-string v3, "Email"

    const-string v4, "This is normal Exception! If Silent ringtone, is it null"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b

    .line 3479
    .end local v0           #e:Ljava/lang/NullPointerException;
    .restart local v2       #intent:Landroid/content/Intent;
    :cond_85
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$46;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mRingtoneUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$3600(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/net/Uri;

    move-result-object v1

    .line 3480
    const-string v3, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_59
.end method
