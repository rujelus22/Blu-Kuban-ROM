.class Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$1;
.super Ljava/lang/Object;
.source "CreateCreditCardFlow.java"

# interfaces
.implements Lcom/android/volley/toolbox/AndroidAuthenticator$AuthTokenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->getCheckoutTokenAndQueueUpdateRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;)V
    .registers 2
    .parameter

    .prologue
    .line 293
    iput-object p1, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$1;->this$0:Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthTokenReceived(Ljava/lang/String;)V
    .registers 3
    .parameter "authToken"

    .prologue
    .line 296
    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$1;->this$0:Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;

    #calls: Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->queueUpdateCreditCardRequest(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->access$300(Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;Ljava/lang/String;)V

    .line 297
    return-void
.end method

.method public onErrorReceived(Lcom/android/volley/AuthFailureError;)V
    .registers 5
    .parameter "error"

    .prologue
    .line 301
    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$1;->this$0:Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    const v2, 0x7f070067

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/FinskyApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->showError(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->access$200(Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;Ljava/lang/String;)V

    .line 302
    return-void
.end method
