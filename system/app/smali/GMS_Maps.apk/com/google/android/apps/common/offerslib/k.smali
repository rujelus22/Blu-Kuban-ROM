.class Lcom/google/android/apps/common/offerslib/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/google/android/apps/common/offerslib/i;


# direct methods
.method constructor <init>(Lcom/google/android/apps/common/offerslib/i;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 561
    iput-object p1, p0, Lcom/google/android/apps/common/offerslib/k;->b:Lcom/google/android/apps/common/offerslib/i;

    iput-object p2, p0, Lcom/google/android/apps/common/offerslib/k;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 564
    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/k;->b:Lcom/google/android/apps/common/offerslib/i;

    const-string v1, "purchaseOffer"

    #calls: Lcom/google/android/apps/common/offerslib/i;->verifyFragment(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/google/android/apps/common/offerslib/i;->access$300(Lcom/google/android/apps/common/offerslib/i;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 565
    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/k;->b:Lcom/google/android/apps/common/offerslib/i;

    iget-object v0, v0, Lcom/google/android/apps/common/offerslib/i;->a:Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;

    iget-object v1, p0, Lcom/google/android/apps/common/offerslib/k;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->a(Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;Ljava/lang/String;)V

    .line 567
    :cond_13
    return-void
.end method
