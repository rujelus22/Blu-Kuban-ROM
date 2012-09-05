.class public Lcom/sec/android/app/ve/thread/PreviewFrameThread;
.super Ljava/lang/Thread;
.source "PreviewFrameThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/ve/thread/PreviewFrameThread$Job;
    }
.end annotation


# static fields
.field private static _instance:Lcom/sec/android/app/ve/thread/PreviewFrameThread;


# instance fields
.field private pendingJob:Lcom/sec/android/app/ve/thread/PreviewFrameThread$Job;

.field private terminate:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/ve/thread/PreviewFrameThread;->_instance:Lcom/sec/android/app/ve/thread/PreviewFrameThread;

    .line 19
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 27
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/sec/android/app/ve/thread/PreviewFrameThread;
    .registers 2

    .prologue
    .line 30
    const-class v1, Lcom/sec/android/app/ve/thread/PreviewFrameThread;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/sec/android/app/ve/thread/PreviewFrameThread;->_instance:Lcom/sec/android/app/ve/thread/PreviewFrameThread;

    if-nez v0, :cond_e

    .line 31
    new-instance v0, Lcom/sec/android/app/ve/thread/PreviewFrameThread;

    invoke-direct {v0}, Lcom/sec/android/app/ve/thread/PreviewFrameThread;-><init>()V

    sput-object v0, Lcom/sec/android/app/ve/thread/PreviewFrameThread;->_instance:Lcom/sec/android/app/ve/thread/PreviewFrameThread;

    .line 32
    :cond_e
    sget-object v0, Lcom/sec/android/app/ve/thread/PreviewFrameThread;->_instance:Lcom/sec/android/app/ve/thread/PreviewFrameThread;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 30
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public init()V
    .registers 2

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/sec/android/app/ve/thread/PreviewFrameThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_d

    .line 37
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/thread/PreviewFrameThread;->setPriority(I)V

    .line 38
    invoke-virtual {p0}, Lcom/sec/android/app/ve/thread/PreviewFrameThread;->start()V

    .line 40
    :cond_d
    return-void
.end method

.method public refersh()V
    .registers 3

    .prologue
    .line 43
    sget-object v1, Lcom/sec/android/app/ve/thread/PreviewFrameThread;->_instance:Lcom/sec/android/app/ve/thread/PreviewFrameThread;

    monitor-enter v1

    .line 44
    :try_start_3
    sget-object v0, Lcom/sec/android/app/ve/thread/PreviewFrameThread;->_instance:Lcom/sec/android/app/ve/thread/PreviewFrameThread;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 43
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_f

    .line 46
    const-string v0, "PreviewThreadNotified.."

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 47
    return-void

    .line 43
    :catchall_f
    move-exception v0

    :try_start_10
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public run()V
    .registers 13

    .prologue
    .line 67
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/sec/android/app/ve/thread/PreviewFrameThread;->terminate:Z

    if-eqz v0, :cond_5

    .line 115
    return-void

    .line 68
    :cond_5
    iget-object v11, p0, Lcom/sec/android/app/ve/thread/PreviewFrameThread;->pendingJob:Lcom/sec/android/app/ve/thread/PreviewFrameThread$Job;

    .line 69
    .local v11, onGoingJob:Lcom/sec/android/app/ve/thread/PreviewFrameThread$Job;
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    if-eqz v0, :cond_83

    if-eqz v11, :cond_83

    .line 70
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->isSurfacePresent()Z

    move-result v0

    if-eqz v0, :cond_83

    .line 71
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->isPlayerCreated()Z

    move-result v0

    if-nez v0, :cond_83

    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->isExportInProgress()Z

    move-result v0

    if-nez v0, :cond_83

    .line 74
    :try_start_2d
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementList()Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/sec/android/app/ve/thread/PreviewFrameThread$Job;->firstElement:Lcom/samsung/app/video/editor/external/Element;
    invoke-static {v11}, Lcom/sec/android/app/ve/thread/PreviewFrameThread$Job;->access$0(Lcom/sec/android/app/ve/thread/PreviewFrameThread$Job;)Lcom/samsung/app/video/editor/external/Element;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9e

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Preview frame :"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 77
    #getter for: Lcom/sec/android/app/ve/thread/PreviewFrameThread$Job;->time:I
    invoke-static {v11}, Lcom/sec/android/app/ve/thread/PreviewFrameThread$Job;->access$1(Lcom/sec/android/app/ve/thread/PreviewFrameThread$Job;)I

    move-result v3

    .line 79
    .local v3, time:I
    #getter for: Lcom/sec/android/app/ve/thread/PreviewFrameThread$Job;->firstElement:Lcom/samsung/app/video/editor/external/Element;
    invoke-static {v11}, Lcom/sec/android/app/ve/thread/PreviewFrameThread$Job;->access$0(Lcom/sec/android/app/ve/thread/PreviewFrameThread$Job;)Lcom/samsung/app/video/editor/external/Element;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->deepCopy(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/app/video/editor/external/Element;

    .line 81
    .local v1, firstElement:Lcom/samsung/app/video/editor/external/Element;
    const/4 v2, 0x0

    .line 82
    .local v2, secondElement:Lcom/samsung/app/video/editor/external/Element;
    #getter for: Lcom/sec/android/app/ve/thread/PreviewFrameThread$Job;->secondElement:Lcom/samsung/app/video/editor/external/Element;
    invoke-static {v11}, Lcom/sec/android/app/ve/thread/PreviewFrameThread$Job;->access$2(Lcom/sec/android/app/ve/thread/PreviewFrameThread$Job;)Lcom/samsung/app/video/editor/external/Element;

    move-result-object v0

    if-eqz v0, :cond_74

    .line 84
    #getter for: Lcom/sec/android/app/ve/thread/PreviewFrameThread$Job;->secondElement:Lcom/samsung/app/video/editor/external/Element;
    invoke-static {v11}, Lcom/sec/android/app/ve/thread/PreviewFrameThread$Job;->access$2(Lcom/sec/android/app/ve/thread/PreviewFrameThread$Job;)Lcom/samsung/app/video/editor/external/Element;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->deepCopy(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #secondElement:Lcom/samsung/app/video/editor/external/Element;
    check-cast v2, Lcom/samsung/app/video/editor/external/Element;

    .line 89
    .restart local v2       #secondElement:Lcom/samsung/app/video/editor/external/Element;
    :cond_74
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v0

    .line 91
    #getter for: Lcom/sec/android/app/ve/thread/PreviewFrameThread$Job;->width:I
    invoke-static {v11}, Lcom/sec/android/app/ve/thread/PreviewFrameThread$Job;->access$3(Lcom/sec/android/app/ve/thread/PreviewFrameThread$Job;)I

    move-result v4

    #getter for: Lcom/sec/android/app/ve/thread/PreviewFrameThread$Job;->height:I
    invoke-static {v11}, Lcom/sec/android/app/ve/thread/PreviewFrameThread$Job;->access$4(Lcom/sec/android/app/ve/thread/PreviewFrameThread$Job;)I

    move-result v5

    .line 90
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/app/video/editor/external/NativeInterface;->previewFrame(Lcom/samsung/app/video/editor/external/Element;Lcom/samsung/app/video/editor/external/Element;III)V
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_83} :catch_b6

    .line 104
    .end local v1           #firstElement:Lcom/samsung/app/video/editor/external/Element;
    .end local v2           #secondElement:Lcom/samsung/app/video/editor/external/Element;
    .end local v3           #time:I
    :cond_83
    :goto_83
    sget-object v0, Lcom/sec/android/app/ve/thread/PreviewFrameThread;->_instance:Lcom/sec/android/app/ve/thread/PreviewFrameThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/ve/thread/PreviewFrameThread;->pendingJob:Lcom/sec/android/app/ve/thread/PreviewFrameThread$Job;

    if-ne v11, v0, :cond_0

    .line 105
    sget-object v4, Lcom/sec/android/app/ve/thread/PreviewFrameThread;->_instance:Lcom/sec/android/app/ve/thread/PreviewFrameThread;

    monitor-enter v4

    .line 107
    :try_start_8e
    const-string v0, "PreviewThreadNotified..waiting"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 108
    sget-object v0, Lcom/sec/android/app/ve/thread/PreviewFrameThread;->_instance:Lcom/sec/android/app/ve/thread/PreviewFrameThread;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_98
    .catchall {:try_start_8e .. :try_end_98} :catchall_9b
    .catch Ljava/lang/InterruptedException; {:try_start_8e .. :try_end_98} :catch_ce

    .line 105
    :goto_98
    :try_start_98
    monitor-exit v4

    goto/16 :goto_0

    :catchall_9b
    move-exception v0

    monitor-exit v4
    :try_end_9d
    .catchall {:try_start_98 .. :try_end_9d} :catchall_9b

    throw v0

    .line 93
    :cond_9e
    :try_start_9e
    const-string v0, "Preview frame black"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 94
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    #getter for: Lcom/sec/android/app/ve/thread/PreviewFrameThread$Job;->width:I
    invoke-static {v11}, Lcom/sec/android/app/ve/thread/PreviewFrameThread$Job;->access$3(Lcom/sec/android/app/ve/thread/PreviewFrameThread$Job;)I

    move-result v8

    #getter for: Lcom/sec/android/app/ve/thread/PreviewFrameThread$Job;->height:I
    invoke-static {v11}, Lcom/sec/android/app/ve/thread/PreviewFrameThread$Job;->access$4(Lcom/sec/android/app/ve/thread/PreviewFrameThread$Job;)I

    move-result v9

    invoke-virtual/range {v4 .. v9}, Lcom/samsung/app/video/editor/external/NativeInterface;->previewFrame(Lcom/samsung/app/video/editor/external/Element;Lcom/samsung/app/video/editor/external/Element;III)V
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_9e .. :try_end_b5} :catch_b6

    goto :goto_83

    .line 97
    :catch_b6
    move-exception v10

    .line 99
    .local v10, e:Ljava/lang/Exception;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Ignoring :"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    goto :goto_83

    .line 109
    .end local v10           #e:Ljava/lang/Exception;
    :catch_ce
    move-exception v10

    .line 110
    .local v10, e:Ljava/lang/InterruptedException;
    :try_start_cf
    invoke-virtual {v10}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_d2
    .catchall {:try_start_cf .. :try_end_d2} :catchall_9b

    goto :goto_98
.end method

.method public setOperation(Lcom/samsung/app/video/editor/external/Element;Lcom/samsung/app/video/editor/external/Element;JII)V
    .registers 15
    .parameter "firstElement"
    .parameter "secondElement"
    .parameter "time"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 59
    new-instance v0, Lcom/sec/android/app/ve/thread/PreviewFrameThread$Job;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/ve/thread/PreviewFrameThread$Job;-><init>(Lcom/sec/android/app/ve/thread/PreviewFrameThread;Lcom/samsung/app/video/editor/external/Element;Lcom/samsung/app/video/editor/external/Element;JII)V

    iput-object v0, p0, Lcom/sec/android/app/ve/thread/PreviewFrameThread;->pendingJob:Lcom/sec/android/app/ve/thread/PreviewFrameThread$Job;

    .line 61
    sget-object v1, Lcom/sec/android/app/ve/thread/PreviewFrameThread;->_instance:Lcom/sec/android/app/ve/thread/PreviewFrameThread;

    monitor-enter v1

    .line 62
    :try_start_10
    sget-object v0, Lcom/sec/android/app/ve/thread/PreviewFrameThread;->_instance:Lcom/sec/android/app/ve/thread/PreviewFrameThread;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 61
    monitor-exit v1

    .line 64
    return-void

    .line 61
    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public terminate()V
    .registers 3

    .prologue
    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/ve/thread/PreviewFrameThread;->terminate:Z

    .line 51
    sget-object v1, Lcom/sec/android/app/ve/thread/PreviewFrameThread;->_instance:Lcom/sec/android/app/ve/thread/PreviewFrameThread;

    monitor-enter v1

    .line 52
    :try_start_6
    sget-object v0, Lcom/sec/android/app/ve/thread/PreviewFrameThread;->_instance:Lcom/sec/android/app/ve/thread/PreviewFrameThread;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 51
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_15

    .line 54
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/ve/thread/PreviewFrameThread;->_instance:Lcom/sec/android/app/ve/thread/PreviewFrameThread;

    .line 55
    const-string v0, "PreviewFrame Thread terminated"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 56
    return-void

    .line 51
    :catchall_15
    move-exception v0

    :try_start_16
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v0
.end method
