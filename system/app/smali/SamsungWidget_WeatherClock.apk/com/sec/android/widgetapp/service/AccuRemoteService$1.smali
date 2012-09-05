.class Lcom/sec/android/widgetapp/service/AccuRemoteService$1;
.super Lcom/sec/android/widgetapp/service/AccuRemoteServiceInterface$Stub;
.source "AccuRemoteService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/service/AccuRemoteService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/service/AccuRemoteService;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/service/AccuRemoteService;)V
    .registers 2
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/sec/android/widgetapp/service/AccuRemoteService$1;->this$0:Lcom/sec/android/widgetapp/service/AccuRemoteService;

    invoke-direct {p0}, Lcom/sec/android/widgetapp/service/AccuRemoteServiceInterface$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getCityBriefTemp(Ljava/lang/String;I)V
    .registers 6
    .parameter "location"
    .parameter "tempscale"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 79
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCityBriefTemp "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v0, p0, Lcom/sec/android/widgetapp/service/AccuRemoteService$1;->this$0:Lcom/sec/android/widgetapp/service/AccuRemoteService;

    iput p2, v0, Lcom/sec/android/widgetapp/service/AccuRemoteService;->tempScale:I

    .line 81
    iget-object v0, p0, Lcom/sec/android/widgetapp/service/AccuRemoteService$1;->this$0:Lcom/sec/android/widgetapp/service/AccuRemoteService;

    iget-object v1, p0, Lcom/sec/android/widgetapp/service/AccuRemoteService$1;->this$0:Lcom/sec/android/widgetapp/service/AccuRemoteService;

    iget v1, v1, Lcom/sec/android/widgetapp/service/AccuRemoteService;->METHOD_INFO:I

    #calls: Lcom/sec/android/widgetapp/service/AccuRemoteService;->performNetworkAccess(Ljava/lang/String;I)V
    invoke-static {v0, p1, v1}, Lcom/sec/android/widgetapp/service/AccuRemoteService;->access$000(Lcom/sec/android/widgetapp/service/AccuRemoteService;Ljava/lang/String;I)V

    .line 82
    return-void
.end method

.method public getCityDetailTemp(Ljava/lang/String;I)V
    .registers 6
    .parameter "location"
    .parameter "tempscale"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 86
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCityDetailTemp "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v0, p0, Lcom/sec/android/widgetapp/service/AccuRemoteService$1;->this$0:Lcom/sec/android/widgetapp/service/AccuRemoteService;

    iput p2, v0, Lcom/sec/android/widgetapp/service/AccuRemoteService;->tempScale:I

    .line 88
    iget-object v0, p0, Lcom/sec/android/widgetapp/service/AccuRemoteService$1;->this$0:Lcom/sec/android/widgetapp/service/AccuRemoteService;

    iget-object v1, p0, Lcom/sec/android/widgetapp/service/AccuRemoteService$1;->this$0:Lcom/sec/android/widgetapp/service/AccuRemoteService;

    iget v1, v1, Lcom/sec/android/widgetapp/service/AccuRemoteService;->METHOD_DETAIL:I

    #calls: Lcom/sec/android/widgetapp/service/AccuRemoteService;->performNetworkAccess(Ljava/lang/String;I)V
    invoke-static {v0, p1, v1}, Lcom/sec/android/widgetapp/service/AccuRemoteService;->access$000(Lcom/sec/android/widgetapp/service/AccuRemoteService;Ljava/lang/String;I)V

    .line 89
    return-void
.end method

.method public registerCallback(Lcom/sec/android/widgetapp/service/AccuRemoteServiceCallback;)V
    .registers 3
    .parameter "cb"

    .prologue
    .line 67
    if-eqz p1, :cond_9

    .line 68
    iget-object v0, p0, Lcom/sec/android/widgetapp/service/AccuRemoteService$1;->this$0:Lcom/sec/android/widgetapp/service/AccuRemoteService;

    iget-object v0, v0, Lcom/sec/android/widgetapp/service/AccuRemoteService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 69
    :cond_9
    return-void
.end method

.method public searchCity(Ljava/lang/String;)V
    .registers 5
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 93
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "searchcity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v0, p0, Lcom/sec/android/widgetapp/service/AccuRemoteService$1;->this$0:Lcom/sec/android/widgetapp/service/AccuRemoteService;

    iget-object v1, p0, Lcom/sec/android/widgetapp/service/AccuRemoteService$1;->this$0:Lcom/sec/android/widgetapp/service/AccuRemoteService;

    iget v1, v1, Lcom/sec/android/widgetapp/service/AccuRemoteService;->METHOD_LIST:I

    #calls: Lcom/sec/android/widgetapp/service/AccuRemoteService;->performNetworkAccess(Ljava/lang/String;I)V
    invoke-static {v0, p1, v1}, Lcom/sec/android/widgetapp/service/AccuRemoteService;->access$000(Lcom/sec/android/widgetapp/service/AccuRemoteService;Ljava/lang/String;I)V

    .line 95
    return-void
.end method

.method public unregisterCallback(Lcom/sec/android/widgetapp/service/AccuRemoteServiceCallback;)V
    .registers 3
    .parameter "cb"

    .prologue
    .line 73
    if-eqz p1, :cond_9

    .line 74
    iget-object v0, p0, Lcom/sec/android/widgetapp/service/AccuRemoteService$1;->this$0:Lcom/sec/android/widgetapp/service/AccuRemoteService;

    iget-object v0, v0, Lcom/sec/android/widgetapp/service/AccuRemoteService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 75
    :cond_9
    return-void
.end method
