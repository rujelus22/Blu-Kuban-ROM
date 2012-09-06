.class public Lmc;
.super Ljava/lang/Object;
.source "MultiOperationQueueImpl.java"

# interfaces
.implements LTL;
.implements Lhp;
.implements Lmi;


# instance fields
.field private final a:I

.field private final a:LLh;

.field private final a:LRS;

.field private final a:LTF;

.field private final a:LZS;

.field private final a:Landroid/content/Context;

.field private final a:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lmg;",
            ">;"
        }
    .end annotation
.end field

.field private final a:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Queue",
            "<",
            "Lly;",
            ">;>;"
        }
    .end annotation
.end field

.field a:Ljava/util/concurrent/Executor;

.field private final a:Llu;

.field private final b:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LRS;Llu;LTF;Ljava/util/concurrent/Executor;LFX;LZS;Landroid/content/Context;LLh;)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation runtime Lanr;
    .end annotation

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lmc;->a:Ljava/util/concurrent/ConcurrentMap;

    .line 92
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lmc;->b:Ljava/util/concurrent/ConcurrentMap;

    .line 98
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lmc;->a:Ljava/util/Queue;

    .line 76
    iput-object p1, p0, Lmc;->a:LRS;

    .line 77
    iput-object p2, p0, Lmc;->a:Llu;

    .line 78
    iput-object p3, p0, Lmc;->a:LTF;

    .line 79
    iput-object p4, p0, Lmc;->a:Ljava/util/concurrent/Executor;

    .line 80
    const-string v0, "multiOperationQueueMaxRetries"

    const/4 v1, 0x1

    invoke-interface {p5, v0, v1}, LFX;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lmc;->a:I

    .line 81
    iput-object p6, p0, Lmc;->a:LZS;

    .line 82
    iput-object p7, p0, Lmc;->a:Landroid/content/Context;

    .line 83
    iput-object p8, p0, Lmc;->a:LLh;

    .line 84
    return-void
.end method

.method private static a(LkG;Llu;Lly;)LlA;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 473
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p2}, Lly;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 474
    invoke-static {p0, p1, v0}, LlA;->a(LkG;Llu;Lorg/json/JSONObject;)LlA;

    move-result-object v0

    .line 475
    return-object v0
.end method

.method private a(LkG;)V
    .registers 3
    .parameter

    .prologue
    .line 269
    new-instance v0, Lmd;

    invoke-direct {v0, p0}, Lmd;-><init>(Lmc;)V

    .line 275
    invoke-virtual {p0, p1, v0}, Lmc;->a(LkG;Lmo;)V

    .line 276
    return-void
.end method

.method private a(LlA;)V
    .registers 9
    .parameter

    .prologue
    .line 456
    invoke-virtual {p1}, LlA;->a()Lmg;

    move-result-object v0

    .line 457
    invoke-virtual {p1}, LlA;->a()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 458
    invoke-interface {v0}, Lmg;->c()Ljava/lang/String;

    move-result-object v2

    .line 459
    iget-object v3, p0, Lmc;->a:Llu;

    invoke-interface {v3, v2}, Llu;->b(Ljava/lang/String;)LkG;

    move-result-object v3

    .line 460
    iget-object v4, p0, Lmc;->a:Llu;

    invoke-interface {v0}, Lmg;->a()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-interface {v4, v3, v1, v5, v6}, Llu;->a(LkG;Ljava/lang/String;J)Lly;

    move-result-object v0

    .line 462
    const-string v1, "MultiOperationQueueImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Save entry in local database:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    invoke-virtual {p0, v2}, Lmc;->a(Ljava/lang/String;)Ljava/util/Queue;

    move-result-object v1

    .line 467
    invoke-virtual {v0}, Lly;->c()V

    .line 468
    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 469
    return-void
.end method

.method private static a(LlA;LkG;Llu;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 186
    invoke-interface {p2}, Llu;->a()V

    .line 188
    :try_start_3
    invoke-virtual {p0}, LlA;->b()Lmg;

    move-result-object v0

    .line 189
    invoke-interface {v0}, Lmg;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, p1, v1}, Llu;->a(LkG;Ljava/lang/String;)LkT;

    move-result-object v1

    .line 190
    if-eqz v1, :cond_17

    .line 191
    invoke-interface {v0, v1}, Lmg;->a(LkT;)Lmg;

    .line 192
    invoke-virtual {v1}, LkT;->c()V

    .line 195
    :cond_17
    invoke-interface {p2}, Llu;->c()V

    .line 196
    invoke-virtual {p1}, LkG;->a()V
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_2d
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_1d} :catch_21

    .line 200
    invoke-interface {p2}, Llu;->b()V

    .line 202
    :goto_20
    return-void

    .line 197
    :catch_21
    move-exception v0

    .line 198
    :try_start_22
    const-string v1, "MultiOperationQueueImpl"

    const-string v2, "Failed to save reverted operation in database"

    invoke-static {v1, v2, v0}, LZA;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_29
    .catchall {:try_start_22 .. :try_end_29} :catchall_2d

    .line 200
    invoke-interface {p2}, Llu;->b()V

    goto :goto_20

    :catchall_2d
    move-exception v0

    invoke-interface {p2}, Llu;->b()V

    throw v0
.end method

.method private static a(Lly;LkT;Lmg;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 251
    const-string v0, "MultiOperationQueueImpl"

    const-string v1, "The eTag we made the operation against is different to the current local etag."

    invoke-static {v0, v1}, LZA;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    invoke-interface {p2, p1}, Lmg;->a(LkT;)Lmg;

    move-result-object v0

    .line 253
    if-eqz p0, :cond_24

    .line 254
    new-instance v1, LlA;

    invoke-virtual {p1}, LkT;->h()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p2, v0, v2}, LlA;-><init>(Lmg;Lmg;Ljava/lang/String;)V

    .line 258
    :try_start_16
    invoke-virtual {v1}, LlA;->a()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 259
    invoke-virtual {p0, v0}, Lly;->a(Ljava/lang/String;)V

    .line 260
    invoke-virtual {p0}, Lly;->c()V
    :try_end_24
    .catch Lorg/json/JSONException; {:try_start_16 .. :try_end_24} :catch_25

    .line 265
    :cond_24
    :goto_24
    return-void

    .line 261
    :catch_25
    move-exception v0

    goto :goto_24
.end method

.method static synthetic a(Lmc;LkG;Lmo;)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lmc;->b(LkG;Lmo;)V

    return-void
.end method

.method private static a(LkG;LRR;Llu;Ljava/util/Queue;LTF;ILZS;)Z
    .registers 20
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LkG;",
            "LRR;",
            "Llu;",
            "Ljava/util/Queue",
            "<",
            "Lly;",
            ">;",
            "LTF;",
            "I",
            "LZS;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 129
    new-instance v10, Ljava/util/ArrayList;

    move-object/from16 v0, p3

    invoke-direct {v10, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 131
    const/4 v2, 0x0

    .line 133
    invoke-interface/range {p6 .. p6}, LZS;->a()LZR;

    move-result-object v11

    .line 134
    const/4 v1, 0x0

    .line 135
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move v7, v1

    move v8, v2

    :goto_13
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_84

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lly;

    .line 136
    const/4 v9, 0x0

    .line 138
    :try_start_20
    invoke-virtual {v1}, Lly;->b()I

    move-result v3

    .line 139
    invoke-static {p0, p2, v1}, Lmc;->a(LkG;Llu;Lly;)LlA;
    :try_end_27
    .catchall {:try_start_20 .. :try_end_27} :catchall_82
    .catch Ljava/lang/RuntimeException; {:try_start_20 .. :try_end_27} :catch_60
    .catch Lorg/json/JSONException; {:try_start_20 .. :try_end_27} :catch_75

    move-result-object v2

    .line 141
    move/from16 v0, p5

    if-le v3, v0, :cond_3b

    .line 142
    const/4 v7, 0x1

    move v1, v9

    move v2, v8

    .line 164
    :goto_2f
    if-eqz v1, :cond_80

    .line 166
    :try_start_31
    invoke-interface {v11}, LZR;->b()V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_5b
    .catch Ljava/lang/InterruptedException; {:try_start_31 .. :try_end_34} :catch_56

    .line 170
    invoke-interface {v11}, LZR;->c()V

    :goto_37
    move v1, v7

    :goto_38
    move v7, v1

    move v8, v2

    .line 174
    goto :goto_13

    :cond_3b
    move-object v3, p0

    move-object v4, p2

    move-object v5, p1

    move-object/from16 v6, p4

    .line 144
    :try_start_40
    invoke-static/range {v1 .. v6}, Lmc;->a(Lly;LlA;LkG;Llu;LRR;LTF;)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 146
    invoke-virtual {v1}, Lly;->b()V

    .line 147
    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z
    :try_end_4e
    .catchall {:try_start_40 .. :try_end_4e} :catchall_82
    .catch Ljava/lang/RuntimeException; {:try_start_40 .. :try_end_4e} :catch_60
    .catch Lorg/json/JSONException; {:try_start_40 .. :try_end_4e} :catch_75

    move v1, v9

    move v2, v8

    goto :goto_2f

    .line 149
    :cond_51
    const/4 v1, 0x1

    .line 150
    add-int/lit8 v8, v8, 0x1

    move v2, v8

    goto :goto_2f

    .line 167
    :catch_56
    move-exception v1

    .line 170
    invoke-interface {v11}, LZR;->c()V

    goto :goto_37

    :catchall_5b
    move-exception v1

    invoke-interface {v11}, LZR;->c()V

    throw v1

    .line 153
    :catch_60
    move-exception v1

    .line 154
    add-int/lit8 v2, v8, 0x1

    .line 166
    :try_start_63
    invoke-interface {v11}, LZR;->b()V
    :try_end_66
    .catchall {:try_start_63 .. :try_end_66} :catchall_70
    .catch Ljava/lang/InterruptedException; {:try_start_63 .. :try_end_66} :catch_6b

    .line 170
    invoke-interface {v11}, LZR;->c()V

    :goto_69
    move v1, v7

    goto :goto_38

    .line 167
    :catch_6b
    move-exception v1

    .line 170
    invoke-interface {v11}, LZR;->c()V

    goto :goto_69

    :catchall_70
    move-exception v1

    invoke-interface {v11}, LZR;->c()V

    throw v1

    .line 156
    :catch_75
    move-exception v2

    .line 160
    :try_start_76
    invoke-virtual {v1}, Lly;->b()V

    .line 161
    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z
    :try_end_7e
    .catchall {:try_start_76 .. :try_end_7e} :catchall_82

    .line 162
    add-int/lit8 v2, v8, 0x1

    :cond_80
    move v1, v7

    goto :goto_38

    .line 164
    :catchall_82
    move-exception v1

    .line 170
    throw v1

    .line 175
    :cond_84
    const-string v1, "MultiOperationQueueImpl"

    const-string v2, "%d of %d operations failed to upload"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    return v7
.end method

.method static a(Lly;LlA;LkG;Llu;LRR;LTF;)Z
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 207
    invoke-virtual {p1}, LlA;->a()Lmg;

    move-result-object v1

    invoke-interface {v1}, Lmg;->b()Ljava/lang/String;

    move-result-object v1

    .line 208
    invoke-virtual {p2}, LkG;->b()Ljava/lang/String;

    move-result-object v2

    .line 218
    invoke-interface {p4, v2, v1}, LRR;->a(Ljava/lang/String;Ljava/lang/String;)LSs;

    move-result-object v1

    .line 219
    if-nez v1, :cond_14

    .line 240
    :cond_13
    :goto_13
    return v0

    .line 224
    :cond_14
    invoke-virtual {p1}, LlA;->a()Lmg;

    move-result-object v3

    .line 225
    invoke-interface {v3}, Lmg;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, LafQ;->a(Z)V

    .line 227
    invoke-interface {v3, v1}, Lmg;->a(LSs;)V

    .line 228
    invoke-virtual {v1}, LSs;->p()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_65

    .line 229
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "https://docs.google.com/feeds/default/private/full/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, LSs;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, LSs;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 231
    invoke-virtual {v1, v4}, LSs;->q(Ljava/lang/String;)V

    .line 235
    :cond_65
    invoke-interface {v3}, Lmg;->a()Ljava/util/Date;

    move-result-object v3

    invoke-static {v3}, Llf;->b(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 236
    invoke-virtual {v1, v3}, LSs;->w(Ljava/lang/String;)V

    .line 239
    invoke-interface {p4, v1, v2}, LRR;->a(Lase;Ljava/lang/String;)LSs;

    move-result-object v1

    .line 240
    if-eqz v1, :cond_13

    const/4 v0, 0x1

    goto :goto_13
.end method

.method private b(LkG;Lmo;)V
    .registers 12
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 355
    iget-object v0, p0, Lmc;->a:LRS;

    invoke-interface {v0, p2}, LRS;->a(Lmo;)LRR;

    move-result-object v1

    .line 358
    invoke-virtual {p1}, LkG;->b()Ljava/lang/String;

    move-result-object v0

    .line 359
    invoke-virtual {p0, v0}, Lmc;->a(Ljava/lang/String;)Ljava/util/Queue;

    move-result-object v3

    .line 360
    iget-object v2, p0, Lmc;->b:Ljava/util/concurrent/ConcurrentMap;

    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    invoke-interface {v2, v0, v4}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    :try_start_19
    iget-object v2, p0, Lmc;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_4c

    .line 363
    :try_start_20
    iget-object v2, p0, Lmc;->a:Llu;

    iget-object v4, p0, Lmc;->a:LTF;

    iget v5, p0, Lmc;->a:I

    iget-object v6, p0, Lmc;->a:LZS;

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lmc;->a(LkG;LRR;Llu;Ljava/util/Queue;LTF;ILZS;)Z
    :try_end_2c
    .catchall {:try_start_20 .. :try_end_2c} :catchall_3c

    move-result v1

    .line 365
    :try_start_2d
    monitor-exit v8
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_4e

    .line 367
    if-eqz v1, :cond_37

    .line 368
    iget-object v0, p0, Lmc;->a:Landroid/content/Context;

    iget-object v1, p0, Lmc;->a:LLh;

    invoke-static {v0, v1}, Lcom/google/android/apps/docs/app/RetriesExceededActivity;->a(Landroid/content/Context;LLh;)V

    .line 372
    :cond_37
    const/4 v0, 0x0

    invoke-interface {p2, v7, v0}, Lmo;->a(ILjava/lang/Throwable;)V

    .line 373
    return-void

    .line 365
    :catchall_3c
    move-exception v0

    move v1, v7

    :goto_3e
    :try_start_3e
    monitor-exit v8
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_4e

    :try_start_3f
    throw v0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_40

    .line 367
    :catchall_40
    move-exception v0

    move v7, v1

    :goto_42
    if-eqz v7, :cond_4b

    .line 368
    iget-object v1, p0, Lmc;->a:Landroid/content/Context;

    iget-object v2, p0, Lmc;->a:LLh;

    invoke-static {v1, v2}, Lcom/google/android/apps/docs/app/RetriesExceededActivity;->a(Landroid/content/Context;LLh;)V

    :cond_4b
    throw v0

    .line 367
    :catchall_4c
    move-exception v0

    goto :goto_42

    .line 365
    :catchall_4e
    move-exception v0

    goto :goto_3e
.end method


# virtual methods
.method a(Ljava/lang/String;)Ljava/util/Queue;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Queue",
            "<",
            "Lly;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lmc;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Queue;

    .line 108
    if-nez v0, :cond_28

    .line 111
    iget-object v0, p0, Lmc;->a:Llu;

    invoke-interface {v0, p1}, Llu;->b(Ljava/lang/String;)LkG;

    move-result-object v0

    .line 112
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v2, p0, Lmc;->a:Llu;

    invoke-interface {v2, v0}, Llu;->a(LkG;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>(Ljava/util/Collection;)V

    .line 114
    iget-object v0, p0, Lmc;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v0, p0, Lmc;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Queue;

    .line 117
    :cond_28
    return-object v0
.end method

.method public a()V
    .registers 9

    .prologue
    .line 303
    iget-object v0, p0, Lmc;->a:Llu;

    invoke-interface {v0}, Llu;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_71

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 304
    iget-object v2, p0, Lmc;->a:Llu;

    invoke-interface {v2, v0}, Llu;->b(Ljava/lang/String;)LkG;

    move-result-object v2

    .line 305
    invoke-virtual {p0, v0}, Lmc;->a(Ljava/lang/String;)Ljava/util/Queue;

    move-result-object v3

    .line 307
    invoke-interface {v3}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_24
    :goto_24
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lly;

    .line 308
    invoke-virtual {v0}, Lly;->a()I

    move-result v5

    iget v6, p0, Lmc;->a:I

    if-le v5, v6, :cond_24

    .line 309
    invoke-virtual {v0}, Lly;->b()V

    .line 310
    invoke-interface {v3, v0}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 313
    :try_start_3e
    new-instance v5, Lorg/json/JSONObject;

    invoke-virtual {v0}, Lly;->a()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 314
    iget-object v6, p0, Lmc;->a:Llu;

    invoke-static {v2, v6, v5}, LlA;->a(LkG;Llu;Lorg/json/JSONObject;)LlA;

    move-result-object v5

    .line 316
    iget-object v6, p0, Lmc;->a:Llu;

    invoke-static {v5, v2, v6}, Lmc;->a(LlA;LkG;Llu;)V
    :try_end_52
    .catch Lorg/json/JSONException; {:try_start_3e .. :try_end_52} :catch_53

    goto :goto_24

    .line 317
    :catch_53
    move-exception v5

    .line 319
    const-string v5, "MultiOperationQueueImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "JSONException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lly;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, LZA;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    .line 329
    :cond_71
    return-void
.end method

.method public a(LkG;Lmo;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 386
    iget-object v0, p0, Lmc;->a:Landroid/content/Context;

    invoke-static {v0}, LcJ;->a(Landroid/content/Context;)V

    .line 387
    iget-object v0, p0, Lmc;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lme;

    invoke-direct {v1, p0, p1, p2}, Lme;-><init>(Lmc;LkG;Lmo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 393
    return-void
.end method

.method public a(LkT;)V
    .registers 9
    .parameter

    .prologue
    .line 335
    invoke-virtual {p1}, LkT;->a()LkG;

    move-result-object v1

    .line 336
    invoke-virtual {v1}, LkG;->b()Ljava/lang/String;

    move-result-object v0

    .line 337
    invoke-virtual {p1}, LkT;->i()Ljava/lang/String;

    move-result-object v2

    .line 338
    invoke-virtual {p0, v0}, Lmc;->a(Ljava/lang/String;)Ljava/util/Queue;

    move-result-object v3

    .line 339
    invoke-interface {v3}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_14
    :goto_14
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lly;

    .line 341
    :try_start_20
    iget-object v5, p0, Lmc;->a:Llu;

    invoke-static {v1, v5, v0}, Lmc;->a(LkG;Llu;Lly;)LlA;

    move-result-object v5

    .line 343
    invoke-virtual {v5}, LlA;->a()Lmg;

    move-result-object v6

    invoke-interface {v6}, Lmg;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 344
    invoke-virtual {v5}, LlA;->a()Lmg;

    move-result-object v5

    invoke-static {v0, p1, v5}, Lmc;->a(Lly;LkT;Lmg;)V
    :try_end_3b
    .catch Lorg/json/JSONException; {:try_start_20 .. :try_end_3b} :catch_3c

    goto :goto_14

    .line 346
    :catch_3c
    move-exception v5

    .line 347
    invoke-virtual {v0}, Lly;->b()V

    .line 348
    invoke-interface {v3, v0}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 349
    const-string v0, "MultiOperationQueueImpl"

    const-string v5, "JSONException when reapplying operations on sync"

    invoke-static {v0, v5}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .line 352
    :cond_4b
    return-void
.end method

.method public a(Lmg;)V
    .registers 3
    .parameter

    .prologue
    .line 102
    iget-object v0, p0, Lmc;->a:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 103
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 397
    const/4 v0, 0x1

    return v0
.end method

.method public b()V
    .registers 6

    .prologue
    .line 281
    iget-object v0, p0, Lmc;->a:Llu;

    invoke-interface {v0}, Llu;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 282
    iget-object v2, p0, Lmc;->a:Llu;

    invoke-interface {v2, v0}, Llu;->b(Ljava/lang/String;)LkG;

    move-result-object v2

    .line 283
    invoke-virtual {p0, v0}, Lmc;->a(Ljava/lang/String;)Ljava/util/Queue;

    move-result-object v3

    .line 284
    const/4 v0, 0x0

    .line 286
    invoke-interface {v3}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_25
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_39

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lly;

    .line 287
    invoke-virtual {v0}, Lly;->a()V

    .line 288
    invoke-virtual {v0}, Lly;->c()V

    .line 289
    const/4 v0, 0x1

    goto :goto_25

    .line 291
    :cond_39
    if-eqz v0, :cond_a

    .line 294
    invoke-direct {p0, v2}, Lmc;->a(LkG;)V

    goto :goto_a

    .line 297
    :cond_3f
    return-void
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 402
    const/4 v0, 0x1

    return v0
.end method

.method public c()Z
    .registers 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 407
    iget-object v0, p0, Lmc;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    move v0, v1

    .line 452
    :goto_b
    return v0

    .line 410
    :cond_c
    const/4 v3, 0x0

    .line 412
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 413
    iget-object v0, p0, Lmc;->a:Llu;

    invoke-interface {v0}, Llu;->a()V

    .line 416
    :cond_17
    :goto_17
    :try_start_17
    iget-object v0, p0, Lmc;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmg;
    :try_end_1f
    .catchall {:try_start_17 .. :try_end_1f} :catchall_a6

    if-eqz v0, :cond_82

    .line 418
    if-eqz v3, :cond_31

    :try_start_23
    invoke-interface {v0}, Lmg;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, LkG;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3b

    .line 420
    :cond_31
    iget-object v3, p0, Lmc;->a:Llu;

    invoke-interface {v0}, Lmg;->c()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Llu;->b(Ljava/lang/String;)LkG;

    move-result-object v3

    .line 422
    :cond_3b
    invoke-interface {v0}, Lmg;->c()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 423
    iget-object v5, p0, Lmc;->a:Llu;

    invoke-interface {v0}, Lmg;->b()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v3, v6}, Llu;->a(LkG;Ljava/lang/String;)LkT;

    move-result-object v5

    .line 424
    if-eqz v5, :cond_5e

    .line 425
    invoke-interface {v0, v5}, Lmg;->a(LkT;)Lmg;

    move-result-object v6

    .line 426
    new-instance v7, LlA;

    invoke-virtual {v5}, LkT;->h()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v0, v6, v8}, LlA;-><init>(Lmg;Lmg;Ljava/lang/String;)V

    .line 428
    invoke-direct {p0, v7}, Lmc;->a(LlA;)V
    :try_end_5e
    .catchall {:try_start_23 .. :try_end_5e} :catchall_a6
    .catch Lorg/json/JSONException; {:try_start_23 .. :try_end_5e} :catch_73

    .line 435
    :cond_5e
    if-eqz v5, :cond_17

    .line 436
    :try_start_60
    invoke-virtual {v5}, LkT;->c()V
    :try_end_63
    .catchall {:try_start_60 .. :try_end_63} :catchall_a6
    .catch Ljava/lang/RuntimeException; {:try_start_60 .. :try_end_63} :catch_64

    goto :goto_17

    .line 438
    :catch_64
    move-exception v0

    .line 439
    :try_start_65
    const-string v1, "MultiOperationQueueImpl"

    const-string v3, "Failed to save entry change in local database."

    invoke-static {v1, v3, v0}, LZA;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6c
    .catchall {:try_start_65 .. :try_end_6c} :catchall_a6

    .line 445
    iget-object v0, p0, Lmc;->a:Llu;

    invoke-interface {v0}, Llu;->b()V

    move v0, v2

    goto :goto_b

    .line 430
    :catch_73
    move-exception v0

    .line 431
    :try_start_74
    const-string v1, "MultiOperationQueueImpl"

    const-string v3, "Failed to save operation in local database."

    invoke-static {v1, v3, v0}, LZA;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7b
    .catchall {:try_start_74 .. :try_end_7b} :catchall_a6

    .line 445
    iget-object v0, p0, Lmc;->a:Llu;

    invoke-interface {v0}, Llu;->b()V

    move v0, v2

    goto :goto_b

    .line 443
    :cond_82
    :try_start_82
    iget-object v0, p0, Lmc;->a:Llu;

    invoke-interface {v0}, Llu;->c()V
    :try_end_87
    .catchall {:try_start_82 .. :try_end_87} :catchall_a6

    .line 445
    iget-object v0, p0, Lmc;->a:Llu;

    invoke-interface {v0}, Llu;->b()V

    .line 449
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_90
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ad

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 450
    iget-object v3, p0, Lmc;->a:Llu;

    invoke-interface {v3, v0}, Llu;->b(Ljava/lang/String;)LkG;

    move-result-object v0

    invoke-virtual {v0}, LkG;->a()V

    goto :goto_90

    .line 445
    :catchall_a6
    move-exception v0

    iget-object v1, p0, Lmc;->a:Llu;

    invoke-interface {v1}, Llu;->b()V

    throw v0

    :cond_ad
    move v0, v1

    .line 452
    goto/16 :goto_b
.end method
