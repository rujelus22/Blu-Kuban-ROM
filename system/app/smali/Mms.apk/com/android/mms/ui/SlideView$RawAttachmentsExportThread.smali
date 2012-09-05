.class Lcom/android/mms/ui/SlideView$RawAttachmentsExportThread;
.super Ljava/lang/Thread;
.source "SlideView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SlideView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RawAttachmentsExportThread"
.end annotation


# instance fields
.field private mCancelled:Z

.field private mMsgId:J

.field mRawAttachments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/AttachmentModel;",
            ">;"
        }
    .end annotation
.end field

.field mTargetDir:Ljava/lang/String;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field final synthetic this$0:Lcom/android/mms/ui/SlideView;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/SlideView;Ljava/lang/String;Ljava/util/ArrayList;J)V
    .registers 9
    .parameter
    .parameter "targetDir"
    .parameter
    .parameter "msgId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/AttachmentModel;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 1526
    .local p3, rawAttachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/AttachmentModel;>;"
    iput-object p1, p0, Lcom/android/mms/ui/SlideView$RawAttachmentsExportThread;->this$0:Lcom/android/mms/ui/SlideView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1522
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/mms/ui/SlideView$RawAttachmentsExportThread;->mCancelled:Z

    .line 1527
    iput-object p2, p0, Lcom/android/mms/ui/SlideView$RawAttachmentsExportThread;->mTargetDir:Ljava/lang/String;

    .line 1528
    iput-object p3, p0, Lcom/android/mms/ui/SlideView$RawAttachmentsExportThread;->mRawAttachments:Ljava/util/ArrayList;

    .line 1529
    iput-wide p4, p0, Lcom/android/mms/ui/SlideView$RawAttachmentsExportThread;->mMsgId:J

    .line 1530
    #getter for: Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/mms/ui/SlideView;->access$3700(Lcom/android/mms/ui/SlideView;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1532
    .local v0, powerManager:Landroid/os/PowerManager;
    const v1, 0x20000006

    const-string v2, "Mms/SlideView"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/SlideView$RawAttachmentsExportThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1534
    return-void
.end method


# virtual methods
.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1585
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1586
    iget-object v0, p0, Lcom/android/mms/ui/SlideView$RawAttachmentsExportThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/mms/ui/SlideView$RawAttachmentsExportThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1587
    iget-object v0, p0, Lcom/android/mms/ui/SlideView$RawAttachmentsExportThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1589
    :cond_14
    return-void
.end method

.method public run()V
    .registers 11

    .prologue
    .line 1538
    iget-object v6, p0, Lcom/android/mms/ui/SlideView$RawAttachmentsExportThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1539
    const/4 v4, 0x0

    .line 1542
    .local v4, outputStream:Ljava/io/OutputStream;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_7
    :try_start_7
    iget-object v6, p0, Lcom/android/mms/ui/SlideView$RawAttachmentsExportThread;->mRawAttachments:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_8e

    .line 1543
    iget-boolean v6, p0, Lcom/android/mms/ui/SlideView$RawAttachmentsExportThread;->mCancelled:Z
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_97

    if-eqz v6, :cond_1c

    .line 1573
    if-eqz v4, :cond_16

    .line 1574
    :try_start_15
    throw v4
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_16} :catch_a1

    .line 1579
    :cond_16
    :goto_16
    iget-object v6, p0, Lcom/android/mms/ui/SlideView$RawAttachmentsExportThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1581
    :goto_1b
    return-void

    .line 1546
    :cond_1c
    :try_start_1c
    iget-object v6, p0, Lcom/android/mms/ui/SlideView$RawAttachmentsExportThread;->mRawAttachments:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/AttachmentModel;

    .line 1548
    .local v0, attach:Lcom/android/mms/model/AttachmentModel;
    const-string v6, "text/plain"

    invoke-virtual {v0}, Lcom/android/mms/model/AttachmentModel;->getContentType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6c

    const-string v6, "application/smil"

    invoke-virtual {v0}, Lcom/android/mms/model/AttachmentModel;->getContentType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6c

    .line 1552
    iget-wide v6, p0, Lcom/android/mms/ui/SlideView$RawAttachmentsExportThread;->mMsgId:J
    :try_end_3e
    .catchall {:try_start_1c .. :try_end_3e} :catchall_97

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_6c

    .line 1555
    const/4 v2, 0x0

    .line 1557
    .local v2, errorReason:Ljava/lang/String;
    :try_start_45
    iget-object v6, p0, Lcom/android/mms/ui/SlideView$RawAttachmentsExportThread;->this$0:Lcom/android/mms/ui/SlideView;

    iget-wide v7, p0, Lcom/android/mms/ui/SlideView$RawAttachmentsExportThread;->mMsgId:J

    #calls: Lcom/android/mms/ui/SlideView;->copyMedia(JLcom/android/mms/model/AttachmentModel;)Z
    invoke-static {v6, v7, v8, v0}, Lcom/android/mms/ui/SlideView;->access$3800(Lcom/android/mms/ui/SlideView;JLcom/android/mms/model/AttachmentModel;)Z

    move-result v6

    if-eqz v6, :cond_6f

    const v5, 0x7f0900ec

    .line 1559
    .local v5, resId:I
    :goto_52
    iget-object v6, p0, Lcom/android/mms/ui/SlideView$RawAttachmentsExportThread;->this$0:Lcom/android/mms/ui/SlideView;

    #getter for: Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/mms/ui/SlideView;->access$3900(Lcom/android/mms/ui/SlideView;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_5b
    .catchall {:try_start_45 .. :try_end_5b} :catchall_97
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_5b} :catch_73

    move-result-object v2

    .line 1566
    .end local v5           #resId:I
    :cond_5c
    :goto_5c
    :try_start_5c
    iget-object v6, p0, Lcom/android/mms/ui/SlideView$RawAttachmentsExportThread;->this$0:Lcom/android/mms/ui/SlideView;

    #getter for: Lcom/android/mms/ui/SlideView;->mRawAttachmentHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/mms/ui/SlideView;->access$4100(Lcom/android/mms/ui/SlideView;)Landroid/os/Handler;

    move-result-object v6

    new-instance v7, Lcom/android/mms/ui/SlideView$ErrorReasonDisplayer;

    iget-object v8, p0, Lcom/android/mms/ui/SlideView$RawAttachmentsExportThread;->this$0:Lcom/android/mms/ui/SlideView;

    invoke-direct {v7, v8, v2}, Lcom/android/mms/ui/SlideView$ErrorReasonDisplayer;-><init>(Lcom/android/mms/ui/SlideView;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1542
    .end local v2           #errorReason:Ljava/lang/String;
    :cond_6c
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 1557
    .restart local v2       #errorReason:Ljava/lang/String;
    :cond_6f
    const v5, 0x7f0900ed

    goto :goto_52

    .line 1560
    :catch_73
    move-exception v1

    .line 1561
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 1562
    const-string v6, "No space left on device"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5c

    .line 1563
    iget-object v6, p0, Lcom/android/mms/ui/SlideView$RawAttachmentsExportThread;->this$0:Lcom/android/mms/ui/SlideView;

    #getter for: Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/mms/ui/SlideView;->access$4000(Lcom/android/mms/ui/SlideView;)Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f09017e

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_8c
    .catchall {:try_start_5c .. :try_end_8c} :catchall_97

    move-result-object v2

    goto :goto_5c

    .line 1573
    .end local v0           #attach:Lcom/android/mms/model/AttachmentModel;
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #errorReason:Ljava/lang/String;
    :cond_8e
    if-eqz v4, :cond_91

    .line 1574
    :try_start_90
    throw v4
    :try_end_91
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_91} :catch_a4

    .line 1579
    :cond_91
    :goto_91
    iget-object v6, p0, Lcom/android/mms/ui/SlideView$RawAttachmentsExportThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_1b

    .line 1572
    :catchall_97
    move-exception v6

    .line 1573
    if-eqz v4, :cond_9b

    .line 1574
    :try_start_9a
    throw v4
    :try_end_9b
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_9b} :catch_a6

    .line 1579
    :cond_9b
    :goto_9b
    iget-object v7, p0, Lcom/android/mms/ui/SlideView$RawAttachmentsExportThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v6

    .line 1576
    :catch_a1
    move-exception v6

    goto/16 :goto_16

    :catch_a4
    move-exception v6

    goto :goto_91

    :catch_a6
    move-exception v7

    goto :goto_9b
.end method
