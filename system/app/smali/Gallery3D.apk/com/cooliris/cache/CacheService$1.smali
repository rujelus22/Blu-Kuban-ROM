.class final Lcom/cooliris/cache/CacheService$1;
.super Ljava/lang/Thread;
.source "CacheService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cooliris/cache/CacheService;->buildThumbnailForId(Landroid/content/Context;Lcom/cooliris/media/DiskCache;JJZIIJ)[B
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$origId:J


# direct methods
.method constructor <init>(Landroid/content/Context;J)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1436
    iput-object p1, p0, Lcom/cooliris/cache/CacheService$1;->val$context:Landroid/content/Context;

    iput-wide p2, p0, Lcom/cooliris/cache/CacheService$1;->val$origId:J

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 1440
    const-wide/16 v1, 0x1388

    :try_start_2
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_5} :catch_11

    .line 1445
    :goto_5
    :try_start_5
    iget-object v1, p0, Lcom/cooliris/cache/CacheService$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-wide v2, p0, Lcom/cooliris/cache/CacheService$1;->val$origId:J

    invoke-static {v1, v2, v3}, Landroid/provider/MediaStore$Video$Thumbnails;->cancelThumbnailRequest(Landroid/content/ContentResolver;J)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_10} :catch_16

    .line 1454
    :goto_10
    return-void

    .line 1441
    :catch_11
    move-exception v0

    .line 1442
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_5

    .line 1451
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_16
    move-exception v0

    .line 1452
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_10
.end method
