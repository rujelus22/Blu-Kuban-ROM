.class Lcom/google/android/youtube/videos/honeycomb/RentalsController$1;
.super Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;
.source "RentalsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/videos/honeycomb/RentalsController;->onCreate(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/videos/honeycomb/RentalsController;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/videos/honeycomb/RentalsController;Landroid/app/Activity;Lcom/google/android/youtube/videos/Navigation;Landroid/content/SharedPreferences;Landroid/view/View;Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$PurchasesViewWrapper;Landroid/view/View;ILcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;Lcom/google/android/youtube/videos/Requesters;Lcom/google/android/youtube/videos/store/PurchaseStore;Lcom/google/android/youtube/videos/DrmManager;Lcom/google/android/youtube/videos/VideosAnalytics;Lcom/google/android/youtube/videos/VideosPlatformUtil;Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$OfflineManagementModeListener;)V
    .registers 33
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"
    .parameter "x8"
    .parameter "x9"
    .parameter "x10"
    .parameter "x11"
    .parameter "x12"
    .parameter "x13"

    .prologue
    .line 123
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/youtube/videos/honeycomb/RentalsController$1;->this$0:Lcom/google/android/youtube/videos/honeycomb/RentalsController;

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    invoke-direct/range {v2 .. v16}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/videos/Navigation;Landroid/content/SharedPreferences;Landroid/view/View;Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$PurchasesViewWrapper;Landroid/view/View;ILcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;Lcom/google/android/youtube/videos/Requesters;Lcom/google/android/youtube/videos/store/PurchaseStore;Lcom/google/android/youtube/videos/DrmManager;Lcom/google/android/youtube/videos/VideosAnalytics;Lcom/google/android/youtube/videos/VideosPlatformUtil;Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$OfflineManagementModeListener;)V

    return-void
.end method


# virtual methods
.method protected onHasEntries()V
    .registers 3

    .prologue
    .line 132
    invoke-super {p0}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->onHasEntries()V

    .line 133
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/RentalsController$1;->this$0:Lcom/google/android/youtube/videos/honeycomb/RentalsController;

    sget-object v1, Lcom/google/android/youtube/videos/honeycomb/RentalsController$HasRentals;->YES:Lcom/google/android/youtube/videos/honeycomb/RentalsController$HasRentals;

    #setter for: Lcom/google/android/youtube/videos/honeycomb/RentalsController;->hasRentals:Lcom/google/android/youtube/videos/honeycomb/RentalsController$HasRentals;
    invoke-static {v0, v1}, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->access$002(Lcom/google/android/youtube/videos/honeycomb/RentalsController;Lcom/google/android/youtube/videos/honeycomb/RentalsController$HasRentals;)Lcom/google/android/youtube/videos/honeycomb/RentalsController$HasRentals;

    .line 134
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/RentalsController$1;->this$0:Lcom/google/android/youtube/videos/honeycomb/RentalsController;

    #calls: Lcom/google/android/youtube/videos/honeycomb/RentalsController;->configureViews()V
    invoke-static {v0}, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->access$100(Lcom/google/android/youtube/videos/honeycomb/RentalsController;)V

    .line 135
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/RentalsController$1;->this$0:Lcom/google/android/youtube/videos/honeycomb/RentalsController;

    #getter for: Lcom/google/android/youtube/videos/honeycomb/RentalsController;->activity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->access$200(Lcom/google/android/youtube/videos/honeycomb/RentalsController;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 136
    return-void
.end method

.method protected onNoEntries()V
    .registers 3

    .prologue
    .line 126
    invoke-super {p0}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->onNoEntries()V

    .line 127
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/RentalsController$1;->this$0:Lcom/google/android/youtube/videos/honeycomb/RentalsController;

    sget-object v1, Lcom/google/android/youtube/videos/honeycomb/RentalsController$HasRentals;->NO:Lcom/google/android/youtube/videos/honeycomb/RentalsController$HasRentals;

    #setter for: Lcom/google/android/youtube/videos/honeycomb/RentalsController;->hasRentals:Lcom/google/android/youtube/videos/honeycomb/RentalsController$HasRentals;
    invoke-static {v0, v1}, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->access$002(Lcom/google/android/youtube/videos/honeycomb/RentalsController;Lcom/google/android/youtube/videos/honeycomb/RentalsController$HasRentals;)Lcom/google/android/youtube/videos/honeycomb/RentalsController$HasRentals;

    .line 128
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/RentalsController$1;->this$0:Lcom/google/android/youtube/videos/honeycomb/RentalsController;

    #calls: Lcom/google/android/youtube/videos/honeycomb/RentalsController;->configureViews()V
    invoke-static {v0}, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->access$100(Lcom/google/android/youtube/videos/honeycomb/RentalsController;)V

    .line 129
    return-void
.end method
