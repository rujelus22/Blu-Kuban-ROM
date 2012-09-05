.class Lcom/google/android/plus1/PlusOneController$Worker;
.super Ljava/lang/Object;
.source "PlusOneController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/plus1/PlusOneController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Worker"
.end annotation


# instance fields
.field private final mApi:Lcom/google/android/plus1/PlusOneModel;

.field private mInitialized:Z

.field private final mStore:Lcom/google/android/plus1/PlusOneStore;

.field private final mUiThreadExecutor:Ljava/util/concurrent/Executor;

.field final synthetic this$0:Lcom/google/android/plus1/PlusOneController;


# direct methods
.method constructor <init>(Lcom/google/android/plus1/PlusOneController;Lcom/google/android/plus1/PlusOneModel;Lcom/google/android/plus1/PlusOneStore;Ljava/util/concurrent/Executor;)V
    .registers 5
    .parameter
    .parameter "api"
    .parameter "store"
    .parameter "uiThreadExecutor"

    .prologue
    .line 519
    iput-object p1, p0, Lcom/google/android/plus1/PlusOneController$Worker;->this$0:Lcom/google/android/plus1/PlusOneController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 520
    iput-object p2, p0, Lcom/google/android/plus1/PlusOneController$Worker;->mApi:Lcom/google/android/plus1/PlusOneModel;

    .line 521
    iput-object p3, p0, Lcom/google/android/plus1/PlusOneController$Worker;->mStore:Lcom/google/android/plus1/PlusOneStore;

    .line 522
    iput-object p4, p0, Lcom/google/android/plus1/PlusOneController$Worker;->mUiThreadExecutor:Ljava/util/concurrent/Executor;

    .line 523
    return-void
.end method

.method static synthetic access$200(Lcom/google/android/plus1/PlusOneController$Worker;Ljava/util/Set;Z)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 512
    invoke-direct {p0, p1, p2}, Lcom/google/android/plus1/PlusOneController$Worker;->refreshPlusOnes(Ljava/util/Set;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/plus1/PlusOneController$Worker;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 512
    invoke-direct {p0}, Lcom/google/android/plus1/PlusOneController$Worker;->refreshOptedIn()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/plus1/PlusOneController$Worker;Lcom/google/android/plus1/PlusOnePerson;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 512
    invoke-direct {p0, p1}, Lcom/google/android/plus1/PlusOneController$Worker;->getProfileImage(Lcom/google/android/plus1/PlusOnePerson;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/plus1/PlusOneController$Worker;Lcom/google/android/plus1/PlusOneController$SyncCompletionCallback;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 512
    invoke-direct {p0, p1}, Lcom/google/android/plus1/PlusOneController$Worker;->sync(Lcom/google/android/plus1/PlusOneController$SyncCompletionCallback;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/plus1/PlusOneController$Worker;Lcom/google/android/plus1/PlusOneStore$PlusOneOperation;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 512
    invoke-direct {p0, p1}, Lcom/google/android/plus1/PlusOneController$Worker;->addOperation(Lcom/google/android/plus1/PlusOneStore$PlusOneOperation;)V

    return-void
.end method

.method private addOperation(Lcom/google/android/plus1/PlusOneStore$PlusOneOperation;)V
    .registers 3
    .parameter "op"

    .prologue
    .line 545
    invoke-direct {p0}, Lcom/google/android/plus1/PlusOneController$Worker;->initialize()V

    .line 547
    iget-object v0, p0, Lcom/google/android/plus1/PlusOneController$Worker;->mStore:Lcom/google/android/plus1/PlusOneStore;

    invoke-interface {v0, p1}, Lcom/google/android/plus1/PlusOneStore;->addOperation(Lcom/google/android/plus1/PlusOneStore$PlusOneOperation;)V

    .line 550
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/plus1/PlusOneController$Worker;->sync(Lcom/google/android/plus1/PlusOneController$SyncCompletionCallback;)V

    .line 551
    return-void
.end method

.method private getProfileImage(Lcom/google/android/plus1/PlusOnePerson;)V
    .registers 9
    .parameter "person"

    .prologue
    .line 715
    const/4 v0, 0x0

    .line 717
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :try_start_1
    iget-object v3, p0, Lcom/google/android/plus1/PlusOneController$Worker;->this$0:Lcom/google/android/plus1/PlusOneController;

    #getter for: Lcom/google/android/plus1/PlusOneController;->mProfileImageClient:Lcom/google/android/plus1/ProfileImageClient;
    invoke-static {v3}, Lcom/google/android/plus1/PlusOneController;->access$1700(Lcom/google/android/plus1/PlusOneController;)Lcom/google/android/plus1/ProfileImageClient;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/google/android/plus1/ProfileImageClient;->getImage(Lcom/google/android/plus1/PlusOnePerson;)Landroid/graphics/Bitmap;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_19

    move-result-object v0

    .line 723
    :cond_b
    :goto_b
    if-eqz v0, :cond_18

    .line 724
    move-object v2, v0

    .line 725
    .local v2, finalResult:Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/google/android/plus1/PlusOneController$Worker;->mUiThreadExecutor:Ljava/util/concurrent/Executor;

    new-instance v4, Lcom/google/android/plus1/PlusOneController$Worker$8;

    invoke-direct {v4, p0, p1, v2}, Lcom/google/android/plus1/PlusOneController$Worker$8;-><init>(Lcom/google/android/plus1/PlusOneController$Worker;Lcom/google/android/plus1/PlusOnePerson;Landroid/graphics/Bitmap;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 731
    .end local v2           #finalResult:Landroid/graphics/Bitmap;
    :cond_18
    return-void

    .line 718
    :catch_19
    move-exception v1

    .line 719
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "PlusOneController"

    const/4 v4, 0x5

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 720
    const-string v3, "PlusOneController"

    const-string v4, "Error while retrieving bitmap from %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b
.end method

.method private initialize()V
    .registers 4

    .prologue
    .line 530
    iget-boolean v1, p0, Lcom/google/android/plus1/PlusOneController$Worker;->mInitialized:Z

    if-nez v1, :cond_1d

    .line 531
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/plus1/PlusOneController$Worker;->mInitialized:Z

    .line 533
    iget-object v1, p0, Lcom/google/android/plus1/PlusOneController$Worker;->mStore:Lcom/google/android/plus1/PlusOneStore;

    invoke-interface {v1}, Lcom/google/android/plus1/PlusOneStore;->getOperations()Ljava/util/List;

    move-result-object v0

    .line 534
    .local v0, operations:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/plus1/PlusOneStore$PlusOneOperation;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1d

    .line 535
    iget-object v1, p0, Lcom/google/android/plus1/PlusOneController$Worker;->mUiThreadExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/android/plus1/PlusOneController$Worker$1;

    invoke-direct {v2, p0, v0}, Lcom/google/android/plus1/PlusOneController$Worker$1;-><init>(Lcom/google/android/plus1/PlusOneController$Worker;Ljava/util/List;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 542
    .end local v0           #operations:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/plus1/PlusOneStore$PlusOneOperation;>;"
    :cond_1d
    return-void
.end method

.method private refreshOptedIn()V
    .registers 4

    .prologue
    .line 699
    invoke-direct {p0}, Lcom/google/android/plus1/PlusOneController$Worker;->initialize()V

    .line 701
    iget-object v1, p0, Lcom/google/android/plus1/PlusOneController$Worker;->mStore:Lcom/google/android/plus1/PlusOneStore;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/google/android/plus1/PlusOneController$Worker;->refreshOptedInFromSource(Lcom/google/android/plus1/PlusOneReader;Lcom/google/android/plus1/PlusOneStore;)Lcom/google/android/plus1/PlusOneStatus;

    move-result-object v0

    .line 706
    .local v0, result:Lcom/google/android/plus1/PlusOneStatus;
    if-eqz v0, :cond_14

    iget-object v1, v0, Lcom/google/android/plus1/PlusOneStatus;->optedIntoPlusOne:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1b

    .line 707
    :cond_14
    iget-object v1, p0, Lcom/google/android/plus1/PlusOneController$Worker;->mApi:Lcom/google/android/plus1/PlusOneModel;

    iget-object v2, p0, Lcom/google/android/plus1/PlusOneController$Worker;->mStore:Lcom/google/android/plus1/PlusOneStore;

    invoke-direct {p0, v1, v2}, Lcom/google/android/plus1/PlusOneController$Worker;->refreshOptedInFromSource(Lcom/google/android/plus1/PlusOneReader;Lcom/google/android/plus1/PlusOneStore;)Lcom/google/android/plus1/PlusOneStatus;

    .line 709
    :cond_1b
    return-void
.end method

.method private refreshOptedInFromSource(Lcom/google/android/plus1/PlusOneReader;Lcom/google/android/plus1/PlusOneStore;)Lcom/google/android/plus1/PlusOneStatus;
    .registers 11
    .parameter "reader"
    .parameter "cache"

    .prologue
    const/4 v7, 0x6

    .line 661
    const/4 v1, 0x0

    .line 662
    .local v1, exception:Ljava/lang/Exception;
    const/4 v4, 0x0

    .line 664
    .local v4, result:Lcom/google/android/plus1/PlusOneStatus;
    :try_start_3
    invoke-interface {p1}, Lcom/google/android/plus1/PlusOneReader;->getAccountStatus()Lcom/google/android/plus1/PlusOneStatus;

    move-result-object v4

    .line 665
    if-eqz v4, :cond_14

    .line 666
    move-object v3, v4

    .line 667
    .local v3, finalResult:Lcom/google/android/plus1/PlusOneStatus;
    iget-object v5, p0, Lcom/google/android/plus1/PlusOneController$Worker;->mUiThreadExecutor:Ljava/util/concurrent/Executor;

    new-instance v6, Lcom/google/android/plus1/PlusOneController$Worker$6;

    invoke-direct {v6, p0, v3}, Lcom/google/android/plus1/PlusOneController$Worker$6;-><init>(Lcom/google/android/plus1/PlusOneController$Worker;Lcom/google/android/plus1/PlusOneStatus;)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 673
    .end local v3           #finalResult:Lcom/google/android/plus1/PlusOneStatus;
    :cond_14
    if-eqz p2, :cond_19

    .line 674
    invoke-interface {p2, v4}, Lcom/google/android/plus1/PlusOneStore;->setAccountStatus(Lcom/google/android/plus1/PlusOneStatus;)V
    :try_end_19
    .catch Lcom/google/android/plus1/PlusOneReader$PlusOneException; {:try_start_3 .. :try_end_19} :catch_27
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_19} :catch_4e

    .line 687
    :cond_19
    :goto_19
    if-eqz v1, :cond_26

    .line 688
    move-object v2, v1

    .line 689
    .local v2, finalException:Ljava/lang/Exception;
    iget-object v5, p0, Lcom/google/android/plus1/PlusOneController$Worker;->mUiThreadExecutor:Ljava/util/concurrent/Executor;

    new-instance v6, Lcom/google/android/plus1/PlusOneController$Worker$7;

    invoke-direct {v6, p0, v2}, Lcom/google/android/plus1/PlusOneController$Worker$7;-><init>(Lcom/google/android/plus1/PlusOneController$Worker;Ljava/lang/Exception;)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 695
    .end local v2           #finalException:Ljava/lang/Exception;
    :cond_26
    return-object v4

    .line 676
    :catch_27
    move-exception v0

    .line 677
    .local v0, e:Lcom/google/android/plus1/PlusOneReader$PlusOneException;
    const-string v5, "PlusOneController"

    invoke-static {v5, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_4c

    .line 678
    const-string v5, "PlusOneController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error loading opted-in: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/google/android/plus1/PlusOneReader$PlusOneException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    :cond_4c
    move-object v1, v0

    .line 686
    goto :goto_19

    .line 681
    .end local v0           #e:Lcom/google/android/plus1/PlusOneReader$PlusOneException;
    :catch_4e
    move-exception v0

    .line 682
    .local v0, e:Ljava/io/IOException;
    const-string v5, "PlusOneController"

    invoke-static {v5, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_73

    .line 683
    const-string v5, "PlusOneController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error loading opted-in: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    :cond_73
    move-object v1, v0

    goto :goto_19
.end method

.method private refreshPlusOnes(Ljava/util/Set;Z)V
    .registers 7
    .parameter
    .parameter "forceFetchFromApi"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Landroid/net/Uri;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 606
    .local p1, uris:Ljava/util/Set;,"Ljava/util/Set<Landroid/net/Uri;>;"
    invoke-direct {p0}, Lcom/google/android/plus1/PlusOneController$Worker;->initialize()V

    .line 608
    iget-object v2, p0, Lcom/google/android/plus1/PlusOneController$Worker;->mStore:Lcom/google/android/plus1/PlusOneStore;

    const/4 v3, 0x0

    invoke-direct {p0, v2, p1, v3}, Lcom/google/android/plus1/PlusOneController$Worker;->refreshPlusOnesFromSource(Lcom/google/android/plus1/PlusOneReader;Ljava/util/Set;Lcom/google/android/plus1/PlusOneStore;)Ljava/util/Set;

    move-result-object v1

    .line 610
    .local v1, loadedUris:Ljava/util/Set;,"Ljava/util/Set<Landroid/net/Uri;>;"
    if-nez p2, :cond_18

    if-eqz v1, :cond_18

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    if-ge v2, v3, :cond_23

    :cond_18
    const/4 v0, 0x1

    .line 613
    .local v0, fetchFromApi:Z
    :goto_19
    if-eqz v0, :cond_22

    .line 614
    iget-object v2, p0, Lcom/google/android/plus1/PlusOneController$Worker;->mApi:Lcom/google/android/plus1/PlusOneModel;

    iget-object v3, p0, Lcom/google/android/plus1/PlusOneController$Worker;->mStore:Lcom/google/android/plus1/PlusOneStore;

    invoke-direct {p0, v2, p1, v3}, Lcom/google/android/plus1/PlusOneController$Worker;->refreshPlusOnesFromSource(Lcom/google/android/plus1/PlusOneReader;Ljava/util/Set;Lcom/google/android/plus1/PlusOneStore;)Ljava/util/Set;

    .line 616
    :cond_22
    return-void

    .line 610
    .end local v0           #fetchFromApi:Z
    :cond_23
    const/4 v0, 0x0

    goto :goto_19
.end method

.method private refreshPlusOnesFromSource(Lcom/google/android/plus1/PlusOneReader;Ljava/util/Set;Lcom/google/android/plus1/PlusOneStore;)Ljava/util/Set;
    .registers 13
    .parameter "reader"
    .parameter
    .parameter "cache"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/plus1/PlusOneReader;",
            "Ljava/util/Set",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Lcom/google/android/plus1/PlusOneStore;",
            ")",
            "Ljava/util/Set",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .local p2, uris:Ljava/util/Set;,"Ljava/util/Set<Landroid/net/Uri;>;"
    const/4 v8, 0x6

    .line 561
    const/4 v2, 0x0

    .line 563
    .local v2, exception:Ljava/lang/Exception;
    :try_start_2
    invoke-interface {p1, p2}, Lcom/google/android/plus1/PlusOneReader;->getPlusOnes(Ljava/util/Set;)Ljava/util/Map;

    move-result-object v5

    .line 564
    .local v5, storeValues:Ljava/util/Map;,"Ljava/util/Map<Landroid/net/Uri;Lcom/google/android/plus1/PlusOne;>;"
    iget-object v6, p0, Lcom/google/android/plus1/PlusOneController$Worker;->mUiThreadExecutor:Ljava/util/concurrent/Executor;

    new-instance v7, Lcom/google/android/plus1/PlusOneController$Worker$2;

    invoke-direct {v7, p0, v5}, Lcom/google/android/plus1/PlusOneController$Worker$2;-><init>(Lcom/google/android/plus1/PlusOneController$Worker;Ljava/util/Map;)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 569
    if-eqz p3, :cond_6b

    .line 570
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_1a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 571
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/net/Uri;Lcom/google/android/plus1/PlusOne;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/plus1/PlusOne;

    invoke-interface {p3, v6, v7}, Lcom/google/android/plus1/PlusOneStore;->setPlusOne(Landroid/net/Uri;Lcom/google/android/plus1/PlusOne;)V
    :try_end_35
    .catch Lcom/google/android/plus1/PlusOneReader$PlusOneException; {:try_start_2 .. :try_end_35} :catch_36
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_35} :catch_74

    goto :goto_1a

    .line 575
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/net/Uri;Lcom/google/android/plus1/PlusOne;>;"
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #storeValues:Ljava/util/Map;,"Ljava/util/Map<Landroid/net/Uri;Lcom/google/android/plus1/PlusOne;>;"
    :catch_36
    move-exception v0

    .line 576
    .local v0, e:Lcom/google/android/plus1/PlusOneReader$PlusOneException;
    move-object v2, v0

    .line 577
    const-string v6, "PlusOneController"

    invoke-static {v6, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_5c

    .line 578
    const-string v6, "PlusOneController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error loading +1\'s: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/google/android/plus1/PlusOneReader$PlusOneException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    .end local v0           #e:Lcom/google/android/plus1/PlusOneReader$PlusOneException;
    :cond_5c
    :goto_5c
    if-eqz v2, :cond_69

    .line 587
    move-object v3, v2

    .line 588
    .local v3, finalException:Ljava/lang/Exception;
    iget-object v6, p0, Lcom/google/android/plus1/PlusOneController$Worker;->mUiThreadExecutor:Ljava/util/concurrent/Executor;

    new-instance v7, Lcom/google/android/plus1/PlusOneController$Worker$3;

    invoke-direct {v7, p0, p2, v3}, Lcom/google/android/plus1/PlusOneController$Worker$3;-><init>(Lcom/google/android/plus1/PlusOneController$Worker;Ljava/util/Set;Ljava/lang/Exception;)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 596
    .end local v3           #finalException:Ljava/lang/Exception;
    :cond_69
    const/4 v6, 0x0

    :goto_6a
    return-object v6

    .line 574
    .restart local v5       #storeValues:Ljava/util/Map;,"Ljava/util/Map<Landroid/net/Uri;Lcom/google/android/plus1/PlusOne;>;"
    :cond_6b
    :try_start_6b
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-static {v6}, Lcom/google/common/collect/Sets;->newHashSet(Ljava/lang/Iterable;)Ljava/util/HashSet;
    :try_end_72
    .catch Lcom/google/android/plus1/PlusOneReader$PlusOneException; {:try_start_6b .. :try_end_72} :catch_36
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_72} :catch_74

    move-result-object v6

    goto :goto_6a

    .line 580
    .end local v5           #storeValues:Ljava/util/Map;,"Ljava/util/Map<Landroid/net/Uri;Lcom/google/android/plus1/PlusOne;>;"
    :catch_74
    move-exception v0

    .line 581
    .local v0, e:Ljava/io/IOException;
    move-object v2, v0

    .line 582
    const-string v6, "PlusOneController"

    invoke-static {v6, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_5c

    .line 583
    const-string v6, "PlusOneController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error loading +1\'s: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5c
.end method

.method private sync(Lcom/google/android/plus1/PlusOneController$SyncCompletionCallback;)V
    .registers 10
    .parameter "completionCallback"

    .prologue
    const/4 v7, 0x6

    .line 619
    invoke-direct {p0}, Lcom/google/android/plus1/PlusOneController$Worker;->initialize()V

    .line 621
    const/4 v1, 0x0

    .line 623
    .local v1, exception:Ljava/lang/Exception;
    :try_start_5
    iget-object v5, p0, Lcom/google/android/plus1/PlusOneController$Worker;->mStore:Lcom/google/android/plus1/PlusOneStore;

    invoke-interface {v5}, Lcom/google/android/plus1/PlusOneStore;->getOperations()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/plus1/PlusOneStore$PlusOneOperation;

    .line 624
    .local v4, op:Lcom/google/android/plus1/PlusOneStore$PlusOneOperation;
    iget-object v5, p0, Lcom/google/android/plus1/PlusOneController$Worker;->mApi:Lcom/google/android/plus1/PlusOneModel;

    invoke-virtual {v4, v5}, Lcom/google/android/plus1/PlusOneStore$PlusOneOperation;->apply(Lcom/google/android/plus1/PlusOneEditor;)V

    .line 625
    iget-object v5, p0, Lcom/google/android/plus1/PlusOneController$Worker;->mStore:Lcom/google/android/plus1/PlusOneStore;

    invoke-virtual {v4, v5}, Lcom/google/android/plus1/PlusOneStore$PlusOneOperation;->apply(Lcom/google/android/plus1/PlusOneEditor;)V

    .line 626
    iget-object v5, p0, Lcom/google/android/plus1/PlusOneController$Worker;->mStore:Lcom/google/android/plus1/PlusOneStore;

    invoke-interface {v5, v4}, Lcom/google/android/plus1/PlusOneStore;->removeOperation(Lcom/google/android/plus1/PlusOneStore$PlusOneOperation;)V

    .line 627
    iget-object v5, p0, Lcom/google/android/plus1/PlusOneController$Worker;->mUiThreadExecutor:Ljava/util/concurrent/Executor;

    new-instance v6, Lcom/google/android/plus1/PlusOneController$Worker$4;

    invoke-direct {v6, p0, v4}, Lcom/google/android/plus1/PlusOneController$Worker$4;-><init>(Lcom/google/android/plus1/PlusOneController$Worker;Lcom/google/android/plus1/PlusOneStore$PlusOneOperation;)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_34} :catch_35
    .catch Lcom/google/android/plus1/PlusOneReader$PlusOneException; {:try_start_5 .. :try_end_34} :catch_69

    goto :goto_f

    .line 633
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #op:Lcom/google/android/plus1/PlusOneStore$PlusOneOperation;
    :catch_35
    move-exception v0

    .line 634
    .local v0, e:Ljava/io/IOException;
    const-string v5, "PlusOneController"

    invoke-static {v5, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_5a

    .line 635
    const-string v5, "PlusOneController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error performing operation: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    :cond_5a
    move-object v1, v0

    .line 645
    .end local v0           #e:Ljava/io/IOException;
    :cond_5b
    :goto_5b
    if-eqz p1, :cond_68

    .line 646
    move-object v2, v1

    .line 647
    .local v2, finalException:Ljava/lang/Exception;
    iget-object v5, p0, Lcom/google/android/plus1/PlusOneController$Worker;->mUiThreadExecutor:Ljava/util/concurrent/Executor;

    new-instance v6, Lcom/google/android/plus1/PlusOneController$Worker$5;

    invoke-direct {v6, p0, p1, v2}, Lcom/google/android/plus1/PlusOneController$Worker$5;-><init>(Lcom/google/android/plus1/PlusOneController$Worker;Lcom/google/android/plus1/PlusOneController$SyncCompletionCallback;Ljava/lang/Exception;)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 653
    .end local v2           #finalException:Ljava/lang/Exception;
    :cond_68
    return-void

    .line 638
    :catch_69
    move-exception v0

    .line 639
    .local v0, e:Lcom/google/android/plus1/PlusOneReader$PlusOneException;
    const-string v5, "PlusOneController"

    invoke-static {v5, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_8e

    .line 640
    const-string v5, "PlusOneController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error performing operation: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/google/android/plus1/PlusOneReader$PlusOneException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    :cond_8e
    move-object v1, v0

    goto :goto_5b
.end method
