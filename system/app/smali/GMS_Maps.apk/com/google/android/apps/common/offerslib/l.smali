.class Lcom/google/android/apps/common/offerslib/l;
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
    .line 578
    iput-object p1, p0, Lcom/google/android/apps/common/offerslib/l;->b:Lcom/google/android/apps/common/offerslib/i;

    iput-object p2, p0, Lcom/google/android/apps/common/offerslib/l;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 581
    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/l;->b:Lcom/google/android/apps/common/offerslib/i;

    const-string v1, "showExternalUrl"

    #calls: Lcom/google/android/apps/common/offerslib/i;->verifyFragment(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/google/android/apps/common/offerslib/i;->access$300(Lcom/google/android/apps/common/offerslib/i;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 582
    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/l;->b:Lcom/google/android/apps/common/offerslib/i;

    iget-object v0, v0, Lcom/google/android/apps/common/offerslib/i;->a:Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;

    iget-object v0, v0, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->N:Lcom/google/android/apps/common/offerslib/d;

    iget-object v1, p0, Lcom/google/android/apps/common/offerslib/l;->b:Lcom/google/android/apps/common/offerslib/i;

    iget-object v1, v1, Lcom/google/android/apps/common/offerslib/i;->a:Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;

    iget-object v2, p0, Lcom/google/android/apps/common/offerslib/l;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/common/offerslib/d;->a(Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;Landroid/net/Uri;)V

    .line 585
    :cond_1d
    return-void
.end method
