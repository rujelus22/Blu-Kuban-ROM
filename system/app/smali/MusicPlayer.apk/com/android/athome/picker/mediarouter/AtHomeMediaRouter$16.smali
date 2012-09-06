.class Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$16;
.super Ljava/lang/Object;
.source "AtHomeMediaRouter.java"

# interfaces
.implements Landroid/support/place/music/TungstenGroupingService$OnGetGroupState;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->getLatestTgsState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;


# direct methods
.method constructor <init>(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;)V
    .registers 2
    .parameter

    .prologue
    .line 1485
    iput-object p1, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$16;->this$0:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetGroupState(Landroid/support/place/music/TgsState;)V
    .registers 6
    .parameter "state"

    .prologue
    .line 1488
    move-object v0, p1

    .line 1489
    .local v0, newState:Landroid/support/place/music/TgsState;
    iget-object v1, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$16;->this$0:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    #getter for: Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->access$3000(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$ProcessTgsStateRunnable;

    iget-object v3, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$16;->this$0:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    invoke-direct {v2, v3, p1}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$ProcessTgsStateRunnable;-><init>(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;Landroid/support/place/music/TgsState;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1490
    return-void
.end method
