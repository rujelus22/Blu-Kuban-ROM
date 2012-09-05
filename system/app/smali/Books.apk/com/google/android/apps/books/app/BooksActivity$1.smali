.class Lcom/google/android/apps/books/app/BooksActivity$1;
.super Ljava/lang/Object;
.source "BooksActivity.java"

# interfaces
.implements Lcom/google/android/apps/books/app/BooksActivity$Scene;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/app/BooksActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/app/BooksActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/app/BooksActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 412
    iput-object p1, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/android/apps/books/app/BooksActivity$1;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 412
    invoke-direct {p0}, Lcom/google/android/apps/books/app/BooksActivity$1;->onTitleClick()V

    return-void
.end method

.method private canShowView(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .parameter "volumeId"
    .parameter "webUrl"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 638
    iget-object v3, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    #getter for: Lcom/google/android/apps/books/app/BooksActivity;->mConfig:Lcom/google/android/apps/books/util/Config;
    invoke-static {v3}, Lcom/google/android/apps/books/app/BooksActivity;->access$1900(Lcom/google/android/apps/books/app/BooksActivity;)Lcom/google/android/apps/books/util/Config;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/apps/books/util/Config;->getInstalledNativeFinskyPackageName()Ljava/lang/String;

    move-result-object v0

    .line 639
    .local v0, installedFinskyApp:Ljava/lang/String;
    if-eqz v0, :cond_13

    .line 640
    if-eqz p1, :cond_11

    .line 642
    :cond_10
    :goto_10
    return v1

    :cond_11
    move v1, v2

    .line 640
    goto :goto_10

    .line 642
    :cond_13
    if-nez p2, :cond_10

    move v1, v2

    goto :goto_10
.end method

.method private onTitleClick()V
    .registers 4

    .prologue
    .line 596
    iget-object v2, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-virtual {v2}, Lcom/google/android/apps/books/app/BooksActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 597
    .local v0, fm:Landroid/app/FragmentManager;
    const-string v2, "reader"

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/books/app/ReaderFragment;

    .line 598
    .local v1, reader:Lcom/google/android/apps/books/app/ReaderFragment;
    if-eqz v1, :cond_13

    .line 599
    invoke-virtual {v1}, Lcom/google/android/apps/books/app/ReaderFragment;->onTitleClick()V

    .line 601
    :cond_13
    return-void
.end method


# virtual methods
.method public acceptNewPosition(Landroid/accounts/Account;Ljava/lang/String;Lcom/google/android/apps/books/common/Position;)V
    .registers 7
    .parameter "account"
    .parameter "volumeId"
    .parameter "position"

    .prologue
    .line 882
    iget-object v2, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-virtual {v2}, Lcom/google/android/apps/books/app/BooksActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 883
    .local v0, fm:Landroid/app/FragmentManager;
    const-string v2, "reader"

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/books/app/ReaderFragment;

    .line 884
    .local v1, reader:Lcom/google/android/apps/books/app/ReaderFragment;
    if-eqz v1, :cond_13

    .line 885
    invoke-virtual {v1, p1, p2, p3}, Lcom/google/android/apps/books/app/ReaderFragment;->acceptNewPosition(Landroid/accounts/Account;Ljava/lang/String;Lcom/google/android/apps/books/common/Position;)V

    .line 887
    :cond_13
    return-void
.end method

.method public addVolumeToMyEBooks(Landroid/accounts/Account;Ljava/lang/String;)V
    .registers 5
    .parameter "account"
    .parameter "volumeId"

    .prologue
    .line 837
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/google/android/apps/books/app/BooksActivity$1$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/apps/books/app/BooksActivity$1$2;-><init>(Lcom/google/android/apps/books/app/BooksActivity$1;Landroid/accounts/Account;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 848
    return-void
.end method

.method public authenticationFinished(Landroid/content/Intent;Ljava/lang/Exception;I)V
    .registers 7
    .parameter "intent"
    .parameter "exception"
    .parameter "requestId"

    .prologue
    .line 748
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    #getter for: Lcom/google/android/apps/books/app/BooksActivity;->mBrowserAuthenticationRequestId:I
    invoke-static {v0}, Lcom/google/android/apps/books/app/BooksActivity;->access$1300(Lcom/google/android/apps/books/app/BooksActivity;)I

    move-result v0

    if-ne p3, v0, :cond_12

    .line 749
    if-eqz p1, :cond_13

    .line 750
    invoke-static {p1}, Lcom/google/android/apps/books/app/BooksActivity;->markExternalIntent(Landroid/content/Intent;)V

    .line 751
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/books/app/BooksActivity;->startActivity(Landroid/content/Intent;)V

    .line 757
    :cond_12
    :goto_12
    return-void

    .line 753
    :cond_13
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    iget-object v1, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    const v2, 0x7f0e0074

    invoke-virtual {v1, v2}, Lcom/google/android/apps/books/app/BooksActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_12
.end method

.method public canStartAboutVolume(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .parameter "volumeId"
    .parameter "canonicalUrl"

    .prologue
    .line 648
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/books/app/BooksActivity$1;->canShowView(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public canStartBuyVolume(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .parameter "volumeId"
    .parameter "buyUrl"

    .prologue
    .line 664
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/books/app/BooksActivity$1;->canShowView(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public exitSearch(Z)V
    .registers 5
    .parameter "returnToPreSearchPosition"

    .prologue
    .line 945
    iget-object v2, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-virtual {v2}, Lcom/google/android/apps/books/app/BooksActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 946
    .local v0, fm:Landroid/app/FragmentManager;
    const-string v2, "reader"

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/books/app/ReaderFragment;

    .line 947
    .local v1, reader:Lcom/google/android/apps/books/app/ReaderFragment;
    if-eqz v1, :cond_14

    .line 948
    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Lcom/google/android/apps/books/app/ReaderFragment;->exitSearch(ZZ)V

    .line 950
    :cond_14
    return-void
.end method

.method public findReaderSettingsFragment()Lcom/google/android/apps/books/app/ReaderSettingsFragment;
    .registers 3

    .prologue
    .line 808
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/books/app/BooksActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "readerSettings"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/app/ReaderSettingsFragment;

    return-object v0
.end method

.method public findStaticViewById(I)Landroid/view/View;
    .registers 3
    .parameter "id"

    .prologue
    .line 778
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/books/app/BooksActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public finishedPickingAccount(Landroid/accounts/Account;)V
    .registers 3
    .parameter "account"

    .prologue
    .line 798
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    #calls: Lcom/google/android/apps/books/app/BooksActivity;->handleAccountPickerResult(Landroid/accounts/Account;)V
    invoke-static {v0, p1}, Lcom/google/android/apps/books/app/BooksActivity;->access$2300(Lcom/google/android/apps/books/app/BooksActivity;Landroid/accounts/Account;)V

    .line 799
    return-void
.end method

.method public getActionBar()Landroid/app/ActionBar;
    .registers 2

    .prologue
    .line 803
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/books/app/BooksActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    return-object v0
.end method

.method public hintHomeLoaded()V
    .registers 3

    .prologue
    .line 826
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    const/4 v1, 0x1

    #setter for: Lcom/google/android/apps/books/app/BooksActivity;->mHomeLoadedOnce:Z
    invoke-static {v0, v1}, Lcom/google/android/apps/books/app/BooksActivity;->access$2702(Lcom/google/android/apps/books/app/BooksActivity;Z)Z

    .line 827
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    #getter for: Lcom/google/android/apps/books/app/BooksActivity;->mPendingSync:Landroid/os/Message;
    invoke-static {v0}, Lcom/google/android/apps/books/app/BooksActivity;->access$2800(Lcom/google/android/apps/books/app/BooksActivity;)Landroid/os/Message;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 828
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    #getter for: Lcom/google/android/apps/books/app/BooksActivity;->mPendingSync:Landroid/os/Message;
    invoke-static {v0}, Lcom/google/android/apps/books/app/BooksActivity;->access$2800(Lcom/google/android/apps/books/app/BooksActivity;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 829
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/apps/books/app/BooksActivity;->mPendingSync:Landroid/os/Message;
    invoke-static {v0, v1}, Lcom/google/android/apps/books/app/BooksActivity;->access$2802(Lcom/google/android/apps/books/app/BooksActivity;Landroid/os/Message;)Landroid/os/Message;

    .line 831
    :cond_1d
    return-void
.end method

.method public isActive()Z
    .registers 2

    .prologue
    .line 418
    const/4 v0, 0x1

    return v0
.end method

.method public isHomeVisited()Z
    .registers 2

    .prologue
    .line 773
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    #getter for: Lcom/google/android/apps/books/app/BooksActivity;->mHomeVisited:Z
    invoke-static {v0}, Lcom/google/android/apps/books/app/BooksActivity;->access$200(Lcom/google/android/apps/books/app/BooksActivity;)Z

    move-result v0

    return v0
.end method

.method public isSettingsVisible()Z
    .registers 4

    .prologue
    .line 761
    iget-object v2, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-virtual {v2}, Lcom/google/android/apps/books/app/BooksActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 762
    .local v0, fm:Landroid/app/FragmentManager;
    const-string v2, "readerSettings"

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/books/app/ReaderSettingsFragment;

    .line 764
    .local v1, readerSettings:Lcom/google/android/apps/books/app/ReaderSettingsFragment;
    if-nez v1, :cond_12

    .line 765
    const/4 v2, 0x0

    .line 767
    :goto_11
    return v2

    :cond_12
    invoke-virtual {v1}, Lcom/google/android/apps/books/app/ReaderSettingsFragment;->isVisible()Z

    move-result v2

    goto :goto_11
.end method

.method public moveToHome()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 423
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    #calls: Lcom/google/android/apps/books/app/BooksActivity;->isDestroyed()Z
    invoke-static {v0}, Lcom/google/android/apps/books/app/BooksActivity;->access$100(Lcom/google/android/apps/books/app/BooksActivity;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 463
    :cond_a
    :goto_a
    return-void

    .line 425
    :cond_b
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    #setter for: Lcom/google/android/apps/books/app/BooksActivity;->mHomeVisited:Z
    invoke-static {v0, v5}, Lcom/google/android/apps/books/app/BooksActivity;->access$202(Lcom/google/android/apps/books/app/BooksActivity;Z)Z

    .line 427
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/books/app/BooksActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 431
    iget-object v1, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    #getter for: Lcom/google/android/apps/books/app/BooksActivity;->mCurrentAccount:Landroid/accounts/Account;
    invoke-static {v1}, Lcom/google/android/apps/books/app/BooksActivity;->access$300(Lcom/google/android/apps/books/app/BooksActivity;)Landroid/accounts/Account;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    #getter for: Lcom/google/android/apps/books/app/BooksActivity;->mAccount:Landroid/accounts/Account;
    invoke-static {v2}, Lcom/google/android/apps/books/app/BooksActivity;->access$400(Lcom/google/android/apps/books/app/BooksActivity;)Landroid/accounts/Account;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    iget-object v1, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    #getter for: Lcom/google/android/apps/books/app/BooksActivity;->mSceneMode:I
    invoke-static {v1}, Lcom/google/android/apps/books/app/BooksActivity;->access$500(Lcom/google/android/apps/books/app/BooksActivity;)I

    move-result v1

    if-ne v1, v5, :cond_40

    .line 432
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    const-string v1, "carousel"

    #calls: Lcom/google/android/apps/books/app/BooksActivity;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;
    invoke-static {v0, v1}, Lcom/google/android/apps/books/app/BooksActivity;->access$600(Lcom/google/android/apps/books/app/BooksActivity;Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    .line 433
    if-eqz v0, :cond_a

    .line 434
    invoke-virtual {v0}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->onMoveToHome()V

    goto :goto_a

    .line 440
    :cond_40
    iget-object v1, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    #calls: Lcom/google/android/apps/books/app/BooksActivity;->getCarouselView()Lcom/google/android/apps/books/widget/BooksCarouselView;
    invoke-static {v1}, Lcom/google/android/apps/books/app/BooksActivity;->access$700(Lcom/google/android/apps/books/app/BooksActivity;)Lcom/google/android/apps/books/widget/BooksCarouselView;

    move-result-object v1

    invoke-static {v1, v6}, Lcom/google/android/apps/books/app/BooksActivity;->setViewOffscreen(Landroid/view/View;Z)V

    .line 442
    iget-object v1, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    #setter for: Lcom/google/android/apps/books/app/BooksActivity;->mSceneMode:I
    invoke-static {v1, v5}, Lcom/google/android/apps/books/app/BooksActivity;->access$502(Lcom/google/android/apps/books/app/BooksActivity;I)I

    .line 443
    iget-object v1, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    iget-object v2, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    #getter for: Lcom/google/android/apps/books/app/BooksActivity;->mAccount:Landroid/accounts/Account;
    invoke-static {v2}, Lcom/google/android/apps/books/app/BooksActivity;->access$400(Lcom/google/android/apps/books/app/BooksActivity;)Landroid/accounts/Account;

    move-result-object v2

    #setter for: Lcom/google/android/apps/books/app/BooksActivity;->mCurrentAccount:Landroid/accounts/Account;
    invoke-static {v1, v2}, Lcom/google/android/apps/books/app/BooksActivity;->access$302(Lcom/google/android/apps/books/app/BooksActivity;Landroid/accounts/Account;)Landroid/accounts/Account;

    .line 447
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v4

    .line 451
    const-string v1, "carousel"

    #calls: Lcom/google/android/apps/books/app/BooksActivity;->findAndRemoveFragment(Ljava/lang/String;Landroid/app/FragmentManager;Landroid/app/FragmentTransaction;)V
    invoke-static {v1, v0, v4}, Lcom/google/android/apps/books/app/BooksActivity;->access$800(Ljava/lang/String;Landroid/app/FragmentManager;Landroid/app/FragmentTransaction;)V

    .line 452
    const-string v1, "homeMenu"

    #calls: Lcom/google/android/apps/books/app/BooksActivity;->findAndRemoveFragment(Ljava/lang/String;Landroid/app/FragmentManager;Landroid/app/FragmentTransaction;)V
    invoke-static {v1, v0, v4}, Lcom/google/android/apps/books/app/BooksActivity;->access$800(Ljava/lang/String;Landroid/app/FragmentManager;Landroid/app/FragmentTransaction;)V

    .line 453
    const-string v1, "reader"

    #calls: Lcom/google/android/apps/books/app/BooksActivity;->findAndRemoveFragment(Ljava/lang/String;Landroid/app/FragmentManager;Landroid/app/FragmentTransaction;)V
    invoke-static {v1, v0, v4}, Lcom/google/android/apps/books/app/BooksActivity;->access$800(Ljava/lang/String;Landroid/app/FragmentManager;Landroid/app/FragmentTransaction;)V

    .line 454
    const-string v1, "readerSettings"

    #calls: Lcom/google/android/apps/books/app/BooksActivity;->findAndRemoveFragment(Ljava/lang/String;Landroid/app/FragmentManager;Landroid/app/FragmentTransaction;)V
    invoke-static {v1, v0, v4}, Lcom/google/android/apps/books/app/BooksActivity;->access$800(Ljava/lang/String;Landroid/app/FragmentManager;Landroid/app/FragmentTransaction;)V

    .line 457
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    #getter for: Lcom/google/android/apps/books/app/BooksActivity;->mAccount:Landroid/accounts/Account;
    invoke-static {v0}, Lcom/google/android/apps/books/app/BooksActivity;->access$400(Lcom/google/android/apps/books/app/BooksActivity;)Landroid/accounts/Account;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/books/util/LoaderParams;->buildFrom(Landroid/accounts/Account;)Landroid/os/Bundle;

    move-result-object v3

    .line 458
    const v0, 0x7f0f0017

    const-class v1, Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    const-string v2, "carousel"

    #calls: Lcom/google/android/apps/books/app/BooksActivity;->createAndAddFragment(ILjava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/FragmentTransaction;Z)Landroid/app/Fragment;
    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/books/app/BooksActivity;->access$900(ILjava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/FragmentTransaction;Z)Landroid/app/Fragment;

    .line 460
    const-class v1, Lcom/google/android/apps/books/app/HomeMenuFragment;

    const-string v2, "homeMenu"

    move v0, v6

    move v5, v6

    #calls: Lcom/google/android/apps/books/app/BooksActivity;->createAndAddFragment(ILjava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/FragmentTransaction;Z)Landroid/app/Fragment;
    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/books/app/BooksActivity;->access$900(ILjava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/FragmentTransaction;Z)Landroid/app/Fragment;

    .line 462
    invoke-virtual {v4}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto/16 :goto_a
.end method

.method public moveToReader(Ljava/lang/String;ZZZ)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x2

    const/4 v5, 0x1

    .line 468
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    #calls: Lcom/google/android/apps/books/app/BooksActivity;->isDestroyed()Z
    invoke-static {v0}, Lcom/google/android/apps/books/app/BooksActivity;->access$100(Lcom/google/android/apps/books/app/BooksActivity;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 510
    :cond_a
    :goto_a
    return-void

    .line 472
    :cond_b
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    #getter for: Lcom/google/android/apps/books/app/BooksActivity;->mSceneMode:I
    invoke-static {v0}, Lcom/google/android/apps/books/app/BooksActivity;->access$500(Lcom/google/android/apps/books/app/BooksActivity;)I

    move-result v0

    if-ne v0, v1, :cond_43

    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    #getter for: Lcom/google/android/apps/books/app/BooksActivity;->mCurrentVolume:Lcom/google/android/apps/books/app/BooksActivity$CurrentVolume;
    invoke-static {v0}, Lcom/google/android/apps/books/app/BooksActivity;->access$1000(Lcom/google/android/apps/books/app/BooksActivity;)Lcom/google/android/apps/books/app/BooksActivity$CurrentVolume;

    move-result-object v0

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    #getter for: Lcom/google/android/apps/books/app/BooksActivity;->mCurrentVolume:Lcom/google/android/apps/books/app/BooksActivity$CurrentVolume;
    invoke-static {v0}, Lcom/google/android/apps/books/app/BooksActivity;->access$1000(Lcom/google/android/apps/books/app/BooksActivity;)Lcom/google/android/apps/books/app/BooksActivity$CurrentVolume;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/apps/books/app/BooksActivity$CurrentVolume;->mVolumeId:Ljava/lang/String;

    if-ne v0, p1, :cond_43

    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    #getter for: Lcom/google/android/apps/books/app/BooksActivity;->mCurrentVolume:Lcom/google/android/apps/books/app/BooksActivity$CurrentVolume;
    invoke-static {v0}, Lcom/google/android/apps/books/app/BooksActivity;->access$1000(Lcom/google/android/apps/books/app/BooksActivity;)Lcom/google/android/apps/books/app/BooksActivity$CurrentVolume;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/apps/books/app/BooksActivity$CurrentVolume;->mUpdateVolumeOverview:Z

    if-ne v0, p2, :cond_43

    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    #getter for: Lcom/google/android/apps/books/app/BooksActivity;->mCurrentVolume:Lcom/google/android/apps/books/app/BooksActivity$CurrentVolume;
    invoke-static {v0}, Lcom/google/android/apps/books/app/BooksActivity;->access$1000(Lcom/google/android/apps/books/app/BooksActivity;)Lcom/google/android/apps/books/app/BooksActivity$CurrentVolume;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/apps/books/app/BooksActivity$CurrentVolume;->mAddToMyEBooks:Z

    if-ne v0, p3, :cond_43

    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    #getter for: Lcom/google/android/apps/books/app/BooksActivity;->mCurrentVolume:Lcom/google/android/apps/books/app/BooksActivity$CurrentVolume;
    invoke-static {v0}, Lcom/google/android/apps/books/app/BooksActivity;->access$1000(Lcom/google/android/apps/books/app/BooksActivity;)Lcom/google/android/apps/books/app/BooksActivity$CurrentVolume;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/apps/books/app/BooksActivity$CurrentVolume;->mReaderFadeIn:Z

    if-eq v0, p4, :cond_a

    .line 480
    :cond_43
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    #setter for: Lcom/google/android/apps/books/app/BooksActivity;->mSceneMode:I
    invoke-static {v0, v1}, Lcom/google/android/apps/books/app/BooksActivity;->access$502(Lcom/google/android/apps/books/app/BooksActivity;I)I

    .line 481
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    new-instance v1, Lcom/google/android/apps/books/app/BooksActivity$CurrentVolume;

    iget-object v2, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/books/app/BooksActivity$CurrentVolume;-><init>(Lcom/google/android/apps/books/app/BooksActivity;Lcom/google/android/apps/books/app/BooksActivity$1;)V

    #setter for: Lcom/google/android/apps/books/app/BooksActivity;->mCurrentVolume:Lcom/google/android/apps/books/app/BooksActivity$CurrentVolume;
    invoke-static {v0, v1}, Lcom/google/android/apps/books/app/BooksActivity;->access$1002(Lcom/google/android/apps/books/app/BooksActivity;Lcom/google/android/apps/books/app/BooksActivity$CurrentVolume;)Lcom/google/android/apps/books/app/BooksActivity$CurrentVolume;

    .line 482
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    #getter for: Lcom/google/android/apps/books/app/BooksActivity;->mCurrentVolume:Lcom/google/android/apps/books/app/BooksActivity$CurrentVolume;
    invoke-static {v0}, Lcom/google/android/apps/books/app/BooksActivity;->access$1000(Lcom/google/android/apps/books/app/BooksActivity;)Lcom/google/android/apps/books/app/BooksActivity$CurrentVolume;

    move-result-object v0

    iput-boolean p2, v0, Lcom/google/android/apps/books/app/BooksActivity$CurrentVolume;->mUpdateVolumeOverview:Z

    .line 483
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    #getter for: Lcom/google/android/apps/books/app/BooksActivity;->mCurrentVolume:Lcom/google/android/apps/books/app/BooksActivity$CurrentVolume;
    invoke-static {v0}, Lcom/google/android/apps/books/app/BooksActivity;->access$1000(Lcom/google/android/apps/books/app/BooksActivity;)Lcom/google/android/apps/books/app/BooksActivity$CurrentVolume;

    move-result-object v0

    iput-boolean p3, v0, Lcom/google/android/apps/books/app/BooksActivity$CurrentVolume;->mAddToMyEBooks:Z

    .line 484
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    #getter for: Lcom/google/android/apps/books/app/BooksActivity;->mCurrentVolume:Lcom/google/android/apps/books/app/BooksActivity$CurrentVolume;
    invoke-static {v0}, Lcom/google/android/apps/books/app/BooksActivity;->access$1000(Lcom/google/android/apps/books/app/BooksActivity;)Lcom/google/android/apps/books/app/BooksActivity$CurrentVolume;

    move-result-object v0

    iput-boolean p4, v0, Lcom/google/android/apps/books/app/BooksActivity$CurrentVolume;->mReaderFadeIn:Z

    .line 486
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/books/app/BooksActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 487
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v4

    .line 491
    const-string v1, "carousel"

    #calls: Lcom/google/android/apps/books/app/BooksActivity;->findAndRemoveFragment(Ljava/lang/String;Landroid/app/FragmentManager;Landroid/app/FragmentTransaction;)V
    invoke-static {v1, v0, v4}, Lcom/google/android/apps/books/app/BooksActivity;->access$800(Ljava/lang/String;Landroid/app/FragmentManager;Landroid/app/FragmentTransaction;)V

    .line 492
    const-string v1, "homeMenu"

    #calls: Lcom/google/android/apps/books/app/BooksActivity;->findAndRemoveFragment(Ljava/lang/String;Landroid/app/FragmentManager;Landroid/app/FragmentTransaction;)V
    invoke-static {v1, v0, v4}, Lcom/google/android/apps/books/app/BooksActivity;->access$800(Ljava/lang/String;Landroid/app/FragmentManager;Landroid/app/FragmentTransaction;)V

    .line 493
    const-string v1, "reader"

    #calls: Lcom/google/android/apps/books/app/BooksActivity;->findAndRemoveFragment(Ljava/lang/String;Landroid/app/FragmentManager;Landroid/app/FragmentTransaction;)V
    invoke-static {v1, v0, v4}, Lcom/google/android/apps/books/app/BooksActivity;->access$800(Ljava/lang/String;Landroid/app/FragmentManager;Landroid/app/FragmentTransaction;)V

    .line 494
    const-string v1, "readerSettings"

    #calls: Lcom/google/android/apps/books/app/BooksActivity;->findAndRemoveFragment(Ljava/lang/String;Landroid/app/FragmentManager;Landroid/app/FragmentTransaction;)V
    invoke-static {v1, v0, v4}, Lcom/google/android/apps/books/app/BooksActivity;->access$800(Ljava/lang/String;Landroid/app/FragmentManager;Landroid/app/FragmentTransaction;)V

    .line 497
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    #getter for: Lcom/google/android/apps/books/app/BooksActivity;->mAccount:Landroid/accounts/Account;
    invoke-static {v0}, Lcom/google/android/apps/books/app/BooksActivity;->access$400(Lcom/google/android/apps/books/app/BooksActivity;)Landroid/accounts/Account;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/apps/books/util/LoaderParams;->buildFrom(Landroid/accounts/Account;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 498
    invoke-static {v3, p2}, Lcom/google/android/apps/books/util/LoaderParams;->setUpdateVolumeOverview(Landroid/os/Bundle;Z)V

    .line 499
    invoke-static {v3, p4}, Lcom/google/android/apps/books/util/LoaderParams;->setReaderFadeIn(Landroid/os/Bundle;Z)V

    .line 500
    invoke-static {v3, p3}, Lcom/google/android/apps/books/util/LoaderParams;->setAddToMyEBooks(Landroid/os/Bundle;Z)V

    .line 504
    const v0, 0x7f0f0018

    const-class v1, Lcom/google/android/apps/books/app/ReaderFragment;

    const-string v2, "reader"

    #calls: Lcom/google/android/apps/books/app/BooksActivity;->createAndAddFragment(ILjava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/FragmentTransaction;Z)Landroid/app/Fragment;
    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/books/app/BooksActivity;->access$900(ILjava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/FragmentTransaction;Z)Landroid/app/Fragment;

    .line 506
    const v0, 0x7f0f0019

    const-class v1, Lcom/google/android/apps/books/app/ReaderSettingsFragment;

    const-string v2, "readerSettings"

    #calls: Lcom/google/android/apps/books/app/BooksActivity;->createAndAddFragment(ILjava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/FragmentTransaction;Z)Landroid/app/Fragment;
    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/books/app/BooksActivity;->access$900(ILjava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/FragmentTransaction;Z)Landroid/app/Fragment;

    .line 509
    invoke-virtual {v4}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto/16 :goto_a
.end method

.method public onExternalStorageException()V
    .registers 5

    .prologue
    .line 904
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 905
    .local v0, args:Landroid/os/Bundle;
    iget-object v2, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    const v3, 0x7f0e009b

    invoke-virtual {v2, v3}, Lcom/google/android/apps/books/app/BooksActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/apps/books/app/ErrorFragment$ErrorParams;->setMessageText(Landroid/os/Bundle;Ljava/lang/CharSequence;)V

    .line 906
    iget-object v2, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    const v3, 0x104000a

    invoke-virtual {v2, v3}, Lcom/google/android/apps/books/app/BooksActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/apps/books/app/ErrorFragment$ErrorParams;->setPositiveText(Landroid/os/Bundle;Ljava/lang/CharSequence;)V

    .line 907
    invoke-virtual {p0, v0}, Lcom/google/android/apps/books/app/BooksActivity$1;->showError(Landroid/os/Bundle;)V

    .line 908
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/BooksActivity$1;->moveToHome()V

    .line 911
    iget-object v2, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-virtual {v2}, Lcom/google/android/apps/books/app/BooksActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/books/app/BooksApplication;

    invoke-virtual {v2}, Lcom/google/android/apps/books/app/BooksApplication;->getFileStorageManager()Lcom/google/android/apps/books/common/FileStorageManager;

    move-result-object v1

    .line 913
    .local v1, fsm:Lcom/google/android/apps/books/common/FileStorageManager;
    new-instance v2, Lcom/google/android/apps/books/app/BooksActivity$ResetStorageTask;

    invoke-direct {v2, v1}, Lcom/google/android/apps/books/app/BooksActivity$ResetStorageTask;-><init>(Lcom/google/android/apps/books/common/FileStorageManager;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/google/android/apps/books/app/BooksActivity$ResetStorageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 914
    return-void
.end method

.method public openAuthenticatedUrl(Ljava/lang/String;)V
    .registers 7
    .parameter

    .prologue
    .line 736
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    #calls: Lcom/google/android/apps/books/app/BooksActivity;->isDestroyed()Z
    invoke-static {v0}, Lcom/google/android/apps/books/app/BooksActivity;->access$100(Lcom/google/android/apps/books/app/BooksActivity;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 745
    :goto_8
    return-void

    .line 738
    :cond_9
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/books/app/BooksActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 739
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 740
    iget-object v1, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-static {v1}, Lcom/google/android/apps/books/app/BooksActivity;->access$1308(Lcom/google/android/apps/books/app/BooksActivity;)I

    .line 741
    const-class v1, Lcom/google/android/apps/books/app/BrowserAuthenticationFragment;

    const-string v2, "browserHelper"

    iget-object v3, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    #getter for: Lcom/google/android/apps/books/app/BooksActivity;->mAccount:Landroid/accounts/Account;
    invoke-static {v3}, Lcom/google/android/apps/books/app/BooksActivity;->access$400(Lcom/google/android/apps/books/app/BooksActivity;)Landroid/accounts/Account;

    move-result-object v3

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    #getter for: Lcom/google/android/apps/books/app/BooksActivity;->mBrowserAuthenticationRequestId:I
    invoke-static {v4}, Lcom/google/android/apps/books/app/BooksActivity;->access$1300(Lcom/google/android/apps/books/app/BooksActivity;)I

    move-result v4

    invoke-static {v3, p1, v4}, Lcom/google/android/apps/books/app/BrowserAuthenticationFragment$Arguments;->create(Ljava/lang/String;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v3

    const/4 v4, 0x1

    #calls: Lcom/google/android/apps/books/app/BooksActivity;->createAndAddFragment(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/FragmentTransaction;Z)Landroid/app/Fragment;
    invoke-static {v1, v2, v3, v0, v4}, Lcom/google/android/apps/books/app/BooksActivity;->access$1800(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/FragmentTransaction;Z)Landroid/app/Fragment;

    .line 744
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_8
.end method

.method public openInternalUrl(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 722
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    #calls: Lcom/google/android/apps/books/app/BooksActivity;->isDestroyed()Z
    invoke-static {v0}, Lcom/google/android/apps/books/app/BooksActivity;->access$100(Lcom/google/android/apps/books/app/BooksActivity;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 732
    :goto_8
    return-void

    .line 724
    :cond_9
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 725
    const-string v1, "android.intent.extra.TITLE"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    iget-object v1, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-virtual {v1}, Lcom/google/android/apps/books/app/BooksActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 729
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 730
    const-class v2, Lcom/google/android/apps/books/app/WebViewDialogFragment;

    const-string v3, "webViewDialog"

    const/4 v4, 0x1

    #calls: Lcom/google/android/apps/books/app/BooksActivity;->createAndAddFragment(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/FragmentTransaction;Z)Landroid/app/Fragment;
    invoke-static {v2, v3, v0, v1, v4}, Lcom/google/android/apps/books/app/BooksActivity;->access$1800(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/FragmentTransaction;Z)Landroid/app/Fragment;

    .line 731
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_8
.end method

.method public pickAccount()V
    .registers 5

    .prologue
    .line 783
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    sget-object v1, Lcom/google/android/apps/books/app/BooksActivity$AccountState;->SHOWING_PICKER:Lcom/google/android/apps/books/app/BooksActivity$AccountState;

    #setter for: Lcom/google/android/apps/books/app/BooksActivity;->mAccountState:Lcom/google/android/apps/books/app/BooksActivity$AccountState;
    invoke-static {v0, v1}, Lcom/google/android/apps/books/app/BooksActivity;->access$2102(Lcom/google/android/apps/books/app/BooksActivity;Lcom/google/android/apps/books/app/BooksActivity$AccountState;)Lcom/google/android/apps/books/app/BooksActivity$AccountState;

    .line 784
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    #getter for: Lcom/google/android/apps/books/app/BooksActivity;->mAccountPicker:Lcom/google/android/apps/books/app/AccountPicker;
    invoke-static {v0}, Lcom/google/android/apps/books/app/BooksActivity;->access$2200(Lcom/google/android/apps/books/app/BooksActivity;)Lcom/google/android/apps/books/app/AccountPicker;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    iget-object v2, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    #getter for: Lcom/google/android/apps/books/app/BooksActivity;->mAccount:Landroid/accounts/Account;
    invoke-static {v2}, Lcom/google/android/apps/books/app/BooksActivity;->access$400(Lcom/google/android/apps/books/app/BooksActivity;)Landroid/accounts/Account;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/apps/books/app/AccountPicker;->pickAccount(Landroid/app/Activity;Landroid/accounts/Account;I)V

    .line 785
    return-void
.end method

.method public populateReaderActionBar(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 6
    .parameter "title"
    .parameter "author"

    .prologue
    .line 571
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/BooksActivity$1;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 572
    .local v0, actionBar:Landroid/app/ActionBar;
    iget-object v1, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    new-instance v2, Lcom/google/android/apps/books/app/BooksActivity$1$1;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/google/android/apps/books/app/BooksActivity$1$1;-><init>(Lcom/google/android/apps/books/app/BooksActivity$1;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/ActionBar;)V

    invoke-virtual {v1, v2}, Lcom/google/android/apps/books/app/BooksActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 593
    return-void
.end method

.method public reset()V
    .registers 6

    .prologue
    .line 514
    iget-object v2, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    const/4 v3, 0x0

    #setter for: Lcom/google/android/apps/books/app/BooksActivity;->mSceneMode:I
    invoke-static {v2, v3}, Lcom/google/android/apps/books/app/BooksActivity;->access$502(Lcom/google/android/apps/books/app/BooksActivity;I)I

    .line 520
    iget-object v2, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #setter for: Lcom/google/android/apps/books/app/BooksActivity;->mIncomingIntent:Landroid/content/Intent;
    invoke-static {v2, v3}, Lcom/google/android/apps/books/app/BooksActivity;->access$1202(Lcom/google/android/apps/books/app/BooksActivity;Landroid/content/Intent;)Landroid/content/Intent;

    .line 522
    iget-object v2, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-static {v2}, Lcom/google/android/apps/books/app/BooksActivity;->access$1308(Lcom/google/android/apps/books/app/BooksActivity;)I

    .line 527
    iget-object v2, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    #calls: Lcom/google/android/apps/books/app/BooksActivity;->getCarouselView()Lcom/google/android/apps/books/widget/BooksCarouselView;
    invoke-static {v2}, Lcom/google/android/apps/books/app/BooksActivity;->access$700(Lcom/google/android/apps/books/app/BooksActivity;)Lcom/google/android/apps/books/widget/BooksCarouselView;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/google/android/apps/books/app/BooksActivity;->setViewOffscreen(Landroid/view/View;Z)V

    .line 532
    iget-object v2, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-virtual {v2}, Lcom/google/android/apps/books/app/BooksActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 533
    .local v0, fm:Landroid/app/FragmentManager;
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 534
    .local v1, ft:Landroid/app/FragmentTransaction;
    const-string v2, "carousel"

    #calls: Lcom/google/android/apps/books/app/BooksActivity;->findAndRemoveFragment(Ljava/lang/String;Landroid/app/FragmentManager;Landroid/app/FragmentTransaction;)V
    invoke-static {v2, v0, v1}, Lcom/google/android/apps/books/app/BooksActivity;->access$800(Ljava/lang/String;Landroid/app/FragmentManager;Landroid/app/FragmentTransaction;)V

    .line 535
    const-string v2, "homeMenu"

    #calls: Lcom/google/android/apps/books/app/BooksActivity;->findAndRemoveFragment(Ljava/lang/String;Landroid/app/FragmentManager;Landroid/app/FragmentTransaction;)V
    invoke-static {v2, v0, v1}, Lcom/google/android/apps/books/app/BooksActivity;->access$800(Ljava/lang/String;Landroid/app/FragmentManager;Landroid/app/FragmentTransaction;)V

    .line 536
    const-string v2, "reader"

    #calls: Lcom/google/android/apps/books/app/BooksActivity;->findAndRemoveFragment(Ljava/lang/String;Landroid/app/FragmentManager;Landroid/app/FragmentTransaction;)V
    invoke-static {v2, v0, v1}, Lcom/google/android/apps/books/app/BooksActivity;->access$800(Ljava/lang/String;Landroid/app/FragmentManager;Landroid/app/FragmentTransaction;)V

    .line 537
    const-string v2, "readerSettings"

    #calls: Lcom/google/android/apps/books/app/BooksActivity;->findAndRemoveFragment(Ljava/lang/String;Landroid/app/FragmentManager;Landroid/app/FragmentTransaction;)V
    invoke-static {v2, v0, v1}, Lcom/google/android/apps/books/app/BooksActivity;->access$800(Ljava/lang/String;Landroid/app/FragmentManager;Landroid/app/FragmentTransaction;)V

    .line 538
    const-string v2, "accounts"

    #calls: Lcom/google/android/apps/books/app/BooksActivity;->findAndRemoveFragment(Ljava/lang/String;Landroid/app/FragmentManager;Landroid/app/FragmentTransaction;)V
    invoke-static {v2, v0, v1}, Lcom/google/android/apps/books/app/BooksActivity;->access$800(Ljava/lang/String;Landroid/app/FragmentManager;Landroid/app/FragmentTransaction;)V

    .line 539
    const-string v2, "help"

    #calls: Lcom/google/android/apps/books/app/BooksActivity;->findAndRemoveFragment(Ljava/lang/String;Landroid/app/FragmentManager;Landroid/app/FragmentTransaction;)V
    invoke-static {v2, v0, v1}, Lcom/google/android/apps/books/app/BooksActivity;->access$800(Ljava/lang/String;Landroid/app/FragmentManager;Landroid/app/FragmentTransaction;)V

    .line 540
    const-string v2, "error"

    #calls: Lcom/google/android/apps/books/app/BooksActivity;->findAndRemoveFragment(Ljava/lang/String;Landroid/app/FragmentManager;Landroid/app/FragmentTransaction;)V
    invoke-static {v2, v0, v1}, Lcom/google/android/apps/books/app/BooksActivity;->access$800(Ljava/lang/String;Landroid/app/FragmentManager;Landroid/app/FragmentTransaction;)V

    .line 541
    const-string v2, "syncDisabled"

    #calls: Lcom/google/android/apps/books/app/BooksActivity;->findAndRemoveFragment(Ljava/lang/String;Landroid/app/FragmentManager;Landroid/app/FragmentTransaction;)V
    invoke-static {v2, v0, v1}, Lcom/google/android/apps/books/app/BooksActivity;->access$800(Ljava/lang/String;Landroid/app/FragmentManager;Landroid/app/FragmentTransaction;)V

    .line 542
    const-string v2, "syncError"

    #calls: Lcom/google/android/apps/books/app/BooksActivity;->findAndRemoveFragment(Ljava/lang/String;Landroid/app/FragmentManager;Landroid/app/FragmentTransaction;)V
    invoke-static {v2, v0, v1}, Lcom/google/android/apps/books/app/BooksActivity;->access$800(Ljava/lang/String;Landroid/app/FragmentManager;Landroid/app/FragmentTransaction;)V

    .line 543
    const-string v2, "addToMyEBooks"

    #calls: Lcom/google/android/apps/books/app/BooksActivity;->findAndRemoveFragment(Ljava/lang/String;Landroid/app/FragmentManager;Landroid/app/FragmentTransaction;)V
    invoke-static {v2, v0, v1}, Lcom/google/android/apps/books/app/BooksActivity;->access$800(Ljava/lang/String;Landroid/app/FragmentManager;Landroid/app/FragmentTransaction;)V

    .line 544
    const-string v2, "accessDenied"

    #calls: Lcom/google/android/apps/books/app/BooksActivity;->findAndRemoveFragment(Ljava/lang/String;Landroid/app/FragmentManager;Landroid/app/FragmentTransaction;)V
    invoke-static {v2, v0, v1}, Lcom/google/android/apps/books/app/BooksActivity;->access$800(Ljava/lang/String;Landroid/app/FragmentManager;Landroid/app/FragmentTransaction;)V

    .line 545
    const-string v2, "newPositionAvailable"

    #calls: Lcom/google/android/apps/books/app/BooksActivity;->findAndRemoveFragment(Ljava/lang/String;Landroid/app/FragmentManager;Landroid/app/FragmentTransaction;)V
    invoke-static {v2, v0, v1}, Lcom/google/android/apps/books/app/BooksActivity;->access$800(Ljava/lang/String;Landroid/app/FragmentManager;Landroid/app/FragmentTransaction;)V

    .line 546
    const-string v2, "countryNotSupported"

    #calls: Lcom/google/android/apps/books/app/BooksActivity;->findAndRemoveFragment(Ljava/lang/String;Landroid/app/FragmentManager;Landroid/app/FragmentTransaction;)V
    invoke-static {v2, v0, v1}, Lcom/google/android/apps/books/app/BooksActivity;->access$800(Ljava/lang/String;Landroid/app/FragmentManager;Landroid/app/FragmentTransaction;)V

    .line 547
    const-string v2, "simpleDialog"

    #calls: Lcom/google/android/apps/books/app/BooksActivity;->findAndRemoveFragment(Ljava/lang/String;Landroid/app/FragmentManager;Landroid/app/FragmentTransaction;)V
    invoke-static {v2, v0, v1}, Lcom/google/android/apps/books/app/BooksActivity;->access$800(Ljava/lang/String;Landroid/app/FragmentManager;Landroid/app/FragmentTransaction;)V

    .line 548
    const-string v2, "exitSearchDialog"

    #calls: Lcom/google/android/apps/books/app/BooksActivity;->findAndRemoveFragment(Ljava/lang/String;Landroid/app/FragmentManager;Landroid/app/FragmentTransaction;)V
    invoke-static {v2, v0, v1}, Lcom/google/android/apps/books/app/BooksActivity;->access$800(Ljava/lang/String;Landroid/app/FragmentManager;Landroid/app/FragmentTransaction;)V

    .line 549
    const-string v2, "usedLastDownloadDialog"

    #calls: Lcom/google/android/apps/books/app/BooksActivity;->findAndRemoveFragment(Ljava/lang/String;Landroid/app/FragmentManager;Landroid/app/FragmentTransaction;)V
    invoke-static {v2, v0, v1}, Lcom/google/android/apps/books/app/BooksActivity;->access$800(Ljava/lang/String;Landroid/app/FragmentManager;Landroid/app/FragmentTransaction;)V

    .line 550
    const-string v2, "removeFromLibrary"

    #calls: Lcom/google/android/apps/books/app/BooksActivity;->findAndRemoveFragment(Ljava/lang/String;Landroid/app/FragmentManager;Landroid/app/FragmentTransaction;)V
    invoke-static {v2, v0, v1}, Lcom/google/android/apps/books/app/BooksActivity;->access$800(Ljava/lang/String;Landroid/app/FragmentManager;Landroid/app/FragmentTransaction;)V

    .line 551
    const-string v2, "removeFromDevice"

    #calls: Lcom/google/android/apps/books/app/BooksActivity;->findAndRemoveFragment(Ljava/lang/String;Landroid/app/FragmentManager;Landroid/app/FragmentTransaction;)V
    invoke-static {v2, v0, v1}, Lcom/google/android/apps/books/app/BooksActivity;->access$800(Ljava/lang/String;Landroid/app/FragmentManager;Landroid/app/FragmentTransaction;)V

    .line 552
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 553
    return-void
.end method

.method public setActionBarDisplayOptions(I)V
    .registers 3
    .parameter "options"

    .prologue
    .line 565
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    #setter for: Lcom/google/android/apps/books/app/BooksActivity;->mActionBarDisplayOptions:I
    invoke-static {v0, p1}, Lcom/google/android/apps/books/app/BooksActivity;->access$1602(Lcom/google/android/apps/books/app/BooksActivity;I)I

    .line 566
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/BooksActivity$1;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 567
    return-void
.end method

.method public showConcurrentAccessDeniedDialog(ILjava/lang/String;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 852
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/books/app/BooksActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 853
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 854
    const-class v1, Lcom/google/android/apps/books/app/ConcurrentAccessLimitExceededFragment;

    const-string v2, "accessDenied"

    iget-object v3, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    #getter for: Lcom/google/android/apps/books/app/BooksActivity;->mConfig:Lcom/google/android/apps/books/util/Config;
    invoke-static {v3}, Lcom/google/android/apps/books/app/BooksActivity;->access$1900(Lcom/google/android/apps/books/app/BooksActivity;)Lcom/google/android/apps/books/util/Config;

    move-result-object v3

    invoke-static {p1, v3, p2}, Lcom/google/android/apps/books/app/ConcurrentAccessLimitExceededFragment$Arguments;->create(ILcom/google/android/apps/books/util/Config;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    const/4 v4, 0x0

    #calls: Lcom/google/android/apps/books/app/BooksActivity;->createAndAddFragment(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/FragmentTransaction;Z)Landroid/app/Fragment;
    invoke-static {v1, v2, v3, v0, v4}, Lcom/google/android/apps/books/app/BooksActivity;->access$1800(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/FragmentTransaction;Z)Landroid/app/Fragment;

    .line 857
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 858
    return-void
.end method

.method public showError(Landroid/os/Bundle;)V
    .registers 6
    .parameter

    .prologue
    .line 622
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    #calls: Lcom/google/android/apps/books/app/BooksActivity;->isDestroyed()Z
    invoke-static {v0}, Lcom/google/android/apps/books/app/BooksActivity;->access$100(Lcom/google/android/apps/books/app/BooksActivity;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 631
    :goto_8
    return-void

    .line 624
    :cond_9
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/books/app/BooksActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 625
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 627
    const-string v2, "error"

    #calls: Lcom/google/android/apps/books/app/BooksActivity;->findAndRemoveFragment(Ljava/lang/String;Landroid/app/FragmentManager;Landroid/app/FragmentTransaction;)V
    invoke-static {v2, v0, v1}, Lcom/google/android/apps/books/app/BooksActivity;->access$800(Ljava/lang/String;Landroid/app/FragmentManager;Landroid/app/FragmentTransaction;)V

    .line 628
    const-class v0, Lcom/google/android/apps/books/app/ErrorFragment;

    const-string v2, "error"

    const/4 v3, 0x0

    #calls: Lcom/google/android/apps/books/app/BooksActivity;->createAndAddFragment(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/FragmentTransaction;Z)Landroid/app/Fragment;
    invoke-static {v0, v2, p1, v1, v3}, Lcom/google/android/apps/books/app/BooksActivity;->access$1800(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/FragmentTransaction;Z)Landroid/app/Fragment;

    .line 630
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_8
.end method

.method public showExitSearchDialog(Ljava/lang/String;)V
    .registers 4
    .parameter "pageTitle"

    .prologue
    .line 930
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/google/android/apps/books/app/BooksActivity$1$4;

    invoke-direct {v1, p0, p1}, Lcom/google/android/apps/books/app/BooksActivity$1$4;-><init>(Lcom/google/android/apps/books/app/BooksActivity$1;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 941
    return-void
.end method

.method public showHelp(ZLandroid/os/Bundle;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 605
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    #calls: Lcom/google/android/apps/books/app/BooksActivity;->isDestroyed()Z
    invoke-static {v0}, Lcom/google/android/apps/books/app/BooksActivity;->access$100(Lcom/google/android/apps/books/app/BooksActivity;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 618
    :goto_8
    return-void

    .line 607
    :cond_9
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/books/app/BooksActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 608
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 610
    const-string v2, "help"

    #calls: Lcom/google/android/apps/books/app/BooksActivity;->findAndRemoveFragment(Ljava/lang/String;Landroid/app/FragmentManager;Landroid/app/FragmentTransaction;)V
    invoke-static {v2, v0, v1}, Lcom/google/android/apps/books/app/BooksActivity;->access$800(Ljava/lang/String;Landroid/app/FragmentManager;Landroid/app/FragmentTransaction;)V

    .line 612
    if-eqz p1, :cond_22

    .line 613
    const-class v0, Lcom/google/android/apps/books/app/HelpFragment;

    const-string v2, "help"

    const/4 v3, 0x0

    #calls: Lcom/google/android/apps/books/app/BooksActivity;->createAndAddFragment(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/FragmentTransaction;Z)Landroid/app/Fragment;
    invoke-static {v0, v2, p2, v1, v3}, Lcom/google/android/apps/books/app/BooksActivity;->access$1800(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/FragmentTransaction;Z)Landroid/app/Fragment;

    .line 616
    :cond_22
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_8
.end method

.method public showHoneycombAccountPicker()V
    .registers 6

    .prologue
    .line 789
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/books/app/BooksActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 790
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 791
    const-class v1, Lcom/google/android/apps/books/app/AccountPickerFragment;

    const-string v2, "accounts"

    iget-object v3, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    #getter for: Lcom/google/android/apps/books/app/BooksActivity;->mAccount:Landroid/accounts/Account;
    invoke-static {v3}, Lcom/google/android/apps/books/app/BooksActivity;->access$400(Lcom/google/android/apps/books/app/BooksActivity;)Landroid/accounts/Account;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/books/app/AccountPickerFragment$Arguments;->create(Landroid/accounts/Account;)Landroid/os/Bundle;

    move-result-object v3

    const/4 v4, 0x1

    #calls: Lcom/google/android/apps/books/app/BooksActivity;->createAndAddFragment(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/FragmentTransaction;Z)Landroid/app/Fragment;
    invoke-static {v1, v2, v3, v0, v4}, Lcom/google/android/apps/books/app/BooksActivity;->access$1800(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/FragmentTransaction;Z)Landroid/app/Fragment;

    .line 793
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 794
    return-void
.end method

.method public showNewPositionAvailableDialog(Landroid/accounts/Account;Ljava/lang/String;Lcom/google/android/apps/books/common/Position;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14
    .parameter "account"
    .parameter "volumeId"
    .parameter "position"
    .parameter "chapterTitle"
    .parameter "pageTitle"

    .prologue
    .line 865
    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/google/android/apps/books/app/BooksActivity$1$3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/books/app/BooksActivity$1$3;-><init>(Lcom/google/android/apps/books/app/BooksActivity$1;Landroid/accounts/Account;Ljava/lang/String;Lcom/google/android/apps/books/common/Position;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 877
    return-void
.end method

.method public showRemoveContentDialog(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 711
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/books/app/BooksActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 712
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 713
    iget-object v1, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    #getter for: Lcom/google/android/apps/books/app/BooksActivity;->mAccount:Landroid/accounts/Account;
    invoke-static {v1}, Lcom/google/android/apps/books/app/BooksActivity;->access$400(Lcom/google/android/apps/books/app/BooksActivity;)Landroid/accounts/Account;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/google/android/apps/books/app/ConfirmRemoveContentDialog$Arguments;->create(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 715
    const-class v2, Lcom/google/android/apps/books/app/ConfirmRemoveContentDialog;

    const-string v3, "removeFromDevice"

    const/4 v4, 0x1

    #calls: Lcom/google/android/apps/books/app/BooksActivity;->createAndAddFragment(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/FragmentTransaction;Z)Landroid/app/Fragment;
    invoke-static {v2, v3, v1, v0, v4}, Lcom/google/android/apps/books/app/BooksActivity;->access$1800(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/FragmentTransaction;Z)Landroid/app/Fragment;

    .line 717
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 718
    return-void
.end method

.method public showRemoveFromLibraryDialog(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 701
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/books/app/BooksActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 702
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 703
    iget-object v1, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    #getter for: Lcom/google/android/apps/books/app/BooksActivity;->mAccount:Landroid/accounts/Account;
    invoke-static {v1}, Lcom/google/android/apps/books/app/BooksActivity;->access$400(Lcom/google/android/apps/books/app/BooksActivity;)Landroid/accounts/Account;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/google/android/apps/books/app/ConfirmRemoveFromLibraryDialog$Arguments;->create(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 705
    const-class v2, Lcom/google/android/apps/books/app/ConfirmRemoveFromLibraryDialog;

    const-string v3, "removeFromLibrary"

    const/4 v4, 0x1

    #calls: Lcom/google/android/apps/books/app/BooksActivity;->createAndAddFragment(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/FragmentTransaction;Z)Landroid/app/Fragment;
    invoke-static {v2, v3, v1, v0, v4}, Lcom/google/android/apps/books/app/BooksActivity;->access$1800(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/FragmentTransaction;Z)Landroid/app/Fragment;

    .line 707
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 708
    return-void
.end method

.method public showSimpleDialog(Ljava/lang/CharSequence;)V
    .registers 7
    .parameter

    .prologue
    .line 918
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/books/app/BooksActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 919
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 920
    invoke-static {p1}, Lcom/google/android/apps/books/app/InformationDialogFragment;->createArguments(Ljava/lang/CharSequence;)Landroid/os/Bundle;

    move-result-object v1

    .line 921
    const-class v2, Lcom/google/android/apps/books/app/InformationDialogFragment;

    const-string v3, "simpleDialog"

    const/4 v4, 0x0

    #calls: Lcom/google/android/apps/books/app/BooksActivity;->createAndAddFragment(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/FragmentTransaction;Z)Landroid/app/Fragment;
    invoke-static {v2, v3, v1, v0, v4}, Lcom/google/android/apps/books/app/BooksActivity;->access$1800(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/FragmentTransaction;Z)Landroid/app/Fragment;

    .line 923
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 924
    return-void
.end method

.method public startAboutVolume(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "volumeId"
    .parameter "canonicalUrl"

    .prologue
    .line 653
    iget-object v2, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    #getter for: Lcom/google/android/apps/books/app/BooksActivity;->mConfig:Lcom/google/android/apps/books/util/Config;
    invoke-static {v2}, Lcom/google/android/apps/books/app/BooksActivity;->access$1900(Lcom/google/android/apps/books/app/BooksActivity;)Lcom/google/android/apps/books/util/Config;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/books/util/Config;->getInstalledNativeFinskyPackageName()Ljava/lang/String;

    move-result-object v1

    .line 654
    .local v1, installedFinskyApp:Ljava/lang/String;
    if-eqz v1, :cond_1c

    .line 655
    iget-object v2, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    #getter for: Lcom/google/android/apps/books/app/BooksActivity;->mConfig:Lcom/google/android/apps/books/util/Config;
    invoke-static {v2}, Lcom/google/android/apps/books/app/BooksActivity;->access$1900(Lcom/google/android/apps/books/app/BooksActivity;)Lcom/google/android/apps/books/util/Config;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/google/android/apps/books/util/OceanUris;->getAboutTheBookUrl(Lcom/google/android/apps/books/util/Config;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 656
    .local v0, aboutUri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    #calls: Lcom/google/android/apps/books/app/BooksActivity;->startFinskyIntent(Landroid/net/Uri;Ljava/lang/String;)V
    invoke-static {v2, v0, v1}, Lcom/google/android/apps/books/app/BooksActivity;->access$2000(Lcom/google/android/apps/books/app/BooksActivity;Landroid/net/Uri;Ljava/lang/String;)V

    .line 660
    .end local v0           #aboutUri:Landroid/net/Uri;
    :goto_1b
    return-void

    .line 658
    :cond_1c
    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/apps/books/app/BooksActivity$1;->openAuthenticatedUrl(Ljava/lang/String;)V

    goto :goto_1b
.end method

.method public startBuyVolume(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "volumeId"
    .parameter "buyUrl"

    .prologue
    .line 669
    iget-object v2, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    #getter for: Lcom/google/android/apps/books/app/BooksActivity;->mConfig:Lcom/google/android/apps/books/util/Config;
    invoke-static {v2}, Lcom/google/android/apps/books/app/BooksActivity;->access$1900(Lcom/google/android/apps/books/app/BooksActivity;)Lcom/google/android/apps/books/util/Config;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/books/util/Config;->getInstalledNativeFinskyPackageName()Ljava/lang/String;

    move-result-object v0

    .line 670
    .local v0, installedFinskyApp:Ljava/lang/String;
    if-eqz v0, :cond_1c

    .line 671
    iget-object v2, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    #getter for: Lcom/google/android/apps/books/app/BooksActivity;->mConfig:Lcom/google/android/apps/books/util/Config;
    invoke-static {v2}, Lcom/google/android/apps/books/app/BooksActivity;->access$1900(Lcom/google/android/apps/books/app/BooksActivity;)Lcom/google/android/apps/books/util/Config;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/google/android/apps/books/util/OceanUris;->getBuyTheBookUrl(Lcom/google/android/apps/books/util/Config;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 672
    .local v1, uri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    #calls: Lcom/google/android/apps/books/app/BooksActivity;->startFinskyIntent(Landroid/net/Uri;Ljava/lang/String;)V
    invoke-static {v2, v1, v0}, Lcom/google/android/apps/books/app/BooksActivity;->access$2000(Lcom/google/android/apps/books/app/BooksActivity;Landroid/net/Uri;Ljava/lang/String;)V

    .line 676
    .end local v1           #uri:Landroid/net/Uri;
    :goto_1b
    return-void

    .line 674
    :cond_1c
    invoke-virtual {p0, p2}, Lcom/google/android/apps/books/app/BooksActivity$1;->openAuthenticatedUrl(Ljava/lang/String;)V

    goto :goto_1b
.end method

.method public startForcedSync()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 815
    new-instance v0, Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask;

    iget-object v1, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    iget-object v2, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    #getter for: Lcom/google/android/apps/books/app/BooksActivity;->mFetchService:Lcom/google/android/apps/books/app/BooksActivity$ExternalFuture;
    invoke-static {v2}, Lcom/google/android/apps/books/app/BooksActivity;->access$2400(Lcom/google/android/apps/books/app/BooksActivity;)Lcom/google/android/apps/books/app/BooksActivity$ExternalFuture;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    #getter for: Lcom/google/android/apps/books/app/BooksActivity;->mBulkUpgradeListener:Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask$Listener;
    invoke-static {v3}, Lcom/google/android/apps/books/app/BooksActivity;->access$2500(Lcom/google/android/apps/books/app/BooksActivity;)Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask$Listener;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask;-><init>(Landroid/content/Context;Ljava/util/concurrent/Future;Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask$Listener;)V

    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 819
    new-instance v0, Lcom/google/android/apps/books/app/BooksActivity$ForcedSyncTask;

    iget-object v1, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/books/app/BooksActivity$ForcedSyncTask;-><init>(Lcom/google/android/apps/books/app/BooksActivity;Lcom/google/android/apps/books/app/BooksActivity$1;)V

    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/books/app/BooksActivity$ForcedSyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 820
    return-void
.end method

.method public startSearch(Ljava/lang/String;)V
    .registers 5
    .parameter "query"

    .prologue
    .line 691
    iget-object v2, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    #getter for: Lcom/google/android/apps/books/app/BooksActivity;->mConfig:Lcom/google/android/apps/books/util/Config;
    invoke-static {v2}, Lcom/google/android/apps/books/app/BooksActivity;->access$1900(Lcom/google/android/apps/books/app/BooksActivity;)Lcom/google/android/apps/books/util/Config;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/google/android/apps/books/util/OceanUris;->buildSearchIntent(Lcom/google/android/apps/books/util/Config;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 692
    .local v1, uri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    #getter for: Lcom/google/android/apps/books/app/BooksActivity;->mConfig:Lcom/google/android/apps/books/util/Config;
    invoke-static {v2}, Lcom/google/android/apps/books/app/BooksActivity;->access$1900(Lcom/google/android/apps/books/app/BooksActivity;)Lcom/google/android/apps/books/util/Config;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/books/util/Config;->getInstalledNativeFinskyPackageName()Ljava/lang/String;

    move-result-object v0

    .line 693
    .local v0, installedFinskyApp:Ljava/lang/String;
    if-eqz v0, :cond_1c

    .line 694
    iget-object v2, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    #calls: Lcom/google/android/apps/books/app/BooksActivity;->startFinskyIntent(Landroid/net/Uri;Ljava/lang/String;)V
    invoke-static {v2, v1, v0}, Lcom/google/android/apps/books/app/BooksActivity;->access$2000(Lcom/google/android/apps/books/app/BooksActivity;Landroid/net/Uri;Ljava/lang/String;)V

    .line 698
    :goto_1b
    return-void

    .line 696
    :cond_1c
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/apps/books/app/BooksActivity$1;->openAuthenticatedUrl(Ljava/lang/String;)V

    goto :goto_1b
.end method

.method public startShare(Landroid/net/Uri;Ljava/lang/CharSequence;)V
    .registers 11
    .parameter "uri"
    .parameter "volumeTitle"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 891
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 892
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "text/plain"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 893
    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 894
    const-string v2, "android.intent.extra.SUBJECT"

    iget-object v3, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    const v4, 0x7f0e00a7

    new-array v5, v7, [Ljava/lang/Object;

    aput-object p2, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/google/android/apps/books/app/BooksActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 895
    invoke-static {v1}, Lcom/google/android/apps/books/app/BooksActivity;->markExternalIntent(Landroid/content/Intent;)V

    .line 897
    iget-object v2, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    const v3, 0x7f0e00a6

    new-array v4, v7, [Ljava/lang/Object;

    aput-object p2, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/google/android/apps/books/app/BooksActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 899
    .local v0, dialogTitle:Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-static {v1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/apps/books/app/BooksActivity;->startActivity(Landroid/content/Intent;)V

    .line 900
    return-void
.end method

.method public startShop()V
    .registers 4

    .prologue
    .line 680
    iget-object v2, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    #getter for: Lcom/google/android/apps/books/app/BooksActivity;->mConfig:Lcom/google/android/apps/books/util/Config;
    invoke-static {v2}, Lcom/google/android/apps/books/app/BooksActivity;->access$1900(Lcom/google/android/apps/books/app/BooksActivity;)Lcom/google/android/apps/books/util/Config;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/books/util/OceanUris;->getShopUrl(Lcom/google/android/apps/books/util/Config;)Landroid/net/Uri;

    move-result-object v1

    .line 681
    .local v1, uri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    #getter for: Lcom/google/android/apps/books/app/BooksActivity;->mConfig:Lcom/google/android/apps/books/util/Config;
    invoke-static {v2}, Lcom/google/android/apps/books/app/BooksActivity;->access$1900(Lcom/google/android/apps/books/app/BooksActivity;)Lcom/google/android/apps/books/util/Config;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/books/util/Config;->getInstalledNativeFinskyPackageName()Ljava/lang/String;

    move-result-object v0

    .line 682
    .local v0, installedFinskyApp:Ljava/lang/String;
    if-eqz v0, :cond_1c

    .line 683
    iget-object v2, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    #calls: Lcom/google/android/apps/books/app/BooksActivity;->startFinskyIntent(Landroid/net/Uri;Ljava/lang/String;)V
    invoke-static {v2, v1, v0}, Lcom/google/android/apps/books/app/BooksActivity;->access$2000(Lcom/google/android/apps/books/app/BooksActivity;Landroid/net/Uri;Ljava/lang/String;)V

    .line 687
    :goto_1b
    return-void

    .line 685
    :cond_1c
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/apps/books/app/BooksActivity$1;->openAuthenticatedUrl(Ljava/lang/String;)V

    goto :goto_1b
.end method

.method public updateNightMode()V
    .registers 3

    .prologue
    .line 558
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    #getter for: Lcom/google/android/apps/books/app/BooksActivity;->mIsThemeNightActive:Z
    invoke-static {v0}, Lcom/google/android/apps/books/app/BooksActivity;->access$1400(Lcom/google/android/apps/books/app/BooksActivity;)Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    #calls: Lcom/google/android/apps/books/app/BooksActivity;->isThemeNightRequested()Z
    invoke-static {v1}, Lcom/google/android/apps/books/app/BooksActivity;->access$1500(Lcom/google/android/apps/books/app/BooksActivity;)Z

    move-result v1

    if-eq v0, v1, :cond_13

    .line 559
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/books/app/BooksActivity;->recreate()V

    .line 561
    :cond_13
    return-void
.end method
