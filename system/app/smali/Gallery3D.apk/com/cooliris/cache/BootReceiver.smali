.class public Lcom/cooliris/cache/BootReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BootReceiver.java"


# static fields
.field private static mBad_Removal:Z

.field private static mListenersInitialized:Z

.field private static mMounted:Z


# instance fields
.field private final mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 39
    sput-boolean v0, Lcom/cooliris/cache/BootReceiver;->mMounted:Z

    .line 43
    sput-boolean v0, Lcom/cooliris/cache/BootReceiver;->mListenersInitialized:Z

    .line 45
    sput-boolean v0, Lcom/cooliris/cache/BootReceiver;->mBad_Removal:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 41
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/cooliris/cache/BootReceiver;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 16
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 54
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, action:Ljava/lang/String;
    const-string v10, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_74

    .line 57
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v7

    .line 58
    .local v7, path:Ljava/lang/String;
    const-string v10, "BootReceiver"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ACTION_MEDIA_SCANNER_FINISHED: path = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    const-string v10, "BootReceiver"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ImageManager.hasStorage()"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Lcom/cooliris/media/ImageManager;->hasStorage()Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-boolean v12, Lcom/cooliris/cache/BootReceiver;->mMounted:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const-string v10, "/system/media"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5e

    .line 61
    const-string v10, "BootReceiver"

    const-string v11, "Ignore first ACTION_MEDIA_SCANNER_FINISHED"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    .end local v7           #path:Ljava/lang/String;
    :cond_5d
    :goto_5d
    return-void

    .line 64
    .restart local v7       #path:Ljava/lang/String;
    :cond_5e
    invoke-static {}, Lcom/cooliris/cache/CacheService;->checkLowStorageforCacheService()Z

    move-result v10

    if-eqz v10, :cond_6c

    .line 65
    invoke-static {}, Lcom/cooliris/cache/CacheService;->markDirty()V

    .line 66
    const/4 v10, 0x1

    invoke-static {p1, v10}, Lcom/cooliris/cache/CacheService;->startCache(Landroid/content/Context;Z)V

    goto :goto_5d

    .line 68
    :cond_6c
    const-string v10, "BootReceiver"

    const-string v11, "skip startCache as lowStorage"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5d

    .line 71
    .end local v7           #path:Ljava/lang/String;
    :cond_74
    const-string v10, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_cd

    .line 72
    invoke-static {}, Lcom/cooliris/media/ImageManager;->hasStorage()Z

    move-result v10

    if-eqz v10, :cond_c5

    .line 73
    const-string v10, "BootReceiver"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "MOUNTED: mListenersInitialized = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-boolean v12, Lcom/cooliris/cache/BootReceiver;->mListenersInitialized:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    sget-boolean v10, Lcom/cooliris/cache/BootReceiver;->mListenersInitialized:Z

    if-nez v10, :cond_5d

    .line 75
    const/4 v10, 0x1

    sput-boolean v10, Lcom/cooliris/cache/BootReceiver;->mMounted:Z

    .line 77
    const/4 v10, 0x1

    sput-boolean v10, Lcom/cooliris/cache/BootReceiver;->mListenersInitialized:Z

    .line 78
    iget-object v5, p0, Lcom/cooliris/cache/BootReceiver;->mHandler:Landroid/os/Handler;

    .line 79
    .local v5, handler:Landroid/os/Handler;
    new-instance v6, Lcom/cooliris/cache/BootReceiver$1;

    invoke-direct {v6, p0, v5}, Lcom/cooliris/cache/BootReceiver$1;-><init>(Lcom/cooliris/cache/BootReceiver;Landroid/os/Handler;)V

    .line 93
    .local v6, localObserver:Landroid/database/ContentObserver;
    sget-object v8, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 94
    .local v8, uriImages:Landroid/net/Uri;
    sget-object v9, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 95
    .local v9, uriVideos:Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 96
    .local v3, cr:Landroid/content/ContentResolver;
    const/4 v10, 0x0

    invoke-virtual {v3, v8, v10, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 97
    const/4 v10, 0x0

    invoke-virtual {v3, v9, v10, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 98
    const-string v10, "BootReceiver"

    const-string v11, "registerContentObserver"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5d

    .line 101
    .end local v3           #cr:Landroid/content/ContentResolver;
    .end local v5           #handler:Landroid/os/Handler;
    .end local v6           #localObserver:Landroid/database/ContentObserver;
    .end local v8           #uriImages:Landroid/net/Uri;
    .end local v9           #uriVideos:Landroid/net/Uri;
    :cond_c5
    const-string v10, "BootReceiver"

    const-string v11, "Internal SD removed"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5d

    .line 103
    :cond_cd
    const-string v10, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_ec

    .line 104
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 105
    .local v4, fileUri:Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-static {v10, v4}, Lcom/cooliris/media/Utils;->getBucketIdFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)J

    move-result-wide v1

    .line 106
    .local v1, bucketId:J
    invoke-static {v1, v2}, Lcom/cooliris/cache/CacheService;->isPresentInCache(J)Z

    move-result v10

    if-nez v10, :cond_5d

    .line 107
    invoke-static {}, Lcom/cooliris/cache/CacheService;->markDirty()V

    goto/16 :goto_5d

    .line 109
    .end local v1           #bucketId:J
    .end local v4           #fileUri:Landroid/net/Uri;
    :cond_ec
    const-string v10, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_fd

    .line 111
    sget-boolean v10, Lcom/cooliris/cache/BootReceiver;->mBad_Removal:Z

    if-eqz v10, :cond_5d

    .line 112
    const/4 v10, 0x0

    sput-boolean v10, Lcom/cooliris/cache/BootReceiver;->mBad_Removal:Z

    goto/16 :goto_5d

    .line 126
    :cond_fd
    const-string v10, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_114

    .line 127
    invoke-static {}, Lcom/cooliris/cache/CacheService;->endCache()V

    .line 128
    invoke-static {}, Lcom/cooliris/media/DiskCacheSEC;->endCache()V

    .line 129
    const-string v10, "BootReceiver"

    const-string v11, "Shutdown Cache service."

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5d

    .line 130
    :cond_114
    const-string v10, "android.intent.action.MEDIA_THUMBWORKER_SUSPEND"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5d

    .line 131
    const-string v10, "BootReceiver"

    const-string v11, "MEDIA_THUMBWORKER_SUSPEND action received!"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-static {}, Lcom/cooliris/cache/CacheService;->endCache()V

    goto/16 :goto_5d
.end method
