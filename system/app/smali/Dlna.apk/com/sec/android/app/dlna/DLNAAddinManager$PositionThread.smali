.class Lcom/sec/android/app/dlna/DLNAAddinManager$PositionThread;
.super Ljava/lang/Object;
.source "DLNAAddinManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dlna/DLNAAddinManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PositionThread"
.end annotation


# instance fields
.field onSeekbar:Z

.field prevTemp:I

.field final synthetic this$0:Lcom/sec/android/app/dlna/DLNAAddinManager;

.field thisThread:Ljava/lang/Thread;

.field time:I


# direct methods
.method private constructor <init>(Lcom/sec/android/app/dlna/DLNAAddinManager;)V
    .registers 3
    .parameter

    .prologue
    .line 1004
    iput-object p1, p0, Lcom/sec/android/app/dlna/DLNAAddinManager$PositionThread;->this$0:Lcom/sec/android/app/dlna/DLNAAddinManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1005
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/dlna/DLNAAddinManager$PositionThread;->thisThread:Ljava/lang/Thread;

    .line 1006
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/sec/android/app/dlna/DLNAAddinManager$PositionThread;->time:I

    .line 1007
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/dlna/DLNAAddinManager$PositionThread;->prevTemp:I

    .line 1008
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/dlna/DLNAAddinManager$PositionThread;->onSeekbar:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/dlna/DLNAAddinManager;Lcom/sec/android/app/dlna/DLNAAddinManager$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1004
    invoke-direct {p0, p1}, Lcom/sec/android/app/dlna/DLNAAddinManager$PositionThread;-><init>(Lcom/sec/android/app/dlna/DLNAAddinManager;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 1011
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/dlna/DLNAAddinManager$PositionThread;->thisThread:Ljava/lang/Thread;

    .line 1013
    :goto_6
    iget-object v2, p0, Lcom/sec/android/app/dlna/DLNAAddinManager$PositionThread;->this$0:Lcom/sec/android/app/dlna/DLNAAddinManager;

    #getter for: Lcom/sec/android/app/dlna/DLNAAddinManager;->positionThread:Ljava/lang/Thread;
    invoke-static {v2}, Lcom/sec/android/app/dlna/DLNAAddinManager;->access$1500(Lcom/sec/android/app/dlna/DLNAAddinManager;)Ljava/lang/Thread;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/dlna/DLNAAddinManager$PositionThread;->thisThread:Ljava/lang/Thread;

    if-ne v2, v3, :cond_ad

    .line 1014
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 1018
    :try_start_13
    iget-object v2, p0, Lcom/sec/android/app/dlna/DLNAAddinManager$PositionThread;->this$0:Lcom/sec/android/app/dlna/DLNAAddinManager;

    #getter for: Lcom/sec/android/app/dlna/DLNAAddinManager;->player:Lcom/samsung/upnp/Device;
    invoke-static {v2}, Lcom/sec/android/app/dlna/DLNAAddinManager;->access$1000(Lcom/sec/android/app/dlna/DLNAAddinManager;)Lcom/samsung/upnp/Device;
    :try_end_18
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_18} :catch_7c

    move-result-object v2

    if-eqz v2, :cond_75

    .line 1020
    :try_start_1b
    iget-object v2, p0, Lcom/sec/android/app/dlna/DLNAAddinManager$PositionThread;->this$0:Lcom/sec/android/app/dlna/DLNAAddinManager;

    #calls: Lcom/sec/android/app/dlna/DLNAAddinManager;->getPosition()Lcom/samsung/api/ContentPositionInfo;
    invoke-static {v2}, Lcom/sec/android/app/dlna/DLNAAddinManager;->access$1200(Lcom/sec/android/app/dlna/DLNAAddinManager;)Lcom/samsung/api/ContentPositionInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/api/ContentPositionInfo;->getRelTimeInt()I

    move-result v1

    .line 1022
    .local v1, temp:I
    if-ltz v1, :cond_61

    .line 1023
    iget-object v2, p0, Lcom/sec/android/app/dlna/DLNAAddinManager$PositionThread;->this$0:Lcom/sec/android/app/dlna/DLNAAddinManager;

    #setter for: Lcom/sec/android/app/dlna/DLNAAddinManager;->currentPosition:I
    invoke-static {v2, v1}, Lcom/sec/android/app/dlna/DLNAAddinManager;->access$1402(Lcom/sec/android/app/dlna/DLNAAddinManager;I)I

    .line 1024
    const-string v2, "DLNA_Addin"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DLNAAddinManager.currentPosition is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/dlna/DLNAAddinManager$PositionThread;->this$0:Lcom/sec/android/app/dlna/DLNAAddinManager;

    #getter for: Lcom/sec/android/app/dlna/DLNAAddinManager;->currentPosition:I
    invoke-static {v4}, Lcom/sec/android/app/dlna/DLNAAddinManager;->access$1400(Lcom/sec/android/app/dlna/DLNAAddinManager;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/dlna/DLNAAddinManager$PositionThread;->this$0:Lcom/sec/android/app/dlna/DLNAAddinManager;

    #getter for: Lcom/sec/android/app/dlna/DLNAAddinManager;->fileDuration:I
    invoke-static {v4}, Lcom/sec/android/app/dlna/DLNAAddinManager;->access$1600(Lcom/sec/android/app/dlna/DLNAAddinManager;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    iget-object v2, p0, Lcom/sec/android/app/dlna/DLNAAddinManager$PositionThread;->this$0:Lcom/sec/android/app/dlna/DLNAAddinManager;

    const/16 v3, 0x6a

    invoke-virtual {v2, v3}, Lcom/sec/android/app/dlna/DLNAAddinManager;->notifyGuiEvent(I)V

    .line 1028
    :cond_61
    iget v2, p0, Lcom/sec/android/app/dlna/DLNAAddinManager$PositionThread;->prevTemp:I

    if-ne v1, v2, :cond_89

    iget-boolean v2, p0, Lcom/sec/android/app/dlna/DLNAAddinManager$PositionThread;->onSeekbar:Z

    if-eqz v2, :cond_89

    .line 1029
    iget-object v2, p0, Lcom/sec/android/app/dlna/DLNAAddinManager$PositionThread;->this$0:Lcom/sec/android/app/dlna/DLNAAddinManager;

    const/16 v3, 0x6e

    invoke-virtual {v2, v3}, Lcom/sec/android/app/dlna/DLNAAddinManager;->notifyGuiEvent(I)V

    .line 1030
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/app/dlna/DLNAAddinManager$PositionThread;->onSeekbar:Z

    .line 1035
    :cond_73
    :goto_73
    iput v1, p0, Lcom/sec/android/app/dlna/DLNAAddinManager$PositionThread;->prevTemp:I
    :try_end_75
    .catch Lcom/samsung/api/DMCAPIException; {:try_start_1b .. :try_end_75} :catch_9c
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_75} :catch_7c

    .line 1042
    .end local v1           #temp:I
    :cond_75
    :goto_75
    :try_start_75
    iget v2, p0, Lcom/sec/android/app/dlna/DLNAAddinManager$PositionThread;->time:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7b
    .catch Ljava/lang/InterruptedException; {:try_start_75 .. :try_end_7b} :catch_7c

    goto :goto_6

    .line 1043
    :catch_7c
    move-exception v0

    .line 1044
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v2, "DLNA_Addin"

    const-string v3, "DLNAAddinManager.PositionThread() - InterruptedException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_6

    .line 1031
    .end local v0           #e:Ljava/lang/InterruptedException;
    .restart local v1       #temp:I
    :cond_89
    :try_start_89
    iget v2, p0, Lcom/sec/android/app/dlna/DLNAAddinManager$PositionThread;->prevTemp:I

    if-eq v1, v2, :cond_73

    iget-boolean v2, p0, Lcom/sec/android/app/dlna/DLNAAddinManager$PositionThread;->onSeekbar:Z

    if-nez v2, :cond_73

    .line 1032
    iget-object v2, p0, Lcom/sec/android/app/dlna/DLNAAddinManager$PositionThread;->this$0:Lcom/sec/android/app/dlna/DLNAAddinManager;

    const/16 v3, 0x6f

    invoke-virtual {v2, v3}, Lcom/sec/android/app/dlna/DLNAAddinManager;->notifyGuiEvent(I)V

    .line 1033
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/app/dlna/DLNAAddinManager$PositionThread;->onSeekbar:Z
    :try_end_9b
    .catch Lcom/samsung/api/DMCAPIException; {:try_start_89 .. :try_end_9b} :catch_9c
    .catch Ljava/lang/InterruptedException; {:try_start_89 .. :try_end_9b} :catch_7c

    goto :goto_73

    .line 1036
    .end local v1           #temp:I
    :catch_9c
    move-exception v0

    .line 1037
    .local v0, e:Lcom/samsung/api/DMCAPIException;
    :try_start_9d
    const-string v2, "DLNA_Addin"

    const-string v3, "DLNAAddinManager.PositionThread()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    invoke-virtual {v0}, Lcom/samsung/api/DMCAPIException;->printStackTrace()V

    .line 1039
    iget-object v2, p0, Lcom/sec/android/app/dlna/DLNAAddinManager$PositionThread;->this$0:Lcom/sec/android/app/dlna/DLNAAddinManager;

    #calls: Lcom/sec/android/app/dlna/DLNAAddinManager;->handleDMCAPIException(Lcom/samsung/api/DMCAPIException;)V
    invoke-static {v2, v0}, Lcom/sec/android/app/dlna/DLNAAddinManager;->access$600(Lcom/sec/android/app/dlna/DLNAAddinManager;Lcom/samsung/api/DMCAPIException;)V
    :try_end_ac
    .catch Ljava/lang/InterruptedException; {:try_start_9d .. :try_end_ac} :catch_7c

    goto :goto_75

    .line 1049
    .end local v0           #e:Lcom/samsung/api/DMCAPIException;
    :cond_ad
    return-void
.end method
