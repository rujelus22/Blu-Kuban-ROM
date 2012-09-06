.class Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$ProcessTgsStateRunnable;
.super Ljava/lang/Object;
.source "AtHomeMediaRouter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProcessTgsStateRunnable"
.end annotation


# instance fields
.field private mNewState:Landroid/support/place/music/TgsState;

.field final synthetic this$0:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;


# direct methods
.method constructor <init>(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;Landroid/support/place/music/TgsState;)V
    .registers 3
    .parameter
    .parameter "newState"

    .prologue
    .line 933
    iput-object p1, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$ProcessTgsStateRunnable;->this$0:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 934
    iput-object p2, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$ProcessTgsStateRunnable;->mNewState:Landroid/support/place/music/TgsState;

    .line 935
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 939
    iget-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$ProcessTgsStateRunnable;->this$0:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    #calls: Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->useGroupingService()Z
    invoke-static {v0}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->access$3500(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 940
    iget-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$ProcessTgsStateRunnable;->this$0:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    iget-object v1, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$ProcessTgsStateRunnable;->mNewState:Landroid/support/place/music/TgsState;

    #calls: Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->processGroupAndReceiverList(Landroid/support/place/music/TgsState;)V
    invoke-static {v0, v1}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->access$3600(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;Landroid/support/place/music/TgsState;)V

    .line 944
    :goto_f
    return-void

    .line 942
    :cond_10
    iget-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$ProcessTgsStateRunnable;->this$0:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    iget-object v1, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$ProcessTgsStateRunnable;->mNewState:Landroid/support/place/music/TgsState;

    #calls: Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->addRxServiceConnector(Landroid/support/place/music/TgsState;)V
    invoke-static {v0, v1}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->access$3700(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;Landroid/support/place/music/TgsState;)V

    goto :goto_f
.end method
