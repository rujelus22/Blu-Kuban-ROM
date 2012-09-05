.class Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API$ActualExportThread;
.super Landroid/os/AsyncTask;
.source "MediaShare.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActualExportThread"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private mCanceled:Z

.field private mCompleted:Z

.field private mExportStarted:Z

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field final synthetic this$1:Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;


# direct methods
.method public constructor <init>(Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;)V
    .registers 5
    .parameter

    .prologue
    .line 585
    iput-object p1, p0, Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API$ActualExportThread;->this$1:Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 586
    iget-object v1, p1, Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;->this$0:Lcom/lifevibes/trimapp/util/MediaShare;

    iget-object v1, v1, Lcom/lifevibes/trimapp/util/MediaShare;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 587
    .local v0, powerManager:Landroid/os/PowerManager;
    const v1, 0x20000006

    const-string v2, "TrimApp_MS"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API$ActualExportThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 592
    return-void
.end method

.method static synthetic access$302(Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API$ActualExportThread;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 578
    iput-boolean p1, p0, Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API$ActualExportThread;->mExportStarted:Z

    return p1
.end method

.method static synthetic access$400(Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API$ActualExportThread;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 578
    iget-boolean v0, p0, Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API$ActualExportThread;->mCanceled:Z

    return v0
.end method

.method static synthetic access$602(Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API$ActualExportThread;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 578
    iput-boolean p1, p0, Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API$ActualExportThread;->mCompleted:Z

    return p1
.end method


# virtual methods
.method public cancel()V
    .registers 5

    .prologue
    .line 684
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API$ActualExportThread;->mCanceled:Z

    .line 686
    iget-boolean v1, p0, Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API$ActualExportThread;->mExportStarted:Z

    if-eqz v1, :cond_49

    .line 688
    :try_start_7
    const-string v1, "TrimApp_MS"

    const-string v2, "**** VideoEditorImpl cancelExport() call."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    iget-object v1, p0, Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API$ActualExportThread;->this$1:Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;

    #getter for: Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;->mVideoEditorImpl:Lcom/lifevibes/videoeditor/VideoEditorImpl;
    invoke-static {v1}, Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;->access$700(Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;)Lcom/lifevibes/videoeditor/VideoEditorImpl;

    move-result-object v1

    iget-object v2, p0, Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API$ActualExportThread;->this$1:Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;

    #getter for: Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;->mOutput:Ljava/lang/String;
    invoke-static {v2}, Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;->access$200(Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lifevibes/videoeditor/VideoEditorImpl;->cancelExport(Ljava/lang/String;)V

    .line 690
    const-string v1, "TrimApp_MS"

    const-string v2, "**** VideoEditorImpl cancelExport() done."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_24} :catch_4a
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_24} :catch_68

    .line 697
    :goto_24
    iget-object v1, p0, Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API$ActualExportThread;->this$1:Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;

    #getter for: Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;->mVideoEditorImpl:Lcom/lifevibes/videoeditor/VideoEditorImpl;
    invoke-static {v1}, Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;->access$700(Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;)Lcom/lifevibes/videoeditor/VideoEditorImpl;

    move-result-object v1

    if-eqz v1, :cond_49

    .line 698
    const-string v1, "TrimApp_MS"

    const-string v2, "**** Trim VideoEditorImpl release() call."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    iget-object v1, p0, Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API$ActualExportThread;->this$1:Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;

    #getter for: Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;->mVideoEditorImpl:Lcom/lifevibes/videoeditor/VideoEditorImpl;
    invoke-static {v1}, Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;->access$700(Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;)Lcom/lifevibes/videoeditor/VideoEditorImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lifevibes/videoeditor/VideoEditorImpl;->release()V

    .line 700
    const-string v1, "TrimApp_MS"

    const-string v2, "**** Trim VideoEditorImpl release() done."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    iget-object v1, p0, Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API$ActualExportThread;->this$1:Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;

    const/4 v2, 0x0

    #setter for: Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;->mVideoEditorImpl:Lcom/lifevibes/videoeditor/VideoEditorImpl;
    invoke-static {v1, v2}, Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;->access$702(Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;Lcom/lifevibes/videoeditor/VideoEditorImpl;)Lcom/lifevibes/videoeditor/VideoEditorImpl;

    .line 704
    :cond_49
    return-void

    .line 691
    :catch_4a
    move-exception v0

    .line 692
    .local v0, ex:Ljava/lang/IllegalStateException;
    const-string v1, "TrimApp_MS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VideoEditorImpl cancelExport()\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    .line 693
    .end local v0           #ex:Ljava/lang/IllegalStateException;
    :catch_68
    move-exception v0

    .line 694
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v1, "TrimApp_MS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VideoEditorImpl cancelExport()\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .registers 12
    .parameter "args"

    .prologue
    const/4 v9, 0x0

    const/4 v6, 0x0

    .line 597
    iget-object v5, p0, Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API$ActualExportThread;->this$1:Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;

    #getter for: Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;->mListener:Lcom/lifevibes/trimapp/util/MediaShare$MediaShareListener;
    invoke-static {v5}, Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;->access$100(Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;)Lcom/lifevibes/trimapp/util/MediaShare$MediaShareListener;

    move-result-object v5

    if-eqz v5, :cond_12

    iget-object v5, p0, Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API$ActualExportThread;->this$1:Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;

    #getter for: Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;->mOutput:Ljava/lang/String;
    invoke-static {v5}, Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;->access$200(Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_14

    :cond_12
    move-object v5, v6

    .line 664
    :goto_13
    return-object v5

    .line 601
    :cond_14
    const/4 v4, 0x1

    .line 602
    .local v4, shouldFinish:Z
    iget-object v5, p0, Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API$ActualExportThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 603
    iget-object v5, p0, Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API$ActualExportThread;->this$1:Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;

    const/4 v7, 0x2

    iput v7, v5, Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;->mTrimmingStatus:I

    .line 606
    :try_start_1f
    const-string v5, "TrimApp_MS"

    const-string v7, "**** VideoEditorImpl export() call."

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    iget-object v5, p0, Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API$ActualExportThread;->this$1:Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;

    #getter for: Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;->mVideoEditorImpl:Lcom/lifevibes/videoeditor/VideoEditorImpl;
    invoke-static {v5}, Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;->access$700(Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;)Lcom/lifevibes/videoeditor/VideoEditorImpl;

    move-result-object v5

    iget-object v7, p0, Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API$ActualExportThread;->this$1:Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;

    #getter for: Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;->mOutput:Ljava/lang/String;
    invoke-static {v7}, Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;->access$200(Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API$ActualExportThread$1;

    invoke-direct {v8, p0}, Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API$ActualExportThread$1;-><init>(Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API$ActualExportThread;)V

    invoke-virtual {v5, v7, v8}, Lcom/lifevibes/videoeditor/VideoEditorImpl;->export(Ljava/lang/String;Lcom/lifevibes/videoeditor/VideoEditor$ExportProgressListener;)V

    .line 629
    const/4 v4, 0x0

    .line 630
    iget-object v5, p0, Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API$ActualExportThread;->this$1:Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;

    const/4 v7, 0x3

    iput v7, v5, Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;->mTrimmingStatus:I

    .line 632
    const-string v5, "TrimApp_MS"

    const-string v7, "**** VideoEditorImpl export() done."

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_47
    .catchall {:try_start_1f .. :try_end_47} :catchall_77
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1f .. :try_end_47} :catch_59
    .catch Ljava/lang/IllegalStateException; {:try_start_1f .. :try_end_47} :catch_83
    .catch Ljava/lang/RuntimeException; {:try_start_1f .. :try_end_47} :catch_a1
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_47} :catch_f7

    .line 653
    :cond_47
    :goto_47
    if-eqz v4, :cond_116

    .line 655
    const/4 v5, -0x1

    :try_start_4a
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_77

    move-result-object v5

    .line 658
    iget-object v7, p0, Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API$ActualExportThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 659
    iget-object v7, p0, Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API$ActualExportThread;->this$1:Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;

    #setter for: Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;->mExportThread:Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API$ActualExportThread;
    invoke-static {v7, v6}, Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;->access$802(Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API$ActualExportThread;)Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API$ActualExportThread;

    goto :goto_13

    .line 633
    :catch_59
    move-exception v1

    .line 634
    .local v1, ex:Ljava/lang/IllegalArgumentException;
    :try_start_5a
    const-string v5, "TrimApp_MS"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "VideoEditorImpl export()\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_76
    .catchall {:try_start_5a .. :try_end_76} :catchall_77

    goto :goto_47

    .line 658
    .end local v1           #ex:Ljava/lang/IllegalArgumentException;
    :catchall_77
    move-exception v5

    iget-object v7, p0, Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API$ActualExportThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 659
    iget-object v7, p0, Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API$ActualExportThread;->this$1:Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;

    #setter for: Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;->mExportThread:Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API$ActualExportThread;
    invoke-static {v7, v6}, Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;->access$802(Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API$ActualExportThread;)Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API$ActualExportThread;

    throw v5

    .line 635
    :catch_83
    move-exception v1

    .line 636
    .local v1, ex:Ljava/lang/IllegalStateException;
    :try_start_84
    const-string v5, "TrimApp_MS"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "VideoEditorImpl export()\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_47

    .line 637
    .end local v1           #ex:Ljava/lang/IllegalStateException;
    :catch_a1
    move-exception v1

    .line 638
    .local v1, ex:Ljava/lang/RuntimeException;
    const-string v5, "TrimApp_MS"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "VideoEditorImpl export()\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "="

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_c7
    .catchall {:try_start_84 .. :try_end_c7} :catchall_77

    move-result-object v3

    .line 640
    .local v3, msgItem:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 642
    .local v0, code:I
    :try_start_c9
    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_d1
    .catchall {:try_start_c9 .. :try_end_d1} :catchall_77
    .catch Ljava/lang/NumberFormatException; {:try_start_c9 .. :try_end_d1} :catch_ee

    move-result v0

    .line 647
    :goto_d2
    const v5, 0x41100001

    if-eq v0, v5, :cond_dc

    const v5, -0x7e71fff9

    if-ne v0, v5, :cond_47

    .line 648
    :cond_dc
    const/16 v5, 0x88

    :try_start_de
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_e1
    .catchall {:try_start_de .. :try_end_e1} :catchall_77

    move-result-object v5

    .line 658
    iget-object v7, p0, Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API$ActualExportThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 659
    iget-object v7, p0, Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API$ActualExportThread;->this$1:Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;

    #setter for: Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;->mExportThread:Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API$ActualExportThread;
    invoke-static {v7, v6}, Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;->access$802(Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API$ActualExportThread;)Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API$ActualExportThread;

    goto/16 :goto_13

    .line 643
    :catch_ee
    move-exception v2

    .line 644
    .local v2, ex2:Ljava/lang/NumberFormatException;
    :try_start_ef
    const-string v5, "TrimApp_MS"

    const-string v7, "Integer.parseInt() NumberFormatException"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d2

    .line 650
    .end local v0           #code:I
    .end local v1           #ex:Ljava/lang/RuntimeException;
    .end local v2           #ex2:Ljava/lang/NumberFormatException;
    .end local v3           #msgItem:[Ljava/lang/String;
    :catch_f7
    move-exception v1

    .line 651
    .local v1, ex:Ljava/io/IOException;
    const-string v5, "TrimApp_MS"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "VideoEditorImpl export()\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_114
    .catchall {:try_start_ef .. :try_end_114} :catchall_77

    goto/16 :goto_47

    .line 658
    .end local v1           #ex:Ljava/io/IOException;
    :cond_116
    iget-object v5, p0, Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API$ActualExportThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 659
    iget-object v5, p0, Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API$ActualExportThread;->this$1:Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;

    #setter for: Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;->mExportThread:Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API$ActualExportThread;
    invoke-static {v5, v6}, Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;->access$802(Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API$ActualExportThread;)Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API$ActualExportThread;

    .line 661
    iget-boolean v5, p0, Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API$ActualExportThread;->mCompleted:Z

    if-eqz v5, :cond_12d

    .line 662
    iget-object v5, p0, Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API$ActualExportThread;->this$1:Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;

    #getter for: Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;->mListener:Lcom/lifevibes/trimapp/util/MediaShare$MediaShareListener;
    invoke-static {v5}, Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;->access$100(Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;)Lcom/lifevibes/trimapp/util/MediaShare$MediaShareListener;

    move-result-object v5

    invoke-interface {v5, v9}, Lcom/lifevibes/trimapp/util/MediaShare$MediaShareListener;->onCompletion(I)V

    .line 664
    :cond_12d
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto/16 :goto_13
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 578
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API$ActualExportThread;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .registers 5
    .parameter "result"

    .prologue
    const/4 v2, 0x0

    .line 670
    iget-object v0, p0, Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API$ActualExportThread;->this$1:Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;

    iput v2, v0, Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;->mTrimmingStatus:I

    .line 671
    iget-object v0, p0, Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API$ActualExportThread;->this$1:Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;

    const/4 v1, 0x0

    #setter for: Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;->mExportThread:Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API$ActualExportThread;
    invoke-static {v0, v1}, Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;->access$802(Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API$ActualExportThread;)Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API$ActualExportThread;

    .line 672
    iget-object v0, p0, Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API$ActualExportThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API$ActualExportThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 673
    iget-object v0, p0, Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API$ActualExportThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 675
    :cond_1c
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_2f

    .line 676
    iget-object v0, p0, Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API$ActualExportThread;->this$1:Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;

    #getter for: Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;->mListener:Lcom/lifevibes/trimapp/util/MediaShare$MediaShareListener;
    invoke-static {v0}, Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;->access$100(Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;)Lcom/lifevibes/trimapp/util/MediaShare$MediaShareListener;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v2, v1}, Lcom/lifevibes/trimapp/util/MediaShare$MediaShareListener;->onError(II)V

    .line 679
    :cond_2f
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 680
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 578
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API$ActualExportThread;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
