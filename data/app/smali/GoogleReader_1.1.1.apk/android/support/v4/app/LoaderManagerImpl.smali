.class Landroid/support/v4/app/LoaderManagerImpl;
.super Landroid/support/v4/app/LoaderManager;
.source "LoaderManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
    }
.end annotation


# static fields
.field static DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "LoaderManager"


# instance fields
.field mActivity:Landroid/support/v4/app/FragmentActivity;

.field mCreatingLoader:Z

.field final mInactiveLoaders:Landroid/support/v4/app/HCSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/app/HCSparseArray",
            "<",
            "Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mLoaders:Landroid/support/v4/app/HCSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/app/HCSparseArray",
            "<",
            "Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;",
            ">;"
        }
    .end annotation
.end field

.field mRetaining:Z

.field mRetainingStarted:Z

.field mStarted:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 182
    const/4 v0, 0x0

    sput-boolean v0, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Landroid/support/v4/app/FragmentActivity;Z)V
    .registers 4
    .parameter "activity"
    .parameter "started"

    .prologue
    .line 464
    invoke-direct {p0}, Landroid/support/v4/app/LoaderManager;-><init>()V

    .line 187
    new-instance v0, Landroid/support/v4/app/HCSparseArray;

    invoke-direct {v0}, Landroid/support/v4/app/HCSparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/app/HCSparseArray;

    .line 193
    new-instance v0, Landroid/support/v4/app/HCSparseArray;

    invoke-direct {v0}, Landroid/support/v4/app/HCSparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/support/v4/app/HCSparseArray;

    .line 465
    iput-object p1, p0, Landroid/support/v4/app/LoaderManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    .line 466
    iput-boolean p2, p0, Landroid/support/v4/app/LoaderManagerImpl;->mStarted:Z

    .line 467
    return-void
.end method

.method private createAndInstallLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
    .registers 7
    .parameter "id"
    .parameter "args"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;"
        }
    .end annotation

    .prologue
    .local p3, callback:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;,"Landroid/support/v4/app/LoaderManager$LoaderCallbacks<Ljava/lang/Object;>;"
    const/4 v2, 0x0

    .line 484
    const/4 v1, 0x1

    :try_start_2
    iput-boolean v1, p0, Landroid/support/v4/app/LoaderManagerImpl;->mCreatingLoader:Z

    .line 485
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/app/LoaderManagerImpl;->createLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    move-result-object v0

    .line 486
    .local v0, info:Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
    invoke-virtual {p0, v0}, Landroid/support/v4/app/LoaderManagerImpl;->installLoader(Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;)V
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_e

    .line 489
    iput-boolean v2, p0, Landroid/support/v4/app/LoaderManagerImpl;->mCreatingLoader:Z

    return-object v0

    .end local v0           #info:Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
    :catchall_e
    move-exception v1

    iput-boolean v2, p0, Landroid/support/v4/app/LoaderManagerImpl;->mCreatingLoader:Z

    throw v1
.end method

.method private createLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
    .registers 6
    .parameter "id"
    .parameter "args"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;"
        }
    .end annotation

    .prologue
    .line 475
    .local p3, callback:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;,"Landroid/support/v4/app/LoaderManager$LoaderCallbacks<Ljava/lang/Object;>;"
    new-instance v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;-><init>(Landroid/support/v4/app/LoaderManagerImpl;ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)V

    .line 476
    .local v0, info:Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
    invoke-interface {p3, p1, p2}, Landroid/support/v4/app/LoaderManager$LoaderCallbacks;->onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;

    move-result-object v1

    .line 477
    .local v1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Ljava/lang/Object;>;"
    iput-object v1, v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    .line 478
    return-object v0
.end method


# virtual methods
.method public destroyLoader(I)V
    .registers 5
    .parameter

    .prologue
    .line 644
    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mCreatingLoader:Z

    if-eqz v0, :cond_c

    .line 645
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Called while creating a loader"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 648
    :cond_c
    sget-boolean v0, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_2c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "destroyLoader in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 649
    :cond_2c
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/HCSparseArray;->indexOfKey(I)I

    move-result v1

    .line 650
    if-ltz v1, :cond_44

    .line 651
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/HCSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    .line 652
    iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v2, v1}, Landroid/support/v4/app/HCSparseArray;->removeAt(I)V

    .line 653
    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->destroy()V

    .line 655
    :cond_44
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/HCSparseArray;->indexOfKey(I)I

    move-result v1

    .line 656
    if-ltz v1, :cond_5c

    .line 657
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/HCSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    .line 658
    iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v2, v1}, Landroid/support/v4/app/HCSparseArray;->removeAt(I)V

    .line 659
    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->destroy()V

    .line 661
    :cond_5c
    return-void
.end method

.method doDestroy()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 756
    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mRetaining:Z

    if-nez v0, :cond_34

    .line 757
    sget-boolean v0, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Destroying Active in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 758
    :cond_1b
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v0}, Landroid/support/v4/app/HCSparseArray;->size()I

    move-result v0

    sub-int/2addr v0, v2

    move v1, v0

    :goto_23
    if-ltz v1, :cond_34

    .line 759
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/HCSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->destroy()V

    .line 758
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_23

    .line 763
    :cond_34
    sget-boolean v0, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_4a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Destroying Inactive in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 764
    :cond_4a
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v0}, Landroid/support/v4/app/HCSparseArray;->size()I

    move-result v0

    sub-int/2addr v0, v2

    move v1, v0

    :goto_52
    if-ltz v1, :cond_63

    .line 765
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/HCSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->destroy()V

    .line 764
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_52

    .line 767
    :cond_63
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v0}, Landroid/support/v4/app/HCSparseArray;->clear()V

    .line 768
    return-void
.end method

.method doReportNextStart()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 744
    iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v1}, Landroid/support/v4/app/HCSparseArray;->size()I

    move-result v1

    sub-int v0, v1, v2

    .local v0, i:I
    :goto_9
    if-ltz v0, :cond_18

    .line 745
    iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/HCSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    iput-boolean v2, v1, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mReportNextStart:Z

    .line 744
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 747
    :cond_18
    return-void
.end method

.method doReportStart()V
    .registers 4

    .prologue
    .line 750
    iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v1}, Landroid/support/v4/app/HCSparseArray;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int v0, v1, v2

    .local v0, i:I
    :goto_9
    if-ltz v0, :cond_19

    .line 751
    iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/HCSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    invoke-virtual {v1}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->reportStart()V

    .line 750
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 753
    :cond_19
    return-void
.end method

.method doRetain()V
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 717
    sget-boolean v0, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_17

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Retaining in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 718
    :cond_17
    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mStarted:Z

    if-nez v0, :cond_3e

    .line 719
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "here"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 720
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 721
    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Called doRetain when not started: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 730
    :cond_3d
    return-void

    .line 725
    :cond_3e
    iput-boolean v2, p0, Landroid/support/v4/app/LoaderManagerImpl;->mRetaining:Z

    .line 726
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mStarted:Z

    .line 727
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v0}, Landroid/support/v4/app/HCSparseArray;->size()I

    move-result v0

    sub-int/2addr v0, v2

    move v1, v0

    :goto_4b
    if-ltz v1, :cond_3d

    .line 728
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/HCSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->retain()V

    .line 727
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_4b
.end method

.method doStart()V
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 684
    sget-boolean v0, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_17

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Starting in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 685
    :cond_17
    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mStarted:Z

    if-eqz v0, :cond_3e

    .line 686
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "here"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 687
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 688
    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Called doStart when already started: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 699
    :cond_3d
    return-void

    .line 692
    :cond_3e
    iput-boolean v2, p0, Landroid/support/v4/app/LoaderManagerImpl;->mStarted:Z

    .line 696
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v0}, Landroid/support/v4/app/HCSparseArray;->size()I

    move-result v0

    sub-int/2addr v0, v2

    move v1, v0

    :goto_48
    if-ltz v1, :cond_3d

    .line 697
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/HCSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->start()V

    .line 696
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_48
.end method

.method doStop()V
    .registers 5

    .prologue
    .line 702
    sget-boolean v0, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stopping in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 703
    :cond_16
    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mStarted:Z

    if-nez v0, :cond_3d

    .line 704
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "here"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 705
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 706
    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Called doStop when not started: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 714
    :goto_3c
    return-void

    .line 710
    :cond_3d
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v0}, Landroid/support/v4/app/HCSparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    move v1, v0

    :goto_46
    if-ltz v1, :cond_57

    .line 711
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/HCSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->stop()V

    .line 710
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_46

    .line 713
    :cond_57
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mStarted:Z

    goto :goto_3c
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 10
    .parameter "prefix"
    .parameter "fd"
    .parameter "writer"
    .parameter "args"

    .prologue
    .line 783
    iget-object v3, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v3}, Landroid/support/v4/app/HCSparseArray;->size()I

    move-result v3

    if-lez v3, :cond_57

    .line 784
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Active Loaders:"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 785
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 786
    .local v1, innerPrefix:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_24
    iget-object v3, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v3}, Landroid/support/v4/app/HCSparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_57

    .line 787
    iget-object v3, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v3, v0}, Landroid/support/v4/app/HCSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    .line 788
    .local v2, li:Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v3, v0}, Landroid/support/v4/app/HCSparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 789
    const-string v3, ": "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 790
    invoke-virtual {v2, v1, p2, p3, p4}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 786
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 793
    .end local v0           #i:I
    .end local v1           #innerPrefix:Ljava/lang/String;
    .end local v2           #li:Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
    :cond_57
    iget-object v3, p0, Landroid/support/v4/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v3}, Landroid/support/v4/app/HCSparseArray;->size()I

    move-result v3

    if-lez v3, :cond_ae

    .line 794
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Inactive Loaders:"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 795
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 796
    .restart local v1       #innerPrefix:Ljava/lang/String;
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_7b
    iget-object v3, p0, Landroid/support/v4/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v3}, Landroid/support/v4/app/HCSparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_ae

    .line 797
    iget-object v3, p0, Landroid/support/v4/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v3, v0}, Landroid/support/v4/app/HCSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    .line 798
    .restart local v2       #li:Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/support/v4/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v3, v0}, Landroid/support/v4/app/HCSparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 799
    const-string v3, ": "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 800
    invoke-virtual {v2, v1, p2, p3, p4}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 796
    add-int/lit8 v0, v0, 0x1

    goto :goto_7b

    .line 803
    .end local v0           #i:I
    .end local v1           #innerPrefix:Ljava/lang/String;
    .end local v2           #li:Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
    :cond_ae
    return-void
.end method

.method finishRetain()V
    .registers 3

    .prologue
    .line 733
    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mRetaining:Z

    if-eqz v0, :cond_37

    .line 734
    sget-boolean v0, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Finished Retaining in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 736
    :cond_1a
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mRetaining:Z

    .line 737
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v0}, Landroid/support/v4/app/HCSparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    move v1, v0

    :goto_26
    if-ltz v1, :cond_37

    .line 738
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/HCSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->finishRetain()V

    .line 737
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_26

    .line 741
    :cond_37
    return-void
.end method

.method public getLoader(I)Landroid/support/v4/content/Loader;
    .registers 5
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I)",
            "Landroid/support/v4/content/Loader",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 669
    iget-boolean v1, p0, Landroid/support/v4/app/LoaderManagerImpl;->mCreatingLoader:Z

    if-eqz v1, :cond_c

    .line 670
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Called while creating a loader"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 673
    :cond_c
    iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v1, p1}, Landroid/support/v4/app/HCSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    .line 674
    .local v0, loaderInfo:Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
    if-eqz v0, :cond_22

    .line 675
    iget-object v1, v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    if-eqz v1, :cond_1f

    .line 676
    iget-object v1, v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    iget-object v1, v1, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    .line 680
    :goto_1e
    return-object v1

    .line 678
    :cond_1f
    iget-object v1, v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    goto :goto_1e

    .line 680
    :cond_22
    const/4 v1, 0x0

    goto :goto_1e
.end method

.method public initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;
    .registers 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I",
            "Landroid/os/Bundle;",
            "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
            "<TD;>;)",
            "Landroid/support/v4/content/Loader",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 529
    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mCreatingLoader:Z

    if-eqz v0, :cond_c

    .line 530
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Called while creating a loader"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 533
    :cond_c
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/HCSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    .line 535
    sget-boolean v1, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_34

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initLoader in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": args="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 537
    :cond_34
    if-nez v0, :cond_62

    .line 539
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/app/LoaderManagerImpl;->createAndInstallLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    move-result-object v0

    .line 540
    sget-boolean v1, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_50

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Created new loader "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 546
    :cond_50
    :goto_50
    iget-boolean v1, v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mHaveData:Z

    if-eqz v1, :cond_5f

    iget-boolean v1, p0, Landroid/support/v4/app/LoaderManagerImpl;->mStarted:Z

    if-eqz v1, :cond_5f

    .line 548
    iget-object v1, v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    iget-object v2, v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mData:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->callOnLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V

    .line 551
    :cond_5f
    iget-object v0, v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    return-object v0

    .line 542
    :cond_62
    sget-boolean v1, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_78

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Re-using existing loader "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 543
    :cond_78
    iput-object p3, v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    goto :goto_50
.end method

.method installLoader(Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;)V
    .registers 4
    .parameter "info"

    .prologue
    .line 494
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/app/HCSparseArray;

    iget v1, p1, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mId:I

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/HCSparseArray;->put(ILjava/lang/Object;)V

    .line 495
    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mStarted:Z

    if-eqz v0, :cond_e

    .line 499
    invoke-virtual {p1}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->start()V

    .line 501
    :cond_e
    return-void
.end method

.method public restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;
    .registers 8
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I",
            "Landroid/os/Bundle;",
            "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
            "<TD;>;)",
            "Landroid/support/v4/content/Loader",
            "<TD;>;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 579
    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mCreatingLoader:Z

    if-eqz v0, :cond_d

    .line 580
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Called while creating a loader"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 583
    :cond_d
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/HCSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    .line 584
    sget-boolean v1, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_35

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restartLoader in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": args="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 585
    :cond_35
    if-eqz v0, :cond_6b

    .line 586
    iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v1, p1}, Landroid/support/v4/app/HCSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    .line 587
    if-eqz v1, :cond_ad

    .line 588
    iget-boolean v2, v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mHaveData:Z

    if-eqz v2, :cond_72

    .line 593
    sget-boolean v2, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_5b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Removing last inactive loader: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 594
    :cond_5b
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mDeliveredData:Z

    .line 595
    invoke-virtual {v1}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->destroy()V

    .line 596
    iget-object v1, v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    invoke-virtual {v1}, Landroid/support/v4/content/Loader;->abandon()V

    .line 597
    iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/app/HCSparseArray;->put(ILjava/lang/Object;)V

    .line 632
    :cond_6b
    :goto_6b
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/app/LoaderManagerImpl;->createAndInstallLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    move-result-object v0

    .line 633
    iget-object v0, v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    :goto_71
    return-object v0

    .line 601
    :cond_72
    iget-boolean v1, v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    if-nez v1, :cond_7f

    .line 605
    iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v1, p1, v3}, Landroid/support/v4/app/HCSparseArray;->put(ILjava/lang/Object;)V

    .line 607
    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->destroy()V

    goto :goto_6b

    .line 612
    :cond_7f
    iget-object v1, v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    if-eqz v1, :cond_a2

    .line 613
    sget-boolean v1, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_9b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Removing pending loader: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 614
    :cond_9b
    iget-object v1, v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    invoke-virtual {v1}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->destroy()V

    .line 615
    iput-object v3, v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    .line 617
    :cond_a2
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/app/LoaderManagerImpl;->createLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    .line 620
    iget-object v0, v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    iget-object v0, v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    goto :goto_71

    .line 626
    :cond_ad
    sget-boolean v1, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_c3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Making last loader inactive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 627
    :cond_c3
    iget-object v1, v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    invoke-virtual {v1}, Landroid/support/v4/content/Loader;->abandon()V

    .line 628
    iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/app/HCSparseArray;->put(ILjava/lang/Object;)V

    goto :goto_6b
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 772
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 773
    const-string v1, "LoaderManager{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 774
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 775
    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 776
    iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v1, v0}, Landroid/support/v4/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 777
    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 778
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method updateActivity(Landroid/support/v4/app/FragmentActivity;)V
    .registers 2
    .parameter "activity"

    .prologue
    .line 470
    iput-object p1, p0, Landroid/support/v4/app/LoaderManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    .line 471
    return-void
.end method
