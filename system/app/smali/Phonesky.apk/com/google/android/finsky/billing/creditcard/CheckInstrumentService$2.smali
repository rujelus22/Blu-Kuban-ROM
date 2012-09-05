.class Lcom/google/android/finsky/billing/creditcard/CheckInstrumentService$2;
.super Ljava/lang/Object;
.source "CheckInstrumentService.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/billing/creditcard/CheckInstrumentService;->checkValidInstrument(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;[ILjava/util/concurrent/Semaphore;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lcom/google/android/finsky/remoting/protos/BuyInstruments$CheckInstrumentResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/billing/creditcard/CheckInstrumentService;

.field final synthetic val$dfeApi:Lcom/google/android/finsky/api/DfeApi;

.field final synthetic val$resultCodeOut:[I

.field final synthetic val$semaphore:Ljava/util/concurrent/Semaphore;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/billing/creditcard/CheckInstrumentService;Lcom/google/android/finsky/api/DfeApi;[ILjava/util/concurrent/Semaphore;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 165
    iput-object p1, p0, Lcom/google/android/finsky/billing/creditcard/CheckInstrumentService$2;->this$0:Lcom/google/android/finsky/billing/creditcard/CheckInstrumentService;

    iput-object p2, p0, Lcom/google/android/finsky/billing/creditcard/CheckInstrumentService$2;->val$dfeApi:Lcom/google/android/finsky/api/DfeApi;

    iput-object p3, p0, Lcom/google/android/finsky/billing/creditcard/CheckInstrumentService$2;->val$resultCodeOut:[I

    iput-object p4, p0, Lcom/google/android/finsky/billing/creditcard/CheckInstrumentService$2;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/finsky/remoting/protos/BuyInstruments$CheckInstrumentResponse;)V
    .registers 7
    .parameter "response"

    .prologue
    .line 169
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$CheckInstrumentResponse;->getCheckoutTokenRequired()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 172
    const-string v1, "Received checkout_token_required."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    iget-object v1, p0, Lcom/google/android/finsky/billing/creditcard/CheckInstrumentService$2;->val$dfeApi:Lcom/google/android/finsky/api/DfeApi;

    const/4 v2, -0x3

    iget-object v3, p0, Lcom/google/android/finsky/billing/creditcard/CheckInstrumentService$2;->val$resultCodeOut:[I

    iget-object v4, p0, Lcom/google/android/finsky/billing/creditcard/CheckInstrumentService$2;->val$semaphore:Ljava/util/concurrent/Semaphore;

    #calls: Lcom/google/android/finsky/billing/creditcard/CheckInstrumentService;->returnResult(Lcom/google/android/finsky/api/DfeApi;I[ILjava/util/concurrent/Semaphore;)V
    invoke-static {v1, v2, v3, v4}, Lcom/google/android/finsky/billing/creditcard/CheckInstrumentService;->access$200(Lcom/google/android/finsky/api/DfeApi;I[ILjava/util/concurrent/Semaphore;)V

    .line 180
    :goto_18
    return-void

    .line 175
    :cond_19
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$CheckInstrumentResponse;->getUserHasValidInstrument()Z

    move-result v1

    if-eqz v1, :cond_2a

    const/4 v0, 0x1

    .line 178
    .local v0, result:I
    :goto_20
    iget-object v1, p0, Lcom/google/android/finsky/billing/creditcard/CheckInstrumentService$2;->val$dfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v2, p0, Lcom/google/android/finsky/billing/creditcard/CheckInstrumentService$2;->val$resultCodeOut:[I

    iget-object v3, p0, Lcom/google/android/finsky/billing/creditcard/CheckInstrumentService$2;->val$semaphore:Ljava/util/concurrent/Semaphore;

    #calls: Lcom/google/android/finsky/billing/creditcard/CheckInstrumentService;->returnResult(Lcom/google/android/finsky/api/DfeApi;I[ILjava/util/concurrent/Semaphore;)V
    invoke-static {v1, v0, v2, v3}, Lcom/google/android/finsky/billing/creditcard/CheckInstrumentService;->access$200(Lcom/google/android/finsky/api/DfeApi;I[ILjava/util/concurrent/Semaphore;)V

    goto :goto_18

    .line 175
    .end local v0           #result:I
    :cond_2a
    const/4 v0, 0x2

    goto :goto_20
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 165
    check-cast p1, Lcom/google/android/finsky/remoting/protos/BuyInstruments$CheckInstrumentResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/billing/creditcard/CheckInstrumentService$2;->onResponse(Lcom/google/android/finsky/remoting/protos/BuyInstruments$CheckInstrumentResponse;)V

    return-void
.end method
