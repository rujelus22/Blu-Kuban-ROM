.class Lcom/google/android/apps/plus/network/HttpTransactionMetrics$HttpTransactionMetricsHolder;
.super Ljava/lang/Object;
.source "HttpTransactionMetrics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/network/HttpTransactionMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HttpTransactionMetricsHolder"
.end annotation


# instance fields
.field private duration:J

.field private name:Ljava/lang/String;

.field private processingDuration:J

.field private receivedBytes:J

.field private requestCount:J

.field private sentBytes:J


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/plus/network/HttpTransactionMetrics$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/google/android/apps/plus/network/HttpTransactionMetrics$HttpTransactionMetricsHolder;-><init>()V

    return-void
.end method

.method static synthetic access$102(Lcom/google/android/apps/plus/network/HttpTransactionMetrics$HttpTransactionMetricsHolder;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput-object p1, p0, Lcom/google/android/apps/plus/network/HttpTransactionMetrics$HttpTransactionMetricsHolder;->name:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$214(Lcom/google/android/apps/plus/network/HttpTransactionMetrics$HttpTransactionMetricsHolder;J)J
    .registers 5
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iget-wide v0, p0, Lcom/google/android/apps/plus/network/HttpTransactionMetrics$HttpTransactionMetricsHolder;->processingDuration:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/android/apps/plus/network/HttpTransactionMetrics$HttpTransactionMetricsHolder;->processingDuration:J

    return-wide v0
.end method

.method static synthetic access$314(Lcom/google/android/apps/plus/network/HttpTransactionMetrics$HttpTransactionMetricsHolder;J)J
    .registers 5
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iget-wide v0, p0, Lcom/google/android/apps/plus/network/HttpTransactionMetrics$HttpTransactionMetricsHolder;->duration:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/android/apps/plus/network/HttpTransactionMetrics$HttpTransactionMetricsHolder;->duration:J

    return-wide v0
.end method

.method static synthetic access$414(Lcom/google/android/apps/plus/network/HttpTransactionMetrics$HttpTransactionMetricsHolder;J)J
    .registers 5
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iget-wide v0, p0, Lcom/google/android/apps/plus/network/HttpTransactionMetrics$HttpTransactionMetricsHolder;->requestCount:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/android/apps/plus/network/HttpTransactionMetrics$HttpTransactionMetricsHolder;->requestCount:J

    return-wide v0
.end method

.method static synthetic access$514(Lcom/google/android/apps/plus/network/HttpTransactionMetrics$HttpTransactionMetricsHolder;J)J
    .registers 5
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iget-wide v0, p0, Lcom/google/android/apps/plus/network/HttpTransactionMetrics$HttpTransactionMetricsHolder;->receivedBytes:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/android/apps/plus/network/HttpTransactionMetrics$HttpTransactionMetricsHolder;->receivedBytes:J

    return-wide v0
.end method

.method static synthetic access$614(Lcom/google/android/apps/plus/network/HttpTransactionMetrics$HttpTransactionMetricsHolder;J)J
    .registers 5
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iget-wide v0, p0, Lcom/google/android/apps/plus/network/HttpTransactionMetrics$HttpTransactionMetricsHolder;->sentBytes:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/android/apps/plus/network/HttpTransactionMetrics$HttpTransactionMetricsHolder;->sentBytes:J

    return-wide v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/network/HttpTransactionMetrics$HttpTransactionMetricsHolder;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], duration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/apps/plus/network/HttpTransactionMetrics$HttpTransactionMetricsHolder;->duration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms, network: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/apps/plus/network/HttpTransactionMetrics$HttpTransactionMetricsHolder;->duration:J

    iget-wide v3, p0, Lcom/google/android/apps/plus/network/HttpTransactionMetrics$HttpTransactionMetricsHolder;->processingDuration:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms, processing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/apps/plus/network/HttpTransactionMetrics$HttpTransactionMetricsHolder;->processingDuration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms, requests: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/apps/plus/network/HttpTransactionMetrics$HttpTransactionMetricsHolder;->requestCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/apps/plus/network/HttpTransactionMetrics$HttpTransactionMetricsHolder;->sentBytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", received: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/apps/plus/network/HttpTransactionMetrics$HttpTransactionMetricsHolder;->receivedBytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
