.class abstract Lcom/google/android/picasasync/ImmediateSync$Task;
.super Landroid/os/AsyncTask;
.source "ImmediateSync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/picasasync/ImmediateSync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
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


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "taskId"

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/picasasync/ImmediateSync$Task;->syncResultCode:I

    .line 46
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/picasasync/ImmediateSync$Task;->refCount:I

    .line 49
    iput-object p1, p0, Lcom/google/android/picasasync/ImmediateSync$Task;->taskId:Ljava/lang/String;

    .line 50
    return-void
.end method


# virtual methods
.method addRequester()Z
    .registers 3

    .prologue
    .line 62
    iget v0, p0, Lcom/google/android/picasasync/ImmediateSync$Task;->syncResultCode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    iget v0, p0, Lcom/google/android/picasasync/ImmediateSync$Task;->syncResultCode:I

    if-nez v0, :cond_11

    .line 64
    :cond_9
    iget v0, p0, Lcom/google/android/picasasync/ImmediateSync$Task;->refCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/picasasync/ImmediateSync$Task;->refCount:I

    .line 65
    const/4 v0, 0x1

    .line 67
    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method cancelSync()V
    .registers 2

    .prologue
    .line 53
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/picasasync/ImmediateSync$Task;->syncResultCode:I

    .line 54
    iget-object v0, p0, Lcom/google/android/picasasync/ImmediateSync$Task;->syncContext:Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/picasasync/ImmediateSync$Task;->syncContext:Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;

    invoke-virtual {v0}, Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;->stopSync()V

    .line 55
    :cond_c
    return-void
.end method
