.class Lcom/cooliris/media/DiskCacheSEC$1;
.super Ljava/lang/Object;
.source "DiskCacheSEC.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cooliris/media/DiskCacheSEC;->deleteSEC(Ljava/util/HashSet;)V
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
    .line 464
    iput-object p1, p0, Lcom/cooliris/media/DiskCacheSEC$1;->this$0:Lcom/cooliris/media/DiskCacheSEC;

    iput-object p2, p0, Lcom/cooliris/media/DiskCacheSEC$1;->val$set:Ljava/util/HashSet;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 467
    :try_start_0
    iget-object v4, p0, Lcom/cooliris/media/DiskCacheSEC$1;->val$set:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 468
    .local v2, key:Ljava/lang/Long;
    iget-object v4, p0, Lcom/cooliris/media/DiskCacheSEC$1;->this$0:Lcom/cooliris/media/DiskCacheSEC;

    iget-object v4, v4, Lcom/cooliris/media/DiskCache;->mIndexMap:Lcom/cooliris/media/LongSparseArray;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/cooliris/media/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cooliris/media/DiskCache$Record;

    .line 469
    .local v3, record:Lcom/cooliris/media/DiskCache$Record;
    if-eqz v3, :cond_31

    .line 470
    iget-object v4, p0, Lcom/cooliris/media/DiskCacheSEC$1;->this$0:Lcom/cooliris/media/DiskCacheSEC;

    #getter for: Lcom/cooliris/media/DiskCacheSEC;->mFreeList:Lcom/cooliris/media/DiskCacheSEC$FreeList;
    invoke-static {v4}, Lcom/cooliris/media/DiskCacheSEC;->access$000(Lcom/cooliris/media/DiskCacheSEC;)Lcom/cooliris/media/DiskCacheSEC$FreeList;

    move-result-object v4

    iget v5, v3, Lcom/cooliris/media/DiskCache$Record;->chunk:I

    iget v6, v3, Lcom/cooliris/media/DiskCache$Record;->offset:I

    iget v7, v3, Lcom/cooliris/media/DiskCache$Record;->sizeOnDisk:I

    invoke-virtual {v4, v5, v6, v7}, Lcom/cooliris/media/DiskCacheSEC$FreeList;->free(III)V

    .line 472
    :cond_31
    iget-object v4, p0, Lcom/cooliris/media/DiskCacheSEC$1;->this$0:Lcom/cooliris/media/DiskCacheSEC;

    iget-object v4, v4, Lcom/cooliris/media/DiskCache;->mIndexMap:Lcom/cooliris/media/LongSparseArray;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/cooliris/media/LongSparseArray;->remove(J)V

    .line 473
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/16 v6, 0x400

    invoke-static {v4, v5, v6}, Lcom/cooliris/media/UriTexture;->invalidateCache(JI)V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_45} :catch_46

    goto :goto_6

    .line 475
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #key:Ljava/lang/Long;
    .end local v3           #record:Lcom/cooliris/media/DiskCache$Record;
    :catch_46
    move-exception v0

    .line 476
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "DiskCacheSEC"

    const-string v5, "Cache delete set error!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    .end local v0           #e:Ljava/lang/Exception;
    :cond_4e
    return-void
.end method
