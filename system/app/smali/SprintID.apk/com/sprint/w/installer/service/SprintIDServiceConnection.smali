.class public Lcom/sprint/w/installer/service/SprintIDServiceConnection;
.super Ljava/lang/Object;
.source "SprintIDServiceConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private log:Lcom/sprint/id/logger/Logger;

.field private mService:Lcom/sprint/id/ISprintIDService;

.field private onConnectedCallback:Ljava/lang/Runnable;

.field private onDisconnectedCallback:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-class v0, Lcom/sprint/w/installer/service/SprintIDServiceConnection;

    invoke-static {v0}, Lcom/sprint/id/logger/Logger;->getLogger(Ljava/lang/Class;)Lcom/sprint/id/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/w/installer/service/SprintIDServiceConnection;->log:Lcom/sprint/id/logger/Logger;

    return-void
.end method


# virtual methods
.method public getOnConnectedCallback()Ljava/lang/Runnable;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sprint/w/installer/service/SprintIDServiceConnection;->onConnectedCallback:Ljava/lang/Runnable;

    return-object v0
.end method

.method public getOnDisconnectedCallback()Ljava/lang/Runnable;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sprint/w/installer/service/SprintIDServiceConnection;->onDisconnectedCallback:Ljava/lang/Runnable;

    return-object v0
.end method

.method public getService()Lcom/sprint/id/ISprintIDService;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sprint/w/installer/service/SprintIDServiceConnection;->mService:Lcom/sprint/id/ISprintIDService;

    return-object v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .parameter "arg0"
    .parameter "service"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/sprint/w/installer/service/SprintIDServiceConnection;->log:Lcom/sprint/id/logger/Logger;

    const-string v1, "Entered onServiceConnected()"

    invoke-virtual {v0, v1}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 23
    invoke-static {p2}, Lcom/sprint/id/ISprintIDService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sprint/id/ISprintIDService;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/w/installer/service/SprintIDServiceConnection;->mService:Lcom/sprint/id/ISprintIDService;

    .line 24
    iget-object v0, p0, Lcom/sprint/w/installer/service/SprintIDServiceConnection;->onConnectedCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_1d

    .line 25
    iget-object v0, p0, Lcom/sprint/w/installer/service/SprintIDServiceConnection;->log:Lcom/sprint/id/logger/Logger;

    const-string v1, "Executing onConnectedCallback.run()"

    invoke-virtual {v0, v1}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lcom/sprint/w/installer/service/SprintIDServiceConnection;->onConnectedCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 28
    :cond_1d
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .parameter "arg0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sprint/w/installer/service/SprintIDServiceConnection;->log:Lcom/sprint/id/logger/Logger;

    const-string v1, "Entered onServiceDisconnected()"

    invoke-virtual {v0, v1}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprint/w/installer/service/SprintIDServiceConnection;->mService:Lcom/sprint/id/ISprintIDService;

    .line 34
    iget-object v0, p0, Lcom/sprint/w/installer/service/SprintIDServiceConnection;->onDisconnectedCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_13

    .line 35
    iget-object v0, p0, Lcom/sprint/w/installer/service/SprintIDServiceConnection;->onDisconnectedCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 37
    :cond_13
    return-void
.end method

.method public setOnConnectedCallback(Ljava/lang/Runnable;)V
    .registers 2
    .parameter "onConnectedCallback"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/sprint/w/installer/service/SprintIDServiceConnection;->onConnectedCallback:Ljava/lang/Runnable;

    .line 49
    return-void
.end method

.method public setOnDisconnectedCallback(Ljava/lang/Runnable;)V
    .registers 2
    .parameter "onDisconnectedCallback"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/sprint/w/installer/service/SprintIDServiceConnection;->onDisconnectedCallback:Ljava/lang/Runnable;

    .line 57
    return-void
.end method
