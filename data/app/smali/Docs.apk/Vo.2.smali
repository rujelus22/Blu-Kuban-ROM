.class public LVo;
.super Ljava/lang/Object;
.source "SyncManager.java"


# instance fields
.field a:LFX;
    .annotation runtime Lanr;
    .end annotation
.end field

.field a:LGh;
    .annotation runtime Lanr;
    .end annotation
.end field

.field a:LHW;
    .annotation runtime Lanr;
    .end annotation
.end field

.field private final a:LQN;

.field private final a:LTF;

.field private final a:LTT;

.field a:LTt;
    .annotation runtime Lanr;
    .end annotation
.end field

.field private final a:LVp;

.field a:LXh;
    .annotation runtime Lanr;
    .end annotation
.end field

.field a:LZU;
    .annotation runtime Lanr;
    .end annotation
.end field

.field a:LdE;
    .annotation runtime Lanr;
    .end annotation
.end field

.field a:Ldg;
    .annotation runtime Lanr;
    .end annotation
.end field

.field a:Lht;
    .annotation runtime Lanr;
    .end annotation
.end field

.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final a:Llu;


# direct methods
.method public constructor <init>(LVp;LTF;Llu;LTT;LQN;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation runtime Lanr;
    .end annotation

    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, LVo;->a:Ljava/util/Set;

    .line 155
    iput-object p1, p0, LVo;->a:LVp;

    .line 156
    iput-object p3, p0, LVo;->a:Llu;

    .line 157
    iput-object p4, p0, LVo;->a:LTT;

    .line 158
    iput-object p2, p0, LVo;->a:LTF;

    .line 159
    iput-object p5, p0, LVo;->a:LQN;

    .line 160
    return-void
.end method

.method private a(Ljava/lang/String;)J
    .registers 6
    .parameter

    .prologue
    .line 263
    iget-object v0, p0, LVo;->a:Ldg;

    invoke-interface {v0, p1}, Ldg;->a(Ljava/lang/String;)Lde;

    move-result-object v0

    .line 264
    const-string v1, "lastContentSyncMilliseconds"

    invoke-interface {v0, v1}, Lde;->a(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, LafQ;->b(Z)V

    .line 266
    const-string v1, "lastContentSyncMilliseconds"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Lde;->a(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private a(Ljava/lang/String;J)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 256
    iget-object v0, p0, LVo;->a:Ldg;

    invoke-interface {v0, p1}, Ldg;->a(Ljava/lang/String;)Lde;

    move-result-object v0

    .line 257
    const-string v1, "lastContentSyncMilliseconds"

    sget-object v2, LXD;->a:LXD;

    invoke-virtual {v2}, LXD;->a()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lde;->a(Ljava/lang/String;J)V

    .line 258
    iget-object v1, p0, LVo;->a:Ldg;

    invoke-interface {v1, v0}, Ldg;->a(Lde;)V

    .line 259
    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .registers 4
    .parameter

    .prologue
    .line 270
    iget-object v0, p0, LVo;->a:Ldg;

    invoke-interface {v0, p1}, Ldg;->a(Ljava/lang/String;)Lde;

    move-result-object v0

    .line 271
    const-string v1, "lastContentSyncMilliseconds"

    invoke-interface {v0, v1}, Lde;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private a(LkG;Landroid/content/SyncResult;LVT;)Z
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    .line 377
    .line 379
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 381
    :try_start_4
    iget-object v0, p0, LVo;->a:LVp;

    invoke-interface {v0}, LVp;->a()LTM;

    move-result-object v0

    .line 382
    invoke-interface {p3, v0, p1, p2}, LVT;->a(LTM;LkG;Landroid/content/SyncResult;)V

    .line 383
    invoke-interface {v0, p2}, LTM;->a(Landroid/content/SyncResult;)V

    .line 385
    const/4 v0, 0x1

    .line 387
    invoke-interface {p3, p2, v0}, LVT;->a(Landroid/content/SyncResult;Z)V
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_3d

    .line 389
    const-string v3, "SyncManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Time taken to sync doc list only "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v1, v5, v1

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " result "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, LZA;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    return v0

    .line 389
    :catchall_3d
    move-exception v0

    const-string v3, "SyncManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Time taken to sync doc list only "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v1, v5, v1

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " result "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, LZA;->c(Ljava/lang/String;Ljava/lang/String;)I

    throw v0
.end method

.method private a(ZLkG;Landroid/content/SyncResult;)Z
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 327
    invoke-virtual {p2}, LkG;->b()Ljava/lang/String;

    move-result-object v2

    .line 329
    iget-object v3, p0, LVo;->a:LFX;

    const-string v4, "changelogSyncLimit"

    const/16 v5, 0x9c4

    invoke-interface {v3, v4, v5}, LFX;->a(Ljava/lang/String;I)I

    move-result v3

    .line 331
    iget-object v4, p0, LVo;->a:LTt;

    invoke-virtual {p2}, LkG;->a()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v4, v2, v5, v6}, LTt;->a(Ljava/lang/String;II)LSp;

    move-result-object v4

    .line 336
    invoke-virtual {v4}, LSp;->a()Z

    move-result v2

    if-nez v2, :cond_31

    .line 337
    iget-object v1, p0, LVo;->a:LdE;

    const-string v2, "sync"

    const-string v3, "error"

    const-string v4, "Error fetching remainingChangestamps"

    const/4 v5, -0x1

    invoke-virtual {v1, v2, v3, v4, v5}, LdE;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 371
    :cond_30
    :goto_30
    return v0

    .line 342
    :cond_31
    if-nez p1, :cond_39

    invoke-virtual {v4}, LSp;->b()I

    move-result v2

    if-le v2, v3, :cond_6c

    :cond_39
    move v2, v1

    .line 345
    :goto_3a
    if-eqz v2, :cond_6e

    .line 346
    iget-object v0, p0, LVo;->a:LFX;

    const-string v1, "syncstarMaxFeedsToRetrieve"

    const/16 v3, 0x14

    invoke-interface {v0, v1, v3}, LFX;->a(Ljava/lang/String;I)I

    move-result v0

    .line 348
    new-instance v1, LVS;

    iget-object v3, p0, LVo;->a:LTF;

    iget-object v5, p0, LVo;->a:Llu;

    iget-object v6, p0, LVo;->a:LTT;

    invoke-direct {v1, v3, v5, v6, v0}, LVS;-><init>(LTF;Llu;LTT;I)V

    .line 350
    invoke-direct {p0, p2, p3, v1}, LVo;->a(LkG;Landroid/content/SyncResult;LVT;)Z

    move-result v0

    .line 361
    :goto_55
    if-eqz v0, :cond_30

    .line 362
    if-eqz v2, :cond_60

    .line 366
    invoke-virtual {v4}, LSp;->a()I

    move-result v1

    invoke-virtual {p2, v1}, LkG;->a(I)V

    .line 368
    :cond_60
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p2, v1}, LkG;->a(Ljava/util/Date;)V

    .line 369
    invoke-virtual {p2}, LkG;->c()V

    goto :goto_30

    :cond_6c
    move v2, v0

    .line 342
    goto :goto_3a

    .line 351
    :cond_6e
    invoke-virtual {v4}, LSp;->b()I

    move-result v0

    if-lez v0, :cond_82

    .line 355
    new-instance v0, LVR;

    iget-object v1, p0, LVo;->a:LTF;

    iget-object v3, p0, LVo;->a:LTT;

    invoke-direct {v0, v1, v3}, LVR;-><init>(LTF;LTT;)V

    .line 356
    invoke-direct {p0, p2, p3, v0}, LVo;->a(LkG;Landroid/content/SyncResult;LVT;)Z

    move-result v0

    goto :goto_55

    :cond_82
    move v0, v1

    .line 358
    goto :goto_55
.end method

.method private b(Ljava/lang/String;)V
    .registers 7
    .parameter

    .prologue
    .line 164
    :try_start_0
    iget-object v0, p0, LVo;->a:LGh;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, LGh;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch LGi; {:try_start_0 .. :try_end_6} :catch_7

    .line 170
    :goto_6
    return-void

    .line 165
    :catch_7
    move-exception v0

    .line 166
    const-string v1, "SyncManager"

    const-string v2, "ClientFlagSyncException"

    invoke-static {v1, v2, v0}, LZA;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 167
    iget-object v0, p0, LVo;->a:LdE;

    const-string v1, "sync"

    const-string v2, "error"

    const-string v3, "ClientFlagSyncException"

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, LdE;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_6
.end method


# virtual methods
.method public a()V
    .registers 6

    .prologue
    .line 177
    iget-object v0, p0, LVo;->a:LHW;

    invoke-interface {v0}, LHW;->a()[Landroid/accounts/Account;

    move-result-object v1

    .line 178
    array-length v2, v1

    const/4 v0, 0x0

    :goto_8
    if-ge v0, v2, :cond_22

    aget-object v3, v1, v0

    .line 179
    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 180
    iget-object v4, p0, LVo;->a:LXh;

    invoke-interface {v4, v3}, LXh;->a(Ljava/lang/String;)LXg;

    move-result-object v4

    .line 182
    invoke-virtual {v4}, LXg;->a()Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 184
    iget-object v4, p0, LVo;->a:LTt;

    invoke-virtual {v4, v3}, LTt;->a(Ljava/lang/String;)LSp;

    .line 178
    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 187
    :cond_22
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Landroid/content/SyncResult;)V
    .registers 15
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v10, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 193
    const-string v0, "SyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "in performSync for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v0, p0, LVo;->a:Llu;

    invoke-interface {v0, p2}, Llu;->b(Ljava/lang/String;)LkG;

    move-result-object v4

    .line 195
    invoke-virtual {v4, v1}, LkG;->a(Z)V

    .line 196
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v3, Lcom/google/android/apps/docs/providers/DocListProvider;->i:Landroid/net/Uri;

    invoke-virtual {v0, v3, v10}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 201
    invoke-virtual {v4}, LkG;->c()V

    .line 203
    invoke-virtual {v4}, LkG;->a()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-nez v0, :cond_5d

    move v0, v1

    .line 207
    :goto_3f
    :try_start_3f
    invoke-direct {p0, p2}, LVo;->b(Ljava/lang/String;)V

    .line 210
    iget-object v3, p0, LVo;->a:Lht;

    invoke-interface {v3, p1}, Lht;->a(Landroid/content/Context;)Z
    :try_end_47
    .catchall {:try_start_3f .. :try_end_47} :catchall_ea

    move-result v3

    if-nez v3, :cond_5f

    .line 243
    invoke-virtual {v4, v2}, LkG;->a(Z)V

    .line 244
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/google/android/apps/docs/providers/DocListProvider;->i:Landroid/net/Uri;

    invoke-virtual {v0, v2, v10}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 245
    invoke-virtual {v4, v1}, LkG;->b(Z)V

    .line 246
    invoke-virtual {v4}, LkG;->c()V

    .line 248
    :goto_5c
    return-void

    :cond_5d
    move v0, v2

    .line 203
    goto :goto_3f

    .line 214
    :cond_5f
    :try_start_5f
    invoke-virtual {p0}, LVo;->a()V

    .line 215
    invoke-direct {p0, v0, v4, p3}, LVo;->a(ZLkG;Landroid/content/SyncResult;)Z
    :try_end_65
    .catchall {:try_start_5f .. :try_end_65} :catchall_ea

    move-result v3

    .line 220
    :try_start_66
    iget-object v0, p0, LVo;->a:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v5

    .line 221
    sget-object v0, LXD;->a:LXD;

    invoke-virtual {v0}, LXD;->a()J

    move-result-wide v6

    .line 222
    iget-object v0, p0, LVo;->a:LFX;

    const-string v8, "autoContentSyncIntervalSeconds"

    const/16 v9, 0x5460

    invoke-interface {v0, v8, v9}, LFX;->a(Ljava/lang/String;I)I
    :try_end_7b
    .catchall {:try_start_66 .. :try_end_7b} :catchall_d0

    move-result v0

    .line 227
    :try_start_7c
    invoke-direct {p0, p2}, LVo;->a(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8f

    invoke-direct {p0, p2}, LVo;->a(Ljava/lang/String;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8
    :try_end_8a
    .catchall {:try_start_7c .. :try_end_8a} :catchall_d0
    .catch Ldh; {:try_start_7c .. :try_end_8a} :catch_bd

    int-to-long v8, v0

    cmp-long v0, v6, v8

    if-lez v0, :cond_bb

    :cond_8f
    move v0, v1

    .line 234
    :goto_90
    if-nez v5, :cond_9a

    if-eqz v0, :cond_a6

    :try_start_94
    invoke-static {p1}, LXH;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a6

    .line 235
    :cond_9a
    invoke-virtual {p0, p1, p2, v5}, LVo;->a(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_9d
    .catchall {:try_start_94 .. :try_end_9d} :catchall_d0

    .line 237
    :try_start_9d
    sget-object v0, LXD;->a:LXD;

    invoke-virtual {v0}, LXD;->a()J

    move-result-wide v5

    invoke-direct {p0, p2, v5, v6}, LVo;->a(Ljava/lang/String;J)V
    :try_end_a6
    .catchall {:try_start_9d .. :try_end_a6} :catchall_d0
    .catch Ldh; {:try_start_9d .. :try_end_a6} :catch_c7

    .line 243
    :cond_a6
    :goto_a6
    invoke-virtual {v4, v2}, LkG;->a(Z)V

    .line 244
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v5, Lcom/google/android/apps/docs/providers/DocListProvider;->i:Landroid/net/Uri;

    invoke-virtual {v0, v5, v10}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 245
    if-nez v3, :cond_e6

    :goto_b4
    invoke-virtual {v4, v1}, LkG;->b(Z)V

    .line 246
    invoke-virtual {v4}, LkG;->c()V

    goto :goto_5c

    :cond_bb
    move v0, v2

    .line 227
    goto :goto_90

    .line 230
    :catch_bd
    move-exception v0

    .line 231
    :try_start_be
    const-string v6, "SyncManager"

    const-string v7, "Failed to get lastContentSyncMillisecond"

    invoke-static {v6, v7, v0}, LZA;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v2

    goto :goto_90

    .line 238
    :catch_c7
    move-exception v0

    .line 239
    const-string v5, "SyncManager"

    const-string v6, "Failed to store lastContentSyncMilliseconds"

    invoke-static {v5, v6, v0}, LZA;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_cf
    .catchall {:try_start_be .. :try_end_cf} :catchall_d0

    goto :goto_a6

    .line 243
    :catchall_d0
    move-exception v0

    :goto_d1
    invoke-virtual {v4, v2}, LkG;->a(Z)V

    .line 244
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/google/android/apps/docs/providers/DocListProvider;->i:Landroid/net/Uri;

    invoke-virtual {v5, v6, v10}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 245
    if-nez v3, :cond_e8

    :goto_df
    invoke-virtual {v4, v1}, LkG;->b(Z)V

    .line 246
    invoke-virtual {v4}, LkG;->c()V

    throw v0

    :cond_e6
    move v1, v2

    .line 245
    goto :goto_b4

    :cond_e8
    move v1, v2

    goto :goto_df

    .line 243
    :catchall_ea
    move-exception v0

    move v3, v2

    goto :goto_d1
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 14
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 300
    iget-object v0, p0, LVo;->a:LZU;

    invoke-interface {v0}, LZU;->b()Z

    move-result v0

    if-eqz v0, :cond_65

    invoke-static {p1}, LXH;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 301
    iget-object v0, p0, LVo;->a:Llu;

    invoke-interface {v0, p2}, Llu;->b(Ljava/lang/String;)LkG;

    move-result-object v3

    .line 302
    iget-object v0, p0, LVo;->a:Llu;

    invoke-interface {v0, v3}, Llu;->b(LkG;)Ljava/util/Set;

    move-result-object v0

    .line 303
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_20
    :goto_20
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_65

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 304
    iget-object v5, p0, LVo;->a:Llu;

    invoke-interface {v5, v3, v0}, Llu;->a(LkG;Ljava/lang/String;)LkR;

    move-result-object v5

    .line 305
    if-eqz v5, :cond_61

    move v0, v1

    :goto_35
    invoke-static {v0}, LafQ;->b(Z)V

    .line 306
    iget-object v0, p0, LVo;->a:LQN;

    sget-object v6, LQM;->a:LQM;

    invoke-interface {v0, v5, v6}, LQN;->c(LkR;LQM;)Z

    move-result v0

    if-nez v0, :cond_20

    invoke-virtual {v5}, LkR;->d()J

    move-result-wide v6

    const-wide/16 v8, 0x5

    cmp-long v0, v6, v8

    if-gez v0, :cond_20

    .line 310
    if-nez p3, :cond_63

    iget-object v0, p0, LVo;->a:LQN;

    sget-object v6, LQM;->a:LQM;

    invoke-interface {v0, v5, v6}, LQN;->b(LkR;LQM;)Z

    move-result v0

    if-eqz v0, :cond_63

    move v0, v1

    .line 313
    :goto_59
    invoke-virtual {v5}, LkR;->a()Lld;

    move-result-object v5

    .line 314
    invoke-static {p1, v5, v0}, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a(Landroid/content/Context;Lld;Z)V

    goto :goto_20

    :cond_61
    move v0, v2

    .line 305
    goto :goto_35

    :cond_63
    move v0, v2

    .line 310
    goto :goto_59

    .line 318
    :cond_65
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 251
    iget-object v0, p0, LVo;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 252
    return-void
.end method

.method public a(LkG;Z)Z
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 280
    iget-object v0, p0, LVo;->a:Llu;

    invoke-interface {v0, p1}, Llu;->b(LkG;)Ljava/util/Set;

    move-result-object v0

    .line 281
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 282
    iget-object v2, p0, LVo;->a:Llu;

    invoke-interface {v2, p1, v0}, Llu;->a(LkG;Ljava/lang/String;)LkR;

    move-result-object v0

    .line 283
    if-eqz v0, :cond_a

    .line 286
    if-eqz p2, :cond_2a

    invoke-virtual {v0}, LkR;->d()J

    move-result-wide v2

    const-wide/16 v4, 0x5

    cmp-long v2, v2, v4

    if-gez v2, :cond_a

    .line 289
    :cond_2a
    iget-object v2, p0, LVo;->a:LQN;

    sget-object v3, LQM;->a:LQM;

    invoke-interface {v2, v0, v3}, LQN;->b(LkR;LQM;)Z

    move-result v2

    if-eqz v2, :cond_3e

    iget-object v2, p0, LVo;->a:LQN;

    sget-object v3, LQM;->a:LQM;

    invoke-interface {v2, v0, v3}, LQN;->a(LkR;LQM;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 292
    :cond_3e
    const/4 v0, 0x1

    .line 295
    :goto_3f
    return v0

    :cond_40
    const/4 v0, 0x0

    goto :goto_3f
.end method
