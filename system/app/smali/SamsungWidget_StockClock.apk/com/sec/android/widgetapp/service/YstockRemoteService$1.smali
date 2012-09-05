.class Lcom/sec/android/widgetapp/service/YstockRemoteService$1;
.super Lcom/sec/android/widgetapp/service/YstockRemoteServiceInterface$Stub;
.source "YstockRemoteService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/service/YstockRemoteService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/service/YstockRemoteService;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/service/YstockRemoteService;)V
    .registers 2
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/sec/android/widgetapp/service/YstockRemoteService$1;->this$0:Lcom/sec/android/widgetapp/service/YstockRemoteService;

    invoke-direct {p0}, Lcom/sec/android/widgetapp/service/YstockRemoteServiceInterface$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrency(Ljava/lang/String;)V
    .registers 3
    .parameter "strCurrency"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lcom/sec/android/widgetapp/service/YstockRemoteService$1;->this$0:Lcom/sec/android/widgetapp/service/YstockRemoteService;

    #calls: Lcom/sec/android/widgetapp/service/YstockRemoteService;->requestCurrency(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/sec/android/widgetapp/service/YstockRemoteService;->access$300(Lcom/sec/android/widgetapp/service/YstockRemoteService;Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method public getCurrencyChart(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "strSymbol"
    .parameter "strRange"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lcom/sec/android/widgetapp/service/YstockRemoteService$1;->this$0:Lcom/sec/android/widgetapp/service/YstockRemoteService;

    #calls: Lcom/sec/android/widgetapp/service/YstockRemoteService;->requestCurrencyChart(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, p2}, Lcom/sec/android/widgetapp/service/YstockRemoteService;->access$400(Lcom/sec/android/widgetapp/service/YstockRemoteService;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method public getIndexChart(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "strSymbol"
    .parameter "strRange"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 131
    iget-object v0, p0, Lcom/sec/android/widgetapp/service/YstockRemoteService$1;->this$0:Lcom/sec/android/widgetapp/service/YstockRemoteService;

    #calls: Lcom/sec/android/widgetapp/service/YstockRemoteService;->requestIndexChart(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, p2}, Lcom/sec/android/widgetapp/service/YstockRemoteService;->access$600(Lcom/sec/android/widgetapp/service/YstockRemoteService;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method public getIndexInfo(Ljava/lang/String;)V
    .registers 3
    .parameter "strSymbol"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Lcom/sec/android/widgetapp/service/YstockRemoteService$1;->this$0:Lcom/sec/android/widgetapp/service/YstockRemoteService;

    #calls: Lcom/sec/android/widgetapp/service/YstockRemoteService;->requestIndexInfo(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/sec/android/widgetapp/service/YstockRemoteService;->access$500(Lcom/sec/android/widgetapp/service/YstockRemoteService;Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method public getStockChart(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "strSymbol"
    .parameter "strRange"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, Lcom/sec/android/widgetapp/service/YstockRemoteService$1;->this$0:Lcom/sec/android/widgetapp/service/YstockRemoteService;

    #calls: Lcom/sec/android/widgetapp/service/YstockRemoteService;->requestStockChart(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, p2}, Lcom/sec/android/widgetapp/service/YstockRemoteService;->access$200(Lcom/sec/android/widgetapp/service/YstockRemoteService;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public getStockInfo(Ljava/lang/String;)V
    .registers 3
    .parameter "strSymbol"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lcom/sec/android/widgetapp/service/YstockRemoteService$1;->this$0:Lcom/sec/android/widgetapp/service/YstockRemoteService;

    #calls: Lcom/sec/android/widgetapp/service/YstockRemoteService;->requestStockInfo(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/sec/android/widgetapp/service/YstockRemoteService;->access$100(Lcom/sec/android/widgetapp/service/YstockRemoteService;Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public registerCallback(Lcom/sec/android/widgetapp/service/YstockRemoteServiceCallback;)V
    .registers 3
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 89
    if-eqz p1, :cond_9

    .line 90
    iget-object v0, p0, Lcom/sec/android/widgetapp/service/YstockRemoteService$1;->this$0:Lcom/sec/android/widgetapp/service/YstockRemoteService;

    iget-object v0, v0, Lcom/sec/android/widgetapp/service/YstockRemoteService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 91
    :cond_9
    return-void
.end method

.method public searchStock(Ljava/lang/String;)V
    .registers 3
    .parameter "strStock"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lcom/sec/android/widgetapp/service/YstockRemoteService$1;->this$0:Lcom/sec/android/widgetapp/service/YstockRemoteService;

    #calls: Lcom/sec/android/widgetapp/service/YstockRemoteService;->requestSearch(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/sec/android/widgetapp/service/YstockRemoteService;->access$000(Lcom/sec/android/widgetapp/service/YstockRemoteService;Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method public unregisterCallback(Lcom/sec/android/widgetapp/service/YstockRemoteServiceCallback;)V
    .registers 3
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 95
    if-eqz p1, :cond_9

    .line 96
    iget-object v0, p0, Lcom/sec/android/widgetapp/service/YstockRemoteService$1;->this$0:Lcom/sec/android/widgetapp/service/YstockRemoteService;

    iget-object v0, v0, Lcom/sec/android/widgetapp/service/YstockRemoteService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 97
    :cond_9
    return-void
.end method
