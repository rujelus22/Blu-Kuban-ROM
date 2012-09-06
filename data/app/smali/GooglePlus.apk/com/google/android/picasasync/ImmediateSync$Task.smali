.class abstract Lcom/google/android/picasasync/ImmediateSync$Task;
.super Landroid/os/AsyncTask;
.source "ImmediateSync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/picasasync/ImmediateSync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "Task"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public refCount:I

.field public syncContext:Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;

.field public syncResultCode:I

.field public final taskId:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/android/picasasync/ImmediateSync;


# direct methods
.method constructor <init>(Lcom/google/android/picasasync/ImmediateSync;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter "taskId"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/google/android/picasasync/ImmediateSync$Task;->this$0:Lcom/google/android/picasasync/ImmediateSync;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/picasasync/ImmediateSync$Task;->syncResultCode:I

    .line 48
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/picasasync/ImmediateSync$Task;->refCount:I

    .line 51
    iput-object p2, p0, Lcom/google/android/picasasync/ImmediateSync$Task;->taskId:Ljava/lang/String;

    .line 52
    return-void
.end method


# virtual methods
.method addRequester()Z
    .registers 3

    .prologue
    .line 86
    iget v0, p0, Lcom/google/android/picasasync/ImmediateSync$Task;->syncResultCode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    iget v0, p0, Lcom/google/android/picasasync/ImmediateSync$Task;->syncResultCode:I

    if-nez v0, :cond_11

    .line 88
    :cond_9
    iget v0, p0, Lcom/google/android/picasasync/ImmediateSync$Task;->refCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/picasasync/ImmediateSync$Task;->refCount:I

    .line 89
    const/4 v0, 0x1

    .line 91
    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method cancelSync()V
    .registers 2

    .prologue
    .line 55
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/picasasync/ImmediateSync$Task;->syncResultCode:I

    .line 56
    iget-object v0, p0, Lcom/google/android/picasasync/ImmediateSync$Task;->syncContext:Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/picasasync/ImmediateSync$Task;->syncContext:Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;

    invoke-virtual {v0}, Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;->stopSync()V

    .line 57
    :cond_c
    return-void
.end method

.method protected final varargs doInBackground([Ljava/lang/String;)Ljava/lang/Integer;
    .registers 5
    .parameter "args"

    .prologue
    .line 62
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/picasasync/ImmediateSync$Task;->doSync([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 63
    .local v0, result:I
    iget v1, p0, Lcom/google/android/picasasync/ImmediateSync$Task;->syncResultCode:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_f

    .line 64
    iput v0, p0, Lcom/google/android/picasasync/ImmediateSync$Task;->syncResultCode:I

    .line 66
    :cond_f
    iget v1, p0, Lcom/google/android/picasasync/ImmediateSync$Task;->syncResultCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_1b

    move-result-object v1

    .line 68
    iget-object v2, p0, Lcom/google/android/picasasync/ImmediateSync$Task;->this$0:Lcom/google/android/picasasync/ImmediateSync;

    #calls: Lcom/google/android/picasasync/ImmediateSync;->completeTask(Lcom/google/android/picasasync/ImmediateSync$Task;)V
    invoke-static {v2, p0}, Lcom/google/android/picasasync/ImmediateSync;->access$000(Lcom/google/android/picasasync/ImmediateSync;Lcom/google/android/picasasync/ImmediateSync$Task;)V

    return-object v1

    .end local v0           #result:I
    :catchall_1b
    move-exception v1

    iget-object v2, p0, Lcom/google/android/picasasync/ImmediateSync$Task;->this$0:Lcom/google/android/picasasync/ImmediateSync;

    #calls: Lcom/google/android/picasasync/ImmediateSync;->completeTask(Lcom/google/android/picasasync/ImmediateSync$Task;)V
    invoke-static {v2, p0}, Lcom/google/android/picasasync/ImmediateSync;->access$000(Lcom/google/android/picasasync/ImmediateSync;Lcom/google/android/picasasync/ImmediateSync$Task;)V

    throw v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 43
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/picasasync/ImmediateSync$Task;->doInBackground([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected varargs abstract doSync([Ljava/lang/String;)Ljava/lang/Integer;
.end method

.method protected syncInterrupted()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 73
    iget v1, p0, Lcom/google/android/picasasync/ImmediateSync$Task;->syncResultCode:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
