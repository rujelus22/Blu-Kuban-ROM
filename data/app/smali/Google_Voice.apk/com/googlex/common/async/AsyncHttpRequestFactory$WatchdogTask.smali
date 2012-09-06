.class Lcom/googlex/common/async/AsyncHttpRequestFactory$WatchdogTask;
.super Lcom/googlex/common/task/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlex/common/async/AsyncHttpRequestFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WatchdogTask"
.end annotation


# instance fields
.field request:Lcom/googlex/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;


# direct methods
.method constructor <init>(Lcom/googlex/common/task/TaskRunner;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/googlex/common/task/TimerTask;-><init>(Lcom/googlex/common/task/TaskRunner;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    sget-object v0, Lcom/googlex/common/async/AsyncHttpRequestFactory;->logger:Lcom/googlex/debug/LogSource;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WatchdogTask.run(): request = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/googlex/common/async/AsyncHttpRequestFactory$WatchdogTask;->request:Lcom/googlex/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/googlex/debug/LogSource;->fine(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/googlex/common/async/AsyncHttpRequestFactory$WatchdogTask;->request:Lcom/googlex/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;

    invoke-virtual {v0}, Lcom/googlex/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->watchdogFired()V

    return-void
.end method

.method public setRequest(Lcom/googlex/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;)V
    .registers 2

    iput-object p1, p0, Lcom/googlex/common/async/AsyncHttpRequestFactory$WatchdogTask;->request:Lcom/googlex/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;

    return-void
.end method
