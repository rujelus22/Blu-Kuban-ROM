.class Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$12$1;
.super Ljava/lang/Object;
.source "AtHomeMediaRouter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$12;->onVolumeChanged(Ljava/util/List;Landroid/support/place/rpc/RpcContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$12;

.field final synthetic val$volumes:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$12;Ljava/util/List;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 914
    iput-object p1, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$12$1;->this$1:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$12;

    iput-object p2, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$12$1;->val$volumes:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 917
    iget-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$12$1;->this$1:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$12;

    iget-object v0, v0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$12;->this$0:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    #getter for: Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mIgnoreTgsVolumeUpdates:Z
    invoke-static {v0}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->access$2200(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 918
    iget-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$12$1;->this$1:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$12;

    iget-object v0, v0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$12;->this$0:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    iget-object v1, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$12$1;->val$volumes:Ljava/util/List;

    #calls: Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->processRxVolumes(Ljava/util/List;)V
    invoke-static {v0, v1}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->access$3100(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;Ljava/util/List;)V

    .line 921
    iget-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$12$1;->this$1:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$12;

    iget-object v0, v0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$12;->this$0:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    #getter for: Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mCanSendVolumeAdjustmentRpc:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->access$3200(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 923
    iget-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$12$1;->this$1:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$12;

    iget-object v0, v0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$12;->this$0:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    iget-object v1, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$12$1;->this$1:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$12;

    iget-object v1, v1, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$12;->this$0:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    #getter for: Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mVolumeHardkeyDelta:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v1}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->access$3300(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v1

    #calls: Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->adjustGroupVolume(I)V
    invoke-static {v0, v1}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->access$3400(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;I)V

    .line 925
    :cond_33
    return-void
.end method
