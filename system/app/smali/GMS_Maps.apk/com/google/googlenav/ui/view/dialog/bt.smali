.class public Lcom/google/googlenav/ui/view/dialog/bt;
.super Lcom/google/android/apps/common/offerslib/d;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/dialog/br;


# direct methods
.method protected constructor <init>(Lcom/google/googlenav/ui/view/dialog/br;)V
    .registers 2
    .parameter

    .prologue
    .line 304
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/bt;->a:Lcom/google/googlenav/ui/view/dialog/br;

    invoke-direct {p0}, Lcom/google/android/apps/common/offerslib/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;)V
    .registers 5
    .parameter

    .prologue
    .line 319
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/bt;->a:Lcom/google/googlenav/ui/view/dialog/br;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.apps.offers.VIEW_MY_OFFERS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/dialog/br;->a(Landroid/content/Intent;)V

    .line 320
    return-void
.end method

.method public a(Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;ILjava/lang/String;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 335
    const/4 v0, 0x1

    invoke-static {p3, v0}, Lcom/google/googlenav/ui/bn;->b(Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 336
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/bt;->a:Lcom/google/googlenav/ui/view/dialog/br;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/br;->a(Lcom/google/googlenav/ui/view/dialog/br;)Lcom/google/googlenav/ui/view/dialog/bu;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/bt;->a:Lcom/google/googlenav/ui/view/dialog/br;

    invoke-interface {v0, v1}, Lcom/google/googlenav/ui/view/dialog/bu;->a(Lcom/google/googlenav/ui/view/dialog/br;)V

    .line 337
    return-void
.end method

.method public a(Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;Landroid/net/Uri;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 307
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/bt;->a:Lcom/google/googlenav/ui/view/dialog/br;

    invoke-virtual {v0, p2}, Lcom/google/googlenav/ui/view/dialog/br;->a(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 308
    invoke-super {p0, p1, p2}, Lcom/google/android/apps/common/offerslib/d;->a(Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;Landroid/net/Uri;)V

    .line 310
    :cond_b
    return-void
.end method

.method public a(Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 324
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/bt;->a:Lcom/google/googlenav/ui/view/dialog/br;

    invoke-static {v0, p2}, Lcom/google/googlenav/ui/view/dialog/br;->a(Lcom/google/googlenav/ui/view/dialog/br;Ljava/lang/CharSequence;)V

    .line 325
    return-void
.end method

.method public b(Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;)V
    .registers 4
    .parameter

    .prologue
    .line 314
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/bt;->a:Lcom/google/googlenav/ui/view/dialog/br;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/br;->a(Lcom/google/googlenav/ui/view/dialog/br;)Lcom/google/googlenav/ui/view/dialog/bu;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/bt;->a:Lcom/google/googlenav/ui/view/dialog/br;

    invoke-interface {v0, v1}, Lcom/google/googlenav/ui/view/dialog/bu;->a(Lcom/google/googlenav/ui/view/dialog/br;)V

    .line 315
    return-void
.end method

.method public c(Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;)V
    .registers 3
    .parameter

    .prologue
    .line 329
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/bt;->a:Lcom/google/googlenav/ui/view/dialog/br;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/br;->b(Lcom/google/googlenav/ui/view/dialog/br;)V

    .line 330
    return-void
.end method
