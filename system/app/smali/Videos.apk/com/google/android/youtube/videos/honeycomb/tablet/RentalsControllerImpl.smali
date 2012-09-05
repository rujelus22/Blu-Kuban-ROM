.class public Lcom/google/android/youtube/videos/honeycomb/tablet/RentalsControllerImpl;
.super Lcom/google/android/youtube/videos/honeycomb/RentalsController;
.source "RentalsControllerImpl.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;
.implements Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$OfflineManagementModeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/videos/honeycomb/tablet/RentalsControllerImpl$PopupMenuListener;
    }
.end annotation


# instance fields
.field private myRentals:Lcom/google/android/youtube/videos/honeycomb/tablet/RentalsCarousel;

.field private popup:Landroid/widget/PopupMenu;

.field private popupAnchor:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/videos/VideosApplication;Landroid/app/Activity;Lcom/google/android/youtube/videos/Navigation;Landroid/os/Bundle;)V
    .registers 5
    .parameter "application"
    .parameter "activity"
    .parameter "navigation"
    .parameter "launchBundle"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/youtube/videos/honeycomb/RentalsController;-><init>(Lcom/google/android/youtube/videos/VideosApplication;Landroid/app/Activity;Lcom/google/android/youtube/videos/Navigation;Landroid/os/Bundle;)V

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/youtube/videos/honeycomb/tablet/RentalsControllerImpl;)Lcom/google/android/youtube/videos/Navigation;
    .registers 2
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/tablet/RentalsControllerImpl;->navigation:Lcom/google/android/youtube/videos/Navigation;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/youtube/videos/honeycomb/tablet/RentalsControllerImpl;)Lcom/google/android/youtube/videos/Navigation;
    .registers 2
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/tablet/RentalsControllerImpl;->navigation:Lcom/google/android/youtube/videos/Navigation;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/youtube/videos/honeycomb/tablet/RentalsControllerImpl;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/videos/honeycomb/tablet/RentalsControllerImpl;->rentAgain(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected getPurchasesViewWrapper()Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$PurchasesViewWrapper;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/tablet/RentalsControllerImpl;->myRentals:Lcom/google/android/youtube/videos/honeycomb/tablet/RentalsCarousel;

    return-object v0
.end method

.method protected onCreate(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 4
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 43
    const v0, 0x7f0d002e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/videos/honeycomb/tablet/RentalsCarousel;

    iput-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/tablet/RentalsControllerImpl;->myRentals:Lcom/google/android/youtube/videos/honeycomb/tablet/RentalsCarousel;

    .line 44
    const v0, 0x7f0d0035

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/tablet/RentalsControllerImpl;->popupAnchor:Landroid/view/View;

    .line 45
    invoke-super {p0, p1, p2}, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->onCreate(Landroid/view/View;Landroid/os/Bundle;)V

    .line 46
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/tablet/RentalsControllerImpl;->myRentals:Lcom/google/android/youtube/videos/honeycomb/tablet/RentalsCarousel;

    invoke-virtual {v0}, Lcom/google/android/youtube/videos/honeycomb/tablet/RentalsCarousel;->destroy()V

    .line 90
    invoke-super {p0}, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->onDestroy()V

    .line 91
    return-void
.end method

.method protected onPurchaseLongClick(Lcom/google/android/youtube/core/model/Purchase;Z)Z
    .registers 8
    .parameter "purchase"
    .parameter "isExpired"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 55
    iget-object v1, p0, Lcom/google/android/youtube/videos/honeycomb/tablet/RentalsControllerImpl;->myRentals:Lcom/google/android/youtube/videos/honeycomb/tablet/RentalsCarousel;

    invoke-virtual {v1}, Lcom/google/android/youtube/videos/honeycomb/tablet/RentalsCarousel;->getLastTouchPosition()[I

    move-result-object v0

    .line 56
    .local v0, touchPosition:[I
    iget-object v1, p0, Lcom/google/android/youtube/videos/honeycomb/tablet/RentalsControllerImpl;->popupAnchor:Landroid/view/View;

    aget v2, v0, v4

    invoke-virtual {v1, v2}, Landroid/view/View;->setTop(I)V

    .line 57
    iget-object v1, p0, Lcom/google/android/youtube/videos/honeycomb/tablet/RentalsControllerImpl;->popupAnchor:Landroid/view/View;

    aget v2, v0, v4

    invoke-virtual {v1, v2}, Landroid/view/View;->setBottom(I)V

    .line 58
    iget-object v1, p0, Lcom/google/android/youtube/videos/honeycomb/tablet/RentalsControllerImpl;->popupAnchor:Landroid/view/View;

    aget v2, v0, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->setLeft(I)V

    .line 59
    iget-object v1, p0, Lcom/google/android/youtube/videos/honeycomb/tablet/RentalsControllerImpl;->popupAnchor:Landroid/view/View;

    aget v2, v0, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->setRight(I)V

    .line 60
    new-instance v1, Landroid/widget/PopupMenu;

    iget-object v2, p0, Lcom/google/android/youtube/videos/honeycomb/tablet/RentalsControllerImpl;->activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/google/android/youtube/videos/honeycomb/tablet/RentalsControllerImpl;->popupAnchor:Landroid/view/View;

    invoke-direct {v1, v2, v3}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v1, p0, Lcom/google/android/youtube/videos/honeycomb/tablet/RentalsControllerImpl;->popup:Landroid/widget/PopupMenu;

    .line 61
    if-eqz p2, :cond_57

    .line 62
    iget-object v1, p0, Lcom/google/android/youtube/videos/honeycomb/tablet/RentalsControllerImpl;->popup:Landroid/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f110001

    iget-object v3, p0, Lcom/google/android/youtube/videos/honeycomb/tablet/RentalsControllerImpl;->popup:Landroid/widget/PopupMenu;

    invoke-virtual {v3}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 66
    :goto_43
    iget-object v1, p0, Lcom/google/android/youtube/videos/honeycomb/tablet/RentalsControllerImpl;->popup:Landroid/widget/PopupMenu;

    new-instance v2, Lcom/google/android/youtube/videos/honeycomb/tablet/RentalsControllerImpl$PopupMenuListener;

    iget-object v3, p1, Lcom/google/android/youtube/core/model/Purchase;->purchasedVideo:Lcom/google/android/youtube/core/model/Video;

    iget-object v3, v3, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-direct {v2, p0, v3}, Lcom/google/android/youtube/videos/honeycomb/tablet/RentalsControllerImpl$PopupMenuListener;-><init>(Lcom/google/android/youtube/videos/honeycomb/tablet/RentalsControllerImpl;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 67
    iget-object v1, p0, Lcom/google/android/youtube/videos/honeycomb/tablet/RentalsControllerImpl;->popup:Landroid/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->show()V

    .line 68
    return v4

    .line 64
    :cond_57
    iget-object v1, p0, Lcom/google/android/youtube/videos/honeycomb/tablet/RentalsControllerImpl;->popup:Landroid/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f110002

    iget-object v3, p0, Lcom/google/android/youtube/videos/honeycomb/tablet/RentalsControllerImpl;->popup:Landroid/widget/PopupMenu;

    invoke-virtual {v3}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_43
.end method

.method public onStart()V
    .registers 2

    .prologue
    .line 73
    invoke-super {p0}, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->onStart()V

    .line 74
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/tablet/RentalsControllerImpl;->myRentals:Lcom/google/android/youtube/videos/honeycomb/tablet/RentalsCarousel;

    invoke-virtual {v0}, Lcom/google/android/youtube/videos/honeycomb/tablet/RentalsCarousel;->resume()V

    .line 75
    return-void
.end method

.method public onStop()V
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/tablet/RentalsControllerImpl;->myRentals:Lcom/google/android/youtube/videos/honeycomb/tablet/RentalsCarousel;

    invoke-virtual {v0}, Lcom/google/android/youtube/videos/honeycomb/tablet/RentalsCarousel;->pause()V

    .line 80
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/tablet/RentalsControllerImpl;->popup:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_11

    .line 81
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/tablet/RentalsControllerImpl;->popup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/tablet/RentalsControllerImpl;->popup:Landroid/widget/PopupMenu;

    .line 84
    :cond_11
    invoke-super {p0}, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->onStop()V

    .line 85
    return-void
.end method
