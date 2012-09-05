.class Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$1;
.super Ljava/lang/Object;
.source "MyPurchasesHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/videos/Navigation;Landroid/content/SharedPreferences;Landroid/view/View;Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$PurchasesViewWrapper;Landroid/view/View;ILcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;Lcom/google/android/youtube/videos/Requesters;Lcom/google/android/youtube/videos/store/PurchaseStore;Lcom/google/android/youtube/videos/DrmManager;Lcom/google/android/youtube/videos/VideosAnalytics;Lcom/google/android/youtube/videos/VideosPlatformUtil;Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$OfflineManagementModeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;)V
    .registers 2
    .parameter

    .prologue
    .line 182
    iput-object p1, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$1;->this$0:Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$1;->this$0:Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;

    #calls: Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->commitOfflineChanges()V
    invoke-static {v0}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->access$000(Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;)V

    .line 185
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$1;->this$0:Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->setOfflineManagement(Z)V

    .line 186
    return-void
.end method
