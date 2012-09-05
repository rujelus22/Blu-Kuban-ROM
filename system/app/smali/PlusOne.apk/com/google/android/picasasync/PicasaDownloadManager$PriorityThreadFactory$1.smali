.class Lcom/google/android/picasasync/PicasaDownloadManager$PriorityThreadFactory$1;
.super Ljava/lang/Thread;
.source "PicasaDownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/picasasync/PicasaDownloadManager$PriorityThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/picasasync/PicasaDownloadManager$PriorityThreadFactory;


# direct methods
.method constructor <init>(Lcom/google/android/picasasync/PicasaDownloadManager$PriorityThreadFactory;Ljava/lang/Runnable;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 297
    iput-object p1, p0, Lcom/google/android/picasasync/PicasaDownloadManager$PriorityThreadFactory$1;->this$0:Lcom/google/android/picasasync/PicasaDownloadManager$PriorityThreadFactory;

    invoke-direct {p0, p2, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 300
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaDownloadManager$PriorityThreadFactory$1;->this$0:Lcom/google/android/picasasync/PicasaDownloadManager$PriorityThreadFactory;

    #getter for: Lcom/google/android/picasasync/PicasaDownloadManager$PriorityThreadFactory;->mPriority:I
    invoke-static {v0}, Lcom/google/android/picasasync/PicasaDownloadManager$PriorityThreadFactory;->access$400(Lcom/google/android/picasasync/PicasaDownloadManager$PriorityThreadFactory;)I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 301
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 302
    return-void
.end method
