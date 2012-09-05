.class Lcom/android/mms/ui/MessageOptions$RawAttachmentsExportThread;
.super Ljava/lang/Thread;
.source "MessageOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageOptions;
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

.field final synthetic this$0:Lcom/android/mms/ui/MessageOptions;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/MessageOptions;Ljava/lang/String;Ljava/util/ArrayList;J)V
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
    .line 1548
    .local p3, rawAttachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/AttachmentModel;>;"
    iput-object p1, p0, Lcom/android/mms/ui/MessageOptions$RawAttachmentsExportThread;->this$0:Lcom/android/mms/ui/MessageOptions;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1544
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/mms/ui/MessageOptions$RawAttachmentsExportThread;->mCancelled:Z

    .line 1549
    iput-object p2, p0, Lcom/android/mms/ui/MessageOptions$RawAttachmentsExportThread;->mTargetDir:Ljava/lang/String;

    .line 1550
    iput-object p3, p0, Lcom/android/mms/ui/MessageOptions$RawAttachmentsExportThread;->mRawAttachments:Ljava/util/ArrayList;

    .line 1551
    iput-wide p4, p0, Lcom/android/mms/ui/MessageOptions$RawAttachmentsExportThread;->mMsgId:J

    .line 1552
    iget-object v1, p1, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1554
    .local v0, powerManager:Landroid/os/PowerManager;
    const v1, 0x20000006

    const-string v2, "Mms/MessageOptions"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MessageOptions$RawAttachmentsExportThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1556
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
    .line 1607
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1608
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions$RawAttachmentsExportThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions$RawAttachmentsExportThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1609
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions$RawAttachmentsExportThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1611
    :cond_14
    return-void
.end method

.method public run()V
    .registers 11

    .prologue
    .line 1560
    iget-object v6, p0, Lcom/android/mms/ui/MessageOptions$RawAttachmentsExportThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1561
    const/4 v4, 0x0

    .line 1564
    .local v4, outputStream:Ljava/io/OutputStream;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_7
    :try_start_7
    iget-object v6, p0, Lcom/android/mms/ui/MessageOptions$RawAttachmentsExportThread;->mRawAttachments:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_8a

    .line 1565
    iget-boolean v6, p0, Lcom/android/mms/ui/MessageOptions$RawAttachmentsExportThread;->mCancelled:Z
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_93

    if-eqz v6, :cond_1c

    .line 1595
    if-eqz v4, :cond_16

    .line 1596
    :try_start_15
    throw v4
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_16} :catch_9d

    .line 1601
    :cond_16
    :goto_16
    iget-object v6, p0, Lcom/android/mms/ui/MessageOptions$RawAttachmentsExportThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1603
    :goto_1b
    return-void

    .line 1568
    :cond_1c
    :try_start_1c
    iget-object v6, p0, Lcom/android/mms/ui/MessageOptions$RawAttachmentsExportThread;->mRawAttachments:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/AttachmentModel;

    .line 1570
    .local v0, attach:Lcom/android/mms/model/AttachmentModel;
    const-string v6, "text/plain"

    invoke-virtual {v0}, Lcom/android/mms/model/AttachmentModel;->getContentType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6a

    const-string v6, "application/smil"

    invoke-virtual {v0}, Lcom/android/mms/model/AttachmentModel;->getContentType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6a

    .line 1574
    iget-wide v6, p0, Lcom/android/mms/ui/MessageOptions$RawAttachmentsExportThread;->mMsgId:J
    :try_end_3e
    .catchall {:try_start_1c .. :try_end_3e} :catchall_93

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_6a

    .line 1577
    const/4 v2, 0x0

    .line 1579
    .local v2, errorReason:Ljava/lang/String;
    :try_start_45
    iget-object v6, p0, Lcom/android/mms/ui/MessageOptions$RawAttachmentsExportThread;->this$0:Lcom/android/mms/ui/MessageOptions;

    iget-wide v7, p0, Lcom/android/mms/ui/MessageOptions$RawAttachmentsExportThread;->mMsgId:J

    #calls: Lcom/android/mms/ui/MessageOptions;->copyMedia(JLcom/android/mms/model/AttachmentModel;)Z
    invoke-static {v6, v7, v8, v0}, Lcom/android/mms/ui/MessageOptions;->access$1400(Lcom/android/mms/ui/MessageOptions;JLcom/android/mms/model/AttachmentModel;)Z

    move-result v6

    if-eqz v6, :cond_6d

    const v5, 0x7f0900ec

    .line 1581
    .local v5, resId:I
    :goto_52
    iget-object v6, p0, Lcom/android/mms/ui/MessageOptions$RawAttachmentsExportThread;->this$0:Lcom/android/mms/ui/MessageOptions;

    iget-object v6, v6, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    invoke-virtual {v6, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_59
    .catchall {:try_start_45 .. :try_end_59} :catchall_93
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_59} :catch_71

    move-result-object v2

    .line 1588
    .end local v5           #resId:I
    :cond_5a
    :goto_5a
    :try_start_5a
    iget-object v6, p0, Lcom/android/mms/ui/MessageOptions$RawAttachmentsExportThread;->this$0:Lcom/android/mms/ui/MessageOptions;

    #getter for: Lcom/android/mms/ui/MessageOptions;->mRawAttachmentHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/mms/ui/MessageOptions;->access$1500(Lcom/android/mms/ui/MessageOptions;)Landroid/os/Handler;

    move-result-object v6

    new-instance v7, Lcom/android/mms/ui/MessageOptions$ErrorReasonDisplayer;

    iget-object v8, p0, Lcom/android/mms/ui/MessageOptions$RawAttachmentsExportThread;->this$0:Lcom/android/mms/ui/MessageOptions;

    invoke-direct {v7, v8, v2}, Lcom/android/mms/ui/MessageOptions$ErrorReasonDisplayer;-><init>(Lcom/android/mms/ui/MessageOptions;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1564
    .end local v2           #errorReason:Ljava/lang/String;
    :cond_6a
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 1579
    .restart local v2       #errorReason:Ljava/lang/String;
    :cond_6d
    const v5, 0x7f0900ed

    goto :goto_52

    .line 1582
    :catch_71
    move-exception v1

    .line 1583
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 1584
    const-string v6, "No space left on device"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5a

    .line 1585
    iget-object v6, p0, Lcom/android/mms/ui/MessageOptions$RawAttachmentsExportThread;->this$0:Lcom/android/mms/ui/MessageOptions;

    iget-object v6, v6, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    const v7, 0x7f09017e

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_88
    .catchall {:try_start_5a .. :try_end_88} :catchall_93

    move-result-object v2

    goto :goto_5a

    .line 1595
    .end local v0           #attach:Lcom/android/mms/model/AttachmentModel;
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #errorReason:Ljava/lang/String;
    :cond_8a
    if-eqz v4, :cond_8d

    .line 1596
    :try_start_8c
    throw v4
    :try_end_8d
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_8d} :catch_a0

    .line 1601
    :cond_8d
    :goto_8d
    iget-object v6, p0, Lcom/android/mms/ui/MessageOptions$RawAttachmentsExportThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_1b

    .line 1594
    :catchall_93
    move-exception v6

    .line 1595
    if-eqz v4, :cond_97

    .line 1596
    :try_start_96
    throw v4
    :try_end_97
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_97} :catch_a2

    .line 1601
    :cond_97
    :goto_97
    iget-object v7, p0, Lcom/android/mms/ui/MessageOptions$RawAttachmentsExportThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v6

    .line 1598
    :catch_9d
    move-exception v6

    goto/16 :goto_16

    :catch_a0
    move-exception v6

    goto :goto_8d

    :catch_a2
    move-exception v7

    goto :goto_97
.end method
