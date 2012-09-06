.class public abstract Landroid/support/v4/app/FragmentPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "FragmentPagerAdapter.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "FragmentPagerAdapter"


# instance fields
.field private mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

.field private mCurrentPrimaryItem:Landroid/support/v4/app/Fragment;

.field private final mFragmentManager:Landroid/support/v4/app/FragmentManager;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;)V
    .registers 3
    .parameter "fm"

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 34
    iput-object v0, p0, Landroid/support/v4/app/FragmentPagerAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    .line 35
    iput-object v0, p0, Landroid/support/v4/app/FragmentPagerAdapter;->mCurrentPrimaryItem:Landroid/support/v4/app/Fragment;

    .line 38
    iput-object p1, p0, Landroid/support/v4/app/FragmentPagerAdapter;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 39
    return-void
.end method

.method private static makeFragmentName(II)Ljava/lang/String;
    .registers 4
    .parameter "viewId"
    .parameter "index"

    .prologue
    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android:switcher:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .registers 5
    .parameter "container"
    .parameter "position"
    .parameter "object"

    .prologue
    .line 77
    iget-object v0, p0, Landroid/support/v4/app/FragmentPagerAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    if-nez v0, :cond_c

    .line 78
    iget-object v0, p0, Landroid/support/v4/app/FragmentPagerAdapter;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/FragmentPagerAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    .line 82
    :cond_c
    iget-object v0, p0, Landroid/support/v4/app/FragmentPagerAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    check-cast p3, Landroid/support/v4/app/Fragment;

    .end local p3
    invoke-virtual {v0, p3}, Landroid/support/v4/app/FragmentTransaction;->detach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 83
    return-void
.end method

.method public finishUpdate(Landroid/view/View;)V
    .registers 3
    .parameter "container"

    .prologue
    .line 101
    iget-object v0, p0, Landroid/support/v4/app/FragmentPagerAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    if-eqz v0, :cond_11

    .line 102
    iget-object v0, p0, Landroid/support/v4/app/FragmentPagerAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/FragmentPagerAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    .line 104
    iget-object v0, p0, Landroid/support/v4/app/FragmentPagerAdapter;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    .line 106
    :cond_11
    return-void
.end method

.method public abstract getItem(I)Landroid/support/v4/app/Fragment;
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .registers 8
    .parameter "container"
    .parameter "position"

    .prologue
    .line 52
    iget-object v2, p0, Landroid/support/v4/app/FragmentPagerAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    if-nez v2, :cond_c

    .line 53
    iget-object v2, p0, Landroid/support/v4/app/FragmentPagerAdapter;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v4/app/FragmentPagerAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    .line 57
    :cond_c
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-static {v2, p2}, Landroid/support/v4/app/FragmentPagerAdapter;->makeFragmentName(II)Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, name:Ljava/lang/String;
    iget-object v2, p0, Landroid/support/v4/app/FragmentPagerAdapter;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v2, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 59
    .local v0, fragment:Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_2a

    .line 61
    iget-object v2, p0, Landroid/support/v4/app/FragmentPagerAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v2, v0}, Landroid/support/v4/app/FragmentTransaction;->attach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 68
    :goto_21
    iget-object v2, p0, Landroid/support/v4/app/FragmentPagerAdapter;->mCurrentPrimaryItem:Landroid/support/v4/app/Fragment;

    if-eq v0, v2, :cond_29

    .line 69
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v4/app/Fragment;->setMenuVisibility(Z)V

    .line 72
    :cond_29
    return-object v0

    .line 63
    :cond_2a
    invoke-virtual {p0, p2}, Landroid/support/v4/app/FragmentPagerAdapter;->getItem(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 65
    iget-object v2, p0, Landroid/support/v4/app/FragmentPagerAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    invoke-static {v4, p2}, Landroid/support/v4/app/FragmentPagerAdapter;->makeFragmentName(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v0, v4}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_21
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .registers 4
    .parameter "view"
    .parameter "object"

    .prologue
    .line 110
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
    .registers 3
    .parameter "state"
    .parameter "loader"

    .prologue
    .line 120
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .registers 2

    .prologue
    .line 115
    const/4 v0, 0x0

    return-object v0
.end method

.method public setPrimaryItem(Landroid/view/View;ILjava/lang/Object;)V
    .registers 7
    .parameter "container"
    .parameter "position"
    .parameter "object"

    .prologue
    .line 87
    move-object v0, p3

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 88
    .local v0, fragment:Landroid/support/v4/app/Fragment;
    iget-object v1, p0, Landroid/support/v4/app/FragmentPagerAdapter;->mCurrentPrimaryItem:Landroid/support/v4/app/Fragment;

    if-eq v0, v1, :cond_19

    .line 89
    iget-object v1, p0, Landroid/support/v4/app/FragmentPagerAdapter;->mCurrentPrimaryItem:Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_11

    .line 90
    iget-object v1, p0, Landroid/support/v4/app/FragmentPagerAdapter;->mCurrentPrimaryItem:Landroid/support/v4/app/Fragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/app/Fragment;->setMenuVisibility(Z)V

    .line 92
    :cond_11
    if-eqz v0, :cond_17

    .line 93
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->setMenuVisibility(Z)V

    .line 95
    :cond_17
    iput-object v0, p0, Landroid/support/v4/app/FragmentPagerAdapter;->mCurrentPrimaryItem:Landroid/support/v4/app/Fragment;

    .line 97
    :cond_19
    return-void
.end method

.method public startUpdate(Landroid/view/View;)V
    .registers 2
    .parameter "container"

    .prologue
    .line 48
    return-void
.end method
