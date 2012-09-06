.class public Lcom/google/android/finsky/activities/DetailsSummaryMagazinesViewBinder;
.super Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;
.source "DetailsSummaryMagazinesViewBinder.java"


# instance fields
.field private mIssueDoc:Lcom/google/android/finsky/api/model/Document;

.field private mSubscriptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/api/model/DfeToc;Landroid/accounts/Account;)V
    .registers 3
    .parameter "dfeToc"
    .parameter "account"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;-><init>(Lcom/google/android/finsky/api/model/DfeToc;Landroid/accounts/Account;)V

    .line 38
    return-void
.end method

.method private setupSingleOfferButton(Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/remoting/protos/Common$Offer;Landroid/widget/Button;I)V
    .registers 13
    .parameter "account"
    .parameter "doc"
    .parameter "offer"
    .parameter "button"
    .parameter "labelResourceId"

    .prologue
    const/4 v3, 0x0

    .line 131
    invoke-virtual {p4, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 132
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryMagazinesViewBinder;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p3}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getFormattedAmount()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, p5, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryMagazinesViewBinder;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {p3}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getOfferType()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/finsky/activities/DetailsSummaryMagazinesViewBinder;->mReferrer:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/finsky/activities/DetailsSummaryMagazinesViewBinder;->mExternalReferrer:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/finsky/activities/DetailsSummaryMagazinesViewBinder;->mContinueUrl:Ljava/lang/String;

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getBuyImmediateClickListener(Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    return-void
.end method

.method private setupSubscriptionListOfferButton(Landroid/accounts/Account;Ljava/util/List;Landroid/widget/Button;)V
    .registers 21
    .parameter "account"
    .parameter
    .parameter "button"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;",
            "Landroid/widget/Button;",
            ")V"
        }
    .end annotation

    .prologue
    .line 142
    .local p2, subscriptionDocs:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/api/model/Document;>;"
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v9

    .line 143
    .local v9, offers:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/Common$Offer;>;"
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 144
    .local v3, documents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/finsky/api/model/Document;>;"
    const/4 v8, 0x0

    .line 145
    .local v8, lowestPricedOffer:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    const-wide/32 v6, 0x7fffffff

    .line 146
    .local v6, lowestPrice:J
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_10
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/finsky/api/model/Document;

    .line 147
    .local v10, subscriptionDoc:Lcom/google/android/finsky/api/model/Document;
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    invoke-virtual {v10}, Lcom/google/android/finsky/api/model/Document;->getAvailableOffers()Ljava/util/List;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/finsky/remoting/protos/Common$Offer;

    .line 153
    .local v11, subscriptionOffer:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    invoke-virtual {v11}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasFormattedAmount()Z

    move-result v12

    if-eqz v12, :cond_3a

    .line 154
    invoke-virtual {v11}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getMicros()J

    move-result-wide v1

    .line 155
    .local v1, currentPrice:J
    cmp-long v12, v1, v6

    if-gez v12, :cond_3a

    .line 156
    move-wide v6, v1

    .line 157
    move-object v8, v11

    .line 160
    .end local v1           #currentPrice:J
    :cond_3a
    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 163
    .end local v10           #subscriptionDoc:Lcom/google/android/finsky/api/model/Document;
    .end local v11           #subscriptionOffer:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    :cond_3e
    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/widget/Button;->setVisibility(I)V

    .line 164
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_82

    .line 165
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/finsky/activities/DetailsSummaryMagazinesViewBinder;->mContext:Landroid/content/Context;

    const v14, 0x7f070123

    const/4 v12, 0x1

    new-array v15, v12, [Ljava/lang/Object;

    const/16 v16, 0x0

    const/4 v12, 0x0

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/finsky/remoting/protos/Common$Offer;

    invoke-virtual {v12}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getFormattedAmount()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v15, v16

    invoke-virtual {v13, v14, v15}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 171
    :goto_71
    invoke-interface {v9, v8}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .line 172
    .local v5, lowestOfferIndex:I
    new-instance v12, Lcom/google/android/finsky/activities/DetailsSummaryMagazinesViewBinder$1;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v9, v3, v5}, Lcom/google/android/finsky/activities/DetailsSummaryMagazinesViewBinder$1;-><init>(Lcom/google/android/finsky/activities/DetailsSummaryMagazinesViewBinder;Ljava/util/List;Ljava/util/ArrayList;I)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    return-void

    .line 168
    .end local v5           #lowestOfferIndex:I
    :cond_82
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/finsky/activities/DetailsSummaryMagazinesViewBinder;->mContext:Landroid/content/Context;

    const v13, 0x7f070124

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_71
.end method


# virtual methods
.method public varargs bind(Lcom/google/android/finsky/api/model/Document;Z[Landroid/view/View;)V
    .registers 7
    .parameter "document"
    .parameter "bindDynamicSection"
    .parameter "views"

    .prologue
    .line 42
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v0

    const/16 v1, 0x11

    if-ne v0, v1, :cond_24

    .line 43
    iput-object p1, p0, Lcom/google/android/finsky/activities/DetailsSummaryMagazinesViewBinder;->mIssueDoc:Lcom/google/android/finsky/api/model/Document;

    .line 49
    :cond_a
    :goto_a
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryMagazinesViewBinder;->mDfeToc:Lcom/google/android/finsky/api/model/DfeToc;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsSummaryMagazinesViewBinder;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/library/Libraries;->getAccountLibrary(Landroid/accounts/Account;)Lcom/google/android/finsky/library/AccountLibrary;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/android/finsky/utils/DocUtils;->getMagazineSubscriptions(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/library/Library;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryMagazinesViewBinder;->mSubscriptions:Ljava/util/List;

    .line 51
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->bind(Lcom/google/android/finsky/api/model/Document;Z[Landroid/view/View;)V

    .line 52
    return-void

    .line 44
    :cond_24
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_a

    .line 45
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getChildCount()I

    move-result v0

    if-lez v0, :cond_a

    .line 46
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/finsky/api/model/Document;->getChildAt(I)Lcom/google/android/finsky/api/model/Document;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryMagazinesViewBinder;->mIssueDoc:Lcom/google/android/finsky/api/model/Document;

    goto :goto_a
.end method

.method protected displayActionButtonsIfNecessary(Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;)Z
    .registers 17
    .parameter "launchButton"
    .parameter "buyButton"
    .parameter "buyButton2"
    .parameter "tryButton"

    .prologue
    .line 82
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v7

    .line 83
    .local v7, libraries:Lcom/google/android/finsky/library/Libraries;
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryMagazinesViewBinder;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v7, v0}, Lcom/google/android/finsky/library/Libraries;->getAccountLibrary(Landroid/accounts/Account;)Lcom/google/android/finsky/library/AccountLibrary;

    move-result-object v8

    .line 85
    .local v8, library:Lcom/google/android/finsky/library/Library;
    const/4 v6, 0x0

    .line 92
    .local v6, hasActionButtons:Z
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryMagazinesViewBinder;->mIssueDoc:Lcom/google/android/finsky/api/model/Document;

    if-eqz v0, :cond_22

    .line 93
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryMagazinesViewBinder;->mIssueDoc:Lcom/google/android/finsky/api/model/Document;

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsSummaryMagazinesViewBinder;->mAccount:Landroid/accounts/Account;

    invoke-static {v0, v7, v1}, Lcom/google/android/finsky/utils/LibraryUtils;->getOwnerWithCurrentAccount(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/Libraries;Landroid/accounts/Account;)Landroid/accounts/Account;

    move-result-object v9

    .line 95
    .local v9, owner:Landroid/accounts/Account;
    if-eqz v9, :cond_33

    .line 97
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryMagazinesViewBinder;->mIssueDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {p0, p1, v0, v9}, Lcom/google/android/finsky/activities/DetailsSummaryMagazinesViewBinder;->configureLaunchButton(Landroid/widget/Button;Lcom/google/android/finsky/api/model/Document;Landroid/accounts/Account;)V

    .line 110
    .end local v9           #owner:Landroid/accounts/Account;
    :cond_22
    :goto_22
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryMagazinesViewBinder;->mSubscriptions:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsSummaryMagazinesViewBinder;->mAccount:Landroid/accounts/Account;

    invoke-static {v0, v7, v1}, Lcom/google/android/finsky/utils/LibraryUtils;->getOwnerWithCurrentAccount(Ljava/util/List;Lcom/google/android/finsky/library/Libraries;Landroid/accounts/Account;)Landroid/accounts/Account;

    move-result-object v11

    .line 112
    .local v11, subscriptionOwner:Landroid/accounts/Account;
    if-eqz v11, :cond_4b

    .line 113
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryMagazinesViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {p0, p1, v0, v11}, Lcom/google/android/finsky/activities/DetailsSummaryMagazinesViewBinder;->configureLaunchButton(Landroid/widget/Button;Lcom/google/android/finsky/api/model/Document;Landroid/accounts/Account;)V

    .line 114
    const/4 v6, 0x1

    .line 126
    .end local v6           #hasActionButtons:Z
    :cond_32
    :goto_32
    return v6

    .line 100
    .end local v11           #subscriptionOwner:Landroid/accounts/Account;
    .restart local v6       #hasActionButtons:Z
    .restart local v9       #owner:Landroid/accounts/Account;
    :cond_33
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryMagazinesViewBinder;->mIssueDoc:Lcom/google/android/finsky/api/model/Document;

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsSummaryMagazinesViewBinder;->mDfeToc:Lcom/google/android/finsky/api/model/DfeToc;

    invoke-static {v0, v1, v8}, Lcom/google/android/finsky/utils/DocUtils;->getMagazineIssueOffer(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/library/Library;)Lcom/google/android/finsky/remoting/protos/Common$Offer;

    move-result-object v3

    .line 101
    .local v3, issueOffer:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    if-eqz v3, :cond_22

    .line 102
    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsSummaryMagazinesViewBinder;->mAccount:Landroid/accounts/Account;

    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsSummaryMagazinesViewBinder;->mIssueDoc:Lcom/google/android/finsky/api/model/Document;

    const v5, 0x7f070122

    move-object v0, p0

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/activities/DetailsSummaryMagazinesViewBinder;->setupSingleOfferButton(Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/remoting/protos/Common$Offer;Landroid/widget/Button;I)V

    .line 104
    const/4 v6, 0x1

    goto :goto_22

    .line 119
    .end local v3           #issueOffer:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    .end local v9           #owner:Landroid/accounts/Account;
    .restart local v11       #subscriptionOwner:Landroid/accounts/Account;
    :cond_4b
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryMagazinesViewBinder;->mSubscriptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    .line 121
    .local v10, subscriptionCount:I
    if-eqz v10, :cond_32

    .line 125
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryMagazinesViewBinder;->mAccount:Landroid/accounts/Account;

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsSummaryMagazinesViewBinder;->mSubscriptions:Ljava/util/List;

    invoke-direct {p0, v0, v1, p2}, Lcom/google/android/finsky/activities/DetailsSummaryMagazinesViewBinder;->setupSubscriptionListOfferButton(Landroid/accounts/Account;Ljava/util/List;Landroid/widget/Button;)V

    .line 126
    const/4 v6, 0x1

    goto :goto_32
.end method

.method protected setupActionButtons(Z)V
    .registers 4
    .parameter "isInTransientState"

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->setupActionButtons(Z)V

    .line 64
    const v1, 0x7f0800b0

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/activities/DetailsSummaryMagazinesViewBinder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 65
    .local v0, downloadButton:Landroid/widget/Button;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 66
    return-void
.end method

.method protected setupCreator(Lcom/google/android/finsky/layout/DecoratedTextView;)V
    .registers 3
    .parameter "creator"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryMagazinesViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getSubtitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/finsky/layout/DecoratedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    return-void
.end method

.method protected shouldDisplayOfferNote()Z
    .registers 5

    .prologue
    .line 73
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v0

    .line 74
    .local v0, libraries:Lcom/google/android/finsky/library/Libraries;
    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsSummaryMagazinesViewBinder;->mSubscriptions:Ljava/util/List;

    iget-object v3, p0, Lcom/google/android/finsky/activities/DetailsSummaryMagazinesViewBinder;->mAccount:Landroid/accounts/Account;

    invoke-static {v2, v0, v3}, Lcom/google/android/finsky/utils/LibraryUtils;->getOwnerWithCurrentAccount(Ljava/util/List;Lcom/google/android/finsky/library/Libraries;Landroid/accounts/Account;)Landroid/accounts/Account;

    move-result-object v1

    .line 76
    .local v1, owner:Landroid/accounts/Account;
    if-nez v1, :cond_14

    const/4 v2, 0x1

    :goto_13
    return v2

    :cond_14
    const/4 v2, 0x0

    goto :goto_13
.end method
