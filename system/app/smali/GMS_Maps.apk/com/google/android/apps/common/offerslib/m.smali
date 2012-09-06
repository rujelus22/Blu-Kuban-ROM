.class Lcom/google/android/apps/common/offerslib/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/google/android/apps/common/offerslib/i;


# direct methods
.method constructor <init>(Lcom/google/android/apps/common/offerslib/i;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 596
    iput-object p1, p0, Lcom/google/android/apps/common/offerslib/m;->c:Lcom/google/android/apps/common/offerslib/i;

    iput-object p2, p0, Lcom/google/android/apps/common/offerslib/m;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/apps/common/offerslib/m;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 599
    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/m;->c:Lcom/google/android/apps/common/offerslib/i;

    const-string v1, "onEvent"

    #calls: Lcom/google/android/apps/common/offerslib/i;->verifyFragment(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/google/android/apps/common/offerslib/i;->access$300(Lcom/google/android/apps/common/offerslib/i;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 655
    :goto_a
    return-void

    .line 601
    :cond_b
    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/m;->a:Ljava/lang/String;

    const-string v1, "show_my_offers"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 602
    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/m;->c:Lcom/google/android/apps/common/offerslib/i;

    iget-object v0, v0, Lcom/google/android/apps/common/offerslib/i;->a:Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;

    iget-object v0, v0, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->N:Lcom/google/android/apps/common/offerslib/d;

    iget-object v1, p0, Lcom/google/android/apps/common/offerslib/m;->c:Lcom/google/android/apps/common/offerslib/i;

    iget-object v1, v1, Lcom/google/android/apps/common/offerslib/i;->a:Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/offerslib/d;->a(Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;)V

    goto :goto_a

    .line 603
    :cond_23
    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/m;->a:Ljava/lang/String;

    const-string v1, "show_offer_list"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 604
    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/m;->c:Lcom/google/android/apps/common/offerslib/i;

    iget-object v0, v0, Lcom/google/android/apps/common/offerslib/i;->a:Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;

    iget-object v0, v0, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->N:Lcom/google/android/apps/common/offerslib/d;

    iget-object v1, p0, Lcom/google/android/apps/common/offerslib/m;->c:Lcom/google/android/apps/common/offerslib/i;

    iget-object v1, v1, Lcom/google/android/apps/common/offerslib/i;->a:Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/offerslib/d;->b(Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;)V

    goto :goto_a

    .line 605
    :cond_3b
    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/m;->a:Ljava/lang/String;

    const-string v1, "navigate_back"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 606
    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/m;->c:Lcom/google/android/apps/common/offerslib/i;

    iget-object v0, v0, Lcom/google/android/apps/common/offerslib/i;->a:Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;

    iget-object v0, v0, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->N:Lcom/google/android/apps/common/offerslib/d;

    iget-object v1, p0, Lcom/google/android/apps/common/offerslib/m;->c:Lcom/google/android/apps/common/offerslib/i;

    iget-object v1, v1, Lcom/google/android/apps/common/offerslib/i;->a:Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/offerslib/d;->c(Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;)V

    goto :goto_a

    .line 607
    :cond_53
    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/m;->a:Ljava/lang/String;

    const-string v1, "refresh_my_offers"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 608
    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/m;->c:Lcom/google/android/apps/common/offerslib/i;

    iget-object v0, v0, Lcom/google/android/apps/common/offerslib/i;->a:Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;

    iget-object v0, v0, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->N:Lcom/google/android/apps/common/offerslib/d;

    iget-object v1, p0, Lcom/google/android/apps/common/offerslib/m;->c:Lcom/google/android/apps/common/offerslib/i;

    iget-object v1, v1, Lcom/google/android/apps/common/offerslib/i;->a:Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/offerslib/d;->d(Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;)V

    goto :goto_a

    .line 609
    :cond_6b
    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/m;->a:Ljava/lang/String;

    const-string v1, "is_location_enabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_92

    .line 610
    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/m;->c:Lcom/google/android/apps/common/offerslib/i;

    iget-object v0, v0, Lcom/google/android/apps/common/offerslib/i;->a:Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;

    iget-object v0, v0, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->N:Lcom/google/android/apps/common/offerslib/d;

    iget-object v1, p0, Lcom/google/android/apps/common/offerslib/m;->c:Lcom/google/android/apps/common/offerslib/i;

    iget-object v1, v1, Lcom/google/android/apps/common/offerslib/i;->a:Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/offerslib/d;->e(Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    .line 612
    iget-object v1, p0, Lcom/google/android/apps/common/offerslib/m;->c:Lcom/google/android/apps/common/offerslib/i;

    iget-object v1, v1, Lcom/google/android/apps/common/offerslib/i;->a:Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;

    iget-object v2, p0, Lcom/google/android/apps/common/offerslib/m;->b:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->a(Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 613
    :cond_92
    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/m;->a:Ljava/lang/String;

    const-string v1, "is_nfc_capable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b9

    .line 614
    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/m;->c:Lcom/google/android/apps/common/offerslib/i;

    iget-object v0, v0, Lcom/google/android/apps/common/offerslib/i;->a:Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;

    iget-object v0, v0, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->N:Lcom/google/android/apps/common/offerslib/d;

    iget-object v1, p0, Lcom/google/android/apps/common/offerslib/m;->c:Lcom/google/android/apps/common/offerslib/i;

    iget-object v1, v1, Lcom/google/android/apps/common/offerslib/i;->a:Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/offerslib/d;->f(Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    .line 616
    iget-object v1, p0, Lcom/google/android/apps/common/offerslib/m;->c:Lcom/google/android/apps/common/offerslib/i;

    iget-object v1, v1, Lcom/google/android/apps/common/offerslib/i;->a:Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;

    iget-object v2, p0, Lcom/google/android/apps/common/offerslib/m;->b:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->a(Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 617
    :cond_b9
    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/m;->a:Ljava/lang/String;

    const-string v1, "is_device_nfc_capable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e0

    .line 618
    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/m;->c:Lcom/google/android/apps/common/offerslib/i;

    iget-object v0, v0, Lcom/google/android/apps/common/offerslib/i;->a:Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;

    iget-object v0, v0, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->N:Lcom/google/android/apps/common/offerslib/d;

    iget-object v1, p0, Lcom/google/android/apps/common/offerslib/m;->c:Lcom/google/android/apps/common/offerslib/i;

    iget-object v1, v1, Lcom/google/android/apps/common/offerslib/i;->a:Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/offerslib/d;->g(Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    .line 620
    iget-object v1, p0, Lcom/google/android/apps/common/offerslib/m;->c:Lcom/google/android/apps/common/offerslib/i;

    iget-object v1, v1, Lcom/google/android/apps/common/offerslib/i;->a:Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;

    iget-object v2, p0, Lcom/google/android/apps/common/offerslib/m;->b:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->a(Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 621
    :cond_e0
    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/m;->a:Ljava/lang/String;

    const-string v1, "request_enable_location"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f9

    .line 622
    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/m;->c:Lcom/google/android/apps/common/offerslib/i;

    iget-object v0, v0, Lcom/google/android/apps/common/offerslib/i;->a:Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;

    iget-object v0, v0, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->N:Lcom/google/android/apps/common/offerslib/d;

    iget-object v1, p0, Lcom/google/android/apps/common/offerslib/m;->c:Lcom/google/android/apps/common/offerslib/i;

    iget-object v1, v1, Lcom/google/android/apps/common/offerslib/i;->a:Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/offerslib/d;->h(Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;)V

    goto/16 :goto_a

    .line 623
    :cond_f9
    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/m;->a:Ljava/lang/String;

    const-string v1, "acquire_location"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_126

    .line 624
    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/m;->c:Lcom/google/android/apps/common/offerslib/i;

    iget-object v0, v0, Lcom/google/android/apps/common/offerslib/i;->a:Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;

    invoke-static {v0}, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->c(Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "acquire_location"

    iget-object v2, p0, Lcom/google/android/apps/common/offerslib/m;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/m;->c:Lcom/google/android/apps/common/offerslib/i;

    iget-object v0, v0, Lcom/google/android/apps/common/offerslib/i;->a:Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;

    iget-object v0, v0, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->N:Lcom/google/android/apps/common/offerslib/d;

    iget-object v1, p0, Lcom/google/android/apps/common/offerslib/m;->c:Lcom/google/android/apps/common/offerslib/i;

    iget-object v1, v1, Lcom/google/android/apps/common/offerslib/i;->a:Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;

    new-instance v2, Lcom/google/android/apps/common/offerslib/n;

    invoke-direct {v2, p0}, Lcom/google/android/apps/common/offerslib/n;-><init>(Lcom/google/android/apps/common/offerslib/m;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/common/offerslib/d;->a(Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;Lcom/google/android/apps/common/offerslib/t;)V

    goto/16 :goto_a

    .line 641
    :cond_126
    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/m;->a:Ljava/lang/String;

    const-string v1, "scan_qr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14e

    .line 642
    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/m;->c:Lcom/google/android/apps/common/offerslib/i;

    iget-object v0, v0, Lcom/google/android/apps/common/offerslib/i;->a:Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;

    invoke-static {v0}, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->c(Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "scan_qr"

    iget-object v2, p0, Lcom/google/android/apps/common/offerslib/m;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/m;->c:Lcom/google/android/apps/common/offerslib/i;

    iget-object v0, v0, Lcom/google/android/apps/common/offerslib/i;->a:Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;

    iget-object v0, v0, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->N:Lcom/google/android/apps/common/offerslib/d;

    iget-object v1, p0, Lcom/google/android/apps/common/offerslib/m;->c:Lcom/google/android/apps/common/offerslib/i;

    iget-object v1, v1, Lcom/google/android/apps/common/offerslib/i;->a:Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/offerslib/d;->i(Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;)V

    goto/16 :goto_a

    .line 644
    :cond_14e
    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/m;->a:Ljava/lang/String;

    const-string v1, "update_title"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_169

    .line 645
    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/m;->c:Lcom/google/android/apps/common/offerslib/i;

    iget-object v0, v0, Lcom/google/android/apps/common/offerslib/i;->a:Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;

    iget-object v0, v0, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->N:Lcom/google/android/apps/common/offerslib/d;

    iget-object v1, p0, Lcom/google/android/apps/common/offerslib/m;->c:Lcom/google/android/apps/common/offerslib/i;

    iget-object v1, v1, Lcom/google/android/apps/common/offerslib/i;->a:Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;

    iget-object v2, p0, Lcom/google/android/apps/common/offerslib/m;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/common/offerslib/d;->a(Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 646
    :cond_169
    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/m;->a:Ljava/lang/String;

    const-string v1, "preview_rendered"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_192

    .line 650
    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/m;->c:Lcom/google/android/apps/common/offerslib/i;

    iget-object v0, v0, Lcom/google/android/apps/common/offerslib/i;->a:Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->b(Z)V

    .line 651
    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/m;->c:Lcom/google/android/apps/common/offerslib/i;

    iget-object v0, v0, Lcom/google/android/apps/common/offerslib/i;->a:Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;

    iget-object v0, v0, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->N:Lcom/google/android/apps/common/offerslib/d;

    iget-object v1, p0, Lcom/google/android/apps/common/offerslib/m;->c:Lcom/google/android/apps/common/offerslib/i;

    iget-object v1, v1, Lcom/google/android/apps/common/offerslib/i;->a:Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;

    iget-object v2, p0, Lcom/google/android/apps/common/offerslib/m;->c:Lcom/google/android/apps/common/offerslib/i;

    iget-object v2, v2, Lcom/google/android/apps/common/offerslib/i;->a:Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;

    invoke-static {v2}, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->b(Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/common/offerslib/d;->c(Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 653
    :cond_192
    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/m;->c:Lcom/google/android/apps/common/offerslib/i;

    iget-object v0, v0, Lcom/google/android/apps/common/offerslib/i;->a:Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unrecognized event in onEvent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/common/offerslib/m;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->a(Ljava/lang/String;)V

    goto/16 :goto_a
.end method
