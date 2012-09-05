.class public Lcom/google/android/finsky/activities/PurchaseDialog;
.super Lcom/google/android/finsky/activities/PhoneskyActivity;
.source "PurchaseDialog.java"

# interfaces
.implements Lcom/google/android/finsky/fragments/PageFragmentHost;


# instance fields
.field private mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

.field private mDocIdToPurchase:Ljava/lang/String;

.field private mExternalReferrer:Ljava/lang/String;

.field private mIsDirectLink:Z

.field private mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

.field private mOfferType:I

.field private mReferrerCookie:Ljava/lang/String;

.field private mReferrerUrl:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PhoneskyActivity;-><init>()V

    .line 44
    new-instance v0, Lcom/google/android/finsky/activities/FakeNavigationManager;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/activities/FakeNavigationManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/PurchaseDialog;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    return-void
.end method

.method public static show(Landroid/content/Context;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 67
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/finsky/activities/PurchaseDialog;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 68
    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    const-string v1, "offer"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 70
    const-string v1, "referrer"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    const-string v1, "referrer_cookie"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    const-string v1, "is_direct_link"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 73
    const-string v1, "ext_referrer"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    const-string v1, "docId_to_purchase"

    invoke-virtual {v0, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    const/high16 v1, 0x2001

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 76
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 77
    return-void
.end method


# virtual methods
.method public getBitmapLoader()Lcom/google/android/finsky/utils/BitmapLoader;
    .registers 2

    .prologue
    .line 93
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getBitmapLoader()Lcom/google/android/finsky/utils/BitmapLoader;

    move-result-object v0

    return-object v0
.end method

.method public getDfeApi()Lcom/google/android/finsky/api/DfeApi;
    .registers 2

    .prologue
    .line 98
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getDfeApi()Lcom/google/android/finsky/api/DfeApi;

    move-result-object v0

    return-object v0
.end method

.method public getNavigationManager()Lcom/google/android/finsky/navigationmanager/NavigationManager;
    .registers 2

    .prologue
    .line 103
    const/4 v0, 0x0

    return-object v0
.end method

.method public goBack()V
    .registers 1

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseDialog;->finish()V

    .line 109
    return-void
.end method

.method protected hideLoadingIndicator()V
    .registers 3

    .prologue
    .line 143
    const v0, 0x7f0800cf

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/PurchaseDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 144
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 48
    const v1, 0x7f04005d

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/activities/PurchaseDialog;->setContentView(I)V

    .line 49
    invoke-super {p0, p1}, Lcom/google/android/finsky/activities/PhoneskyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 52
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/activities/PurchaseDialog;->mUrl:Ljava/lang/String;

    .line 53
    const-string v1, "offer"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/activities/PurchaseDialog;->mOfferType:I

    .line 54
    const-string v1, "referrer"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/activities/PurchaseDialog;->mReferrerUrl:Ljava/lang/String;

    .line 55
    const-string v1, "referrer_cookie"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/activities/PurchaseDialog;->mReferrerCookie:Ljava/lang/String;

    .line 56
    const-string v1, "ext_referrer"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/activities/PurchaseDialog;->mExternalReferrer:Ljava/lang/String;

    .line 57
    const-string v1, "is_direct_link"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/finsky/activities/PurchaseDialog;->mIsDirectLink:Z

    .line 58
    const-string v1, "docId_to_purchase"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/activities/PurchaseDialog;->mDocIdToPurchase:Ljava/lang/String;

    .line 60
    invoke-static {p0}, Lcom/google/android/finsky/layout/CustomActionBarFactory;->getInstance(Landroid/app/Activity;)Lcom/google/android/finsky/layout/CustomActionBar;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/activities/PurchaseDialog;->mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    .line 61
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseDialog;->mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseDialog;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-interface {v1, v2, p0}, Lcom/google/android/finsky/layout/CustomActionBar;->initialize(Lcom/google/android/finsky/navigationmanager/NavigationManager;Landroid/app/Activity;)V

    .line 62
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    .line 128
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_e

    .line 129
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseDialog;->finish()V

    .line 130
    const/4 v0, 0x1

    .line 132
    :goto_d
    return v0

    :cond_e
    invoke-super {p0, p1}, Lcom/google/android/finsky/activities/PhoneskyActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_d
.end method

.method protected onReady(Z)V
    .registers 12
    .parameter "shouldHandleIntent"

    .prologue
    const v9, 0x7f08003e

    .line 81
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseDialog;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 89
    :goto_d
    return-void

    .line 84
    :cond_e
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseDialog;->mUrl:Ljava/lang/String;

    iget v1, p0, Lcom/google/android/finsky/activities/PurchaseDialog;->mOfferType:I

    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseDialog;->mReferrerUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/finsky/activities/PurchaseDialog;->mReferrerCookie:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/google/android/finsky/activities/PurchaseDialog;->mIsDirectLink:Z

    iget-object v5, p0, Lcom/google/android/finsky/activities/PurchaseDialog;->mExternalReferrer:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/finsky/activities/PurchaseDialog;->mDocIdToPurchase:Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Lcom/google/android/finsky/activities/PurchaseFragment;->newInstance(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/activities/PurchaseFragment;

    move-result-object v7

    .line 86
    .local v7, fragment:Lcom/google/android/finsky/activities/PurchaseFragment;
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseDialog;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v8

    .line 87
    .local v8, ft:Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {v8, v9, v7}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 88
    invoke-virtual {v8}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_d
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 3
    .parameter "outState"

    .prologue
    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/PurchaseDialog;->mStateSaved:Z

    .line 138
    invoke-super {p0, p1}, Lcom/google/android/finsky/activities/PhoneskyActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 139
    return-void
.end method

.method public showErrorDialog(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5
    .parameter "title"
    .parameter "message"
    .parameter "goBack"

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseDialog;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/google/android/finsky/activities/ErrorDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/finsky/activities/ErrorDialog;

    .line 114
    return-void
.end method

.method public updateBreadcrumb(Ljava/lang/String;)V
    .registers 3
    .parameter "breadcrumb"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseDialog;->mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    invoke-interface {v0, p1}, Lcom/google/android/finsky/layout/CustomActionBar;->updateBreadcrumb(Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method public updateCurrentBackendId(I)V
    .registers 3
    .parameter "backend"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseDialog;->mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    invoke-interface {v0, p1}, Lcom/google/android/finsky/layout/CustomActionBar;->updateCurrentBackendId(I)V

    .line 124
    return-void
.end method
