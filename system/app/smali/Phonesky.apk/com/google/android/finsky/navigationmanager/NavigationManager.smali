.class public Lcom/google/android/finsky/navigationmanager/NavigationManager;
.super Ljava/lang/Object;
.source "NavigationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/navigationmanager/NavigationManager$6;
    }
.end annotation


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
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Lcom/google/android/finsky/utils/MainThreadStack;

    invoke-direct {v0}, Lcom/google/android/finsky/utils/MainThreadStack;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mBackStack:Ljava/util/Stack;

    .line 79
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->init(Lcom/google/android/finsky/activities/MainActivity;)V

    .line 80
    return-void
.end method

.method private canNavigate()Z
    .registers 2

    .prologue
    .line 107
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

.method private getConsumptionAppPackageName(I)Ljava/lang/String;
    .registers 3
    .parameter "docBackend"

    .prologue
    .line 473
    packed-switch p1, :pswitch_data_e

    .line 481
    :pswitch_3
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 475
    :pswitch_5
    const-string v0, "com.google.android.apps.books"

    goto :goto_4

    .line 477
    :pswitch_8
    const-string v0, "com.google.android.videos"

    goto :goto_4

    .line 479
    :pswitch_b
    const-string v0, "com.google.android.music"

    goto :goto_4

    .line 473
    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_5
        :pswitch_b
        :pswitch_3
        :pswitch_8
    .end packed-switch
.end method

.method private getConsumptionAppRequiredString(I)I
    .registers 3
    .parameter "docBackend"

    .prologue
    .line 486
    packed-switch p1, :pswitch_data_12

    .line 494
    :pswitch_3
    const/4 v0, -0x1

    :goto_4
    return v0

    .line 488
    :pswitch_5
    const v0, 0x7f0701a8

    goto :goto_4

    .line 490
    :pswitch_9
    const v0, 0x7f0701aa

    goto :goto_4

    .line 492
    :pswitch_d
    const v0, 0x7f0701ab

    goto :goto_4

    .line 486
    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_5
        :pswitch_d
        :pswitch_3
        :pswitch_9
    .end packed-switch
.end method

.method public static getConsumptionIntent(Landroid/content/Context;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)Landroid/content/Intent;
    .registers 8
    .parameter "context"
    .parameter "doc"
    .parameter "accountName"

    .prologue
    const/4 v2, 0x0

    .line 574
    if-nez p1, :cond_4

    .line 593
    :cond_3
    :goto_3
    return-object v2

    .line 580
    :cond_4
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v0

    .line 581
    .local v0, contentType:I
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getBackendDocId()Ljava/lang/String;

    move-result-object v1

    .line 582
    .local v1, id:Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 586
    packed-switch v0, :pswitch_data_3c

    .line 596
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot open an item from the corpus "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 590
    :pswitch_2a
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {v2, p1, p2}, Lcom/google/android/finsky/utils/IntentUtils;->buildConsumptionAppViewItemIntent(Landroid/content/pm/PackageManager;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    goto :goto_3

    .line 593
    :pswitch_33
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {v2, p1, p2}, Lcom/google/android/finsky/utils/IntentUtils;->buildConsumptionAppViewItemIntent(Landroid/content/pm/PackageManager;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    goto :goto_3

    .line 586
    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_33
        :pswitch_2a
        :pswitch_2a
    .end packed-switch
.end method

.method private goToAggregatedHome()V
    .registers 2

    .prologue
    .line 163
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToAggregatedHome(Lcom/google/android/finsky/api/model/DfeToc;)V

    .line 164
    return-void
.end method

.method private goToCorpusHome()V
    .registers 7

    .prologue
    .line 809
    iget-object v4, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    invoke-virtual {v4}, Lcom/google/android/finsky/activities/MainActivity;->isStateSaved()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 850
    :cond_c
    :goto_c
    return-void

    .line 813
    :cond_d
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v3

    .line 814
    .local v3, dfeToc:Lcom/google/android/finsky/api/model/DfeToc;
    if-eqz v3, :cond_c

    .line 823
    :goto_17
    iget-object v4, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mBackStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_34

    iget-object v4, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mBackStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lcom/google/android/finsky/navigationmanager/NavigationState;->CORPUS_HOME:Lcom/google/android/finsky/navigationmanager/NavigationState;

    if-eq v4, v5, :cond_34

    .line 827
    iget-object v4, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mBackStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 828
    iget-object v4, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    goto :goto_17

    .line 836
    :cond_34
    iget-object v4, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mBackStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 837
    invoke-virtual {p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getCurrentDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v2

    .line 838
    .local v2, currentDocument:Lcom/google/android/finsky/api/model/Document;
    if-eqz v2, :cond_58

    .line 839
    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v0

    .line 840
    .local v0, backendId:I
    invoke-virtual {v3, v0}, Lcom/google/android/finsky/api/model/DfeToc;->getCorpus(I)Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;

    move-result-object v1

    .line 841
    .local v1, corpus:Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;
    if-eqz v1, :cond_58

    .line 842
    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->getLandingUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5, v0, v3}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToCorpusHome(Ljava/lang/String;Ljava/lang/String;ILcom/google/android/finsky/api/model/DfeToc;)V

    goto :goto_c

    .line 848
    .end local v0           #backendId:I
    .end local v1           #corpus:Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;
    :cond_58
    invoke-direct {p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToAggregatedHome()V

    goto :goto_c
.end method

.method private goToDocPage(Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 13
    .parameter "doc"
    .parameter "originalUrl"
    .parameter "cookie"
    .parameter "referrerUrl"
    .parameter "externalReferrer"
    .parameter "replaceTop"

    .prologue
    const/4 v3, 0x2

    .line 273
    invoke-direct {p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->canNavigate()Z

    move-result v2

    if-nez v2, :cond_8

    .line 307
    :goto_7
    return-void

    .line 277
    :cond_8
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v1

    .line 278
    .local v1, type:I
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v2

    if-ne v2, v3, :cond_22

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->hasAntennaInfo()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 279
    sget-object v2, Lcom/google/android/finsky/navigationmanager/NavigationState;->DETAILS:Lcom/google/android/finsky/navigationmanager/NavigationState;

    invoke-static {p1, p2, p3, p4}, Lcom/google/android/finsky/activities/AntennaFragment;->newInstance(Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/activities/AntennaFragment;

    move-result-object v3

    invoke-direct {p0, v2, v3, p6}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->showPage(Lcom/google/android/finsky/navigationmanager/NavigationState;Landroid/support/v4/app/Fragment;Z)V

    goto :goto_7

    .line 281
    :cond_22
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v2

    if-ne v2, v3, :cond_38

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->hasDealOfTheDayInfo()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 282
    sget-object v2, Lcom/google/android/finsky/navigationmanager/NavigationState;->DETAILS:Lcom/google/android/finsky/navigationmanager/NavigationState;

    invoke-static {p1, p2, p3, p4}, Lcom/google/android/finsky/activities/FreeSongOfTheDayFragment;->newInstance(Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/activities/FreeSongOfTheDayFragment;

    move-result-object v3

    invoke-direct {p0, v2, v3, p6}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->showPage(Lcom/google/android/finsky/navigationmanager/NavigationState;Landroid/support/v4/app/Fragment;Z)V

    goto :goto_7

    .line 287
    :cond_38
    packed-switch v1, :pswitch_data_6e

    .line 302
    :pswitch_3b
    sget-object v2, Lcom/google/android/finsky/navigationmanager/NavigationState;->DETAILS:Lcom/google/android/finsky/navigationmanager/NavigationState;

    invoke-static {p1, p2, p3, p4, p5}, Lcom/google/android/finsky/activities/DetailsFragment;->newInstance(Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/activities/DetailsFragment;

    move-result-object v3

    invoke-direct {p0, v2, v3, p6}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->showPage(Lcom/google/android/finsky/navigationmanager/NavigationState;Landroid/support/v4/app/Fragment;Z)V

    goto :goto_7

    .line 291
    :pswitch_45
    sget-object v2, Lcom/google/android/finsky/navigationmanager/NavigationState;->DETAILS:Lcom/google/android/finsky/navigationmanager/NavigationState;

    invoke-static {p1, p2, p3, p4}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->newInstance(Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/activities/CreatorDetailsFragment;

    move-result-object v3

    invoke-direct {p0, v2, v3, p6}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->showPage(Lcom/google/android/finsky/navigationmanager/NavigationState;Landroid/support/v4/app/Fragment;Z)V

    goto :goto_7

    .line 295
    :pswitch_4f
    iget-object v2, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    invoke-virtual {v2}, Lcom/google/android/finsky/activities/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 296
    .local v0, resources:Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    invoke-virtual {v2}, Lcom/google/android/finsky/activities/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const v3, 0x7f0700ef

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f070201

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/google/android/finsky/activities/ErrorDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/finsky/activities/ErrorDialog;

    goto :goto_7

    .line 287
    :pswitch_data_6e
    .packed-switch 0x3
        :pswitch_45
        :pswitch_3b
        :pswitch_3b
        :pswitch_3b
        :pswitch_4f
        :pswitch_45
        :pswitch_45
    .end packed-switch
.end method

.method private isConsumptionAppNeeded(Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)Z
    .registers 10
    .parameter "doc"
    .parameter "accountName"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 450
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getConsumptionAppPackageName(I)Ljava/lang/String;

    move-result-object v2

    .line 452
    .local v2, packageName:Ljava/lang/String;
    if-nez v2, :cond_e

    move v4, v5

    .line 468
    :cond_d
    :goto_d
    return v4

    .line 457
    :cond_e
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/finsky/FinskyApp;->getPackageInfoCache()Lcom/google/android/finsky/utils/PackageInfoCache;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/google/android/finsky/utils/PackageInfoCache;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 462
    iget-object v6, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    invoke-static {v6, p1, p2}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getConsumptionIntent(Landroid/content/Context;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 463
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_d

    .line 466
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/finsky/FinskyApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 467
    .local v3, pm:Landroid/content/pm/PackageManager;
    invoke-static {v3, v1}, Lcom/google/android/finsky/utils/IntentUtils;->canResolveIntent(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Z

    move-result v0

    .line 468
    .local v0, installed:Z
    if-eqz v0, :cond_d

    move v4, v5

    goto :goto_d
.end method

.method private showPage(Lcom/google/android/finsky/navigationmanager/NavigationState;Landroid/support/v4/app/Fragment;)V
    .registers 4
    .parameter "state"
    .parameter "fragment"

    .prologue
    .line 642
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->showPage(Lcom/google/android/finsky/navigationmanager/NavigationState;Landroid/support/v4/app/Fragment;Z)V

    .line 643
    return-void
.end method

.method private showPage(Lcom/google/android/finsky/navigationmanager/NavigationState;Landroid/support/v4/app/Fragment;Z)V
    .registers 6
    .parameter "state"
    .parameter "fragment"
    .parameter "replaceTop"

    .prologue
    .line 659
    invoke-static {}, Lcom/google/android/finsky/utils/FinskyLog;->startTiming()V

    .line 661
    iget-object v1, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 662
    .local v0, ft:Landroid/support/v4/app/FragmentTransaction;
    const v1, 0x7f08003e

    invoke-virtual {v0, v1, p2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 664
    if-eqz p3, :cond_14

    .line 665
    invoke-virtual {p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->popBackStack()V

    .line 669
    :cond_14
    const-string v1, "unused name"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 670
    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    .line 671
    iget-object v1, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mBackStack:Ljava/util/Stack;

    invoke-virtual {v1, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 673
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 674
    return-void
.end method


# virtual methods
.method public addOnBackStackChangedListener(Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 887
    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentManager;->addOnBackStackChangedListener(Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;)V

    .line 888
    return-void
.end method

.method public buy(Lcom/google/android/finsky/api/model/Document;ILjava/lang/String;Ljava/lang/String;)V
    .registers 13
    .parameter "doc"
    .parameter "offerType"
    .parameter "referrerUrl"
    .parameter "externalReferrer"

    .prologue
    .line 703
    invoke-virtual {p1, p2}, Lcom/google/android/finsky/api/model/Document;->needsConfirmation(I)Z

    move-result v0

    if-nez v0, :cond_a

    .line 704
    invoke-static {p0, p1, p2, p4}, Lcom/google/android/finsky/utils/PurchaseInitiator;->makeFreePurchase(Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/api/model/Document;ILjava/lang/String;)V

    .line 719
    :goto_9
    return-void

    .line 707
    :cond_a
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v7

    .line 708
    .local v7, contentType:I
    packed-switch v7, :pswitch_data_2e

    goto :goto_9

    .line 717
    :pswitch_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported backend for buy."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 713
    :pswitch_1a
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getDetailsUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getCookie()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToPurchase(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 708
    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_12
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
    .end packed-switch
.end method

.method public canGoUp()Z
    .registers 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 780
    iget-object v5, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mBackStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 802
    :cond_a
    :goto_a
    return v4

    .line 784
    :cond_b
    iget-object v5, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mBackStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/navigationmanager/NavigationState;

    .line 785
    .local v1, currentState:Lcom/google/android/finsky/navigationmanager/NavigationState;
    sget-object v5, Lcom/google/android/finsky/navigationmanager/NavigationState;->AGGREGATED_HOME:Lcom/google/android/finsky/navigationmanager/NavigationState;

    if-eq v1, v5, :cond_a

    .line 789
    sget-object v5, Lcom/google/android/finsky/navigationmanager/NavigationState;->CORPUS_HOME:Lcom/google/android/finsky/navigationmanager/NavigationState;

    if-eq v1, v5, :cond_1d

    move v4, v3

    .line 791
    goto :goto_a

    .line 794
    :cond_1d
    invoke-virtual {p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getActivePage()Lcom/google/android/finsky/fragments/PageFragment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/fragments/PageFragment;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v2

    .line 795
    .local v2, toc:Lcom/google/android/finsky/api/model/DfeToc;
    if-eqz v2, :cond_a

    .line 800
    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/DfeToc;->getCorpusList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    .line 802
    .local v0, corporaCount:I
    if-le v0, v3, :cond_33

    :goto_31
    move v4, v3

    goto :goto_a

    :cond_33
    move v3, v4

    goto :goto_31
.end method

.method public canSearch()Z
    .registers 3

    .prologue
    .line 904
    sget-object v0, Lcom/google/android/finsky/navigationmanager/NavigationManager$6;->$SwitchMap$com$google$android$finsky$navigationmanager$NavigationState:[I

    invoke-virtual {p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getCurrentPageType()Lcom/google/android/finsky/navigationmanager/NavigationState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/navigationmanager/NavigationState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_14

    .line 908
    const/4 v0, 0x1

    :goto_10
    return v0

    .line 906
    :pswitch_11
    const/4 v0, 0x0

    goto :goto_10

    .line 904
    nop

    :pswitch_data_14
    .packed-switch 0x6
        :pswitch_11
    .end packed-switch
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 90
    :goto_0
    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mBackStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    .line 91
    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mBackStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 92
    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    goto :goto_0

    .line 94
    :cond_13
    return-void
.end method

.method public deserialize(Landroid/os/Bundle;)Z
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 399
    const-string v3, "nm_state"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 402
    .local v0, contents:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/navigationmanager/NavigationState;>;"
    if-eqz v0, :cond_14

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_14

    invoke-virtual {p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getActivePage()Lcom/google/android/finsky/fragments/PageFragment;

    move-result-object v3

    if-nez v3, :cond_16

    .line 405
    :cond_14
    const/4 v3, 0x0

    .line 418
    :goto_15
    return v3

    .line 408
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

    .line 409
    .local v2, st:Lcom/google/android/finsky/navigationmanager/NavigationState;
    iget-object v3, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mBackStack:Ljava/util/Stack;

    invoke-virtual {v3, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1a

    .line 416
    .end local v2           #st:Lcom/google/android/finsky/navigationmanager/NavigationState;
    :cond_2c
    invoke-virtual {p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getActivePage()Lcom/google/android/finsky/fragments/PageFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/fragments/PageFragment;->rebindActionBar()V

    .line 418
    const/4 v3, 0x1

    goto :goto_15
.end method

.method public flush()Z
    .registers 2

    .prologue
    .line 900
    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    move-result v0

    return v0
.end method

.method public getActivePage()Lcom/google/android/finsky/fragments/PageFragment;
    .registers 3

    .prologue
    .line 446
    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    const v1, 0x7f08003e

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/fragments/PageFragment;

    return-object v0
.end method

.method public getBuyImmediateClickListener(Lcom/google/android/finsky/api/model/Document;ILjava/lang/String;Ljava/lang/String;)Landroid/view/View$OnClickListener;
    .registers 11
    .parameter "doc"
    .parameter "offerType"
    .parameter "referrerUrl"
    .parameter "externalReferrer"

    .prologue
    .line 686
    new-instance v0, Lcom/google/android/finsky/navigationmanager/NavigationManager$4;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/navigationmanager/NavigationManager$4;-><init>(Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/api/model/Document;ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getClickListener(Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)Landroid/view/View$OnClickListener;
    .registers 4
    .parameter "doc"
    .parameter "referrerUrl"

    .prologue
    .line 606
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->hasLinkAnnotation()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 607
    new-instance v0, Lcom/google/android/finsky/navigationmanager/NavigationManager$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/finsky/navigationmanager/NavigationManager$1;-><init>(Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/api/model/Document;)V

    .line 625
    :goto_b
    return-object v0

    .line 615
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

    .line 617
    new-instance v0, Lcom/google/android/finsky/navigationmanager/NavigationManager$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/finsky/navigationmanager/NavigationManager$2;-><init>(Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)V

    goto :goto_b

    .line 625
    :cond_26
    new-instance v0, Lcom/google/android/finsky/navigationmanager/NavigationManager$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/finsky/navigationmanager/NavigationManager$3;-><init>(Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)V

    goto :goto_b
.end method

.method public getCurrentDocument()Lcom/google/android/finsky/api/model/Document;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 742
    invoke-virtual {p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getActivePage()Lcom/google/android/finsky/fragments/PageFragment;

    move-result-object v0

    .line 743
    .local v0, active:Lcom/google/android/finsky/fragments/PageFragment;
    if-nez v0, :cond_8

    .line 749
    .end local v0           #active:Lcom/google/android/finsky/fragments/PageFragment;
    :cond_7
    :goto_7
    return-object v1

    .line 746
    .restart local v0       #active:Lcom/google/android/finsky/fragments/PageFragment;
    :cond_8
    instance-of v2, v0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;

    if-eqz v2, :cond_7

    .line 747
    check-cast v0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;

    .end local v0           #active:Lcom/google/android/finsky/fragments/PageFragment;
    invoke-virtual {v0}, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v1

    goto :goto_7
.end method

.method public getCurrentPageType()Lcom/google/android/finsky/navigationmanager/NavigationState;
    .registers 2

    .prologue
    .line 346
    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mBackStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/google/android/finsky/navigationmanager/NavigationState;->INITIAL:Lcom/google/android/finsky/navigationmanager/NavigationState;

    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mBackStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/navigationmanager/NavigationState;

    goto :goto_a
.end method

.method public getOpenClickListener(Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)Landroid/view/View$OnClickListener;
    .registers 4
    .parameter "doc"
    .parameter "accountName"

    .prologue
    .line 726
    new-instance v0, Lcom/google/android/finsky/navigationmanager/NavigationManager$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/finsky/navigationmanager/NavigationManager$5;-><init>(Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)V

    return-object v0
.end method

.method public goBack()Z
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 370
    iget-object v4, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    invoke-virtual {v4}, Lcom/google/android/finsky/activities/MainActivity;->isStateSaved()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 394
    :cond_d
    :goto_d
    return v3

    .line 375
    :cond_e
    :try_start_e
    invoke-static {}, Lcom/google/android/finsky/utils/FinskyLog;->startTiming()V

    .line 376
    iget-object v4, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mBackStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/navigationmanager/NavigationState;

    .line 377
    .local v0, currentEntry:Lcom/google/android/finsky/navigationmanager/NavigationState;
    iget-object v4, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 379
    iget-object v4, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mBackStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/navigationmanager/NavigationState;
    :try_end_26
    .catch Ljava/util/EmptyStackException; {:try_start_e .. :try_end_26} :catch_28

    .line 387
    .local v2, newStackEntry:Lcom/google/android/finsky/navigationmanager/NavigationState;
    const/4 v3, 0x1

    goto :goto_d

    .line 389
    .end local v0           #currentEntry:Lcom/google/android/finsky/navigationmanager/NavigationState;
    .end local v2           #newStackEntry:Lcom/google/android/finsky/navigationmanager/NavigationState;
    :catch_28
    move-exception v1

    .line 394
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
    .line 181
    invoke-direct {p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->canNavigate()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 182
    sget-object v0, Lcom/google/android/finsky/navigationmanager/NavigationState;->BROWSE:Lcom/google/android/finsky/navigationmanager/NavigationState;

    invoke-static {p1, p2, p3, p4, p5}, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/finsky/api/model/DfeToc;)Lcom/google/android/finsky/activities/TabbedBrowseFragment;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->showPage(Lcom/google/android/finsky/navigationmanager/NavigationState;Landroid/support/v4/app/Fragment;)V

    .line 186
    :cond_f
    return-void
.end method

.method public goToAggregatedHome(Lcom/google/android/finsky/api/model/DfeToc;)V
    .registers 3
    .parameter "dfeToc"

    .prologue
    .line 156
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToAggregatedHome(Lcom/google/android/finsky/api/model/DfeToc;Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method public goToAggregatedHome(Lcom/google/android/finsky/api/model/DfeToc;Ljava/lang/String;)V
    .registers 10
    .parameter "dfeToc"
    .parameter "referrerUrl"

    .prologue
    const/4 v6, 0x1

    .line 124
    if-nez p1, :cond_4

    .line 153
    :goto_3
    return-void

    .line 127
    :cond_4
    invoke-direct {p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->canNavigate()Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 129
    invoke-virtual {p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->clear()V

    .line 130
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/DfeToc;->getCorpusList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v6, :cond_38

    .line 132
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/DfeToc;->getCorpusList()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;

    .line 133
    .local v0, corpusMetadata:Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->getLandingUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->getBackend()I

    move-result v5

    invoke-static {v3, v4, v5, p2, p1}, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/finsky/api/model/DfeToc;)Lcom/google/android/finsky/activities/TabbedBrowseFragment;

    move-result-object v1

    .line 136
    .local v1, fragment:Lcom/google/android/finsky/activities/TabbedBrowseFragment;
    sget-object v3, Lcom/google/android/finsky/navigationmanager/NavigationState;->CORPUS_HOME:Lcom/google/android/finsky/navigationmanager/NavigationState;

    invoke-direct {p0, v3, v1, v6}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->showPage(Lcom/google/android/finsky/navigationmanager/NavigationState;Landroid/support/v4/app/Fragment;Z)V

    goto :goto_3

    .line 139
    .end local v0           #corpusMetadata:Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;
    .end local v1           #fragment:Lcom/google/android/finsky/activities/TabbedBrowseFragment;
    :cond_38
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/DfeToc;->getHomeUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_50

    .line 140
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/DfeToc;->getHomeUrl()Ljava/lang/String;

    move-result-object v2

    .line 145
    .local v2, landingUrl:Ljava/lang/String;
    :goto_46
    sget-object v3, Lcom/google/android/finsky/navigationmanager/NavigationState;->AGGREGATED_HOME:Lcom/google/android/finsky/navigationmanager/NavigationState;

    invoke-static {p1, v2, p2}, Lcom/google/android/finsky/activities/CorporaHomeFragment;->newInstance(Lcom/google/android/finsky/api/model/DfeToc;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/activities/CorporaHomeFragment;

    move-result-object v4

    invoke-direct {p0, v3, v4, v6}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->showPage(Lcom/google/android/finsky/navigationmanager/NavigationState;Landroid/support/v4/app/Fragment;Z)V

    goto :goto_3

    .line 143
    .end local v2           #landingUrl:Ljava/lang/String;
    :cond_50
    const/4 v3, 0x3

    invoke-virtual {p1, v3}, Lcom/google/android/finsky/api/model/DfeToc;->getCorpus(I)Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->getLandingUrl()Ljava/lang/String;

    move-result-object v2

    .restart local v2       #landingUrl:Ljava/lang/String;
    goto :goto_46

    .line 151
    .end local v2           #landingUrl:Ljava/lang/String;
    :cond_5a
    iget-object v3, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    invoke-virtual {v3}, Lcom/google/android/finsky/activities/MainActivity;->restartOnResume()V

    goto :goto_3
.end method

.method public goToAllReviews(Lcom/google/android/finsky/api/model/Document;)V
    .registers 3
    .parameter "document"

    .prologue
    .line 189
    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/MainActivity;->isStateSaved()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 194
    :cond_c
    :goto_c
    return-void

    .line 193
    :cond_d
    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    invoke-static {v0, p1}, Lcom/google/android/finsky/activities/ReviewsActivity;->show(Landroid/content/Context;Lcom/google/android/finsky/api/model/Document;)V

    goto :goto_c
.end method

.method public goToCorpusHome(Ljava/lang/String;Ljava/lang/String;ILcom/google/android/finsky/api/model/DfeToc;)V
    .registers 11
    .parameter "url"
    .parameter "title"
    .parameter "backendId"
    .parameter "dfeToc"

    .prologue
    .line 176
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToCorpusHome(Ljava/lang/String;Ljava/lang/String;ILcom/google/android/finsky/api/model/DfeToc;Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method public goToCorpusHome(Ljava/lang/String;Ljava/lang/String;ILcom/google/android/finsky/api/model/DfeToc;Ljava/lang/String;)V
    .registers 8
    .parameter "url"
    .parameter "title"
    .parameter "backendId"
    .parameter "dfeToc"
    .parameter "referrerUrl"

    .prologue
    .line 168
    invoke-direct {p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->canNavigate()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 170
    sget-object v0, Lcom/google/android/finsky/navigationmanager/NavigationState;->CORPUS_HOME:Lcom/google/android/finsky/navigationmanager/NavigationState;

    invoke-static {p1, p2, p3, p5, p4}, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/finsky/api/model/DfeToc;)Lcom/google/android/finsky/activities/TabbedBrowseFragment;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->showPage(Lcom/google/android/finsky/navigationmanager/NavigationState;Landroid/support/v4/app/Fragment;)V

    .line 173
    :cond_f
    return-void
.end method

.method public goToDocPage(Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .parameter "doc"
    .parameter "cookie"
    .parameter "referrerUrl"
    .parameter "externalReferrer"

    .prologue
    .line 250
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getDetailsUrl()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToDocPage(Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 251
    return-void
.end method

.method public goToDocPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "url"
    .parameter "cookie"
    .parameter "referrerUrl"
    .parameter "externalReferrer"

    .prologue
    .line 237
    invoke-direct {p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->canNavigate()Z

    move-result v0

    if-nez v0, :cond_7

    .line 242
    :goto_6
    return-void

    .line 240
    :cond_7
    sget-object v0, Lcom/google/android/finsky/navigationmanager/NavigationState;->DETAILS_SHIM:Lcom/google/android/finsky/navigationmanager/NavigationState;

    invoke-static {p1, p2, p3, p4}, Lcom/google/android/finsky/utils/DetailsShimFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/utils/DetailsShimFragment;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->showPage(Lcom/google/android/finsky/navigationmanager/NavigationState;Landroid/support/v4/app/Fragment;)V

    goto :goto_6
.end method

.method public goToFlagContent(Ljava/lang/String;)V
    .registers 3
    .parameter "url"

    .prologue
    .line 226
    invoke-direct {p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->canNavigate()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 227
    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    invoke-static {v0, p1}, Lcom/google/android/finsky/activities/FlagItemDialog;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 229
    :cond_b
    return-void
.end method

.method public goToMyDownloads()V
    .registers 3

    .prologue
    .line 197
    invoke-direct {p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->canNavigate()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 198
    sget-object v0, Lcom/google/android/finsky/navigationmanager/NavigationState;->MY_DOWNLOADS:Lcom/google/android/finsky/navigationmanager/NavigationState;

    invoke-static {}, Lcom/google/android/finsky/activities/MyDownloadsFragment;->newInstance()Lcom/google/android/finsky/activities/MyDownloadsFragment;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->showPage(Lcom/google/android/finsky/navigationmanager/NavigationState;Landroid/support/v4/app/Fragment;)V

    .line 200
    :cond_f
    return-void
.end method

.method public goToPurchase(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15
    .parameter "url"
    .parameter "offerType"
    .parameter "referrerUrl"
    .parameter "listReferrerCookie"
    .parameter "externalReferrer"
    .parameter "docIdToPurchase"

    .prologue
    .line 328
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToPurchase(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    return-void
.end method

.method public goToPurchase(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 16
    .parameter "url"
    .parameter "offerType"
    .parameter "isDirectLink"
    .parameter "referrerUrl"
    .parameter "listReferrerCookie"
    .parameter "externalReferrer"
    .parameter "docIdToPurchase"

    .prologue
    .line 339
    invoke-direct {p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->canNavigate()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 340
    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-static/range {v0 .. v7}, Lcom/google/android/finsky/activities/PurchaseDialog;->show(Landroid/content/Context;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    :cond_12
    return-void
.end method

.method public goToScreenshots(Lcom/google/android/finsky/api/model/Document;I)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 315
    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/MainActivity;->isStateSaved()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 324
    :cond_c
    :goto_c
    return-void

    .line 319
    :cond_d
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 320
    iget-object v1, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    const-class v2, Lcom/google/android/finsky/activities/ScreenshotsActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 321
    const-string v1, "finsky.ScreenshotsFragment.document"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 322
    const-string v1, "finsky.ScreenshotsFragment.selectedIndex"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 323
    iget-object v1, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/activities/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_c
.end method

.method public goToSearch(Ljava/lang/String;ILjava/lang/String;)V
    .registers 5
    .parameter "query"
    .parameter "backend"
    .parameter "referrerUrl"

    .prologue
    .line 203
    invoke-static {p1, p2}, Lcom/google/android/finsky/api/DfeApi;->formSearchUrl(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToSearch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    return-void
.end method

.method public goToSearch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "query"
    .parameter "searchUrl"
    .parameter "referrerUrl"

    .prologue
    .line 207
    invoke-direct {p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->canNavigate()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 208
    sget-object v0, Lcom/google/android/finsky/navigationmanager/NavigationState;->SEARCH:Lcom/google/android/finsky/navigationmanager/NavigationState;

    invoke-static {p1, p2, p3}, Lcom/google/android/finsky/activities/SearchFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/activities/SearchFragment;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->showPage(Lcom/google/android/finsky/navigationmanager/NavigationState;Landroid/support/v4/app/Fragment;Z)V

    .line 211
    :cond_10
    return-void
.end method

.method public goUp()V
    .registers 4

    .prologue
    .line 753
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

    .line 773
    :cond_14
    :goto_14
    return-void

    .line 757
    :cond_15
    iget-object v1, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mBackStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/navigationmanager/NavigationState;

    .line 758
    .local v0, currentState:Lcom/google/android/finsky/navigationmanager/NavigationState;
    sget-object v1, Lcom/google/android/finsky/navigationmanager/NavigationManager$6;->$SwitchMap$com$google$android$finsky$navigationmanager$NavigationState:[I

    invoke-virtual {v0}, Lcom/google/android/finsky/navigationmanager/NavigationState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_36

    goto :goto_14

    .line 764
    :pswitch_29
    invoke-direct {p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToCorpusHome()V

    goto :goto_14

    .line 767
    :pswitch_2d
    invoke-virtual {p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goBack()Z

    goto :goto_14

    .line 770
    :pswitch_31
    invoke-direct {p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToAggregatedHome()V

    goto :goto_14

    .line 758
    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_2d
        :pswitch_31
    .end packed-switch
.end method

.method public handleDeepLink(Ljava/lang/String;)V
    .registers 4
    .parameter "url"

    .prologue
    .line 115
    sget-object v0, Lcom/google/android/finsky/navigationmanager/NavigationState;->LINK_RESOLVER:Lcom/google/android/finsky/navigationmanager/NavigationState;

    invoke-static {p1}, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->newInstance(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->showPage(Lcom/google/android/finsky/navigationmanager/NavigationState;Landroid/support/v4/app/Fragment;)V

    .line 116
    return-void
.end method

.method public init(Lcom/google/android/finsky/activities/MainActivity;)V
    .registers 3
    .parameter "activity"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    .line 101
    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 102
    return-void
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 776
    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mBackStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public onPositiveClick(ILandroid/os/Bundle;)V
    .registers 6
    .parameter "requestCode"
    .parameter "extraArguments"

    .prologue
    const/4 v2, 0x0

    .line 526
    const/4 v1, 0x1

    if-ne p1, v1, :cond_17

    if-eqz p2, :cond_17

    .line 527
    const-string v1, "dialog_details_url"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 528
    .local v0, detailsUrl:Ljava/lang/String;
    if-eqz v0, :cond_17

    invoke-direct {p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->canNavigate()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 529
    invoke-virtual {p0, v0, v2, v2, v2}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToDocPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    .end local v0           #detailsUrl:Ljava/lang/String;
    :cond_17
    return-void
.end method

.method public openItem(Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)V
    .registers 10
    .parameter "doc"
    .parameter "accountName"

    .prologue
    const/4 v6, 0x0

    .line 542
    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->isConsumptionAppNeeded(Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 543
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->showAppNeededDialog(I)V

    .line 567
    :goto_e
    return-void

    .line 547
    :cond_f
    iget-object v3, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    invoke-static {v3, p1, p2}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getConsumptionIntent(Landroid/content/Context;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 548
    .local v0, intent:Landroid/content/Intent;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0, v6}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 549
    .local v2, resolveInfo:Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_44

    if-eqz v2, :cond_44

    .line 550
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v3

    if-eqz v3, :cond_3e

    .line 553
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getNotifier()Lcom/google/android/finsky/utils/Notifier;

    move-result-object v1

    .line 554
    .local v1, notifier:Lcom/google/android/finsky/utils/Notifier;
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/google/android/finsky/utils/Notifier;->hideAllMessagesForPackage(Ljava/lang/String;)V

    .line 556
    .end local v1           #notifier:Lcom/google/android/finsky/utils/Notifier;
    :cond_3e
    iget-object v3, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    invoke-virtual {v3, v0}, Lcom/google/android/finsky/activities/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_e

    .line 561
    :cond_44
    iget-object v3, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    iget-object v4, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    const v5, 0x7f070115

    invoke-virtual {v4, v5}, Lcom/google/android/finsky/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_e
.end method

.method public popBackStack()V
    .registers 2

    .prologue
    .line 678
    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mBackStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 679
    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mBackStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 681
    :cond_d
    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 682
    return-void
.end method

.method public refreshPage()V
    .registers 4

    .prologue
    .line 429
    iget-object v1, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mBackStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 443
    :goto_8
    return-void

    .line 433
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getActivePage()Lcom/google/android/finsky/fragments/PageFragment;

    move-result-object v0

    .line 434
    .local v0, active:Lcom/google/android/finsky/fragments/PageFragment;
    if-eqz v0, :cond_16

    .line 438
    invoke-virtual {v0}, Lcom/google/android/finsky/fragments/PageFragment;->refresh()V

    .line 439
    invoke-virtual {v0}, Lcom/google/android/finsky/fragments/PageFragment;->onDataChanged()V

    goto :goto_8

    .line 441
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
    .line 891
    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentManager;->removeOnBackStackChangedListener(Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;)V

    .line 892
    return-void
.end method

.method public replaceDetailsShimWithDocPage(Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .parameter "doc"
    .parameter "originalUrl"
    .parameter "cookie"
    .parameter "referrerUrl"
    .parameter "externalReferrer"

    .prologue
    .line 258
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToDocPage(Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 259
    return-void
.end method

.method public searchFromSuggestion(Ljava/lang/String;ILjava/lang/String;)V
    .registers 7
    .parameter "query"
    .parameter "backend"
    .parameter "referrerUrl"

    .prologue
    .line 214
    invoke-direct {p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->canNavigate()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 215
    sget-object v0, Lcom/google/android/finsky/navigationmanager/NavigationState;->SEARCH:Lcom/google/android/finsky/navigationmanager/NavigationState;

    invoke-static {p1, p2}, Lcom/google/android/finsky/api/DfeApi;->formSearchUrl(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, p3}, Lcom/google/android/finsky/activities/SearchFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/activities/SearchFragment;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->showPage(Lcom/google/android/finsky/navigationmanager/NavigationState;Landroid/support/v4/app/Fragment;Z)V

    .line 218
    :cond_14
    return-void
.end method

.method public serialize(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 362
    iget-object v1, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mBackStack:Ljava/util/Stack;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mBackStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 367
    :cond_c
    :goto_c
    return-void

    .line 365
    :cond_d
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mBackStack:Ljava/util/Stack;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 366
    .local v0, asList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/finsky/navigationmanager/NavigationState;>;"
    const-string v1, "nm_state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_c
.end method

.method public showAppNeededDialog(I)V
    .registers 10
    .parameter "docBackend"

    .prologue
    const/4 v7, 0x0

    .line 499
    invoke-direct {p0, p1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getConsumptionAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    .line 501
    .local v0, appDocId:Ljava/lang/String;
    if-nez v0, :cond_1b

    .line 502
    iget-object v4, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    iget-object v5, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    const v6, 0x7f070115

    invoke-virtual {v5, v6}, Lcom/google/android/finsky/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 520
    :cond_1a
    :goto_1a
    return-void

    .line 508
    :cond_1b
    iget-object v4, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    const-string v5, "app_needed_dialog"

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    if-nez v4, :cond_1a

    .line 512
    invoke-direct {p0, p1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getConsumptionAppRequiredString(I)I

    move-result v3

    .line 514
    .local v3, messageId:I
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 515
    .local v2, extraArgs:Landroid/os/Bundle;
    const-string v4, "dialog_details_url"

    invoke-static {v0, v7}, Lcom/google/android/finsky/api/DfeApi;->createDetailsUrlFromId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    const/4 v4, -0x1

    const v5, 0x7f070162

    const v6, 0x7f070060

    invoke-static {v4, v3, v5, v6}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->newInstance(IIII)Lcom/google/android/finsky/activities/SimpleAlertDialog;

    move-result-object v1

    .line 518
    .local v1, df:Lcom/google/android/finsky/activities/SimpleAlertDialog;
    const/4 v4, 0x1

    invoke-virtual {v1, v7, v4, v2}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->setCallback(Landroid/support/v4/app/Fragment;ILandroid/os/Bundle;)Lcom/google/android/finsky/activities/SimpleAlertDialog;

    .line 519
    iget-object v4, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    const-string v5, "app_needed_dialog"

    invoke-virtual {v1, v4, v5}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_1a
.end method

.method public terminate()V
    .registers 2

    .prologue
    .line 353
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    .line 354
    return-void
.end method
