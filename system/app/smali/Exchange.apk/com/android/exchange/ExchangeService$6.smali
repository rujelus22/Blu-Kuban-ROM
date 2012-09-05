.class final Lcom/android/exchange/ExchangeService$6;
.super Ljava/lang/Object;
.source "ExchangeService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exchange/ExchangeService;->alert(Landroid/content/Context;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$exchangeService:Lcom/android/exchange/ExchangeService;

.field final synthetic val$id:J


# direct methods
.method constructor <init>(JLcom/android/exchange/ExchangeService;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 3432
    iput-wide p1, p0, Lcom/android/exchange/ExchangeService$6;->val$id:J

    iput-object p3, p0, Lcom/android/exchange/ExchangeService$6;->val$exchangeService:Lcom/android/exchange/ExchangeService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 3434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Alert! Shutting connectionManager. Watchdog for Out of Band Mailbox: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/exchange/ExchangeService$6;->val$id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->errorlog(Ljava/lang/String;)V

    .line 3435
    iget-object v0, p0, Lcom/android/exchange/ExchangeService$6;->val$exchangeService:Lcom/android/exchange/ExchangeService;

    invoke-static {}, Lcom/android/exchange/ExchangeService;->shutdownConnectionManager()V

    .line 3436
    invoke-static {}, Lcom/android/exchange/ExchangeService;->access$500()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 3437
    :try_start_22
    iget-object v0, p0, Lcom/android/exchange/ExchangeService$6;->val$exchangeService:Lcom/android/exchange/ExchangeService;

    iget-wide v2, p0, Lcom/android/exchange/ExchangeService$6;->val$id:J

    #calls: Lcom/android/exchange/ExchangeService;->releaseMailbox(J)V
    invoke-static {v0, v2, v3}, Lcom/android/exchange/ExchangeService;->access$1800(Lcom/android/exchange/ExchangeService;J)V

    .line 3438
    monitor-exit v1

    .line 3439
    return-void

    .line 3438
    :catchall_2b
    move-exception v0

    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_22 .. :try_end_2d} :catchall_2b

    throw v0
.end method
