.class Lcom/samsung/upnp/ControlPoint$2;
.super Ljava/lang/Object;
.source "ControlPoint.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/upnp/ControlPoint;->start()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/upnp/ControlPoint;


# direct methods
.method constructor <init>(Lcom/samsung/upnp/ControlPoint;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/upnp/ControlPoint$2;->this$0:Lcom/samsung/upnp/ControlPoint;

    .line 1229
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1233
    iget-object v0, p0, Lcom/samsung/upnp/ControlPoint$2;->this$0:Lcom/samsung/upnp/ControlPoint;

    new-instance v1, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v1, v0, Lcom/samsung/upnp/ControlPoint;->mQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 1234
    iget-object v0, p0, Lcom/samsung/upnp/ControlPoint$2;->this$0:Lcom/samsung/upnp/ControlPoint;

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/upnp/ControlPoint;->mExeutor:Ljava/util/concurrent/ExecutorService;

    .line 1235
    return-void
.end method
