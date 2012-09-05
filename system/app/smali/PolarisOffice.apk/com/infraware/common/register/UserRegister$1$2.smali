.class Lcom/infraware/common/register/UserRegister$1$2;
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
    iput-object p1, p0, Lcom/infraware/common/register/UserRegister$1$2;->this$1:Lcom/infraware/common/register/UserRegister$1;

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 166
    const-string v9, "http://polarisoffice.infraware.co.kr/dmweb/AddUserInfo.aspx?"

    .line 167
    .local v9, url:Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    .line 168
    .local v2, locale:Ljava/lang/String;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    .line 169
    invoke-virtual {v10}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v8

    .line 174
    .local v8, timezone:Ljava/lang/String;
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 175
    .local v0, brand:Ljava/lang/String;
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 176
    .local v1, device:Ljava/lang/String;
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 177
    .local v3, model:Ljava/lang/String;
    sget-object v7, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 179
    .local v7, osVer:Ljava/lang/String;
    new-instance v5, Lcom/infraware/common/register/SyncNetworkingStep;

    invoke-direct {v5}, Lcom/infraware/common/register/SyncNetworkingStep;-><init>()V

    .line 180
    .local v5, netSync:Lcom/infraware/common/register/SyncNetworkingStep;
    new-instance v6, Lcom/infraware/common/register/RegisterNetworkConnect;

    invoke-direct {v6}, Lcom/infraware/common/register/RegisterNetworkConnect;-><init>()V

    .line 182
    .local v6, network:Lcom/infraware/common/register/RegisterNetworkConnect;
    iget-object v10, p0, Lcom/infraware/common/register/UserRegister$1$2;->this$1:Lcom/infraware/common/register/UserRegister$1;

    #getter for: Lcom/infraware/common/register/UserRegister$1;->this$0:Lcom/infraware/common/register/UserRegister;
    invoke-static {v10}, Lcom/infraware/common/register/UserRegister$1;->access$0(Lcom/infraware/common/register/UserRegister$1;)Lcom/infraware/common/register/UserRegister;

    move-result-object v10

    #getter for: Lcom/infraware/common/register/UserRegister;->m_strName:Ljava/lang/String;
    invoke-static {v10}, Lcom/infraware/common/register/UserRegister;->access$1(Lcom/infraware/common/register/UserRegister;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/infraware/common/register/RegisterNetworkConnect;->setUserName(Ljava/lang/String;)V

    .line 183
    iget-object v10, p0, Lcom/infraware/common/register/UserRegister$1$2;->this$1:Lcom/infraware/common/register/UserRegister$1;

    #getter for: Lcom/infraware/common/register/UserRegister$1;->this$0:Lcom/infraware/common/register/UserRegister;
    invoke-static {v10}, Lcom/infraware/common/register/UserRegister$1;->access$0(Lcom/infraware/common/register/UserRegister$1;)Lcom/infraware/common/register/UserRegister;

    move-result-object v10

    #getter for: Lcom/infraware/common/register/UserRegister;->m_strEmail:Ljava/lang/String;
    invoke-static {v10}, Lcom/infraware/common/register/UserRegister;->access$2(Lcom/infraware/common/register/UserRegister;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/infraware/common/register/RegisterNetworkConnect;->setEmail(Ljava/lang/String;)V

    .line 184
    invoke-virtual {v6, v2}, Lcom/infraware/common/register/RegisterNetworkConnect;->setLocale(Ljava/lang/String;)V

    .line 185
    invoke-virtual {v6, v8}, Lcom/infraware/common/register/RegisterNetworkConnect;->setTimeZone(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v6, v3}, Lcom/infraware/common/register/RegisterNetworkConnect;->setIMEI(Ljava/lang/String;)V

    .line 188
    invoke-virtual {v6, v0}, Lcom/infraware/common/register/RegisterNetworkConnect;->setBrand(Ljava/lang/String;)V

    .line 189
    invoke-virtual {v6, v1}, Lcom/infraware/common/register/RegisterNetworkConnect;->setDevice(Ljava/lang/String;)V

    .line 190
    invoke-virtual {v6, v3}, Lcom/infraware/common/register/RegisterNetworkConnect;->setModel(Ljava/lang/String;)V

    .line 191
    invoke-virtual {v6, v7}, Lcom/infraware/common/register/RegisterNetworkConnect;->setOSVer(Ljava/lang/String;)V

    .line 193
    invoke-virtual {v6, v5}, Lcom/infraware/common/register/RegisterNetworkConnect;->setSyncher(Lcom/infraware/common/register/SyncNetworkingStep;)V

    .line 194
    invoke-virtual {v6, v9}, Lcom/infraware/common/register/RegisterNetworkConnect;->connectNetwork(Ljava/lang/String;)V

    .line 195
    invoke-virtual {v5}, Lcom/infraware/common/register/SyncNetworkingStep;->waitTurn()V

    .line 197
    invoke-virtual {v6}, Lcom/infraware/common/register/RegisterNetworkConnect;->getResult()I

    move-result v4

    .line 199
    .local v4, nResult:I
    iget-object v10, p0, Lcom/infraware/common/register/UserRegister$1$2;->this$1:Lcom/infraware/common/register/UserRegister$1;

    #getter for: Lcom/infraware/common/register/UserRegister$1;->this$0:Lcom/infraware/common/register/UserRegister;
    invoke-static {v10}, Lcom/infraware/common/register/UserRegister$1;->access$0(Lcom/infraware/common/register/UserRegister$1;)Lcom/infraware/common/register/UserRegister;

    move-result-object v10

    #getter for: Lcom/infraware/common/register/UserRegister;->mUserRegisterDialog:Landroid/app/AlertDialog;
    invoke-static {v10}, Lcom/infraware/common/register/UserRegister;->access$0(Lcom/infraware/common/register/UserRegister;)Landroid/app/AlertDialog;

    move-result-object v10

    if-eqz v10, :cond_8f

    .line 200
    iget-object v10, p0, Lcom/infraware/common/register/UserRegister$1$2;->this$1:Lcom/infraware/common/register/UserRegister$1;

    #getter for: Lcom/infraware/common/register/UserRegister$1;->this$0:Lcom/infraware/common/register/UserRegister;
    invoke-static {v10}, Lcom/infraware/common/register/UserRegister$1;->access$0(Lcom/infraware/common/register/UserRegister$1;)Lcom/infraware/common/register/UserRegister;

    move-result-object v10

    #getter for: Lcom/infraware/common/register/UserRegister;->mUserRegisterDialog:Landroid/app/AlertDialog;
    invoke-static {v10}, Lcom/infraware/common/register/UserRegister;->access$0(Lcom/infraware/common/register/UserRegister;)Landroid/app/AlertDialog;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v10

    if-eqz v10, :cond_8f

    .line 201
    iget-object v10, p0, Lcom/infraware/common/register/UserRegister$1$2;->this$1:Lcom/infraware/common/register/UserRegister$1;

    #getter for: Lcom/infraware/common/register/UserRegister$1;->this$0:Lcom/infraware/common/register/UserRegister;
    invoke-static {v10}, Lcom/infraware/common/register/UserRegister$1;->access$0(Lcom/infraware/common/register/UserRegister$1;)Lcom/infraware/common/register/UserRegister;

    move-result-object v10

    #getter for: Lcom/infraware/common/register/UserRegister;->mUserRegisterDialog:Landroid/app/AlertDialog;
    invoke-static {v10}, Lcom/infraware/common/register/UserRegister;->access$0(Lcom/infraware/common/register/UserRegister;)Landroid/app/AlertDialog;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/AlertDialog;->cancel()V

    .line 203
    :cond_8f
    if-ne v4, v12, :cond_a8

    .line 204
    iget-object v10, p0, Lcom/infraware/common/register/UserRegister$1$2;->this$1:Lcom/infraware/common/register/UserRegister$1;

    #getter for: Lcom/infraware/common/register/UserRegister$1;->this$0:Lcom/infraware/common/register/UserRegister;
    invoke-static {v10}, Lcom/infraware/common/register/UserRegister$1;->access$0(Lcom/infraware/common/register/UserRegister$1;)Lcom/infraware/common/register/UserRegister;

    move-result-object v10

    #setter for: Lcom/infraware/common/register/UserRegister;->m_bUserRegisterSuccess:Z
    invoke-static {v10, v12}, Lcom/infraware/common/register/UserRegister;->access$3(Lcom/infraware/common/register/UserRegister;Z)V

    .line 205
    iget-object v10, p0, Lcom/infraware/common/register/UserRegister$1$2;->this$1:Lcom/infraware/common/register/UserRegister$1;

    #getter for: Lcom/infraware/common/register/UserRegister$1;->this$0:Lcom/infraware/common/register/UserRegister;
    invoke-static {v10}, Lcom/infraware/common/register/UserRegister$1;->access$0(Lcom/infraware/common/register/UserRegister$1;)Lcom/infraware/common/register/UserRegister;

    move-result-object v10

    iget-object v10, v10, Lcom/infraware/common/register/UserRegister;->mEventHandler:Landroid/os/Handler;

    const/16 v11, 0x44c

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 215
    :goto_a7
    return-void

    .line 206
    :cond_a8
    const/16 v10, 0x11

    if-ne v4, v10, :cond_cc

    .line 207
    iget-object v10, p0, Lcom/infraware/common/register/UserRegister$1$2;->this$1:Lcom/infraware/common/register/UserRegister$1;

    #getter for: Lcom/infraware/common/register/UserRegister$1;->this$0:Lcom/infraware/common/register/UserRegister;
    invoke-static {v10}, Lcom/infraware/common/register/UserRegister$1;->access$0(Lcom/infraware/common/register/UserRegister$1;)Lcom/infraware/common/register/UserRegister;

    move-result-object v10

    #setter for: Lcom/infraware/common/register/UserRegister;->m_nFailValue:I
    invoke-static {v10, v4}, Lcom/infraware/common/register/UserRegister;->access$4(Lcom/infraware/common/register/UserRegister;I)V

    .line 208
    iget-object v10, p0, Lcom/infraware/common/register/UserRegister$1$2;->this$1:Lcom/infraware/common/register/UserRegister$1;

    #getter for: Lcom/infraware/common/register/UserRegister$1;->this$0:Lcom/infraware/common/register/UserRegister;
    invoke-static {v10}, Lcom/infraware/common/register/UserRegister$1;->access$0(Lcom/infraware/common/register/UserRegister$1;)Lcom/infraware/common/register/UserRegister;

    move-result-object v10

    #setter for: Lcom/infraware/common/register/UserRegister;->m_bUserRegisterSuccess:Z
    invoke-static {v10, v11}, Lcom/infraware/common/register/UserRegister;->access$3(Lcom/infraware/common/register/UserRegister;Z)V

    .line 209
    iget-object v10, p0, Lcom/infraware/common/register/UserRegister$1$2;->this$1:Lcom/infraware/common/register/UserRegister$1;

    #getter for: Lcom/infraware/common/register/UserRegister$1;->this$0:Lcom/infraware/common/register/UserRegister;
    invoke-static {v10}, Lcom/infraware/common/register/UserRegister$1;->access$0(Lcom/infraware/common/register/UserRegister$1;)Lcom/infraware/common/register/UserRegister;

    move-result-object v10

    iget-object v10, v10, Lcom/infraware/common/register/UserRegister;->mEventHandler:Landroid/os/Handler;

    const/16 v11, 0x578

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_a7

    .line 211
    :cond_cc
    iget-object v10, p0, Lcom/infraware/common/register/UserRegister$1$2;->this$1:Lcom/infraware/common/register/UserRegister$1;

    #getter for: Lcom/infraware/common/register/UserRegister$1;->this$0:Lcom/infraware/common/register/UserRegister;
    invoke-static {v10}, Lcom/infraware/common/register/UserRegister$1;->access$0(Lcom/infraware/common/register/UserRegister$1;)Lcom/infraware/common/register/UserRegister;

    move-result-object v10

    #setter for: Lcom/infraware/common/register/UserRegister;->m_nFailValue:I
    invoke-static {v10, v4}, Lcom/infraware/common/register/UserRegister;->access$4(Lcom/infraware/common/register/UserRegister;I)V

    .line 212
    iget-object v10, p0, Lcom/infraware/common/register/UserRegister$1$2;->this$1:Lcom/infraware/common/register/UserRegister$1;

    #getter for: Lcom/infraware/common/register/UserRegister$1;->this$0:Lcom/infraware/common/register/UserRegister;
    invoke-static {v10}, Lcom/infraware/common/register/UserRegister$1;->access$0(Lcom/infraware/common/register/UserRegister$1;)Lcom/infraware/common/register/UserRegister;

    move-result-object v10

    #setter for: Lcom/infraware/common/register/UserRegister;->m_bUserRegisterSuccess:Z
    invoke-static {v10, v11}, Lcom/infraware/common/register/UserRegister;->access$3(Lcom/infraware/common/register/UserRegister;Z)V

    .line 213
    iget-object v10, p0, Lcom/infraware/common/register/UserRegister$1$2;->this$1:Lcom/infraware/common/register/UserRegister$1;

    #getter for: Lcom/infraware/common/register/UserRegister$1;->this$0:Lcom/infraware/common/register/UserRegister;
    invoke-static {v10}, Lcom/infraware/common/register/UserRegister$1;->access$0(Lcom/infraware/common/register/UserRegister$1;)Lcom/infraware/common/register/UserRegister;

    move-result-object v10

    iget-object v10, v10, Lcom/infraware/common/register/UserRegister;->mEventHandler:Landroid/os/Handler;

    const/16 v11, 0x4b0

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_a7
.end method
