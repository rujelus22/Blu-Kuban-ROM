.class Lcom/google/android/finsky/services/LicensingService$1$1$1;
.super Ljava/lang/Object;
.source "LicensingService.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/services/LicensingService$1$1;->run()V
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
        "Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/google/android/finsky/services/LicensingService$1$1;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/services/LicensingService$1$1;)V
    .registers 2
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/google/android/finsky/services/LicensingService$1$1$1;->this$2:Lcom/google/android/finsky/services/LicensingService$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;)V
    .registers 6
    .parameter "response"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/android/finsky/services/LicensingService$1$1$1;->this$2:Lcom/google/android/finsky/services/LicensingService$1$1;

    iget-object v0, v0, Lcom/google/android/finsky/services/LicensingService$1$1;->val$listener:Lcom/android/vending/licensing/ILicenseResultListener;

    invoke-virtual {p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;->getResponseCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;->getSignedData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;->getSignature()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/google/android/finsky/services/LicensingService;->notifyListener(Lcom/android/vending/licensing/ILicenseResultListener;ILjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/finsky/services/LicensingService;->access$000(Lcom/android/vending/licensing/ILicenseResultListener;ILjava/lang/String;Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 99
    check-cast p1, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/services/LicensingService$1$1$1;->onResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;)V

    return-void
.end method
