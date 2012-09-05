.class Lcom/android/email/activity/setup/AccountSetupOptions$2;
.super Landroid/os/AsyncTask;
.source "AccountSetupOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSetupOptions;->onDone()V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSetupOptions;

.field final synthetic val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

.field final synthetic val$calendar2:Z

.field final synthetic val$contacts2:Z

.field final synthetic val$email2:Z

.field final synthetic val$tasks2:Z


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSetupOptions;Lcom/android/emailcommon/provider/EmailContent$Account;ZZZZ)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 671
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupOptions$2;->this$0:Lcom/android/email/activity/setup/AccountSetupOptions;

    iput-object p2, p0, Lcom/android/email/activity/setup/AccountSetupOptions$2;->val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

    iput-boolean p3, p0, Lcom/android/email/activity/setup/AccountSetupOptions$2;->val$email2:Z

    iput-boolean p4, p0, Lcom/android/email/activity/setup/AccountSetupOptions$2;->val$calendar2:Z

    iput-boolean p5, p0, Lcom/android/email/activity/setup/AccountSetupOptions$2;->val$contacts2:Z

    iput-boolean p6, p0, Lcom/android/email/activity/setup/AccountSetupOptions$2;->val$tasks2:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 671
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/AccountSetupOptions$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 11
    .parameter "params"

    .prologue
    const/4 v8, 0x0

    .line 682
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupOptions$2;->this$0:Lcom/android/email/activity/setup/AccountSetupOptions;

    .line 683
    .local v0, context:Landroid/content/Context;
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupOptions$2;->val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-static {v0, v1}, Lcom/android/email/activity/setup/AccountSettingsUtils;->commitSettings(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 684
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getPolicySet()Lcom/android/emailcommon/service/PolicySet;

    move-result-object v7

    .line 685
    .local v7, ps:Lcom/android/emailcommon/service/PolicySet;
    if-eqz v7, :cond_14

    .line 686
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupOptions$2;->val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

    const/4 v2, 0x1

    invoke-virtual {v7, v1, v8, v2, v0}, Lcom/android/emailcommon/service/PolicySet;->writeAccount(Lcom/android/emailcommon/provider/EmailContent$Account;Ljava/lang/String;ZLandroid/content/Context;)Z

    .line 687
    :cond_14
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupOptions$2;->val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-boolean v2, p0, Lcom/android/email/activity/setup/AccountSetupOptions$2;->val$email2:Z

    iget-boolean v3, p0, Lcom/android/email/activity/setup/AccountSetupOptions$2;->val$calendar2:Z

    iget-boolean v4, p0, Lcom/android/email/activity/setup/AccountSetupOptions$2;->val$contacts2:Z

    iget-boolean v5, p0, Lcom/android/email/activity/setup/AccountSetupOptions$2;->val$tasks2:Z

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupOptions$2;->this$0:Lcom/android/email/activity/setup/AccountSetupOptions;

    iget-object v6, v6, Lcom/android/email/activity/setup/AccountSetupOptions;->mAccountManagerCallback:Landroid/accounts/AccountManagerCallback;

    invoke-static/range {v0 .. v6}, Lcom/android/email/service/MailService;->setupAccountManagerAccount(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;ZZZZLandroid/accounts/AccountManagerCallback;)V

    .line 690
    return-object v8
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 671
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/AccountSetupOptions$2;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 2
    .parameter "param"

    .prologue
    .line 695
    return-void
.end method

.method protected onPreExecute()V
    .registers 4

    .prologue
    .line 674
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupOptions$2;->this$0:Lcom/android/email/activity/setup/AccountSetupOptions;

    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupOptions$2;->this$0:Lcom/android/email/activity/setup/AccountSetupOptions;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mDialog:Landroid/app/ProgressDialog;

    .line 675
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupOptions$2;->this$0:Lcom/android/email/activity/setup/AccountSetupOptions;

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupOptions$2;->this$0:Lcom/android/email/activity/setup/AccountSetupOptions;

    const v2, 0x7f08035f

    invoke-virtual {v1, v2}, Lcom/android/email/activity/setup/AccountSetupOptions;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 676
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupOptions$2;->this$0:Lcom/android/email/activity/setup/AccountSetupOptions;

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 677
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupOptions$2;->this$0:Lcom/android/email/activity/setup/AccountSetupOptions;

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 678
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupOptions$2;->this$0:Lcom/android/email/activity/setup/AccountSetupOptions;

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 679
    return-void
.end method
