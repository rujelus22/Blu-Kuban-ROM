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
.field DEFAULT_HOLD_DELAY:J

.field autoRecover:Z

.field fatal:Z

.field holdDelay:J

.field holdEndTime:J

.field reason:I

.field final synthetic this$0:Lcom/android/exchange/ExchangeService;


# direct methods
.method constructor <init>(Lcom/android/exchange/ExchangeService;IIZ)V
    .registers 9
    .parameter
    .parameter "_reason"
    .parameter "_holdDelay"
    .parameter "_fatal"

    .prologue
    const/4 v0, 0x0

    .line 2309
    iput-object p1, p0, Lcom/android/exchange/ExchangeService$SyncError;->this$0:Lcom/android/exchange/ExchangeService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2286
    iput-boolean v0, p0, Lcom/android/exchange/ExchangeService$SyncError;->fatal:Z

    .line 2288
    iput-boolean v0, p0, Lcom/android/exchange/ExchangeService$SyncError;->autoRecover:Z

    .line 2290
    const-wide/16 v0, 0x3a98

    iput-wide v0, p0, Lcom/android/exchange/ExchangeService$SyncError;->DEFAULT_HOLD_DELAY:J

    .line 2292
    iget-wide v0, p0, Lcom/android/exchange/ExchangeService$SyncError;->DEFAULT_HOLD_DELAY:J

    iput-wide v0, p0, Lcom/android/exchange/ExchangeService$SyncError;->holdDelay:J

    .line 2294
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/exchange/ExchangeService$SyncError;->holdDelay:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/exchange/ExchangeService$SyncError;->holdEndTime:J

    .line 2310
    iput p2, p0, Lcom/android/exchange/ExchangeService$SyncError;->reason:I

    .line 2311
    iput-boolean p4, p0, Lcom/android/exchange/ExchangeService$SyncError;->fatal:Z

    .line 2312
    int-to-long v0, p3

    iput-wide v0, p0, Lcom/android/exchange/ExchangeService$SyncError;->holdDelay:J

    .line 2313
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/exchange/ExchangeService$SyncError;->holdDelay:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/exchange/ExchangeService$SyncError;->holdEndTime:J

    .line 2314
    return-void
.end method

.method constructor <init>(Lcom/android/exchange/ExchangeService;IZ)V
    .registers 8
    .parameter
    .parameter "_reason"
    .parameter "_fatal"

    .prologue
    const/4 v0, 0x0

    .line 2296
    iput-object p1, p0, Lcom/android/exchange/ExchangeService$SyncError;->this$0:Lcom/android/exchange/ExchangeService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2286
    iput-boolean v0, p0, Lcom/android/exchange/ExchangeService$SyncError;->fatal:Z

    .line 2288
    iput-boolean v0, p0, Lcom/android/exchange/ExchangeService$SyncError;->autoRecover:Z

    .line 2290
    const-wide/16 v0, 0x3a98

    iput-wide v0, p0, Lcom/android/exchange/ExchangeService$SyncError;->DEFAULT_HOLD_DELAY:J

    .line 2292
    iget-wide v0, p0, Lcom/android/exchange/ExchangeService$SyncError;->DEFAULT_HOLD_DELAY:J

    iput-wide v0, p0, Lcom/android/exchange/ExchangeService$SyncError;->holdDelay:J

    .line 2294
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/exchange/ExchangeService$SyncError;->holdDelay:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/exchange/ExchangeService$SyncError;->holdEndTime:J

    .line 2297
    iput p2, p0, Lcom/android/exchange/ExchangeService$SyncError;->reason:I

    .line 2298
    iput-boolean p3, p0, Lcom/android/exchange/ExchangeService$SyncError;->fatal:Z

    .line 2299
    return-void
.end method

.method constructor <init>(Lcom/android/exchange/ExchangeService;IZZ)V
    .registers 9
    .parameter
    .parameter "_reason"
    .parameter "_fatal"
    .parameter "_autoRecover"

    .prologue
    const/4 v0, 0x0

    .line 2301
    iput-object p1, p0, Lcom/android/exchange/ExchangeService$SyncError;->this$0:Lcom/android/exchange/ExchangeService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2286
    iput-boolean v0, p0, Lcom/android/exchange/ExchangeService$SyncError;->fatal:Z

    .line 2288
    iput-boolean v0, p0, Lcom/android/exchange/ExchangeService$SyncError;->autoRecover:Z

    .line 2290
    const-wide/16 v0, 0x3a98

    iput-wide v0, p0, Lcom/android/exchange/ExchangeService$SyncError;->DEFAULT_HOLD_DELAY:J

    .line 2292
    iget-wide v0, p0, Lcom/android/exchange/ExchangeService$SyncError;->DEFAULT_HOLD_DELAY:J

    iput-wide v0, p0, Lcom/android/exchange/ExchangeService$SyncError;->holdDelay:J

    .line 2294
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/exchange/ExchangeService$SyncError;->holdDelay:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/exchange/ExchangeService$SyncError;->holdEndTime:J

    .line 2302
    iput p2, p0, Lcom/android/exchange/ExchangeService$SyncError;->reason:I

    .line 2303
    iput-boolean p3, p0, Lcom/android/exchange/ExchangeService$SyncError;->fatal:Z

    .line 2304
    iput-boolean p4, p0, Lcom/android/exchange/ExchangeService$SyncError;->autoRecover:Z

    .line 2305
    const-wide/32 v0, 0xa4cb80

    iput-wide v0, p0, Lcom/android/exchange/ExchangeService$SyncError;->holdDelay:J

    .line 2306
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/exchange/ExchangeService$SyncError;->holdDelay:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/exchange/ExchangeService$SyncError;->holdEndTime:J

    .line 2307
    return-void
.end method


# virtual methods
.method escalate()V
    .registers 5

    .prologue
    .line 2320
    iget-boolean v0, p0, Lcom/android/exchange/ExchangeService$SyncError;->autoRecover:Z

    if-nez v0, :cond_d

    iget-wide v0, p0, Lcom/android/exchange/ExchangeService$SyncError;->holdDelay:J

    const-wide/32 v2, 0x3a980

    cmp-long v0, v0, v2

    if-gez v0, :cond_14

    .line 2321
    :cond_d
    iget-wide v0, p0, Lcom/android/exchange/ExchangeService$SyncError;->holdDelay:J

    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/exchange/ExchangeService$SyncError;->holdDelay:J

    .line 2323
    :cond_14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/exchange/ExchangeService$SyncError;->holdDelay:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/exchange/ExchangeService$SyncError;->holdEndTime:J

    .line 2324
    return-void
.end method
