.class Lcom/google/android/music/ShopTutorialController$5;
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
    .line 148
    iput-object p1, p0, Lcom/google/android/music/ShopTutorialController$5;->this$0:Lcom/google/android/music/ShopTutorialController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 150
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_16

    .line 151
    const-string v1, "ShopTutorial"

    const-string v2, "mShowAvailableBannersRunnable should only happen on the main thread"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 154
    :cond_16
    iget-object v1, p0, Lcom/google/android/music/ShopTutorialController$5;->this$0:Lcom/google/android/music/ShopTutorialController;

    #getter for: Lcom/google/android/music/ShopTutorialController;->mLoadedFromPreferences:Z
    invoke-static {v1}, Lcom/google/android/music/ShopTutorialController;->access$1000(Lcom/google/android/music/ShopTutorialController;)Z

    move-result v1

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/google/android/music/ShopTutorialController$5;->this$0:Lcom/google/android/music/ShopTutorialController;

    #getter for: Lcom/google/android/music/ShopTutorialController;->mShopTutorialView:Lcom/google/android/music/ShopTutorialView;
    invoke-static {v1}, Lcom/google/android/music/ShopTutorialController;->access$1200(Lcom/google/android/music/ShopTutorialController;)Lcom/google/android/music/ShopTutorialView;

    move-result-object v1

    if-nez v1, :cond_27

    .line 183
    :cond_26
    :goto_26
    return-void

    .line 158
    :cond_27
    const/16 v0, 0x8

    .line 159
    .local v0, visibility:I
    iget-object v1, p0, Lcom/google/android/music/ShopTutorialController$5;->this$0:Lcom/google/android/music/ShopTutorialController;

    #getter for: Lcom/google/android/music/ShopTutorialController;->mShopIcon:Landroid/view/View;
    invoke-static {v1}, Lcom/google/android/music/ShopTutorialController;->access$1300(Lcom/google/android/music/ShopTutorialController;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_5e

    iget-object v1, p0, Lcom/google/android/music/ShopTutorialController$5;->this$0:Lcom/google/android/music/ShopTutorialController;

    #getter for: Lcom/google/android/music/ShopTutorialController;->mShopIcon:Landroid/view/View;
    invoke-static {v1}, Lcom/google/android/music/ShopTutorialController;->access$1300(Lcom/google/android/music/ShopTutorialController;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_5e

    iget-object v1, p0, Lcom/google/android/music/ShopTutorialController$5;->this$0:Lcom/google/android/music/ShopTutorialController;

    #getter for: Lcom/google/android/music/ShopTutorialController;->mStaticConfigAllowShopTutorial:Z
    invoke-static {v1}, Lcom/google/android/music/ShopTutorialController;->access$1100(Lcom/google/android/music/ShopTutorialController;)Z

    move-result v1

    if-eqz v1, :cond_5e

    iget-object v1, p0, Lcom/google/android/music/ShopTutorialController$5;->this$0:Lcom/google/android/music/ShopTutorialController;

    #getter for: Lcom/google/android/music/ShopTutorialController;->mLayoutConfigAllowShopTutorial:Z
    invoke-static {v1}, Lcom/google/android/music/ShopTutorialController;->access$1400(Lcom/google/android/music/ShopTutorialController;)Z

    move-result v1

    if-eqz v1, :cond_5e

    iget-object v1, p0, Lcom/google/android/music/ShopTutorialController$5;->this$0:Lcom/google/android/music/ShopTutorialController;

    #getter for: Lcom/google/android/music/ShopTutorialController;->mHasStoreContent:Z
    invoke-static {v1}, Lcom/google/android/music/ShopTutorialController;->access$600(Lcom/google/android/music/ShopTutorialController;)Z

    move-result v1

    if-nez v1, :cond_5e

    iget-object v1, p0, Lcom/google/android/music/ShopTutorialController$5;->this$0:Lcom/google/android/music/ShopTutorialController;

    #getter for: Lcom/google/android/music/ShopTutorialController;->mShopTutorialViewed:Z
    invoke-static {v1}, Lcom/google/android/music/ShopTutorialController;->access$000(Lcom/google/android/music/ShopTutorialController;)Z

    move-result v1

    if-nez v1, :cond_5e

    .line 165
    const/4 v0, 0x0

    .line 182
    :cond_5e
    iget-object v1, p0, Lcom/google/android/music/ShopTutorialController$5;->this$0:Lcom/google/android/music/ShopTutorialController;

    #getter for: Lcom/google/android/music/ShopTutorialController;->mShopTutorialView:Lcom/google/android/music/ShopTutorialView;
    invoke-static {v1}, Lcom/google/android/music/ShopTutorialController;->access$1200(Lcom/google/android/music/ShopTutorialController;)Lcom/google/android/music/ShopTutorialView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/music/ShopTutorialView;->setVisibility(I)V

    goto :goto_26
.end method
