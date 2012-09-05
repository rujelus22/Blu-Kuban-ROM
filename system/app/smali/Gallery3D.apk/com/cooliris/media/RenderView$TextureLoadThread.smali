.class final Lcom/cooliris/media/RenderView$TextureLoadThread;
.super Ljava/lang/Thread;
.source "RenderView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cooliris/media/RenderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TextureLoadThread"
.end annotation


# instance fields
.field public mIsLoading:Z

.field final synthetic this$0:Lcom/cooliris/media/RenderView;


# direct methods
.method public constructor <init>(Lcom/cooliris/media/RenderView;)V
    .registers 3
    .parameter

    .prologue
    .line 1244
    iput-object p1, p0, Lcom/cooliris/media/RenderView$TextureLoadThread;->this$0:Lcom/cooliris/media/RenderView;

    .line 1245
    const-string v0, "TextureLoad"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 1246
    return-void
.end method

.method private load(Lcom/cooliris/media/Texture;)V
    .registers 3
    .parameter "texture"

    .prologue
    .line 1281
    iget-object v0, p0, Lcom/cooliris/media/RenderView$TextureLoadThread;->this$0:Lcom/cooliris/media/RenderView;

    .line 1282
    .local v0, view:Lcom/cooliris/media/RenderView;
    #calls: Lcom/cooliris/media/RenderView;->loadTextureAsync(Lcom/cooliris/media/Texture;)V
    invoke-static {v0, p1}, Lcom/cooliris/media/RenderView;->access$900(Lcom/cooliris/media/RenderView;Lcom/cooliris/media/Texture;)V

    .line 1283
    invoke-virtual {v0}, Lcom/cooliris/media/RenderView;->requestRender()V

    .line 1284
    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 1250
    const/16 v4, 0xa

    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1251
    invoke-static {}, Lcom/cooliris/media/RenderView;->access$300()Lcom/cooliris/media/RenderView$TextureLoadThread;

    move-result-object v4

    if-ne v4, p0, :cond_28

    invoke-static {}, Lcom/cooliris/media/RenderView;->access$400()Lcom/cooliris/media/Deque;

    move-result-object v1

    .line 1253
    .local v1, inputQueue:Lcom/cooliris/media/Deque;,"Lcom/cooliris/media/Deque<Lcom/cooliris/media/Texture;>;"
    :goto_f
    invoke-static {}, Lcom/cooliris/media/RenderView;->access$800()Lcom/cooliris/media/Deque;

    move-result-object v2

    .line 1257
    .local v2, outputQueue:Lcom/cooliris/media/Deque;,"Lcom/cooliris/media/Deque<Lcom/cooliris/media/Texture;>;"
    :goto_13
    const/4 v3, 0x0

    .line 1258
    .local v3, texture:Lcom/cooliris/media/Texture;
    :try_start_14
    monitor-enter v1
    :try_end_15
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_15} :catch_26

    .line 1259
    :goto_15
    :try_start_15
    invoke-virtual {v1}, Lcom/cooliris/media/Deque;->pollFirst()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/cooliris/media/Texture;

    move-object v3, v0

    if-nez v3, :cond_38

    .line 1260
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    goto :goto_15

    .line 1262
    :catchall_23
    move-exception v4

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_15 .. :try_end_25} :catchall_23

    :try_start_25
    throw v4
    :try_end_26
    .catch Ljava/lang/InterruptedException; {:try_start_25 .. :try_end_26} :catch_26

    .line 1274
    :catch_26
    move-exception v4

    .line 1277
    return-void

    .line 1251
    .end local v1           #inputQueue:Lcom/cooliris/media/Deque;,"Lcom/cooliris/media/Deque<Lcom/cooliris/media/Texture;>;"
    .end local v2           #outputQueue:Lcom/cooliris/media/Deque;,"Lcom/cooliris/media/Deque<Lcom/cooliris/media/Texture;>;"
    .end local v3           #texture:Lcom/cooliris/media/Texture;
    :cond_28
    invoke-static {}, Lcom/cooliris/media/RenderView;->access$500()Lcom/cooliris/media/RenderView$TextureLoadThread;

    move-result-object v4

    if-ne v4, p0, :cond_33

    invoke-static {}, Lcom/cooliris/media/RenderView;->access$600()Lcom/cooliris/media/Deque;

    move-result-object v1

    goto :goto_f

    :cond_33
    invoke-static {}, Lcom/cooliris/media/RenderView;->access$700()Lcom/cooliris/media/Deque;

    move-result-object v1

    goto :goto_f

    .line 1262
    .restart local v1       #inputQueue:Lcom/cooliris/media/Deque;,"Lcom/cooliris/media/Deque<Lcom/cooliris/media/Texture;>;"
    .restart local v2       #outputQueue:Lcom/cooliris/media/Deque;,"Lcom/cooliris/media/Deque<Lcom/cooliris/media/Texture;>;"
    .restart local v3       #texture:Lcom/cooliris/media/Texture;
    :cond_38
    :try_start_38
    monitor-exit v1
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_23

    .line 1263
    :try_start_39
    invoke-static {}, Lcom/cooliris/media/RenderView;->access$500()Lcom/cooliris/media/RenderView$TextureLoadThread;

    move-result-object v4

    if-eq v4, p0, :cond_42

    .line 1264
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/cooliris/media/RenderView$TextureLoadThread;->mIsLoading:Z

    .line 1266
    :cond_42
    invoke-direct {p0, v3}, Lcom/cooliris/media/RenderView$TextureLoadThread;->load(Lcom/cooliris/media/Texture;)V

    .line 1267
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/cooliris/media/RenderView$TextureLoadThread;->mIsLoading:Z

    .line 1270
    monitor-enter v2
    :try_end_49
    .catch Ljava/lang/InterruptedException; {:try_start_39 .. :try_end_49} :catch_26

    .line 1271
    :try_start_49
    invoke-virtual {v2, v3}, Lcom/cooliris/media/Deque;->addLast(Ljava/lang/Object;)V

    .line 1272
    monitor-exit v2

    goto :goto_13

    :catchall_4e
    move-exception v4

    monitor-exit v2
    :try_end_50
    .catchall {:try_start_49 .. :try_end_50} :catchall_4e

    :try_start_50
    throw v4
    :try_end_51
    .catch Ljava/lang/InterruptedException; {:try_start_50 .. :try_end_51} :catch_26
.end method
