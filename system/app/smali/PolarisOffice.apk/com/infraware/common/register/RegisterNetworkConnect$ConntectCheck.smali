.class Lcom/infraware/common/register/RegisterNetworkConnect$ConntectCheck;
.super Ljava/lang/Object;
.source "RegisterNetworkConnect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/common/register/RegisterNetworkConnect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConntectCheck"
.end annotation


# instance fields
.field testUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/infraware/common/register/RegisterNetworkConnect;


# direct methods
.method constructor <init>(Lcom/infraware/common/register/RegisterNetworkConnect;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter "url"

    .prologue
    .line 105
    iput-object p1, p0, Lcom/infraware/common/register/RegisterNetworkConnect$ConntectCheck;->this$0:Lcom/infraware/common/register/RegisterNetworkConnect;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/infraware/common/register/RegisterNetworkConnect$ConntectCheck;->testUrl:Ljava/lang/String;

    .line 103
    const/4 v0, 0x0

    #setter for: Lcom/infraware/common/register/RegisterNetworkConnect;->mConnect:Z
    invoke-static {p1, v0}, Lcom/infraware/common/register/RegisterNetworkConnect;->access$0(Lcom/infraware/common/register/RegisterNetworkConnect;Z)V

    .line 104
    iput-object p2, p0, Lcom/infraware/common/register/RegisterNetworkConnect$ConntectCheck;->testUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 111
    :try_start_1
    const-string v3, "DocMaster"

    const-string v4, "[ConntectCheck] Start!!!!!!!!!!!!"

    invoke-static {v3, v4}, Lcom/infraware/common/util/CMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Lcom/infraware/common/register/RegisterNetworkConnect$ConntectCheck;->testUrl:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 113
    .local v2, url:Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 114
    .local v0, connection:Ljava/net/URLConnection;
    const/16 v3, 0x2710

    invoke-virtual {v0, v3}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 115
    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V

    .line 116
    const-string v3, "DocMaster"

    const-string v4, "[ConntectCheck] Network Connect Success!!!!!!!!!!"

    invoke-static {v3, v4}, Lcom/infraware/common/util/CMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v3, p0, Lcom/infraware/common/register/RegisterNetworkConnect$ConntectCheck;->this$0:Lcom/infraware/common/register/RegisterNetworkConnect;

    const/4 v4, 0x1

    #setter for: Lcom/infraware/common/register/RegisterNetworkConnect;->mConnect:Z
    invoke-static {v3, v4}, Lcom/infraware/common/register/RegisterNetworkConnect;->access$0(Lcom/infraware/common/register/RegisterNetworkConnect;Z)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_28} :catch_41

    .line 125
    .end local v0           #connection:Ljava/net/URLConnection;
    .end local v2           #url:Ljava/net/URL;
    :goto_28
    iget-object v3, p0, Lcom/infraware/common/register/RegisterNetworkConnect$ConntectCheck;->this$0:Lcom/infraware/common/register/RegisterNetworkConnect;

    #getter for: Lcom/infraware/common/register/RegisterNetworkConnect;->mNs:Lcom/infraware/common/register/SyncNetworkingStep;
    invoke-static {v3}, Lcom/infraware/common/register/RegisterNetworkConnect;->access$1(Lcom/infraware/common/register/RegisterNetworkConnect;)Lcom/infraware/common/register/SyncNetworkingStep;

    move-result-object v3

    if-eqz v3, :cond_40

    .line 127
    const-string v3, "DocMaster"

    const-string v4, "[ConntectCheck] mNs.yourTurn(true);!!!!!!!!!!!"

    invoke-static {v3, v4}, Lcom/infraware/common/util/CMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v3, p0, Lcom/infraware/common/register/RegisterNetworkConnect$ConntectCheck;->this$0:Lcom/infraware/common/register/RegisterNetworkConnect;

    #getter for: Lcom/infraware/common/register/RegisterNetworkConnect;->mNs:Lcom/infraware/common/register/SyncNetworkingStep;
    invoke-static {v3}, Lcom/infraware/common/register/RegisterNetworkConnect;->access$1(Lcom/infraware/common/register/RegisterNetworkConnect;)Lcom/infraware/common/register/SyncNetworkingStep;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/infraware/common/register/SyncNetworkingStep;->yourTurn(Z)V

    .line 130
    :cond_40
    return-void

    .line 119
    :catch_41
    move-exception v1

    .line 121
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "DocMaster"

    const-string v4, "[ConntectCheck] Network Error Fail!!!!!!!!!!!"

    invoke-static {v3, v4}, Lcom/infraware/common/util/CMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object v3, p0, Lcom/infraware/common/register/RegisterNetworkConnect$ConntectCheck;->this$0:Lcom/infraware/common/register/RegisterNetworkConnect;

    const/4 v4, 0x2

    iput v4, v3, Lcom/infraware/common/register/RegisterNetworkConnect;->mResult:I

    .line 123
    iget-object v3, p0, Lcom/infraware/common/register/RegisterNetworkConnect$ConntectCheck;->this$0:Lcom/infraware/common/register/RegisterNetworkConnect;

    const/4 v4, 0x0

    #setter for: Lcom/infraware/common/register/RegisterNetworkConnect;->mConnect:Z
    invoke-static {v3, v4}, Lcom/infraware/common/register/RegisterNetworkConnect;->access$0(Lcom/infraware/common/register/RegisterNetworkConnect;Z)V

    goto :goto_28
.end method
