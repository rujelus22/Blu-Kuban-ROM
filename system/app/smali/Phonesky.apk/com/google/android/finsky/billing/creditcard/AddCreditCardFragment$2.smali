.class Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$2;
.super Ljava/lang/Object;
.source "AddCreditCardFragment.java"

# interfaces
.implements Lcom/google/android/finsky/layout/BillingAddress$InitializationStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 181
    iput-object p1, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$2;->this$0:Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitialized()V
    .registers 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$2;->this$0:Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;

    #getter for: Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->mListener:Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$AddCreditCardResultListener;
    invoke-static {v0}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->access$300(Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;)Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$AddCreditCardResultListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 192
    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$2;->this$0:Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;

    #getter for: Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->mListener:Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$AddCreditCardResultListener;
    invoke-static {v0}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->access$300(Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;)Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$AddCreditCardResultListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$AddCreditCardResultListener;->onInitialized()V

    .line 194
    :cond_11
    return-void
.end method

.method public onInitializing()V
    .registers 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$2;->this$0:Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;

    #getter for: Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->mListener:Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$AddCreditCardResultListener;
    invoke-static {v0}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->access$300(Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;)Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$AddCreditCardResultListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 185
    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$2;->this$0:Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;

    #getter for: Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->mListener:Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$AddCreditCardResultListener;
    invoke-static {v0}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->access$300(Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;)Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$AddCreditCardResultListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$AddCreditCardResultListener;->onInitializing()V

    .line 187
    :cond_11
    return-void
.end method