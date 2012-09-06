.class abstract Lcom/google/android/apps/reader/widget/FragmentStatePagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "FragmentStatePagerAdapter.java"


# instance fields
.field private mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

.field private mCurrentPrimaryItem:Landroid/support/v4/app/Fragment;

.field private final mFragmentManager:Landroid/support/v4/app/FragmentManager;

.field private final mSavedState:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;)V
    .registers 3
    .parameter "fm"

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 38
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/reader/widget/FragmentStatePagerAdapter;->mSavedState:Landroid/os/Bundle;

    .line 43
    iput-object p1, p0, Lcom/google/android/apps/reader/widget/FragmentStatePagerAdapter;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 44
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 79
    check-cast p3, Landroid/support/v4/app/Fragment;

    .line 80
    iget-object v0, p0, Lcom/google/android/apps/reader/widget/FragmentStatePagerAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    if-nez v0, :cond_e

    .line 81
    iget-object v0, p0, Lcom/google/android/apps/reader/widget/FragmentStatePagerAdapter;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/reader/widget/FragmentStatePagerAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    .line 83
    :cond_e
    invoke-virtual {p3}, Landroid/support/v4/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v0

    .line 84
    iget-object v1, p0, Lcom/google/android/apps/reader/widget/FragmentStatePagerAdapter;->mSavedState:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/google/android/apps/reader/widget/FragmentStatePagerAdapter;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v2, p3}, Landroid/support/v4/app/FragmentManager;->saveFragmentInstanceState(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment$SavedState;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 85
    iget-object v0, p0, Lcom/google/android/apps/reader/widget/FragmentStatePagerAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v0, p3}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 86
    return-void
.end method

.method public finishUpdate(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/android/apps/reader/widget/FragmentStatePagerAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    if-eqz v0, :cond_11

    .line 109
    iget-object v0, p0, Lcom/google/android/apps/reader/widget/FragmentStatePagerAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/reader/widget/FragmentStatePagerAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    .line 111
    iget-object v0, p0, Lcom/google/android/apps/reader/widget/FragmentStatePagerAdapter;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    .line 113
    :cond_11
    return-void
.end method

.method public abstract getItem(I)Landroid/support/v4/app/Fragment;
.end method

.method public abstract getItemTag(I)Ljava/lang/String;
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-virtual {p0, p2}, Lcom/google/android/apps/reader/widget/FragmentStatePagerAdapter;->getItemTag(I)Ljava/lang/String;

    move-result-object v1

    .line 60
    iget-object v0, p0, Lcom/google/android/apps/reader/widget/FragmentStatePagerAdapter;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 61
    if-eqz v0, :cond_d

    .line 74
    :goto_c
    return-object v0

    .line 64
    :cond_d
    iget-object v0, p0, Lcom/google/android/apps/reader/widget/FragmentStatePagerAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    if-nez v0, :cond_19

    .line 65
    iget-object v0, p0, Lcom/google/android/apps/reader/widget/FragmentStatePagerAdapter;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/reader/widget/FragmentStatePagerAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    .line 67
    :cond_19
    invoke-virtual {p0, p2}, Lcom/google/android/apps/reader/widget/FragmentStatePagerAdapter;->getItem(I)Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 68
    iget-object v0, p0, Lcom/google/android/apps/reader/widget/FragmentStatePagerAdapter;->mSavedState:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment$SavedState;

    .line 69
    if-eqz v0, :cond_2a

    .line 70
    invoke-virtual {v2, v0}, Landroid/support/v4/app/Fragment;->setInitialSavedState(Landroid/support/v4/app/Fragment$SavedState;)V

    .line 72
    :cond_2a
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/support/v4/app/Fragment;->setMenuVisibility(Z)V

    .line 73
    iget-object v0, p0, Lcom/google/android/apps/reader/widget/FragmentStatePagerAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v0, v3, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-object v0, v2

    .line 74
    goto :goto_c
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .registers 4
    .parameter "view"
    .parameter "object"

    .prologue
    .line 117
    check-cast p2, Landroid/support/v4/app/Fragment;

    .end local p2
    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public notifyDataSetChanged()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 136
    invoke-virtual {p0, v0}, Lcom/google/android/apps/reader/widget/FragmentStatePagerAdapter;->startUpdate(Landroid/view/View;)V

    .line 137
    invoke-super {p0}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    .line 138
    invoke-virtual {p0, v0}, Lcom/google/android/apps/reader/widget/FragmentStatePagerAdapter;->finishUpdate(Landroid/view/View;)V

    .line 139
    return-void
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .registers 6
    .parameter "state"
    .parameter "loader"

    .prologue
    .line 127
    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    move-object v1, v0

    .line 128
    .local v1, savedState:Landroid/os/Bundle;
    invoke-virtual {v1, p2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 129
    iget-object v2, p0, Lcom/google/android/apps/reader/widget/FragmentStatePagerAdapter;->mSavedState:Landroid/os/Bundle;

    invoke-virtual {v2}, Landroid/os/Bundle;->clear()V

    .line 130
    iget-object v2, p0, Lcom/google/android/apps/reader/widget/FragmentStatePagerAdapter;->mSavedState:Landroid/os/Bundle;

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 131
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .registers 3

    .prologue
    .line 122
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p0, Lcom/google/android/apps/reader/widget/FragmentStatePagerAdapter;->mSavedState:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public setPrimaryItem(Landroid/view/View;ILjava/lang/Object;)V
    .registers 8
    .parameter "container"
    .parameter "position"
    .parameter "object"

    .prologue
    .line 90
    move-object v0, p3

    check-cast v0, Landroid/support/v4/app/Fragment;

    move-object v1, v0

    .line 91
    .local v1, fragment:Landroid/support/v4/app/Fragment;
    iget-object v2, p0, Lcom/google/android/apps/reader/widget/FragmentStatePagerAdapter;->mCurrentPrimaryItem:Landroid/support/v4/app/Fragment;

    if-eq v1, v2, :cond_1a

    .line 92
    iget-object v2, p0, Lcom/google/android/apps/reader/widget/FragmentStatePagerAdapter;->mCurrentPrimaryItem:Landroid/support/v4/app/Fragment;

    if-eqz v2, :cond_12

    .line 93
    iget-object v2, p0, Lcom/google/android/apps/reader/widget/FragmentStatePagerAdapter;->mCurrentPrimaryItem:Landroid/support/v4/app/Fragment;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v4/app/Fragment;->setMenuVisibility(Z)V

    .line 95
    :cond_12
    if-eqz v1, :cond_18

    .line 96
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v4/app/Fragment;->setMenuVisibility(Z)V

    .line 98
    :cond_18
    iput-object v1, p0, Lcom/google/android/apps/reader/widget/FragmentStatePagerAdapter;->mCurrentPrimaryItem:Landroid/support/v4/app/Fragment;

    .line 100
    :cond_1a
    return-void
.end method

.method public startUpdate(Landroid/view/View;)V
    .registers 2
    .parameter "container"

    .prologue
    .line 104
    return-void
.end method
