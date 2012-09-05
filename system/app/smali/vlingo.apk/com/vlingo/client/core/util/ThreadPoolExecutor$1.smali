.class Lcom/vlingo/client/core/util/ThreadPoolExecutor$1;
.super Ljava/util/TimerTask;
.source "ThreadPoolExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/core/util/ThreadPoolExecutor;->executeLater(Ljava/lang/Runnable;J)Lcom/vlingo/client/core/util/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/core/util/ThreadPoolExecutor;

.field final synthetic val$fut:Lcom/vlingo/client/core/util/Future;


# direct methods
.method constructor <init>(Lcom/vlingo/client/core/util/ThreadPoolExecutor;Lcom/vlingo/client/core/util/Future;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/vlingo/client/core/util/ThreadPoolExecutor$1;->this$0:Lcom/vlingo/client/core/util/ThreadPoolExecutor;

    iput-object p2, p0, Lcom/vlingo/client/core/util/ThreadPoolExecutor$1;->val$fut:Lcom/vlingo/client/core/util/Future;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 120
    iget-object v0, p0, Lcom/vlingo/client/core/util/ThreadPoolExecutor$1;->val$fut:Lcom/vlingo/client/core/util/Future;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vlingo/client/core/util/Future;->setScheduleTask(Ljava/util/TimerTask;)V

    .line 121
    iget-object v0, p0, Lcom/vlingo/client/core/util/ThreadPoolExecutor$1;->this$0:Lcom/vlingo/client/core/util/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/vlingo/client/core/util/ThreadPoolExecutor$1;->val$fut:Lcom/vlingo/client/core/util/Future;

    invoke-virtual {v1}, Lcom/vlingo/client/core/util/Future;->getRunnable()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vlingo/client/core/util/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)Lcom/vlingo/client/core/util/Future;

    .line 122
    return-void
.end method
