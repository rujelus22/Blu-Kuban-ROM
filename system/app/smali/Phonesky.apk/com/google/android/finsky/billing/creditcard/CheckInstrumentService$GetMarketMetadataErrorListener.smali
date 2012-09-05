.class Lcom/google/android/finsky/billing/creditcard/CheckInstrumentService$GetMarketMetadataErrorListener;
.super Ljava/lang/Object;
.source "CheckInstrumentService.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/billing/creditcard/CheckInstrumentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetMarketMetadataErrorListener"
.end annotation


# instance fields
.field private final mDfeApi:Lcom/google/android/finsky/api/DfeApi;

.field private final mResultCodeOut:[I

.field private final mSemaphore:Ljava/util/concurrent/Semaphore;

.field final synthetic this$0:Lcom/google/android/finsky/billing/creditcard/CheckInstrumentService;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/billing/creditcard/CheckInstrumentService;Lcom/google/android/finsky/api/DfeApi;[ILjava/util/concurrent/Semaphore;)V
    .registers 5
    .parameter
    .parameter "dfeApi"
    .parameter "resultCodeOut"
    .parameter "semaphore"

    .prologue
    .line 149
    iput-object p1, p0, Lcom/google/android/finsky/billing/creditcard/CheckInstrumentService$GetMarketMetadataErrorListener;->this$0:Lcom/google/android/finsky/billing/creditcard/CheckInstrumentService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput-object p2, p0, Lcom/google/android/finsky/billing/creditcard/CheckInstrumentService$GetMarketMetadataErrorListener;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    .line 151
    iput-object p3, p0, Lcom/google/android/finsky/billing/creditcard/CheckInstrumentService$GetMarketMetadataErrorListener;->mResultCodeOut:[I

    .line 152
    iput-object p4, p0, Lcom/google/android/finsky/billing/creditcard/CheckInstrumentService$GetMarketMetadataErrorListener;->mSemaphore:Ljava/util/concurrent/Semaphore;

    .line 153
    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 6
    .parameter "error"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/CheckInstrumentService$GetMarketMetadataErrorListener;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v1, p0, Lcom/google/android/finsky/billing/creditcard/CheckInstrumentService$GetMarketMetadataErrorListener;->this$0:Lcom/google/android/finsky/billing/creditcard/CheckInstrumentService;

    #calls: Lcom/google/android/finsky/billing/creditcard/CheckInstrumentService;->convertErrorCode(Lcom/android/volley/VolleyError;)I
    invoke-static {v1, p1}, Lcom/google/android/finsky/billing/creditcard/CheckInstrumentService;->access$300(Lcom/google/android/finsky/billing/creditcard/CheckInstrumentService;Lcom/android/volley/VolleyError;)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/finsky/billing/creditcard/CheckInstrumentService$GetMarketMetadataErrorListener;->mResultCodeOut:[I

    iget-object v3, p0, Lcom/google/android/finsky/billing/creditcard/CheckInstrumentService$GetMarketMetadataErrorListener;->mSemaphore:Ljava/util/concurrent/Semaphore;

    #calls: Lcom/google/android/finsky/billing/creditcard/CheckInstrumentService;->returnResult(Lcom/google/android/finsky/api/DfeApi;I[ILjava/util/concurrent/Semaphore;)V
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/finsky/billing/creditcard/CheckInstrumentService;->access$200(Lcom/google/android/finsky/api/DfeApi;I[ILjava/util/concurrent/Semaphore;)V

    .line 158
    return-void
.end method
