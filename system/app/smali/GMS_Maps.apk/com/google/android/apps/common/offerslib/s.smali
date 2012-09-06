.class Lcom/google/android/apps/common/offerslib/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/apps/common/offerslib/r;


# direct methods
.method constructor <init>(Lcom/google/android/apps/common/offerslib/r;)V
    .registers 2
    .parameter

    .prologue
    .line 819
    iput-object p1, p0, Lcom/google/android/apps/common/offerslib/s;->a:Lcom/google/android/apps/common/offerslib/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 822
    invoke-static {}, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->v()Lcom/google/commerce/wireless/topiary/D;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 823
    const-string v0, "OfferDetailsFragment"

    const-string v1, "finished preloading and free preloading webviews!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    invoke-static {}, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->v()Lcom/google/commerce/wireless/topiary/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/commerce/wireless/topiary/D;->a()V

    .line 826
    :cond_14
    return-void
.end method
