.class Lcom/google/android/apps/common/offerslib/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/apps/common/offerslib/JavascriptCallbackInterface;


# instance fields
.field final synthetic a:Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 529
    iput-object p1, p0, Lcom/google/android/apps/common/offerslib/i;->a:Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;Lcom/google/android/apps/common/offerslib/f;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 529
    invoke-direct {p0, p1}, Lcom/google/android/apps/common/offerslib/i;-><init>(Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/apps/common/offerslib/i;Ljava/lang/String;)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 529
    invoke-direct {p0, p1}, Lcom/google/android/apps/common/offerslib/i;->verifyFragment(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private logUnexpectedNullComponentError(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 778
    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/i;->a:Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is null in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->a(Ljava/lang/String;)V

    .line 779
    return-void
.end method

.method private verifyFragment(Ljava/lang/String;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 751
    const/4 v1, 0x1

    .line 752
    iget-object v2, p0, Lcom/google/android/apps/common/offerslib/i;->a:Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;

    if-nez v2, :cond_c

    .line 753
    const-string v1, "OfferDetailsFragment.this"

    invoke-direct {p0, v1, p1}, Lcom/google/android/apps/common/offerslib/i;->logUnexpectedNullComponentError(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    :goto_b
    return v0

    .line 755
    :cond_c
    iget-object v2, p0, Lcom/google/android/apps/common/offerslib/i;->a:Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;

    iget-object v2, v2, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->N:Lcom/google/android/apps/common/offerslib/d;

    if-nez v2, :cond_18

    .line 756
    const-string v1, "offerDetailsClient"

    invoke-direct {p0, v1, p1}, Lcom/google/android/apps/common/offerslib/i;->logUnexpectedNullComponentError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 758
    :cond_18
    iget-object v2, p0, Lcom/google/android/apps/common/offerslib/i;->a:Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;

    invoke-static {v2}, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->d(Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;)Lcom/google/android/apps/common/offerslib/c;

    move-result-object v2

    if-nez v2, :cond_26

    .line 759
    const-string v1, "externalUrlDetector"

    invoke-direct {p0, v1, p1}, Lcom/google/android/apps/common/offerslib/i;->logUnexpectedNullComponentError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 761
    :cond_26
    iget-object v2, p0, Lcom/google/android/apps/common/offerslib/i;->a:Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;

    invoke-static {v2}, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->e(Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;)Lcom/google/commerce/wireless/topiary/HybridWebView;

    move-result-object v2

    if-nez v2, :cond_34

    .line 762
    const-string v1, "webView"

    invoke-direct {p0, v1, p1}, Lcom/google/android/apps/common/offerslib/i;->logUnexpectedNullComponentError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 764
    :cond_34
    iget-object v2, p0, Lcom/google/android/apps/common/offerslib/i;->a:Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;

    invoke-virtual {v2}, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->d()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-nez v2, :cond_42

    .line 765
    const-string v1, "OfferDetailsFragment.this.getActivity()"

    invoke-direct {p0, v1, p1}, Lcom/google/android/apps/common/offerslib/i;->logUnexpectedNullComponentError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :cond_42
    move v0, v1

    goto :goto_b
.end method


# virtual methods
.method public enableNfc(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 670
    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/i;->a:Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;

    iget-object v0, v0, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->N:Lcom/google/android/apps/common/offerslib/d;

    iget-object v1, p0, Lcom/google/android/apps/common/offerslib/i;->a:Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    new-instance v5, Lcom/google/android/apps/common/offerslib/o;

    invoke-direct {v5, p0, p4}, Lcom/google/android/apps/common/offerslib/o;-><init>(Lcom/google/android/apps/common/offerslib/i;Ljava/lang/String;)V

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/common/offerslib/d;->a(Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/google/android/apps/common/offerslib/e;)V

    .line 677
    return-void
.end method

.method public finishedLoading(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    .line 681
    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/i;->a:Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finishedLoading "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->a(Ljava/lang/String;)V

    .line 683
    const-string v0, "finishedLoading"

    invoke-direct {p0, v0}, Lcom/google/android/apps/common/offerslib/i;->verifyFragment(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 684
    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/i;->a:Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;

    invoke-static {v0}, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->d(Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;)Lcom/google/android/apps/common/offerslib/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/apps/common/offerslib/c;->a(Ljava/lang/String;)V

    .line 691
    :cond_29
    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/i;->a:Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;

    invoke-static {v0}, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->a(Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;)Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_39

    .line 692
    const-string v0, "handler"

    const-string v1, "finishedLoading"

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/common/offerslib/i;->logUnexpectedNullComponentError(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    :goto_38
    return-void

    .line 694
    :cond_39
    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/i;->a:Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;

    invoke-static {v0}, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->a(Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/common/offerslib/p;

    invoke-direct {v1, p0}, Lcom/google/android/apps/common/offerslib/p;-><init>(Lcom/google/android/apps/common/offerslib/i;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_38
.end method

.method public isNfcEnabledForOffer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 663
    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/i;->a:Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;

    iget-object v0, v0, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->N:Lcom/google/android/apps/common/offerslib/d;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/common/offerslib/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 664
    iget-object v1, p0, Lcom/google/android/apps/common/offerslib/i;->a:Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p3, v0}, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->a(Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    return-void
.end method

.method public onError(ILjava/lang/String;I)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 722
    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/i;->a:Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;

    invoke-static {v0}, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->a(Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;)Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_10

    .line 723
    const-string v0, "handler"

    const-string v1, "onError"

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/common/offerslib/i;->logUnexpectedNullComponentError(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    :goto_f
    return-void

    .line 725
    :cond_10
    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/i;->a:Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;

    invoke-static {v0}, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->a(Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/common/offerslib/q;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/apps/common/offerslib/q;-><init>(Lcom/google/android/apps/common/offerslib/i;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_f
.end method

.method public onEvent(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 592
    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/i;->a:Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEvent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->a(Ljava/lang/String;)V

    .line 593
    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/i;->a:Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;

    invoke-static {v0}, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->a(Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;)Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_28

    .line 594
    const-string v0, "handler"

    const-string v1, "onEvent"

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/common/offerslib/i;->logUnexpectedNullComponentError(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    :goto_27
    return-void

    .line 596
    :cond_28
    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/i;->a:Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;

    invoke-static {v0}, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->a(Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/common/offerslib/m;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/apps/common/offerslib/m;-><init>(Lcom/google/android/apps/common/offerslib/i;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_27
.end method

.method public purchaseOffer(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    .line 556
    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/i;->a:Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "purchaseOffer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->a(Ljava/lang/String;)V

    .line 558
    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/i;->a:Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;

    invoke-static {v0}, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->a(Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;)Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_28

    .line 559
    const-string v0, "handler"

    const-string v1, "purchaseOffer"

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/common/offerslib/i;->logUnexpectedNullComponentError(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    :goto_27
    return-void

    .line 561
    :cond_28
    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/i;->a:Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;

    invoke-static {v0}, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->a(Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/common/offerslib/k;

    invoke-direct {v1, p0, p1}, Lcom/google/android/apps/common/offerslib/k;-><init>(Lcom/google/android/apps/common/offerslib/i;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_27
.end method

.method public showExternalUrl(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    .line 574
    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/i;->a:Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showExternalUrl "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->a(Ljava/lang/String;)V

    .line 575
    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/i;->a:Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;

    invoke-static {v0}, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->a(Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;)Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_28

    .line 576
    const-string v0, "handler"

    const-string v1, "showExternalUrl"

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/common/offerslib/i;->logUnexpectedNullComponentError(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    :goto_27
    return-void

    .line 578
    :cond_28
    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/i;->a:Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;

    invoke-static {v0}, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->a(Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/common/offerslib/l;

    invoke-direct {v1, p0, p1}, Lcom/google/android/apps/common/offerslib/l;-><init>(Lcom/google/android/apps/common/offerslib/i;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_27
.end method

.method public showSpinner(Z)V
    .registers 5
    .parameter

    .prologue
    .line 532
    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/i;->a:Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showSpinner "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->a(Ljava/lang/String;)V

    .line 533
    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/i;->a:Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;

    invoke-static {v0}, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->a(Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;)Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_28

    .line 534
    const-string v0, "handler"

    const-string v1, "showSpinner"

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/common/offerslib/i;->logUnexpectedNullComponentError(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    :goto_27
    return-void

    .line 536
    :cond_28
    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/i;->a:Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;

    invoke-static {v0}, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->a(Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/common/offerslib/j;

    invoke-direct {v1, p0, p1}, Lcom/google/android/apps/common/offerslib/j;-><init>(Lcom/google/android/apps/common/offerslib/i;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_27
.end method

.method public trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 715
    const-string v0, "trackEvent"

    invoke-direct {p0, v0}, Lcom/google/android/apps/common/offerslib/i;->verifyFragment(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 716
    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/i;->a:Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;

    iget-object v0, v0, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->N:Lcom/google/android/apps/common/offerslib/d;

    iget-object v1, p0, Lcom/google/android/apps/common/offerslib/i;->a:Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/common/offerslib/d;->a(Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 718
    :cond_15
    return-void
.end method

.method public trackPageView(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 707
    const-string v0, "trackPageView"

    invoke-direct {p0, v0}, Lcom/google/android/apps/common/offerslib/i;->verifyFragment(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 708
    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/i;->a:Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;

    iget-object v0, v0, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->N:Lcom/google/android/apps/common/offerslib/d;

    iget-object v1, p0, Lcom/google/android/apps/common/offerslib/i;->a:Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/apps/common/offerslib/d;->b(Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;Ljava/lang/String;)V

    .line 710
    :cond_11
    return-void
.end method

.method public updateSharingContent(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 738
    const-string v0, "updateSharingContent"

    invoke-direct {p0, v0}, Lcom/google/android/apps/common/offerslib/i;->verifyFragment(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 739
    const-string v0, "onLoadShare"

    const-string v1, "offerDetailsClient"

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/common/offerslib/i;->logUnexpectedNullComponentError(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    :goto_f
    return-void

    .line 741
    :cond_10
    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/i;->a:Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;

    iget-object v0, v0, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->N:Lcom/google/android/apps/common/offerslib/d;

    iget-object v1, p0, Lcom/google/android/apps/common/offerslib/i;->a:Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/apps/common/offerslib/d;->a(Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f
.end method
