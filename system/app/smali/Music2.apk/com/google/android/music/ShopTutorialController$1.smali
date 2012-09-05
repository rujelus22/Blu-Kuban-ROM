.class Lcom/google/android/music/ShopTutorialController$1;
.super Ljava/lang/Object;
.source "ShopTutorialController.java"

# interfaces
.implements Lcom/google/android/music/ShopTutorialController$ShopTutorialDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/ShopTutorialController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/ShopTutorialController;


# direct methods
.method constructor <init>(Lcom/google/android/music/ShopTutorialController;)V
    .registers 2
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/google/android/music/ShopTutorialController$1;->this$0:Lcom/google/android/music/ShopTutorialController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShopTutorialDismissed()V
    .registers 3

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/android/music/ShopTutorialController$1;->this$0:Lcom/google/android/music/ShopTutorialController;

    const/4 v1, 0x1

    #setter for: Lcom/google/android/music/ShopTutorialController;->mShopTutorialViewed:Z
    invoke-static {v0, v1}, Lcom/google/android/music/ShopTutorialController;->access$002(Lcom/google/android/music/ShopTutorialController;Z)Z

    .line 88
    iget-object v0, p0, Lcom/google/android/music/ShopTutorialController$1;->this$0:Lcom/google/android/music/ShopTutorialController;

    #getter for: Lcom/google/android/music/ShopTutorialController;->mContext:Landroid/app/Activity;
    invoke-static {v0}, Lcom/google/android/music/ShopTutorialController;->access$200(Lcom/google/android/music/ShopTutorialController;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/ShopTutorialController$1;->this$0:Lcom/google/android/music/ShopTutorialController;

    #getter for: Lcom/google/android/music/ShopTutorialController;->mShowTutorialIfAvailableRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/google/android/music/ShopTutorialController;->access$100(Lcom/google/android/music/ShopTutorialController;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 89
    sget-object v0, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    iget-object v1, p0, Lcom/google/android/music/ShopTutorialController$1;->this$0:Lcom/google/android/music/ShopTutorialController;

    #getter for: Lcom/google/android/music/ShopTutorialController;->mSaveViewedRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/google/android/music/ShopTutorialController;->access$300(Lcom/google/android/music/ShopTutorialController;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/music/utils/async/AsyncWorkers;->runAsync(Lcom/google/android/music/Worker;Ljava/lang/Runnable;)V

    .line 90
    return-void
.end method
