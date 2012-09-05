.class Lcom/google/android/finsky/billing/creditcard/CheckInstrumentService$GetMarketMetadataListener;
.super Ljava/lang/Object;
.source "CheckInstrumentService.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/billing/creditcard/CheckInstrumentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetMarketMetadataListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCheckoutToken:Ljava/lang/String;

.field private final mDfeApi:Lcom/google/android/finsky/api/DfeApi;

.field private final mResultCodeOut:[I

.field private final mSemaphore:Ljava/util/concurrent/Semaphore;

.field final synthetic this$0:Lcom/google/android/finsky/billing/creditcard/CheckInstrumentService;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/billing/creditcard/CheckInstrumentService;Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;[ILjava/util/concurrent/Semaphore;)V
    .registers 6
    .parameter
    .parameter "dfeApi"
    .parameter "checkoutToken"
    .parameter "resultCodeOut"
    .parameter "semaphore"

    .prologue
    .line 123
    iput-object p1, p0, Lcom/google/android/finsky/billing/creditcard/CheckInstrumentService$GetMarketMetadataListener;->this$0:Lcom/google/android/finsky/billing/creditcard/CheckInstrumentService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput-object p2, p0, Lcom/google/android/finsky/billing/creditcard/CheckInstrumentService$GetMarketMetadataListener;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    .line 125
    iput-object p3, p0, Lcom/google/android/finsky/billing/creditcard/CheckInstrumentService$GetMarketMetadataListener;->mCheckoutToken:Ljava/lang/String;

    .line 126
    iput-object p4, p0, Lcom/google/android/finsky/billing/creditcard/CheckInstrumentService$GetMarketMetadataListener;->mResultCodeOut:[I

    .line 127
    iput-object p5, p0, Lcom/google/android/finsky/billing/creditcard/CheckInstrumentService$GetMarketMetadataListener;->mSemaphore:Ljava/util/concurrent/Semaphore;

    .line 128
    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;)V
    .registers 7
    .parameter "response"

    .prologue
    const/4 v1, 0x0

    .line 132
    invoke-virtual {p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->getInAppBillingEnabled()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->getPaidAppsEnabled()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 134
    :cond_d
    const-string v0, "Paid apps enabled."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/CheckInstrumentService$GetMarketMetadataListener;->this$0:Lcom/google/android/finsky/billing/creditcard/CheckInstrumentService;

    iget-object v1, p0, Lcom/google/android/finsky/billing/creditcard/CheckInstrumentService$GetMarketMetadataListener;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v2, p0, Lcom/google/android/finsky/billing/creditcard/CheckInstrumentService$GetMarketMetadataListener;->mCheckoutToken:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/finsky/billing/creditcard/CheckInstrumentService$GetMarketMetadataListener;->mResultCodeOut:[I

    iget-object v4, p0, Lcom/google/android/finsky/billing/creditcard/CheckInstrumentService$GetMarketMetadataListener;->mSemaphore:Ljava/util/concurrent/Semaphore;

    #calls: Lcom/google/android/finsky/billing/creditcard/CheckInstrumentService;->checkValidInstrument(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;[ILjava/util/concurrent/Semaphore;)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/finsky/billing/creditcard/CheckInstrumentService;->access$100(Lcom/google/android/finsky/billing/creditcard/CheckInstrumentService;Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;[ILjava/util/concurrent/Semaphore;)V

    .line 140
    :goto_21
    return-void

    .line 137
    :cond_22
    const-string v0, "Paid apps disabled."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/CheckInstrumentService$GetMarketMetadataListener;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/finsky/billing/creditcard/CheckInstrumentService$GetMarketMetadataListener;->mResultCodeOut:[I

    iget-object v3, p0, Lcom/google/android/finsky/billing/creditcard/CheckInstrumentService$GetMarketMetadataListener;->mSemaphore:Ljava/util/concurrent/Semaphore;

    #calls: Lcom/google/android/finsky/billing/creditcard/CheckInstrumentService;->returnResult(Lcom/google/android/finsky/api/DfeApi;I[ILjava/util/concurrent/Semaphore;)V
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/finsky/billing/creditcard/CheckInstrumentService;->access$200(Lcom/google/android/finsky/api/DfeApi;I[ILjava/util/concurrent/Semaphore;)V

    goto :goto_21
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 115
    check-cast p1, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/billing/creditcard/CheckInstrumentService$GetMarketMetadataListener;->onResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;)V

    return-void
.end method
