.class Lcom/google/android/apps/common/offerslib/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/apps/common/offerslib/i;


# direct methods
.method constructor <init>(Lcom/google/android/apps/common/offerslib/i;)V
    .registers 2
    .parameter

    .prologue
    .line 694
    iput-object p1, p0, Lcom/google/android/apps/common/offerslib/p;->a:Lcom/google/android/apps/common/offerslib/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 697
    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/p;->a:Lcom/google/android/apps/common/offerslib/i;

    const-string v1, "finishedLoading"

    #calls: Lcom/google/android/apps/common/offerslib/i;->verifyFragment(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/google/android/apps/common/offerslib/i;->access$300(Lcom/google/android/apps/common/offerslib/i;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 698
    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/p;->a:Lcom/google/android/apps/common/offerslib/i;

    iget-object v0, v0, Lcom/google/android/apps/common/offerslib/i;->a:Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;

    invoke-static {v0}, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->e(Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;)Lcom/google/commerce/wireless/topiary/HybridWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/commerce/wireless/topiary/HybridWebView;->clearView()V

    .line 700
    :cond_15
    return-void
.end method
