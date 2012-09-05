.class Lcom/cooliris/media/DiskCacheSEC$DiskList;
.super Ljava/lang/Object;
.source "DiskCacheSEC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cooliris/media/DiskCacheSEC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DiskList"
.end annotation


# instance fields
.field private mDisks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/cooliris/media/DiskCacheSEC;


# direct methods
.method constructor <init>(Lcom/cooliris/media/DiskCacheSEC;)V
    .registers 3
    .parameter

    .prologue
    .line 303
    iput-object p1, p0, Lcom/cooliris/media/DiskCacheSEC$DiskList;->this$0:Lcom/cooliris/media/DiskCacheSEC;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 304
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/cooliris/media/DiskCacheSEC$DiskList;->mDisks:Ljava/util/HashMap;

    .line 305
    return-void
.end method


# virtual methods
.method public add(IJ)V
    .registers 7
    .parameter "id"
    .parameter "mountedTime"

    .prologue
    .line 308
    if-nez p1, :cond_3

    .line 316
    :cond_2
    :goto_2
    return-void

    .line 311
    :cond_3
    iget-object v0, p0, Lcom/cooliris/media/DiskCacheSEC$DiskList;->mDisks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/cooliris/media/DiskCacheSEC$DiskList;->mDisks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_2

    .line 315
    :cond_23
    iget-object v0, p0, Lcom/cooliris/media/DiskCacheSEC$DiskList;->mDisks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method public getDiskIds()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 386
    iget-object v0, p0, Lcom/cooliris/media/DiskCacheSEC$DiskList;->mDisks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getExpireds()Ljava/util/HashSet;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 349
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 350
    .local v3, now:J
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 352
    .local v0, expireds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lcom/cooliris/media/DiskCacheSEC$DiskList;->update()V

    .line 355
    iget-object v6, p0, Lcom/cooliris/media/DiskCacheSEC$DiskList;->mDisks:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_16
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_83

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 356
    .local v2, id:I
    iget-object v6, p0, Lcom/cooliris/media/DiskCacheSEC$DiskList;->mDisks:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long v6, v3, v6

    const-wide v8, 0x9a7ec800L

    cmp-long v6, v6, v8

    if-lez v6, :cond_16

    .line 357
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 358
    const-string v7, "DiskCacheSEC"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[SE Lab.] DiskList.getExpireds(): expired id: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " by limitTime ("

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v6, p0, Lcom/cooliris/media/DiskCacheSEC$DiskList;->mDisks:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    sub-long v9, v3, v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " ms)"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    .line 362
    .end local v2           #id:I
    :cond_83
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_87
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 363
    .restart local v2       #id:I
    iget-object v6, p0, Lcom/cooliris/media/DiskCacheSEC$DiskList;->mDisks:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_87

    .line 367
    .end local v2           #id:I
    :cond_a1
    new-instance v5, Ljava/util/TreeMap;

    invoke-direct {v5}, Ljava/util/TreeMap;-><init>()V

    .line 371
    .local v5, sm:Ljava/util/SortedMap;,"Ljava/util/SortedMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    iget-object v6, p0, Lcom/cooliris/media/DiskCacheSEC$DiskList;->mDisks:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 372
    .restart local v2       #id:I
    iget-object v6, p0, Lcom/cooliris/media/DiskCacheSEC$DiskList;->mDisks:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b0

    .line 374
    .end local v2           #id:I
    :cond_d2
    :goto_d2
    invoke-interface {v5}, Ljava/util/SortedMap;->size()I

    move-result v6

    const/16 v7, 0xb

    if-le v6, v7, :cond_11e

    .line 375
    invoke-interface {v5}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 376
    .restart local v2       #id:I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 377
    iget-object v6, p0, Lcom/cooliris/media/DiskCacheSEC$DiskList;->mDisks:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    invoke-interface {v5}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    const-string v6, "DiskCacheSEC"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[SE Lab.] DiskList.getExpireds(): expired id: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " by limitNum"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d2

    .line 382
    .end local v2           #id:I
    :cond_11e
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v6
.end method

.method public getMountedTime(I)J
    .registers 4
    .parameter "diskId"

    .prologue
    .line 390
    iget-object v0, p0, Lcom/cooliris/media/DiskCacheSEC$DiskList;->mDisks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public rebuild()V
    .registers 10

    .prologue
    .line 328
    iget-object v6, p0, Lcom/cooliris/media/DiskCacheSEC$DiskList;->this$0:Lcom/cooliris/media/DiskCacheSEC;

    iget-object v6, v6, Lcom/cooliris/media/DiskCache;->mIndexMap:Lcom/cooliris/media/LongSparseArray;

    invoke-virtual {v6}, Lcom/cooliris/media/LongSparseArray;->sizeOnly()I

    move-result v5

    .line 329
    .local v5, nIDX:I
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 333
    .local v1, diskIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_e
    if-ge v3, v5, :cond_3f

    .line 334
    :try_start_10
    iget-object v6, p0, Lcom/cooliris/media/DiskCacheSEC$DiskList;->this$0:Lcom/cooliris/media/DiskCacheSEC;

    iget-object v6, v6, Lcom/cooliris/media/DiskCache;->mIndexMap:Lcom/cooliris/media/LongSparseArray;

    invoke-virtual {v6, v3}, Lcom/cooliris/media/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/cooliris/media/DiskCacheSEC$RecordSEC;

    iget v6, v6, Lcom/cooliris/media/DiskCacheSEC$RecordSEC;->diskId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_23
    .catch Ljava/lang/ClassCastException; {:try_start_10 .. :try_end_23} :catch_26

    .line 333
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 336
    :catch_26
    move-exception v2

    .line 337
    .local v2, e:Ljava/lang/ClassCastException;
    const-string v6, "DiskCacheSEC"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ClassCastException"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    .end local v2           #e:Ljava/lang/ClassCastException;
    :cond_3f
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_43
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_59

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 340
    .local v0, diskId:I
    const-wide/16 v6, 0x0

    invoke-virtual {p0, v0, v6, v7}, Lcom/cooliris/media/DiskCacheSEC$DiskList;->add(IJ)V

    goto :goto_43

    .line 343
    .end local v0           #diskId:I
    :cond_59
    invoke-virtual {p0}, Lcom/cooliris/media/DiskCacheSEC$DiskList;->update()V

    .line 344
    return-void
.end method

.method public update()V
    .registers 6

    .prologue
    .line 320
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 322
    .local v0, now:J
    invoke-static {}, Lcom/cooliris/media/DiskCacheSEC;->initDiskId()V

    .line 323
    sget v2, Lcom/cooliris/media/DiskCacheSEC;->sInternalDiskId:I

    invoke-virtual {p0, v2, v0, v1}, Lcom/cooliris/media/DiskCacheSEC$DiskList;->add(IJ)V

    .line 324
    sget v2, Lcom/cooliris/media/DiskCacheSEC;->sExternalDiskId:I

    const-wide/16 v3, 0x1

    add-long/2addr v3, v0

    invoke-virtual {p0, v2, v3, v4}, Lcom/cooliris/media/DiskCacheSEC$DiskList;->add(IJ)V

    .line 325
    return-void
.end method
