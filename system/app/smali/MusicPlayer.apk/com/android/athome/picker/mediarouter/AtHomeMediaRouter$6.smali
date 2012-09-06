.class Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$6;
.super Ljava/lang/Object;
.source "AtHomeMediaRouter.java"

# interfaces
.implements Landroid/support/place/music/TungstenGroupingService$OnVersionCheck;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->checkTgsVersion(Landroid/support/place/connector/ConnectorInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

.field final synthetic val$tgs:Landroid/support/place/music/TungstenGroupingService;


# direct methods
.method constructor <init>(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;Landroid/support/place/music/TungstenGroupingService;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 765
    iput-object p1, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$6;->this$0:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    iput-object p2, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$6;->val$tgs:Landroid/support/place/music/TungstenGroupingService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVersionCheck(Landroid/support/place/music/TgsVersionCheck;)V
    .registers 5
    .parameter "check"

    .prologue
    .line 768
    iget-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$6;->this$0:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    const/4 v1, 0x0

    #setter for: Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mTgsBeingChecked:Landroid/support/place/connector/ConnectorInfo;
    invoke-static {v0, v1}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->access$002(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;Landroid/support/place/connector/ConnectorInfo;)Landroid/support/place/connector/ConnectorInfo;

    .line 769
    invoke-virtual {p1}, Landroid/support/place/music/TgsVersionCheck;->getCheckStatus()I

    move-result v0

    sget v1, Landroid/support/place/music/TgsVersionCheck;->CHECK_VERSION_STATUS_OK:I

    if-ne v0, v1, :cond_16

    .line 770
    iget-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$6;->this$0:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    iget-object v1, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$6;->val$tgs:Landroid/support/place/music/TungstenGroupingService;

    #calls: Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->setGroupingService(Landroid/support/place/music/TungstenGroupingService;)V
    invoke-static {v0, v1}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->access$2800(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;Landroid/support/place/music/TungstenGroupingService;)V

    .line 776
    :goto_15
    return-void

    .line 772
    :cond_16
    const-string v0, "AtHomeMediaRouter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incompatible TGS API version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15
.end method
