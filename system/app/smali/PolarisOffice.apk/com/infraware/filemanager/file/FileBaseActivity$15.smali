.class Lcom/infraware/filemanager/file/FileBaseActivity$15;
.super Ljava/lang/Object;
.source "FileBaseActivity.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/filemanager/file/FileBaseActivity;->getFileByPosition(II)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/filemanager/file/FileBaseActivity;

.field private final synthetic val$x:I

.field private final synthetic val$y:I


# direct methods
.method constructor <init>(Lcom/infraware/filemanager/file/FileBaseActivity;II)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/filemanager/file/FileBaseActivity$15;->this$0:Lcom/infraware/filemanager/file/FileBaseActivity;

    iput p2, p0, Lcom/infraware/filemanager/file/FileBaseActivity$15;->val$x:I

    iput p3, p0, Lcom/infraware/filemanager/file/FileBaseActivity$15;->val$y:I

    .line 1730
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1(Lcom/infraware/filemanager/file/FileBaseActivity$15;)Lcom/infraware/filemanager/file/FileBaseActivity;
    .registers 2
    .parameter

    .prologue
    .line 1730
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity$15;->this$0:Lcom/infraware/filemanager/file/FileBaseActivity;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/infraware/filemanager/file/FileBaseActivity$15;->call()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/String;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-wide/16 v10, 0xa

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 1734
    :try_start_4
    iget-object v3, p0, Lcom/infraware/filemanager/file/FileBaseActivity$15;->this$0:Lcom/infraware/filemanager/file/FileBaseActivity;

    iget-object v4, v3, Lcom/infraware/filemanager/file/FileBaseActivity;->curMode:Ljava/lang/Integer;

    monitor-enter v4
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_94
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_9} :catch_81

    .line 1735
    const-wide/16 v0, 0x0

    .line 1736
    .local v0, delayTime:J
    :try_start_b
    iget-object v3, p0, Lcom/infraware/filemanager/file/FileBaseActivity$15;->this$0:Lcom/infraware/filemanager/file/FileBaseActivity;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v3, Lcom/infraware/filemanager/file/FileBaseActivity;->curMode:Ljava/lang/Integer;

    .line 1737
    iget-object v3, p0, Lcom/infraware/filemanager/file/FileBaseActivity$15;->this$0:Lcom/infraware/filemanager/file/FileBaseActivity;

    new-instance v5, Lcom/infraware/filemanager/file/FileBaseActivity$15$1;

    iget v6, p0, Lcom/infraware/filemanager/file/FileBaseActivity$15;->val$x:I

    iget v7, p0, Lcom/infraware/filemanager/file/FileBaseActivity$15;->val$y:I

    invoke-direct {v5, p0, v6, v7}, Lcom/infraware/filemanager/file/FileBaseActivity$15$1;-><init>(Lcom/infraware/filemanager/file/FileBaseActivity$15;II)V

    invoke-virtual {v3, v5}, Lcom/infraware/filemanager/file/FileBaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1744
    :cond_22
    iget-object v3, p0, Lcom/infraware/filemanager/file/FileBaseActivity$15;->this$0:Lcom/infraware/filemanager/file/FileBaseActivity;

    iget-object v3, v3, Lcom/infraware/filemanager/file/FileBaseActivity;->curFileItem:Lcom/infraware/filemanager/file/FileListItem;

    if-eqz v3, :cond_3e

    .line 1751
    :goto_28
    iget-object v3, p0, Lcom/infraware/filemanager/file/FileBaseActivity$15;->this$0:Lcom/infraware/filemanager/file/FileBaseActivity;

    iget-object v3, v3, Lcom/infraware/filemanager/file/FileBaseActivity;->curFileItem:Lcom/infraware/filemanager/file/FileListItem;

    if-nez v3, :cond_4b

    .line 1752
    monitor-exit v4
    :try_end_2f
    .catchall {:try_start_b .. :try_end_2f} :catchall_7e

    .line 1764
    iget-object v3, p0, Lcom/infraware/filemanager/file/FileBaseActivity$15;->this$0:Lcom/infraware/filemanager/file/FileBaseActivity;

    iput-object v9, v3, Lcom/infraware/filemanager/file/FileBaseActivity;->curFileItem:Lcom/infraware/filemanager/file/FileListItem;

    .line 1765
    iget-object v3, p0, Lcom/infraware/filemanager/file/FileBaseActivity$15;->this$0:Lcom/infraware/filemanager/file/FileBaseActivity;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v3, Lcom/infraware/filemanager/file/FileBaseActivity;->curMode:Ljava/lang/Integer;

    const-string v3, ""

    .end local v0           #delayTime:J
    :goto_3d
    return-object v3

    .line 1745
    .restart local v0       #delayTime:J
    :cond_3e
    const-wide/16 v5, 0xa

    :try_start_40
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    .line 1746
    add-long/2addr v0, v10

    .line 1747
    const-wide/16 v5, 0x12c

    cmp-long v3, v0, v5

    if-ltz v3, :cond_22

    goto :goto_28

    .line 1755
    :cond_4b
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/infraware/filemanager/file/FileBaseActivity$15;->this$0:Lcom/infraware/filemanager/file/FileBaseActivity;

    iget-object v5, v5, Lcom/infraware/filemanager/file/FileBaseActivity;->curFileItem:Lcom/infraware/filemanager/file/FileListItem;

    iget-object v5, v5, Lcom/infraware/filemanager/file/FileListItem;->path:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/infraware/filemanager/file/FileBaseActivity$15;->this$0:Lcom/infraware/filemanager/file/FileBaseActivity;

    iget-object v5, v5, Lcom/infraware/filemanager/file/FileBaseActivity;->curFileItem:Lcom/infraware/filemanager/file/FileListItem;

    invoke-virtual {v5}, Lcom/infraware/filemanager/file/FileListItem;->getFullFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    monitor-exit v4
    :try_end_71
    .catchall {:try_start_40 .. :try_end_71} :catchall_7e

    .line 1764
    iget-object v4, p0, Lcom/infraware/filemanager/file/FileBaseActivity$15;->this$0:Lcom/infraware/filemanager/file/FileBaseActivity;

    iput-object v9, v4, Lcom/infraware/filemanager/file/FileBaseActivity;->curFileItem:Lcom/infraware/filemanager/file/FileListItem;

    .line 1765
    iget-object v4, p0, Lcom/infraware/filemanager/file/FileBaseActivity$15;->this$0:Lcom/infraware/filemanager/file/FileBaseActivity;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v4, Lcom/infraware/filemanager/file/FileBaseActivity;->curMode:Ljava/lang/Integer;

    goto :goto_3d

    .line 1734
    :catchall_7e
    move-exception v3

    :try_start_7f
    monitor-exit v4
    :try_end_80
    .catchall {:try_start_7f .. :try_end_80} :catchall_7e

    :try_start_80
    throw v3
    :try_end_81
    .catchall {:try_start_80 .. :try_end_81} :catchall_94
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_81} :catch_81

    .line 1759
    .end local v0           #delayTime:J
    :catch_81
    move-exception v2

    .line 1760
    .local v2, e:Ljava/lang/Exception;
    :try_start_82
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_85
    .catchall {:try_start_82 .. :try_end_85} :catchall_94

    .line 1764
    iget-object v3, p0, Lcom/infraware/filemanager/file/FileBaseActivity$15;->this$0:Lcom/infraware/filemanager/file/FileBaseActivity;

    iput-object v9, v3, Lcom/infraware/filemanager/file/FileBaseActivity;->curFileItem:Lcom/infraware/filemanager/file/FileListItem;

    .line 1765
    iget-object v3, p0, Lcom/infraware/filemanager/file/FileBaseActivity$15;->this$0:Lcom/infraware/filemanager/file/FileBaseActivity;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v3, Lcom/infraware/filemanager/file/FileBaseActivity;->curMode:Ljava/lang/Integer;

    .line 1761
    const-string v3, ""

    goto :goto_3d

    .line 1763
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_94
    move-exception v3

    .line 1764
    iget-object v4, p0, Lcom/infraware/filemanager/file/FileBaseActivity$15;->this$0:Lcom/infraware/filemanager/file/FileBaseActivity;

    iput-object v9, v4, Lcom/infraware/filemanager/file/FileBaseActivity;->curFileItem:Lcom/infraware/filemanager/file/FileListItem;

    .line 1765
    iget-object v4, p0, Lcom/infraware/filemanager/file/FileBaseActivity$15;->this$0:Lcom/infraware/filemanager/file/FileBaseActivity;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v4, Lcom/infraware/filemanager/file/FileBaseActivity;->curMode:Ljava/lang/Integer;

    .line 1766
    throw v3
.end method
