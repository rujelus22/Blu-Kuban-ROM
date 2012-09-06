.class public Lcom/google/android/finsky/activities/CategoryTab;
.super Ljava/lang/Object;
.source "CategoryTab.java"

# interfaces
.implements Lcom/google/android/finsky/activities/ViewPagerTab;


# instance fields
.field private final mCategoryBinder:Lcom/google/android/finsky/activities/CategoryViewBinder;

.field private mCategoryView:Landroid/view/ViewGroup;

.field private final mCurrentBrowseUrl:Ljava/lang/String;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private final mToc:Lcom/google/android/finsky/api/model/DfeToc;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/LayoutInflater;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/DfeBrowse;Ljava/lang/String;Lcom/google/android/finsky/api/model/DfeToc;)V
    .registers 10
    .parameter "context"
    .parameter "inflater"
    .parameter "navigationManager"
    .parameter "bitmapLoader"
    .parameter "browseData"
    .parameter "currentBrowseUrl"
    .parameter "toc"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    if-eqz p5, :cond_b

    invoke-virtual {p5}, Lcom/google/android/finsky/api/model/DfeBrowse;->isReady()Z

    move-result v0

    if-nez v0, :cond_13

    .line 43
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Tried to create category tab with invalid data!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_13
    iput-object p2, p0, Lcom/google/android/finsky/activities/CategoryTab;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 47
    iput-object p6, p0, Lcom/google/android/finsky/activities/CategoryTab;->mCurrentBrowseUrl:Ljava/lang/String;

    .line 48
    new-instance v0, Lcom/google/android/finsky/activities/CategoryViewBinder;

    invoke-direct {v0}, Lcom/google/android/finsky/activities/CategoryViewBinder;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/activities/CategoryTab;->mCategoryBinder:Lcom/google/android/finsky/activities/CategoryViewBinder;

    .line 49
    iget-object v0, p0, Lcom/google/android/finsky/activities/CategoryTab;->mCategoryBinder:Lcom/google/android/finsky/activities/CategoryViewBinder;

    invoke-virtual {v0, p1, p3, p4}, Lcom/google/android/finsky/activities/CategoryViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;)V

    .line 50
    iget-object v0, p0, Lcom/google/android/finsky/activities/CategoryTab;->mCategoryBinder:Lcom/google/android/finsky/activities/CategoryViewBinder;

    invoke-virtual {v0, p5}, Lcom/google/android/finsky/activities/CategoryViewBinder;->setData(Ljava/lang/Object;)V

    .line 51
    iput-object p7, p0, Lcom/google/android/finsky/activities/CategoryTab;->mToc:Lcom/google/android/finsky/api/model/DfeToc;

    .line 52
    return-void
.end method


# virtual methods
.method public getView(I)Landroid/view/View;
    .registers 6
    .parameter "backendId"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/finsky/activities/CategoryTab;->mCategoryView:Landroid/view/ViewGroup;

    if-nez v0, :cond_38

    .line 57
    iget-object v0, p0, Lcom/google/android/finsky/activities/CategoryTab;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040027

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/finsky/activities/CategoryTab;->mCategoryView:Landroid/view/ViewGroup;

    .line 58
    iget-object v0, p0, Lcom/google/android/finsky/activities/CategoryTab;->mCategoryView:Landroid/view/ViewGroup;

    const v1, 0x7f080079

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 59
    iget-object v0, p0, Lcom/google/android/finsky/activities/CategoryTab;->mCategoryView:Landroid/view/ViewGroup;

    const v1, 0x7f08005d

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 60
    iget-object v0, p0, Lcom/google/android/finsky/activities/CategoryTab;->mCategoryBinder:Lcom/google/android/finsky/activities/CategoryViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/CategoryTab;->mCategoryView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/google/android/finsky/activities/CategoryTab;->mCurrentBrowseUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/finsky/activities/CategoryTab;->mToc:Lcom/google/android/finsky/api/model/DfeToc;

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/google/android/finsky/activities/CategoryViewBinder;->bind(Landroid/view/ViewGroup;ILjava/lang/String;Lcom/google/android/finsky/api/model/DfeToc;)V

    .line 62
    :cond_38
    iget-object v0, p0, Lcom/google/android/finsky/activities/CategoryTab;->mCategoryView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/finsky/activities/CategoryTab;->mCategoryBinder:Lcom/google/android/finsky/activities/CategoryViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/CategoryViewBinder;->onDestroy()V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/activities/CategoryTab;->mCategoryView:Landroid/view/ViewGroup;

    .line 69
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 2
    .parameter "state"

    .prologue
    .line 83
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 79
    const/4 v0, 0x0

    return-object v0
.end method

.method public setTabSelected(Z)V
    .registers 2
    .parameter "isSelected"

    .prologue
    .line 74
    return-void
.end method
