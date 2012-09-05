.class Lcom/cooliris/media/RenderView$2;
.super Ljava/lang/Thread;
.source "RenderView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cooliris/media/RenderView;->refreshThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cooliris/media/RenderView;


# direct methods
.method constructor <init>(Lcom/cooliris/media/RenderView;)V
    .registers 2
    .parameter

    .prologue
    .line 1315
    iput-object p1, p0, Lcom/cooliris/media/RenderView$2;->this$0:Lcom/cooliris/media/RenderView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    .line 1320
    :goto_0
    const-wide/16 v7, 0xbb8

    :try_start_2
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_5} :catch_17

    .line 1324
    iget-object v7, p0, Lcom/cooliris/media/RenderView$2;->this$0:Lcom/cooliris/media/RenderView;

    #getter for: Lcom/cooliris/media/RenderView;->mPause:Z
    invoke-static {v7}, Lcom/cooliris/media/RenderView;->access$000(Lcom/cooliris/media/RenderView;)Z

    move-result v7

    if-eqz v7, :cond_19

    .line 1325
    invoke-virtual {p0}, Lcom/cooliris/media/RenderView$2;->interrupt()V

    .line 1326
    iget-object v7, p0, Lcom/cooliris/media/RenderView$2;->this$0:Lcom/cooliris/media/RenderView;

    const/4 v8, 0x0

    #setter for: Lcom/cooliris/media/RenderView;->mRefreshThread:Ljava/lang/Thread;
    invoke-static {v7, v8}, Lcom/cooliris/media/RenderView;->access$1002(Lcom/cooliris/media/RenderView;Ljava/lang/Thread;)Ljava/lang/Thread;

    goto :goto_0

    .line 1321
    :catch_17
    move-exception v2

    .line 1340
    .local v2, e:Ljava/lang/InterruptedException;
    return-void

    .line 1329
    .end local v2           #e:Ljava/lang/InterruptedException;
    :cond_19
    iget-object v7, p0, Lcom/cooliris/media/RenderView$2;->this$0:Lcom/cooliris/media/RenderView;

    #getter for: Lcom/cooliris/media/RenderView;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/cooliris/media/RenderView;->access$1100(Lcom/cooliris/media/RenderView;)Landroid/content/Context;

    move-result-object v7

    check-cast v7, Lcom/cooliris/media/Gallery;

    invoke-virtual {v7}, Lcom/cooliris/media/Gallery;->getGridLayer()Lcom/cooliris/media/GridLayer;

    move-result-object v4

    .line 1330
    .local v4, mLayer:Lcom/cooliris/media/GridLayer;
    if-eqz v4, :cond_45

    .line 1331
    invoke-virtual {v4}, Lcom/cooliris/media/GridLayer;->getGridInputProcessor()Lcom/cooliris/media/GridInputProcessor;

    move-result-object v3

    .line 1332
    .local v3, mInputProcess:Lcom/cooliris/media/GridInputProcessor;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 1333
    .local v5, timestamp:J
    invoke-virtual {v3}, Lcom/cooliris/media/GridInputProcessor;->getPrevTouchTime()J

    move-result-wide v7

    sub-long v0, v5, v7

    .line 1334
    .local v0, delta:J
    const-wide/16 v7, 0x7d0

    cmp-long v7, v0, v7

    if-lez v7, :cond_45

    invoke-virtual {v4}, Lcom/cooliris/media/GridLayer;->getState()I

    move-result v7

    if-nez v7, :cond_45

    .line 1335
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Lcom/cooliris/media/GridInputProcessor;->constrainCamera(Z)V

    .line 1338
    .end local v0           #delta:J
    .end local v3           #mInputProcess:Lcom/cooliris/media/GridInputProcessor;
    .end local v5           #timestamp:J
    :cond_45
    iget-object v7, p0, Lcom/cooliris/media/RenderView$2;->this$0:Lcom/cooliris/media/RenderView;

    invoke-virtual {v7}, Lcom/cooliris/media/RenderView;->requestRender()V

    goto :goto_0
.end method
