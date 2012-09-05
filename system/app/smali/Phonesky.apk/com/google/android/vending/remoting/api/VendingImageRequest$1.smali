.class Lcom/google/android/vending/remoting/api/VendingImageRequest$1;
.super Ljava/lang/Object;
.source "VendingImageRequest.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/vending/remoting/api/VendingImageRequest;-><init>(Ljava/lang/String;ILcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
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
        "Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageResponseProto;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/android/volley/Response$Listener;


# direct methods
.method constructor <init>(Lcom/android/volley/Response$Listener;)V
    .registers 2
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/google/android/vending/remoting/api/VendingImageRequest$1;->val$listener:Lcom/android/volley/Response$Listener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageResponseProto;)V
    .registers 7
    .parameter "response"

    .prologue
    .line 46
    invoke-virtual {p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageResponseProto;->getImageData()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/micro/ByteStringMicro;->toByteArray()[B

    move-result-object v1

    .line 47
    .local v1, rawImage:[B
    const/4 v2, 0x0

    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 49
    .local v0, b:Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/google/android/vending/remoting/api/VendingImageRequest$1;->val$listener:Lcom/android/volley/Response$Listener;

    invoke-interface {v2, v0}, Lcom/android/volley/Response$Listener;->onResponse(Ljava/lang/Object;)V

    .line 50
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    check-cast p1, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageResponseProto;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/api/VendingImageRequest$1;->onResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageResponseProto;)V

    return-void
.end method
