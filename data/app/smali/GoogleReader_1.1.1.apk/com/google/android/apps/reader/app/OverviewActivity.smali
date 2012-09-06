.class public Lcom/google/android/apps/reader/app/OverviewActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "OverviewActivity.java"


# instance fields
.field private mOverview:Lcom/google/android/apps/reader/fragment/OverviewFragment;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const v1, 0x7f030026

    invoke-virtual {p0, v1}, Lcom/google/android/apps/reader/app/OverviewActivity;->setContentView(I)V

    .line 37
    invoke-virtual {p0}, Lcom/google/android/apps/reader/app/OverviewActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 38
    .local v0, fragments:Landroid/support/v4/app/FragmentManager;
    const v1, 0x7f0b005f

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/reader/fragment/OverviewFragment;

    iput-object v1, p0, Lcom/google/android/apps/reader/app/OverviewActivity;->mOverview:Lcom/google/android/apps/reader/fragment/OverviewFragment;

    .line 39
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 44
    if-nez p1, :cond_12

    .line 45
    iget-object v0, p0, Lcom/google/android/apps/reader/app/OverviewActivity;->mOverview:Lcom/google/android/apps/reader/fragment/OverviewFragment;

    invoke-virtual {p0}, Lcom/google/android/apps/reader/app/OverviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/fragment/OverviewFragment;->changeUri(Landroid/net/Uri;)V

    .line 47
    :cond_12
    return-void
.end method
