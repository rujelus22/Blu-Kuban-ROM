.class Lcom/infraware/common/register/UserRegister$1$1;
.super Ljava/lang/Object;
.source "UserRegister.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/common/register/UserRegister$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/infraware/common/register/UserRegister$1;


# direct methods
.method constructor <init>(Lcom/infraware/common/register/UserRegister$1;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/common/register/UserRegister$1$1;->this$1:Lcom/infraware/common/register/UserRegister$1;

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 145
    const-string v1, "http://www.google.com"

    .line 146
    .local v1, url:Ljava/lang/String;
    new-instance v0, Lcom/infraware/common/register/RegisterNetworkConnect;

    invoke-direct {v0}, Lcom/infraware/common/register/RegisterNetworkConnect;-><init>()V

    .line 147
    .local v0, network:Lcom/infraware/common/register/RegisterNetworkConnect;
    invoke-virtual {v0, v1}, Lcom/infraware/common/register/RegisterNetworkConnect;->SyncConnectNetworkCheck(Ljava/lang/String;)V

    .line 149
    invoke-virtual {v0}, Lcom/infraware/common/register/RegisterNetworkConnect;->getConnectNetwork()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 150
    iget-object v2, p0, Lcom/infraware/common/register/UserRegister$1$1;->this$1:Lcom/infraware/common/register/UserRegister$1;

    #getter for: Lcom/infraware/common/register/UserRegister$1;->this$0:Lcom/infraware/common/register/UserRegister;
    invoke-static {v2}, Lcom/infraware/common/register/UserRegister$1;->access$0(Lcom/infraware/common/register/UserRegister$1;)Lcom/infraware/common/register/UserRegister;

    move-result-object v2

    iget-object v2, v2, Lcom/infraware/common/register/UserRegister;->mEventHandler:Landroid/os/Handler;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 158
    :goto_1d
    return-void

    .line 152
    :cond_1e
    iget-object v2, p0, Lcom/infraware/common/register/UserRegister$1$1;->this$1:Lcom/infraware/common/register/UserRegister$1;

    #getter for: Lcom/infraware/common/register/UserRegister$1;->this$0:Lcom/infraware/common/register/UserRegister;
    invoke-static {v2}, Lcom/infraware/common/register/UserRegister$1;->access$0(Lcom/infraware/common/register/UserRegister$1;)Lcom/infraware/common/register/UserRegister;

    move-result-object v2

    #getter for: Lcom/infraware/common/register/UserRegister;->mUserRegisterDialog:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/infraware/common/register/UserRegister;->access$0(Lcom/infraware/common/register/UserRegister;)Landroid/app/AlertDialog;

    move-result-object v2

    if-eqz v2, :cond_47

    .line 153
    iget-object v2, p0, Lcom/infraware/common/register/UserRegister$1$1;->this$1:Lcom/infraware/common/register/UserRegister$1;

    #getter for: Lcom/infraware/common/register/UserRegister$1;->this$0:Lcom/infraware/common/register/UserRegister;
    invoke-static {v2}, Lcom/infraware/common/register/UserRegister$1;->access$0(Lcom/infraware/common/register/UserRegister$1;)Lcom/infraware/common/register/UserRegister;

    move-result-object v2

    #getter for: Lcom/infraware/common/register/UserRegister;->mUserRegisterDialog:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/infraware/common/register/UserRegister;->access$0(Lcom/infraware/common/register/UserRegister;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_47

    .line 154
    iget-object v2, p0, Lcom/infraware/common/register/UserRegister$1$1;->this$1:Lcom/infraware/common/register/UserRegister$1;

    #getter for: Lcom/infraware/common/register/UserRegister$1;->this$0:Lcom/infraware/common/register/UserRegister;
    invoke-static {v2}, Lcom/infraware/common/register/UserRegister$1;->access$0(Lcom/infraware/common/register/UserRegister$1;)Lcom/infraware/common/register/UserRegister;

    move-result-object v2

    #getter for: Lcom/infraware/common/register/UserRegister;->mUserRegisterDialog:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/infraware/common/register/UserRegister;->access$0(Lcom/infraware/common/register/UserRegister;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->cancel()V

    .line 156
    :cond_47
    iget-object v2, p0, Lcom/infraware/common/register/UserRegister$1$1;->this$1:Lcom/infraware/common/register/UserRegister$1;

    #getter for: Lcom/infraware/common/register/UserRegister$1;->this$0:Lcom/infraware/common/register/UserRegister;
    invoke-static {v2}, Lcom/infraware/common/register/UserRegister$1;->access$0(Lcom/infraware/common/register/UserRegister$1;)Lcom/infraware/common/register/UserRegister;

    move-result-object v2

    iget-object v2, v2, Lcom/infraware/common/register/UserRegister;->mEventHandler:Landroid/os/Handler;

    const/16 v3, 0x514

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1d
.end method
