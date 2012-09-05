.class Lcom/android/email/activity/setup/AccountSettingsXL$2;
.super Ljava/lang/Object;
.source "AccountSettingsXL.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSettingsXL;->onDeleteAccount()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSettingsXL;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSettingsXL;)V
    .registers 2
    .parameter

    .prologue
    .line 701
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsXL$2;->this$0:Lcom/android/email/activity/setup/AccountSettingsXL;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 704
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsXL$2;->this$0:Lcom/android/email/activity/setup/AccountSettingsXL;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsXL;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSettingsXL;->access$500(Lcom/android/email/activity/setup/AccountSettingsXL;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->cancel()V

    .line 705
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsXL$2;->this$0:Lcom/android/email/activity/setup/AccountSettingsXL;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsXL;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSettingsXL;->access$500(Lcom/android/email/activity/setup/AccountSettingsXL;)Landroid/app/ProgressDialog;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsXL$2;->this$0:Lcom/android/email/activity/setup/AccountSettingsXL;

    const v4, 0x7f080522

    invoke-virtual {v3, v4}, Lcom/android/email/activity/setup/AccountSettingsXL;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 706
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsXL$2;->this$0:Lcom/android/email/activity/setup/AccountSettingsXL;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsXL;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSettingsXL;->access$500(Lcom/android/email/activity/setup/AccountSettingsXL;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    .line 708
    invoke-static {}, Lcom/android/email/activity/setup/AccountSettingsXL;->access$600()Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_2c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 709
    .local v0, AccountId:Ljava/lang/Long;
    const-string v2, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDeleteAccount account ID :  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsXL$2;->this$0:Lcom/android/email/activity/setup/AccountSettingsXL;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsXL;->mController:Lcom/android/email/Controller;
    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSettingsXL;->access$700(Lcom/android/email/activity/setup/AccountSettingsXL;)Lcom/android/email/Controller;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/android/email/Controller;->deleteAccount(J)V

    goto :goto_2c

    .line 713
    .end local v0           #AccountId:Ljava/lang/Long;
    :cond_5e
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsXL$2;->this$0:Lcom/android/email/activity/setup/AccountSettingsXL;

    const/4 v3, 0x0

    #setter for: Lcom/android/email/activity/setup/AccountSettingsXL;->mDeleteAccountPressed:Z
    invoke-static {v2, v3}, Lcom/android/email/activity/setup/AccountSettingsXL;->access$402(Lcom/android/email/activity/setup/AccountSettingsXL;Z)Z

    .line 714
    return-void
.end method
