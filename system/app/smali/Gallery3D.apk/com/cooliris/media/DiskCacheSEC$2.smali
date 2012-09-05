.class Lcom/cooliris/media/DiskCacheSEC$2;
.super Ljava/lang/Object;
.source "DiskCacheSEC.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cooliris/media/DiskCacheSEC;->deleteHiresSEC(Ljava/util/HashSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cooliris/media/DiskCacheSEC;

.field final synthetic val$set:Ljava/util/HashSet;


# direct methods
.method constructor <init>(Lcom/cooliris/media/DiskCacheSEC;Ljava/util/HashSet;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 486
    iput-object p1, p0, Lcom/cooliris/media/DiskCacheSEC$2;->this$0:Lcom/cooliris/media/DiskCacheSEC;

    iput-object p2, p0, Lcom/cooliris/media/DiskCacheSEC$2;->val$set:Ljava/util/HashSet;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 488
    const/16 v3, 0xa

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 490
    :try_start_5
    iget-object v3, p0, Lcom/cooliris/media/DiskCacheSEC$2;->val$set:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 491
    .local v2, key:Ljava/lang/Long;
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 505
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #key:Ljava/lang/Long;
    :cond_1d
    :goto_1d
    return-void

    .line 495
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #key:Ljava/lang/Long;
    :cond_1e
    sget-boolean v3, Lcom/cooliris/media/Utils;->mUseXiv:Z

    if-eqz v3, :cond_33

    .line 496
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/quramsoft/xiv/XIVUtils;->invalidateCache(J)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_29} :catch_2a

    goto :goto_b

    .line 502
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #key:Ljava/lang/Long;
    :catch_2a
    move-exception v0

    .line 503
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "DiskCacheSEC"

    const-string v4, "Cache Hire Image delete error!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    .line 498
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #key:Ljava/lang/Long;
    :cond_33
    :try_start_33
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const/16 v5, 0x400

    invoke-static {v3, v4, v5}, Lcom/cooliris/media/UriTexture;->invalidateCache(JI)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_3c} :catch_2a

    goto :goto_b
.end method
