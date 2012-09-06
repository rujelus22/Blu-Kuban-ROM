.class public abstract Lcom/google/android/apps/plus/phone/EsFragmentPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "EsFragmentPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/phone/EsFragmentPagerAdapter$FragmentCache;,
        Lcom/google/android/apps/plus/phone/EsFragmentPagerAdapter$OnFragmentPagerListener;
    }
.end annotation


# instance fields
.field private mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

.field private mCurrentPrimaryItem:Landroid/support/v4/app/Fragment;

.field private mFragmentCache:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private final mFragmentManager:Landroid/support/v4/app/FragmentManager;

.field private mPagerListener:Lcom/google/android/apps/plus/phone/EsFragmentPagerAdapter$OnFragmentPagerListener;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;)V
    .registers 4
    .parameter "fm"

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 51
    iput-object v0, p0, Lcom/google/android/apps/plus/phone/EsFragmentPagerAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    .line 52
    iput-object v0, p0, Lcom/google/android/apps/plus/phone/EsFragmentPagerAdapter;->mCurrentPrimaryItem:Landroid/support/v4/app/Fragment;

    .line 55
    new-instance v0, Lcom/google/android/apps/plus/phone/EsFragmentPagerAdapter$FragmentCache;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/plus/phone/EsFragmentPagerAdapter$FragmentCache;-><init>(Lcom/google/android/apps/plus/phone/EsFragmentPagerAdapter;I)V

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/EsFragmentPagerAdapter;->mFragmentCache:Landroid/support/v4/util/LruCache;

    .line 58
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/EsFragmentPagerAdapter;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/phone/EsFragmentPagerAdapter;)Landroid/support/v4/app/FragmentTransaction;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/EsFragmentPagerAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    return-object v0
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .registers 7
    .parameter "container"
    .parameter "position"
    .parameter "object"

    .prologue
    .line 101
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/EsFragmentPagerAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    if-nez v2, :cond_c

    .line 102
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/EsFragmentPagerAdapter;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/plus/phone/EsFragmentPagerAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    :cond_c
    move-object v0, p3

    .line 107
    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 108
    .local v0, fragment:Landroid/support/v4/app/Fragment;
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v1

    .line 109
    .local v1, name:Ljava/lang/String;
    if-nez v1, :cond_1d

    .line 113
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {p0, v2, p2}, Lcom/google/android/apps/plus/phone/EsFragmentPagerAdapter;->makeFragmentName(II)Ljava/lang/String;

    move-result-object v1

    .line 116
    :cond_1d
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/EsFragmentPagerAdapter;->mFragmentCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v2, v1, v0}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/EsFragmentPagerAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v2, v0}, Landroid/support/v4/app/FragmentTransaction;->detach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 118
    return-void
.end method

.method public finishUpdate(Landroid/view/View;)V
    .registers 3
    .parameter "container"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/EsFragmentPagerAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    if-eqz v0, :cond_11

    .line 141
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/EsFragmentPagerAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/EsFragmentPagerAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    .line 143
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/EsFragmentPagerAdapter;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    .line 145
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
    .line 72
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/EsFragmentPagerAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    if-nez v2, :cond_c

    .line 73
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/EsFragmentPagerAdapter;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/plus/phone/EsFragmentPagerAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    .line 77
    :cond_c
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {p0, v2, p2}, Lcom/google/android/apps/plus/phone/EsFragmentPagerAdapter;->makeFragmentName(II)Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, name:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/EsFragmentPagerAdapter;->mFragmentCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v2, v1}, Landroid/support/v4/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/EsFragmentPagerAdapter;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v2, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 83
    .local v0, fragment:Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_2f

    .line 85
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/EsFragmentPagerAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v2, v0}, Landroid/support/v4/app/FragmentTransaction;->attach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 92
    :goto_26
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/EsFragmentPagerAdapter;->mCurrentPrimaryItem:Landroid/support/v4/app/Fragment;

    if-eq v0, v2, :cond_2e

    .line 93
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v4/app/Fragment;->setMenuVisibility(Z)V

    .line 96
    :cond_2e
    return-object v0

    .line 87
    :cond_2f
    invoke-virtual {p0, p2}, Lcom/google/android/apps/plus/phone/EsFragmentPagerAdapter;->getItem(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 89
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/EsFragmentPagerAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {p0, v4, p2}, Lcom/google/android/apps/plus/phone/EsFragmentPagerAdapter;->makeFragmentName(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v0, v4}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_26
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .registers 6
    .parameter "view"
    .parameter "object"

    .prologue
    .line 150
    check-cast p2, Landroid/support/v4/app/Fragment;

    .end local p2
    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 151
    .local v0, root:Landroid/view/View;
    move-object v1, p1

    :goto_7
    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_16

    .line 152
    if-ne v1, v0, :cond_f

    .line 153
    const/4 v2, 0x1

    .line 156
    :goto_e
    return v2

    .line 151
    :cond_f
    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .local v1, v:Landroid/view/ViewParent;
    goto :goto_7

    .line 156
    .end local v1           #v:Landroid/view/ViewParent;
    :cond_16
    const/4 v2, 0x0

    goto :goto_e
.end method

.method protected makeFragmentName(II)Ljava/lang/String;
    .registers 5
    .parameter "viewId"
    .parameter "index"

    .prologue
    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android:switcher:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .registers 3
    .parameter "state"
    .parameter "loader"

    .prologue
    .line 166
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .registers 2

    .prologue
    .line 161
    const/4 v0, 0x0

    return-object v0
.end method

.method public setFragmentPagerListener(Lcom/google/android/apps/plus/phone/EsFragmentPagerAdapter$OnFragmentPagerListener;)V
    .registers 2
    .parameter "pagerListener"

    .prologue
    .line 170
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/EsFragmentPagerAdapter;->mPagerListener:Lcom/google/android/apps/plus/phone/EsFragmentPagerAdapter$OnFragmentPagerListener;

    .line 171
    return-void
.end method

.method public setPrimaryItem(Landroid/view/View;ILjava/lang/Object;)V
    .registers 7
    .parameter "container"
    .parameter "position"
    .parameter "object"

    .prologue
    .line 122
    move-object v0, p3

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 123
    .local v0, fragment:Landroid/support/v4/app/Fragment;
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/EsFragmentPagerAdapter;->mCurrentPrimaryItem:Landroid/support/v4/app/Fragment;

    if-eq v0, v1, :cond_19

    .line 124
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/EsFragmentPagerAdapter;->mCurrentPrimaryItem:Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_11

    .line 125
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/EsFragmentPagerAdapter;->mCurrentPrimaryItem:Landroid/support/v4/app/Fragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/app/Fragment;->setMenuVisibility(Z)V

    .line 127
    :cond_11
    if-eqz v0, :cond_17

    .line 128
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->setMenuVisibility(Z)V

    .line 130
    :cond_17
    iput-object v0, p0, Lcom/google/android/apps/plus/phone/EsFragmentPagerAdapter;->mCurrentPrimaryItem:Landroid/support/v4/app/Fragment;

    .line 133
    :cond_19
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/EsFragmentPagerAdapter;->mPagerListener:Lcom/google/android/apps/plus/phone/EsFragmentPagerAdapter$OnFragmentPagerListener;

    if-eqz v1, :cond_22

    .line 134
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/EsFragmentPagerAdapter;->mPagerListener:Lcom/google/android/apps/plus/phone/EsFragmentPagerAdapter$OnFragmentPagerListener;

    invoke-interface {v1, v0}, Lcom/google/android/apps/plus/phone/EsFragmentPagerAdapter$OnFragmentPagerListener;->onPageActivated(Landroid/support/v4/app/Fragment;)V

    .line 136
    :cond_22
    return-void
.end method

.method public startUpdate(Landroid/view/View;)V
    .registers 2
    .parameter "container"

    .prologue
    .line 68
    return-void
.end method
