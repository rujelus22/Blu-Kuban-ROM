.class final Lcom/android/athome/picker/media/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/athome/picker/media/l;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 398
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .registers 3
    .parameter

    .prologue
    .line 407
    check-cast p1, Landroid/media/MediaRouter;

    invoke-virtual {p1}, Landroid/media/MediaRouter;->getRouteCount()I

    move-result v0

    return v0
.end method

.method public final a(Landroid/content/Context;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 402
    const-string v0, "media_router"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 412
    check-cast p1, Landroid/media/MediaRouter;

    invoke-virtual {p1, p2}, Landroid/media/MediaRouter;->getRouteAt(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/CharSequence;Z)Ljava/lang/Object;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 472
    check-cast p1, Landroid/media/MediaRouter;

    invoke-virtual {p1, p2, p3}, Landroid/media/MediaRouter;->createRouteCategory(Ljava/lang/CharSequence;Z)Landroid/media/MediaRouter$RouteCategory;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/Object;Ljava/util/List;)Ljava/util/List;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 547
    check-cast p1, Landroid/media/MediaRouter$RouteCategory;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/media/MediaRouter$RouteCategory;->getRoutes(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    if-nez p2, :cond_e

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :cond_e
    invoke-interface {p2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p2
.end method

.method public final a(Ljava/lang/Object;ILcom/android/athome/picker/media/b;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 422
    iget-object v0, p3, Lcom/android/athome/picker/media/b;->b:Ljava/lang/Object;

    if-eqz v0, :cond_e

    iget-object v0, p3, Lcom/android/athome/picker/media/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/athome/picker/media/t;

    :goto_8
    check-cast p1, Landroid/media/MediaRouter;

    invoke-virtual {p1, p2, v0}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;)V

    .line 423
    return-void

    .line 422
    :cond_e
    new-instance v0, Lcom/android/athome/picker/media/t;

    invoke-direct {v0, p3}, Lcom/android/athome/picker/media/t;-><init>(Lcom/android/athome/picker/media/b;)V

    iput-object v0, p3, Lcom/android/athome/picker/media/b;->b:Ljava/lang/Object;

    goto :goto_8
.end method

.method public final a(Ljava/lang/Object;ILjava/lang/Object;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 437
    check-cast p1, Landroid/media/MediaRouter;

    check-cast p3, Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {p1, p2, p3}, Landroid/media/MediaRouter;->selectRoute(ILandroid/media/MediaRouter$RouteInfo;)V

    .line 438
    return-void
.end method

.method public final a(Ljava/lang/Object;Landroid/support/v4/app/i;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 433
    return-void
.end method

.method public final a(Ljava/lang/Object;Lcom/android/athome/picker/media/b;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 427
    check-cast p1, Landroid/media/MediaRouter;

    iget-object v0, p2, Lcom/android/athome/picker/media/b;->b:Ljava/lang/Object;

    check-cast v0, Landroid/media/MediaRouter$Callback;

    invoke-virtual {p1, v0}, Landroid/media/MediaRouter;->removeCallback(Landroid/media/MediaRouter$Callback;)V

    const/4 v0, 0x0

    iput-object v0, p2, Lcom/android/athome/picker/media/b;->b:Ljava/lang/Object;

    .line 428
    return-void
.end method

.method public final a(Ljava/lang/Object;Lcom/android/athome/picker/media/d;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 660
    const/4 v0, 0x0

    if-eqz p2, :cond_8

    new-instance v0, Lcom/android/athome/picker/media/u;

    invoke-direct {v0, p2}, Lcom/android/athome/picker/media/u;-><init>(Lcom/android/athome/picker/media/d;)V

    :cond_8
    check-cast p1, Landroid/media/MediaRouter$UserRouteInfo;

    invoke-virtual {p1, v0}, Landroid/media/MediaRouter$UserRouteInfo;->setVolumeCallback(Landroid/media/MediaRouter$VolumeCallback;)V

    .line 661
    return-void
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 502
    check-cast p1, Landroid/media/MediaRouter$UserRouteInfo;

    invoke-virtual {p1, p2}, Landroid/media/MediaRouter$UserRouteInfo;->setName(Ljava/lang/CharSequence;)V

    .line 503
    return-void
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 442
    check-cast p1, Landroid/media/MediaRouter;

    check-cast p2, Landroid/media/MediaRouter$UserRouteInfo;

    invoke-virtual {p1, p2}, Landroid/media/MediaRouter;->addUserRoute(Landroid/media/MediaRouter$UserRouteInfo;)V

    .line 443
    return-void
.end method

.method public final b(Ljava/lang/Object;)I
    .registers 3
    .parameter

    .prologue
    .line 457
    check-cast p1, Landroid/media/MediaRouter;

    invoke-virtual {p1}, Landroid/media/MediaRouter;->getCategoryCount()I

    move-result v0

    return v0
.end method

.method public final b(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 417
    check-cast p1, Landroid/media/MediaRouter;

    invoke-virtual {p1, p2}, Landroid/media/MediaRouter;->getSelectedRoute(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 507
    check-cast p1, Landroid/media/MediaRouter$UserRouteInfo;

    invoke-virtual {p1, p2}, Landroid/media/MediaRouter$UserRouteInfo;->setStatus(Ljava/lang/CharSequence;)V

    .line 508
    return-void
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 447
    check-cast p1, Landroid/media/MediaRouter;

    check-cast p2, Landroid/media/MediaRouter$UserRouteInfo;

    invoke-virtual {p1, p2}, Landroid/media/MediaRouter;->removeUserRoute(Landroid/media/MediaRouter$UserRouteInfo;)V

    .line 448
    return-void
.end method

.method public final c(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 3
    .parameter

    .prologue
    .line 477
    check-cast p1, Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final c(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 462
    check-cast p1, Landroid/media/MediaRouter;

    invoke-virtual {p1, p2}, Landroid/media/MediaRouter;->getCategoryAt(I)Landroid/media/MediaRouter$RouteCategory;

    move-result-object v0

    return-object v0
.end method

.method public final c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 467
    check-cast p1, Landroid/media/MediaRouter;

    check-cast p2, Landroid/media/MediaRouter$RouteCategory;

    invoke-virtual {p1, p2}, Landroid/media/MediaRouter;->createUserRoute(Landroid/media/MediaRouter$RouteCategory;)Landroid/media/MediaRouter$UserRouteInfo;

    move-result-object v0

    return-object v0
.end method

.method public final d(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 3
    .parameter

    .prologue
    .line 482
    check-cast p1, Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->getStatus()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final d(Ljava/lang/Object;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 527
    check-cast p1, Landroid/media/MediaRouter$RouteGroup;

    invoke-virtual {p1, p2}, Landroid/media/MediaRouter$RouteGroup;->removeRoute(I)V

    .line 528
    return-void
.end method

.method public final d(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 512
    check-cast p1, Landroid/media/MediaRouter$RouteGroup;

    check-cast p2, Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {p1, p2}, Landroid/media/MediaRouter$RouteGroup;->addRoute(Landroid/media/MediaRouter$RouteInfo;)V

    .line 513
    return-void
.end method

.method public final e(Ljava/lang/Object;)I
    .registers 3
    .parameter

    .prologue
    .line 487
    check-cast p1, Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->getSupportedTypes()I

    move-result v0

    return v0
.end method

.method public final e(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 537
    check-cast p1, Landroid/media/MediaRouter$RouteGroup;

    invoke-virtual {p1, p2}, Landroid/media/MediaRouter$RouteGroup;->getRouteAt(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v0

    return-object v0
.end method

.method public final e(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 522
    check-cast p1, Landroid/media/MediaRouter$RouteGroup;

    check-cast p2, Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {p1, p2}, Landroid/media/MediaRouter$RouteGroup;->removeRoute(Landroid/media/MediaRouter$RouteInfo;)V

    .line 523
    return-void
.end method

.method public final f(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 492
    check-cast p1, Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->getGroup()Landroid/media/MediaRouter$RouteGroup;

    move-result-object v0

    return-object v0
.end method

.method public final f(Ljava/lang/Object;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 614
    check-cast p1, Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {p1, p2}, Landroid/media/MediaRouter$RouteInfo;->requestSetVolume(I)V

    .line 615
    return-void
.end method

.method public final f(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 594
    check-cast p1, Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {p1, p2}, Landroid/media/MediaRouter$RouteInfo;->setTag(Ljava/lang/Object;)V

    .line 595
    return-void
.end method

.method public final g(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 497
    check-cast p1, Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->getCategory()Landroid/media/MediaRouter$RouteCategory;

    move-result-object v0

    return-object v0
.end method

.method public final g(Ljava/lang/Object;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 665
    check-cast p1, Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {p1, p2}, Landroid/media/MediaRouter$RouteInfo;->requestUpdateVolume(I)V

    .line 666
    return-void
.end method

.method public final h(Ljava/lang/Object;)I
    .registers 3
    .parameter

    .prologue
    .line 532
    check-cast p1, Landroid/media/MediaRouter$RouteGroup;

    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteGroup;->getRouteCount()I

    move-result v0

    return v0
.end method

.method public final h(Ljava/lang/Object;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 634
    check-cast p1, Landroid/media/MediaRouter$UserRouteInfo;

    invoke-virtual {p1, p2}, Landroid/media/MediaRouter$UserRouteInfo;->setVolume(I)V

    .line 635
    return-void
.end method

.method public final i(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 3
    .parameter

    .prologue
    .line 542
    check-cast p1, Landroid/media/MediaRouter$RouteCategory;

    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteCategory;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final i(Ljava/lang/Object;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 639
    check-cast p1, Landroid/media/MediaRouter$UserRouteInfo;

    invoke-virtual {p1, p2}, Landroid/media/MediaRouter$UserRouteInfo;->setVolumeMax(I)V

    .line 640
    return-void
.end method

.method public final j(Ljava/lang/Object;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 644
    check-cast p1, Landroid/media/MediaRouter$UserRouteInfo;

    invoke-virtual {p1, p2}, Landroid/media/MediaRouter$UserRouteInfo;->setPlaybackType(I)V

    .line 645
    return-void
.end method

.method public final j(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 557
    check-cast p1, Landroid/media/MediaRouter$RouteCategory;

    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteCategory;->isGroupable()Z

    move-result v0

    return v0
.end method

.method public final k(Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;
    .registers 3
    .parameter

    .prologue
    .line 579
    check-cast p1, Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public final k(Ljava/lang/Object;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 649
    check-cast p1, Landroid/media/MediaRouter$UserRouteInfo;

    invoke-virtual {p1, p2}, Landroid/media/MediaRouter$UserRouteInfo;->setVolumeHandling(I)V

    .line 651
    return-void
.end method

.method public final l(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 599
    check-cast p1, Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->getTag()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final m(Ljava/lang/Object;)I
    .registers 3
    .parameter

    .prologue
    .line 604
    check-cast p1, Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->getVolume()I

    move-result v0

    return v0
.end method

.method public final n(Ljava/lang/Object;)I
    .registers 3
    .parameter

    .prologue
    .line 609
    check-cast p1, Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->getVolumeMax()I

    move-result v0

    return v0
.end method

.method public final o(Ljava/lang/Object;)I
    .registers 3
    .parameter

    .prologue
    .line 619
    check-cast p1, Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->getVolumeHandling()I

    move-result v0

    return v0
.end method

.method public final p(Ljava/lang/Object;)I
    .registers 3
    .parameter

    .prologue
    .line 624
    check-cast p1, Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->getPlaybackType()I

    move-result v0

    return v0
.end method

.method public final q(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 670
    instance-of v0, p1, Landroid/media/MediaRouter$RouteInfo;

    return v0
.end method

.method public final r(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 685
    instance-of v0, p1, Landroid/media/MediaRouter$RouteCategory;

    return v0
.end method
