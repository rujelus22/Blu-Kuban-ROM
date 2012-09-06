.class Lcom/android/email/activity/setup/AccountSetupOptions$4;
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
    .line 361
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupOptions$4;->this$0:Lcom/android/email/activity/setup/AccountSetupOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 364
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupOptions$4;->this$0:Lcom/android/email/activity/setup/AccountSetupOptions;

    .line 366
    .local v1, context:Lcom/android/email/activity/setup/AccountSetupOptions;
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 367
    .local v0, account:Lcom/android/emailcommon/provider/Account;
    iget v2, v0, Lcom/android/emailcommon/provider/Account;->mFlags:I

    and-int/lit8 v2, v2, -0x21

    iput v2, v0, Lcom/android/emailcommon/provider/Account;->mFlags:I

    .line 368
    invoke-static {v1, v0}, Lcom/android/email/activity/setup/AccountSettingsUtils;->commitSettings(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)V

    .line 370
    invoke-static {v1}, Lcom/android/email/Email;->setServicesEnabledSync(Landroid/content/Context;)Z

    .line 371
    invoke-static {v1}, Lcom/android/email/service/EmailServiceUtils;->startExchangeService(Landroid/content/Context;)V

    .line 373
    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSetupNames;->actionSetNames(Landroid/app/Activity;)V

    .line 374
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupOptions$4;->this$0:Lcom/android/email/activity/setup/AccountSetupOptions;

    invoke-virtual {v2}, Lcom/android/email/activity/setup/AccountSetupOptions;->finish()V

    .line 375
    return-void
.end method
