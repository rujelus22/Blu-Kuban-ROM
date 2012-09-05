.class Lcom/android/email/activity/setup/AccountSecurity$1;
.super Landroid/os/AsyncTask;
.source "AccountSecurity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSecurity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/android/emailcommon/provider/EmailContent$Account;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSecurity;

.field final synthetic val$accountId:J

.field final synthetic val$passwordExpired:Z

.field final synthetic val$passwordExpiring:Z

.field final synthetic val$showDialog:Z


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSecurity;JZZZ)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSecurity$1;->this$0:Lcom/android/email/activity/setup/AccountSecurity;

    iput-wide p2, p0, Lcom/android/email/activity/setup/AccountSecurity$1;->val$accountId:J

    iput-boolean p4, p0, Lcom/android/email/activity/setup/AccountSecurity$1;->val$passwordExpiring:Z

    iput-boolean p5, p0, Lcom/android/email/activity/setup/AccountSecurity$1;->val$passwordExpired:Z

    iput-boolean p6, p0, Lcom/android/email/activity/setup/AccountSecurity$1;->val$showDialog:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/emailcommon/provider/EmailContent$Account;
    .registers 5
    .parameter "params"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSecurity$1;->this$0:Lcom/android/email/activity/setup/AccountSecurity;

    iget-wide v1, p0, Lcom/android/email/activity/setup/AccountSecurity$1;->val$accountId:J

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 139
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/AccountSecurity$1;->doInBackground([Ljava/lang/Void;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .registers 6
    .parameter "result"

    .prologue
    .line 147
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSecurity$1;->this$0:Lcom/android/email/activity/setup/AccountSecurity;

    #setter for: Lcom/android/email/activity/setup/AccountSecurity;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    invoke-static {v2, p1}, Lcom/android/email/activity/setup/AccountSecurity;->access$002(Lcom/android/email/activity/setup/AccountSecurity;Lcom/android/emailcommon/provider/EmailContent$Account;)Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 148
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSecurity$1;->this$0:Lcom/android/email/activity/setup/AccountSecurity;

    #getter for: Lcom/android/email/activity/setup/AccountSecurity;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSecurity;->access$000(Lcom/android/email/activity/setup/AccountSecurity;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v2

    if-nez v2, :cond_13

    .line 149
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSecurity$1;->this$0:Lcom/android/email/activity/setup/AccountSecurity;

    invoke-virtual {v2}, Lcom/android/email/activity/setup/AccountSecurity;->finish()V

    .line 185
    :cond_12
    :goto_12
    return-void

    .line 153
    :cond_13
    iget-boolean v2, p0, Lcom/android/email/activity/setup/AccountSecurity$1;->val$passwordExpiring:Z

    if-nez v2, :cond_1b

    iget-boolean v2, p0, Lcom/android/email/activity/setup/AccountSecurity$1;->val$passwordExpired:Z

    if-eqz v2, :cond_3f

    .line 154
    :cond_1b
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSecurity$1;->this$0:Lcom/android/email/activity/setup/AccountSecurity;

    invoke-virtual {v2}, Lcom/android/email/activity/setup/AccountSecurity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 155
    .local v1, fm:Landroid/app/FragmentManager;
    const-string v2, "password_expiration"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_12

    .line 156
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSecurity$1;->this$0:Lcom/android/email/activity/setup/AccountSecurity;

    #getter for: Lcom/android/email/activity/setup/AccountSecurity;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSecurity;->access$000(Lcom/android/email/activity/setup/AccountSecurity;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/email/activity/setup/AccountSecurity$1;->val$passwordExpired:Z

    invoke-static {v2, v3}, Lcom/android/email/activity/setup/AccountSecurity$PasswordExpirationDialog;->newInstance(Ljava/lang/String;Z)Lcom/android/email/activity/setup/AccountSecurity$PasswordExpirationDialog;

    move-result-object v0

    .line 159
    .local v0, dialog:Lcom/android/email/activity/setup/AccountSecurity$PasswordExpirationDialog;
    const-string v2, "password_expiration"

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/setup/AccountSecurity$PasswordExpirationDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_12

    .line 165
    .end local v0           #dialog:Lcom/android/email/activity/setup/AccountSecurity$PasswordExpirationDialog;
    .end local v1           #fm:Landroid/app/FragmentManager;
    :cond_3f
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSecurity$1;->this$0:Lcom/android/email/activity/setup/AccountSecurity;

    #getter for: Lcom/android/email/activity/setup/AccountSecurity;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSecurity;->access$000(Lcom/android/email/activity/setup/AccountSecurity;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 168
    iget-boolean v2, p0, Lcom/android/email/activity/setup/AccountSecurity$1;->val$showDialog:Z

    if-eqz v2, :cond_6f

    .line 170
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSecurity$1;->this$0:Lcom/android/email/activity/setup/AccountSecurity;

    invoke-virtual {v2}, Lcom/android/email/activity/setup/AccountSecurity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 171
    .restart local v1       #fm:Landroid/app/FragmentManager;
    const-string v2, "security_needed"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_12

    .line 173
    :try_start_59
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSecurity$1;->this$0:Lcom/android/email/activity/setup/AccountSecurity;

    #getter for: Lcom/android/email/activity/setup/AccountSecurity;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSecurity;->access$000(Lcom/android/email/activity/setup/AccountSecurity;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSecurity$SecurityNeededDialog;->newInstance(Ljava/lang/String;)Lcom/android/email/activity/setup/AccountSecurity$SecurityNeededDialog;

    move-result-object v0

    .line 175
    .local v0, dialog:Lcom/android/email/activity/setup/AccountSecurity$SecurityNeededDialog;
    const-string v2, "security_needed"

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/setup/AccountSecurity$SecurityNeededDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_6c
    .catch Ljava/lang/IllegalStateException; {:try_start_59 .. :try_end_6c} :catch_6d

    goto :goto_12

    .line 176
    .end local v0           #dialog:Lcom/android/email/activity/setup/AccountSecurity$SecurityNeededDialog;
    :catch_6d
    move-exception v2

    goto :goto_12

    .line 181
    .end local v1           #fm:Landroid/app/FragmentManager;
    :cond_6f
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSecurity$1;->this$0:Lcom/android/email/activity/setup/AccountSecurity;

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSecurity$1;->this$0:Lcom/android/email/activity/setup/AccountSecurity;

    #getter for: Lcom/android/email/activity/setup/AccountSecurity;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    invoke-static {v3}, Lcom/android/email/activity/setup/AccountSecurity;->access$000(Lcom/android/email/activity/setup/AccountSecurity;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v3

    #calls: Lcom/android/email/activity/setup/AccountSecurity;->tryAdvanceSecurity(Lcom/android/emailcommon/provider/EmailContent$Account;)V
    invoke-static {v2, v3}, Lcom/android/email/activity/setup/AccountSecurity;->access$100(Lcom/android/email/activity/setup/AccountSecurity;Lcom/android/emailcommon/provider/EmailContent$Account;)V

    goto :goto_12
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 139
    check-cast p1, Lcom/android/emailcommon/provider/EmailContent$Account;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/AccountSecurity$1;->onPostExecute(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    return-void
.end method
