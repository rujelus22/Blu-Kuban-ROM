.class Lcom/googlex/masf/MultiplexedHttpConnection$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/googlex/common/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/googlex/masf/MultiplexedHttpConnection;->submitRequestAndWaitForCompletion()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/googlex/masf/MultiplexedHttpConnection;

.field final synthetic val$mutex:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/googlex/masf/MultiplexedHttpConnection;Ljava/lang/Object;)V
    .registers 3

    iput-object p1, p0, Lcom/googlex/masf/MultiplexedHttpConnection$1;->this$0:Lcom/googlex/masf/MultiplexedHttpConnection;

    iput-object p2, p0, Lcom/googlex/masf/MultiplexedHttpConnection$1;->val$mutex:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Lcom/googlex/common/util/Observable;Ljava/lang/Object;)V
    .registers 5

    iget-object v1, p0, Lcom/googlex/masf/MultiplexedHttpConnection$1;->val$mutex:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/googlex/masf/MultiplexedHttpConnection$1;->val$mutex:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method
