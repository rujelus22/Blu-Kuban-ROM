.class public Lcom/sec/android/app/snsimagecache/SnsImageCacheBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SnsImageCacheBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/snsimagecache/SnsImageCacheBroadcastReceiver$ClearReceivedPhotoRunnable;
    }
.end annotation


# instance fields
.field final RECEIVED_FILE_DIR_NAME:Ljava/lang/String;

.field private final TEMPORARY_DIR_TO_DELETE:Ljava/lang/String;

.field mContentUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 44
    const-string v0, "ReceivedFiles"

    iput-object v0, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheBroadcastReceiver;->RECEIVED_FILE_DIR_NAME:Ljava/lang/String;

    .line 46
    const-string v0, "To_Be_Deleted_"

    iput-object v0, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheBroadcastReceiver;->TEMPORARY_DIR_TO_DELETE:Ljava/lang/String;

    .line 48
    const-string v0, "content://com.sec.android.app.provider.snsimagecache/received_image/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheBroadcastReceiver;->mContentUri:Landroid/net/Uri;

    .line 82
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 14
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 54
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, action:Ljava/lang/String;
    const-string v5, "com.sec.android.app.sns.action.REMOVE_ALL_ACCOUNT"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5f

    .line 57
    const-string v5, "SNS_IMAGE_CACHE"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SnsImageCacheBroadcastReceiver : onReceive() : received~ :action = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheBroadcastReceiver;->mContentUri:Landroid/net/Uri;

    invoke-virtual {v5, v6, v10, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 61
    .local v2, deletedItemCount:I
    const-string v5, "SNS_IMAGE_CACHE"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "clearReceivedPhotoDB : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " row at DB deleted "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    new-instance v3, Lcom/sec/android/app/snsimagecache/SnsImageCacheBroadcastReceiver$ClearReceivedPhotoRunnable;

    invoke-direct {v3, p0, p1}, Lcom/sec/android/app/snsimagecache/SnsImageCacheBroadcastReceiver$ClearReceivedPhotoRunnable;-><init>(Lcom/sec/android/app/snsimagecache/SnsImageCacheBroadcastReceiver;Landroid/content/Context;)V

    .line 65
    .local v3, runnable:Lcom/sec/android/app/snsimagecache/SnsImageCacheBroadcastReceiver$ClearReceivedPhotoRunnable;
    new-instance v4, Ljava/lang/Thread;

    const-string v5, "ClearReceivedPhotoThread"

    invoke-direct {v4, v3, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 66
    .local v4, t:Ljava/lang/Thread;
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 80
    .end local v2           #deletedItemCount:I
    .end local v3           #runnable:Lcom/sec/android/app/snsimagecache/SnsImageCacheBroadcastReceiver$ClearReceivedPhotoRunnable;
    .end local v4           #t:Ljava/lang/Thread;
    :cond_5e
    :goto_5e
    return-void

    .line 69
    :cond_5f
    const-string v5, "com.sec.android.app.sns.action.DEBUG"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5e

    .line 71
    const-string v5, "DebugMode"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 73
    .local v1, debugMode:I
    const-string v5, "SNS_IMAGE_CACHE"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SnsImageCacheBroadcastReceiver : DEBUG - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    if-ne v1, v9, :cond_8b

    .line 76
    invoke-static {v9}, Lcom/sec/android/app/snsimagecache/util/SnsImageCacheUtil;->setDebugMode(Z)V

    goto :goto_5e

    .line 78
    :cond_8b
    invoke-static {v8}, Lcom/sec/android/app/snsimagecache/util/SnsImageCacheUtil;->setDebugMode(Z)V

    goto :goto_5e
.end method
