.class Lcom/google/android/picasastore/UrlDownloader$PriorityThreadFactory$1;
.super Ljava/lang/Thread;
.source "UrlDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/picasastore/UrlDownloader$PriorityThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/picasastore/UrlDownloader$PriorityThreadFactory;


# direct methods
.method constructor <init>(Lcom/google/android/picasastore/UrlDownloader$PriorityThreadFactory;Ljava/lang/Runnable;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 318
    iput-object p1, p0, Lcom/google/android/picasastore/UrlDownloader$PriorityThreadFactory$1;->this$0:Lcom/google/android/picasastore/UrlDownloader$PriorityThreadFactory;

    invoke-direct {p0, p2, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 321
    iget-object v0, p0, Lcom/google/android/picasastore/UrlDownloader$PriorityThreadFactory$1;->this$0:Lcom/google/android/picasastore/UrlDownloader$PriorityThreadFactory;

    #getter for: Lcom/google/android/picasastore/UrlDownloader$PriorityThreadFactory;->mPriority:I
    invoke-static {v0}, Lcom/google/android/picasastore/UrlDownloader$PriorityThreadFactory;->access$400(Lcom/google/android/picasastore/UrlDownloader$PriorityThreadFactory;)I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 322
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 323
    return-void
.end method
