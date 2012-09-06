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
    .line 170
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupBasics$1;->val$fromActivity:Landroid/app/Activity;

    iput-wide p2, p0, Lcom/android/email/activity/setup/AccountSetupBasics$1;->val$accountId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 172
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupBasics$1;->val$fromActivity:Landroid/app/Activity;

    const-class v2, Lcom/android/email/activity/setup/AccountSetupBasics;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 175
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupBasics$1;->val$fromActivity:Landroid/app/Activity;

    iget-wide v2, p0, Lcom/android/email/activity/setup/AccountSetupBasics$1;->val$accountId:J

    invoke-static {v1, v2, v3}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v1

    .line 176
    const/4 v2, 0x6

    invoke-static {v2, v1}, Lcom/android/email/activity/setup/SetupData;->init(ILcom/android/emailcommon/provider/Account;)V

    .line 177
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 178
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupBasics$1;->val$fromActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 179
    return-void
.end method
