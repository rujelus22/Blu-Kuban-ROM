.class Lcom/google/android/music/ShopTutorialController$3;
.super Ljava/lang/Object;
.source "ShopTutorialController.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 107
    iput-object p1, p0, Lcom/google/android/music/ShopTutorialController$3;->this$0:Lcom/google/android/music/ShopTutorialController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 109
    iget-object v1, p0, Lcom/google/android/music/ShopTutorialController$3;->this$0:Lcom/google/android/music/ShopTutorialController;

    #getter for: Lcom/google/android/music/ShopTutorialController;->mContext:Landroid/app/Activity;
    invoke-static {v1}, Lcom/google/android/music/ShopTutorialController;->access$200(Lcom/google/android/music/ShopTutorialController;)Landroid/app/Activity;

    move-result-object v1

    const-string v2, "shopTutorial.pref"

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 111
    .local v0, sharedPreferences:Landroid/content/SharedPreferences;
    iget-object v1, p0, Lcom/google/android/music/ShopTutorialController$3;->this$0:Lcom/google/android/music/ShopTutorialController;

    const-string v2, "viewed"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    #setter for: Lcom/google/android/music/ShopTutorialController;->mShopTutorialViewed:Z
    invoke-static {v1, v2}, Lcom/google/android/music/ShopTutorialController;->access$002(Lcom/google/android/music/ShopTutorialController;Z)Z

    .line 117
    invoke-static {}, Lcom/google/android/music/ShopTutorialController;->access$900()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 118
    iget-object v1, p0, Lcom/google/android/music/ShopTutorialController$3;->this$0:Lcom/google/android/music/ShopTutorialController;

    #setter for: Lcom/google/android/music/ShopTutorialController;->mShopTutorialViewed:Z
    invoke-static {v1, v3}, Lcom/google/android/music/ShopTutorialController;->access$002(Lcom/google/android/music/ShopTutorialController;Z)Z

    .line 119
    invoke-static {v3}, Lcom/google/android/music/ShopTutorialController;->access$902(Z)Z

    .line 120
    sget-object v1, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    iget-object v2, p0, Lcom/google/android/music/ShopTutorialController$3;->this$0:Lcom/google/android/music/ShopTutorialController;

    #getter for: Lcom/google/android/music/ShopTutorialController;->mSaveViewedRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/google/android/music/ShopTutorialController;->access$300(Lcom/google/android/music/ShopTutorialController;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/music/Worker;->post(Ljava/lang/Runnable;)Z

    .line 123
    :cond_31
    iget-object v1, p0, Lcom/google/android/music/ShopTutorialController$3;->this$0:Lcom/google/android/music/ShopTutorialController;

    const/4 v2, 0x1

    #setter for: Lcom/google/android/music/ShopTutorialController;->mLoadedFromPreferences:Z
    invoke-static {v1, v2}, Lcom/google/android/music/ShopTutorialController;->access$1002(Lcom/google/android/music/ShopTutorialController;Z)Z

    .line 124
    iget-object v1, p0, Lcom/google/android/music/ShopTutorialController$3;->this$0:Lcom/google/android/music/ShopTutorialController;

    iget-object v2, p0, Lcom/google/android/music/ShopTutorialController$3;->this$0:Lcom/google/android/music/ShopTutorialController;

    #getter for: Lcom/google/android/music/ShopTutorialController;->mContext:Landroid/app/Activity;
    invoke-static {v2}, Lcom/google/android/music/ShopTutorialController;->access$200(Lcom/google/android/music/ShopTutorialController;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    #setter for: Lcom/google/android/music/ShopTutorialController;->mStaticConfigAllowShopTutorial:Z
    invoke-static {v1, v2}, Lcom/google/android/music/ShopTutorialController;->access$1102(Lcom/google/android/music/ShopTutorialController;Z)Z

    .line 126
    iget-object v1, p0, Lcom/google/android/music/ShopTutorialController$3;->this$0:Lcom/google/android/music/ShopTutorialController;

    #getter for: Lcom/google/android/music/ShopTutorialController;->mStaticConfigAllowShopTutorial:Z
    invoke-static {v1}, Lcom/google/android/music/ShopTutorialController;->access$1100(Lcom/google/android/music/ShopTutorialController;)Z

    move-result v1

    if-eqz v1, :cond_60

    .line 127
    iget-object v1, p0, Lcom/google/android/music/ShopTutorialController$3;->this$0:Lcom/google/android/music/ShopTutorialController;

    iget-object v2, p0, Lcom/google/android/music/ShopTutorialController$3;->this$0:Lcom/google/android/music/ShopTutorialController;

    #calls: Lcom/google/android/music/ShopTutorialController;->hasStoreContent()Z
    invoke-static {v2}, Lcom/google/android/music/ShopTutorialController;->access$700(Lcom/google/android/music/ShopTutorialController;)Z

    move-result v2

    #setter for: Lcom/google/android/music/ShopTutorialController;->mHasStoreContent:Z
    invoke-static {v1, v2}, Lcom/google/android/music/ShopTutorialController;->access$602(Lcom/google/android/music/ShopTutorialController;Z)Z

    .line 130
    :cond_60
    iget-object v1, p0, Lcom/google/android/music/ShopTutorialController$3;->this$0:Lcom/google/android/music/ShopTutorialController;

    #getter for: Lcom/google/android/music/ShopTutorialController;->mContext:Landroid/app/Activity;
    invoke-static {v1}, Lcom/google/android/music/ShopTutorialController;->access$200(Lcom/google/android/music/ShopTutorialController;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/ShopTutorialController$3;->this$0:Lcom/google/android/music/ShopTutorialController;

    #getter for: Lcom/google/android/music/ShopTutorialController;->mShowTutorialIfAvailableRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/google/android/music/ShopTutorialController;->access$100(Lcom/google/android/music/ShopTutorialController;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 131
    return-void
.end method
