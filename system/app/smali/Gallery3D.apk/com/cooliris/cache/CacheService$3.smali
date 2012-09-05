.class final Lcom/cooliris/cache/CacheService$3;
.super Ljava/lang/Object;
.source "CacheService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cooliris/cache/CacheService;->startNewThumbnailThread(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter

    .prologue
    .line 1734
    iput-object p1, p0, Lcom/cooliris/cache/CacheService$3;->val$context:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1737
    const/16 v1, 0xa

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1739
    sget-boolean v1, Lcom/cooliris/media/Utils;->mUseDualCore:Z

    if-nez v1, :cond_e

    .line 1744
    const-wide/16 v1, 0x7d0

    :try_start_b
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_e} :catch_2b

    .line 1750
    :cond_e
    const-string v1, "TIMECHECK"

    const-string v2, "START thumbnails."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1751
    sget-boolean v1, Lcom/cooliris/media/Utils;->mUseDualCore:Z

    if-eqz v1, :cond_1e

    .line 1752
    iget-object v1, p0, Lcom/cooliris/cache/CacheService$3;->val$context:Landroid/content/Context;

    #calls: Lcom/cooliris/cache/CacheService;->refresh(Landroid/content/Context;)V
    invoke-static {v1}, Lcom/cooliris/cache/CacheService;->access$300(Landroid/content/Context;)V

    .line 1754
    :cond_1e
    iget-object v1, p0, Lcom/cooliris/cache/CacheService$3;->val$context:Landroid/content/Context;

    #calls: Lcom/cooliris/cache/CacheService;->buildThumbnails(Landroid/content/Context;)V
    invoke-static {v1}, Lcom/cooliris/cache/CacheService;->access$400(Landroid/content/Context;)V

    .line 1755
    const-string v1, "TIMECHECK"

    const-string v2, "END thumbnails."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1756
    :goto_2a
    return-void

    .line 1745
    :catch_2b
    move-exception v0

    .line 1746
    .local v0, e:Ljava/lang/InterruptedException;
    goto :goto_2a
.end method
