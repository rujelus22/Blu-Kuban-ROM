.class public Lcom/infraware/common/account/EditAccount$CloseReceiver;
.super Landroid/content/BroadcastReceiver;
.source "EditAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/common/account/EditAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CloseReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/common/account/EditAccount;


# direct methods
.method public constructor <init>(Lcom/infraware/common/account/EditAccount;)V
    .registers 2
    .parameter

    .prologue
    .line 406
    iput-object p1, p0, Lcom/infraware/common/account/EditAccount$CloseReceiver;->this$0:Lcom/infraware/common/account/EditAccount;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 409
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 411
    .local v0, action:Ljava/lang/String;
    if-eqz v0, :cond_4d

    .line 412
    const-string v1, "com.infraware.polarisoffice.CLOSE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 413
    iget-object v1, p0, Lcom/infraware/common/account/EditAccount$CloseReceiver;->this$0:Lcom/infraware/common/account/EditAccount;

    #getter for: Lcom/infraware/common/account/EditAccount;->mEditPasswordDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/infraware/common/account/EditAccount;->access$9(Lcom/infraware/common/account/EditAccount;)Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_2b

    .line 414
    iget-object v1, p0, Lcom/infraware/common/account/EditAccount$CloseReceiver;->this$0:Lcom/infraware/common/account/EditAccount;

    #getter for: Lcom/infraware/common/account/EditAccount;->mEditPasswordDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/infraware/common/account/EditAccount;->access$9(Lcom/infraware/common/account/EditAccount;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 415
    iget-object v1, p0, Lcom/infraware/common/account/EditAccount$CloseReceiver;->this$0:Lcom/infraware/common/account/EditAccount;

    #getter for: Lcom/infraware/common/account/EditAccount;->mEditPasswordDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/infraware/common/account/EditAccount;->access$9(Lcom/infraware/common/account/EditAccount;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->cancel()V

    .line 417
    :cond_2b
    iget-object v1, p0, Lcom/infraware/common/account/EditAccount$CloseReceiver;->this$0:Lcom/infraware/common/account/EditAccount;

    #getter for: Lcom/infraware/common/account/EditAccount;->mDeleteDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/infraware/common/account/EditAccount;->access$10(Lcom/infraware/common/account/EditAccount;)Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_48

    .line 418
    iget-object v1, p0, Lcom/infraware/common/account/EditAccount$CloseReceiver;->this$0:Lcom/infraware/common/account/EditAccount;

    #getter for: Lcom/infraware/common/account/EditAccount;->mDeleteDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/infraware/common/account/EditAccount;->access$10(Lcom/infraware/common/account/EditAccount;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_48

    .line 419
    iget-object v1, p0, Lcom/infraware/common/account/EditAccount$CloseReceiver;->this$0:Lcom/infraware/common/account/EditAccount;

    #getter for: Lcom/infraware/common/account/EditAccount;->mDeleteDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/infraware/common/account/EditAccount;->access$10(Lcom/infraware/common/account/EditAccount;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->cancel()V

    .line 421
    :cond_48
    iget-object v1, p0, Lcom/infraware/common/account/EditAccount$CloseReceiver;->this$0:Lcom/infraware/common/account/EditAccount;

    invoke-virtual {v1}, Lcom/infraware/common/account/EditAccount;->finish()V

    .line 424
    :cond_4d
    return-void
.end method
