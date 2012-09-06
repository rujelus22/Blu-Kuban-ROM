.class Lcom/google/android/apps/common/offerslib/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/google/android/apps/common/offerslib/i;


# direct methods
.method constructor <init>(Lcom/google/android/apps/common/offerslib/i;ILjava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 725
    iput-object p1, p0, Lcom/google/android/apps/common/offerslib/q;->c:Lcom/google/android/apps/common/offerslib/i;

    iput p2, p0, Lcom/google/android/apps/common/offerslib/q;->a:I

    iput-object p3, p0, Lcom/google/android/apps/common/offerslib/q;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 728
    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/q;->c:Lcom/google/android/apps/common/offerslib/i;

    const-string v1, "onError"

    #calls: Lcom/google/android/apps/common/offerslib/i;->verifyFragment(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/google/android/apps/common/offerslib/i;->access$300(Lcom/google/android/apps/common/offerslib/i;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 729
    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/q;->c:Lcom/google/android/apps/common/offerslib/i;

    iget-object v0, v0, Lcom/google/android/apps/common/offerslib/i;->a:Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;

    iget v1, p0, Lcom/google/android/apps/common/offerslib/q;->a:I

    iget-object v2, p0, Lcom/google/android/apps/common/offerslib/q;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->a(Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;ILjava/lang/String;)V

    .line 731
    :cond_15
    return-void
.end method
