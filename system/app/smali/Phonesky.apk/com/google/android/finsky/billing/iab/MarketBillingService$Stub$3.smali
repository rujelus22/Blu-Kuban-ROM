.class Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub$3;
.super Ljava/lang/Object;
.source "MarketBillingService.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->restoreTransactions(ILjava/lang/String;J)J
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
        "Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsResponseProto;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$requestId:J


# direct methods
.method constructor <init>(Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;Ljava/lang/String;J)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 566
    iput-object p1, p0, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub$3;->this$1:Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;

    iput-object p2, p0, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub$3;->val$packageName:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub$3;->val$requestId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsResponseProto;)V
    .registers 8
    .parameter "response"

    .prologue
    .line 569
    invoke-virtual {p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsResponseProto;->hasSignedResponse()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 570
    iget-object v0, p0, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub$3;->this$1:Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;

    iget-object v0, v0, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->this$0:Lcom/google/android/finsky/billing/iab/MarketBillingService;

    iget-object v0, v0, Lcom/google/android/finsky/billing/iab/MarketBillingService;->mNotifier:Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingNotifier;

    iget-object v1, p0, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub$3;->val$packageName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsResponseProto;->getSignedResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$SignedDataProto;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$SignedDataProto;->getSignedData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsResponseProto;->getSignedResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$SignedDataProto;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/vending/remoting/protos/VendingProtos$SignedDataProto;->getSignature()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingNotifier;->sendPurchaseStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 574
    :cond_21
    invoke-virtual {p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsResponseProto;->hasPurchaseResult()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 575
    iget-object v0, p0, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub$3;->this$1:Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;

    iget-object v0, v0, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->this$0:Lcom/google/android/finsky/billing/iab/MarketBillingService;

    iget-object v0, v0, Lcom/google/android/finsky/billing/iab/MarketBillingService;->mNotifier:Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingNotifier;

    iget-object v1, p0, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub$3;->val$packageName:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub$3;->val$requestId:J

    iget-object v4, p0, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub$3;->this$1:Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;

    iget-object v4, v4, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->this$0:Lcom/google/android/finsky/billing/iab/MarketBillingService;

    invoke-virtual {p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsResponseProto;->getPurchaseResult()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;

    move-result-object v5

    #calls: Lcom/google/android/finsky/billing/iab/MarketBillingService;->purchaseResultToResponseCode(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;)Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;
    invoke-static {v4, v5}, Lcom/google/android/finsky/billing/iab/MarketBillingService;->access$400(Lcom/google/android/finsky/billing/iab/MarketBillingService;Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;)Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingNotifier;->sendResponseCode(Ljava/lang/String;JLcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;)Z

    .line 578
    :cond_40
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 566
    check-cast p1, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsResponseProto;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub$3;->onResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsResponseProto;)V

    return-void
.end method
