.class Lcom/android/exchange/ExchangeService$8;
.super Landroid/telephony/PhoneStateListener;
.source "ExchangeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exchange/ExchangeService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exchange/ExchangeService;


# direct methods
.method constructor <init>(Lcom/android/exchange/ExchangeService;)V
    .registers 2
    .parameter

    .prologue
    .line 3851
    iput-object p1, p0, Lcom/android/exchange/ExchangeService$8;->this$0:Lcom/android/exchange/ExchangeService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .registers 6
    .parameter "state"

    .prologue
    .line 3853
    const-string v2, "onServiceStateChanged"

    invoke-static {v2}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 3854
    iget-object v2, p0, Lcom/android/exchange/ExchangeService$8;->this$0:Lcom/android/exchange/ExchangeService;

    #getter for: Lcom/android/exchange/ExchangeService;->mIsNetworkRoaming:Z
    invoke-static {v2}, Lcom/android/exchange/ExchangeService;->access$2000(Lcom/android/exchange/ExchangeService;)Z

    move-result v0

    .line 3855
    .local v0, oldRoamingType:Z
    iget-object v2, p0, Lcom/android/exchange/ExchangeService$8;->this$0:Lcom/android/exchange/ExchangeService;

    #getter for: Lcom/android/exchange/ExchangeService;->mNetworkState:I
    invoke-static {v2}, Lcom/android/exchange/ExchangeService;->access$2100(Lcom/android/exchange/ExchangeService;)I

    move-result v1

    .line 3857
    .local v1, oldServiceState:I
    iget-object v2, p0, Lcom/android/exchange/ExchangeService$8;->this$0:Lcom/android/exchange/ExchangeService;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    #setter for: Lcom/android/exchange/ExchangeService;->mNetworkState:I
    invoke-static {v2, v3}, Lcom/android/exchange/ExchangeService;->access$2102(Lcom/android/exchange/ExchangeService;I)I

    .line 3858
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-nez v2, :cond_29

    .line 3859
    iget-object v2, p0, Lcom/android/exchange/ExchangeService$8;->this$0:Lcom/android/exchange/ExchangeService;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v3

    #setter for: Lcom/android/exchange/ExchangeService;->mIsNetworkRoaming:Z
    invoke-static {v2, v3}, Lcom/android/exchange/ExchangeService;->access$2002(Lcom/android/exchange/ExchangeService;Z)Z

    .line 3860
    :cond_29
    iget-object v2, p0, Lcom/android/exchange/ExchangeService$8;->this$0:Lcom/android/exchange/ExchangeService;

    #getter for: Lcom/android/exchange/ExchangeService;->mNetworkState:I
    invoke-static {v2}, Lcom/android/exchange/ExchangeService;->access$2100(Lcom/android/exchange/ExchangeService;)I

    move-result v2

    if-ne v2, v1, :cond_41

    iget-object v2, p0, Lcom/android/exchange/ExchangeService$8;->this$0:Lcom/android/exchange/ExchangeService;

    #getter for: Lcom/android/exchange/ExchangeService;->mNetworkState:I
    invoke-static {v2}, Lcom/android/exchange/ExchangeService;->access$2100(Lcom/android/exchange/ExchangeService;)I

    move-result v2

    if-nez v2, :cond_62

    iget-object v2, p0, Lcom/android/exchange/ExchangeService$8;->this$0:Lcom/android/exchange/ExchangeService;

    #getter for: Lcom/android/exchange/ExchangeService;->mIsNetworkRoaming:Z
    invoke-static {v2}, Lcom/android/exchange/ExchangeService;->access$2000(Lcom/android/exchange/ExchangeService;)Z

    move-result v2

    if-eq v0, v2, :cond_62

    .line 3862
    :cond_41
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Roaming State changed: mIsNetworkRoaming:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/exchange/ExchangeService$8;->this$0:Lcom/android/exchange/ExchangeService;

    #getter for: Lcom/android/exchange/ExchangeService;->mIsNetworkRoaming:Z
    invoke-static {v3}, Lcom/android/exchange/ExchangeService;->access$2000(Lcom/android/exchange/ExchangeService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 3866
    iget-object v2, p0, Lcom/android/exchange/ExchangeService$8;->this$0:Lcom/android/exchange/ExchangeService;

    #calls: Lcom/android/exchange/ExchangeService;->updateAccountDb()V
    invoke-static {v2}, Lcom/android/exchange/ExchangeService;->access$2200(Lcom/android/exchange/ExchangeService;)V

    .line 3868
    :cond_62
    return-void
.end method
