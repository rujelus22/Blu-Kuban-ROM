.class Lcom/android/email/activity/setup/AccountSetupOptionsForSeven$7;
.super Ljava/lang/Object;
.source "AccountSetupOptionsForSeven.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->saveAccountAndFinish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;)V
    .registers 2
    .parameter

    .prologue
    .line 569
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven$7;->this$0:Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 572
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven$7;->this$0:Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;

    .line 574
    .local v1, context:Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 575
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    iget v2, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    and-int/lit8 v2, v2, -0x31

    iput v2, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    .line 576
    invoke-static {v1, v0}, Lcom/android/email/activity/setup/AccountSettingsUtils;->commitSettings(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 578
    invoke-static {v1}, Lcom/android/email/Email;->setServicesEnabledSync(Landroid/content/Context;)Z

    .line 579
    invoke-static {v1}, Lcom/android/email/ExchangeUtils;->startExchangeService(Landroid/content/Context;)V

    .line 581
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven$7;->this$0:Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;

    #getter for: Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->sso_id:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->access$400(Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven$7;->this$0:Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;

    #getter for: Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->sso_pw:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->access$500(Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven$7;->this$0:Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;

    #getter for: Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->sso_isp:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->access$600(Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/android/email/activity/setup/AccountSetupNames;->actionSetNames(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven$7;->this$0:Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;

    invoke-virtual {v2}, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->finish()V

    .line 583
    return-void
.end method
