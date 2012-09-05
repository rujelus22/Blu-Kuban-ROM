.class public Lcom/locationlabs/v3client/FeatureService;
.super Landroid/app/Service;
.source "a"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/locationlabs/v3client/FeatureService$1;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/Object;

.field private static d:Lcom/locationlabs/v3client/FeatureService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 40
    const-string v0, "com.locationlabs.v3client.action.BECOME_STICKY"

    sput-object v0, Lcom/locationlabs/v3client/FeatureService;->a:Ljava/lang/String;

    .line 41
    const-string v0, "com.locationlabs.v3client.action.RESTART"

    sput-object v0, Lcom/locationlabs/v3client/FeatureService;->b:Ljava/lang/String;

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/locationlabs/v3client/FeatureService;->c:Ljava/lang/Object;

    .line 372
    const/4 v0, 0x0

    sput-object v0, Lcom/locationlabs/v3client/FeatureService;->d:Lcom/locationlabs/v3client/FeatureService;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 48
    sput-object p0, Lcom/locationlabs/v3client/FeatureService;->d:Lcom/locationlabs/v3client/FeatureService;

    .line 49
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 84
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/locationlabs/v3client/FeatureService;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/locationlabs/v3client/FeatureService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 85
    invoke-static {p0, v0}, La;->b(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 86
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lbj;)V
    .registers 12
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 233
    const-class v2, Lcom/locationlabs/v3client/FeatureService;

    monitor-enter v2

    :try_start_5
    invoke-virtual {p1}, Lbj;->getFeature()Ldg;

    move-result-object v3

    .line 235
    invoke-static {p0}, Lal;->a(Landroid/content/Context;)Lw;

    move-result-object v1

    .line 236
    invoke-virtual {p1}, Lbj;->getHash()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Lw;->a(Ldg;Ljava/lang/String;)V

    .line 238
    invoke-interface {v1, v3}, Lw;->c(Ldg;)Ljava/util/Set;

    move-result-object v4

    .line 239
    invoke-virtual {p1}, Lbj;->getAppIds()Ljava/util/Set;

    move-result-object v5

    .line 240
    invoke-interface {v1, v3, v5}, Lw;->a(Ldg;Ljava/util/Set;)V

    .line 243
    if-eqz v5, :cond_1c9

    .line 245
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 246
    invoke-interface {v0, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 247
    if-eqz v4, :cond_2e

    .line 248
    invoke-interface {v0, v4}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 251
    :cond_2e
    :goto_2e
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_32
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 252
    invoke-virtual {p1, v0}, Lbj;->getFeatureAppResourceInfos(Ljava/lang/Integer;)Ljava/util/Set;

    move-result-object v7

    invoke-static {p0, v3, v0, v7}, Lcom/locationlabs/v3client/FeatureService;->a(Landroid/content/Context;Ldg;Ljava/lang/Integer;Ljava/util/Set;)V
    :try_end_45
    .catchall {:try_start_5 .. :try_end_45} :catchall_46

    goto :goto_32

    .line 233
    :catchall_46
    move-exception v0

    monitor-exit v2

    throw v0

    .line 256
    :cond_49
    if-eqz v4, :cond_1c6

    .line 258
    :try_start_4b
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 259
    invoke-interface {v0, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 260
    if-eqz v5, :cond_58

    .line 261
    invoke-interface {v0, v5}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 264
    :cond_58
    :goto_58
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_70

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 265
    invoke-static {p0}, Lal;->a(Landroid/content/Context;)Lw;

    move-result-object v6

    invoke-interface {v6, p0, v3, v0}, Lw;->a(Landroid/content/Context;Ldg;Ljava/lang/Integer;)V

    goto :goto_5c

    .line 268
    :cond_70
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_74
    :goto_74
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 271
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 272
    invoke-interface {v1, v0}, Lw;->b(I)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_74

    .line 274
    new-instance v6, Ldh;

    invoke-static {}, Lal;->a()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v0}, Ldh;-><init>(Ljava/lang/String;I)V

    const-string v0, "com.locationlabs.v3client.action.GET_APPLICATION"

    iget v6, v6, Ldh;->a:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v0, v6}, Lcom/locationlabs/v3client/V3ApiService;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, La;->b(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_74

    .line 281
    :cond_a3
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_a7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_bb

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 282
    invoke-virtual {p1, v0}, Lbj;->getFeatureAppResourceInfos(Ljava/lang/Integer;)Ljava/util/Set;

    move-result-object v5

    invoke-static {p0, v3, v0, v5}, Lcom/locationlabs/v3client/FeatureService;->a(Landroid/content/Context;Ldg;Ljava/lang/Integer;Ljava/util/Set;)V

    goto :goto_a7

    .line 285
    :cond_bb
    invoke-virtual {p1}, Lbj;->isActive()Z

    move-result v0

    invoke-interface {v1, v3}, Lw;->a(Ldg;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eq v0, v4, :cond_df

    .line 287
    invoke-virtual {p1}, Lbj;->isActive()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Lw;->a(Ldg;Ljava/lang/Boolean;)V

    .line 288
    sget-object v0, Lcom/locationlabs/v3client/FeatureService$1;->a:[I

    invoke-virtual {v3}, Ldg;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1cc

    .line 301
    :cond_df
    :goto_df
    sget-object v0, Lcom/locationlabs/v3client/FeatureService$1;->a:[I

    invoke-virtual {v3}, Ldg;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1d6

    .line 344
    :goto_ea
    invoke-virtual {p1}, Lbj;->getSubHashes()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_f6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 345
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldg;

    invoke-virtual {v1}, Ldg;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v1, v0}, Lcom/locationlabs/v3client/FeatureService;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f6

    .line 290
    :pswitch_116
    invoke-static {p0}, Lcom/locationlabs/v3client/LocationService;->d(Landroid/content/Context;)V

    goto :goto_df

    .line 293
    :pswitch_11a
    invoke-virtual {p1}, Lbj;->isActive()Z

    move-result v0

    if-eqz v0, :cond_123

    invoke-static {p0}, Lcom/locationlabs/v3client/feature/polling/PollingService;->a(Landroid/content/Context;)V

    .line 294
    :cond_123
    invoke-virtual {p1}, Lbj;->isActive()Z

    move-result v0

    invoke-static {p0, v0}, Lcom/locationlabs/v3client/GpsStateService;->a(Landroid/content/Context;Z)V

    goto :goto_df

    .line 297
    :pswitch_12b
    invoke-static {p0}, Lcom/locationlabs/v3client/feature/applist/ApplistService;->a(Landroid/content/Context;)V

    goto :goto_df

    .line 304
    :pswitch_12f
    invoke-virtual {p1}, Lbj;->getConfig()Ljava/util/List;

    move-result-object v0

    .line 305
    invoke-static {p0, v0}, Lcom/locationlabs/v3client/LockScreenService;->a(Landroid/content/Context;Ljava/util/List;)V

    goto :goto_ea

    .line 309
    :pswitch_137
    invoke-virtual {p1}, Lbj;->getConfig()Ljava/util/List;

    move-result-object v0

    .line 311
    invoke-static {p0, v0}, Lcom/locationlabs/v3client/WindowShadeService;->a(Landroid/content/Context;Ljava/util/List;)V

    goto :goto_ea

    .line 314
    :pswitch_13f
    invoke-static {p0}, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->a(Landroid/content/Context;)V

    goto :goto_ea

    .line 318
    :pswitch_143
    invoke-static {p0}, Lcom/locationlabs/v3client/feature/contact/ContactManager;->a(Landroid/content/Context;)V

    goto :goto_ea

    .line 322
    :pswitch_147
    invoke-virtual {p1}, Lbj;->getConfig()Ljava/util/List;

    move-result-object v1

    .line 324
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_175

    .line 325
    invoke-static {p0}, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->a(Landroid/content/Context;)V

    .line 326
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v6, "enable"

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbn;

    invoke-static {v4, v5, v6, v0}, Lam;->a(JLjava/lang/String;Lbn;)Lcg;

    move-result-object v0

    .line 329
    const/4 v4, 0x1

    invoke-static {p0, v0, v4}, Lcom/locationlabs/v3client/V3ApiService;->a(Landroid/content/Context;Lcg;Z)V

    .line 330
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbn;

    invoke-static {p0, v0}, Lcom/locationlabs/v3client/LockScreenService;->a(Landroid/content/Context;Lbn;)V

    goto/16 :goto_ea

    .line 332
    :cond_175
    invoke-static {p0}, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->b(Landroid/content/Context;)V

    .line 333
    invoke-static {p0}, Lcom/locationlabs/v3client/LockScreenService;->d(Landroid/content/Context;)Lbn;

    move-result-object v0

    .line 334
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v1, "disable"

    invoke-static {v4, v5, v1, v0}, Lam;->a(JLjava/lang/String;Lbn;)Lcg;

    move-result-object v0

    .line 337
    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/locationlabs/v3client/V3ApiService;->a(Landroid/content/Context;Lcg;Z)V

    .line 338
    invoke-static {p0}, Lcom/locationlabs/v3client/LockScreenService;->a(Landroid/content/Context;)V

    goto/16 :goto_ea

    .line 350
    :cond_18f
    sget-object v1, Lcom/locationlabs/v3client/FeatureService;->c:Ljava/lang/Object;

    monitor-enter v1
    :try_end_192
    .catchall {:try_start_4b .. :try_end_192} :catchall_46

    .line 358
    :try_start_192
    sget-object v0, Ldg;->A:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lan;

    .line 359
    if-eqz v0, :cond_19f

    invoke-virtual {v0}, Lan;->c()Z

    .line 361
    :cond_19f
    sget-object v0, Ldg;->A:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v8

    :goto_1aa
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1bd

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lan;

    .line 362
    invoke-virtual {v0}, Lan;->b()Z

    move-result v0

    .line 364
    or-int/2addr v0, v4

    move v4, v0

    .line 365
    goto :goto_1aa

    .line 367
    :cond_1bd
    invoke-static {p0, v4}, Lcom/locationlabs/v3client/FeatureService;->a(Landroid/content/Context;Z)V

    .line 368
    monitor-exit v1
    :try_end_1c1
    .catchall {:try_start_192 .. :try_end_1c1} :catchall_1c3

    monitor-exit v2

    return-void

    :catchall_1c3
    move-exception v0

    :try_start_1c4
    monitor-exit v1

    throw v0
    :try_end_1c6
    .catchall {:try_start_1c4 .. :try_end_1c6} :catchall_46

    :cond_1c6
    move-object v0, v9

    goto/16 :goto_58

    :cond_1c9
    move-object v0, v9

    goto/16 :goto_2e

    .line 288
    :pswitch_data_1cc
    .packed-switch 0x1
        :pswitch_116
        :pswitch_11a
        :pswitch_12b
    .end packed-switch

    .line 301
    :pswitch_data_1d6
    .packed-switch 0x4
        :pswitch_12f
        :pswitch_137
        :pswitch_13f
        :pswitch_143
        :pswitch_147
    .end packed-switch
.end method

.method private static a(Landroid/content/Context;Ldg;Ljava/lang/Integer;Ljava/util/Set;)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ldg;",
            "Ljava/lang/Integer;",
            "Ljava/util/Set",
            "<",
            "Lu",
            "<",
            "Ljava/lang/String;",
            "Leg;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 188
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu;

    .line 189
    iget-object v1, v0, Lu;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 190
    iget-object v2, v0, Lu;->b:Ljava/lang/Object;

    check-cast v2, Leg;

    .line 191
    iget-object v0, v0, Lu;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 192
    invoke-static {v1}, Lah;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6e

    .line 194
    invoke-static {v1, v2}, Lah;->a(Ljava/lang/String;Leg;)V

    .line 195
    invoke-static {v1, p2}, Lah;->a(Ljava/lang/String;Ljava/lang/Integer;)Lbk;

    move-result-object v2

    .line 196
    if-eqz v2, :cond_43

    .line 197
    invoke-static {p0}, Lal;->a(Landroid/content/Context;)Lw;

    move-result-object v1

    .line 198
    invoke-interface {v1, v2}, Lw;->a(Lbk;)Ljava/lang/String;

    move-result-object v4

    .line 200
    invoke-interface {v1, p0, v2}, Lw;->b(Landroid/content/Context;Lbk;)Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 204
    :cond_3f
    invoke-static {p0, v2}, Lah;->a(Landroid/content/Context;Lbk;)V

    goto :goto_4

    .line 207
    :cond_43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t find resource description, this should not happen: appId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " feature="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " resourceName="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lj;->a(Ljava/lang/String;)V

    goto :goto_4

    .line 210
    :cond_6e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ignoring unexpected resource name for app id "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " for feature "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Li;->d(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 214
    :cond_9a
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 155
    invoke-static {p1}, Ldg;->a(Ljava/lang/String;)Ldg;

    move-result-object v0

    .line 156
    if-nez v0, :cond_1d

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Feature? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Li;->e(Ljava/lang/String;)V

    .line 169
    :cond_1c
    :goto_1c
    return-void

    .line 160
    :cond_1d
    invoke-static {p0}, Lal;->a(Landroid/content/Context;)Lw;

    move-result-object v1

    invoke-interface {v1, v0}, Lw;->b(Ldg;)Ljava/lang/String;

    move-result-object v0

    .line 163
    if-nez v0, :cond_29

    const-string v0, "-"

    .line 165
    :cond_29
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 167
    invoke-static {p0, p1, p2}, Lcom/locationlabs/v3client/V3ApiService;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1c
.end method

.method public static a(Landroid/content/Context;Ljava/util/Map;)V
    .registers 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ldg;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 138
    invoke-static {p0}, Lal;->a(Landroid/content/Context;)Lw;

    move-result-object v0

    invoke-interface {v0}, Lw;->o()Ljava/util/Map;

    move-result-object v2

    .line 139
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_10
    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldg;

    .line 141
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 144
    if-nez v1, :cond_48

    const-string v1, "-"

    move-object v4, v1

    .line 146
    :goto_27
    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 148
    :cond_39
    invoke-virtual {v0}, Ldg;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v1, v0}, Lcom/locationlabs/v3client/V3ApiService;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    .line 151
    :cond_47
    return-void

    :cond_48
    move-object v4, v1

    goto :goto_27
.end method

.method private static a(Landroid/content/Context;Z)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 106
    if-eqz p1, :cond_13

    .line 107
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/locationlabs/v3client/FeatureService;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/locationlabs/v3client/FeatureService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, La;->b(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 113
    :cond_12
    :goto_12
    return-void

    .line 110
    :cond_13
    sget-object v0, Lcom/locationlabs/v3client/FeatureService;->d:Lcom/locationlabs/v3client/FeatureService;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/locationlabs/v3client/FeatureService;->stopSelf()V

    goto :goto_12
.end method

.method public static b(Landroid/content/Context;)V
    .registers 9
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 172
    invoke-static {p0}, Lal;->a(Landroid/content/Context;)Lw;

    move-result-object v0

    .line 173
    invoke-static {}, Ldg;->values()[Ldg;

    move-result-object v1

    array-length v2, v1

    move v3, v6

    :goto_c
    if-ge v3, v2, :cond_20

    aget-object v4, v1, v3

    .line 174
    invoke-interface {v0, v4, v7}, Lw;->a(Ldg;Ljava/lang/String;)V

    .line 175
    invoke-interface {v0, v4, v7}, Lw;->a(Ldg;Ljava/util/Set;)V

    .line 176
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Lw;->a(Ldg;Ljava/lang/Boolean;)V

    .line 173
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 178
    :cond_20
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter

    .prologue
    .line 59
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 2

    .prologue
    .line 52
    const-string v0, "FeatSvc create"

    invoke-static {v0}, Li;->c(Ljava/lang/String;)V

    .line 53
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 54
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 55
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 375
    const/4 v0, 0x0

    sput-object v0, Lcom/locationlabs/v3client/FeatureService;->d:Lcom/locationlabs/v3client/FeatureService;

    .line 377
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 378
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 64
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 66
    sget-object v0, Lcom/locationlabs/v3client/FeatureService;->b:Ljava/lang/String;

    .line 67
    if-eqz p1, :cond_c

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 69
    :cond_c
    sget-object v1, Lcom/locationlabs/v3client/FeatureService;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 70
    const-string v0, "FeatSvc RES"

    invoke-static {v0}, Li;->c(Ljava/lang/String;)V

    move v0, v2

    .line 79
    :goto_1a
    return v0

    .line 73
    :cond_1b
    sget-object v1, Lcom/locationlabs/v3client/FeatureService;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 74
    const-string v0, "FeatSvc BC_ST"

    invoke-static {v0}, Li;->c(Ljava/lang/String;)V

    move v0, v2

    .line 75
    goto :goto_1a

    .line 79
    :cond_2a
    const/4 v0, 0x2

    goto :goto_1a
.end method

.method public run()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 119
    sget-object v1, Lcom/locationlabs/v3client/FeatureService;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 124
    :try_start_4
    const-string v0, "FeatureService initial state thread"

    invoke-static {v0}, Li;->c(Ljava/lang/String;)V

    .line 126
    sget-object v0, Ldg;->A:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v4

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lan;

    .line 127
    invoke-virtual {v0}, Lan;->c()Z

    move-result v0

    if-nez v0, :cond_28

    if-eqz v3, :cond_2b

    :cond_28
    const/4 v0, 0x1

    :goto_29
    move v3, v0

    goto :goto_14

    :cond_2b
    move v0, v4

    goto :goto_29

    .line 130
    :cond_2d
    invoke-static {p0, v3}, Lcom/locationlabs/v3client/FeatureService;->a(Landroid/content/Context;Z)V

    .line 132
    monitor-exit v1
    :try_end_31
    .catchall {:try_start_4 .. :try_end_31} :catchall_32

    return-void

    :catchall_32
    move-exception v0

    monitor-exit v1

    throw v0
.end method
