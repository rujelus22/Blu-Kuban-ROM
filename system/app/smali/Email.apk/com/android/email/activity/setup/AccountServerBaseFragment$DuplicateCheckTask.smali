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
        "Lcom/android/emailcommon/provider/Account;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAccountId:J

.field private final mCheckHost:Ljava/lang/String;

.field private final mCheckLogin:Ljava/lang/String;

.field private final mCheckSettingsMode:I

.field final synthetic this$0:Lcom/android/email/activity/setup/AccountServerBaseFragment;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/setup/AccountServerBaseFragment;JLjava/lang/String;Ljava/lang/String;I)V
    .registers 7
    .parameter
    .parameter "accountId"
    .parameter "checkHost"
    .parameter "checkLogin"
    .parameter "checkSettingsMode"

    .prologue
    .line 329
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment$DuplicateCheckTask;->this$0:Lcom/android/email/activity/setup/AccountServerBaseFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 330
    iput-wide p2, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment$DuplicateCheckTask;->mAccountId:J

    .line 331
    iput-object p4, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment$DuplicateCheckTask;->mCheckHost:Ljava/lang/String;

    .line 332
    iput-object p5, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment$DuplicateCheckTask;->mCheckLogin:Ljava/lang/String;

    .line 333
    iput p6, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment$DuplicateCheckTask;->mCheckSettingsMode:I

    .line 334
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/emailcommon/provider/Account;
    .registers 8
    .parameter "params"

    .prologue
    .line 338
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment$DuplicateCheckTask;->this$0:Lcom/android/email/activity/setup/AccountServerBaseFragment;

    iget-object v1, v1, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment$DuplicateCheckTask;->mAccountId:J

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment$DuplicateCheckTask;->mCheckHost:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment$DuplicateCheckTask;->mCheckLogin:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/emailcommon/utility/Utility;->findExistingAccount(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 340
    .local v0, account:Lcom/android/emailcommon/provider/Account;
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 321
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/AccountServerBaseFragment$DuplicateCheckTask;->doInBackground([Ljava/lang/Void;)Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/emailcommon/provider/Account;)V
    .registers 6
    .parameter "duplicateAccount"

    .prologue
    .line 345
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment$DuplicateCheckTask;->this$0:Lcom/android/email/activity/setup/AccountServerBaseFragment;

    .line 346
    .local v1, fragment:Lcom/android/email/activity/setup/AccountServerBaseFragment;
    if-eqz p1, :cond_19

    .line 348
    iget-object v2, p1, Lcom/android/emailcommon/provider/Account;->mDisplayName:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/email/activity/setup/DuplicateAccountDialogFragment;->newInstance(Ljava/lang/String;)Lcom/android/email/activity/setup/DuplicateAccountDialogFragment;

    move-result-object v0

    .line 350
    .local v0, dialogFragment:Lcom/android/email/activity/setup/DuplicateAccountDialogFragment;
    invoke-virtual {v1}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "DuplicateAccountDialogFragment"

    invoke-virtual {v0, v2, v3}, Lcom/android/email/activity/setup/DuplicateAccountDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 356
    .end local v0           #dialogFragment:Lcom/android/email/activity/setup/DuplicateAccountDialogFragment;
    :goto_13
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment$DuplicateCheckTask;->this$0:Lcom/android/email/activity/setup/AccountServerBaseFragment;

    #calls: Lcom/android/email/activity/setup/AccountServerBaseFragment;->clearButtonBounce()V
    invoke-static {v2}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->access$000(Lcom/android/email/activity/setup/AccountServerBaseFragment;)V

    .line 357
    return-void

    .line 354
    :cond_19
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment$DuplicateCheckTask;->this$0:Lcom/android/email/activity/setup/AccountServerBaseFragment;

    iget-object v2, v2, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mCallback:Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;

    iget v3, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment$DuplicateCheckTask;->mCheckSettingsMode:I

    invoke-interface {v2, v3, v1}, Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;->onProceedNext(ILcom/android/email/activity/setup/AccountServerBaseFragment;)V

    goto :goto_13
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 321
    check-cast p1, Lcom/android/emailcommon/provider/Account;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/AccountServerBaseFragment$DuplicateCheckTask;->onPostExecute(Lcom/android/emailcommon/provider/Account;)V

    return-void
.end method
