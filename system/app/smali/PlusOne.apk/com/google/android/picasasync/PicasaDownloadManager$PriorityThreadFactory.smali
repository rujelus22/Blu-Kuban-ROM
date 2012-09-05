.class Lcom/google/android/picasasync/PicasaDownloadManager$PriorityThreadFactory;
.super Ljava/lang/Object;
.source "PicasaDownloadManager.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/picasasync/PicasaDownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PriorityThreadFactory"
.end annotation


# instance fields
.field private final mName:Ljava/lang/String;

.field private final mNumber:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mPriority:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .parameter "name"
    .parameter "priority"

    .prologue
    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 287
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/google/android/picasasync/PicasaDownloadManager$PriorityThreadFactory;->mNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 291
    iput-object p1, p0, Lcom/google/android/picasasync/PicasaDownloadManager$PriorityThreadFactory;->mName:Ljava/lang/String;

    .line 292
    iput p2, p0, Lcom/google/android/picasasync/PicasaDownloadManager$PriorityThreadFactory;->mPriority:I

    .line 293
    return-void
.end method

.method static synthetic access$400(Lcom/google/android/picasasync/PicasaDownloadManager$PriorityThreadFactory;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 285
    iget v0, p0, Lcom/google/android/picasasync/PicasaDownloadManager$PriorityThreadFactory;->mPriority:I

    return v0
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 5
    .parameter "r"

    .prologue
    .line 297
    new-instance v0, Lcom/google/android/picasasync/PicasaDownloadManager$PriorityThreadFactory$1;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/android/picasasync/PicasaDownloadManager$PriorityThreadFactory;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/picasasync/PicasaDownloadManager$PriorityThreadFactory;->mNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/picasasync/PicasaDownloadManager$PriorityThreadFactory$1;-><init>(Lcom/google/android/picasasync/PicasaDownloadManager$PriorityThreadFactory;Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0
.end method
