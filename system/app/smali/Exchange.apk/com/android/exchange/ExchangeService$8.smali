.class Lcom/android/exchange/ExchangeService$8;
.super Ljava/lang/Object;
.source "ExchangeService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exchange/ExchangeService;->onDestroy()V
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
    .line 1832
    iput-object p1, p0, Lcom/android/exchange/ExchangeService$8;->this$0:Lcom/android/exchange/ExchangeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1836
    sget-object v0, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/android/exchange/ExchangeService;->access$1500()Ljava/lang/Thread;

    move-result-object v0

    if-nez v0, :cond_b

    .line 1844
    :cond_a
    :goto_a
    return-void

    .line 1837
    :cond_b
    invoke-static {}, Lcom/android/exchange/ExchangeService;->access$800()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1839
    :try_start_10
    invoke-static {}, Lcom/android/exchange/ExchangeService;->access$1500()Ljava/lang/Thread;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 1840
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->access$1302(Z)Z

    .line 1841
    invoke-static {}, Lcom/android/exchange/ExchangeService;->access$1500()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 1843
    :cond_21
    monitor-exit v1

    goto :goto_a

    :catchall_23
    move-exception v0

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_10 .. :try_end_25} :catchall_23

    throw v0
.end method
