.class public abstract Landroid/support/v4/app/FragmentStatePagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "FragmentStatePagerAdapter.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "FragmentStatePagerAdapter"


# instance fields
.field private mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

.field private mCurrentPrimaryItem:Landroid/support/v4/app/Fragment;

.field private final mFragmentManager:Landroid/support/v4/app/FragmentManager;

.field private mFragments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private mSavedState:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/Fragment$SavedState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;)V
    .registers 4
    .parameter "fm"

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 32
    iput-object v1, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    .line 36
    iput-object v1, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mCurrentPrimaryItem:Landroid/support/v4/app/Fragment;

    .line 39
    iput-object p1, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 40
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 88
    check-cast p3, Landroid/support/v4/app/Fragment;

    .line 90
    iget-object v0, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    if-nez v0, :cond_f

    .line 91
    iget-object v0, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    .line 95
    :cond_f
    :goto_f
    iget-object v0, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, p2, :cond_1d

    .line 96
    iget-object v0, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 98
    :cond_1d
    iget-object v0, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v1, p3}, Landroid/support/v4/app/FragmentManager;->saveFragmentInstanceState(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment$SavedState;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v0, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v0, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v0, p3}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 102
    return-void
.end method

.method public finishUpdate(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 120
    iget-object v0, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    if-eqz v0, :cond_11

    .line 121
    iget-object v0, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    .line 123
    iget-object v0, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    .line 125
    :cond_11
    return-void
.end method

.method public abstract getItem(I)Landroid/support/v4/app/Fragment;
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p2, :cond_13

    .line 58
    iget-object v0, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 59
    if-eqz v0, :cond_13

    .line 83
    :goto_12
    return-object v0

    .line 64
    :cond_13
    iget-object v0, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    if-nez v0, :cond_1f

    .line 65
    iget-object v0, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    .line 68
    :cond_1f
    invoke-virtual {p0, p2}, Landroid/support/v4/app/FragmentStatePagerAdapter;->getItem(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 70
    iget-object v0, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p2, :cond_38

    .line 71
    iget-object v0, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment$SavedState;

    .line 72
    if-eqz v0, :cond_38

    .line 73
    invoke-virtual {v1, v0}, Landroid/support/v4/app/Fragment;->setInitialSavedState(Landroid/support/v4/app/Fragment$SavedState;)V

    .line 76
    :cond_38
    :goto_38
    iget-object v0, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, p2, :cond_47

    .line 77
    iget-object v0, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_38

    .line 79
    :cond_47
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/support/v4/app/Fragment;->setMenuVisibility(Z)V

    .line 80
    iget-object v0, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object v0, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-object v0, v1

    .line 83
    goto :goto_12
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .registers 4
    .parameter "view"
    .parameter "object"

    .prologue
    .line 129
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

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 156
    if-eqz p1, :cond_89

    .line 157
    check-cast p1, Landroid/os/Bundle;

    .line 158
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 159
    const-string v0, "states"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v1

    .line 160
    iget-object v0, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 161
    iget-object v0, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 162
    if-eqz v1, :cond_2b

    move v2, v5

    .line 163
    :goto_1b
    array-length v0, v1

    if-ge v2, v0, :cond_2b

    .line 164
    iget-object v3, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    aget-object v0, v1, v2

    check-cast v0, Landroid/support/v4/app/Fragment$SavedState;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1b

    .line 167
    :cond_2b
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 168
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_33
    :goto_33
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_89

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 169
    const-string v2, "f"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 170
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 171
    iget-object v3, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v3, p1, v0}, Landroid/support/v4/app/FragmentManager;->getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    .line 172
    if-eqz v3, :cond_70

    .line 173
    :goto_58
    iget-object v0, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, v2, :cond_67

    .line 174
    iget-object v0, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_58

    .line 176
    :cond_67
    invoke-virtual {v3, v5}, Landroid/support/v4/app/Fragment;->setMenuVisibility(Z)V

    .line 177
    iget-object v0, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_33

    .line 179
    :cond_70
    const-string v2, "FragmentStatePagerAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad fragment at key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33

    .line 184
    :cond_89
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .registers 6

    .prologue
    .line 134
    const/4 v0, 0x0

    .line 135
    iget-object v1, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_20

    .line 136
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 137
    iget-object v1, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/support/v4/app/Fragment$SavedState;

    .line 138
    iget-object v2, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 139
    const-string v2, "states"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 141
    :cond_20
    const/4 v1, 0x0

    move-object v2, v0

    :goto_22
    iget-object v0, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_58

    .line 142
    iget-object v0, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 143
    if-eqz v0, :cond_53

    .line 144
    if-nez v2, :cond_3b

    .line 145
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 147
    :cond_3b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "f"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 148
    iget-object v4, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v4, v2, v3, v0}, Landroid/support/v4/app/FragmentManager;->putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V

    :cond_53
    move-object v0, v2

    .line 141
    add-int/lit8 v1, v1, 0x1

    move-object v2, v0

    goto :goto_22

    .line 151
    :cond_58
    return-object v2
.end method

.method public setPrimaryItem(Landroid/view/View;ILjava/lang/Object;)V
    .registers 8
    .parameter "container"
    .parameter "position"
    .parameter "object"

    .prologue
    .line 106
    move-object v0, p3

    check-cast v0, Landroid/support/v4/app/Fragment;

    move-object v1, v0

    .line 107
    .local v1, fragment:Landroid/support/v4/app/Fragment;
    iget-object v2, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mCurrentPrimaryItem:Landroid/support/v4/app/Fragment;

    if-eq v1, v2, :cond_1a

    .line 108
    iget-object v2, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mCurrentPrimaryItem:Landroid/support/v4/app/Fragment;

    if-eqz v2, :cond_12

    .line 109
    iget-object v2, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mCurrentPrimaryItem:Landroid/support/v4/app/Fragment;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v4/app/Fragment;->setMenuVisibility(Z)V

    .line 111
    :cond_12
    if-eqz v1, :cond_18

    .line 112
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v4/app/Fragment;->setMenuVisibility(Z)V

    .line 114
    :cond_18
    iput-object v1, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mCurrentPrimaryItem:Landroid/support/v4/app/Fragment;

    .line 116
    :cond_1a
    return-void
.end method

.method public startUpdate(Landroid/view/View;)V
    .registers 2
    .parameter "container"

    .prologue
    .line 49
    return-void
.end method
