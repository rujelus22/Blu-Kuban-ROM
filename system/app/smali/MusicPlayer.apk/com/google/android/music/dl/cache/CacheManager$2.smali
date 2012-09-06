.class Lcom/google/android/music/dl/cache/CacheManager$2;
.super Ljava/lang/Object;
.source "CacheManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/dl/cache/CacheManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/dl/cache/CacheManager;


# direct methods
.method constructor <init>(Lcom/google/android/music/dl/cache/CacheManager;)V
    .registers 2
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/google/android/music/dl/cache/CacheManager$2;->this$0:Lcom/google/android/music/dl/cache/CacheManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .prologue
    const/4 v11, 0x0

    .line 147
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 148
    .local v7, values:Landroid/content/ContentValues;
    const-string v9, "LocalCopyType"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 149
    const-string v9, "LocalCopyStorageType"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 151
    const-string v9, "LocalCopyPath"

    invoke-virtual {v7, v9}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 152
    const-string v9, "LocalCopySize"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 154
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    .local v8, where:Ljava/lang/StringBuilder;
    const-string v9, "LocalCopyType"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x3d

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x64

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 158
    iget-object v9, p0, Lcom/google/android/music/dl/cache/CacheManager$2;->this$0:Lcom/google/android/music/dl/cache/CacheManager;

    #getter for: Lcom/google/android/music/dl/cache/CacheManager;->mDoNotDelete:Lcom/google/android/music/dl/cache/CacheManager$DoNotDelete;
    invoke-static {v9}, Lcom/google/android/music/dl/cache/CacheManager;->access$800(Lcom/google/android/music/dl/cache/CacheManager;)Lcom/google/android/music/dl/cache/CacheManager$DoNotDelete;

    move-result-object v9

    invoke-interface {v9}, Lcom/google/android/music/dl/cache/CacheManager$DoNotDelete;->getDoNotDeletes()Ljava/util/HashSet;

    move-result-object v2

    .line 159
    .local v2, doNotDeletes:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/google/android/music/dl/ContentIdentifier;>;"
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 160
    .local v3, doNotDeletesCloudCached:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_4f
    :goto_4f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/dl/ContentIdentifier;

    .line 161
    .local v0, d:Lcom/google/android/music/dl/ContentIdentifier;
    invoke-virtual {v0}, Lcom/google/android/music/dl/ContentIdentifier;->isDefaultDomain()Z

    move-result v9

    if-eqz v9, :cond_4f

    .line 162
    invoke-virtual {v0}, Lcom/google/android/music/dl/ContentIdentifier;->getId()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_4f

    .line 165
    .end local v0           #d:Lcom/google/android/music/dl/ContentIdentifier;
    :cond_6d
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v9

    if-eqz v9, :cond_87

    .line 166
    const-string v9, " AND "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "Id"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " NOT "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-static {v8, v3}, Lcom/google/android/music/utils/DbUtils;->appendIN(Ljava/lang/StringBuilder;Ljava/util/Collection;)V

    .line 170
    :cond_87
    iget-object v9, p0, Lcom/google/android/music/dl/cache/CacheManager$2;->this$0:Lcom/google/android/music/dl/cache/CacheManager;

    #getter for: Lcom/google/android/music/dl/cache/CacheManager;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/google/android/music/dl/cache/CacheManager;->access$200(Lcom/google/android/music/dl/cache/CacheManager;)Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v5

    .line 171
    .local v5, store:Lcom/google/android/music/store/Store;
    const/4 v6, 0x0

    .line 172
    .local v6, success:Z
    invoke-virtual {v5}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 174
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_96
    const-string v9, "MUSIC"

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v1, v9, v7, v10, v11}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_a0
    .catchall {:try_start_96 .. :try_end_a0} :catchall_ac

    .line 175
    const/4 v6, 0x1

    .line 177
    invoke-virtual {v5, v1, v6}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 179
    if-eqz v6, :cond_ab

    .line 180
    iget-object v9, p0, Lcom/google/android/music/dl/cache/CacheManager$2;->this$0:Lcom/google/android/music/dl/cache/CacheManager;

    invoke-virtual {v9}, Lcom/google/android/music/dl/cache/CacheManager;->startClearingOrphanedFilesAsync()V

    .line 182
    :cond_ab
    return-void

    .line 177
    :catchall_ac
    move-exception v9

    invoke-virtual {v5, v1, v6}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    throw v9
.end method
