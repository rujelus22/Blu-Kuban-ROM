.class public Lcom/google/android/finsky/activities/FlagItemDialog;
.super Lcom/google/android/finsky/activities/PhoneskyActivity;
.source "FlagItemDialog.java"

# interfaces
.implements Lcom/google/android/finsky/fragments/PageFragmentHost;


# instance fields
.field private mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

.field private mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PhoneskyActivity;-><init>()V

    .line 30
    new-instance v0, Lcom/google/android/finsky/activities/FakeNavigationManager;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/activities/FakeNavigationManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/FlagItemDialog;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    return-void
.end method

.method public static show(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 33
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/finsky/activities/FlagItemDialog;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 34
    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    const/high16 v1, 0x2001

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 36
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 37
    return-void
.end method


# virtual methods
.method public getBitmapLoader()Lcom/google/android/finsky/utils/BitmapLoader;
    .registers 2

    .prologue
    .line 64
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getBitmapLoader()Lcom/google/android/finsky/utils/BitmapLoader;

    move-result-object v0

    return-object v0
.end method

.method public getDfeApi()Lcom/google/android/finsky/api/DfeApi;
    .registers 2

    .prologue
    .line 69
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getDfeApi()Lcom/google/android/finsky/api/DfeApi;

    move-result-object v0

    return-object v0
.end method

.method public getNavigationManager()Lcom/google/android/finsky/navigationmanager/NavigationManager;
    .registers 2

    .prologue
    .line 74
    const/4 v0, 0x0

    return-object v0
.end method

.method public goBack()V
    .registers 1

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/FlagItemDialog;->finish()V

    .line 80
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 41
    const v1, 0x7f04005d

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/activities/FlagItemDialog;->setContentView(I)V

    .line 42
    invoke-super {p0, p1}, Lcom/google/android/finsky/activities/PhoneskyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/FlagItemDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 45
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/activities/FlagItemDialog;->mUrl:Ljava/lang/String;

    .line 47
    invoke-static {p0}, Lcom/google/android/finsky/layout/CustomActionBarFactory;->getInstance(Landroid/app/Activity;)Lcom/google/android/finsky/layout/CustomActionBar;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/activities/FlagItemDialog;->mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    .line 48
    iget-object v1, p0, Lcom/google/android/finsky/activities/FlagItemDialog;->mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    iget-object v2, p0, Lcom/google/android/finsky/activities/FlagItemDialog;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-interface {v1, v2, p0}, Lcom/google/android/finsky/layout/CustomActionBar;->initialize(Lcom/google/android/finsky/navigationmanager/NavigationManager;Landroid/app/Activity;)V

    .line 49
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    .line 99
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_e

    .line 100
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/FlagItemDialog;->finish()V

    .line 101
    const/4 v0, 0x1

    .line 103
    :goto_d
    return v0

    :cond_e
    invoke-super {p0, p1}, Lcom/google/android/finsky/activities/PhoneskyActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_d
.end method

.method protected onReady(Z)V
    .registers 6
    .parameter "shouldHandleIntent"

    .prologue
    const v3, 0x7f08003e

    .line 53
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/FlagItemDialog;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 60
    :goto_d
    return-void

    .line 56
    :cond_e
    iget-object v2, p0, Lcom/google/android/finsky/activities/FlagItemDialog;->mUrl:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/finsky/activities/FlagItemFragment;->newInstance(Ljava/lang/String;)Lcom/google/android/finsky/activities/FlagItemFragment;

    move-result-object v0

    .line 57
    .local v0, fragment:Lcom/google/android/finsky/activities/FlagItemFragment;
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/FlagItemDialog;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 58
    .local v1, ft:Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {v1, v3, v0}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 59
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_d
.end method

.method public showErrorDialog(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5
    .parameter "title"
    .parameter "message"
    .parameter "goBack"

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/FlagItemDialog;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/google/android/finsky/activities/ErrorDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/finsky/activities/ErrorDialog;

    .line 85
    return-void
.end method

.method public updateBreadcrumb(Ljava/lang/String;)V
    .registers 3
    .parameter "breadcrumb"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/finsky/activities/FlagItemDialog;->mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    invoke-interface {v0, p1}, Lcom/google/android/finsky/layout/CustomActionBar;->updateBreadcrumb(Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public updateCurrentBackendId(I)V
    .registers 3
    .parameter "backend"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/android/finsky/activities/FlagItemDialog;->mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    invoke-interface {v0, p1}, Lcom/google/android/finsky/layout/CustomActionBar;->updateCurrentBackendId(I)V

    .line 95
    return-void
.end method
