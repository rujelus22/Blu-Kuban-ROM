.class Lcom/android/email/activity/setup/AccountSetupOptions$5;
.super Ljava/lang/Object;
.source "AccountSetupOptions.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSetupOptions;->saveAccountAndFinish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSetupOptions;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSetupOptions;)V
    .registers 2
    .parameter

    .prologue
    .line 796
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupOptions$5;->this$0:Lcom/android/email/activity/setup/AccountSetupOptions;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    const/4 v5, 0x0

    .line 799
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupOptions$5;->this$0:Lcom/android/email/activity/setup/AccountSetupOptions;

    .line 801
    .local v8, context:Lcom/android/email/activity/setup/AccountSetupOptions;
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v7

    .line 802
    .local v7, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    if-eqz v7, :cond_42

    .line 803
    iget v0, v7, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    and-int/lit8 v0, v0, -0x21

    iput v0, v7, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    .line 804
    invoke-static {v8, v7}, Lcom/android/email/activity/setup/AccountSettingsUtils;->commitSettings(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 806
    invoke-static {v8}, Lcom/android/email/Email;->setServicesEnabledSync(Landroid/content/Context;)Z

    .line 807
    invoke-static {v8}, Lcom/android/email/ExchangeUtils;->startExchangeService(Landroid/content/Context;)V

    .line 809
    invoke-static {v8}, Lcom/android/email/activity/setup/AccountSetupNames;->actionSetNames(Landroid/app/Activity;)V

    .line 810
    invoke-static {}, Lcom/android/email/activity/setup/AccountSetupOptions;->access$400()Lcom/android/email/activity/setup/AccountSetupBasics;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 811
    invoke-static {}, Lcom/android/email/activity/setup/AccountSetupOptions;->access$400()Lcom/android/email/activity/setup/AccountSetupBasics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/setup/AccountSetupBasics;->finish()V

    .line 817
    :cond_28
    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    iget-wide v0, v7, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    .line 821
    .local v3, ids:[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupOptions$5;->this$0:Lcom/android/email/activity/setup/AccountSetupOptions;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/AccountSetupOptions;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.sec.android.socialhub.action.EXTERNAL_DB_UPDATE"

    const/16 v2, 0x190

    const/4 v4, 0x4

    move v6, v5

    invoke-static/range {v0 .. v6}, Lcom/android/email/service/DoExternalRequest;->requestSendBroadcastIntent(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/String;IIZ)V

    .line 827
    .end local v3           #ids:[Ljava/lang/String;
    :cond_42
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupOptions$5;->this$0:Lcom/android/email/activity/setup/AccountSetupOptions;

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_4f

    .line 828
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupOptions$5;->this$0:Lcom/android/email/activity/setup/AccountSetupOptions;

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 830
    :cond_4f
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupOptions$5;->this$0:Lcom/android/email/activity/setup/AccountSetupOptions;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/AccountSetupOptions;->finish()V

    .line 831
    return-void
.end method
