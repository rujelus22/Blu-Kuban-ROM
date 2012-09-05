.class public Lcom/google/android/youtube/videos/honeycomb/phone/RentalsControllerImpl;
.super Lcom/google/android/youtube/videos/honeycomb/RentalsController;
.source "RentalsControllerImpl.java"

# interfaces
.implements Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;
.implements Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$OfflineManagementModeListener;


# instance fields
.field private myRentals:Landroid/widget/GridView;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/videos/VideosApplication;Landroid/app/Activity;Lcom/google/android/youtube/videos/Navigation;Landroid/os/Bundle;)V
    .registers 5
    .parameter "application"
    .parameter "activity"
    .parameter "navigation"
    .parameter "launchBundle"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/youtube/videos/honeycomb/RentalsController;-><init>(Lcom/google/android/youtube/videos/VideosApplication;Landroid/app/Activity;Lcom/google/android/youtube/videos/Navigation;Landroid/os/Bundle;)V

    .line 35
    return-void
.end method


# virtual methods
.method protected getPurchasesViewWrapper()Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$PurchasesViewWrapper;
    .registers 3

    .prologue
    .line 45
    new-instance v0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$PurchasesGridViewWrapper;

    iget-object v1, p0, Lcom/google/android/youtube/videos/honeycomb/phone/RentalsControllerImpl;->myRentals:Landroid/widget/GridView;

    invoke-direct {v0, v1}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$PurchasesGridViewWrapper;-><init>(Landroid/widget/GridView;)V

    return-object v0
.end method

.method protected onCreate(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 4
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 39
    const v0, 0x7f0d002e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/phone/RentalsControllerImpl;->myRentals:Landroid/widget/GridView;

    .line 40
    invoke-super {p0, p1, p2}, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->onCreate(Landroid/view/View;Landroid/os/Bundle;)V

    .line 41
    return-void
.end method

.method public onOrientationChanged(Z)V
    .registers 5
    .parameter "landscape"

    .prologue
    .line 56
    iget-object v1, p0, Lcom/google/android/youtube/videos/honeycomb/phone/RentalsControllerImpl;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 58
    iget-object v1, p0, Lcom/google/android/youtube/videos/honeycomb/phone/RentalsControllerImpl;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 59
    .local v0, rentalsNumColumns:I
    iget-object v1, p0, Lcom/google/android/youtube/videos/honeycomb/phone/RentalsControllerImpl;->myRentals:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 60
    invoke-virtual {p0}, Lcom/google/android/youtube/videos/honeycomb/phone/RentalsControllerImpl;->getTopRentalsView()Lcom/google/android/youtube/videos/ui/MovieTableView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/videos/ui/MovieTableView;->setNumColumns(I)V

    .line 61
    return-void
.end method

.method public onPurchaseLongClick(Lcom/google/android/youtube/core/model/Purchase;Z)Z
    .registers 4
    .parameter "purchase"
    .parameter "isExpired"

    .prologue
    .line 51
    const/4 v0, 0x0

    return v0
.end method
