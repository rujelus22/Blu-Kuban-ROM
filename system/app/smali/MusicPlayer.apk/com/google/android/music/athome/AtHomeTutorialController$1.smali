.class Lcom/google/android/music/athome/AtHomeTutorialController$1;
.super Ljava/lang/Object;
.source "AtHomeTutorialController.java"

# interfaces
.implements Lcom/google/android/music/ClingTutorialView$ClingTutorialDismissListener;


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
    .line 79
    iput-object p1, p0, Lcom/google/android/music/athome/AtHomeTutorialController$1;->this$0:Lcom/google/android/music/athome/AtHomeTutorialController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClingTutorialDismissed()V
    .registers 3

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeTutorialController$1;->this$0:Lcom/google/android/music/athome/AtHomeTutorialController;

    const/4 v1, 0x1

    #setter for: Lcom/google/android/music/athome/AtHomeTutorialController;->mAtHomeTutorialViewed:Z
    invoke-static {v0, v1}, Lcom/google/android/music/athome/AtHomeTutorialController;->access$002(Lcom/google/android/music/athome/AtHomeTutorialController;Z)Z

    .line 85
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeTutorialController$1;->this$0:Lcom/google/android/music/athome/AtHomeTutorialController;

    invoke-virtual {v0}, Lcom/google/android/music/athome/AtHomeTutorialController;->showTutorialIfAvailable()V

    .line 86
    sget-object v0, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeTutorialController$1;->this$0:Lcom/google/android/music/athome/AtHomeTutorialController;

    #getter for: Lcom/google/android/music/athome/AtHomeTutorialController;->mSaveViewedRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/google/android/music/athome/AtHomeTutorialController;->access$100(Lcom/google/android/music/athome/AtHomeTutorialController;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/music/utils/async/AsyncWorkers;->runAsync(Lcom/google/android/music/Worker;Ljava/lang/Runnable;)V

    .line 87
    return-void
.end method
