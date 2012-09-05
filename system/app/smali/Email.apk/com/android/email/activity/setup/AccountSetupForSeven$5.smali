.class Lcom/android/email/activity/setup/AccountSetupForSeven$5;
.super Ljava/lang/Object;
.source "AccountSetupForSeven.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSetupForSeven;->registerPremiumAccount()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSetupForSeven;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSetupForSeven;)V
    .registers 2
    .parameter

    .prologue
    .line 729
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupForSeven$5;->this$0:Lcom/android/email/activity/setup/AccountSetupForSeven;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 732
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupForSeven$5;->this$0:Lcom/android/email/activity/setup/AccountSetupForSeven;

    #calls: Lcom/android/email/activity/setup/AccountSetupForSeven;->addAccountForSeven()Z
    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSetupForSeven;->access$300(Lcom/android/email/activity/setup/AccountSetupForSeven;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 742
    :cond_8
    :goto_8
    return-void

    .line 735
    :cond_9
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupForSeven$5;->this$0:Lcom/android/email/activity/setup/AccountSetupForSeven;

    iget v0, v0, Lcom/android/email/activity/setup/AccountSetupForSeven;->activeToken:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    .line 738
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupForSeven$5;->this$0:Lcom/android/email/activity/setup/AccountSetupForSeven;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/AccountSetupForSeven;->finish()V

    .line 739
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupForSeven$5;->this$0:Lcom/android/email/activity/setup/AccountSetupForSeven;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupForSeven$5;->this$0:Lcom/android/email/activity/setup/AccountSetupForSeven;

    #getter for: Lcom/android/email/activity/setup/AccountSetupForSeven;->mEmail:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSetupForSeven;->access$500(Lcom/android/email/activity/setup/AccountSetupForSeven;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/email/activity/setup/AccountSetupForSeven;->mDuplicateAccountName:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/email/activity/setup/AccountSetupForSeven;->access$402(Lcom/android/email/activity/setup/AccountSetupForSeven;Ljava/lang/String;)Ljava/lang/String;

    .line 740
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupForSeven$5;->this$0:Lcom/android/email/activity/setup/AccountSetupForSeven;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupForSeven;->showDialog(I)V

    goto :goto_8
.end method
