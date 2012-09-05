.class public Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler$CatchingWorkerHandler;
.super Landroid/content/AsyncQueryHandler$WorkerHandler;
.source "CallLogQueryHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "CatchingWorkerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;Landroid/os/Looper;)V
    .registers 3
    .parameter
    .parameter "looper"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler$CatchingWorkerHandler;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;

    .line 78
    invoke-direct {p0, p1, p2}, Landroid/content/AsyncQueryHandler$WorkerHandler;-><init>(Landroid/content/AsyncQueryHandler;Landroid/os/Looper;)V

    .line 79
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 85
    :try_start_0
    invoke-super {p0, p1}, Landroid/content/AsyncQueryHandler$WorkerHandler;->handleMessage(Landroid/os/Message;)V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_3} :catch_4
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_3} :catch_d
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_3} :catch_16

    .line 93
    :goto_3
    return-void

    .line 86
    :catch_4
    move-exception v0

    .line 87
    .local v0, e:Landroid/database/sqlite/SQLiteDiskIOException;
    const-string v1, "CallLogQueryHandler"

    const-string v2, "Exception on background worker thread"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 88
    .end local v0           #e:Landroid/database/sqlite/SQLiteDiskIOException;
    :catch_d
    move-exception v0

    .line 89
    .local v0, e:Landroid/database/sqlite/SQLiteFullException;
    const-string v1, "CallLogQueryHandler"

    const-string v2, "Exception on background worker thread"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 90
    .end local v0           #e:Landroid/database/sqlite/SQLiteFullException;
    :catch_16
    move-exception v0

    .line 91
    .local v0, e:Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    const-string v1, "CallLogQueryHandler"

    const-string v2, "Exception on background worker thread"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method
