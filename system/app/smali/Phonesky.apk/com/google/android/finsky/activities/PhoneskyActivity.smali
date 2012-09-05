.class public abstract Lcom/google/android/finsky/activities/PhoneskyActivity;
.super Lcom/google/android/finsky/activities/AuthenticatedActivity;
.source "PhoneskyActivity.java"

# interfaces
.implements Lcom/google/android/finsky/activities/BackgroundDataDialog$BackgroundDataSettingListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected handleAuthenticationError(Lcom/android/volley/VolleyError;)V
    .registers 2
    .parameter "error"

    .prologue
    .line 23
    return-void
.end method

.method protected initialize(Ljava/lang/Runnable;)V
    .registers 6
    .parameter "successCallback"

    .prologue
    .line 62
    new-instance v0, Lcom/google/android/finsky/activities/GetMarketMetadataAction;

    invoke-direct {v0}, Lcom/google/android/finsky/activities/GetMarketMetadataAction;-><init>()V

    .line 63
    .local v0, sendMetadataAction:Lcom/google/android/finsky/activities/GetMarketMetadataAction;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccountName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/android/finsky/activities/PhoneskyActivity$1;

    invoke-direct {v2, p0, p1}, Lcom/google/android/finsky/activities/PhoneskyActivity$1;-><init>(Lcom/google/android/finsky/activities/PhoneskyActivity;Ljava/lang/Runnable;)V

    new-instance v3, Lcom/google/android/finsky/activities/PhoneskyActivity$2;

    invoke-direct {v3, p0}, Lcom/google/android/finsky/activities/PhoneskyActivity$2;-><init>(Lcom/google/android/finsky/activities/PhoneskyActivity;)V

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/google/android/finsky/activities/GetMarketMetadataAction;->run(Landroid/content/Context;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 80
    return-void
.end method

.method protected onApisChanged()V
    .registers 1

    .prologue
    .line 28
    return-void
.end method

.method public onBackgroundDataNotEnabled()V
    .registers 1

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PhoneskyActivity;->finish()V

    .line 55
    return-void
.end method

.method protected onCleanup()V
    .registers 1

    .prologue
    .line 33
    return-void
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 37
    invoke-super {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->onResume()V

    .line 38
    invoke-static {p0}, Lcom/google/android/finsky/utils/Utils;->isBackgroundDataEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 42
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PhoneskyActivity;->showBackgroundDataDialog()V

    .line 46
    :goto_c
    return-void

    .line 44
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PhoneskyActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/finsky/activities/BackgroundDataDialog;->dismissExisting(Landroid/support/v4/app/FragmentManager;)V

    goto :goto_c
.end method

.method protected showBackgroundDataDialog()V
    .registers 2

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PhoneskyActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/google/android/finsky/activities/BackgroundDataDialog;->show(Landroid/support/v4/app/FragmentManager;Landroid/app/Activity;)V

    .line 50
    return-void
.end method
