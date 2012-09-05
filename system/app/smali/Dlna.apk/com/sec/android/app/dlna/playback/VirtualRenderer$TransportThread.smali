.class Lcom/sec/android/app/dlna/playback/VirtualRenderer$TransportThread;
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
    name = "TransportThread"
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
    .line 347
    iput-object p1, p0, Lcom/sec/android/app/dlna/playback/VirtualRenderer$TransportThread;->this$0:Lcom/sec/android/app/dlna/playback/VirtualRenderer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 348
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/dlna/playback/VirtualRenderer$TransportThread;->thisThread:Ljava/lang/Thread;

    .line 350
    const/16 v0, 0x1770

    iput v0, p0, Lcom/sec/android/app/dlna/playback/VirtualRenderer$TransportThread;->time:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/dlna/playback/VirtualRenderer;Lcom/sec/android/app/dlna/playback/VirtualRenderer$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 347
    invoke-direct {p0, p1}, Lcom/sec/android/app/dlna/playback/VirtualRenderer$TransportThread;-><init>(Lcom/sec/android/app/dlna/playback/VirtualRenderer;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 359
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/dlna/playback/VirtualRenderer$TransportThread;->thisThread:Ljava/lang/Thread;

    .line 360
    :goto_6
    iget-object v4, p0, Lcom/sec/android/app/dlna/playback/VirtualRenderer$TransportThread;->this$0:Lcom/sec/android/app/dlna/playback/VirtualRenderer;

    iget-object v4, v4, Lcom/sec/android/app/dlna/playback/VirtualRenderer;->transportThread:Ljava/lang/Thread;

    iget-object v5, p0, Lcom/sec/android/app/dlna/playback/VirtualRenderer$TransportThread;->thisThread:Ljava/lang/Thread;

    if-ne v4, v5, :cond_52

    .line 363
    :try_start_e
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getCurrentPlayListType()I

    move-result v4

    const/4 v5, 0x5

    if-eq v4, v5, :cond_2a

    .line 364
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/dlna/DLNAManager;->getTransportInfo()Ljava/lang/String;

    move-result-object v3

    .line 365
    .local v3, transportInfo:Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/android/app/dlna/playback/VirtualRenderer$TransportThread;->this$0:Lcom/sec/android/app/dlna/playback/VirtualRenderer;

    #calls: Lcom/sec/android/app/dlna/playback/VirtualRenderer;->changeState(Ljava/lang/String;)V
    invoke-static {v4, v3}, Lcom/sec/android/app/dlna/playback/VirtualRenderer;->access$200(Lcom/sec/android/app/dlna/playback/VirtualRenderer;Ljava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_e .. :try_end_2a} :catchall_58
    .catch Lcom/samsung/api/DMCAPIException; {:try_start_e .. :try_end_2a} :catch_36
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_2a} :catch_4b

    .line 382
    .end local v3           #transportInfo:Ljava/lang/String;
    :cond_2a
    :try_start_2a
    iget v4, p0, Lcom/sec/android/app/dlna/playback/VirtualRenderer$TransportThread;->time:I
    :try_end_2c
    .catch Ljava/lang/InterruptedException; {:try_start_2a .. :try_end_2c} :catch_65

    int-to-long v4, v4

    :try_start_2d
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_30
    .catch Ljava/lang/InterruptedException; {:try_start_2d .. :try_end_30} :catch_31

    goto :goto_6

    .line 383
    :catch_31
    move-exception v0

    .line 384
    .local v0, e:Ljava/lang/InterruptedException;
    :goto_32
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_6

    .line 369
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_36
    move-exception v1

    .line 371
    .local v1, e1:Lcom/samsung/api/DMCAPIException;
    :try_start_37
    invoke-virtual {v1}, Lcom/samsung/api/DMCAPIException;->getErrorCode()I

    move-result v4

    const/16 v5, 0xc

    if-eq v4, v5, :cond_42

    .line 377
    invoke-virtual {v1}, Lcom/samsung/api/DMCAPIException;->printStackTrace()V
    :try_end_42
    .catchall {:try_start_37 .. :try_end_42} :catchall_58

    .line 382
    :cond_42
    :try_start_42
    iget v4, p0, Lcom/sec/android/app/dlna/playback/VirtualRenderer$TransportThread;->time:I

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_48
    .catch Ljava/lang/InterruptedException; {:try_start_42 .. :try_end_48} :catch_49

    goto :goto_6

    .line 383
    :catch_49
    move-exception v0

    goto :goto_32

    .line 378
    .end local v1           #e1:Lcom/samsung/api/DMCAPIException;
    :catch_4b
    move-exception v2

    .line 382
    .local v2, e2:Ljava/lang/NullPointerException;
    :try_start_4c
    iget v4, p0, Lcom/sec/android/app/dlna/playback/VirtualRenderer$TransportThread;->time:I

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_52
    .catch Ljava/lang/InterruptedException; {:try_start_4c .. :try_end_52} :catch_60

    .line 388
    .end local v2           #e2:Ljava/lang/NullPointerException;
    :cond_52
    :goto_52
    return-void

    .line 383
    :catch_53
    move-exception v0

    .line 384
    .restart local v0       #e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 381
    .end local v0           #e:Ljava/lang/InterruptedException;
    :goto_57
    throw v4

    :catchall_58
    move-exception v4

    .line 382
    :try_start_59
    iget v5, p0, Lcom/sec/android/app/dlna/playback/VirtualRenderer$TransportThread;->time:I

    int-to-long v5, v5

    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5f
    .catch Ljava/lang/InterruptedException; {:try_start_59 .. :try_end_5f} :catch_53

    goto :goto_57

    .line 383
    .restart local v2       #e2:Ljava/lang/NullPointerException;
    :catch_60
    move-exception v0

    .line 384
    .restart local v0       #e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_52

    .line 383
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v2           #e2:Ljava/lang/NullPointerException;
    :catch_65
    move-exception v0

    goto :goto_32
.end method
