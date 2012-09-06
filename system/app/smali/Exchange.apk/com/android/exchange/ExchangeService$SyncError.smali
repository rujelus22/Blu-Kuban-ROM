.class Lcom/android/exchange/ExchangeService$SyncError;
.super Ljava/lang/Object;
.source "ExchangeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/ExchangeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SyncError"
.end annotation


# instance fields
.field fatal:Z

.field holdDelay:J

.field holdEndTime:J

.field reason:I

.field final synthetic this$0:Lcom/android/exchange/ExchangeService;


# direct methods
.method constructor <init>(Lcom/android/exchange/ExchangeService;IZ)V
    .registers 8
    .parameter
    .parameter "_reason"
    .parameter "_fatal"

    .prologue
    .line 1064
    iput-object p1, p0, Lcom/android/exchange/ExchangeService$SyncError;->this$0:Lcom/android/exchange/ExchangeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1060
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exchange/ExchangeService$SyncError;->fatal:Z

    .line 1061
    const-wide/16 v0, 0x3a98

    iput-wide v0, p0, Lcom/android/exchange/ExchangeService$SyncError;->holdDelay:J

    .line 1062
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/exchange/ExchangeService$SyncError;->holdDelay:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/exchange/ExchangeService$SyncError;->holdEndTime:J

    .line 1065
    iput p2, p0, Lcom/android/exchange/ExchangeService$SyncError;->reason:I

    .line 1066
    iput-boolean p3, p0, Lcom/android/exchange/ExchangeService$SyncError;->fatal:Z

    .line 1067
    return-void
.end method


# virtual methods
.method escalate()V
    .registers 5

    .prologue
    .line 1073
    iget-wide v0, p0, Lcom/android/exchange/ExchangeService$SyncError;->holdDelay:J

    const-wide/32 v2, 0x3a980

    cmp-long v0, v0, v2

    if-gez v0, :cond_10

    .line 1074
    iget-wide v0, p0, Lcom/android/exchange/ExchangeService$SyncError;->holdDelay:J

    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/exchange/ExchangeService$SyncError;->holdDelay:J

    .line 1076
    :cond_10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/exchange/ExchangeService$SyncError;->holdDelay:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/exchange/ExchangeService$SyncError;->holdEndTime:J

    .line 1077
    return-void
.end method
