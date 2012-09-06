.class final Lcom/google/android/music/download/DownloadQueue$DownloadTaskComparator;
.super Ljava/lang/Object;
.source "DownloadQueue.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/download/DownloadQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DownloadTaskComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/android/music/download/DownloadTask;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/download/DownloadQueue;


# direct methods
.method private constructor <init>(Lcom/google/android/music/download/DownloadQueue;)V
    .registers 2
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/google/android/music/download/DownloadQueue$DownloadTaskComparator;->this$0:Lcom/google/android/music/download/DownloadQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/music/download/DownloadQueue;Lcom/google/android/music/download/DownloadQueue$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/google/android/music/download/DownloadQueue$DownloadTaskComparator;-><init>(Lcom/google/android/music/download/DownloadQueue;)V

    return-void
.end method


# virtual methods
.method public compare(Lcom/google/android/music/download/DownloadTask;Lcom/google/android/music/download/DownloadTask;)I
    .registers 10
    .parameter "lhs"
    .parameter "rhs"

    .prologue
    .line 53
    invoke-interface {p1}, Lcom/google/android/music/download/DownloadTask;->getDownloadRequest()Lcom/google/android/music/download/DownloadRequest;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/music/download/DownloadRequest;->getPriority()I

    move-result v3

    invoke-interface {p2}, Lcom/google/android/music/download/DownloadTask;->getDownloadRequest()Lcom/google/android/music/download/DownloadRequest;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/music/download/DownloadRequest;->getPriority()I

    move-result v4

    sub-int v1, v3, v4

    .line 54
    .local v1, priorityDiff:I
    if-eqz v1, :cond_15

    .line 67
    .end local v1           #priorityDiff:I
    :goto_14
    return v1

    .line 58
    .restart local v1       #priorityDiff:I
    :cond_15
    iget-object v3, p0, Lcom/google/android/music/download/DownloadQueue$DownloadTaskComparator;->this$0:Lcom/google/android/music/download/DownloadQueue;

    #getter for: Lcom/google/android/music/download/DownloadQueue;->mTaskSubmissionOrderMap:Ljava/util/Map;
    invoke-static {v3}, Lcom/google/android/music/download/DownloadQueue;->access$000(Lcom/google/android/music/download/DownloadQueue;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 59
    .local v0, lhsSubmissionOrder:Ljava/lang/Long;
    if-nez v0, :cond_2b

    .line 60
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Failed to find submission order for the lhs task"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 62
    :cond_2b
    iget-object v3, p0, Lcom/google/android/music/download/DownloadQueue$DownloadTaskComparator;->this$0:Lcom/google/android/music/download/DownloadQueue;

    #getter for: Lcom/google/android/music/download/DownloadQueue;->mTaskSubmissionOrderMap:Ljava/util/Map;
    invoke-static {v3}, Lcom/google/android/music/download/DownloadQueue;->access$000(Lcom/google/android/music/download/DownloadQueue;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 63
    .local v2, rhsSubmissionOrder:Ljava/lang/Long;
    if-nez v2, :cond_41

    .line 64
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Failed to find submission order for the rhs task"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 67
    :cond_41
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v3, v5

    long-to-int v1, v3

    goto :goto_14
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    check-cast p1, Lcom/google/android/music/download/DownloadTask;

    .end local p1
    check-cast p2, Lcom/google/android/music/download/DownloadTask;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/music/download/DownloadQueue$DownloadTaskComparator;->compare(Lcom/google/android/music/download/DownloadTask;Lcom/google/android/music/download/DownloadTask;)I

    move-result v0

    return v0
.end method
