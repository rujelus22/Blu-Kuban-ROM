.class public Lcom/google/android/finsky/billing/creditcard/CheckInstrumentService;
.super Landroid/app/Service;
.source "CheckInstrumentService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/billing/creditcard/CheckInstrumentService$GetMarketMetadataErrorListener;,
        Lcom/google/android/finsky/billing/creditcard/CheckInstrumentService$GetMarketMetadataListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 143
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/api/DfeApi;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-static {p0, p1}, Lcom/google/android/finsky/billing/creditcard/CheckInstrumentService;->logResult(Lcom/google/android/finsky/api/DfeApi;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/finsky/billing/creditcard/CheckInstrumentService;Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;[ILjava/util/concurrent/Semaphore;)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/finsky/billing/creditcard/CheckInstrumentService;->checkValidInstrument(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;[ILjava/util/concurrent/Semaphore;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/finsky/api/DfeApi;I[ILjava/util/concurrent/Semaphore;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 39
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/finsky/billing/creditcard/CheckInstrumentService;->returnResult(Lcom/google/android/finsky/api/DfeApi;I[ILjava/util/concurrent/Semaphore;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/finsky/billing/creditcard/CheckInstrumentService;Lcom/android/volley/VolleyError;)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/google/android/finsky/billing/creditcard/CheckInstrumentService;->convertErrorCode(Lcom/android/volley/VolleyError;)I

    move-result v0

    return v0
.end method

.method private checkValidInstrument(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;[ILjava/util/concurrent/Semaphore;)V
    .registers 8
    .parameter "dfeApi"
    .parameter "checkoutToken"
    .parameter "resultCodeOut"
    .parameter "semaphore"

    .prologue
    .line 163
    const/4 v0, 0x0

    new-instance v1, Lcom/google/android/finsky/billing/creditcard/CheckInstrumentService$2;

    invoke-direct {v1, p0, p1, p3, p4}, Lcom/google/android/finsky/billing/creditcard/CheckInstrumentService$2;-><init>(Lcom/google/android/finsky/billing/creditcard/CheckInstrumentService;Lcom/google/android/finsky/api/DfeApi;[ILjava/util/concurrent/Semaphore;)V

    new-instance v2, Lcom/google/android/finsky/billing/creditcard/CheckInstrumentService$3;

    invoke-direct {v2, p0, p1, p3, p4}, Lcom/google/android/finsky/billing/creditcard/CheckInstrumentService$3;-><init>(Lcom/google/android/finsky/billing/creditcard/CheckInstrumentService;Lcom/google/android/finsky/api/DfeApi;[ILjava/util/concurrent/Semaphore;)V

    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/google/android/finsky/api/DfeApi;->checkInstrument(Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    .line 189
    return-void
.end method

.method private convertErrorCode(Lcom/android/volley/VolleyError;)I
    .registers 3
    .parameter "error"

    .prologue
    .line 192
    instance-of v0, p1, Lcom/android/volley/ServerError;

    if-eqz v0, :cond_6

    .line 193
    const/4 v0, -0x1

    .line 201
    :goto_5
    return v0

    .line 194
    :cond_6
    instance-of v0, p1, Lcom/android/volley/NetworkError;

    if-eqz v0, :cond_c

    .line 195
    const/4 v0, -0x2

    goto :goto_5

    .line 196
    :cond_c
    instance-of v0, p1, Lcom/android/volley/AuthFailureError;

    if-eqz v0, :cond_12

    .line 197
    const/4 v0, -0x3

    goto :goto_5

    .line 198
    :cond_12
    instance-of v0, p1, Lcom/android/volley/TimeoutError;

    if-eqz v0, :cond_18

    .line 199
    const/4 v0, -0x4

    goto :goto_5

    .line 201
    :cond_18
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private static logResult(Lcom/google/android/finsky/api/DfeApi;I)V
    .registers 7
    .parameter "dfeApi"
    .parameter "result"

    .prologue
    .line 212
    new-instance v0, Lcom/google/android/finsky/analytics/DfeAnalytics;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1, p0}, Lcom/google/android/finsky/analytics/DfeAnalytics;-><init>(Landroid/os/Handler;Lcom/google/android/finsky/api/DfeApi;)V

    .line 213
    .local v0, analytics:Lcom/google/android/finsky/analytics/Analytics;
    const-string v1, "externalPackage"

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkInstrument?result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/finsky/analytics/Analytics;->logPageView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    return-void
.end method

.method private static returnResult(Lcom/google/android/finsky/api/DfeApi;I[ILjava/util/concurrent/Semaphore;)V
    .registers 5
    .parameter "dfeApi"
    .parameter "result"
    .parameter "resultOut"
    .parameter "semaphore"

    .prologue
    .line 206
    invoke-static {p0, p1}, Lcom/google/android/finsky/billing/creditcard/CheckInstrumentService;->logResult(Lcom/google/android/finsky/api/DfeApi;I)V

    .line 207
    const/4 v0, 0x0

    aput p1, p2, v0

    .line 208
    invoke-virtual {p3}, Ljava/util/concurrent/Semaphore;->release()V

    .line 209
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "intent"

    .prologue
    .line 55
    new-instance v0, Lcom/google/android/finsky/billing/creditcard/CheckInstrumentService$1;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/billing/creditcard/CheckInstrumentService$1;-><init>(Lcom/google/android/finsky/billing/creditcard/CheckInstrumentService;)V

    return-object v0
.end method
