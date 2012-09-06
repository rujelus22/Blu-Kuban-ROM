.class Lcom/google/android/music/athome/AtHomeTutorialController$2;
.super Ljava/lang/Object;
.source "AtHomeTutorialController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/athome/AtHomeTutorialController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/athome/AtHomeTutorialController;


# direct methods
.method constructor <init>(Lcom/google/android/music/athome/AtHomeTutorialController;)V
    .registers 2
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/google/android/music/athome/AtHomeTutorialController$2;->this$0:Lcom/google/android/music/athome/AtHomeTutorialController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 92
    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeTutorialController$2;->this$0:Lcom/google/android/music/athome/AtHomeTutorialController;

    #getter for: Lcom/google/android/music/athome/AtHomeTutorialController;->mContext:Landroid/app/Activity;
    invoke-static {v1}, Lcom/google/android/music/athome/AtHomeTutorialController;->access$200(Lcom/google/android/music/athome/AtHomeTutorialController;)Landroid/app/Activity;

    move-result-object v1

    const-string v2, "atHomeTutorial.pref"

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 94
    .local v0, sharedPreferences:Landroid/content/SharedPreferences;
    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeTutorialController$2;->this$0:Lcom/google/android/music/athome/AtHomeTutorialController;

    const-string v2, "viewed"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    #setter for: Lcom/google/android/music/athome/AtHomeTutorialController;->mAtHomeTutorialViewed:Z
    invoke-static {v1, v2}, Lcom/google/android/music/athome/AtHomeTutorialController;->access$002(Lcom/google/android/music/athome/AtHomeTutorialController;Z)Z

    .line 96
    invoke-static {}, Lcom/google/android/music/athome/AtHomeTutorialController;->access$300()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 97
    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeTutorialController$2;->this$0:Lcom/google/android/music/athome/AtHomeTutorialController;

    #setter for: Lcom/google/android/music/athome/AtHomeTutorialController;->mAtHomeTutorialViewed:Z
    invoke-static {v1, v3}, Lcom/google/android/music/athome/AtHomeTutorialController;->access$002(Lcom/google/android/music/athome/AtHomeTutorialController;Z)Z

    .line 98
    invoke-static {v3}, Lcom/google/android/music/athome/AtHomeTutorialController;->access$302(Z)Z

    .line 99
    sget-object v1, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    iget-object v2, p0, Lcom/google/android/music/athome/AtHomeTutorialController$2;->this$0:Lcom/google/android/music/athome/AtHomeTutorialController;

    #getter for: Lcom/google/android/music/athome/AtHomeTutorialController;->mSaveViewedRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/google/android/music/athome/AtHomeTutorialController;->access$100(Lcom/google/android/music/athome/AtHomeTutorialController;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/music/Worker;->post(Ljava/lang/Runnable;)Z

    .line 102
    :cond_31
    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeTutorialController$2;->this$0:Lcom/google/android/music/athome/AtHomeTutorialController;

    const/4 v2, 0x1

    #setter for: Lcom/google/android/music/athome/AtHomeTutorialController;->mLoadedFromPreferences:Z
    invoke-static {v1, v2}, Lcom/google/android/music/athome/AtHomeTutorialController;->access$402(Lcom/google/android/music/athome/AtHomeTutorialController;Z)Z

    .line 104
    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeTutorialController$2;->this$0:Lcom/google/android/music/athome/AtHomeTutorialController;

    #getter for: Lcom/google/android/music/athome/AtHomeTutorialController;->mContext:Landroid/app/Activity;
    invoke-static {v1}, Lcom/google/android/music/athome/AtHomeTutorialController;->access$200(Lcom/google/android/music/athome/AtHomeTutorialController;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/athome/AtHomeTutorialController$2;->this$0:Lcom/google/android/music/athome/AtHomeTutorialController;

    #getter for: Lcom/google/android/music/athome/AtHomeTutorialController;->mShowTutorialIfAvailableRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/google/android/music/athome/AtHomeTutorialController;->access$500(Lcom/google/android/music/athome/AtHomeTutorialController;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 105
    return-void
.end method
