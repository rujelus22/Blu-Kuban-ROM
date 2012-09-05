.class Lcom/google/android/apps/books/service/SyncAdapter$SyncContext;
.super Ljava/lang/Object;
.source "SyncService.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/service/SyncAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SyncContext"
.end annotation


# instance fields
.field private final mStorageDirectory:Ljava/io/File;

.field private final mStorageSequenceNumber:Ljava/lang/Integer;

.field final synthetic this$0:Lcom/google/android/apps/books/service/SyncAdapter;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/service/SyncAdapter;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 400
    iput-object p1, p0, Lcom/google/android/apps/books/service/SyncAdapter$SyncContext;->this$0:Lcom/google/android/apps/books/service/SyncAdapter;

    .line 401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 402
    #getter for: Lcom/google/android/apps/books/service/SyncAdapter;->mFileStorageManager:Lcom/google/android/apps/books/common/FileStorageManager;
    invoke-static {p1}, Lcom/google/android/apps/books/service/SyncAdapter;->access$300(Lcom/google/android/apps/books/service/SyncAdapter;)Lcom/google/android/apps/books/common/FileStorageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/books/common/FileStorageManager;->getSequenceNumber()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/service/SyncAdapter$SyncContext;->mStorageSequenceNumber:Ljava/lang/Integer;

    .line 403
    invoke-virtual {p1}, Lcom/google/android/apps/books/service/SyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/books/provider/BooksProvider;->getFileStorageDirectory(Landroid/content/ContentResolver;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/service/SyncAdapter$SyncContext;->mStorageDirectory:Ljava/io/File;

    .line 405
    return-void
.end method


# virtual methods
.method check()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/books/service/SyncAdapter$SyncContextChangedException;
        }
    .end annotation

    .prologue
    .line 410
    iget-object v5, p0, Lcom/google/android/apps/books/service/SyncAdapter$SyncContext;->mStorageSequenceNumber:Ljava/lang/Integer;

    if-eqz v5, :cond_25

    .line 411
    iget-object v5, p0, Lcom/google/android/apps/books/service/SyncAdapter$SyncContext;->this$0:Lcom/google/android/apps/books/service/SyncAdapter;

    #getter for: Lcom/google/android/apps/books/service/SyncAdapter;->mFileStorageManager:Lcom/google/android/apps/books/common/FileStorageManager;
    invoke-static {v5}, Lcom/google/android/apps/books/service/SyncAdapter;->access$300(Lcom/google/android/apps/books/service/SyncAdapter;)Lcom/google/android/apps/books/common/FileStorageManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/apps/books/common/FileStorageManager;->getSequenceNumber()I

    move-result v0

    .line 412
    .local v0, currentSequenceNumber:I
    iget-object v5, p0, Lcom/google/android/apps/books/service/SyncAdapter$SyncContext;->mStorageSequenceNumber:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v0, v5, :cond_25

    .line 413
    const-string v4, "File storage sequence number changed"

    .line 414
    .local v4, message:Ljava/lang/String;
    new-instance v1, Lcom/google/android/apps/books/service/SyncAdapter$SyncContextChangedException;

    const-string v5, "File storage sequence number changed"

    invoke-direct {v1, v5}, Lcom/google/android/apps/books/service/SyncAdapter$SyncContextChangedException;-><init>(Ljava/lang/String;)V

    .line 416
    .local v1, exception:Lcom/google/android/apps/books/service/SyncAdapter$SyncContextChangedException;
    const-string v5, "BooksSync"

    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 417
    throw v1

    .line 420
    .end local v0           #currentSequenceNumber:I
    .end local v1           #exception:Lcom/google/android/apps/books/service/SyncAdapter$SyncContextChangedException;
    .end local v4           #message:Ljava/lang/String;
    :cond_25
    iget-object v5, p0, Lcom/google/android/apps/books/service/SyncAdapter$SyncContext;->mStorageDirectory:Ljava/io/File;

    if-eqz v5, :cond_45

    .line 421
    iget-object v5, p0, Lcom/google/android/apps/books/service/SyncAdapter$SyncContext;->mStorageDirectory:Ljava/io/File;

    invoke-static {v5}, Lcom/google/android/apps/books/util/FileUtils;->freeBytesOnFilesystem(Ljava/io/File;)J

    move-result-wide v2

    .line 422
    .local v2, freeSpace:J
    const-wide/32 v5, 0xdbba0

    cmp-long v5, v2, v5

    if-gez v5, :cond_45

    .line 423
    const-string v4, "Out of space on target filesystem"

    .line 424
    .restart local v4       #message:Ljava/lang/String;
    new-instance v1, Lcom/google/android/apps/books/service/SyncAdapter$SyncContextChangedException;

    const-string v5, "Out of space on target filesystem"

    invoke-direct {v1, v5}, Lcom/google/android/apps/books/service/SyncAdapter$SyncContextChangedException;-><init>(Ljava/lang/String;)V

    .line 426
    .restart local v1       #exception:Lcom/google/android/apps/books/service/SyncAdapter$SyncContextChangedException;
    const-string v5, "BooksSync"

    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 427
    throw v1

    .line 430
    .end local v1           #exception:Lcom/google/android/apps/books/service/SyncAdapter$SyncContextChangedException;
    .end local v2           #freeSpace:J
    .end local v4           #message:Ljava/lang/String;
    :cond_45
    return-void
.end method
