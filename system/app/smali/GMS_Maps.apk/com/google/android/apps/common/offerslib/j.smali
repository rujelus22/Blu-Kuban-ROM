.class Lcom/google/android/apps/common/offerslib/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/google/android/apps/common/offerslib/i;


# direct methods
.method constructor <init>(Lcom/google/android/apps/common/offerslib/i;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 536
    iput-object p1, p0, Lcom/google/android/apps/common/offerslib/j;->b:Lcom/google/android/apps/common/offerslib/i;

    iput-boolean p2, p0, Lcom/google/android/apps/common/offerslib/j;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 539
    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/j;->b:Lcom/google/android/apps/common/offerslib/i;

    const-string v1, "showSpinner"

    #calls: Lcom/google/android/apps/common/offerslib/i;->verifyFragment(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/google/android/apps/common/offerslib/i;->access$300(Lcom/google/android/apps/common/offerslib/i;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 540
    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/j;->b:Lcom/google/android/apps/common/offerslib/i;

    iget-object v0, v0, Lcom/google/android/apps/common/offerslib/i;->a:Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;

    iget-boolean v1, p0, Lcom/google/android/apps/common/offerslib/j;->a:Z

    invoke-static {v0, v1}, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->a(Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;Z)V

    .line 541
    iget-boolean v0, p0, Lcom/google/android/apps/common/offerslib/j;->a:Z

    if-nez v0, :cond_2c

    .line 546
    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/j;->b:Lcom/google/android/apps/common/offerslib/i;

    iget-object v0, v0, Lcom/google/android/apps/common/offerslib/i;->a:Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;

    iget-object v0, v0, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->N:Lcom/google/android/apps/common/offerslib/d;

    iget-object v1, p0, Lcom/google/android/apps/common/offerslib/j;->b:Lcom/google/android/apps/common/offerslib/i;

    iget-object v1, v1, Lcom/google/android/apps/common/offerslib/i;->a:Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;

    iget-object v2, p0, Lcom/google/android/apps/common/offerslib/j;->b:Lcom/google/android/apps/common/offerslib/i;

    iget-object v2, v2, Lcom/google/android/apps/common/offerslib/i;->a:Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;

    invoke-static {v2}, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->b(Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/common/offerslib/d;->d(Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;Ljava/lang/String;)V

    .line 549
    :cond_2c
    return-void
.end method
