.class Lcom/google/android/finsky/billing/UpdateAddressFlow$1;
.super Ljava/lang/Object;
.source "UpdateAddressFlow.java"

# interfaces
.implements Lcom/android/volley/toolbox/AndroidAuthenticator$AuthTokenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/billing/UpdateAddressFlow;->getCheckoutTokenAndQueueUpdateRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/billing/UpdateAddressFlow;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/billing/UpdateAddressFlow;)V
    .registers 2
    .parameter

    .prologue
    .line 285
    iput-object p1, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow$1;->this$0:Lcom/google/android/finsky/billing/UpdateAddressFlow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthTokenReceived(Ljava/lang/String;)V
    .registers 3
    .parameter "authToken"

    .prologue
    .line 288
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow$1;->this$0:Lcom/google/android/finsky/billing/UpdateAddressFlow;

    #calls: Lcom/google/android/finsky/billing/UpdateAddressFlow;->queueUpdateCreditCardRequest(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/google/android/finsky/billing/UpdateAddressFlow;->access$000(Lcom/google/android/finsky/billing/UpdateAddressFlow;Ljava/lang/String;)V

    .line 289
    return-void
.end method

.method public onErrorReceived(Lcom/android/volley/AuthFailureError;)V
    .registers 5
    .parameter "error"

    .prologue
    .line 293
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow$1;->this$0:Lcom/google/android/finsky/billing/UpdateAddressFlow;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    const v2, 0x7f070077

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/FinskyApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/google/android/finsky/billing/UpdateAddressFlow;->showError(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/google/android/finsky/billing/UpdateAddressFlow;->access$100(Lcom/google/android/finsky/billing/UpdateAddressFlow;Ljava/lang/String;)V

    .line 294
    return-void
.end method
