.class Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpSendingThread$SaveReceivedFile;
.super Ljava/lang/Thread;
.source "SnsImageCacheHttpMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpSendingThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveReceivedFile"
.end annotation


# instance fields
.field private mException:Ljava/lang/Throwable;

.field final synthetic this$0:Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpSendingThread;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpSendingThread;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter "threadName"

    .prologue
    .line 717
    iput-object p1, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpSendingThread$SaveReceivedFile;->this$0:Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpSendingThread;

    .line 718
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 715
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpSendingThread$SaveReceivedFile;->mException:Ljava/lang/Throwable;

    .line 719
    return-void
.end method


# virtual methods
.method public getException()Ljava/lang/Throwable;
    .registers 2

    .prologue
    .line 722
    iget-object v0, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpSendingThread$SaveReceivedFile;->mException:Ljava/lang/Throwable;

    return-object v0
.end method

.method public run()V
    .registers 4

    .prologue
    .line 726
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpSendingThread$SaveReceivedFile;->mException:Ljava/lang/Throwable;

    .line 728
    :try_start_3
    iget-object v1, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpSendingThread$SaveReceivedFile;->this$0:Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpSendingThread;

    #calls: Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpSendingThread;->saveFile()V
    invoke-static {v1}, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpSendingThread;->access$000(Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpSendingThread;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_8} :catch_9
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_8} :catch_17

    .line 738
    :goto_8
    return-void

    .line 729
    :catch_9
    move-exception v0

    .line 730
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 731
    const-string v1, "SNS_IMAGE_CACHE"

    const-string v2, "SaveReceivedFile : FileSaving Failed : IO EXCEPTION"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 732
    iput-object v0, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpSendingThread$SaveReceivedFile;->mException:Ljava/lang/Throwable;

    goto :goto_8

    .line 733
    .end local v0           #e:Ljava/io/IOException;
    :catch_17
    move-exception v0

    .line 734
    .local v0, e:Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 735
    const-string v1, "SNS_IMAGE_CACHE"

    const-string v2, "SaveReceivedFile : FileSaving Failed : SECURITY EXCEPTION"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 736
    iput-object v0, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpSendingThread$SaveReceivedFile;->mException:Ljava/lang/Throwable;

    goto :goto_8
.end method
