.class Lcom/google/android/finsky/activities/FakeNavigationManager;
.super Lcom/google/android/finsky/navigationmanager/NavigationManager;
.source "FakeNavigationManager.java"


# instance fields
.field private mActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3
    .parameter "activity"

    .prologue
    .line 16
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;-><init>(Lcom/google/android/finsky/activities/MainActivity;)V

    .line 17
    iput-object p1, p0, Lcom/google/android/finsky/activities/FakeNavigationManager;->mActivity:Landroid/app/Activity;

    .line 18
    return-void
.end method


# virtual methods
.method public addOnBackStackChangedListener(Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 56
    return-void
.end method

.method public canGoUp()Z
    .registers 2

    .prologue
    .line 39
    const/4 v0, 0x1

    return v0
.end method

.method public canSearch()Z
    .registers 2

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public goBack()Z
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/finsky/activities/FakeNavigationManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 33
    const/4 v0, 0x1

    return v0
.end method

.method public goUp()V
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/finsky/activities/FakeNavigationManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 28
    return-void
.end method

.method public init(Lcom/google/android/finsky/activities/MainActivity;)V
    .registers 2
    .parameter "activity"

    .prologue
    .line 22
    return-void
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 51
    const/4 v0, 0x0

    return v0
.end method
