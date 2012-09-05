.class public Lcom/infraware/common/account/AccountSetting$CloseReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AccountSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/common/account/AccountSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CloseReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/common/account/AccountSetting;


# direct methods
.method public constructor <init>(Lcom/infraware/common/account/AccountSetting;)V
    .registers 2
    .parameter

    .prologue
    .line 253
    iput-object p1, p0, Lcom/infraware/common/account/AccountSetting$CloseReceiver;->this$0:Lcom/infraware/common/account/AccountSetting;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 256
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 258
    .local v0, action:Ljava/lang/String;
    if-eqz v0, :cond_4d

    .line 259
    const-string v1, "com.infraware.polarisoffice.CLOSE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 260
    iget-object v1, p0, Lcom/infraware/common/account/AccountSetting$CloseReceiver;->this$0:Lcom/infraware/common/account/AccountSetting;

    #getter for: Lcom/infraware/common/account/AccountSetting;->mPopupDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/infraware/common/account/AccountSetting;->access$0(Lcom/infraware/common/account/AccountSetting;)Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_2b

    .line 261
    iget-object v1, p0, Lcom/infraware/common/account/AccountSetting$CloseReceiver;->this$0:Lcom/infraware/common/account/AccountSetting;

    #getter for: Lcom/infraware/common/account/AccountSetting;->mPopupDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/infraware/common/account/AccountSetting;->access$0(Lcom/infraware/common/account/AccountSetting;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 262
    iget-object v1, p0, Lcom/infraware/common/account/AccountSetting$CloseReceiver;->this$0:Lcom/infraware/common/account/AccountSetting;

    #getter for: Lcom/infraware/common/account/AccountSetting;->mPopupDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/infraware/common/account/AccountSetting;->access$0(Lcom/infraware/common/account/AccountSetting;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->cancel()V

    .line 264
    :cond_2b
    iget-object v1, p0, Lcom/infraware/common/account/AccountSetting$CloseReceiver;->this$0:Lcom/infraware/common/account/AccountSetting;

    #getter for: Lcom/infraware/common/account/AccountSetting;->mAddAccountDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/infraware/common/account/AccountSetting;->access$1(Lcom/infraware/common/account/AccountSetting;)Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_48

    .line 265
    iget-object v1, p0, Lcom/infraware/common/account/AccountSetting$CloseReceiver;->this$0:Lcom/infraware/common/account/AccountSetting;

    #getter for: Lcom/infraware/common/account/AccountSetting;->mAddAccountDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/infraware/common/account/AccountSetting;->access$1(Lcom/infraware/common/account/AccountSetting;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_48

    .line 266
    iget-object v1, p0, Lcom/infraware/common/account/AccountSetting$CloseReceiver;->this$0:Lcom/infraware/common/account/AccountSetting;

    #getter for: Lcom/infraware/common/account/AccountSetting;->mAddAccountDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/infraware/common/account/AccountSetting;->access$1(Lcom/infraware/common/account/AccountSetting;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->cancel()V

    .line 268
    :cond_48
    iget-object v1, p0, Lcom/infraware/common/account/AccountSetting$CloseReceiver;->this$0:Lcom/infraware/common/account/AccountSetting;

    invoke-virtual {v1}, Lcom/infraware/common/account/AccountSetting;->finish()V

    .line 271
    :cond_4d
    return-void
.end method
