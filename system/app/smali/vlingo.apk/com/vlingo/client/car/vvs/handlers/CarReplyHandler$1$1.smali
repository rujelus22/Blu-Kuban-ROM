.class Lcom/vlingo/client/car/vvs/handlers/CarReplyHandler$1$1;
.super Ljava/lang/Object;
.source "CarReplyHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/car/vvs/handlers/CarReplyHandler$1;->onMessageContextAvailable(Lcom/vlingo/client/safereader/MessageContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vlingo/client/car/vvs/handlers/CarReplyHandler$1;

.field final synthetic val$context:Lcom/vlingo/client/safereader/MessageContext;


# direct methods
.method constructor <init>(Lcom/vlingo/client/car/vvs/handlers/CarReplyHandler$1;Lcom/vlingo/client/safereader/MessageContext;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/vlingo/client/car/vvs/handlers/CarReplyHandler$1$1;->this$1:Lcom/vlingo/client/car/vvs/handlers/CarReplyHandler$1;

    iput-object p2, p0, Lcom/vlingo/client/car/vvs/handlers/CarReplyHandler$1$1;->val$context:Lcom/vlingo/client/safereader/MessageContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 56
    iget-object v0, p0, Lcom/vlingo/client/car/vvs/handlers/CarReplyHandler$1$1;->this$1:Lcom/vlingo/client/car/vvs/handlers/CarReplyHandler$1;

    iget-object v0, v0, Lcom/vlingo/client/car/vvs/handlers/CarReplyHandler$1;->this$0:Lcom/vlingo/client/car/vvs/handlers/CarReplyHandler;

    iget-object v1, p0, Lcom/vlingo/client/car/vvs/handlers/CarReplyHandler$1$1;->val$context:Lcom/vlingo/client/safereader/MessageContext;

    iget-object v2, p0, Lcom/vlingo/client/car/vvs/handlers/CarReplyHandler$1$1;->this$1:Lcom/vlingo/client/car/vvs/handlers/CarReplyHandler$1;

    iget-object v2, v2, Lcom/vlingo/client/car/vvs/handlers/CarReplyHandler$1;->val$action:Lcom/vlingo/client/core/vlservice/response/Action;

    #calls: Lcom/vlingo/client/car/vvs/handlers/CarReplyHandler;->handleNewMessageContext(Lcom/vlingo/client/safereader/MessageContext;Lcom/vlingo/client/core/vlservice/response/Action;)V
    invoke-static {v0, v1, v2}, Lcom/vlingo/client/car/vvs/handlers/CarReplyHandler;->access$000(Lcom/vlingo/client/car/vvs/handlers/CarReplyHandler;Lcom/vlingo/client/safereader/MessageContext;Lcom/vlingo/client/core/vlservice/response/Action;)V

    .line 57
    return-void
.end method
