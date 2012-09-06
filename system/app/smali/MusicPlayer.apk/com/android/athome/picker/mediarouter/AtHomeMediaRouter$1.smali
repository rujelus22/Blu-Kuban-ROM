.class Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$1;
.super Ljava/lang/Object;
.source "AtHomeMediaRouter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;
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
    .line 118
    iput-object p1, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$1;->this$0:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$1;->this$0:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    #getter for: Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mTgsBeingChecked:Landroid/support/place/connector/ConnectorInfo;
    invoke-static {v0}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->access$000(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;)Landroid/support/place/connector/ConnectorInfo;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 122
    iget-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$1;->this$0:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    iget-object v1, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$1;->this$0:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    #getter for: Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mTgsBeingChecked:Landroid/support/place/connector/ConnectorInfo;
    invoke-static {v1}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->access$000(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;)Landroid/support/place/connector/ConnectorInfo;

    move-result-object v1

    #calls: Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->checkTgsVersion(Landroid/support/place/connector/ConnectorInfo;)V
    invoke-static {v0, v1}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->access$100(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;Landroid/support/place/connector/ConnectorInfo;)V

    .line 124
    :cond_13
    return-void
.end method
