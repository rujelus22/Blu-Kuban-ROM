.class public Landroid/support/v4/app/FragmentActivity;
.super Landroid/app/Activity;
.source "FragmentActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/FragmentActivity$FragmentTag;,
        Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;
    }
.end annotation


# static fields
.field private static final FRAGMENTS_TAG:Ljava/lang/String; = "android:support:fragments"

.field private static final HONEYCOMB:I = 0xb

.field static final MSG_REALLY_STOPPED:I = 0x1

.field static final MSG_RESUME_PENDING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "FragmentActivity"


# instance fields
.field mAllLoaderManagers:Landroid/support/v4/app/HCSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/app/HCSparseArray",
            "<",
            "Landroid/support/v4/app/LoaderManagerImpl;",
            ">;"
        }
    .end annotation
.end field

.field mCheckedForLoaderManager:Z

.field mCreated:Z

.field final mFragments:Landroid/support/v4/app/FragmentManagerImpl;

.field final mHandler:Landroid/os/Handler;

.field mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

.field mLoadersStarted:Z

.field mOptionsMenuInvalidated:Z

.field mReallyStopped:Z

.field mResumed:Z

.field mRetaining:Z

.field mStopped:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 73
    new-instance v0, Landroid/support/v4/app/FragmentActivity$1;

    invoke-direct {v0, p0}, Landroid/support/v4/app/FragmentActivity$1;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    iput-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    .line 92
    new-instance v0, Landroid/support/v4/app/FragmentManagerImpl;

    invoke-direct {v0}, Landroid/support/v4/app/FragmentManagerImpl;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    .line 115
    return-void
.end method


# virtual methods
.method doReallyStop(Z)V
    .registers 4
    .parameter "retaining"

    .prologue
    const/4 v1, 0x1

    .line 606
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mReallyStopped:Z

    if-nez v0, :cond_11

    .line 607
    iput-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->mReallyStopped:Z

    .line 608
    iput-boolean p1, p0, Landroid/support/v4/app/FragmentActivity;->mRetaining:Z

    .line 609
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 610
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->onReallyStop()V

    .line 612
    :cond_11
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 581
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Local FragmentActivity "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 586
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 587
    const-string v0, " State:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 588
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 589
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mCreated="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 590
    iget-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->mCreated:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, "mResumed="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 591
    iget-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->mResumed:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mStopped="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 592
    iget-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->mStopped:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mReallyStopped="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 593
    iget-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->mReallyStopped:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 594
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLoadersStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 595
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mLoadersStarted:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 596
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    if-eqz v0, :cond_99

    .line 597
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Loader Manager "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 598
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 599
    const-string v0, ":"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 600
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/support/v4/app/LoaderManagerImpl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 602
    :cond_99
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/app/FragmentManagerImpl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 603
    return-void
.end method

.method public getLastCustomNonConfigurationInstance()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 552
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;

    .line 554
    .local v0, nc:Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;
    if-eqz v0, :cond_b

    iget-object v1, v0, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;->custom:Ljava/lang/Object;

    :goto_a
    return-object v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method getLoaderManager(IZZ)Landroid/support/v4/app/LoaderManagerImpl;
    .registers 6
    .parameter "index"
    .parameter "started"
    .parameter "create"

    .prologue
    .line 709
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->mAllLoaderManagers:Landroid/support/v4/app/HCSparseArray;

    if-nez v1, :cond_b

    .line 710
    new-instance v1, Landroid/support/v4/app/HCSparseArray;

    invoke-direct {v1}, Landroid/support/v4/app/HCSparseArray;-><init>()V

    iput-object v1, p0, Landroid/support/v4/app/FragmentActivity;->mAllLoaderManagers:Landroid/support/v4/app/HCSparseArray;

    .line 712
    :cond_b
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->mAllLoaderManagers:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v1, p1}, Landroid/support/v4/app/HCSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/LoaderManagerImpl;

    .line 713
    .local v0, lm:Landroid/support/v4/app/LoaderManagerImpl;
    if-nez v0, :cond_22

    .line 714
    if-eqz p3, :cond_21

    .line 715
    new-instance v0, Landroid/support/v4/app/LoaderManagerImpl;

    .end local v0           #lm:Landroid/support/v4/app/LoaderManagerImpl;
    invoke-direct {v0, p0, p2}, Landroid/support/v4/app/LoaderManagerImpl;-><init>(Landroid/support/v4/app/FragmentActivity;Z)V

    .line 716
    .restart local v0       #lm:Landroid/support/v4/app/LoaderManagerImpl;
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->mAllLoaderManagers:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/app/HCSparseArray;->put(ILjava/lang/Object;)V

    .line 721
    :cond_21
    :goto_21
    return-object v0

    .line 719
    :cond_22
    invoke-virtual {v0, p0}, Landroid/support/v4/app/LoaderManagerImpl;->updateActivity(Landroid/support/v4/app/FragmentActivity;)V

    goto :goto_21
.end method

.method public getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
    .registers 2

    .prologue
    .line 651
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    return-object v0
.end method

.method public getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 700
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    if-eqz v0, :cond_8

    .line 701
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    .line 705
    :goto_7
    return-object v0

    .line 703
    :cond_8
    iput-boolean v2, p0, Landroid/support/v4/app/FragmentActivity;->mCheckedForLoaderManager:Z

    .line 704
    const/4 v0, -0x1

    iget-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->mLoadersStarted:Z

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v4/app/FragmentActivity;->getLoaderManager(IZZ)Landroid/support/v4/app/LoaderManagerImpl;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    .line 705
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    goto :goto_7
.end method

.method invalidateSupportFragmentIndex(I)V
    .registers 4
    .parameter "index"

    .prologue
    .line 683
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->mAllLoaderManagers:Landroid/support/v4/app/HCSparseArray;

    if-eqz v1, :cond_1a

    .line 684
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->mAllLoaderManagers:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v1, p1}, Landroid/support/v4/app/HCSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/LoaderManagerImpl;

    .line 685
    .local v0, lm:Landroid/support/v4/app/LoaderManagerImpl;
    if-eqz v0, :cond_1a

    iget-boolean v1, v0, Landroid/support/v4/app/LoaderManagerImpl;->mRetaining:Z

    if-nez v1, :cond_1a

    .line 686
    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl;->doDestroy()V

    .line 687
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->mAllLoaderManagers:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v1, p1}, Landroid/support/v4/app/HCSparseArray;->remove(I)V

    .line 690
    .end local v0           #lm:Landroid/support/v4/app/LoaderManagerImpl;
    :cond_1a
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 133
    shr-int/lit8 v0, p1, 0x10

    .line 134
    if-eqz v0, :cond_65

    .line 135
    add-int/lit8 v0, v0, -0x1

    .line 136
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v1, v1, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v1, :cond_18

    if-ltz v0, :cond_18

    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v1, v1, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_35

    .line 137
    :cond_18
    const-string v0, "FragmentActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity result fragment index out of range: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :goto_34
    return-void

    .line 141
    :cond_35
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v1, v1, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/support/v4/app/Fragment;

    .line 142
    if-nez p0, :cond_5d

    .line 143
    const-string v0, "FragmentActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity result no fragment exists for index: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_5d
    const v0, 0xffff

    and-int/2addr v0, p1

    invoke-virtual {p0, v0, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_34

    .line 150
    :cond_65
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_34
.end method

.method public onAttachFragment(Landroid/support/v4/app/Fragment;)V
    .registers 2
    .parameter "fragment"

    .prologue
    .line 644
    return-void
.end method

.method public onBackPressed()V
    .registers 2

    .prologue
    .line 158
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->popBackStackImmediate()Z

    move-result v0

    if-nez v0, :cond_b

    .line 159
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 161
    :cond_b
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .parameter "newConfig"

    .prologue
    .line 168
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 169
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 170
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 177
    iget-object v2, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v2, p0}, Landroid/support/v4/app/FragmentManagerImpl;->attachActivity(Landroid/support/v4/app/FragmentActivity;)V

    .line 179
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v2

    if-nez v2, :cond_16

    .line 180
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/LayoutInflater;->setFactory(Landroid/view/LayoutInflater$Factory;)V

    .line 183
    :cond_16
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 185
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;

    .line 187
    .local v0, nc:Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;
    if-eqz v0, :cond_25

    .line 188
    iget-object v2, v0, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;->loaders:Landroid/support/v4/app/HCSparseArray;

    iput-object v2, p0, Landroid/support/v4/app/FragmentActivity;->mAllLoaderManagers:Landroid/support/v4/app/HCSparseArray;

    .line 190
    :cond_25
    if-eqz p1, :cond_36

    .line 191
    const-string v2, "android:support:fragments"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .line 192
    .local v1, p:Landroid/os/Parcelable;
    iget-object v2, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v0, :cond_3c

    iget-object v3, v0, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;->fragments:Ljava/util/ArrayList;

    :goto_33
    invoke-virtual {v2, v1, v3}, Landroid/support/v4/app/FragmentManagerImpl;->restoreAllState(Landroid/os/Parcelable;Ljava/util/ArrayList;)V

    .line 194
    .end local v1           #p:Landroid/os/Parcelable;
    :cond_36
    iget-object v2, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchCreate()V

    .line 195
    return-void

    .line 192
    .restart local v1       #p:Landroid/os/Parcelable;
    :cond_3c
    const/4 v3, 0x0

    goto :goto_33
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .registers 6
    .parameter "featureId"
    .parameter "menu"

    .prologue
    .line 202
    if-nez p1, :cond_1b

    .line 203
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    .line 204
    .local v0, show:Z
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 205
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_19

    move v1, v0

    .line 213
    .end local v0           #show:Z
    :goto_18
    return v1

    .line 211
    .restart local v0       #show:Z
    :cond_19
    const/4 v1, 0x1

    goto :goto_18

    .line 213
    .end local v0           #show:Z
    :cond_1b
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v1

    goto :goto_18
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v5, -0x1

    .line 221
    const-string v0, "fragment"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 222
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    .line 296
    :goto_10
    return-object v0

    .line 225
    :cond_11
    const-string v0, "class"

    invoke-interface {p3, v4, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 226
    sget-object v1, Landroid/support/v4/app/FragmentActivity$FragmentTag;->Fragment:[I

    invoke-virtual {p2, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 227
    if-nez v0, :cond_23

    .line 228
    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 230
    :cond_23
    invoke-virtual {v1, v7, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 231
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 232
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 235
    if-eqz v4, :cond_5c

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v1

    .line 236
    :goto_35
    if-ne v1, v5, :cond_5e

    if-ne v2, v5, :cond_5e

    if-nez v3, :cond_5e

    .line 237
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": Must specify unique android:id, android:tag, or have a parent with an id for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5c
    move v1, v6

    .line 235
    goto :goto_35

    .line 244
    :cond_5e
    if-eq v2, v5, :cond_66

    iget-object v4, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v4, v2}, Landroid/support/v4/app/FragmentManagerImpl;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v4

    .line 245
    :cond_66
    if-nez v4, :cond_70

    if-eqz v3, :cond_70

    .line 246
    iget-object v4, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v4, v3}, Landroid/support/v4/app/FragmentManagerImpl;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    .line 248
    :cond_70
    if-nez v4, :cond_7a

    if-eq v1, v5, :cond_7a

    .line 249
    iget-object v4, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v4, v1}, Landroid/support/v4/app/FragmentManagerImpl;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v4

    .line 252
    :cond_7a
    sget-boolean v5, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v5, :cond_a8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCreateView: id=0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " fname="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " existing="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 255
    :cond_a8
    if-nez v4, :cond_ef

    .line 256
    invoke-static {p0, v0}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    .line 257
    iput-boolean v7, v4, Landroid/support/v4/app/Fragment;->mFromLayout:Z

    .line 258
    if-eqz v2, :cond_ed

    move v5, v2

    :goto_b3
    iput v5, v4, Landroid/support/v4/app/Fragment;->mFragmentId:I

    .line 259
    iput v1, v4, Landroid/support/v4/app/Fragment;->mContainerId:I

    .line 260
    iput-object v3, v4, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    .line 261
    iput-boolean v7, v4, Landroid/support/v4/app/Fragment;->mInLayout:Z

    .line 262
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    iput-object v1, v4, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 263
    iget-object v1, v4, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v4, p0, p3, v1}, Landroid/support/v4/app/Fragment;->onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 264
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v1, v4, v7}, Landroid/support/v4/app/FragmentManagerImpl;->addFragment(Landroid/support/v4/app/Fragment;Z)V

    move-object v1, v4

    .line 286
    :goto_ca
    iget-object v4, v1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-nez v4, :cond_14d

    .line 287
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " did not create a view."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_ed
    move v5, v1

    .line 258
    goto :goto_b3

    .line 266
    :cond_ef
    iget-boolean v5, v4, Landroid/support/v4/app/Fragment;->mInLayout:Z

    if-eqz v5, :cond_13a

    .line 269
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": Duplicate id 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", tag "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", or parent id 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with another fragment for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 276
    :cond_13a
    iput-boolean v7, v4, Landroid/support/v4/app/Fragment;->mInLayout:Z

    .line 280
    iget-boolean v1, v4, Landroid/support/v4/app/Fragment;->mRetaining:Z

    if-nez v1, :cond_145

    .line 281
    iget-object v1, v4, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v4, p0, p3, v1}, Landroid/support/v4/app/Fragment;->onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 283
    :cond_145
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v1, v4}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;)V

    move-object v1, v4

    goto/16 :goto_ca

    .line 290
    :cond_14d
    if-eqz v2, :cond_154

    .line 291
    iget-object v0, v1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setId(I)V

    .line 293
    :cond_154
    iget-object v0, v1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_161

    .line 294
    iget-object v0, v1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 296
    :cond_161
    iget-object v0, v1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    goto/16 :goto_10
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 304
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 306
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentActivity;->doReallyStop(Z)V

    .line 308
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchDestroy()V

    .line 309
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    if-eqz v0, :cond_15

    .line 310
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl;->doDestroy()V

    .line 312
    :cond_15
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 319
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_13

    const/4 v0, 0x4

    if-ne p1, v0, :cond_13

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_13

    .line 324
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 325
    const/4 v0, 0x1

    .line 328
    :goto_12
    return v0

    :cond_13
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_12
.end method

.method public onLowMemory()V
    .registers 2

    .prologue
    .line 336
    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    .line 337
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchLowMemory()V

    .line 338
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .registers 4
    .parameter "featureId"
    .parameter "item"

    .prologue
    .line 345
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 346
    const/4 v0, 0x1

    .line 357
    :goto_7
    return v0

    .line 349
    :cond_8
    sparse-switch p1, :sswitch_data_1c

    .line 357
    const/4 v0, 0x0

    goto :goto_7

    .line 351
    :sswitch_d
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0, p2}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_7

    .line 354
    :sswitch_14
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0, p2}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_7

    .line 349
    nop

    :sswitch_data_1c
    .sparse-switch
        0x0 -> :sswitch_d
        0x6 -> :sswitch_14
    .end sparse-switch
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .registers 4
    .parameter "featureId"
    .parameter "menu"

    .prologue
    .line 366
    packed-switch p1, :pswitch_data_e

    .line 371
    :goto_3
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPanelClosed(ILandroid/view/Menu;)V

    .line 372
    return-void

    .line 368
    :pswitch_7
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0, p2}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchOptionsMenuClosed(Landroid/view/Menu;)V

    goto :goto_3

    .line 366
    nop

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_7
    .end packed-switch
.end method

.method protected onPause()V
    .registers 3

    .prologue
    const/4 v1, 0x2

    .line 379
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 380
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mResumed:Z

    .line 381
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 382
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 383
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchResume()V

    .line 385
    :cond_19
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchPause()V

    .line 386
    return-void
.end method

.method protected onPostResume()V
    .registers 3

    .prologue
    .line 404
    invoke-super {p0}, Landroid/app/Activity;->onPostResume()V

    .line 405
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 406
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchResume()V

    .line 407
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->execPendingActions()Z

    .line 408
    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 415
    if-nez p1, :cond_28

    if-eqz p3, :cond_28

    .line 416
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mOptionsMenuInvalidated:Z

    if-eqz v0, :cond_11

    .line 417
    iput-boolean v2, p0, Landroid/support/v4/app/FragmentActivity;->mOptionsMenuInvalidated:Z

    .line 418
    invoke-interface {p3}, Landroid/view/Menu;->clear()V

    .line 419
    invoke-virtual {p0, p1, p3}, Landroid/support/v4/app/FragmentActivity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    .line 421
    :cond_11
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    .line 422
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v1, p3}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 423
    if-eqz v0, :cond_26

    invoke-interface {p3}, Landroid/view/Menu;->hasVisibleItems()Z

    move-result v0

    if-eqz v0, :cond_26

    const/4 v0, 0x1

    .line 425
    :goto_25
    return v0

    :cond_26
    move v0, v2

    .line 423
    goto :goto_25

    .line 425
    :cond_28
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    goto :goto_25
.end method

.method onReallyStop()V
    .registers 2

    .prologue
    .line 622
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mLoadersStarted:Z

    if-eqz v0, :cond_14

    .line 623
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mLoadersStarted:Z

    .line 624
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    if-eqz v0, :cond_14

    .line 625
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mRetaining:Z

    if-nez v0, :cond_1a

    .line 626
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl;->doStop()V

    .line 633
    :cond_14
    :goto_14
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchReallyStop()V

    .line 634
    return-void

    .line 628
    :cond_1a
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl;->doRetain()V

    goto :goto_14
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 393
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 394
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 395
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mResumed:Z

    .line 396
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->execPendingActions()Z

    .line 397
    return-void
.end method

.method public onRetainCustomNonConfigurationInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 544
    const/4 v0, 0x0

    return-object v0
.end method

.method public final onRetainNonConfigurationInstance()Ljava/lang/Object;
    .registers 10

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 435
    iget-boolean v6, p0, Landroid/support/v4/app/FragmentActivity;->mStopped:Z

    if-eqz v6, :cond_9

    .line 436
    invoke-virtual {p0, v8}, Landroid/support/v4/app/FragmentActivity;->doReallyStop(Z)V

    .line 439
    :cond_9
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->onRetainCustomNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    .line 441
    .local v0, custom:Ljava/lang/Object;
    iget-object v6, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentManagerImpl;->retainNonConfig()Ljava/util/ArrayList;

    move-result-object v1

    .line 442
    .local v1, fragments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/support/v4/app/Fragment;>;"
    const/4 v5, 0x0

    .line 443
    .local v5, retainLoaders:Z
    iget-object v6, p0, Landroid/support/v4/app/FragmentActivity;->mAllLoaderManagers:Landroid/support/v4/app/HCSparseArray;

    if-eqz v6, :cond_3b

    .line 446
    iget-object v6, p0, Landroid/support/v4/app/FragmentActivity;->mAllLoaderManagers:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v6}, Landroid/support/v4/app/HCSparseArray;->size()I

    move-result v6

    sub-int v2, v6, v8

    .local v2, i:I
    :goto_20
    if-ltz v2, :cond_3b

    .line 447
    iget-object v6, p0, Landroid/support/v4/app/FragmentActivity;->mAllLoaderManagers:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v6, v2}, Landroid/support/v4/app/HCSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/LoaderManagerImpl;

    .line 448
    .local v3, lm:Landroid/support/v4/app/LoaderManagerImpl;
    iget-boolean v6, v3, Landroid/support/v4/app/LoaderManagerImpl;->mRetaining:Z

    if-eqz v6, :cond_32

    .line 449
    const/4 v5, 0x1

    .line 446
    :goto_2f
    add-int/lit8 v2, v2, -0x1

    goto :goto_20

    .line 451
    :cond_32
    invoke-virtual {v3}, Landroid/support/v4/app/LoaderManagerImpl;->doDestroy()V

    .line 452
    iget-object v6, p0, Landroid/support/v4/app/FragmentActivity;->mAllLoaderManagers:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v6, v2}, Landroid/support/v4/app/HCSparseArray;->removeAt(I)V

    goto :goto_2f

    .line 456
    .end local v2           #i:I
    .end local v3           #lm:Landroid/support/v4/app/LoaderManagerImpl;
    :cond_3b
    if-nez v1, :cond_43

    if-nez v5, :cond_43

    if-nez v0, :cond_43

    move-object v6, v7

    .line 466
    :goto_42
    return-object v6

    .line 460
    :cond_43
    new-instance v4, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;

    invoke-direct {v4}, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;-><init>()V

    .line 461
    .local v4, nci:Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;
    iput-object v7, v4, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;->activity:Ljava/lang/Object;

    .line 462
    iput-object v0, v4, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;->custom:Ljava/lang/Object;

    .line 463
    iput-object v7, v4, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;->children:Ljava/util/HashMap;

    .line 464
    iput-object v1, v4, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;->fragments:Ljava/util/ArrayList;

    .line 465
    iget-object v6, p0, Landroid/support/v4/app/FragmentActivity;->mAllLoaderManagers:Landroid/support/v4/app/HCSparseArray;

    iput-object v6, v4, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;->loaders:Landroid/support/v4/app/HCSparseArray;

    move-object v6, v4

    .line 466
    goto :goto_42
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 474
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 475
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManagerImpl;->saveAllState()Landroid/os/Parcelable;

    move-result-object v0

    .line 476
    .local v0, p:Landroid/os/Parcelable;
    if-eqz v0, :cond_10

    .line 477
    const-string v1, "android:support:fragments"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 479
    :cond_10
    return-void
.end method

.method protected onStart()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 487
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 489
    iput-boolean v3, p0, Landroid/support/v4/app/FragmentActivity;->mStopped:Z

    .line 490
    iput-boolean v3, p0, Landroid/support/v4/app/FragmentActivity;->mReallyStopped:Z

    .line 491
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 493
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mCreated:Z

    if-nez v0, :cond_19

    .line 494
    iput-boolean v2, p0, Landroid/support/v4/app/FragmentActivity;->mCreated:Z

    .line 495
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchActivityCreated()V

    .line 498
    :cond_19
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->noteStateNotSaved()V

    .line 499
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->execPendingActions()Z

    .line 501
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mLoadersStarted:Z

    if-nez v0, :cond_34

    .line 502
    iput-boolean v2, p0, Landroid/support/v4/app/FragmentActivity;->mLoadersStarted:Z

    .line 503
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    if-eqz v0, :cond_59

    .line 504
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl;->doStart()V

    .line 508
    :cond_32
    :goto_32
    iput-boolean v2, p0, Landroid/support/v4/app/FragmentActivity;->mCheckedForLoaderManager:Z

    .line 512
    :cond_34
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchStart()V

    .line 513
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mAllLoaderManagers:Landroid/support/v4/app/HCSparseArray;

    if-eqz v0, :cond_67

    .line 514
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mAllLoaderManagers:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v0}, Landroid/support/v4/app/HCSparseArray;->size()I

    move-result v0

    sub-int/2addr v0, v2

    move v1, v0

    :goto_45
    if-ltz v1, :cond_67

    .line 515
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mAllLoaderManagers:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/HCSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/LoaderManagerImpl;

    .line 516
    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl;->finishRetain()V

    .line 517
    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl;->doReportStart()V

    .line 514
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_45

    .line 505
    :cond_59
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mCheckedForLoaderManager:Z

    if-nez v0, :cond_32

    .line 506
    const/4 v0, -0x1

    iget-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->mLoadersStarted:Z

    invoke-virtual {p0, v0, v1, v3}, Landroid/support/v4/app/FragmentActivity;->getLoaderManager(IZZ)Landroid/support/v4/app/LoaderManagerImpl;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    goto :goto_32

    .line 520
    :cond_67
    return-void
.end method

.method protected onStop()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 527
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 529
    iput-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->mStopped:Z

    .line 530
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 532
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchStop()V

    .line 533
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .registers 5
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    .line 660
    const/4 v0, -0x1

    if-eq p2, v0, :cond_10

    const/high16 v0, -0x1

    and-int/2addr v0, p2

    if-eqz v0, :cond_10

    .line 661
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can only use lower 16 bits for requestCode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 663
    :cond_10
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 664
    return-void
.end method

.method public startActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V
    .registers 6
    .parameter "fragment"
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    const/4 v0, -0x1

    .line 671
    if-ne p3, v0, :cond_7

    .line 672
    invoke-super {p0, p2, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 679
    :goto_6
    return-void

    .line 675
    :cond_7
    const/high16 v0, -0x1

    and-int/2addr v0, p3

    if-eqz v0, :cond_14

    .line 676
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can only use lower 16 bits for requestCode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 678
    :cond_14
    iget v0, p1, Landroid/support/v4/app/Fragment;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    shl-int/lit8 v0, v0, 0x10

    const v1, 0xffff

    and-int/2addr v1, p3

    add-int/2addr v0, v1

    invoke-super {p0, p2, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_6
.end method

.method supportInvalidateOptionsMenu()V
    .registers 3

    .prologue
    .line 558
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_a

    .line 561
    invoke-static {p0}, Landroid/support/v4/app/ActivityCompatHoneycomb;->invalidateOptionsMenu(Landroid/app/Activity;)V

    .line 568
    :goto_9
    return-void

    .line 567
    :cond_a
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mOptionsMenuInvalidated:Z

    goto :goto_9
.end method
