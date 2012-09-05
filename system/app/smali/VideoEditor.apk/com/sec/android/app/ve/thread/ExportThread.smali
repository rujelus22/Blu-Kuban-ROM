.class public Lcom/sec/android/app/ve/thread/ExportThread;
.super Ljava/lang/Thread;
.source "ExportThread.java"


# static fields
.field static final EXPORT_ERROR:I = 0x1

.field private static final EXPORT_MOVIE:I = 0x3e8

.field static final EXPORT_SUCCESS:I = 0x0

.field private static final MSG_DELAY_EXPORT_WAKELOCK:I = 0x6f

.field private static final MSG_EXPORT_CANCELLED:I = 0x67

.field private static final MSG_EXPORT_FAILURE:I = 0x65

.field protected static final MSG_STOP_EXPORT_DIALOG:I = 0x64

.field private static final MSG_STOP_SHARE_DIALOG:I = 0x66


# instance fields
.field private finalPath:Ljava/lang/String;

.field isExported:Z

.field private mContext:Landroid/content/Context;

.field mHnadler:Landroid/os/Handler;

.field mOperation:I

.field mState:I

.field private mTranscodeElement:Lcom/samsung/app/video/editor/external/TranscodeElement;

.field private path:[Ljava/lang/String;

.field private progress:Landroid/app/ProgressDialog;

.field wakelock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/os/Handler;ILandroid/content/Context;Lcom/samsung/app/video/editor/external/TranscodeElement;)V
    .registers 6
    .parameter "handler"
    .parameter "operation"
    .parameter "context"
    .parameter "transcodeElement"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 31
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/ve/thread/ExportThread;->path:[Ljava/lang/String;

    .line 42
    iput-object p1, p0, Lcom/sec/android/app/ve/thread/ExportThread;->mHnadler:Landroid/os/Handler;

    .line 43
    iput p2, p0, Lcom/sec/android/app/ve/thread/ExportThread;->mOperation:I

    .line 44
    iput-object p3, p0, Lcom/sec/android/app/ve/thread/ExportThread;->mContext:Landroid/content/Context;

    .line 45
    iput-object p4, p0, Lcom/sec/android/app/ve/thread/ExportThread;->mTranscodeElement:Lcom/samsung/app/video/editor/external/TranscodeElement;

    .line 46
    return-void
.end method


# virtual methods
.method public getFinalPath()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/sec/android/app/ve/thread/ExportThread;->path:[Ljava/lang/String;

    return-object v0
.end method

.method public releaseWakelock()V
    .registers 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/sec/android/app/ve/thread/ExportThread;->wakelock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/sec/android/app/ve/thread/ExportThread;->wakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 117
    iget-object v0, p0, Lcom/sec/android/app/ve/thread/ExportThread;->wakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/ve/thread/ExportThread;->wakelock:Landroid/os/PowerManager$WakeLock;

    .line 120
    :cond_14
    return-void
.end method

.method public run()V
    .registers 13

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const-wide/16 v8, 0xa

    const/16 v7, 0x6f

    .line 50
    iget v4, p0, Lcom/sec/android/app/ve/thread/ExportThread;->mOperation:I

    const/16 v5, 0x3e8

    if-ne v4, v5, :cond_d4

    .line 51
    const-string v4, " New Thread running"

    invoke-static {v4}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 54
    const-string v0, "/mnt/sdcard/Videomaker"

    .line 55
    .local v0, filepath:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 56
    .local v3, veDir:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_27

    .line 57
    :cond_24
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 59
    :cond_27
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "VE."

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".mp4"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 60
    .local v2, newfile:Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/android/app/ve/thread/ExportThread;->path:[Ljava/lang/String;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    .line 65
    const/4 v1, 0x0

    .line 66
    .local v1, lContext:Landroid/content/Context;
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v4

    if-eqz v4, :cond_d5

    .line 67
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v1

    .line 71
    :goto_58
    iget-object v4, p0, Lcom/sec/android/app/ve/thread/ExportThread;->mHnadler:Landroid/os/Handler;

    invoke-virtual {v4, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 73
    const-string v4, "power"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    const/16 v5, 0xa

    const-string v6, "VE Export Thread"

    invoke-virtual {v4, v5, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/ve/thread/ExportThread;->wakelock:Landroid/os/PowerManager$WakeLock;

    .line 74
    iget-object v4, p0, Lcom/sec/android/app/ve/thread/ExportThread;->wakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 76
    iget-object v4, p0, Lcom/sec/android/app/ve/thread/ExportThread;->mTranscodeElement:Lcom/samsung/app/video/editor/external/TranscodeElement;

    iget-object v5, p0, Lcom/sec/android/app/ve/thread/ExportThread;->mTranscodeElement:Lcom/samsung/app/video/editor/external/TranscodeElement;

    invoke-virtual {v5}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getTotalDurationInFloat()F

    move-result v5

    const/high16 v6, 0x447a

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Lcom/samsung/app/video/editor/external/TranscodeElement;->setFullMovieDuration(I)V

    .line 77
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/ve/thread/ExportThread;->mTranscodeElement:Lcom/samsung/app/video/editor/external/TranscodeElement;

    iget-object v6, p0, Lcom/sec/android/app/ve/thread/ExportThread;->path:[Ljava/lang/String;

    aget-object v6, v6, v10

    invoke-virtual {v4, v5, v6}, Lcom/samsung/app/video/editor/external/NativeInterface;->VEEdit(Lcom/samsung/app/video/editor/external/TranscodeElement;Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/ve/thread/ExportThread;->mState:I

    .line 78
    iget-object v4, p0, Lcom/sec/android/app/ve/thread/ExportThread;->wakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v4

    if-eqz v4, :cond_db

    iget v4, p0, Lcom/sec/android/app/ve/thread/ExportThread;->mState:I

    if-eq v4, v11, :cond_db

    .line 80
    const-string v4, "releaseWakeLock in ExportThread"

    invoke-static {v4}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 81
    iget-object v4, p0, Lcom/sec/android/app/ve/thread/ExportThread;->wakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 86
    :goto_a9
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "State from Engine::::"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/sec/android/app/ve/thread/ExportThread;->mState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 87
    iget v4, p0, Lcom/sec/android/app/ve/thread/ExportThread;->mState:I

    if-eq v4, v11, :cond_fc

    .line 89
    iget v4, p0, Lcom/sec/android/app/ve/thread/ExportThread;->mState:I

    const/16 v5, 0x1c

    if-ne v4, v5, :cond_ee

    .line 90
    iget-object v4, p0, Lcom/sec/android/app/ve/thread/ExportThread;->mHnadler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/sec/android/app/ve/thread/ExportThread;->mHnadler:Landroid/os/Handler;

    const/16 v6, 0x67

    invoke-static {v5, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 104
    .end local v0           #filepath:Ljava/lang/String;
    .end local v1           #lContext:Landroid/content/Context;
    .end local v2           #newfile:Ljava/lang/String;
    .end local v3           #veDir:Ljava/io/File;
    :cond_d4
    :goto_d4
    return-void

    .line 69
    .restart local v0       #filepath:Ljava/lang/String;
    .restart local v1       #lContext:Landroid/content/Context;
    .restart local v2       #newfile:Ljava/lang/String;
    .restart local v3       #veDir:Ljava/io/File;
    :cond_d5
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectListActivity;

    move-result-object v1

    goto/16 :goto_58

    .line 83
    :cond_db
    iget-object v4, p0, Lcom/sec/android/app/ve/thread/ExportThread;->mHnadler:Landroid/os/Handler;

    invoke-virtual {v4, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 84
    iget-object v4, p0, Lcom/sec/android/app/ve/thread/ExportThread;->mHnadler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/sec/android/app/ve/thread/ExportThread;->mHnadler:Landroid/os/Handler;

    invoke-static {v5, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v6, 0xbb8

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_a9

    .line 92
    :cond_ee
    iget-object v4, p0, Lcom/sec/android/app/ve/thread/ExportThread;->mHnadler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/sec/android/app/ve/thread/ExportThread;->mHnadler:Landroid/os/Handler;

    const/16 v6, 0x65

    invoke-static {v5, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_d4

    .line 96
    :cond_fc
    const-string v4, "Sending command to ExportHandler after movie is created"

    invoke-static {v4}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 97
    iget-object v4, p0, Lcom/sec/android/app/ve/thread/ExportThread;->mContext:Landroid/content/Context;

    if-nez v4, :cond_10a

    .line 98
    const-string v4, "context is null"

    invoke-static {v4}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 100
    :cond_10a
    iget-object v4, p0, Lcom/sec/android/app/ve/thread/ExportThread;->mHnadler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/sec/android/app/ve/thread/ExportThread;->mHnadler:Landroid/os/Handler;

    const/16 v6, 0x64

    invoke-static {v5, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 101
    const-string v4, "After Sending command to ExportHandler after movie is created"

    invoke-static {v4}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    goto :goto_d4
.end method

.method public stopExport()V
    .registers 2

    .prologue
    .line 107
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/NativeInterface;->StopVEEditExportFunction()V

    .line 108
    const-string v0, "Stopped"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 109
    return-void
.end method
