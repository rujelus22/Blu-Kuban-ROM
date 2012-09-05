.class final Lcom/google/android/finsky/utils/PurchaseInitiator$3;
.super Ljava/lang/Object;
.source "PurchaseInitiator.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/utils/PurchaseInitiator;->createFreeItemPurchaseListener(Ljava/lang/String;ILjava/lang/String;)Lcom/android/volley/Response$Listener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$detailsUrl:Ljava/lang/String;

.field final synthetic val$docId:Ljava/lang/String;

.field final synthetic val$offerType:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 210
    iput-object p1, p0, Lcom/google/android/finsky/utils/PurchaseInitiator$3;->val$detailsUrl:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/finsky/utils/PurchaseInitiator$3;->val$docId:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/finsky/utils/PurchaseInitiator$3;->val$offerType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;)V
    .registers 5
    .parameter "response"

    .prologue
    .line 213
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getDfeApi()Lcom/google/android/finsky/api/DfeApi;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/utils/PurchaseInitiator$3;->val$detailsUrl:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/api/DfeApi;->invalidateDetailsCache(Ljava/lang/String;Z)V

    .line 215
    iget-object v0, p0, Lcom/google/android/finsky/utils/PurchaseInitiator$3;->val$docId:Ljava/lang/String;

    iget v1, p0, Lcom/google/android/finsky/utils/PurchaseInitiator$3;->val$offerType:I

    #calls: Lcom/google/android/finsky/utils/PurchaseInitiator;->switchToCompleted(Ljava/lang/String;I)V
    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/PurchaseInitiator;->access$100(Ljava/lang/String;I)V

    .line 216
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 210
    check-cast p1, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/utils/PurchaseInitiator$3;->onResponse(Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;)V

    return-void
.end method
