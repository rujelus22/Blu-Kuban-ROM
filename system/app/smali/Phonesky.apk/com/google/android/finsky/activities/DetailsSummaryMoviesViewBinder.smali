.class public Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder;
.super Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;
.source "DetailsSummaryMoviesViewBinder.java"


# instance fields
.field private final mPackageInfoCache:Lcom/google/android/finsky/utils/PackageInfoCache;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/utils/PackageInfoCache;Lcom/google/android/finsky/api/model/DfeToc;)V
    .registers 3
    .parameter "packageInfoCache"
    .parameter "dfeToc"

    .prologue
    .line 27
    invoke-direct {p0, p2}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;-><init>(Lcom/google/android/finsky/api/model/DfeToc;)V

    .line 28
    iput-object p1, p0, Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder;->mPackageInfoCache:Lcom/google/android/finsky/utils/PackageInfoCache;

    .line 29
    return-void
.end method


# virtual methods
.method protected setupActionButtons(Z)V
    .registers 5
    .parameter "isInTransientState"

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->setupActionButtons(Z)V

    .line 35
    const v1, 0x7f0800ca

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 36
    .local v0, downloadButton:Landroid/widget/Button;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 38
    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder;->mPackageInfoCache:Lcom/google/android/finsky/utils/PackageInfoCache;

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/api/model/Document;->ownedByUser(Lcom/google/android/finsky/utils/PackageInfoCache;)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 62
    :goto_1b
    return-void

    .line 42
    :cond_1c
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 43
    new-instance v1, Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder$1;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder$1;-><init>(Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1b
.end method

.method protected setupBuyButtons(Landroid/widget/Button;Landroid/widget/Button;Z)V
    .registers 14
    .parameter "buyButton"
    .parameter "buyButtonSecondary"
    .parameter "isOwnedByUser"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 75
    iget-object v4, p0, Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getAvailableOffers()Ljava/util/List;

    move-result-object v3

    .line 76
    .local v3, offers:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/Common$Offer;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_76

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/remoting/protos/Common$Offer;

    .line 77
    .local v1, o:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getOfferType()I

    move-result v2

    .line 78
    .local v2, offerType:I
    packed-switch v2, :pswitch_data_78

    goto :goto_c

    .line 91
    :pswitch_20
    invoke-virtual {p2, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 92
    iget-object v4, p0, Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder;->mContext:Landroid/content/Context;

    const v5, 0x7f07010a

    new-array v6, v9, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getFormattedAmount()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v4, p0, Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v5, p0, Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    iget-object v6, p0, Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder;->mReferrer:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder;->mExternalReferrer:Ljava/lang/String;

    invoke-virtual {v4, v5, v2, v6, v7}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getBuyImmediateClickListener(Lcom/google/android/finsky/api/model/Document;ILjava/lang/String;Ljava/lang/String;)Landroid/view/View$OnClickListener;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_c

    .line 81
    :pswitch_4b
    invoke-virtual {p1, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 82
    iget-object v4, p0, Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder;->mContext:Landroid/content/Context;

    const v5, 0x7f070109

    new-array v6, v9, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getFormattedAmount()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v4, p0, Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v5, p0, Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    iget-object v6, p0, Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder;->mReferrer:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder;->mExternalReferrer:Ljava/lang/String;

    invoke-virtual {v4, v5, v2, v6, v7}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getBuyImmediateClickListener(Lcom/google/android/finsky/api/model/Document;ILjava/lang/String;Ljava/lang/String;)Landroid/view/View$OnClickListener;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_c

    .line 100
    .end local v1           #o:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    .end local v2           #offerType:I
    :cond_76
    return-void

    .line 78
    nop

    :pswitch_data_78
    .packed-switch 0x3
        :pswitch_20
        :pswitch_4b
    .end packed-switch
.end method
