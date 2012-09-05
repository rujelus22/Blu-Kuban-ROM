.class Lcom/sec/android/app/myfiles/ListAdapterDetail$ImageThumbnailManager$1;
.super Ljava/lang/Object;
.source "ListAdapterDetail.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/myfiles/ListAdapterDetail$ImageThumbnailManager;-><init>(Lcom/sec/android/app/myfiles/ListAdapterDetail;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/myfiles/ListAdapterDetail$ImageThumbnailManager;

.field final synthetic val$this$0:Lcom/sec/android/app/myfiles/ListAdapterDetail;


# direct methods
.method constructor <init>(Lcom/sec/android/app/myfiles/ListAdapterDetail$ImageThumbnailManager;Lcom/sec/android/app/myfiles/ListAdapterDetail;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/sec/android/app/myfiles/ListAdapterDetail$ImageThumbnailManager$1;->this$1:Lcom/sec/android/app/myfiles/ListAdapterDetail$ImageThumbnailManager;

    iput-object p2, p0, Lcom/sec/android/app/myfiles/ListAdapterDetail$ImageThumbnailManager$1;->val$this$0:Lcom/sec/android/app/myfiles/ListAdapterDetail;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 87
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ListAdapterDetail$ImageThumbnailManager$1;->this$1:Lcom/sec/android/app/myfiles/ListAdapterDetail$ImageThumbnailManager;

    #getter for: Lcom/sec/android/app/myfiles/ListAdapterDetail$ImageThumbnailManager;->mDone:Z
    invoke-static {v1}, Lcom/sec/android/app/myfiles/ListAdapterDetail$ImageThumbnailManager;->access$100(Lcom/sec/android/app/myfiles/ListAdapterDetail$ImageThumbnailManager;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 89
    const-string v1, "[MyFiles]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ThumbnailUpdateThread - Stopping update here "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ListAdapterDetail$ImageThumbnailManager$1;->this$1:Lcom/sec/android/app/myfiles/ListAdapterDetail$ImageThumbnailManager;

    #getter for: Lcom/sec/android/app/myfiles/ListAdapterDetail$ImageThumbnailManager;->mLoader:Lcom/sec/android/app/myfiles/ImageLoader;
    invoke-static {v1}, Lcom/sec/android/app/myfiles/ListAdapterDetail$ImageThumbnailManager;->access$200(Lcom/sec/android/app/myfiles/ListAdapterDetail$ImageThumbnailManager;)Lcom/sec/android/app/myfiles/ImageLoader;

    move-result-object v1

    if-eqz v1, :cond_39

    .line 92
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ListAdapterDetail$ImageThumbnailManager$1;->this$1:Lcom/sec/android/app/myfiles/ListAdapterDetail$ImageThumbnailManager;

    #getter for: Lcom/sec/android/app/myfiles/ListAdapterDetail$ImageThumbnailManager;->mLoader:Lcom/sec/android/app/myfiles/ImageLoader;
    invoke-static {v1}, Lcom/sec/android/app/myfiles/ListAdapterDetail$ImageThumbnailManager;->access$200(Lcom/sec/android/app/myfiles/ListAdapterDetail$ImageThumbnailManager;)Lcom/sec/android/app/myfiles/ImageLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/myfiles/ImageLoader;->stop()V

    .line 108
    :cond_39
    return-void

    .line 96
    :cond_3a
    iget-object v2, p0, Lcom/sec/android/app/myfiles/ListAdapterDetail$ImageThumbnailManager$1;->this$1:Lcom/sec/android/app/myfiles/ListAdapterDetail$ImageThumbnailManager;

    monitor-enter v2

    .line 97
    :try_start_3d
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ListAdapterDetail$ImageThumbnailManager$1;->this$1:Lcom/sec/android/app/myfiles/ListAdapterDetail$ImageThumbnailManager;

    #calls: Lcom/sec/android/app/myfiles/ListAdapterDetail$ImageThumbnailManager;->loadNext()V
    invoke-static {v1}, Lcom/sec/android/app/myfiles/ListAdapterDetail$ImageThumbnailManager;->access$300(Lcom/sec/android/app/myfiles/ListAdapterDetail$ImageThumbnailManager;)V

    .line 99
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ListAdapterDetail$ImageThumbnailManager$1;->this$1:Lcom/sec/android/app/myfiles/ListAdapterDetail$ImageThumbnailManager;

    #getter for: Lcom/sec/android/app/myfiles/ListAdapterDetail$ImageThumbnailManager;->mDone:Z
    invoke-static {v1}, Lcom/sec/android/app/myfiles/ListAdapterDetail$ImageThumbnailManager;->access$100(Lcom/sec/android/app/myfiles/ListAdapterDetail$ImageThumbnailManager;)Z
    :try_end_47
    .catchall {:try_start_3d .. :try_end_47} :catchall_53

    move-result v1

    if-nez v1, :cond_51

    .line 101
    :try_start_4a
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ListAdapterDetail$ImageThumbnailManager$1;->this$1:Lcom/sec/android/app/myfiles/ListAdapterDetail$ImageThumbnailManager;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_51
    .catchall {:try_start_4a .. :try_end_51} :catchall_53
    .catch Ljava/lang/InterruptedException; {:try_start_4a .. :try_end_51} :catch_56

    .line 106
    :cond_51
    :goto_51
    :try_start_51
    monitor-exit v2

    goto :goto_0

    :catchall_53
    move-exception v1

    monitor-exit v2
    :try_end_55
    .catchall {:try_start_51 .. :try_end_55} :catchall_53

    throw v1

    .line 102
    :catch_56
    move-exception v0

    .line 103
    .local v0, ex:Ljava/lang/InterruptedException;
    :try_start_57
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_5a
    .catchall {:try_start_57 .. :try_end_5a} :catchall_53

    goto :goto_51
.end method
