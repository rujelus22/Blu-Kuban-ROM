.class public Lcom/samsung/swift/service/SwiftServiceManagerBound;
.super Ljava/lang/Object;
.source "SwiftServiceManagerBound.java"

# interfaces
.implements Lcom/samsung/swift/service/ISwiftService;


# static fields
.field private static final TAGNAME:Ljava/lang/String;


# instance fields
.field private final applicationContext:Landroid/content/Context;

.field private binder:Landroid/os/IBinder;

.field private onReadyIntent:Landroid/content/Intent;

.field private serviceConection:Landroid/content/ServiceConnection;

.field private swiftService:Lcom/samsung/swift/service/ISwiftService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 103
    const-class v0, Lcom/samsung/swift/service/SwiftServiceManagerBound;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/swift/service/SwiftServiceManagerBound;->TAGNAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .registers 6
    .parameter "onReadyIntent"

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    new-instance v0, Lcom/samsung/swift/service/SwiftServiceManagerBound$1;

    invoke-direct {v0, p0}, Lcom/samsung/swift/service/SwiftServiceManagerBound$1;-><init>(Lcom/samsung/swift/service/SwiftServiceManagerBound;)V

    iput-object v0, p0, Lcom/samsung/swift/service/SwiftServiceManagerBound;->serviceConection:Landroid/content/ServiceConnection;

    .line 128
    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/swift/service/SwiftServiceManagerBound;->applicationContext:Landroid/content/Context;

    .line 129
    iput-object p1, p0, Lcom/samsung/swift/service/SwiftServiceManagerBound;->onReadyIntent:Landroid/content/Intent;

    .line 130
    iget-object v0, p0, Lcom/samsung/swift/service/SwiftServiceManagerBound;->applicationContext:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/swift/service/SwiftService;->makeIntent()Landroid/content/Intent;

    move-result-object v1

    const-class v2, Lcom/samsung/swift/service/ISwiftService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/swift/service/SwiftServiceManagerBound;->serviceConection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_33

    .line 132
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Cant bind"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 134
    :cond_33
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/swift/service/SwiftServiceManagerBound;Lcom/samsung/swift/service/ISwiftService;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/samsung/swift/service/SwiftServiceManagerBound;->setSwiftService(Lcom/samsung/swift/service/ISwiftService;)V

    return-void
.end method

.method static synthetic access$102(Lcom/samsung/swift/service/SwiftServiceManagerBound;Landroid/os/IBinder;)Landroid/os/IBinder;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/samsung/swift/service/SwiftServiceManagerBound;->binder:Landroid/os/IBinder;

    return-object p1
.end method

.method static synthetic access$200(Lcom/samsung/swift/service/SwiftServiceManagerBound;)Landroid/content/Intent;
    .registers 2
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/samsung/swift/service/SwiftServiceManagerBound;->onReadyIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$202(Lcom/samsung/swift/service/SwiftServiceManagerBound;Landroid/content/Intent;)Landroid/content/Intent;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/samsung/swift/service/SwiftServiceManagerBound;->onReadyIntent:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$300(Lcom/samsung/swift/service/SwiftServiceManagerBound;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/samsung/swift/service/SwiftServiceManagerBound;->applicationContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/swift/service/SwiftServiceManagerBound;)Lcom/samsung/swift/service/ISwiftService;
    .registers 2
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/samsung/swift/service/SwiftServiceManagerBound;->swiftService:Lcom/samsung/swift/service/ISwiftService;

    return-object v0
.end method

.method private declared-synchronized getSwiftService()Lcom/samsung/swift/service/ISwiftService;
    .registers 2

    .prologue
    .line 157
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/samsung/swift/service/SwiftServiceManagerBound;->swiftService:Lcom/samsung/swift/service/ISwiftService;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setSwiftService(Lcom/samsung/swift/service/ISwiftService;)V
    .registers 3
    .parameter "swiftService"

    .prologue
    .line 161
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/samsung/swift/service/SwiftServiceManagerBound;->swiftService:Lcom/samsung/swift/service/ISwiftService;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 162
    monitor-exit p0

    return-void

    .line 161
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/samsung/swift/service/SwiftServiceManagerBound;->binder:Landroid/os/IBinder;

    return-object v0
.end method

.method public declared-synchronized disconnect()V
    .registers 3

    .prologue
    .line 138
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/samsung/swift/service/SwiftServiceManagerBound;->serviceConection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_11

    .line 140
    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/swift/service/SwiftServiceManagerBound;->serviceConection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 141
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/swift/service/SwiftServiceManagerBound;->serviceConection:Landroid/content/ServiceConnection;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 143
    :cond_11
    monitor-exit p0

    return-void

    .line 138
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/samsung/swift/service/SwiftServiceManagerBound;->disconnect()V

    .line 153
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 154
    return-void
.end method

.method public getCurrentNetworkName()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 177
    invoke-direct {p0}, Lcom/samsung/swift/service/SwiftServiceManagerBound;->getSwiftService()Lcom/samsung/swift/service/ISwiftService;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/swift/service/ISwiftService;->getCurrentNetworkName()Ljava/lang/String;

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
    .line 200
    invoke-direct {p0}, Lcom/samsung/swift/service/SwiftServiceManagerBound;->getSwiftService()Lcom/samsung/swift/service/ISwiftService;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/swift/service/ISwiftService;->getInstallWorldReadable()Z

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
    .line 173
    invoke-direct {p0}, Lcom/samsung/swift/service/SwiftServiceManagerBound;->getSwiftService()Lcom/samsung/swift/service/ISwiftService;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/swift/service/ISwiftService;->getRootUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public install()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/samsung/swift/service/SwiftServiceManagerBound;->getSwiftService()Lcom/samsung/swift/service/ISwiftService;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/swift/service/ISwiftService;->install()Z

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
    .line 188
    invoke-direct {p0}, Lcom/samsung/swift/service/SwiftServiceManagerBound;->getSwiftService()Lcom/samsung/swift/service/ISwiftService;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/swift/service/ISwiftService;->installProgress()I

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
    .line 205
    invoke-direct {p0}, Lcom/samsung/swift/service/SwiftServiceManagerBound;->getSwiftService()Lcom/samsung/swift/service/ISwiftService;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/swift/service/ISwiftService;->installState()I

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
    .line 192
    invoke-direct {p0}, Lcom/samsung/swift/service/SwiftServiceManagerBound;->getSwiftService()Lcom/samsung/swift/service/ISwiftService;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/swift/service/ISwiftService;->installedFile()Ljava/lang/String;

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
    .line 210
    invoke-direct {p0}, Lcom/samsung/swift/service/SwiftServiceManagerBound;->getSwiftService()Lcom/samsung/swift/service/ISwiftService;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/swift/service/ISwiftService;->isServerRunning()Z

    move-result v0

    return v0
.end method

.method public restart()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 216
    iget-object v0, p0, Lcom/samsung/swift/service/SwiftServiceManagerBound;->swiftService:Lcom/samsung/swift/service/ISwiftService;

    invoke-interface {v0}, Lcom/samsung/swift/service/ISwiftService;->restart()Z

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
    .line 196
    invoke-direct {p0}, Lcom/samsung/swift/service/SwiftServiceManagerBound;->getSwiftService()Lcom/samsung/swift/service/ISwiftService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/swift/service/ISwiftService;->setInstallWorldReadable(Z)V

    .line 197
    return-void
.end method

.method public start()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 166
    iget-object v0, p0, Lcom/samsung/swift/service/SwiftServiceManagerBound;->swiftService:Lcom/samsung/swift/service/ISwiftService;

    invoke-interface {v0}, Lcom/samsung/swift/service/ISwiftService;->start()Z

    move-result v0

    return v0
.end method

.method public stop()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 170
    iget-object v0, p0, Lcom/samsung/swift/service/SwiftServiceManagerBound;->swiftService:Lcom/samsung/swift/service/ISwiftService;

    invoke-interface {v0}, Lcom/samsung/swift/service/ISwiftService;->stop()Z

    move-result v0

    return v0
.end method
