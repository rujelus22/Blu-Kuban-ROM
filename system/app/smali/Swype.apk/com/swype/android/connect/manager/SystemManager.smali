.class public Lcom/swype/android/connect/manager/SystemManager;
.super Lcom/swype/android/connect/manager/AbstractCommandManager;
.source "SystemManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swype/android/connect/manager/SystemManager$ValidCommands;
    }
.end annotation


# static fields
.field public static final COMMAND_FAMILY:Ljava/lang/String; = "system"


# direct methods
.method public constructor <init>(Lcom/swype/android/connect/ConnectClient;)V
    .registers 3
    .parameter "ctx"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/swype/android/connect/manager/AbstractCommandManager;-><init>(Lcom/swype/android/connect/ConnectClient;)V

    .line 42
    const/4 v0, 0x2

    iput v0, p0, Lcom/swype/android/connect/manager/SystemManager;->version:I

    .line 43
    const-string v0, "system"

    iput-object v0, p0, Lcom/swype/android/connect/manager/SystemManager;->commandFamily:Ljava/lang/String;

    .line 44
    const v0, 0x18dd7f4f

    iput v0, p0, Lcom/swype/android/connect/manager/SystemManager;->alarmUniqueId:I

    .line 45
    return-void
.end method

.method private processPingResponse(Lcom/swype/android/connect/util/Response;)V
    .registers 4
    .parameter "response"

    .prologue
    .line 92
    const-string v0, "Received Ping Response from Server"

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/swype/android/connect/manager/SystemManager;->client:Lcom/swype/android/connect/ConnectClient;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/swype/android/connect/ConnectClient;->postMessage(I)V

    .line 94
    return-void
.end method


# virtual methods
.method public alarmNotification(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3
    .parameter "type"
    .parameter "data"

    .prologue
    .line 70
    return-void
.end method

.method public destroy()V
    .registers 1

    .prologue
    .line 55
    return-void
.end method

.method public onResponse(Lcom/swype/android/connect/util/Response;)V
    .registers 4
    .parameter

    .prologue
    .line 59
    iget-object v0, p1, Lcom/swype/android/connect/util/Response;->command:Ljava/lang/String;

    sget-object v1, Lcom/swype/android/connect/manager/SystemManager$ValidCommands;->ping:Lcom/swype/android/connect/manager/SystemManager$ValidCommands;

    invoke-virtual {v1}, Lcom/swype/android/connect/manager/SystemManager$ValidCommands;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 60
    invoke-direct {p0, p1}, Lcom/swype/android/connect/manager/SystemManager;->processPingResponse(Lcom/swype/android/connect/util/Response;)V

    .line 64
    :goto_11
    return-void

    .line 62
    :cond_12
    const-string v0, "unknown command sent to SystemManager"

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    goto :goto_11
.end method

.method public sendPing()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 79
    const-string v1, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v1, Lcom/swype/android/connect/manager/SystemManager$ValidCommands;->ping:Lcom/swype/android/connect/manager/SystemManager$ValidCommands;

    invoke-virtual {v1}, Lcom/swype/android/connect/manager/SystemManager$ValidCommands;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/swype/android/connect/manager/SystemManager;->createCommand(Ljava/lang/String;Ljava/util/HashMap;)Lcom/swype/android/connect/util/Command;

    move-result-object v0

    .line 81
    iput-boolean v4, v0, Lcom/swype/android/connect/util/Command;->requireDevice:Z

    .line 82
    iput-boolean v4, v0, Lcom/swype/android/connect/util/Command;->requireSession:Z

    .line 84
    invoke-virtual {p0, v0}, Lcom/swype/android/connect/manager/SystemManager;->sendCommand(Lcom/swype/android/connect/util/Command;)V

    .line 85
    return-void
.end method

.method public start()V
    .registers 3

    .prologue
    .line 49
    sget-object v0, Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;->STARTED:Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;

    iput-object v0, p0, Lcom/swype/android/connect/manager/SystemManager;->managerStartState:Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;

    .line 50
    iget-object v0, p0, Lcom/swype/android/connect/manager/SystemManager;->client:Lcom/swype/android/connect/ConnectClient;

    const-class v1, Lcom/swype/android/connect/manager/SystemManager;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/swype/android/connect/ConnectClient;->managerStartComplete(Ljava/lang/String;)V

    .line 51
    return-void
.end method
