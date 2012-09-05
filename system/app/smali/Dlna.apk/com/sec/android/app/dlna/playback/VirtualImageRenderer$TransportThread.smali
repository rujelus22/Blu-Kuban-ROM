.class Lcom/sec/android/app/dlna/playback/VirtualImageRenderer$TransportThread;
.super Ljava/lang/Object;
.source "VirtualImageRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TransportThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;

.field thisThread:Ljava/lang/Thread;

.field time:I


# direct methods
.method private constructor <init>(Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;)V
    .registers 3
    .parameter

    .prologue
    .line 412
    iput-object p1, p0, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer$TransportThread;->this$0:Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 413
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer$TransportThread;->thisThread:Ljava/lang/Thread;

    .line 415
    const/16 v0, 0x1770

    iput v0, p0, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer$TransportThread;->time:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;Lcom/sec/android/app/dlna/playback/VirtualImageRenderer$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 412
    invoke-direct {p0, p1}, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer$TransportThread;-><init>(Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 422
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer$TransportThread;->thisThread:Ljava/lang/Thread;

    .line 423
    :goto_6
    iget-object v3, p0, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer$TransportThread;->this$0:Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;

    iget-object v3, v3, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->transportThread:Ljava/lang/Thread;

    iget-object v4, p0, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer$TransportThread;->thisThread:Ljava/lang/Thread;

    if-ne v3, v4, :cond_4d

    .line 425
    :try_start_e
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getCurrentPlayListType()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_2a

    .line 426
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/dlna/DLNAManager;->getTransportInfo()Ljava/lang/String;

    move-result-object v2

    .line 427
    .local v2, transportInfo:Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer$TransportThread;->this$0:Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;

    #calls: Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->changeState(Ljava/lang/String;)V
    invoke-static {v3, v2}, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->access$300(Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;Ljava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_e .. :try_end_2a} :catchall_4e
    .catch Lcom/samsung/api/DMCAPIException; {:try_start_e .. :try_end_2a} :catch_33
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_2a} :catch_46

    .line 445
    .end local v2           #transportInfo:Ljava/lang/String;
    :cond_2a
    :try_start_2a
    iget v3, p0, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer$TransportThread;->time:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_30
    .catch Ljava/lang/InterruptedException; {:try_start_2a .. :try_end_30} :catch_31

    goto :goto_6

    .line 446
    :catch_31
    move-exception v3

    goto :goto_6

    .line 431
    :catch_33
    move-exception v0

    .line 432
    .local v0, e1:Lcom/samsung/api/DMCAPIException;
    :try_start_34
    invoke-virtual {v0}, Lcom/samsung/api/DMCAPIException;->getErrorCode()I

    move-result v3

    const/16 v4, 0xc

    if-eq v3, v4, :cond_3f

    .line 438
    invoke-virtual {v0}, Lcom/samsung/api/DMCAPIException;->printStackTrace()V
    :try_end_3f
    .catchall {:try_start_34 .. :try_end_3f} :catchall_4e

    .line 445
    :cond_3f
    :try_start_3f
    iget v3, p0, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer$TransportThread;->time:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_45
    .catch Ljava/lang/InterruptedException; {:try_start_3f .. :try_end_45} :catch_31

    goto :goto_6

    .line 441
    .end local v0           #e1:Lcom/samsung/api/DMCAPIException;
    :catch_46
    move-exception v1

    .line 445
    .local v1, e2:Ljava/lang/NullPointerException;
    :try_start_47
    iget v3, p0, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer$TransportThread;->time:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4d
    .catch Ljava/lang/InterruptedException; {:try_start_47 .. :try_end_4d} :catch_56

    .line 450
    .end local v1           #e2:Ljava/lang/NullPointerException;
    :cond_4d
    :goto_4d
    return-void

    .line 444
    :catchall_4e
    move-exception v3

    .line 445
    :try_start_4f
    iget v4, p0, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer$TransportThread;->time:I

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_55
    .catch Ljava/lang/InterruptedException; {:try_start_4f .. :try_end_55} :catch_58

    .line 444
    :goto_55
    throw v3

    .line 446
    .restart local v1       #e2:Ljava/lang/NullPointerException;
    :catch_56
    move-exception v3

    goto :goto_4d

    .end local v1           #e2:Ljava/lang/NullPointerException;
    :catch_58
    move-exception v4

    goto :goto_55
.end method
