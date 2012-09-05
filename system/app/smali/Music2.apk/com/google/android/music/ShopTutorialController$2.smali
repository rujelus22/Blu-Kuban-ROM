.class Lcom/google/android/music/ShopTutorialController$2;
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
    .line 93
    iput-object p1, p0, Lcom/google/android/music/ShopTutorialController$2;->this$0:Lcom/google/android/music/ShopTutorialController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/android/music/ShopTutorialController$2;->this$0:Lcom/google/android/music/ShopTutorialController;

    #getter for: Lcom/google/android/music/ShopTutorialController;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;
    invoke-static {v0}, Lcom/google/android/music/ShopTutorialController;->access$400(Lcom/google/android/music/ShopTutorialController;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/jumper/MusicPreferences;->getStoreAvailable()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/google/android/music/ShopTutorialController$2;->this$0:Lcom/google/android/music/ShopTutorialController;

    #calls: Lcom/google/android/music/ShopTutorialController;->hasAudio()Z
    invoke-static {v0}, Lcom/google/android/music/ShopTutorialController;->access$500(Lcom/google/android/music/ShopTutorialController;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 101
    iget-object v0, p0, Lcom/google/android/music/ShopTutorialController$2;->this$0:Lcom/google/android/music/ShopTutorialController;

    iget-object v1, p0, Lcom/google/android/music/ShopTutorialController$2;->this$0:Lcom/google/android/music/ShopTutorialController;

    #calls: Lcom/google/android/music/ShopTutorialController;->hasStoreContent()Z
    invoke-static {v1}, Lcom/google/android/music/ShopTutorialController;->access$700(Lcom/google/android/music/ShopTutorialController;)Z

    move-result v1

    #setter for: Lcom/google/android/music/ShopTutorialController;->mHasStoreContent:Z
    invoke-static {v0, v1}, Lcom/google/android/music/ShopTutorialController;->access$602(Lcom/google/android/music/ShopTutorialController;Z)Z

    .line 102
    sget-object v0, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    iget-object v1, p0, Lcom/google/android/music/ShopTutorialController$2;->this$0:Lcom/google/android/music/ShopTutorialController;

    #getter for: Lcom/google/android/music/ShopTutorialController;->mLoadSavedTipFlagsRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/google/android/music/ShopTutorialController;->access$800(Lcom/google/android/music/ShopTutorialController;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/music/Worker;->post(Ljava/lang/Runnable;)Z

    .line 104
    :cond_2a
    return-void
.end method
