.class final Lcom/android/email/activity/setup/AccountSetupBasics$1;
.super Ljava/lang/Object;
.source "AccountSetupBasics.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSetupBasics;->actionAccountCreateFinished(Landroid/app/Activity;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$accountId:J

.field final synthetic val$fromActivity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;J)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 476
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupBasics$1;->val$fromActivity:Landroid/app/Activity;

    iput-wide p2, p0, Lcom/android/email/activity/setup/AccountSetupBasics$1;->val$accountId:J

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 478
    const/4 v1, 0x0

    .line 481
    .local v1, i:Landroid/content/Intent;
    new-instance v1, Landroid/content/Intent;

    .end local v1           #i:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupBasics$1;->val$fromActivity:Landroid/app/Activity;

    const-class v3, Lcom/android/email/activity/setup/AccountSetupBasics;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 486
    .restart local v1       #i:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupBasics$1;->val$fromActivity:Landroid/app/Activity;

    iget-wide v3, p0, Lcom/android/email/activity/setup/AccountSetupBasics$1;->val$accountId:J

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 487
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    sget v2, Lcom/android/email/Email;->ACCOUNT_SETUP_OPTION:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_26

    .line 488
    const/4 v2, 0x5

    invoke-static {v2, v0}, Lcom/android/email/activity/setup/SetupData;->init(ILcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 492
    :goto_1b
    const/high16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 493
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupBasics$1;->val$fromActivity:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 494
    return-void

    .line 490
    :cond_26
    const/4 v2, 0x6

    invoke-static {v2, v0}, Lcom/android/email/activity/setup/SetupData;->init(ILcom/android/emailcommon/provider/EmailContent$Account;)V

    goto :goto_1b
.end method
