.class Lcom/vlingo/client/vvs/handlers/ReplyPageHandler$1;
.super Ljava/lang/Object;
.source "ReplyPageHandler.java"

# interfaces
.implements Lcom/vlingo/client/safereader/SafeReaderAPI$MessageContextReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/vvs/handlers/ReplyPageHandler;->execute(Lcom/vlingo/client/core/vlservice/response/Action;Lcom/vlingo/client/vvs/VVSDispatcher;)Landroid/content/Intent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/vvs/handlers/ReplyPageHandler;


# direct methods
.method constructor <init>(Lcom/vlingo/client/vvs/handlers/ReplyPageHandler;)V
    .registers 2
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/vlingo/client/vvs/handlers/ReplyPageHandler$1;->this$0:Lcom/vlingo/client/vvs/handlers/ReplyPageHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageContextAvailable(Lcom/vlingo/client/safereader/MessageContext;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 50
    iget-object v1, p0, Lcom/vlingo/client/vvs/handlers/ReplyPageHandler$1;->this$0:Lcom/vlingo/client/vvs/handlers/ReplyPageHandler;

    monitor-enter v1

    .line 51
    :try_start_3
    iget-object v0, p0, Lcom/vlingo/client/vvs/handlers/ReplyPageHandler$1;->this$0:Lcom/vlingo/client/vvs/handlers/ReplyPageHandler;

    #setter for: Lcom/vlingo/client/vvs/handlers/ReplyPageHandler;->messageContext:Lcom/vlingo/client/safereader/MessageContext;
    invoke-static {v0, p1}, Lcom/vlingo/client/vvs/handlers/ReplyPageHandler;->access$002(Lcom/vlingo/client/vvs/handlers/ReplyPageHandler;Lcom/vlingo/client/safereader/MessageContext;)Lcom/vlingo/client/safereader/MessageContext;

    .line 52
    monitor-exit v1

    .line 53
    return-void

    .line 52
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method
