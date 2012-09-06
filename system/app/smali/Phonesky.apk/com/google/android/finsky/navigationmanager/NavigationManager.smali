.class public Lcom/google/android/finsky/navigationmanager/NavigationManager;
.super Ljava/lang/Object;
.source "NavigationManager.java"


# instance fields
.field private mActivity:Lcom/google/android/finsky/activities/MainActivity;

.field private final mBackStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/google/android/finsky/navigationmanager/NavigationState;",
            ">;"
        }
    .end annotation
.end field

.field private mFragmentManager:Landroid/support/v4/app/FragmentManager;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/activities/MainActivity;)V
    .registers 3
    .parameter "activity"

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Lcom/google/android/finsky/utils/MainThreadStack;

    invoke-direct {v0}, Lcom/google/android/finsky/utils/MainThreadStack;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mBackStack:Ljava/util/Stack;

    .line 72
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->init(Lcom/google/android/finsky/activities/MainActivity;)V

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/navigationmanager/NavigationManager;)Lcom/google/android/finsky/activities/MainActivity;
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/navigationmanager/NavigationManager;)Landroid/support/v4/app/FragmentManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    return-object v0
.end method

.method private canNavigate()Z
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/MainActivity;->isStateSaved()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private goToAggregatedHome()V
    .registers 2

    .prologue
    .line 155
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToAggregatedHome(Lcom/google/android/finsky/api/model/DfeToc;)V

    .line 156
    return-void
.end method

.method private goToCorpusHome()V
    .registers 11

    .prologue
    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 745
    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/MainActivity;->isStateSaved()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 802
    :cond_e
    :goto_e
    return-void

    .line 749
    :cond_f
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v4

    .line 750
    .local v4, dfeToc:Lcom/google/android/finsky/api/model/DfeToc;
    if-eqz v4, :cond_e

    .line 759
    invoke-virtual {p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getCurrentDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v9

    .line 760
    .local v9, currentDocument:Lcom/google/android/finsky/api/model/Document;
    :goto_1d
    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mBackStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_44

    .line 761
    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mBackStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/finsky/navigationmanager/NavigationState;

    .line 762
    .local v7, currTop:Lcom/google/android/finsky/navigationmanager/NavigationState;
    iget v8, v7, Lcom/google/android/finsky/navigationmanager/NavigationState;->pageType:I

    .line 763
    .local v8, currType:I
    if-ne v8, v1, :cond_41

    .line 764
    if-eqz v9, :cond_41

    invoke-virtual {v9}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v0

    if-ne v0, v1, :cond_41

    .line 766
    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    iget-object v1, v7, Lcom/google/android/finsky/navigationmanager/NavigationState;->backstackName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    goto :goto_e

    .line 770
    :cond_41
    const/4 v0, 0x2

    if-ne v8, v0, :cond_5c

    .line 783
    .end local v7           #currTop:Lcom/google/android/finsky/navigationmanager/NavigationState;
    .end local v8           #currType:I
    :cond_44
    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mBackStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_62

    .line 784
    iget-object v1, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mBackStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/navigationmanager/NavigationState;

    iget-object v0, v0, Lcom/google/android/finsky/navigationmanager/NavigationState;->backstackName:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    goto :goto_e

    .line 776
    .restart local v7       #currTop:Lcom/google/android/finsky/navigationmanager/NavigationState;
    .restart local v8       #currType:I
    :cond_5c
    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mBackStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto :goto_1d

    .line 787
    .end local v7           #currTop:Lcom/google/android/finsky/navigationmanager/NavigationState;
    .end local v8           #currType:I
    :cond_62
    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    iget-object v1, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryAt(I)Landroid/support/v4/app/FragmentManager$BackStackEntry;

    move-result-object v1

    invoke-interface {v1}, Landroid/support/v4/app/FragmentManager$BackStackEntry;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 789
    if-eqz v9, :cond_8c

    .line 790
    invoke-virtual {v9}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v3

    .line 791
    .local v3, backendId:I
    invoke-virtual {v4, v3}, Lcom/google/android/finsky/api/model/DfeToc;->getCorpus(I)Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;

    move-result-object v6

    .line 792
    .local v6, corpus:Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;
    if-eqz v6, :cond_8c

    .line 793
    invoke-virtual {v6}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->getLandingUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToCorpusHome(Ljava/lang/String;Ljava/lang/String;ILcom/google/android/finsky/api/model/DfeToc;Ljava/lang/String;)V

    goto :goto_e

    .line 800
    .end local v3           #backendId:I
    .end local v6           #corpus:Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;
    :cond_8c
    invoke-direct {p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToAggregatedHome()V

    goto/16 :goto_e
.end method

.method private goToDocPage(Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 17
    .parameter "doc"
    .parameter "originalUrl"
    .parameter "cookie"
    .parameter "referrerUrl"
    .parameter "externalReferrer"
    .parameter "continueUrl"
    .parameter "replaceTop"

    .prologue
    .line 271
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToDocPage(Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 273
    return-void
.end method

.method private goToDocPage(Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .registers 16
    .parameter "doc"
    .parameter "originalUrl"
    .parameter "cookie"
    .parameter "referrerUrl"
    .parameter "externalReferrer"
    .parameter "continueUrl"
    .parameter "returnAfterPurchase"
    .parameter "replaceTop"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x5

    .line 290
    invoke-direct {p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->canNavigate()Z

    move-result v3

    if-nez v3, :cond_9

    .line 334
    :goto_8
    return-void

    .line 294
    :cond_9
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v2

    .line 295
    .local v2, type:I
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v3

    if-ne v3, v5, :cond_21

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->hasAntennaInfo()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 296
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/finsky/activities/AntennaFragment;->newInstance(Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/activities/AntennaFragment;

    move-result-object v3

    invoke-direct {p0, v4, v3, p8}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->showPage(ILandroid/support/v4/app/Fragment;Z)V

    goto :goto_8

    .line 298
    :cond_21
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v3

    if-ne v3, v5, :cond_35

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->hasDealOfTheDayInfo()Z

    move-result v3

    if-eqz v3, :cond_35

    .line 299
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/finsky/activities/FreeSongOfTheDayFragment;->newInstance(Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/activities/FreeSongOfTheDayFragment;

    move-result-object v3

    invoke-direct {p0, v4, v3, p8}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->showPage(ILandroid/support/v4/app/Fragment;Z)V

    goto :goto_8

    .line 304
    :cond_35
    sparse-switch v2, :sswitch_data_68

    .line 322
    invoke-static/range {p1 .. p7}, Lcom/google/android/finsky/activities/DetailsFragment;->newInstance(Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/finsky/activities/DetailsFragment;

    move-result-object v0

    .line 330
    .local v0, detailsFragment:Lcom/google/android/finsky/activities/DetailsFragment;
    invoke-direct {p0, v4, v0, p8}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->showPage(ILandroid/support/v4/app/Fragment;Z)V

    goto :goto_8

    .line 311
    .end local v0           #detailsFragment:Lcom/google/android/finsky/activities/DetailsFragment;
    :sswitch_40
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->newInstance(Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/activities/CreatorDetailsFragment;

    move-result-object v3

    invoke-direct {p0, v4, v3, p8}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->showPage(ILandroid/support/v4/app/Fragment;Z)V

    goto :goto_8

    .line 315
    :sswitch_48
    iget-object v3, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    invoke-virtual {v3}, Lcom/google/android/finsky/activities/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 316
    .local v1, resources:Landroid/content/res/Resources;
    iget-object v3, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    invoke-virtual {v3}, Lcom/google/android/finsky/activities/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    const v4, 0x7f0700fe

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f07023a

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Lcom/google/android/finsky/activities/ErrorDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/finsky/activities/ErrorDialog;

    goto :goto_8

    .line 304
    nop

    :sswitch_data_68
    .sparse-switch
        0x3 -> :sswitch_40
        0x7 -> :sswitch_48
        0x8 -> :sswitch_40
        0x9 -> :sswitch_40
        0x12 -> :sswitch_40
        0x13 -> :sswitch_40
        0x14 -> :sswitch_40
    .end sparse-switch
.end method

.method private showPage(ILandroid/support/v4/app/Fragment;)V
    .registers 4
    .parameter "pageType"
    .parameter "fragment"

    .prologue
    .line 556
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->showPage(ILandroid/support/v4/app/Fragment;Z)V

    .line 557
    return-void
.end method

.method private showPage(ILandroid/support/v4/app/Fragment;Z)V
    .registers 7
    .parameter "pageType"
    .parameter "fragment"
    .parameter "replaceTop"

    .prologue
    .line 573
    invoke-static {}, Lcom/google/android/finsky/utils/FinskyLog;->startTiming()V

    .line 575
    iget-object v2, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 576
    .local v0, ft:Landroid/support/v4/app/FragmentTransaction;
    const v2, 0x7f080033

    invoke-virtual {v0, v2, p2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 578
    if-eqz p3, :cond_14

    .line 579
    invoke-virtual {p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->popBackStack()V

    .line 581
    :cond_14
    new-instance v1, Lcom/google/android/finsky/navigationmanager/NavigationState;

    invoke-direct {v1, p1}, Lcom/google/android/finsky/navigationmanager/NavigationState;-><init>(I)V

    .line 583
    .local v1, state:Lcom/google/android/finsky/navigationmanager/NavigationState;
    iget-object v2, v1, Lcom/google/android/finsky/navigationmanager/NavigationState;->backstackName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 584
    const/16 v2, 0x1001

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    .line 585
    iget-object v2, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mBackStack:Ljava/util/Stack;

    invoke-virtual {v2, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 588
    return-void
.end method


# virtual methods
.method public addOnBackStackChangedListener(Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 805
    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentManager;->addOnBackStackChangedListener(Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;)V

    .line 806
    return-void
.end method

.method public buy(Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15
    .parameter "account"
    .parameter "doc"
    .parameter "offerType"
    .parameter "referrerUrl"
    .parameter "externalReferrer"
    .parameter "continueUrl"

    .prologue
    .line 628
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->buy(Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 629
    return-void
.end method

.method public buy(Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 25
    .parameter "account"
    .parameter "doc"
    .parameter "offerType"
    .parameter "referrerUrl"
    .parameter "externalReferrer"
    .parameter "continueUrl"
    .parameter "returnAfterPurchase"

    .prologue
    .line 633
    invoke-virtual/range {p2 .. p3}, Lcom/google/android/finsky/api/model/Document;->needsConfirmation(I)Z

    move-result v5

    if-nez v5, :cond_14

    .line 634
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/finsky/utils/PurchaseInitiator;->makeFreePurchase(Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;ILjava/lang/String;Ljava/lang/String;)V

    .line 652
    :goto_13
    return-void

    .line 638
    :cond_14
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v16

    .line 639
    .local v16, contentType:I
    packed-switch v16, :pswitch_data_44

    :pswitch_1b
    goto :goto_13

    .line 650
    :pswitch_1c
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Unsupported backend for buy."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 645
    :pswitch_24
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/finsky/api/model/Document;->getDetailsUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/finsky/api/model/Document;->getCookie()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v8, p3

    move-object/from16 v9, p4

    move/from16 v11, p7

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    move/from16 v15, p7

    invoke-virtual/range {v5 .. v15}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToPurchase(Landroid/accounts/Account;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_13

    .line 639
    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_1b
        :pswitch_24
    .end packed-switch
.end method

.method public canGoUp()Z
    .registers 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 715
    iget-object v5, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mBackStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 737
    :cond_a
    :goto_a
    return v4

    .line 719
    :cond_b
    iget-object v5, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mBackStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/navigationmanager/NavigationState;

    .line 720
    .local v1, currentState:Lcom/google/android/finsky/navigationmanager/NavigationState;
    iget v5, v1, Lcom/google/android/finsky/navigationmanager/NavigationState;->pageType:I

    if-eq v5, v3, :cond_a

    .line 724
    iget v5, v1, Lcom/google/android/finsky/navigationmanager/NavigationState;->pageType:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1e

    move v4, v3

    .line 726
    goto :goto_a

    .line 729
    :cond_1e
    invoke-virtual {p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getActivePage()Lcom/google/android/finsky/fragments/PageFragment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/fragments/PageFragment;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v2

    .line 730
    .local v2, toc:Lcom/google/android/finsky/api/model/DfeToc;
    if-eqz v2, :cond_a

    .line 735
    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/DfeToc;->getCorpusList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    .line 737
    .local v0, corporaCount:I
    if-le v0, v3, :cond_34

    :goto_32
    move v4, v3

    goto :goto_a

    :cond_34
    move v3, v4

    goto :goto_32
.end method

.method public canSearch()Z
    .registers 2

    .prologue
    .line 822
    invoke-virtual {p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getCurrentPageType()I

    move-result v0

    packed-switch v0, :pswitch_data_c

    .line 826
    const/4 v0, 0x1

    :goto_8
    return v0

    .line 824
    :pswitch_9
    const/4 v0, 0x0

    goto :goto_8

    .line 822
    nop

    :pswitch_data_c
    .packed-switch 0x8
        :pswitch_9
    .end packed-switch
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 83
    :goto_0
    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mBackStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    .line 84
    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mBackStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 85
    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    goto :goto_0

    .line 87
    :cond_13
    return-void
.end method

.method public deserialize(Landroid/os/Bundle;)Z
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 445
    const-string v3, "nm_state"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 448
    .local v0, contents:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/navigationmanager/NavigationState;>;"
    if-eqz v0, :cond_14

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_14

    invoke-virtual {p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getActivePage()Lcom/google/android/finsky/fragments/PageFragment;

    move-result-object v3

    if-nez v3, :cond_16

    .line 451
    :cond_14
    const/4 v3, 0x0

    .line 464
    :goto_15
    return v3

    .line 454
    :cond_16
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/navigationmanager/NavigationState;

    .line 455
    .local v2, st:Lcom/google/android/finsky/navigationmanager/NavigationState;
    iget-object v3, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mBackStack:Ljava/util/Stack;

    invoke-virtual {v3, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1a

    .line 462
    .end local v2           #st:Lcom/google/android/finsky/navigationmanager/NavigationState;
    :cond_2c
    invoke-virtual {p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getActivePage()Lcom/google/android/finsky/fragments/PageFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/fragments/PageFragment;->rebindActionBar()V

    .line 464
    const/4 v3, 0x1

    goto :goto_15
.end method

.method public flush()Z
    .registers 2

    .prologue
    .line 818
    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    move-result v0

    return v0
.end method

.method public getActivePage()Lcom/google/android/finsky/fragments/PageFragment;
    .registers 3

    .prologue
    .line 492
    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    const v1, 0x7f080033

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/fragments/PageFragment;

    return-object v0
.end method

.method public getBuyImmediateClickListener(Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View$OnClickListener;
    .registers 15
    .parameter "account"
    .parameter "doc"
    .parameter "offerType"
    .parameter "referrerUrl"
    .parameter "externalReferrer"
    .parameter "continueUrl"

    .prologue
    .line 601
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getBuyImmediateClickListener(Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/View$OnClickListener;

    move-result-object v0

    return-object v0
.end method

.method public getBuyImmediateClickListener(Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/View$OnClickListener;
    .registers 17
    .parameter "account"
    .parameter "doc"
    .parameter "offerType"
    .parameter "referrerUrl"
    .parameter "externalReferrer"
    .parameter "continueUrl"
    .parameter "returnAfterPurchase"

    .prologue
    .line 608
    new-instance v0, Lcom/google/android/finsky/navigationmanager/NavigationManager$4;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/google/android/finsky/navigationmanager/NavigationManager$4;-><init>(Lcom/google/android/finsky/navigationmanager/NavigationManager;Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public getClickListener(Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)Landroid/view/View$OnClickListener;
    .registers 4
    .parameter "doc"
    .parameter "referrerUrl"

    .prologue
    .line 520
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->hasLinkAnnotation()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 521
    new-instance v0, Lcom/google/android/finsky/navigationmanager/NavigationManager$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/finsky/navigationmanager/NavigationManager$1;-><init>(Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/api/model/Document;)V

    .line 539
    :goto_b
    return-object v0

    .line 529
    :cond_c
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->hasContainerAnnotation()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getContainerAnnotation()Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->getBrowseUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 531
    new-instance v0, Lcom/google/android/finsky/navigationmanager/NavigationManager$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/finsky/navigationmanager/NavigationManager$2;-><init>(Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)V

    goto :goto_b

    .line 539
    :cond_26
    new-instance v0, Lcom/google/android/finsky/navigationmanager/NavigationManager$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/finsky/navigationmanager/NavigationManager$3;-><init>(Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)V

    goto :goto_b
.end method

.method public getCurrentDocument()Lcom/google/android/finsky/api/model/Document;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 676
    invoke-virtual {p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getActivePage()Lcom/google/android/finsky/fragments/PageFragment;

    move-result-object v0

    .line 677
    .local v0, active:Lcom/google/android/finsky/fragments/PageFragment;
    if-nez v0, :cond_8

    .line 683
    .end local v0           #active:Lcom/google/android/finsky/fragments/PageFragment;
    :cond_7
    :goto_7
    return-object v1

    .line 680
    .restart local v0       #active:Lcom/google/android/finsky/fragments/PageFragment;
    :cond_8
    instance-of v2, v0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;

    if-eqz v2, :cond_7

    .line 681
    check-cast v0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;

    .end local v0           #active:Lcom/google/android/finsky/fragments/PageFragment;
    invoke-virtual {v0}, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v1

    goto :goto_7
.end method

.method public getCurrentPageType()I
    .registers 2

    .prologue
    .line 391
    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mBackStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mBackStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/navigationmanager/NavigationState;

    iget v0, v0, Lcom/google/android/finsky/navigationmanager/NavigationState;->pageType:I

    goto :goto_9
.end method

.method public getOpenClickListener(Lcom/google/android/finsky/api/model/Document;Landroid/accounts/Account;)Landroid/view/View$OnClickListener;
    .registers 4
    .parameter "doc"
    .parameter "account"

    .prologue
    .line 660
    new-instance v0, Lcom/google/android/finsky/navigationmanager/NavigationManager$5;

    invoke-direct {v0, p0, p2, p1}, Lcom/google/android/finsky/navigationmanager/NavigationManager$5;-><init>(Lcom/google/android/finsky/navigationmanager/NavigationManager;Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;)V

    return-object v0
.end method

.method public goBack()Z
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 416
    iget-object v4, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    invoke-virtual {v4}, Lcom/google/android/finsky/activities/MainActivity;->isStateSaved()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 440
    :cond_d
    :goto_d
    return v3

    .line 421
    :cond_e
    :try_start_e
    invoke-static {}, Lcom/google/android/finsky/utils/FinskyLog;->startTiming()V

    .line 422
    iget-object v4, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mBackStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/navigationmanager/NavigationState;

    .line 423
    .local v0, currentEntry:Lcom/google/android/finsky/navigationmanager/NavigationState;
    iget-object v4, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 425
    iget-object v4, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mBackStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/navigationmanager/NavigationState;
    :try_end_26
    .catch Ljava/util/EmptyStackException; {:try_start_e .. :try_end_26} :catch_28

    .line 433
    .local v2, newStackEntry:Lcom/google/android/finsky/navigationmanager/NavigationState;
    const/4 v3, 0x1

    goto :goto_d

    .line 435
    .end local v0           #currentEntry:Lcom/google/android/finsky/navigationmanager/NavigationState;
    .end local v2           #newStackEntry:Lcom/google/android/finsky/navigationmanager/NavigationState;
    :catch_28
    move-exception v1

    .line 440
    .local v1, ex:Ljava/util/EmptyStackException;
    goto :goto_d
.end method

.method public goBrowse(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/finsky/api/model/DfeToc;)V
    .registers 8
    .parameter "url"
    .parameter "title"
    .parameter "backendId"
    .parameter "referrerBrowseUrl"
    .parameter "dfeToc"

    .prologue
    .line 169
    invoke-direct {p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->canNavigate()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 170
    const/4 v0, 0x4

    invoke-static {p1, p2, p3, p4, p5}, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/finsky/api/model/DfeToc;)Lcom/google/android/finsky/activities/TabbedBrowseFragment;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->showPage(ILandroid/support/v4/app/Fragment;)V

    .line 174
    :cond_e
    return-void
.end method

.method public goToAggregatedHome(Lcom/google/android/finsky/api/model/DfeToc;)V
    .registers 3
    .parameter "dfeToc"

    .prologue
    .line 148
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToAggregatedHome(Lcom/google/android/finsky/api/model/DfeToc;Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method public goToAggregatedHome(Lcom/google/android/finsky/api/model/DfeToc;Ljava/lang/String;)V
    .registers 10
    .parameter "dfeToc"
    .parameter "referrerUrl"

    .prologue
    const/4 v6, 0x1

    .line 112
    if-nez p1, :cond_4

    .line 140
    :goto_3
    return-void

    .line 115
    :cond_4
    invoke-direct {p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->canNavigate()Z

    move-result v3

    if-eqz v3, :cond_53

    .line 117
    invoke-virtual {p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->clear()V

    .line 118
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/DfeToc;->getCorpusList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v6, :cond_37

    .line 120
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/DfeToc;->getCorpusList()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;

    .line 121
    .local v0, corpusMetadata:Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->getLandingUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->getBackend()I

    move-result v5

    invoke-static {v3, v4, v5, p2, p1}, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/finsky/api/model/DfeToc;)Lcom/google/android/finsky/activities/TabbedBrowseFragment;

    move-result-object v1

    .line 124
    .local v1, fragment:Lcom/google/android/finsky/activities/TabbedBrowseFragment;
    const/4 v3, 0x2

    invoke-direct {p0, v3, v1, v6}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->showPage(ILandroid/support/v4/app/Fragment;Z)V

    goto :goto_3

    .line 127
    .end local v0           #corpusMetadata:Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;
    .end local v1           #fragment:Lcom/google/android/finsky/activities/TabbedBrowseFragment;
    :cond_37
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/DfeToc;->getHomeUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_49

    .line 128
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/DfeToc;->getHomeUrl()Ljava/lang/String;

    move-result-object v2

    .line 133
    .local v2, landingUrl:Ljava/lang/String;
    :goto_45
    invoke-virtual {p0, p1, v2, p2}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToAggregatedHome(Lcom/google/android/finsky/api/model/DfeToc;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 131
    .end local v2           #landingUrl:Ljava/lang/String;
    :cond_49
    const/4 v3, 0x3

    invoke-virtual {p1, v3}, Lcom/google/android/finsky/api/model/DfeToc;->getCorpus(I)Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->getLandingUrl()Ljava/lang/String;

    move-result-object v2

    .restart local v2       #landingUrl:Ljava/lang/String;
    goto :goto_45

    .line 138
    .end local v2           #landingUrl:Ljava/lang/String;
    :cond_53
    iget-object v3, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    invoke-virtual {v3}, Lcom/google/android/finsky/activities/MainActivity;->restartOnResume()V

    goto :goto_3
.end method

.method public goToAggregatedHome(Lcom/google/android/finsky/api/model/DfeToc;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "dfeToc"
    .parameter "landingUrl"
    .parameter "referrerUrl"

    .prologue
    const/4 v1, 0x1

    .line 143
    invoke-static {p1, p2, p3}, Lcom/google/android/finsky/activities/CorporaHomeFragment;->newInstance(Lcom/google/android/finsky/api/model/DfeToc;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/activities/CorporaHomeFragment;

    move-result-object v0

    invoke-direct {p0, v1, v0, v1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->showPage(ILandroid/support/v4/app/Fragment;Z)V

    .line 145
    return-void
.end method

.method public goToAllReviews(Lcom/google/android/finsky/api/model/Document;)V
    .registers 3
    .parameter "document"

    .prologue
    .line 177
    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/MainActivity;->isStateSaved()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 182
    :cond_c
    :goto_c
    return-void

    .line 181
    :cond_d
    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    invoke-static {v0, p1}, Lcom/google/android/finsky/activities/ReviewsActivity;->show(Landroid/content/Context;Lcom/google/android/finsky/api/model/Document;)V

    goto :goto_c
.end method

.method public goToCorpusHome(Ljava/lang/String;Ljava/lang/String;ILcom/google/android/finsky/api/model/DfeToc;Ljava/lang/String;)V
    .registers 8
    .parameter "url"
    .parameter "title"
    .parameter "backendId"
    .parameter "dfeToc"
    .parameter "referrerUrl"

    .prologue
    .line 160
    invoke-direct {p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->canNavigate()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 162
    const/4 v0, 0x2

    invoke-static {p1, p2, p3, p5, p4}, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/finsky/api/model/DfeToc;)Lcom/google/android/finsky/activities/TabbedBrowseFragment;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->showPage(ILandroid/support/v4/app/Fragment;)V

    .line 165
    :cond_e
    return-void
.end method

.method public goToDocPage(Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14
    .parameter "doc"
    .parameter "cookie"
    .parameter "referrerUrl"
    .parameter "externalReferrer"
    .parameter "continueUrl"

    .prologue
    .line 255
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getDetailsUrl()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToDocPage(Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 257
    return-void
.end method

.method public goToDocPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "url"
    .parameter "cookie"
    .parameter "referrerUrl"
    .parameter "externalReferrer"
    .parameter "continueUrl"

    .prologue
    .line 231
    invoke-direct {p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->canNavigate()Z

    move-result v0

    if-nez v0, :cond_7

    .line 237
    :goto_6
    return-void

    .line 234
    :cond_7
    const/4 v0, 0x6

    invoke-static {p1, p2, p3, p4, p5}, Lcom/google/android/finsky/utils/DetailsShimFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/utils/DetailsShimFragment;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->showPage(ILandroid/support/v4/app/Fragment;)V

    goto :goto_6
.end method

.method public goToDocPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 9
    .parameter "url"
    .parameter "cookie"
    .parameter "referrerUrl"
    .parameter "externalReferrer"
    .parameter "continueUrl"
    .parameter "returnAfterPurchase"

    .prologue
    .line 241
    invoke-direct {p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->canNavigate()Z

    move-result v0

    if-nez v0, :cond_7

    .line 247
    :goto_6
    return-void

    .line 244
    :cond_7
    const/4 v0, 0x6

    invoke-static/range {p1 .. p6}, Lcom/google/android/finsky/utils/DetailsShimFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/finsky/utils/DetailsShimFragment;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->showPage(ILandroid/support/v4/app/Fragment;)V

    goto :goto_6
.end method

.method public goToFlagContent(Ljava/lang/String;)V
    .registers 3
    .parameter "url"

    .prologue
    .line 220
    invoke-direct {p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->canNavigate()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 221
    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    invoke-static {v0, p1}, Lcom/google/android/finsky/activities/FlagItemDialog;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 223
    :cond_b
    return-void
.end method

.method public goToImagesLightbox(Lcom/google/android/finsky/api/model/Document;II)V
    .registers 5
    .parameter "doc"
    .parameter "initialIndex"
    .parameter "imageType"

    .prologue
    .line 353
    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/MainActivity;->isStateSaved()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 358
    :cond_c
    :goto_c
    return-void

    .line 357
    :cond_d
    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    invoke-static {v0, p1, p2, p3}, Lcom/google/android/finsky/activities/ScreenshotsActivity;->show(Landroid/content/Context;Lcom/google/android/finsky/api/model/Document;II)V

    goto :goto_c
.end method

.method public goToMyDownloads(Lcom/google/android/finsky/api/model/DfeToc;)V
    .registers 4
    .parameter "dfeToc"

    .prologue
    .line 185
    invoke-direct {p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->canNavigate()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 186
    const/4 v0, 0x3

    invoke-static {p1}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->newInstance(Lcom/google/android/finsky/api/model/DfeToc;)Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->showPage(ILandroid/support/v4/app/Fragment;)V

    .line 189
    :cond_e
    return-void
.end method

.method public goToMyWishlist()V
    .registers 3

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->canNavigate()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 193
    const/16 v0, 0xa

    new-instance v1, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;

    invoke-direct {v1}, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->showPage(ILandroid/support/v4/app/Fragment;)V

    .line 196
    :cond_10
    return-void
.end method

.method public goToPurchase(Landroid/accounts/Account;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 21
    .parameter "account"
    .parameter "url"
    .parameter "offerType"
    .parameter "referrerUrl"
    .parameter "listReferrerCookie"
    .parameter "externalReferrer"
    .parameter "continueUrl"
    .parameter "docIdToPurchase"
    .parameter "isSynchronous"

    .prologue
    .line 367
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    invoke-virtual/range {v0 .. v10}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToPurchase(Landroid/accounts/Account;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 369
    return-void
.end method

.method public goToPurchase(Landroid/accounts/Account;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 20
    .parameter "account"
    .parameter "url"
    .parameter "offerType"
    .parameter "referrerUrl"
    .parameter "listReferrerCookie"
    .parameter "isDirectLinkPurchase"
    .parameter "externalReferrer"
    .parameter "continueUrl"
    .parameter "docIdToPurchase"
    .parameter "isSynchronous"

    .prologue
    .line 378
    invoke-direct {p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->canNavigate()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 379
    if-eqz p10, :cond_19

    .line 380
    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    const/16 v8, 0x21

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p9

    invoke-static/range {v0 .. v8}, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->show(Landroid/app/Activity;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;I)V

    .line 388
    :cond_18
    :goto_18
    return-void

    .line 384
    :cond_19
    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    invoke-static/range {v0 .. v8}, Lcom/google/android/finsky/activities/PurchaseDialog;->show(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18
.end method

.method public goToScreenshots(Lcom/google/android/finsky/api/model/Document;I)V
    .registers 4
    .parameter "doc"
    .parameter "initialIndex"

    .prologue
    .line 342
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToImagesLightbox(Lcom/google/android/finsky/api/model/Document;II)V

    .line 343
    return-void
.end method

.method public goToSearch(Ljava/lang/String;ILjava/lang/String;)V
    .registers 5
    .parameter "query"
    .parameter "backend"
    .parameter "referrerUrl"

    .prologue
    .line 199
    invoke-static {p1, p2}, Lcom/google/android/finsky/api/DfeUtils;->formSearchUrl(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToSearch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    return-void
.end method

.method public goToSearch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "query"
    .parameter "searchUrl"
    .parameter "referrerUrl"

    .prologue
    .line 203
    invoke-direct {p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->canNavigate()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 204
    const/4 v0, 0x7

    invoke-static {p1, p2, p3}, Lcom/google/android/finsky/activities/SearchFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/activities/SearchFragment;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->showPage(ILandroid/support/v4/app/Fragment;Z)V

    .line 207
    :cond_f
    return-void
.end method

.method public goUp()V
    .registers 3

    .prologue
    .line 687
    iget-object v1, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    invoke-virtual {v1}, Lcom/google/android/finsky/activities/MainActivity;->isStateSaved()Z

    move-result v1

    if-nez v1, :cond_14

    iget-object v1, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mBackStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 708
    :cond_14
    :goto_14
    return-void

    .line 691
    :cond_15
    iget-object v1, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mBackStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/navigationmanager/NavigationState;

    .line 692
    .local v0, currentState:Lcom/google/android/finsky/navigationmanager/NavigationState;
    iget v1, v0, Lcom/google/android/finsky/navigationmanager/NavigationState;->pageType:I

    packed-switch v1, :pswitch_data_30

    :pswitch_22
    goto :goto_14

    .line 705
    :pswitch_23
    invoke-direct {p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToAggregatedHome()V

    goto :goto_14

    .line 699
    :pswitch_27
    invoke-direct {p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToCorpusHome()V

    goto :goto_14

    .line 702
    :pswitch_2b
    invoke-virtual {p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goBack()Z

    goto :goto_14

    .line 692
    nop

    :pswitch_data_30
    .packed-switch 0x2
        :pswitch_23
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_2b
        :pswitch_22
        :pswitch_27
    .end packed-switch
.end method

.method public handleDeepLink(Ljava/lang/String;)V
    .registers 4
    .parameter "url"

    .prologue
    .line 104
    const/16 v0, 0x9

    invoke-static {p1}, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->newInstance(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->showPage(ILandroid/support/v4/app/Fragment;)V

    .line 105
    return-void
.end method

.method public init(Lcom/google/android/finsky/activities/MainActivity;)V
    .registers 3
    .parameter "activity"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    .line 94
    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 95
    return-void
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 711
    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mBackStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public onPositiveClick(ILandroid/os/Bundle;)V
    .registers 9
    .parameter "requestCode"
    .parameter "extraArguments"

    .prologue
    const/4 v2, 0x0

    .line 503
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1b

    if-eqz p2, :cond_1b

    .line 504
    const-string v0, "dialog_details_url"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 505
    .local v1, detailsUrl:Ljava/lang/String;
    if-eqz v1, :cond_1b

    invoke-direct {p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->canNavigate()Z

    move-result v0

    if-eqz v0, :cond_1b

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 506
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToDocPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    .end local v1           #detailsUrl:Ljava/lang/String;
    :cond_1b
    return-void
.end method

.method public openItem(Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;)V
    .registers 6
    .parameter "account"
    .parameter "doc"

    .prologue
    .line 512
    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/google/android/finsky/navigationmanager/ConsumptionUtils;->openItem(Landroid/content/Context;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/FragmentManager;Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;)V

    .line 513
    return-void
.end method

.method public popBackStack()V
    .registers 2

    .prologue
    .line 592
    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mBackStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 593
    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mBackStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 595
    :cond_d
    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 596
    return-void
.end method

.method public refreshPage()V
    .registers 4

    .prologue
    .line 475
    iget-object v1, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mBackStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 489
    :goto_8
    return-void

    .line 479
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getActivePage()Lcom/google/android/finsky/fragments/PageFragment;

    move-result-object v0

    .line 480
    .local v0, active:Lcom/google/android/finsky/fragments/PageFragment;
    if-eqz v0, :cond_16

    .line 484
    invoke-virtual {v0}, Lcom/google/android/finsky/fragments/PageFragment;->refresh()V

    .line 485
    invoke-virtual {v0}, Lcom/google/android/finsky/fragments/PageFragment;->onDataChanged()V

    goto :goto_8

    .line 487
    :cond_16
    const-string v1, "Called refresh but there was no active page"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_8
.end method

.method public removeOnBackStackChangedListener(Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 809
    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentManager;->removeOnBackStackChangedListener(Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;)V

    .line 810
    return-void
.end method

.method public replaceDetailsShimWithDocPage(Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 17
    .parameter "doc"
    .parameter "originalUrl"
    .parameter "cookie"
    .parameter "referrerUrl"
    .parameter "externalReferrer"
    .parameter "continueUrl"
    .parameter "returnAfterPurchase"

    .prologue
    .line 265
    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToDocPage(Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 267
    return-void
.end method

.method public searchFromSuggestion(Ljava/lang/String;ILjava/lang/String;)V
    .registers 7
    .parameter "query"
    .parameter "backend"
    .parameter "referrerUrl"

    .prologue
    .line 210
    invoke-direct {p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->canNavigate()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 211
    const/4 v0, 0x7

    invoke-static {p1, p2}, Lcom/google/android/finsky/api/DfeUtils;->formSearchUrl(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, p3}, Lcom/google/android/finsky/activities/SearchFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/activities/SearchFragment;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->showPage(ILandroid/support/v4/app/Fragment;Z)V

    .line 214
    :cond_13
    return-void
.end method

.method public serialize(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 408
    iget-object v1, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mBackStack:Ljava/util/Stack;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mBackStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 413
    :cond_c
    :goto_c
    return-void

    .line 411
    :cond_d
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mBackStack:Ljava/util/Stack;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 412
    .local v0, asList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/finsky/navigationmanager/NavigationState;>;"
    const-string v1, "nm_state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_c
.end method

.method public showAppNeededDialog(I)V
    .registers 5
    .parameter "docBackend"

    .prologue
    .line 496
    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-static {v0, v1, v2, p1}, Lcom/google/android/finsky/navigationmanager/ConsumptionUtils;->showAppNeededDialog(Landroid/content/Context;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/FragmentManager;I)V

    .line 497
    return-void
.end method

.method public terminate()V
    .registers 2

    .prologue
    .line 399
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    .line 400
    return-void
.end method
