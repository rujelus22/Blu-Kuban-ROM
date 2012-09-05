.class public Lcom/google/android/vending/remoting/api/VendingImageRequest;
.super Lcom/google/android/vending/remoting/api/VendingRequest;
.source "VendingImageRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/vending/remoting/api/VendingRequest",
        "<",
        "Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;",
        "Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageResponseProto;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 40
    const-string v1, "https://android.clients.google.com/vending/api/ApiRequest"

    const-class v2, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;

    new-instance v0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;

    invoke-direct {v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->setAssetId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->setImageUsage(I)Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->setProductType(I)Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;

    move-result-object v3

    const-class v4, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageResponseProto;

    new-instance v5, Lcom/google/android/vending/remoting/api/VendingImageRequest$1;

    invoke-direct {v5, p3}, Lcom/google/android/vending/remoting/api/VendingImageRequest$1;-><init>(Lcom/android/volley/Response$Listener;)V

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getVendingApi()Lcom/google/android/vending/remoting/api/VendingApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/vending/remoting/api/VendingApi;->getApiContext()Lcom/google/android/vending/remoting/api/VendingApiContext;

    move-result-object v6

    move-object v0, p0

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/google/android/vending/remoting/api/VendingRequest;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/google/protobuf/micro/MessageMicro;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/google/android/vending/remoting/api/VendingApiContext;Lcom/android/volley/Response$ErrorListener;)V

    .line 52
    new-instance v0, Lcom/android/volley/DefaultRetryPolicy;

    const/16 v1, 0x3e8

    const/4 v2, 0x2

    const/high16 v3, 0x3f80

    invoke-direct {v0, v1, v2, v3}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {p0, v0}, Lcom/google/android/vending/remoting/api/VendingImageRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)V

    .line 54
    return-void
.end method


# virtual methods
.method public getPriority()Lcom/android/volley/Request$Priority;
    .registers 2

    .prologue
    .line 58
    sget-object v0, Lcom/android/volley/Request$Priority;->LOW:Lcom/android/volley/Request$Priority;

    return-object v0
.end method
