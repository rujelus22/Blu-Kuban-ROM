.class public abstract Lcom/google/mobile/googlenav/datarequest/BaseDataRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/mobile/googlenav/datarequest/DataRequest;


# instance fields
.field private firstRetryTime:Ljava/lang/Long;

.field private volatile isCancelled:Z

.field private retryTimeOut:Ljava/lang/Long;

.field private serverFailureCount:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/google/mobile/googlenav/datarequest/BaseDataRequest;->isCancelled:Z

    iput v0, p0, Lcom/google/mobile/googlenav/datarequest/BaseDataRequest;->serverFailureCount:I

    return-void
.end method


# virtual methods
.method public isCancelled()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/mobile/googlenav/datarequest/BaseDataRequest;->isCancelled:Z

    return v0
.end method

.method public isForeground()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isImmediate()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isSubmission()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public onServerFailure()V
    .registers 2

    iget v0, p0, Lcom/google/mobile/googlenav/datarequest/BaseDataRequest;->serverFailureCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/mobile/googlenav/datarequest/BaseDataRequest;->serverFailureCount:I

    return-void
.end method

.method public retryOnFailure()Z
    .registers 6

    const/4 v4, 0x0

    iget v0, p0, Lcom/google/mobile/googlenav/datarequest/BaseDataRequest;->serverFailureCount:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_8

    move v0, v4

    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, Lcom/google/mobile/googlenav/datarequest/BaseDataRequest;->retryTimeOut:Ljava/lang/Long;

    if-eqz v0, :cond_23

    invoke-static {}, Lcom/google/mobile/googlenav/common/Config;->getInstance()Lcom/google/mobile/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/mobile/googlenav/common/Config;->getClock()Lcom/google/mobile/googlenav/common/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/mobile/googlenav/common/Clock;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/mobile/googlenav/datarequest/BaseDataRequest;->firstRetryTime:Ljava/lang/Long;

    if-nez v2, :cond_25

    new-instance v2, Ljava/lang/Long;

    invoke-direct {v2, v0, v1}, Ljava/lang/Long;-><init>(J)V

    iput-object v2, p0, Lcom/google/mobile/googlenav/datarequest/BaseDataRequest;->firstRetryTime:Ljava/lang/Long;

    :cond_23
    const/4 v0, 0x1

    goto :goto_7

    :cond_25
    iget-object v2, p0, Lcom/google/mobile/googlenav/datarequest/BaseDataRequest;->firstRetryTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/mobile/googlenav/datarequest/BaseDataRequest;->retryTimeOut:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_23

    move v0, v4

    goto :goto_7
.end method
