.class public Lcom/google/android/finsky/activities/ReviewsActivity;
.super Lcom/google/android/finsky/activities/AuthenticatedActivity;
.source "ReviewsActivity.java"

# interfaces
.implements Lcom/google/android/finsky/fragments/PageFragmentHost;


# instance fields
.field private mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

.field private mDocument:Lcom/google/android/finsky/api/model/Document;

.field private mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;-><init>()V

    return-void
.end method

.method public static show(Landroid/content/Context;Lcom/google/android/finsky/api/model/Document;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 84
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/finsky/activities/ReviewsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 85
    const-string v1, "finsky.ReviewsActivity.document"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 86
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 87
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 88
    return-void
.end method


# virtual methods
.method public getBitmapLoader()Lcom/google/android/finsky/utils/BitmapLoader;
    .registers 2

    .prologue
    .line 117
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getBitmapLoader()Lcom/google/android/finsky/utils/BitmapLoader;

    move-result-object v0

    return-object v0
.end method

.method public getDfeApi()Lcom/google/android/finsky/api/DfeApi;
    .registers 2

    .prologue
    .line 112
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getDfeApi()Lcom/google/android/finsky/api/DfeApi;

    move-result-object v0

    return-object v0
.end method

.method public getNavigationManager()Lcom/google/android/finsky/navigationmanager/NavigationManager;
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    return-object v0
.end method

.method public goBack()V
    .registers 1

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/ReviewsActivity;->finish()V

    .line 108
    return-void
.end method

.method protected handleAuthenticationError(Lcom/android/volley/VolleyError;)V
    .registers 2
    .parameter "error"

    .prologue
    .line 34
    return-void
.end method

.method protected onApisChanged()V
    .registers 1

    .prologue
    .line 42
    return-void
.end method

.method protected onCleanup()V
    .registers 1

    .prologue
    .line 38
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    const v5, 0x7f08003e

    .line 46
    const v3, 0x7f04008b

    invoke-virtual {p0, v3}, Lcom/google/android/finsky/activities/ReviewsActivity;->setContentView(I)V

    .line 47
    invoke-super {p0, p1}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/ReviewsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "finsky.ReviewsActivity.document"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/api/model/Document;

    iput-object v3, p0, Lcom/google/android/finsky/activities/ReviewsActivity;->mDocument:Lcom/google/android/finsky/api/model/Document;

    .line 50
    new-instance v3, Lcom/google/android/finsky/activities/FakeNavigationManager;

    invoke-direct {v3, p0}, Lcom/google/android/finsky/activities/FakeNavigationManager;-><init>(Landroid/app/Activity;)V

    iput-object v3, p0, Lcom/google/android/finsky/activities/ReviewsActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    .line 52
    invoke-static {p0}, Lcom/google/android/finsky/layout/CustomActionBarFactory;->getInstance(Landroid/app/Activity;)Lcom/google/android/finsky/layout/CustomActionBar;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/finsky/activities/ReviewsActivity;->mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    .line 53
    iget-object v3, p0, Lcom/google/android/finsky/activities/ReviewsActivity;->mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    iget-object v4, p0, Lcom/google/android/finsky/activities/ReviewsActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-interface {v3, v4, p0}, Lcom/google/android/finsky/layout/CustomActionBar;->initialize(Lcom/google/android/finsky/navigationmanager/NavigationManager;Landroid/app/Activity;)V

    .line 54
    iget-object v3, p0, Lcom/google/android/finsky/activities/ReviewsActivity;->mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    iget-object v4, p0, Lcom/google/android/finsky/activities/ReviewsActivity;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/google/android/finsky/layout/CustomActionBar;->updateBreadcrumb(Ljava/lang/String;)V

    .line 55
    iget-object v3, p0, Lcom/google/android/finsky/activities/ReviewsActivity;->mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    iget-object v4, p0, Lcom/google/android/finsky/activities/ReviewsActivity;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/google/android/finsky/layout/CustomActionBar;->updateCurrentBackendId(I)V

    .line 57
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/ReviewsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    .line 59
    .local v2, manager:Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v2, v5}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v3

    if-nez v3, :cond_5e

    .line 60
    iget-object v3, p0, Lcom/google/android/finsky/activities/ReviewsActivity;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-static {p0, v3}, Lcom/google/android/finsky/activities/ReviewsFragment;->newInstance(Landroid/content/Context;Lcom/google/android/finsky/api/model/Document;)Lcom/google/android/finsky/activities/ReviewsFragment;

    move-result-object v0

    .line 62
    .local v0, fragment:Lcom/google/android/finsky/activities/ReviewsFragment;
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 63
    .local v1, ft:Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {v1, v5, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 64
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 66
    .end local v0           #fragment:Lcom/google/android/finsky/activities/ReviewsFragment;
    .end local v1           #ft:Landroid/support/v4/app/FragmentTransaction;
    :cond_5e
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 70
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_10

    .line 75
    const/4 v0, 0x0

    :goto_8
    return v0

    .line 72
    :pswitch_9
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goUp()V

    .line 73
    const/4 v0, 0x1

    goto :goto_8

    .line 70
    :pswitch_data_10
    .packed-switch 0x102002c
        :pswitch_9
    .end packed-switch
.end method

.method protected onReady(Z)V
    .registers 2
    .parameter "shouldHandleIntent"

    .prologue
    .line 81
    return-void
.end method

.method public showErrorDialog(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 4
    .parameter "title"
    .parameter "message"
    .parameter "goBack"

    .prologue
    .line 122
    return-void
.end method

.method public updateBreadcrumb(Ljava/lang/String;)V
    .registers 3
    .parameter "breadcrumb"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsActivity;->mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    invoke-interface {v0, p1}, Lcom/google/android/finsky/layout/CustomActionBar;->updateBreadcrumb(Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method public updateCurrentBackendId(I)V
    .registers 3
    .parameter "backend"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsActivity;->mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    invoke-interface {v0, p1}, Lcom/google/android/finsky/layout/CustomActionBar;->updateCurrentBackendId(I)V

    .line 103
    return-void
.end method
