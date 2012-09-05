.class Lcom/android/email/activity/setup/AccountSettingsFragment$25;
.super Ljava/lang/Object;
.source "AccountSettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSettingsFragment;->loadSettings()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 1931
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$25;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 9
    .parameter "preference"

    .prologue
    const/4 v6, 0x1

    .line 1938
    const/4 v1, 0x0

    .line 1940
    .local v1, existingUri:Landroid/net/Uri;
    :try_start_2
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$25;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$25;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$25;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    invoke-static {v5}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$500(Lcom/android/email/activity/setup/AccountSettingsFragment;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/emailcommon/provider/EmailContent$Account;->getRingtone()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    #setter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mRingtoneUri:Landroid/net/Uri;
    invoke-static {v3, v4}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$3602(Lcom/android/email/activity/setup/AccountSettingsFragment;Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_1b
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_1b} :catch_68

    .line 1946
    :goto_1b
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.RINGTONE_PICKER"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1947
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "android.intent.extra.ringtone.SHOW_DEFAULT"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1948
    const-string v3, "android.intent.extra.ringtone.SHOW_SILENT"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1949
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$25;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mRingtoneUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$3600(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_43

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$25;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mRingtoneUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$3600(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    if-ne v3, v4, :cond_77

    .line 1950
    :cond_43
    const-string v3, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1955
    :goto_48
    const-string v3, "android.intent.extra.ringtone.TYPE"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1957
    const-string v3, "android.intent.extra.ringtone.TITLE"

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$25;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$200(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f080145

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1959
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$25;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    const/16 v4, 0xbdb

    invoke-virtual {v3, v2, v4}, Lcom/android/email/activity/setup/AccountSettingsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1961
    return v6

    .line 1941
    .end local v2           #intent:Landroid/content/Intent;
    :catch_68
    move-exception v0

    .line 1942
    .local v0, e:Ljava/lang/NullPointerException;
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$25;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    const/4 v4, 0x0

    #setter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mRingtoneUri:Landroid/net/Uri;
    invoke-static {v3, v4}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$3602(Lcom/android/email/activity/setup/AccountSettingsFragment;Landroid/net/Uri;)Landroid/net/Uri;

    .line 1943
    const-string v3, "Email"

    const-string v4, "This is normal Exception! If Silent ringtone, is it null"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    .line 1952
    .end local v0           #e:Ljava/lang/NullPointerException;
    .restart local v2       #intent:Landroid/content/Intent;
    :cond_77
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$25;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mRingtoneUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$3600(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/net/Uri;

    move-result-object v1

    .line 1953
    const-string v3, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_48
.end method
