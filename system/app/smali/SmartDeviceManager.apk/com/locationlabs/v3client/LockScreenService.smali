.class public Lcom/locationlabs/v3client/LockScreenService;
.super Landroid/app/IntentService;
.source "a"


# static fields
.field private static a:Lbn;

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 285
    const/4 v0, 0x0

    sput-boolean v0, Lcom/locationlabs/v3client/LockScreenService;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 36
    const-string v0, "LockScreenService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method private static a(Lbn;JLjava/lang/String;)Lce;
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 446
    new-instance v0, Lce;

    invoke-direct {v0}, Lce;-><init>()V

    .line 447
    invoke-virtual {p0}, Lbn;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lce;->setId(J)V

    .line 448
    invoke-virtual {p0}, Lbn;->getApplicationId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lce;->setApplication(I)V

    .line 449
    const-wide/16 v1, 0x3e8

    div-long v1, p1, v1

    invoke-virtual {v0, v1, v2}, Lce;->setTime(J)V

    .line 450
    invoke-virtual {v0, p3}, Lce;->setType(Ljava/lang/String;)V

    .line 451
    return-object v0
.end method

.method private static a(Ljava/util/List;)Ljava/util/List;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lbn;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lbn;",
            ">;"
        }
    .end annotation

    .prologue
    .line 352
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 353
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lbn;

    invoke-virtual {p0}, Lbn;->isFake()Z

    move-result v2

    if-nez v2, :cond_d

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 354
    :cond_23
    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .registers 4
    .parameter

    .prologue
    .line 305
    const-class v0, Lcom/locationlabs/v3client/LockScreenService;

    monitor-enter v0

    .line 306
    const/4 v1, 0x0

    :try_start_4
    sput-object v1, Lcom/locationlabs/v3client/LockScreenService;->a:Lbn;

    .line 307
    invoke-static {p0}, Lal;->a(Landroid/content/Context;)Lw;

    move-result-object v1

    .line 308
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lw;->b(Ljava/util/List;)V

    .line 309
    const/4 v1, 0x1

    sput-boolean v1, Lcom/locationlabs/v3client/LockScreenService;->b:Z

    .line 310
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_13

    return-void

    :catchall_13
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static a(Landroid/content/Context;J)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 270
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 271
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/locationlabs/v3client/LockScreenService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.locationlabs.action.CHECK_LOCKS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 273
    invoke-static {p0, v3, v1, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v3, p1, p2, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 274
    return-void
.end method

.method public static a(Landroid/content/Context;Lbn;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 290
    const-class v0, Lcom/locationlabs/v3client/LockScreenService;

    monitor-enter v0

    .line 291
    const/4 v1, 0x1

    :try_start_4
    sput-boolean v1, Lcom/locationlabs/v3client/LockScreenService;->b:Z

    .line 293
    sput-object p1, Lcom/locationlabs/v3client/LockScreenService;->a:Lbn;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1}, Lbn;->setExpiration(Ljava/lang/Long;)V

    .line 294
    sget-object v1, Lcom/locationlabs/v3client/LockScreenService;->a:Lbn;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lbn;->setFake(Z)V

    .line 296
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 297
    sget-object v2, Lcom/locationlabs/v3client/LockScreenService;->a:Lbn;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    invoke-static {p0}, Lal;->a(Landroid/content/Context;)Lw;

    move-result-object v2

    .line 300
    invoke-interface {v2, v1}, Lw;->b(Ljava/util/List;)V

    .line 301
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_4 .. :try_end_2a} :catchall_2b

    return-void

    :catchall_2b
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static a(Landroid/content/Context;Ldg;Ljava/lang/String;)V
    .registers 16
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v11, -0x1

    const/4 v10, 0x1

    .line 379
    invoke-static {p0}, Lal;->a(Landroid/content/Context;)Lw;

    move-result-object v0

    invoke-static {p0}, Lcom/locationlabs/v3client/LockScreenService;->d(Landroid/content/Context;)Lbn;

    move-result-object v1

    invoke-interface {v0}, Lw;->I()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0}, Lw;->M()J

    move-result-wide v3

    invoke-interface {v0}, Lw;->N()J

    move-result-wide v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    if-eqz v1, :cond_2a

    invoke-virtual {v1}, Lbn;->shouldLock()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-static {v7, v8, p2, v1}, Lam;->a(JLjava/lang/String;Lbn;)Lcg;

    move-result-object v0

    invoke-static {p0, v0, v10}, Lcom/locationlabs/v3client/V3ApiService;->a(Landroid/content/Context;Lcg;Z)V

    :cond_2a
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_37
    :goto_37
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_57

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbn;

    invoke-static {v0, v3, v4, v5, v6}, Lcom/locationlabs/v3client/LockScreenService;->a(Lbn;JJ)Z

    move-result v9

    if-nez v9, :cond_37

    invoke-virtual {v0}, Lbn;->shouldLock()Z

    move-result v9

    if-eqz v9, :cond_37

    invoke-static {v0, v7, v8, p2}, Lcom/locationlabs/v3client/LockScreenService;->a(Lbn;JLjava/lang/String;)Lce;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_37

    :cond_57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3, v1}, Lam;->a(JLjava/util/List;)Lcg;

    move-result-object v0

    invoke-static {p0, v0, v10}, Lcom/locationlabs/v3client/V3ApiService;->a(Landroid/content/Context;Lcg;Z)V

    .line 380
    sget-object v0, Ldg;->p:Ldg;

    if-ne p1, v0, :cond_b3

    .line 381
    invoke-static {p0}, Lcom/locationlabs/v3client/LockScreenService;->d(Landroid/content/Context;)Lbn;

    move-result-object v0

    .line 382
    if-eqz v0, :cond_75

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbn;->setExpiration(Ljava/lang/Long;)V

    .line 383
    :cond_75
    invoke-static {p0}, Lcom/locationlabs/v3client/LockScreenService;->f(Landroid/content/Context;)V

    .line 385
    const-string v0, "DWD_REGULAR_OVERRIDE_TIME_SEC"

    invoke-static {v0}, Ln;->c(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    .line 386
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 387
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(DWD): setting override until to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-long v5, v2, v0

    invoke-static {v5, v6}, Lt;->b(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Li;->c(Ljava/lang/String;)V

    .line 388
    invoke-static {p0}, Lal;->a(Landroid/content/Context;)Lw;

    move-result-object v4

    add-long v5, v2, v0

    invoke-interface {v4, v5, v6}, Lw;->l(J)V

    .line 390
    add-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-static {p0, v0, v1}, Lcom/locationlabs/v3client/LockScreenService;->a(Landroid/content/Context;J)V

    .line 411
    :cond_b2
    :goto_b2
    return-void

    .line 392
    :cond_b3
    sget-object v0, Ldg;->j:Ldg;

    if-ne p1, v0, :cond_b2

    .line 393
    invoke-static {p0}, Lal;->a(Landroid/content/Context;)Lw;

    move-result-object v1

    .line 395
    invoke-interface {v1}, Lw;->I()Ljava/util/List;

    move-result-object v2

    .line 396
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-wide v4, v11

    :goto_c4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_dd

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbn;

    .line 397
    invoke-virtual {v0}, Lbn;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    goto :goto_c4

    .line 399
    :cond_dd
    cmp-long v0, v4, v11

    if-eqz v0, :cond_e4

    .line 400
    invoke-interface {v1, v4, v5}, Lw;->j(J)V

    .line 402
    :cond_e4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(LOCKING): setting last override time to "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v3, v4}, Lt;->b(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Li;->c(Ljava/lang/String;)V

    .line 404
    invoke-interface {v1, v3, v4}, Lw;->k(J)V

    .line 406
    invoke-static {p0, v2}, Lcom/locationlabs/v3client/LockScreenService;->a(Landroid/content/Context;Ljava/util/List;)V

    goto :goto_b2
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;)V
    .registers 26
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lbn;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 174
    const/4 v3, 0x0

    .line 175
    invoke-static/range {p0 .. p0}, Lcom/locationlabs/v3client/LockScreenService;->d(Landroid/content/Context;)Lbn;

    move-result-object v4

    .line 176
    if-eqz v4, :cond_d

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    :cond_d
    invoke-static/range {p0 .. p0}, Lal;->a(Landroid/content/Context;)Lw;

    move-result-object v5

    .line 179
    invoke-interface {v5}, Lw;->M()J

    move-result-wide v6

    .line 180
    invoke-interface {v5}, Lw;->N()J

    move-result-wide v8

    .line 181
    const-wide/16 v10, 0x0

    .line 182
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 184
    const/4 v14, 0x0

    .line 185
    invoke-interface {v5}, Lw;->O()J

    move-result-wide v15

    .line 189
    cmp-long v15, v15, v12

    if-gez v15, :cond_d9

    .line 190
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    move-wide/from16 v16, v10

    move-object v10, v14

    move-object v11, v3

    :goto_30
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9c

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbn;

    .line 191
    invoke-static {v3, v6, v7, v8, v9}, Lcom/locationlabs/v3client/LockScreenService;->a(Lbn;JJ)Z

    move-result v14

    if-nez v14, :cond_206

    .line 192
    invoke-virtual {v3}, Lbn;->getStartAsMsec()Ljava/lang/Long;

    move-result-object v14

    .line 193
    if-eqz v14, :cond_54

    invoke-virtual {v3}, Lbn;->getStartAsMsec()Ljava/lang/Long;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    cmp-long v18, v18, v12

    if-gez v18, :cond_89

    .line 197
    :cond_54
    invoke-virtual {v3}, Lbn;->getSmsAutoReply()Z

    .line 198
    if-eqz v11, :cond_6d

    invoke-virtual {v11}, Lbn;->getExpiration()Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    invoke-virtual {v3}, Lbn;->getExpiration()Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    cmp-long v14, v18, v20

    if-gez v14, :cond_6e

    :cond_6d
    move-object v11, v3

    .line 202
    :cond_6e
    const-wide/16 v18, 0x0

    cmp-long v14, v16, v18

    if-eqz v14, :cond_80

    invoke-virtual {v3}, Lbn;->getExpirationAsMsec()Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    cmp-long v14, v16, v18

    if-lez v14, :cond_206

    .line 203
    :cond_80
    invoke-virtual {v3}, Lbn;->getExpirationAsMsec()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    goto :goto_30

    .line 208
    :cond_89
    if-eqz v10, :cond_97

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    cmp-long v3, v18, v20

    if-lez v3, :cond_206

    :cond_97
    move-object v3, v14

    move-object v10, v11

    :goto_99
    move-object v11, v10

    move-object v10, v3

    .line 212
    goto :goto_30

    :cond_9c
    move-object v3, v10

    move-object v14, v11

    move-wide/from16 v22, v16

    move-wide/from16 v15, v22

    .line 223
    :goto_a2
    if-eqz v3, :cond_ae

    .line 224
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object/from16 v0, p0

    move-wide v1, v6

    invoke-static {v0, v1, v2}, Lcom/locationlabs/v3client/LockScreenService;->a(Landroid/content/Context;J)V

    .line 226
    :cond_ae
    invoke-interface {v5}, Lw;->I()Ljava/util/List;

    move-result-object v3

    .line 227
    if-eqz v4, :cond_b7

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    :cond_b7
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_c5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbn;

    invoke-virtual {v3}, Lbn;->getId()Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v4, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c5

    .line 220
    :cond_d9
    const-string v6, "Not iterating through lock configs, overridden"

    invoke-static {v6}, Li;->c(Ljava/lang/String;)V

    move-wide v15, v10

    move-object/from16 v22, v14

    move-object v14, v3

    move-object/from16 v3, v22

    goto :goto_a2

    .line 229
    :cond_e5
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_e9
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbn;

    invoke-virtual {v3}, Lbn;->getId()Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_107

    invoke-virtual {v3}, Lbn;->getId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e9

    :cond_107
    invoke-virtual {v3}, Lbn;->getId()Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e9

    :cond_10f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    new-instance v9, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v10

    add-int/2addr v3, v10

    invoke-direct {v9, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_129
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_154

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbn;

    invoke-virtual {v3}, Lbn;->isFake()Z

    move-result v10

    if-eqz v10, :cond_14a

    const-string v10, "unlock"

    invoke-static {v7, v8, v10, v3}, Lam;->a(JLjava/lang/String;Lbn;)Lcg;

    move-result-object v3

    const/4 v10, 0x1

    move-object/from16 v0, p0

    move-object v1, v3

    move v2, v10

    invoke-static {v0, v1, v2}, Lcom/locationlabs/v3client/V3ApiService;->a(Landroid/content/Context;Lcg;Z)V

    goto :goto_129

    :cond_14a
    const-string v10, "unlock"

    invoke-static {v3, v7, v8, v10}, Lcom/locationlabs/v3client/LockScreenService;->a(Lbn;JLjava/lang/String;)Lce;

    move-result-object v3

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_129

    :cond_154
    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_15c
    :goto_15c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_195

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbn;

    invoke-virtual {v3}, Lbn;->getStartAsMsec()Ljava/lang/Long;

    move-result-object v6

    if-eqz v6, :cond_176

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v6, v10, v7

    if-gtz v6, :cond_15c

    :cond_176
    invoke-virtual {v3}, Lbn;->isFake()Z

    move-result v6

    if-eqz v6, :cond_18b

    const-string v6, "lock"

    invoke-static {v7, v8, v6, v3}, Lam;->a(JLjava/lang/String;Lbn;)Lcg;

    move-result-object v3

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object v1, v3

    move v2, v6

    invoke-static {v0, v1, v2}, Lcom/locationlabs/v3client/V3ApiService;->a(Landroid/content/Context;Lcg;Z)V

    goto :goto_15c

    :cond_18b
    const-string v6, "lock"

    invoke-static {v3, v7, v8, v6}, Lcom/locationlabs/v3client/LockScreenService;->a(Lbn;JLjava/lang/String;)Lce;

    move-result-object v3

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_15c

    :cond_195
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1a7

    invoke-static {v7, v8, v9}, Lam;->a(JLjava/util/List;)Lcg;

    move-result-object v3

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object v1, v3

    move v2, v4

    invoke-static {v0, v1, v2}, Lcom/locationlabs/v3client/V3ApiService;->a(Landroid/content/Context;Lcg;Z)V

    .line 230
    :cond_1a7
    invoke-static/range {p1 .. p1}, Lcom/locationlabs/v3client/LockScreenService;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lw;->a(Ljava/util/List;)V

    .line 231
    if-eqz v14, :cond_202

    invoke-virtual {v14}, Lbn;->shouldLock()Z

    move-result p1

    if-eqz p1, :cond_202

    .line 237
    invoke-virtual {v14}, Lbn;->getExpirationAsMsec()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v14}, Lbn;->getApplicationId()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v14}, Lbn;->isFake()Z

    move-result p1

    if-eqz p1, :cond_1fd

    sget-object p1, Ldg;->p:Ldg;

    move-object/from16 v7, p1

    :goto_1cf
    invoke-virtual {v14}, Lbn;->getAllowedPackages()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v14}, Lbn;->getLaunchableActivities()Ljava/util/List;

    move-result-object v9

    invoke-virtual {v14}, Lbn;->getNumbers()Ljava/util/List;

    move-result-object v10

    invoke-virtual {v14}, Lbn;->getSmsAutoReply()Z

    move-result v11

    invoke-virtual {v14}, Lbn;->getEnableOverride()Z

    move-result v12

    invoke-virtual {v14}, Lbn;->getSmsIncomingWhitelist()Z

    move-result v13

    invoke-virtual {v14}, Lbn;->getAllowHandsFree()Z

    move-result v14

    move-object/from16 v3, p0

    invoke-static/range {v3 .. v14}, Lcom/locationlabs/v3client/feature/lock/LockService;->a(Landroid/content/Context;JLjava/lang/Integer;Ldg;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZZZZ)V

    .line 253
    :goto_1f0
    const-wide/16 v3, 0x0

    cmp-long p1, v15, v3

    if-eqz p1, :cond_1fc

    .line 254
    move-object/from16 v0, p0

    move-wide v1, v15

    invoke-static {v0, v1, v2}, Lcom/locationlabs/v3client/LockScreenService;->b(Landroid/content/Context;J)V

    .line 256
    :cond_1fc
    return-void

    .line 237
    :cond_1fd
    sget-object p1, Ldg;->j:Ldg;

    move-object/from16 v7, p1

    goto :goto_1cf

    .line 250
    :cond_202
    invoke-static/range {p0 .. p0}, Lcom/locationlabs/v3client/feature/lock/LockService;->a(Landroid/content/Context;)V

    goto :goto_1f0

    :cond_206
    move-object v3, v10

    move-object v10, v11

    goto/16 :goto_99
.end method

.method private static a(Lbn;JJ)Z
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 157
    invoke-virtual {p0}, Lbn;->isFake()Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v2

    .line 162
    :goto_8
    return v0

    .line 159
    :cond_9
    invoke-virtual {p0}, Lbn;->getStart()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Lbn;->getStartAsMsec()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, p3

    if-lez v0, :cond_1d

    move v0, v2

    .line 160
    goto :goto_8

    .line 162
    :cond_1d
    invoke-virtual {p0}, Lbn;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-gtz v0, :cond_2b

    const/4 v0, 0x1

    goto :goto_8

    :cond_2b
    move v0, v2

    goto :goto_8
.end method

.method public static b(Landroid/content/Context;)V
    .registers 5
    .parameter

    .prologue
    .line 314
    invoke-static {p0}, Lcom/locationlabs/v3client/LockScreenService;->d(Landroid/content/Context;)Lbn;

    move-result-object v0

    .line 315
    if-eqz v0, :cond_23

    .line 317
    const-wide v1, 0x20c49ba5e353f7L

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbn;->setExpiration(Ljava/lang/Long;)V

    .line 318
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 319
    const-string v3, "lock"

    invoke-static {v1, v2, v3, v0}, Lam;->a(JLjava/lang/String;Lbn;)Lcg;

    move-result-object v0

    .line 320
    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/locationlabs/v3client/V3ApiService;->a(Landroid/content/Context;Lcg;Z)V

    .line 321
    invoke-static {p0}, Lcom/locationlabs/v3client/LockScreenService;->f(Landroid/content/Context;)V

    .line 326
    :cond_23
    return-void
.end method

.method private static b(Landroid/content/Context;J)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 261
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 262
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/locationlabs/v3client/LockScreenService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.locationlabs.action.CHECK_FOR_EXPIRES"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 264
    invoke-static {p0, v3, v1, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v3, p1, p2, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 265
    return-void
.end method

.method public static c(Landroid/content/Context;)V
    .registers 5
    .parameter

    .prologue
    .line 330
    invoke-static {p0}, Lcom/locationlabs/v3client/LockScreenService;->d(Landroid/content/Context;)Lbn;

    move-result-object v0

    .line 331
    if-eqz v0, :cond_1d

    .line 332
    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbn;->setExpiration(Ljava/lang/Long;)V

    .line 333
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 334
    const-string v3, "unlock"

    invoke-static {v1, v2, v3, v0}, Lam;->a(JLjava/lang/String;Lbn;)Lcg;

    move-result-object v0

    .line 335
    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/locationlabs/v3client/V3ApiService;->a(Landroid/content/Context;Lcg;Z)V

    .line 340
    :cond_1d
    invoke-static {p0}, Lcom/locationlabs/v3client/LockScreenService;->f(Landroid/content/Context;)V

    .line 341
    return-void
.end method

.method public static d(Landroid/content/Context;)Lbn;
    .registers 4
    .parameter

    .prologue
    .line 358
    sget-boolean v0, Lcom/locationlabs/v3client/LockScreenService;->b:Z

    if-eqz v0, :cond_7

    sget-object v0, Lcom/locationlabs/v3client/LockScreenService;->a:Lbn;

    .line 372
    :goto_6
    return-object v0

    .line 360
    :cond_7
    const-class v0, Lcom/locationlabs/v3client/LockScreenService;

    monitor-enter v0

    .line 361
    :try_start_a
    sget-boolean v1, Lcom/locationlabs/v3client/LockScreenService;->b:Z

    if-nez v1, :cond_2b

    .line 362
    invoke-static {p0}, Lal;->a(Landroid/content/Context;)Lw;

    move-result-object v1

    .line 363
    invoke-interface {v1}, Lw;->J()Ljava/util/List;

    move-result-object v1

    .line 364
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lbn;

    .line 365
    sput-object p0, Lcom/locationlabs/v3client/LockScreenService;->a:Lbn;

    .line 366
    :cond_28
    const/4 v1, 0x1

    sput-boolean v1, Lcom/locationlabs/v3client/LockScreenService;->b:Z

    .line 370
    :cond_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_a .. :try_end_2c} :catchall_2f

    .line 372
    sget-object v0, Lcom/locationlabs/v3client/LockScreenService;->a:Lbn;

    goto :goto_6

    .line 370
    :catchall_2f
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static e(Landroid/content/Context;)V
    .registers 8
    .parameter

    .prologue
    .line 457
    sget-object v0, Ldg;->p:Ldg;

    const-string v1, "emergency"

    invoke-static {p0, v0, v1}, Lcom/locationlabs/v3client/LockScreenService;->a(Landroid/content/Context;Ldg;Ljava/lang/String;)V

    .line 458
    sget-object v0, Ldg;->j:Ldg;

    const-string v1, "emergency"

    invoke-static {p0, v0, v1}, Lcom/locationlabs/v3client/LockScreenService;->a(Landroid/content/Context;Ldg;Ljava/lang/String;)V

    .line 461
    const-string v0, "DWD_EMERGENCY_OVERRIDE_TIME_SEC"

    invoke-static {v0}, Ln;->c(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    .line 462
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 465
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(emergency): setting override until to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-long v5, v2, v0

    invoke-static {v5, v6}, Lt;->b(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Li;->c(Ljava/lang/String;)V

    .line 466
    invoke-static {p0}, Lal;->a(Landroid/content/Context;)Lw;

    move-result-object v4

    add-long v5, v2, v0

    invoke-interface {v4, v5, v6}, Lw;->l(J)V

    .line 468
    add-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-static {p0, v0, v1}, Lcom/locationlabs/v3client/LockScreenService;->a(Landroid/content/Context;J)V

    .line 469
    return-void
.end method

.method private static f(Landroid/content/Context;)V
    .registers 2
    .parameter

    .prologue
    .line 345
    invoke-static {p0}, Lal;->a(Landroid/content/Context;)Lw;

    move-result-object v0

    .line 346
    invoke-interface {v0}, Lw;->I()Ljava/util/List;

    move-result-object v0

    .line 347
    if-nez v0, :cond_f

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 348
    :cond_f
    invoke-static {p0, v0}, Lcom/locationlabs/v3client/LockScreenService;->a(Landroid/content/Context;Ljava/util/List;)V

    .line 349
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .registers 16
    .parameter

    .prologue
    const/4 v13, 0x1

    const-wide/16 v11, 0x0

    .line 41
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c

    .line 51
    :cond_b
    :goto_b
    return-void

    .line 43
    :cond_c
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.locationlabs.action.CHECK_FOR_EXPIRES"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cb

    .line 44
    invoke-static {p0}, Lal;->a(Landroid/content/Context;)Lw;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    invoke-static {p0}, Lcom/locationlabs/v3client/LockScreenService;->d(Landroid/content/Context;)Lbn;

    move-result-object v0

    if-eqz v0, :cond_e8

    invoke-virtual {v0}, Lbn;->getExpirationAsMsec()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v5, v5, v2

    if-gez v5, :cond_70

    const-string v5, "unlock"

    invoke-static {v2, v3, v5, v0}, Lam;->a(JLjava/lang/String;Lbn;)Lcg;

    move-result-object v0

    invoke-static {p0, v0, v13}, Lcom/locationlabs/v3client/V3ApiService;->a(Landroid/content/Context;Lcg;Z)V

    move-wide v5, v11

    :goto_41
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v1}, Lw;->I()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4e
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ae

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbn;

    invoke-virtual {v0}, Lbn;->getExpirationAsMsec()Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    cmp-long v9, v9, v2

    if-gez v9, :cond_8f

    const-string v9, "unlock"

    invoke-static {v0, v2, v3, v9}, Lcom/locationlabs/v3client/LockScreenService;->a(Lbn;JLjava/lang/String;)Lce;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4e

    :cond_70
    cmp-long v5, v11, v11

    if-eqz v5, :cond_80

    invoke-virtual {v0}, Lbn;->getExpirationAsMsec()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v5, v11, v5

    if-lez v5, :cond_e6

    :cond_80
    invoke-virtual {v0}, Lbn;->getExpirationAsMsec()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    :goto_88
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lbn;->getSmsAutoReply()Z

    goto :goto_41

    :cond_8f
    cmp-long v9, v5, v11

    if-eqz v9, :cond_9f

    invoke-virtual {v0}, Lbn;->getExpirationAsMsec()Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    cmp-long v9, v5, v9

    if-lez v9, :cond_a7

    :cond_9f
    invoke-virtual {v0}, Lbn;->getExpirationAsMsec()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    :cond_a7
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lbn;->getSmsAutoReply()Z

    goto :goto_4e

    :cond_ae
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_bb

    invoke-static {v2, v3, v7}, Lam;->a(JLjava/util/List;)Lcg;

    move-result-object v0

    invoke-static {p0, v0, v13}, Lcom/locationlabs/v3client/V3ApiService;->a(Landroid/content/Context;Lcg;Z)V

    :cond_bb
    invoke-static {v4}, Lcom/locationlabs/v3client/LockScreenService;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Lw;->a(Ljava/util/List;)V

    cmp-long v0, v5, v11

    if-eqz v0, :cond_b

    invoke-static {p0, v5, v6}, Lcom/locationlabs/v3client/LockScreenService;->b(Landroid/content/Context;J)V

    goto/16 :goto_b

    .line 45
    :cond_cb
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.locationlabs.action.CHECK_LOCKS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 46
    invoke-static {p0}, Lal;->a(Landroid/content/Context;)Lw;

    move-result-object v0

    invoke-interface {v0}, Lw;->I()Ljava/util/List;

    move-result-object v0

    .line 47
    if-eqz v0, :cond_b

    .line 48
    invoke-static {p0, v0}, Lcom/locationlabs/v3client/LockScreenService;->a(Landroid/content/Context;Ljava/util/List;)V

    goto/16 :goto_b

    :cond_e6
    move-wide v5, v11

    goto :goto_88

    :cond_e8
    move-wide v5, v11

    goto/16 :goto_41
.end method
