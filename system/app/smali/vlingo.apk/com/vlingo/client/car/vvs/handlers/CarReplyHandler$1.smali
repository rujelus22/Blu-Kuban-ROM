.class Lcom/vlingo/client/car/vvs/handlers/CarReplyHandler$1;
.super Ljava/lang/Object;
.source "CarReplyHandler.java"

# interfaces
.implements Lcom/vlingo/client/safereader/SafeReaderAPI$MessageContextReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/car/vvs/handlers/CarReplyHandler;->handleAction(Lcom/vlingo/client/core/vlservice/response/Action;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/car/vvs/handlers/CarReplyHandler;

.field final synthetic val$action:Lcom/vlingo/client/core/vlservice/response/Action;


# direct methods
.method constructor <init>(Lcom/vlingo/client/car/vvs/handlers/CarReplyHandler;Lcom/vlingo/client/core/vlservice/response/Action;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/vlingo/client/car/vvs/handlers/CarReplyHandler$1;->this$0:Lcom/vlingo/client/car/vvs/handlers/CarReplyHandler;

    iput-object p2, p0, Lcom/vlingo/client/car/vvs/handlers/CarReplyHandler$1;->val$action:Lcom/vlingo/client/core/vlservice/response/Action;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageContextAvailable(Lcom/vlingo/client/safereader/MessageContext;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 54
    new-instance v0, Lcom/vlingo/client/car/vvs/handlers/CarReplyHandler$1$1;

    invoke-direct {v0, p0, p1}, Lcom/vlingo/client/car/vvs/handlers/CarReplyHandler$1$1;-><init>(Lcom/vlingo/client/car/vvs/handlers/CarReplyHandler$1;Lcom/vlingo/client/safereader/MessageContext;)V

    invoke-static {v0}, Lcom/vlingo/client/util/ActivityUtil;->scheduleOnMainThread(Ljava/lang/Runnable;)V

    .line 59
    return-void
.end method
