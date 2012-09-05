.class public Lcom/android/email/provider/ContentCache;
.super Ljava/lang/Object;
.source "ContentCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/provider/ContentCache$CacheType;
    }
.end annotation


# static fields
.field static mCacheType:Lcom/android/email/provider/ContentCache$CacheType;


# instance fields
.field mCacheHashMap:Lcom/android/email/provider/ContentCacheHashMap;

.field mCacheLru:Lcom/android/email/provider/ContentCacheLru;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    sget-object v0, Lcom/android/email/provider/ContentCache$CacheType;->NOT_INITIALIZED:Lcom/android/email/provider/ContentCache$CacheType;

    sput-object v0, Lcom/android/email/provider/ContentCache;->mCacheType:Lcom/android/email/provider/ContentCache$CacheType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;I)V
    .registers 6
    .parameter "name"
    .parameter "baseProjection"
    .parameter "maxSize"

    .prologue
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {}, Lcom/android/email/provider/ContentCache;->init()V

    .line 31
    sget-object v0, Lcom/android/email/provider/ContentCache;->mCacheType:Lcom/android/email/provider/ContentCache$CacheType;

    sget-object v1, Lcom/android/email/provider/ContentCache$CacheType;->LRU:Lcom/android/email/provider/ContentCache$CacheType;

    if-ne v0, v1, :cond_14

    .line 32
    new-instance v0, Lcom/android/email/provider/ContentCacheLru;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/email/provider/ContentCacheLru;-><init>(Ljava/lang/String;[Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/email/provider/ContentCache;->mCacheLru:Lcom/android/email/provider/ContentCacheLru;

    .line 38
    :goto_13
    return-void

    .line 33
    :cond_14
    sget-object v0, Lcom/android/email/provider/ContentCache;->mCacheType:Lcom/android/email/provider/ContentCache$CacheType;

    sget-object v1, Lcom/android/email/provider/ContentCache$CacheType;->HASH_MAP:Lcom/android/email/provider/ContentCache$CacheType;

    if-ne v0, v1, :cond_22

    .line 34
    new-instance v0, Lcom/android/email/provider/ContentCacheHashMap;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/email/provider/ContentCacheHashMap;-><init>(Ljava/lang/String;[Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/email/provider/ContentCache;->mCacheHashMap:Lcom/android/email/provider/ContentCacheHashMap;

    goto :goto_13

    .line 36
    :cond_22
    const-string v0, "ContentCache"

    const-string v1, "ContentCache() initialize error. no available cache!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13
.end method

.method static init()V
    .registers 4

    .prologue
    .line 41
    sget-object v1, Lcom/android/email/provider/ContentCache;->mCacheType:Lcom/android/email/provider/ContentCache$CacheType;

    sget-object v2, Lcom/android/email/provider/ContentCache$CacheType;->NOT_INITIALIZED:Lcom/android/email/provider/ContentCache$CacheType;

    if-ne v1, v2, :cond_f

    .line 44
    :try_start_6
    const-string v1, "com.android.email.provider.ContentCacheLru"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 46
    sget-object v1, Lcom/android/email/provider/ContentCache$CacheType;->LRU:Lcom/android/email/provider/ContentCache$CacheType;

    sput-object v1, Lcom/android/email/provider/ContentCache;->mCacheType:Lcom/android/email/provider/ContentCache$CacheType;
    :try_end_f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_f} :catch_2a

    .line 61
    .local v0, e:Ljava/lang/ClassNotFoundException;
    :cond_f
    :goto_f
    const-string v1, "ContentCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() done : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/email/provider/ContentCache;->mCacheType:Lcom/android/email/provider/ContentCache$CacheType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    return-void

    .line 47
    .end local v0           #e:Ljava/lang/ClassNotFoundException;
    :catch_2a
    move-exception v0

    .line 56
    .restart local v0       #e:Ljava/lang/ClassNotFoundException;
    sget-object v1, Lcom/android/email/provider/ContentCache$CacheType;->HASH_MAP:Lcom/android/email/provider/ContentCache$CacheType;

    sput-object v1, Lcom/android/email/provider/ContentCache;->mCacheType:Lcom/android/email/provider/ContentCache$CacheType;

    goto :goto_f
.end method

.method public static notCacheable(Landroid/net/Uri;Ljava/lang/String;)V
    .registers 5
    .parameter "uri"
    .parameter "selection"

    .prologue
    .line 159
    sget-object v0, Lcom/android/email/provider/ContentCache;->mCacheType:Lcom/android/email/provider/ContentCache$CacheType;

    sget-object v1, Lcom/android/email/provider/ContentCache$CacheType;->LRU:Lcom/android/email/provider/ContentCache$CacheType;

    if-ne v0, v1, :cond_a

    .line 160
    invoke-static {p0, p1}, Lcom/android/email/provider/ContentCacheLru;->notCacheable(Landroid/net/Uri;Ljava/lang/String;)V

    .line 166
    :goto_9
    return-void

    .line 161
    :cond_a
    sget-object v0, Lcom/android/email/provider/ContentCache;->mCacheType:Lcom/android/email/provider/ContentCache$CacheType;

    sget-object v1, Lcom/android/email/provider/ContentCache$CacheType;->HASH_MAP:Lcom/android/email/provider/ContentCache$CacheType;

    if-ne v0, v1, :cond_14

    .line 162
    invoke-static {p0, p1}, Lcom/android/email/provider/ContentCacheHashMap;->notCacheable(Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_9

    .line 164
    :cond_14
    const-string v0, "ContentCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notCacheable() error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/email/provider/ContentCache;->mCacheType:Lcom/android/email/provider/ContentCache$CacheType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method


# virtual methods
.method public getCacheToken(Ljava/lang/String;)Ljava/lang/Object;
    .registers 5
    .parameter "id"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/email/provider/ContentCache;->mCacheLru:Lcom/android/email/provider/ContentCacheLru;

    if-eqz v0, :cond_b

    .line 127
    iget-object v0, p0, Lcom/android/email/provider/ContentCache;->mCacheLru:Lcom/android/email/provider/ContentCacheLru;

    invoke-virtual {v0, p1}, Lcom/android/email/provider/ContentCacheLru;->getCacheToken(Ljava/lang/String;)Lcom/android/email/provider/ContentCacheLru$CacheToken;

    move-result-object v0

    .line 132
    :goto_a
    return-object v0

    .line 128
    :cond_b
    iget-object v0, p0, Lcom/android/email/provider/ContentCache;->mCacheHashMap:Lcom/android/email/provider/ContentCacheHashMap;

    if-eqz v0, :cond_16

    .line 129
    iget-object v0, p0, Lcom/android/email/provider/ContentCache;->mCacheHashMap:Lcom/android/email/provider/ContentCacheHashMap;

    invoke-virtual {v0, p1}, Lcom/android/email/provider/ContentCacheHashMap;->getCacheToken(Ljava/lang/String;)Lcom/android/email/provider/ContentCacheHashMap$CacheToken;

    move-result-object v0

    goto :goto_a

    .line 131
    :cond_16
    const-string v0, "ContentCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCacheToken() error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/email/provider/ContentCache;->mCacheType:Lcom/android/email/provider/ContentCache$CacheType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getCachedCursor(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 6
    .parameter "id"
    .parameter "projection"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/email/provider/ContentCache;->mCacheLru:Lcom/android/email/provider/ContentCacheLru;

    if-eqz v0, :cond_b

    .line 116
    iget-object v0, p0, Lcom/android/email/provider/ContentCache;->mCacheLru:Lcom/android/email/provider/ContentCacheLru;

    invoke-virtual {v0, p1, p2}, Lcom/android/email/provider/ContentCacheLru;->getCachedCursor(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 121
    :goto_a
    return-object v0

    .line 117
    :cond_b
    iget-object v0, p0, Lcom/android/email/provider/ContentCache;->mCacheHashMap:Lcom/android/email/provider/ContentCacheHashMap;

    if-eqz v0, :cond_16

    .line 118
    iget-object v0, p0, Lcom/android/email/provider/ContentCache;->mCacheHashMap:Lcom/android/email/provider/ContentCacheHashMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/email/provider/ContentCacheHashMap;->getCachedCursor(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_a

    .line 120
    :cond_16
    const-string v0, "ContentCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCachedCursor() error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/email/provider/ContentCache;->mCacheType:Lcom/android/email/provider/ContentCache$CacheType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public invalidate(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    .registers 7
    .parameter "operation"
    .parameter "uri"
    .parameter "selection"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/email/provider/ContentCache;->mCacheLru:Lcom/android/email/provider/ContentCacheLru;

    if-eqz v0, :cond_a

    .line 86
    iget-object v0, p0, Lcom/android/email/provider/ContentCache;->mCacheLru:Lcom/android/email/provider/ContentCacheLru;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/email/provider/ContentCacheLru;->invalidate(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    .line 92
    :goto_9
    return-void

    .line 87
    :cond_a
    iget-object v0, p0, Lcom/android/email/provider/ContentCache;->mCacheHashMap:Lcom/android/email/provider/ContentCacheHashMap;

    if-eqz v0, :cond_14

    .line 88
    iget-object v0, p0, Lcom/android/email/provider/ContentCache;->mCacheHashMap:Lcom/android/email/provider/ContentCacheHashMap;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/email/provider/ContentCacheHashMap;->invalidate(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_9

    .line 90
    :cond_14
    const-string v0, "ContentCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalidate() error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/email/provider/ContentCache;->mCacheType:Lcom/android/email/provider/ContentCache$CacheType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method public lock(Ljava/lang/String;)V
    .registers 5
    .parameter "id"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/email/provider/ContentCache;->mCacheLru:Lcom/android/email/provider/ContentCacheLru;

    if-eqz v0, :cond_a

    .line 66
    iget-object v0, p0, Lcom/android/email/provider/ContentCache;->mCacheLru:Lcom/android/email/provider/ContentCacheLru;

    invoke-virtual {v0, p1}, Lcom/android/email/provider/ContentCacheLru;->lock(Ljava/lang/String;)V

    .line 72
    :goto_9
    return-void

    .line 67
    :cond_a
    iget-object v0, p0, Lcom/android/email/provider/ContentCache;->mCacheHashMap:Lcom/android/email/provider/ContentCacheHashMap;

    if-eqz v0, :cond_14

    .line 68
    iget-object v0, p0, Lcom/android/email/provider/ContentCache;->mCacheHashMap:Lcom/android/email/provider/ContentCacheHashMap;

    invoke-virtual {v0, p1}, Lcom/android/email/provider/ContentCacheHashMap;->lock(Ljava/lang/String;)V

    goto :goto_9

    .line 70
    :cond_14
    const-string v0, "ContentCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lock() error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/email/provider/ContentCache;->mCacheType:Lcom/android/email/provider/ContentCache$CacheType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method public putCursor(Landroid/database/Cursor;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;)Landroid/database/Cursor;
    .registers 8
    .parameter "c"
    .parameter "id"
    .parameter "projection"
    .parameter "token"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/email/provider/ContentCache;->mCacheLru:Lcom/android/email/provider/ContentCacheLru;

    if-eqz v0, :cond_d

    .line 148
    iget-object v0, p0, Lcom/android/email/provider/ContentCache;->mCacheLru:Lcom/android/email/provider/ContentCacheLru;

    check-cast p4, Lcom/android/email/provider/ContentCacheLru$CacheToken;

    .end local p4
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/email/provider/ContentCacheLru;->putCursor(Landroid/database/Cursor;Ljava/lang/String;[Ljava/lang/String;Lcom/android/email/provider/ContentCacheLru$CacheToken;)Landroid/database/Cursor;

    move-result-object v0

    .line 154
    :goto_c
    return-object v0

    .line 149
    .restart local p4
    :cond_d
    iget-object v0, p0, Lcom/android/email/provider/ContentCache;->mCacheHashMap:Lcom/android/email/provider/ContentCacheHashMap;

    if-eqz v0, :cond_1a

    .line 150
    iget-object v0, p0, Lcom/android/email/provider/ContentCache;->mCacheHashMap:Lcom/android/email/provider/ContentCacheHashMap;

    check-cast p4, Lcom/android/email/provider/ContentCacheHashMap$CacheToken;

    .end local p4
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/email/provider/ContentCacheHashMap;->putCursor(Landroid/database/Cursor;Ljava/lang/String;[Ljava/lang/String;Lcom/android/email/provider/ContentCacheHashMap$CacheToken;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_c

    .line 153
    .restart local p4
    :cond_1a
    const-string v0, "ContentCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "putCursor() error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/email/provider/ContentCache;->mCacheType:Lcom/android/email/provider/ContentCache$CacheType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public recordQueryTime(Landroid/database/Cursor;J)V
    .registers 7
    .parameter "c"
    .parameter "nanoTime"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/email/provider/ContentCache;->mCacheLru:Lcom/android/email/provider/ContentCacheLru;

    if-eqz v0, :cond_a

    .line 138
    iget-object v0, p0, Lcom/android/email/provider/ContentCache;->mCacheLru:Lcom/android/email/provider/ContentCacheLru;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/email/provider/ContentCacheLru;->recordQueryTime(Landroid/database/Cursor;J)V

    .line 144
    :goto_9
    return-void

    .line 139
    :cond_a
    iget-object v0, p0, Lcom/android/email/provider/ContentCache;->mCacheHashMap:Lcom/android/email/provider/ContentCacheHashMap;

    if-eqz v0, :cond_14

    .line 140
    iget-object v0, p0, Lcom/android/email/provider/ContentCache;->mCacheHashMap:Lcom/android/email/provider/ContentCacheHashMap;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/email/provider/ContentCacheHashMap;->recordQueryTime(Landroid/database/Cursor;J)V

    goto :goto_9

    .line 142
    :cond_14
    const-string v0, "ContentCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "recordQueryTime() error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/email/provider/ContentCache;->mCacheType:Lcom/android/email/provider/ContentCache$CacheType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method public unlock(Ljava/lang/String;)V
    .registers 5
    .parameter "id"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/email/provider/ContentCache;->mCacheLru:Lcom/android/email/provider/ContentCacheLru;

    if-eqz v0, :cond_a

    .line 96
    iget-object v0, p0, Lcom/android/email/provider/ContentCache;->mCacheLru:Lcom/android/email/provider/ContentCacheLru;

    invoke-virtual {v0, p1}, Lcom/android/email/provider/ContentCacheLru;->unlock(Ljava/lang/String;)V

    .line 102
    :goto_9
    return-void

    .line 97
    :cond_a
    iget-object v0, p0, Lcom/android/email/provider/ContentCache;->mCacheHashMap:Lcom/android/email/provider/ContentCacheHashMap;

    if-eqz v0, :cond_14

    .line 98
    iget-object v0, p0, Lcom/android/email/provider/ContentCache;->mCacheHashMap:Lcom/android/email/provider/ContentCacheHashMap;

    invoke-virtual {v0, p1}, Lcom/android/email/provider/ContentCacheHashMap;->unlock(Ljava/lang/String;)V

    goto :goto_9

    .line 100
    :cond_14
    const-string v0, "ContentCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unlock() error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/email/provider/ContentCache;->mCacheType:Lcom/android/email/provider/ContentCache$CacheType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method public unlock(Ljava/lang/String;Landroid/content/ContentValues;)V
    .registers 6
    .parameter "id"
    .parameter "values"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/email/provider/ContentCache;->mCacheLru:Lcom/android/email/provider/ContentCacheLru;

    if-eqz v0, :cond_a

    .line 106
    iget-object v0, p0, Lcom/android/email/provider/ContentCache;->mCacheLru:Lcom/android/email/provider/ContentCacheLru;

    invoke-virtual {v0, p1, p2}, Lcom/android/email/provider/ContentCacheLru;->unlock(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 112
    :goto_9
    return-void

    .line 107
    :cond_a
    iget-object v0, p0, Lcom/android/email/provider/ContentCache;->mCacheHashMap:Lcom/android/email/provider/ContentCacheHashMap;

    if-eqz v0, :cond_14

    .line 108
    iget-object v0, p0, Lcom/android/email/provider/ContentCache;->mCacheHashMap:Lcom/android/email/provider/ContentCacheHashMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/email/provider/ContentCacheHashMap;->unlock(Ljava/lang/String;Landroid/content/ContentValues;)V

    goto :goto_9

    .line 110
    :cond_14
    const-string v0, "ContentCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unlock() error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/email/provider/ContentCache;->mCacheType:Lcom/android/email/provider/ContentCache$CacheType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method
