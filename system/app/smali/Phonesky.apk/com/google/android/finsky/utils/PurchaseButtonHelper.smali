.class public Lcom/google/android/finsky/utils/PurchaseButtonHelper;
.super Ljava/lang/Object;
.source "PurchaseButtonHelper.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static styleFromOffer(Landroid/widget/TextView;Lcom/google/android/finsky/remoting/protos/Common$Offer;)V
    .registers 8
    .parameter "priceTextView"
    .parameter "offer"

    .prologue
    .line 96
    if-eqz p1, :cond_2a

    .line 97
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getOfferType()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_22

    .line 98
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    const v2, 0x7f07010b

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getFormattedAmount()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/google/android/finsky/FinskyApp;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, hdString:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    .end local v0           #hdString:Ljava/lang/String;
    :goto_21
    return-void

    .line 102
    :cond_22
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getFormattedAmount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_21

    .line 105
    :cond_2a
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_21
.end method

.method public static stylePurchaseButton(Lcom/google/android/finsky/api/model/Document;ZLandroid/widget/TextView;)V
    .registers 15
    .parameter "document"
    .parameter "setForegroundColor"
    .parameter "priceTextView"

    .prologue
    const v11, 0x7f0700de

    const/4 v9, 0x0

    const/4 v8, 0x0

    const v10, 0x7f0700df

    .line 27
    if-eqz p1, :cond_19

    .line 28
    invoke-virtual {p2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v7

    invoke-static {v6, v7}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getBackendForegroundColor(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {p2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 31
    :cond_19
    invoke-virtual {p2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 32
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    .line 33
    .local v0, app:Lcom/google/android/finsky/FinskyApp;
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getDefaultOffer()Lcom/google/android/finsky/remoting/protos/Common$Offer;

    move-result-object v2

    .line 34
    .local v2, defaultOffer:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v6

    packed-switch v6, :pswitch_data_c0

    .line 89
    const-string v6, "Unsupported backend: %d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    invoke-static {p2, v2}, Lcom/google/android/finsky/utils/PurchaseButtonHelper;->styleFromOffer(Landroid/widget/TextView;Lcom/google/android/finsky/remoting/protos/Common$Offer;)V

    .line 91
    :goto_40
    return-void

    .line 36
    :pswitch_41
    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getPackageInfoCache()Lcom/google/android/finsky/utils/PackageInfoCache;

    move-result-object v3

    .line 37
    .local v3, infoCache:Lcom/google/android/finsky/utils/PackageInfoCache;
    invoke-virtual {p0, v3}, Lcom/google/android/finsky/api/model/Document;->isLocallyAvailable(Lcom/google/android/finsky/utils/PackageInfoCache;)Z

    move-result v6

    if-eqz v6, :cond_78

    .line 40
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v1

    .line 41
    .local v1, appDetails:Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;
    invoke-virtual {p0, v3}, Lcom/google/android/finsky/api/model/Document;->ownedByUser(Lcom/google/android/finsky/utils/PackageInfoCache;)Z

    move-result v6

    if-eqz v6, :cond_74

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasVersionCode()Z

    move-result v6

    if-eqz v6, :cond_74

    .line 42
    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/google/android/finsky/utils/PackageInfoCache;->getPackageVersion(Ljava/lang/String;)I

    move-result v4

    .line 44
    .local v4, localVersionCode:I
    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getVersionCode()I

    move-result v5

    .line 45
    .local v5, serverVersionCode:I
    if-le v5, v4, :cond_70

    .line 46
    const v6, 0x7f0700e1

    invoke-virtual {p2, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_40

    .line 48
    :cond_70
    invoke-virtual {p2, v11}, Landroid/widget/TextView;->setText(I)V

    goto :goto_40

    .line 51
    .end local v4           #localVersionCode:I
    .end local v5           #serverVersionCode:I
    :cond_74
    invoke-virtual {p2, v11}, Landroid/widget/TextView;->setText(I)V

    goto :goto_40

    .line 55
    .end local v1           #appDetails:Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;
    :cond_78
    invoke-virtual {p0, v3}, Lcom/google/android/finsky/api/model/Document;->ownedByUser(Lcom/google/android/finsky/utils/PackageInfoCache;)Z

    move-result v6

    if-eqz v6, :cond_8e

    if-eqz v2, :cond_8e

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getMicros()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_8e

    .line 57
    invoke-virtual {p2, v10}, Landroid/widget/TextView;->setText(I)V

    goto :goto_40

    .line 60
    :cond_8e
    invoke-static {p2, v2}, Lcom/google/android/finsky/utils/PurchaseButtonHelper;->styleFromOffer(Landroid/widget/TextView;Lcom/google/android/finsky/remoting/protos/Common$Offer;)V

    goto :goto_40

    .line 65
    .end local v3           #infoCache:Lcom/google/android/finsky/utils/PackageInfoCache;
    :pswitch_92
    invoke-virtual {p0, v8}, Lcom/google/android/finsky/api/model/Document;->ownedByUser(Lcom/google/android/finsky/utils/PackageInfoCache;)Z

    move-result v6

    if-eqz v6, :cond_9c

    .line 66
    invoke-virtual {p2, v10}, Landroid/widget/TextView;->setText(I)V

    goto :goto_40

    .line 69
    :cond_9c
    invoke-static {p2, v2}, Lcom/google/android/finsky/utils/PurchaseButtonHelper;->styleFromOffer(Landroid/widget/TextView;Lcom/google/android/finsky/remoting/protos/Common$Offer;)V

    goto :goto_40

    .line 73
    :pswitch_a0
    invoke-virtual {p0, v8}, Lcom/google/android/finsky/api/model/Document;->ownedByUser(Lcom/google/android/finsky/utils/PackageInfoCache;)Z

    move-result v6

    if-eqz v6, :cond_ad

    .line 74
    const v6, 0x7f0700e0

    invoke-virtual {p2, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_40

    .line 77
    :cond_ad
    invoke-static {p2, v2}, Lcom/google/android/finsky/utils/PurchaseButtonHelper;->styleFromOffer(Landroid/widget/TextView;Lcom/google/android/finsky/remoting/protos/Common$Offer;)V

    goto :goto_40

    .line 81
    :pswitch_b1
    invoke-virtual {p0, v8}, Lcom/google/android/finsky/api/model/Document;->ownedByUser(Lcom/google/android/finsky/utils/PackageInfoCache;)Z

    move-result v6

    if-eqz v6, :cond_bb

    .line 82
    invoke-virtual {p2, v10}, Landroid/widget/TextView;->setText(I)V

    goto :goto_40

    .line 85
    :cond_bb
    invoke-static {p2, v2}, Lcom/google/android/finsky/utils/PurchaseButtonHelper;->styleFromOffer(Landroid/widget/TextView;Lcom/google/android/finsky/remoting/protos/Common$Offer;)V

    goto :goto_40

    .line 34
    nop

    :pswitch_data_c0
    .packed-switch 0x1
        :pswitch_92
        :pswitch_b1
        :pswitch_41
        :pswitch_a0
    .end packed-switch
.end method
