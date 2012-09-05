.class Lcom/sec/print/mobileprint/df/DiscoveryResultsDispatcher$1;
.super Ljava/lang/Object;
.source "DiscoveryResultsDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/print/mobileprint/df/DiscoveryResultsDispatcher;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/print/mobileprint/df/DiscoveryResultsDispatcher;

.field final synthetic val$newDevice:Lcom/sec/print/mobileprint/df/DiscoveryResult;

.field final synthetic val$semaphore:Ljava/util/concurrent/Semaphore;


# direct methods
.method constructor <init>(Lcom/sec/print/mobileprint/df/DiscoveryResultsDispatcher;Lcom/sec/print/mobileprint/df/DiscoveryResult;Ljava/util/concurrent/Semaphore;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/sec/print/mobileprint/df/DiscoveryResultsDispatcher$1;->this$0:Lcom/sec/print/mobileprint/df/DiscoveryResultsDispatcher;

    iput-object p2, p0, Lcom/sec/print/mobileprint/df/DiscoveryResultsDispatcher$1;->val$newDevice:Lcom/sec/print/mobileprint/df/DiscoveryResult;

    iput-object p3, p0, Lcom/sec/print/mobileprint/df/DiscoveryResultsDispatcher$1;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 33
    iget-object v3, p0, Lcom/sec/print/mobileprint/df/DiscoveryResultsDispatcher$1;->this$0:Lcom/sec/print/mobileprint/df/DiscoveryResultsDispatcher;

    #getter for: Lcom/sec/print/mobileprint/df/DiscoveryResultsDispatcher;->listeners:Ljava/util/List;
    invoke-static {v3}, Lcom/sec/print/mobileprint/df/DiscoveryResultsDispatcher;->access$000(Lcom/sec/print/mobileprint/df/DiscoveryResultsDispatcher;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_43

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/print/mobileprint/df/DiscoveryListener;

    .line 35
    .local v2, listener:Lcom/sec/print/mobileprint/df/DiscoveryListener;
    :try_start_16
    iget-object v3, p0, Lcom/sec/print/mobileprint/df/DiscoveryResultsDispatcher$1;->val$newDevice:Lcom/sec/print/mobileprint/df/DiscoveryResult;

    invoke-virtual {v3}, Lcom/sec/print/mobileprint/df/DiscoveryResult;->getException()Ljava/lang/Throwable;

    move-result-object v3

    if-nez v3, :cond_33

    .line 36
    iget-object v3, p0, Lcom/sec/print/mobileprint/df/DiscoveryResultsDispatcher$1;->val$newDevice:Lcom/sec/print/mobileprint/df/DiscoveryResult;

    invoke-virtual {v3}, Lcom/sec/print/mobileprint/df/DiscoveryResult;->getHost()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/print/mobileprint/df/DiscoveryResultsDispatcher$1;->val$newDevice:Lcom/sec/print/mobileprint/df/DiscoveryResult;

    invoke-virtual {v4}, Lcom/sec/print/mobileprint/df/DiscoveryResult;->getVersion()I

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/sec/print/mobileprint/df/DiscoveryListener;->newDeviceFound(Ljava/lang/String;I)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_2d} :catch_2e

    goto :goto_a

    .line 40
    :catch_2e
    move-exception v0

    .line 41
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a

    .line 38
    .end local v0           #e:Ljava/lang/Exception;
    :cond_33
    :try_start_33
    iget-object v3, p0, Lcom/sec/print/mobileprint/df/DiscoveryResultsDispatcher$1;->val$newDevice:Lcom/sec/print/mobileprint/df/DiscoveryResult;

    invoke-virtual {v3}, Lcom/sec/print/mobileprint/df/DiscoveryResult;->getHost()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/print/mobileprint/df/DiscoveryResultsDispatcher$1;->val$newDevice:Lcom/sec/print/mobileprint/df/DiscoveryResult;

    invoke-virtual {v4}, Lcom/sec/print/mobileprint/df/DiscoveryResult;->getException()Ljava/lang/Throwable;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/sec/print/mobileprint/df/DiscoveryListener;->newDeviceFoundException(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_42} :catch_2e

    goto :goto_a

    .line 44
    .end local v2           #listener:Lcom/sec/print/mobileprint/df/DiscoveryListener;
    :cond_43
    iget-object v3, p0, Lcom/sec/print/mobileprint/df/DiscoveryResultsDispatcher$1;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->release()V

    .line 45
    return-void
.end method
