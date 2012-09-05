.class Lcom/sec/android/app/dlna/playback/VirtualRenderer$PositionThread;
.super Ljava/lang/Object;
.source "VirtualRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dlna/playback/VirtualRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PositionThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dlna/playback/VirtualRenderer;

.field thisThread:Ljava/lang/Thread;

.field time:I


# direct methods
.method private constructor <init>(Lcom/sec/android/app/dlna/playback/VirtualRenderer;)V
    .registers 3
    .parameter

    .prologue
    .line 395
    iput-object p1, p0, Lcom/sec/android/app/dlna/playback/VirtualRenderer$PositionThread;->this$0:Lcom/sec/android/app/dlna/playback/VirtualRenderer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 396
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/dlna/playback/VirtualRenderer$PositionThread;->thisThread:Ljava/lang/Thread;

    .line 398
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/sec/android/app/dlna/playback/VirtualRenderer$PositionThread;->time:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/dlna/playback/VirtualRenderer;Lcom/sec/android/app/dlna/playback/VirtualRenderer$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 395
    invoke-direct {p0, p1}, Lcom/sec/android/app/dlna/playback/VirtualRenderer$PositionThread;-><init>(Lcom/sec/android/app/dlna/playback/VirtualRenderer;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v5, 0x2

    .line 401
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/dlna/playback/VirtualRenderer$PositionThread;->thisThread:Ljava/lang/Thread;

    .line 403
    :goto_7
    iget-object v3, p0, Lcom/sec/android/app/dlna/playback/VirtualRenderer$PositionThread;->this$0:Lcom/sec/android/app/dlna/playback/VirtualRenderer;

    iget-object v3, v3, Lcom/sec/android/app/dlna/playback/VirtualRenderer;->positionThread:Ljava/lang/Thread;

    iget-object v4, p0, Lcom/sec/android/app/dlna/playback/VirtualRenderer$PositionThread;->thisThread:Ljava/lang/Thread;

    if-ne v3, v4, :cond_68

    .line 406
    const/4 v2, -0x1

    .line 408
    .local v2, temp:I
    :try_start_10
    iget-object v3, p0, Lcom/sec/android/app/dlna/playback/VirtualRenderer$PositionThread;->this$0:Lcom/sec/android/app/dlna/playback/VirtualRenderer;

    iget-object v3, v3, Lcom/sec/android/app/dlna/playback/VirtualRenderer;->currentState:Lcom/sec/android/app/dlna/playback/IRenderer;

    invoke-interface {v3}, Lcom/sec/android/app/dlna/playback/IRenderer;->getPosition()I
    :try_end_17
    .catch Ljava/lang/NullPointerException; {:try_start_10 .. :try_end_17} :catch_67

    move-result v2

    .line 412
    const/4 v3, -0x1

    if-ne v2, v3, :cond_44

    iget-object v3, p0, Lcom/sec/android/app/dlna/playback/VirtualRenderer$PositionThread;->this$0:Lcom/sec/android/app/dlna/playback/VirtualRenderer;

    iget-object v3, v3, Lcom/sec/android/app/dlna/playback/VirtualRenderer;->currentState:Lcom/sec/android/app/dlna/playback/IRenderer;

    invoke-interface {v3}, Lcom/sec/android/app/dlna/playback/IRenderer;->getState()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/dlna/playback/VirtualRenderer$PositionThread;->this$0:Lcom/sec/android/app/dlna/playback/VirtualRenderer;

    iget-object v4, v4, Lcom/sec/android/app/dlna/playback/VirtualRenderer;->currentState:Lcom/sec/android/app/dlna/playback/IRenderer;

    if-eq v3, v5, :cond_44

    iget-object v3, p0, Lcom/sec/android/app/dlna/playback/VirtualRenderer$PositionThread;->this$0:Lcom/sec/android/app/dlna/playback/VirtualRenderer;

    iget-object v3, v3, Lcom/sec/android/app/dlna/playback/VirtualRenderer;->currentState:Lcom/sec/android/app/dlna/playback/IRenderer;

    invoke-interface {v3}, Lcom/sec/android/app/dlna/playback/IRenderer;->getState()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/dlna/playback/VirtualRenderer$PositionThread;->this$0:Lcom/sec/android/app/dlna/playback/VirtualRenderer;

    iget-object v4, v4, Lcom/sec/android/app/dlna/playback/VirtualRenderer;->currentState:Lcom/sec/android/app/dlna/playback/IRenderer;

    if-eqz v3, :cond_44

    .line 413
    new-instance v1, Lcom/samsung/api/DMCAPIException;

    const/4 v3, 0x6

    invoke-direct {v1, v3}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    .line 414
    .local v1, error:Lcom/samsung/api/DMCAPIException;
    iget-object v3, p0, Lcom/sec/android/app/dlna/playback/VirtualRenderer$PositionThread;->this$0:Lcom/sec/android/app/dlna/playback/VirtualRenderer;

    const/16 v4, 0x65

    invoke-virtual {v3, v4, v1}, Lcom/sec/android/app/dlna/playback/VirtualRenderer;->notifyResultToListener(ILcom/samsung/api/DMCAPIException;)V

    .line 417
    .end local v1           #error:Lcom/samsung/api/DMCAPIException;
    :cond_44
    if-ltz v2, :cond_5b

    .line 418
    iget-object v3, p0, Lcom/sec/android/app/dlna/playback/VirtualRenderer$PositionThread;->this$0:Lcom/sec/android/app/dlna/playback/VirtualRenderer;

    #getter for: Lcom/sec/android/app/dlna/playback/VirtualRenderer;->renderPropertyChangedListener:Lcom/sec/android/app/dlna/playback/RendererPropertyChangedListener;
    invoke-static {v3}, Lcom/sec/android/app/dlna/playback/VirtualRenderer;->access$300(Lcom/sec/android/app/dlna/playback/VirtualRenderer;)Lcom/sec/android/app/dlna/playback/RendererPropertyChangedListener;

    move-result-object v3

    if-eqz v3, :cond_57

    .line 419
    iget-object v3, p0, Lcom/sec/android/app/dlna/playback/VirtualRenderer$PositionThread;->this$0:Lcom/sec/android/app/dlna/playback/VirtualRenderer;

    #getter for: Lcom/sec/android/app/dlna/playback/VirtualRenderer;->renderPropertyChangedListener:Lcom/sec/android/app/dlna/playback/RendererPropertyChangedListener;
    invoke-static {v3}, Lcom/sec/android/app/dlna/playback/VirtualRenderer;->access$300(Lcom/sec/android/app/dlna/playback/VirtualRenderer;)Lcom/sec/android/app/dlna/playback/RendererPropertyChangedListener;

    move-result-object v3

    invoke-interface {v3, v5}, Lcom/sec/android/app/dlna/playback/RendererPropertyChangedListener;->notifyRendererPropertyChangedEvent(I)V

    .line 421
    :cond_57
    iget-object v3, p0, Lcom/sec/android/app/dlna/playback/VirtualRenderer$PositionThread;->this$0:Lcom/sec/android/app/dlna/playback/VirtualRenderer;

    iput v2, v3, Lcom/sec/android/app/dlna/playback/VirtualRenderer;->currentPosition:I

    .line 424
    :cond_5b
    :try_start_5b
    iget v3, p0, Lcom/sec/android/app/dlna/playback/VirtualRenderer$PositionThread;->time:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_61
    .catch Ljava/lang/InterruptedException; {:try_start_5b .. :try_end_61} :catch_62

    goto :goto_7

    .line 425
    :catch_62
    move-exception v0

    .line 426
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_7

    .line 409
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_67
    move-exception v0

    .line 429
    .end local v2           #temp:I
    :cond_68
    return-void
.end method
