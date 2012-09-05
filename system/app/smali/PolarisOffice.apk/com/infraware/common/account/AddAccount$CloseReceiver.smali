.class public Lcom/infraware/common/account/AddAccount$CloseReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AddAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/common/account/AddAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CloseReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/common/account/AddAccount;


# direct methods
.method public constructor <init>(Lcom/infraware/common/account/AddAccount;)V
    .registers 2
    .parameter

    .prologue
    .line 159
    iput-object p1, p0, Lcom/infraware/common/account/AddAccount$CloseReceiver;->this$0:Lcom/infraware/common/account/AddAccount;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 162
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, action:Ljava/lang/String;
    if-eqz v0, :cond_4d

    .line 165
    const-string v1, "com.infraware.polarisoffice.CLOSE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 166
    iget-object v1, p0, Lcom/infraware/common/account/AddAccount$CloseReceiver;->this$0:Lcom/infraware/common/account/AddAccount;

    #getter for: Lcom/infraware/common/account/AddAccount;->mPopupDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/infraware/common/account/AddAccount;->access$0(Lcom/infraware/common/account/AddAccount;)Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_2b

    .line 167
    iget-object v1, p0, Lcom/infraware/common/account/AddAccount$CloseReceiver;->this$0:Lcom/infraware/common/account/AddAccount;

    #getter for: Lcom/infraware/common/account/AddAccount;->mPopupDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/infraware/common/account/AddAccount;->access$0(Lcom/infraware/common/account/AddAccount;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 168
    iget-object v1, p0, Lcom/infraware/common/account/AddAccount$CloseReceiver;->this$0:Lcom/infraware/common/account/AddAccount;

    #getter for: Lcom/infraware/common/account/AddAccount;->mPopupDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/infraware/common/account/AddAccount;->access$0(Lcom/infraware/common/account/AddAccount;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->cancel()V

    .line 170
    :cond_2b
    iget-object v1, p0, Lcom/infraware/common/account/AddAccount$CloseReceiver;->this$0:Lcom/infraware/common/account/AddAccount;

    #getter for: Lcom/infraware/common/account/AddAccount;->mAddAccountDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/infraware/common/account/AddAccount;->access$1(Lcom/infraware/common/account/AddAccount;)Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_48

    .line 171
    iget-object v1, p0, Lcom/infraware/common/account/AddAccount$CloseReceiver;->this$0:Lcom/infraware/common/account/AddAccount;

    #getter for: Lcom/infraware/common/account/AddAccount;->mAddAccountDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/infraware/common/account/AddAccount;->access$1(Lcom/infraware/common/account/AddAccount;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_48

    .line 172
    iget-object v1, p0, Lcom/infraware/common/account/AddAccount$CloseReceiver;->this$0:Lcom/infraware/common/account/AddAccount;

    #getter for: Lcom/infraware/common/account/AddAccount;->mAddAccountDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/infraware/common/account/AddAccount;->access$1(Lcom/infraware/common/account/AddAccount;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->cancel()V

    .line 174
    :cond_48
    iget-object v1, p0, Lcom/infraware/common/account/AddAccount$CloseReceiver;->this$0:Lcom/infraware/common/account/AddAccount;

    invoke-virtual {v1}, Lcom/infraware/common/account/AddAccount;->finish()V

    .line 177
    :cond_4d
    return-void
.end method
