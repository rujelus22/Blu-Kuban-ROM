.class public Lcom/google/android/finsky/layout/FakeActionBar;
.super Ljava/lang/Object;
.source "FakeActionBar.java"

# interfaces
.implements Lcom/google/android/finsky/layout/CustomActionBar;


# instance fields
.field private mBackendId:I

.field private mBreadcrumb:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public configureMenu(Landroid/app/Activity;Landroid/view/Menu;)V
    .registers 3
    .parameter "activity"
    .parameter "menu"

    .prologue
    .line 23
    return-void
.end method

.method public exploreButtonClicked(Landroid/app/Activity;)V
    .registers 2
    .parameter "activity"

    .prologue
    .line 66
    return-void
.end method

.method public getBreadcrumbText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/finsky/layout/FakeActionBar;->mBreadcrumb:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentBackendId()I
    .registers 2

    .prologue
    .line 32
    iget v0, p0, Lcom/google/android/finsky/layout/FakeActionBar;->mBackendId:I

    return v0
.end method

.method public hide()V
    .registers 1

    .prologue
    .line 37
    return-void
.end method

.method public initialize(Lcom/google/android/finsky/navigationmanager/NavigationManager;Landroid/app/Activity;)V
    .registers 3
    .parameter "navigationManager"
    .parameter "parent"

    .prologue
    .line 41
    return-void
.end method

.method public searchButtonClicked(Landroid/app/Activity;)Z
    .registers 3
    .parameter "activity"

    .prologue
    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public shareButtonClicked(Landroid/app/Activity;)V
    .registers 2
    .parameter "activity"

    .prologue
    .line 45
    return-void
.end method

.method public updateBreadcrumb(Ljava/lang/String;)V
    .registers 2
    .parameter "text"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/google/android/finsky/layout/FakeActionBar;->mBreadcrumb:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public updateCurrentBackendId(I)V
    .registers 3
    .parameter "backendId"

    .prologue
    .line 54
    iput p1, p0, Lcom/google/android/finsky/layout/FakeActionBar;->mBackendId:I

    .line 56
    iget v0, p0, Lcom/google/android/finsky/layout/FakeActionBar;->mBackendId:I

    invoke-static {v0}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider;->setCurrentBackendId(I)V

    .line 57
    return-void
.end method

.method public updateSearchQuery(Ljava/lang/String;)V
    .registers 2
    .parameter "query"

    .prologue
    .line 62
    return-void
.end method
