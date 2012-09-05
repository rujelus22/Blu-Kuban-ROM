.class Lcom/sprint/dsa/dss/DsaSystem$1;
.super Ljava/lang/Thread;
.source "DsaSystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/dsa/dss/DsaSystem;->done()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/dsa/dss/DsaSystem;


# direct methods
.method constructor <init>(Lcom/sprint/dsa/dss/DsaSystem;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/dsa/dss/DsaSystem$1;->this$0:Lcom/sprint/dsa/dss/DsaSystem;

    .line 328
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 330
    iget-object v1, p0, Lcom/sprint/dsa/dss/DsaSystem$1;->this$0:Lcom/sprint/dsa/dss/DsaSystem;

    #getter for: Lcom/sprint/dsa/dss/DsaSystem;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;
    invoke-static {v1}, Lcom/sprint/dsa/dss/DsaSystem;->access$0(Lcom/sprint/dsa/dss/DsaSystem;)Lcom/sprint/dsa/dss/DsaClient;

    move-result-object v1

    iget-object v1, v1, Lcom/sprint/dsa/dss/DsaClient;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/sprint/dsa/dss/DsaSystem$1;->this$0:Lcom/sprint/dsa/dss/DsaSystem;

    #getter for: Lcom/sprint/dsa/dss/DsaSystem;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;
    invoke-static {v1}, Lcom/sprint/dsa/dss/DsaSystem;->access$0(Lcom/sprint/dsa/dss/DsaSystem;)Lcom/sprint/dsa/dss/DsaClient;

    move-result-object v1

    iget-object v1, v1, Lcom/sprint/dsa/dss/DsaClient;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 331
    iget-object v1, p0, Lcom/sprint/dsa/dss/DsaSystem$1;->this$0:Lcom/sprint/dsa/dss/DsaSystem;

    #getter for: Lcom/sprint/dsa/dss/DsaSystem;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;
    invoke-static {v1}, Lcom/sprint/dsa/dss/DsaSystem;->access$0(Lcom/sprint/dsa/dss/DsaSystem;)Lcom/sprint/dsa/dss/DsaClient;

    move-result-object v1

    iget-object v1, v1, Lcom/sprint/dsa/dss/DsaClient;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 333
    :cond_23
    iget-object v1, p0, Lcom/sprint/dsa/dss/DsaSystem$1;->this$0:Lcom/sprint/dsa/dss/DsaSystem;

    #getter for: Lcom/sprint/dsa/dss/DsaSystem;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;
    invoke-static {v1}, Lcom/sprint/dsa/dss/DsaSystem;->access$0(Lcom/sprint/dsa/dss/DsaSystem;)Lcom/sprint/dsa/dss/DsaClient;

    move-result-object v1

    iget-object v1, v1, Lcom/sprint/dsa/dss/DsaClient;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_46

    iget-object v1, p0, Lcom/sprint/dsa/dss/DsaSystem$1;->this$0:Lcom/sprint/dsa/dss/DsaSystem;

    #getter for: Lcom/sprint/dsa/dss/DsaSystem;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;
    invoke-static {v1}, Lcom/sprint/dsa/dss/DsaSystem;->access$0(Lcom/sprint/dsa/dss/DsaSystem;)Lcom/sprint/dsa/dss/DsaClient;

    move-result-object v1

    iget-object v1, v1, Lcom/sprint/dsa/dss/DsaClient;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_46

    .line 334
    iget-object v1, p0, Lcom/sprint/dsa/dss/DsaSystem$1;->this$0:Lcom/sprint/dsa/dss/DsaSystem;

    #getter for: Lcom/sprint/dsa/dss/DsaSystem;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;
    invoke-static {v1}, Lcom/sprint/dsa/dss/DsaSystem;->access$0(Lcom/sprint/dsa/dss/DsaSystem;)Lcom/sprint/dsa/dss/DsaClient;

    move-result-object v1

    iget-object v1, v1, Lcom/sprint/dsa/dss/DsaClient;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 337
    :cond_46
    :try_start_46
    iget-object v1, p0, Lcom/sprint/dsa/dss/DsaSystem$1;->this$0:Lcom/sprint/dsa/dss/DsaSystem;

    sget-object v2, Lcom/sprint/dsa/dss/DsaSystem;->connectionManager:Lcom/sprint/internal/ConnectionManager;

    invoke-virtual {v2}, Lcom/sprint/internal/ConnectionManager;->getDataProfile()I

    move-result v2

    #setter for: Lcom/sprint/dsa/dss/DsaSystem;->network:I
    invoke-static {v1, v2}, Lcom/sprint/dsa/dss/DsaSystem;->access$1(Lcom/sprint/dsa/dss/DsaSystem;I)V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_51} :catch_6c

    .line 343
    :goto_51
    :try_start_51
    iget-object v1, p0, Lcom/sprint/dsa/dss/DsaSystem$1;->this$0:Lcom/sprint/dsa/dss/DsaSystem;

    #getter for: Lcom/sprint/dsa/dss/DsaSystem;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;
    invoke-static {v1}, Lcom/sprint/dsa/dss/DsaSystem;->access$0(Lcom/sprint/dsa/dss/DsaSystem;)Lcom/sprint/dsa/dss/DsaClient;

    move-result-object v1

    iget-boolean v1, v1, Lcom/sprint/dsa/dss/DsaClient;->dsaDebug:Z

    if-eqz v1, :cond_62

    .line 344
    const-string v1, "SprintZone_DSA"

    const-string v2, "release DataProfile()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    :cond_62
    sget-object v1, Lcom/sprint/dsa/dss/DsaSystem;->connectionManager:Lcom/sprint/internal/ConnectionManager;

    if-eqz v1, :cond_6b

    sget-object v1, Lcom/sprint/dsa/dss/DsaSystem;->connectionManager:Lcom/sprint/internal/ConnectionManager;

    invoke-virtual {v1}, Lcom/sprint/internal/ConnectionManager;->release()V
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_6b} :catch_75

    .line 353
    :cond_6b
    :goto_6b
    return-void

    .line 338
    :catch_6c
    move-exception v0

    .line 339
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "SprintZone_DSA"

    const-string v2, "done"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_51

    .line 349
    .end local v0           #e:Ljava/lang/Exception;
    :catch_75
    move-exception v0

    .line 350
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "SprintZone_DSA"

    const-string v2, "done:CM-release"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6b
.end method
