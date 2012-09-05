.class Lcom/android/email/activity/setup/AccountServerBaseFragment$DuplicateCheckTask;
.super Landroid/os/AsyncTask;
.source "AccountServerBaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountServerBaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DuplicateCheckTask"
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
.field private final mAccountId:J

.field private final mCheckHost:Ljava/lang/String;

.field private final mCheckLogin:Ljava/lang/String;

.field private final mCheckSettingsMode:I

.field private final mEmail:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/email/activity/setup/AccountServerBaseFragment;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/setup/AccountServerBaseFragment;JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 8
    .parameter
    .parameter "accountId"
    .parameter "checkHost"
    .parameter "checkLogin"
    .parameter "checkSettingsMode"
    .parameter "email"

    .prologue
    .line 292
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment$DuplicateCheckTask;->this$0:Lcom/android/email/activity/setup/AccountServerBaseFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 293
    iput-wide p2, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment$DuplicateCheckTask;->mAccountId:J

    .line 294
    iput-object p4, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment$DuplicateCheckTask;->mCheckHost:Ljava/lang/String;

    .line 295
    iput-object p5, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment$DuplicateCheckTask;->mCheckLogin:Ljava/lang/String;

    .line 296
    iput p6, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment$DuplicateCheckTask;->mCheckSettingsMode:I

    .line 297
    iput-object p7, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment$DuplicateCheckTask;->mEmail:Ljava/lang/String;

    .line 298
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/emailcommon/provider/EmailContent$Account;
    .registers 10
    .parameter "params"

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment$DuplicateCheckTask;->mCheckLogin:Ljava/lang/String;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 304
    .local v7, emailParts:[Ljava/lang/String;
    const/4 v0, 0x0

    aget-object v0, v7, v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 306
    .local v4, username:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment$DuplicateCheckTask;->this$0:Lcom/android/email/activity/setup/AccountServerBaseFragment;

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment$DuplicateCheckTask;->mAccountId:J

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment$DuplicateCheckTask;->mCheckHost:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment$DuplicateCheckTask;->mEmail:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/android/emailcommon/utility/Utility;->findExistingAccount(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v6

    .line 308
    .local v6, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    return-object v6
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 279
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/AccountServerBaseFragment$DuplicateCheckTask;->doInBackground([Ljava/lang/Void;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .registers 7
    .parameter "duplicateAccount"

    .prologue
    .line 313
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment$DuplicateCheckTask;->this$0:Lcom/android/email/activity/setup/AccountServerBaseFragment;

    .line 314
    .local v2, fragment:Lcom/android/email/activity/setup/AccountServerBaseFragment;
    if-eqz p1, :cond_19

    .line 316
    iget-object v3, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/email/activity/setup/DuplicateAccountDialogFragment;->newInstance(Ljava/lang/String;)Lcom/android/email/activity/setup/DuplicateAccountDialogFragment;

    move-result-object v0

    .line 318
    .local v0, dialogFragment:Lcom/android/email/activity/setup/DuplicateAccountDialogFragment;
    invoke-virtual {v2}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "DuplicateAccountDialogFragment"

    invoke-virtual {v0, v3, v4}, Lcom/android/email/activity/setup/DuplicateAccountDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 333
    .end local v0           #dialogFragment:Lcom/android/email/activity/setup/DuplicateAccountDialogFragment;
    :goto_13
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment$DuplicateCheckTask;->this$0:Lcom/android/email/activity/setup/AccountServerBaseFragment;

    invoke-virtual {v3}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->clearButtonBounce()V

    .line 334
    return-void

    .line 324
    :cond_19
    :try_start_19
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment$DuplicateCheckTask;->this$0:Lcom/android/email/activity/setup/AccountServerBaseFragment;

    iget-object v3, v3, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mCallback:Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;

    iget v4, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment$DuplicateCheckTask;->mCheckSettingsMode:I

    invoke-interface {v3, v4, v2}, Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;->onProceedNext(ILcom/android/email/activity/setup/AccountServerBaseFragment;)V
    :try_end_22
    .catch Ljava/lang/IllegalStateException; {:try_start_19 .. :try_end_22} :catch_23

    goto :goto_13

    .line 325
    :catch_23
    move-exception v1

    .line 327
    .local v1, e:Ljava/lang/IllegalStateException;
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment$DuplicateCheckTask;->this$0:Lcom/android/email/activity/setup/AccountServerBaseFragment;

    const/4 v4, 0x1

    #setter for: Lcom/android/email/activity/setup/AccountServerBaseFragment;->mCallOnProceedNext:Z
    invoke-static {v3, v4}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->access$002(Lcom/android/email/activity/setup/AccountServerBaseFragment;Z)Z

    .line 328
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment$DuplicateCheckTask;->this$0:Lcom/android/email/activity/setup/AccountServerBaseFragment;

    iget v4, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment$DuplicateCheckTask;->mCheckSettingsMode:I

    #setter for: Lcom/android/email/activity/setup/AccountServerBaseFragment;->mCheckSettingsModeFromTask:I
    invoke-static {v3, v4}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->access$102(Lcom/android/email/activity/setup/AccountServerBaseFragment;I)I

    .line 329
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_13
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 279
    check-cast p1, Lcom/android/emailcommon/provider/EmailContent$Account;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/AccountServerBaseFragment$DuplicateCheckTask;->onPostExecute(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    return-void
.end method
