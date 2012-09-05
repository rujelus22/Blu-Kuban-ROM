.class Lcom/google/android/finsky/services/LicensingService$1$1$2;
.super Ljava/lang/Object;
.source "LicensingService.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/services/LicensingService$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/google/android/finsky/services/LicensingService$1$1;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/services/LicensingService$1$1;)V
    .registers 2
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/google/android/finsky/services/LicensingService$1$1$2;->this$2:Lcom/google/android/finsky/services/LicensingService$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 5
    .parameter "error"

    .prologue
    const/4 v2, 0x0

    .line 111
    iget-object v0, p0, Lcom/google/android/finsky/services/LicensingService$1$1$2;->this$2:Lcom/google/android/finsky/services/LicensingService$1$1;

    iget-object v0, v0, Lcom/google/android/finsky/services/LicensingService$1$1;->val$listener:Lcom/android/vending/licensing/ILicenseResultListener;

    const/16 v1, 0x101

    #calls: Lcom/google/android/finsky/services/LicensingService;->notifyListener(Lcom/android/vending/licensing/ILicenseResultListener;ILjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v2}, Lcom/google/android/finsky/services/LicensingService;->access$000(Lcom/android/vending/licensing/ILicenseResultListener;ILjava/lang/String;Ljava/lang/String;)V

    .line 113
    return-void
.end method
