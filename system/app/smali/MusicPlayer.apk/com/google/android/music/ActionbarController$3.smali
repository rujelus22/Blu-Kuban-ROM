.class Lcom/google/android/music/ActionbarController$3;
.super Ljava/lang/Object;
.source "ActionbarController.java"

# interfaces
.implements Landroid/content/SyncStatusObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/ActionbarController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/ActionbarController;


# direct methods
.method constructor <init>(Lcom/google/android/music/ActionbarController;)V
    .registers 2
    .parameter

    .prologue
    .line 293
    iput-object p1, p0, Lcom/google/android/music/ActionbarController$3;->this$0:Lcom/google/android/music/ActionbarController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusChanged(I)V
    .registers 4
    .parameter "which"

    .prologue
    .line 295
    sget-object v0, Lcom/google/android/music/utils/async/AsyncWorkers;->sUIBackgroundWorker:Lcom/google/android/music/Worker;

    iget-object v1, p0, Lcom/google/android/music/ActionbarController$3;->this$0:Lcom/google/android/music/ActionbarController;

    #getter for: Lcom/google/android/music/ActionbarController;->mUpdateSyncStatusRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/google/android/music/ActionbarController;->access$200(Lcom/google/android/music/ActionbarController;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/music/utils/async/AsyncWorkers;->runAsync(Lcom/google/android/music/Worker;Ljava/lang/Runnable;)V

    .line 296
    return-void
.end method
