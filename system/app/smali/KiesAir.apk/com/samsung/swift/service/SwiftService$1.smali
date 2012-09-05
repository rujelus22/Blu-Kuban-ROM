.class Lcom/samsung/swift/service/SwiftService$1;
.super Lcom/samsung/swift/service/ISwiftService$Stub;
.source "SwiftService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/swift/service/SwiftService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/swift/service/SwiftService;


# direct methods
.method constructor <init>(Lcom/samsung/swift/service/SwiftService;)V
    .registers 2
    .parameter

    .prologue
    .line 211
    iput-object p1, p0, Lcom/samsung/swift/service/SwiftService$1;->this$0:Lcom/samsung/swift/service/SwiftService;

    invoke-direct {p0}, Lcom/samsung/swift/service/ISwiftService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentNetworkName()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 220
    iget-object v0, p0, Lcom/samsung/swift/service/SwiftService$1;->this$0:Lcom/samsung/swift/service/SwiftService;

    #calls: Lcom/samsung/swift/service/SwiftService;->doGetCurrentNetworkName()Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/swift/service/SwiftService;->access$100(Lcom/samsung/swift/service/SwiftService;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInstallWorldReadable()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 263
    iget-object v0, p0, Lcom/samsung/swift/service/SwiftService$1;->this$0:Lcom/samsung/swift/service/SwiftService;

    #getter for: Lcom/samsung/swift/service/SwiftService;->installer:Lcom/samsung/swift/service/Installer;
    invoke-static {v0}, Lcom/samsung/swift/service/SwiftService;->access$500(Lcom/samsung/swift/service/SwiftService;)Lcom/samsung/swift/service/Installer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/swift/service/Installer;->isWorld()Z

    move-result v0

    return v0
.end method

.method public getRootUrl()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 215
    iget-object v0, p0, Lcom/samsung/swift/service/SwiftService$1;->this$0:Lcom/samsung/swift/service/SwiftService;

    #calls: Lcom/samsung/swift/service/SwiftService;->doGetRootUrl()Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/swift/service/SwiftService;->access$000(Lcom/samsung/swift/service/SwiftService;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public install()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 238
    iget-object v0, p0, Lcom/samsung/swift/service/SwiftService$1;->this$0:Lcom/samsung/swift/service/SwiftService;

    iget-object v1, p0, Lcom/samsung/swift/service/SwiftService$1;->this$0:Lcom/samsung/swift/service/SwiftService;

    #getter for: Lcom/samsung/swift/service/SwiftService;->installer:Lcom/samsung/swift/service/Installer;
    invoke-static {v1}, Lcom/samsung/swift/service/SwiftService;->access$500(Lcom/samsung/swift/service/SwiftService;)Lcom/samsung/swift/service/Installer;

    move-result-object v1

    const/4 v2, 0x0

    #calls: Lcom/samsung/swift/service/SwiftService;->startJob(Ljava/lang/Runnable;Ljava/lang/String;)Z
    invoke-static {v0, v1, v2}, Lcom/samsung/swift/service/SwiftService;->access$300(Lcom/samsung/swift/service/SwiftService;Ljava/lang/Runnable;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public installProgress()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 244
    iget-object v0, p0, Lcom/samsung/swift/service/SwiftService$1;->this$0:Lcom/samsung/swift/service/SwiftService;

    #getter for: Lcom/samsung/swift/service/SwiftService;->installer:Lcom/samsung/swift/service/Installer;
    invoke-static {v0}, Lcom/samsung/swift/service/SwiftService;->access$500(Lcom/samsung/swift/service/SwiftService;)Lcom/samsung/swift/service/Installer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/swift/service/Installer;->getProgress()I

    move-result v0

    return v0
.end method

.method public installState()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 270
    iget-object v0, p0, Lcom/samsung/swift/service/SwiftService$1;->this$0:Lcom/samsung/swift/service/SwiftService;

    #getter for: Lcom/samsung/swift/service/SwiftService;->installer:Lcom/samsung/swift/service/Installer;
    invoke-static {v0}, Lcom/samsung/swift/service/SwiftService;->access$500(Lcom/samsung/swift/service/SwiftService;)Lcom/samsung/swift/service/Installer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/swift/service/Installer;->getState()I

    move-result v0

    return v0
.end method

.method public installedFile()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 250
    iget-object v0, p0, Lcom/samsung/swift/service/SwiftService$1;->this$0:Lcom/samsung/swift/service/SwiftService;

    #getter for: Lcom/samsung/swift/service/SwiftService;->installer:Lcom/samsung/swift/service/Installer;
    invoke-static {v0}, Lcom/samsung/swift/service/SwiftService;->access$500(Lcom/samsung/swift/service/SwiftService;)Lcom/samsung/swift/service/Installer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/swift/service/Installer;->getInstalledFile()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isServerRunning()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 276
    iget-object v0, p0, Lcom/samsung/swift/service/SwiftService$1;->this$0:Lcom/samsung/swift/service/SwiftService;

    #calls: Lcom/samsung/swift/service/SwiftService;->isRunning()Z
    invoke-static {v0}, Lcom/samsung/swift/service/SwiftService;->access$600(Lcom/samsung/swift/service/SwiftService;)Z

    move-result v0

    return v0
.end method

.method public restart()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 282
    iget-object v0, p0, Lcom/samsung/swift/service/SwiftService$1;->this$0:Lcom/samsung/swift/service/SwiftService;

    iget-object v1, p0, Lcom/samsung/swift/service/SwiftService$1;->this$0:Lcom/samsung/swift/service/SwiftService;

    #getter for: Lcom/samsung/swift/service/SwiftService;->restart:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/samsung/swift/service/SwiftService;->access$700(Lcom/samsung/swift/service/SwiftService;)Ljava/lang/Runnable;

    move-result-object v1

    sget-object v2, Lcom/samsung/swift/service/SwiftService;->START_EVENT:Ljava/lang/String;

    #calls: Lcom/samsung/swift/service/SwiftService;->startJob(Ljava/lang/Runnable;Ljava/lang/String;)Z
    invoke-static {v0, v1, v2}, Lcom/samsung/swift/service/SwiftService;->access$300(Lcom/samsung/swift/service/SwiftService;Ljava/lang/Runnable;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setInstallWorldReadable(Z)V
    .registers 3
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 257
    iget-object v0, p0, Lcom/samsung/swift/service/SwiftService$1;->this$0:Lcom/samsung/swift/service/SwiftService;

    #getter for: Lcom/samsung/swift/service/SwiftService;->installer:Lcom/samsung/swift/service/Installer;
    invoke-static {v0}, Lcom/samsung/swift/service/SwiftService;->access$500(Lcom/samsung/swift/service/SwiftService;)Lcom/samsung/swift/service/Installer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/swift/service/Installer;->setWorld(Z)V

    .line 258
    return-void
.end method

.method public start()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 226
    iget-object v0, p0, Lcom/samsung/swift/service/SwiftService$1;->this$0:Lcom/samsung/swift/service/SwiftService;

    iget-object v1, p0, Lcom/samsung/swift/service/SwiftService$1;->this$0:Lcom/samsung/swift/service/SwiftService;

    #getter for: Lcom/samsung/swift/service/SwiftService;->startServer:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/samsung/swift/service/SwiftService;->access$200(Lcom/samsung/swift/service/SwiftService;)Ljava/lang/Runnable;

    move-result-object v1

    sget-object v2, Lcom/samsung/swift/service/SwiftService;->START_EVENT:Ljava/lang/String;

    #calls: Lcom/samsung/swift/service/SwiftService;->startJob(Ljava/lang/Runnable;Ljava/lang/String;)Z
    invoke-static {v0, v1, v2}, Lcom/samsung/swift/service/SwiftService;->access$300(Lcom/samsung/swift/service/SwiftService;Ljava/lang/Runnable;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public stop()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 232
    iget-object v0, p0, Lcom/samsung/swift/service/SwiftService$1;->this$0:Lcom/samsung/swift/service/SwiftService;

    iget-object v1, p0, Lcom/samsung/swift/service/SwiftService$1;->this$0:Lcom/samsung/swift/service/SwiftService;

    #getter for: Lcom/samsung/swift/service/SwiftService;->stopServer:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/samsung/swift/service/SwiftService;->access$400(Lcom/samsung/swift/service/SwiftService;)Ljava/lang/Runnable;

    move-result-object v1

    sget-object v2, Lcom/samsung/swift/service/SwiftService;->STOP_EVENT:Ljava/lang/String;

    #calls: Lcom/samsung/swift/service/SwiftService;->startJob(Ljava/lang/Runnable;Ljava/lang/String;)Z
    invoke-static {v0, v1, v2}, Lcom/samsung/swift/service/SwiftService;->access$300(Lcom/samsung/swift/service/SwiftService;Ljava/lang/Runnable;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
