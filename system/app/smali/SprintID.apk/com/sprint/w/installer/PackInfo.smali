.class public Lcom/sprint/w/installer/PackInfo;
.super Ljava/lang/Object;
.source "PackInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final ACTIVATION_TIME:Ljava/lang/String; = "activationTime"

.field private static final IS_DEFAULT:Ljava/lang/String; = "isDefault"

.field private static final IS_LOCKED:Ljava/lang/String; = "isLocked"

.field private static final IS_NEW_INSTALL:Ljava/lang/String; = "isNewInstall"

.field private static final PACK_ID:Ljava/lang/String; = "packId"

.field private static final PACK_NAME:Ljava/lang/String; = "packName"

.field private static final PACK_PSI_ID:Ljava/lang/String; = "packPsiId"

.field private static final PACK_VERSION:Ljava/lang/String; = "packVersion"

.field private static final PACK_VERSION_CODE:Ljava/lang/String; = "packVersionCode"

.field private static log:Lcom/sprint/id/logger/Logger;


# instance fields
.field _id:I

.field public activationTime:J

.field public author:Ljava/lang/String;

.field public contactEmail:Ljava/lang/String;

.field public contactPhone:Ljava/lang/String;

.field public contactUrl:Ljava/lang/String;

.field private defaultPack:Z

.field public description:Ljava/lang/String;

.field public detailsIntent:Ljava/lang/String;

.field public downloadPercent:I

.field public iconBytes:[B

.field public id:Ljava/lang/String;

.field public installIntent:Ljava/lang/String;

.field private locked:Z

.field public name:Ljava/lang/String;

.field public namespacePrefix:Ljava/lang/String;

.field public newInstall:Z

.field public notReady:Z

.field public oemIconResource:I

.field private oemLauncherClass:Ljava/lang/String;

.field private oemLauncherPkg:Ljava/lang/String;

.field public psiId:Ljava/lang/String;

.field public srcUrl:Ljava/lang/String;

.field public switcherIconBytes:[B

.field public version:Ljava/lang/String;

.field public versionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 36
    const-class v0, Lcom/sprint/w/installer/PackInfo;

    invoke-static {v0}, Lcom/sprint/id/logger/Logger;->getLogger(Ljava/lang/Class;)Lcom/sprint/id/logger/Logger;

    move-result-object v0

    sput-object v0, Lcom/sprint/w/installer/PackInfo;->log:Lcom/sprint/id/logger/Logger;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object v0, p0, Lcom/sprint/w/installer/PackInfo;->iconBytes:[B

    .line 60
    iput-object v0, p0, Lcom/sprint/w/installer/PackInfo;->switcherIconBytes:[B

    return-void
.end method

.method public static getActivePackInfo(Landroid/content/Context;)Lcom/sprint/w/installer/PackInfo;
    .registers 8
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 81
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 82
    .local v2, sp:Landroid/content/SharedPreferences;
    const-string v4, "packId"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, id:Ljava/lang/String;
    if-eqz v0, :cond_5b

    .line 84
    new-instance v1, Lcom/sprint/w/installer/PackInfo;

    invoke-direct {v1}, Lcom/sprint/w/installer/PackInfo;-><init>()V

    .line 85
    .local v1, info:Lcom/sprint/w/installer/PackInfo;
    iput-object v0, v1, Lcom/sprint/w/installer/PackInfo;->id:Ljava/lang/String;

    .line 86
    const-string v4, "packName"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/sprint/w/installer/PackInfo;->name:Ljava/lang/String;

    .line 87
    const-string v4, "packVersion"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/sprint/w/installer/PackInfo;->version:Ljava/lang/String;

    .line 88
    const-string v4, "packVersionCode"

    const/4 v5, -0x1

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v1, Lcom/sprint/w/installer/PackInfo;->versionCode:I

    .line 89
    const-string v4, "packPsiId"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/sprint/w/installer/PackInfo;->psiId:Ljava/lang/String;

    .line 90
    const-string v3, "activationTime"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, v1, Lcom/sprint/w/installer/PackInfo;->activationTime:J

    .line 91
    const-string v3, "isNewInstall"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v1, Lcom/sprint/w/installer/PackInfo;->newInstall:Z

    .line 92
    const-string v3, "isDefault"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/sprint/w/installer/PackInfo;->setDefaultPack(Z)V

    .line 93
    const-string v3, "isLocked"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/sprint/w/installer/PackInfo;->setLocked(Z)V

    .line 96
    .end local v1           #info:Lcom/sprint/w/installer/PackInfo;
    :goto_5a
    return-object v1

    :cond_5b
    move-object v1, v3

    goto :goto_5a
.end method

.method public static isD2CPackInstalled(Landroid/content/Context;)Z
    .registers 10
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 413
    const/4 v8, 0x1

    .line 414
    .local v8, result:Z
    invoke-static {}, Lcom/sprint/w/installer/psi/PsiContentManager;->discoverVaultPacks()Ljava/util/ArrayList;

    move-result-object v7

    .line 415
    .local v7, packs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sprint/w/installer/psi/ServicePack;>;"
    if-eqz v7, :cond_4f

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v3, :cond_4f

    .line 416
    new-array v2, v3, [Ljava/lang/String;

    const-string v0, "id"

    aput-object v0, v2, v1

    .line 419
    .local v2, projection:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 422
    .local v6, cur:Landroid/database/Cursor;
    :try_start_16
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sprint/w/installer/ContentProvider;->URI_PACKS:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "id = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v3, 0x0

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sprint/w/installer/psi/ServicePack;

    invoke-virtual {v3}, Lcom/sprint/w/installer/psi/ServicePack;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 423
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_49
    .catchall {:try_start_16 .. :try_end_49} :catchall_50

    move-result v8

    .line 425
    if-eqz v6, :cond_4f

    .line 426
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 431
    .end local v2           #projection:[Ljava/lang/String;
    .end local v6           #cur:Landroid/database/Cursor;
    :cond_4f
    return v8

    .line 425
    .restart local v2       #projection:[Ljava/lang/String;
    .restart local v6       #cur:Landroid/database/Cursor;
    :catchall_50
    move-exception v0

    if-eqz v6, :cond_56

    .line 426
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_56
    throw v0
.end method

.method public static isDefaultPackInstalled(Landroid/content/Context;)Z
    .registers 9
    .parameter "context"

    .prologue
    .line 395
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "id"

    aput-object v1, v2, v0

    .line 398
    .local v2, projection:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 399
    .local v6, cur:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 402
    .local v7, result:Z
    :try_start_a
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sprint/w/installer/ContentProvider;->URI_PACKS:Landroid/net/Uri;

    const-string v3, "isDefault = 1"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 403
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1b
    .catchall {:try_start_a .. :try_end_1b} :catchall_22

    move-result v7

    .line 405
    if-eqz v6, :cond_21

    .line 406
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 409
    :cond_21
    return v7

    .line 405
    :catchall_22
    move-exception v0

    if-eqz v6, :cond_28

    .line 406
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_28
    throw v0
.end method

.method public static isPSIPackInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 10
    .parameter "context"
    .parameter "productId"

    .prologue
    .line 264
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "id"

    aput-object v1, v2, v0

    .line 267
    .local v2, projection:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 268
    .local v6, cur:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 271
    .local v7, result:Z
    :try_start_a
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sprint/w/installer/ContentProvider;->URI_PACKS:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "psiId = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 272
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_32
    .catchall {:try_start_a .. :try_end_32} :catchall_39

    move-result v7

    .line 274
    if-eqz v6, :cond_38

    .line 275
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 278
    :cond_38
    return v7

    .line 274
    :catchall_39
    move-exception v0

    if-eqz v6, :cond_3f

    .line 275
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3f
    throw v0
.end method

.method public static loadAllPackDetails(Landroid/content/Context;)Ljava/util/ArrayList;
    .registers 27
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sprint/w/installer/PackInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 331
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 332
    .local v25, packList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sprint/w/installer/PackInfo;>;"
    const/16 v23, 0x0

    .line 333
    .local v23, info:Lcom/sprint/w/installer/PackInfo;
    const/16 v2, 0xe

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "id"

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string v3, "psiId"

    aput-object v3, v4, v2

    const/4 v2, 0x3

    const-string v3, "author"

    aput-object v3, v4, v2

    const/4 v2, 0x4

    const-string v3, "name"

    aput-object v3, v4, v2

    const/4 v2, 0x5

    const-string v3, "descr"

    aput-object v3, v4, v2

    const/4 v2, 0x6

    const-string v3, "verName"

    aput-object v3, v4, v2

    const/4 v2, 0x7

    const-string v3, "verCode"

    aput-object v3, v4, v2

    const/16 v2, 0x8

    const-string v3, "contEmail"

    aput-object v3, v4, v2

    const/16 v2, 0x9

    const-string v3, "contPhone"

    aput-object v3, v4, v2

    const/16 v2, 0xa

    const-string v3, "contUrl"

    aput-object v3, v4, v2

    const/16 v2, 0xb

    const-string v3, "srcUrl"

    aput-object v3, v4, v2

    const/16 v2, 0xc

    const-string v3, "isDefault"

    aput-object v3, v4, v2

    const/16 v2, 0xd

    const-string v3, "isLocked"

    aput-object v3, v4, v2

    .line 338
    .local v4, projection:[Ljava/lang/String;
    const/4 v8, 0x0

    .line 341
    .local v8, cur:Landroid/database/Cursor;
    :try_start_58
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/sprint/w/installer/ContentProvider;->URI_PACKS:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "name"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 343
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_15f

    .line 344
    const-string v2, "_id"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 345
    .local v16, idxKey:I
    const-string v2, "id"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 346
    .local v15, idxId:I
    const-string v2, "psiId"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 347
    .local v19, idxPsiId:I
    const-string v2, "author"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 348
    .local v9, idxAuthor:I
    const-string v2, "name"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 349
    .local v18, idxName:I
    const-string v2, "descr"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 350
    .local v14, idxDesc:I
    const-string v2, "verName"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    .line 351
    .local v22, idxVersion:I
    const-string v2, "verCode"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    .line 356
    .local v21, idxVCode:I
    const-string v2, "contEmail"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 357
    .local v10, idxContEmail:I
    const-string v2, "contPhone"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 358
    .local v11, idxContPhone:I
    const-string v2, "contUrl"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 359
    .local v12, idxContUrl:I
    const-string v2, "srcUrl"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 360
    .local v20, idxSrcUrl:I
    const-string v2, "isDefault"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 361
    .local v13, idxDefault:I
    const-string v2, "isLocked"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
    :try_end_bf
    .catchall {:try_start_58 .. :try_end_bf} :catchall_169

    move-result v17

    .local v17, idxLocked:I
    move-object/from16 v24, v23

    .line 363
    .end local v23           #info:Lcom/sprint/w/installer/PackInfo;
    .local v24, info:Lcom/sprint/w/installer/PackInfo;
    :goto_c2
    :try_start_c2
    new-instance v23, Lcom/sprint/w/installer/PackInfo;

    invoke-direct/range {v23 .. v23}, Lcom/sprint/w/installer/PackInfo;-><init>()V
    :try_end_c7
    .catchall {:try_start_c2 .. :try_end_c7} :catchall_170

    .line 364
    .end local v24           #info:Lcom/sprint/w/installer/PackInfo;
    .restart local v23       #info:Lcom/sprint/w/installer/PackInfo;
    :try_start_c7
    move/from16 v0, v16

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, v23

    iput v2, v0, Lcom/sprint/w/installer/PackInfo;->_id:I

    .line 365
    invoke-interface {v8, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    iput-object v2, v0, Lcom/sprint/w/installer/PackInfo;->id:Ljava/lang/String;

    .line 366
    move/from16 v0, v19

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    iput-object v2, v0, Lcom/sprint/w/installer/PackInfo;->psiId:Ljava/lang/String;

    .line 367
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    iput-object v2, v0, Lcom/sprint/w/installer/PackInfo;->author:Ljava/lang/String;

    .line 368
    move/from16 v0, v18

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    iput-object v2, v0, Lcom/sprint/w/installer/PackInfo;->name:Ljava/lang/String;

    .line 369
    invoke-interface {v8, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    iput-object v2, v0, Lcom/sprint/w/installer/PackInfo;->description:Ljava/lang/String;

    .line 370
    move/from16 v0, v22

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    iput-object v2, v0, Lcom/sprint/w/installer/PackInfo;->version:Ljava/lang/String;

    .line 371
    move/from16 v0, v21

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, v23

    iput v2, v0, Lcom/sprint/w/installer/PackInfo;->versionCode:I

    .line 375
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    iput-object v2, v0, Lcom/sprint/w/installer/PackInfo;->contactEmail:Ljava/lang/String;

    .line 376
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    iput-object v2, v0, Lcom/sprint/w/installer/PackInfo;->contactPhone:Ljava/lang/String;

    .line 377
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    iput-object v2, v0, Lcom/sprint/w/installer/PackInfo;->contactUrl:Ljava/lang/String;

    .line 378
    move/from16 v0, v20

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    iput-object v2, v0, Lcom/sprint/w/installer/PackInfo;->srcUrl:Ljava/lang/String;

    .line 379
    invoke-interface {v8, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_165

    const/4 v2, 0x1

    :goto_13b
    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/sprint/w/installer/PackInfo;->setDefaultPack(Z)V

    .line 380
    move/from16 v0, v17

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_167

    const/4 v2, 0x1

    :goto_14a
    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/sprint/w/installer/PackInfo;->setLocked(Z)V

    .line 381
    invoke-static/range {v23 .. v23}, Lcom/sprint/w/installer/util/Util;->setPackNamespacePrefix(Lcom/sprint/w/installer/PackInfo;)V

    .line 382
    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 383
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_15c
    .catchall {:try_start_c7 .. :try_end_15c} :catchall_169

    move-result v2

    if-nez v2, :cond_174

    .line 387
    .end local v9           #idxAuthor:I
    .end local v10           #idxContEmail:I
    .end local v11           #idxContPhone:I
    .end local v12           #idxContUrl:I
    .end local v13           #idxDefault:I
    .end local v14           #idxDesc:I
    .end local v15           #idxId:I
    .end local v16           #idxKey:I
    .end local v17           #idxLocked:I
    .end local v18           #idxName:I
    .end local v19           #idxPsiId:I
    .end local v20           #idxSrcUrl:I
    .end local v21           #idxVCode:I
    .end local v22           #idxVersion:I
    :cond_15f
    if-eqz v8, :cond_164

    .line 388
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 391
    :cond_164
    return-object v25

    .line 379
    .restart local v9       #idxAuthor:I
    .restart local v10       #idxContEmail:I
    .restart local v11       #idxContPhone:I
    .restart local v12       #idxContUrl:I
    .restart local v13       #idxDefault:I
    .restart local v14       #idxDesc:I
    .restart local v15       #idxId:I
    .restart local v16       #idxKey:I
    .restart local v17       #idxLocked:I
    .restart local v18       #idxName:I
    .restart local v19       #idxPsiId:I
    .restart local v20       #idxSrcUrl:I
    .restart local v21       #idxVCode:I
    .restart local v22       #idxVersion:I
    :cond_165
    const/4 v2, 0x0

    goto :goto_13b

    .line 380
    :cond_167
    const/4 v2, 0x0

    goto :goto_14a

    .line 387
    .end local v9           #idxAuthor:I
    .end local v10           #idxContEmail:I
    .end local v11           #idxContPhone:I
    .end local v12           #idxContUrl:I
    .end local v13           #idxDefault:I
    .end local v14           #idxDesc:I
    .end local v15           #idxId:I
    .end local v16           #idxKey:I
    .end local v17           #idxLocked:I
    .end local v18           #idxName:I
    .end local v19           #idxPsiId:I
    .end local v20           #idxSrcUrl:I
    .end local v21           #idxVCode:I
    .end local v22           #idxVersion:I
    :catchall_169
    move-exception v2

    :goto_16a
    if-eqz v8, :cond_16f

    .line 388
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_16f
    throw v2

    .line 387
    .end local v23           #info:Lcom/sprint/w/installer/PackInfo;
    .restart local v9       #idxAuthor:I
    .restart local v10       #idxContEmail:I
    .restart local v11       #idxContPhone:I
    .restart local v12       #idxContUrl:I
    .restart local v13       #idxDefault:I
    .restart local v14       #idxDesc:I
    .restart local v15       #idxId:I
    .restart local v16       #idxKey:I
    .restart local v17       #idxLocked:I
    .restart local v18       #idxName:I
    .restart local v19       #idxPsiId:I
    .restart local v20       #idxSrcUrl:I
    .restart local v21       #idxVCode:I
    .restart local v22       #idxVersion:I
    .restart local v24       #info:Lcom/sprint/w/installer/PackInfo;
    :catchall_170
    move-exception v2

    move-object/from16 v23, v24

    .end local v24           #info:Lcom/sprint/w/installer/PackInfo;
    .restart local v23       #info:Lcom/sprint/w/installer/PackInfo;
    goto :goto_16a

    :cond_174
    move-object/from16 v24, v23

    .end local v23           #info:Lcom/sprint/w/installer/PackInfo;
    .restart local v24       #info:Lcom/sprint/w/installer/PackInfo;
    goto/16 :goto_c2
.end method

.method public static loadPackDetails(Landroid/content/Context;Ljava/lang/String;)Lcom/sprint/w/installer/PackInfo;
    .registers 13
    .parameter "context"
    .parameter "id"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 285
    const/4 v7, 0x0

    .line 286
    .local v7, info:Lcom/sprint/w/installer/PackInfo;
    const/16 v0, 0x10

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v10

    const-string v0, "id"

    aput-object v0, v2, v9

    const/4 v0, 0x2

    const-string v1, "psiId"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "author"

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const-string v1, "name"

    aput-object v1, v2, v0

    const/4 v0, 0x5

    const-string v1, "descr"

    aput-object v1, v2, v0

    const/4 v0, 0x6

    const-string v1, "verName"

    aput-object v1, v2, v0

    const/4 v0, 0x7

    const-string v1, "verCode"

    aput-object v1, v2, v0

    const/16 v0, 0x8

    const-string v1, "contEmail"

    aput-object v1, v2, v0

    const/16 v0, 0x9

    const-string v1, "contPhone"

    aput-object v1, v2, v0

    const/16 v0, 0xa

    const-string v1, "contUrl"

    aput-object v1, v2, v0

    const/16 v0, 0xb

    const-string v1, "icon"

    aput-object v1, v2, v0

    const/16 v0, 0xc

    const-string v1, "swIcon"

    aput-object v1, v2, v0

    const/16 v0, 0xd

    const-string v1, "srcUrl"

    aput-object v1, v2, v0

    const/16 v0, 0xe

    const-string v1, "isDefault"

    aput-object v1, v2, v0

    const/16 v0, 0xf

    const-string v1, "isLocked"

    aput-object v1, v2, v0

    .line 289
    .local v2, projection:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 291
    .local v6, cur:Landroid/database/Cursor;
    :try_start_5e
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sprint/w/installer/ContentProvider;->URI_PACKS:Landroid/net/Uri;

    const-string v3, "id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 294
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_148

    .line 295
    new-instance v8, Lcom/sprint/w/installer/PackInfo;

    invoke-direct {v8}, Lcom/sprint/w/installer/PackInfo;-><init>()V
    :try_end_7c
    .catchall {:try_start_5e .. :try_end_7c} :catchall_170

    .line 296
    .end local v7           #info:Lcom/sprint/w/installer/PackInfo;
    .local v8, info:Lcom/sprint/w/installer/PackInfo;
    :try_start_7c
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v8, Lcom/sprint/w/installer/PackInfo;->_id:I

    .line 297
    const-string v0, "id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/sprint/w/installer/PackInfo;->id:Ljava/lang/String;

    .line 298
    const-string v0, "psiId"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/sprint/w/installer/PackInfo;->psiId:Ljava/lang/String;

    .line 299
    const-string v0, "author"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/sprint/w/installer/PackInfo;->author:Ljava/lang/String;

    .line 300
    const-string v0, "name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/sprint/w/installer/PackInfo;->name:Ljava/lang/String;

    .line 301
    const-string v0, "descr"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/sprint/w/installer/PackInfo;->description:Ljava/lang/String;

    .line 302
    const-string v0, "verName"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/sprint/w/installer/PackInfo;->version:Ljava/lang/String;

    .line 303
    const-string v0, "verCode"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v8, Lcom/sprint/w/installer/PackInfo;->versionCode:I

    .line 304
    const-string v0, "icon"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    iput-object v0, v8, Lcom/sprint/w/installer/PackInfo;->iconBytes:[B

    .line 305
    const-string v0, "swIcon"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    iput-object v0, v8, Lcom/sprint/w/installer/PackInfo;->switcherIconBytes:[B

    .line 306
    const-string v0, "contEmail"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/sprint/w/installer/PackInfo;->contactEmail:Ljava/lang/String;

    .line 307
    const-string v0, "contPhone"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/sprint/w/installer/PackInfo;->contactPhone:Ljava/lang/String;

    .line 308
    const-string v0, "contUrl"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/sprint/w/installer/PackInfo;->contactUrl:Ljava/lang/String;

    .line 309
    const-string v0, "srcUrl"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/sprint/w/installer/PackInfo;->srcUrl:Ljava/lang/String;

    .line 310
    const-string v0, "isDefault"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v9, :cond_16c

    move v0, v9

    :goto_131
    invoke-virtual {v8, v0}, Lcom/sprint/w/installer/PackInfo;->setDefaultPack(Z)V

    .line 311
    const-string v0, "isLocked"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v9, :cond_16e

    move v0, v9

    :goto_141
    invoke-virtual {v8, v0}, Lcom/sprint/w/installer/PackInfo;->setLocked(Z)V

    .line 312
    invoke-static {v8}, Lcom/sprint/w/installer/util/Util;->setPackNamespacePrefix(Lcom/sprint/w/installer/PackInfo;)V
    :try_end_147
    .catchall {:try_start_7c .. :try_end_147} :catchall_177

    move-object v7, v8

    .line 315
    .end local v8           #info:Lcom/sprint/w/installer/PackInfo;
    .restart local v7       #info:Lcom/sprint/w/installer/PackInfo;
    :cond_148
    if-eqz v6, :cond_14d

    .line 316
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 319
    :cond_14d
    if-eqz v7, :cond_16b

    iget-object v0, v7, Lcom/sprint/w/installer/PackInfo;->srcUrl:Ljava/lang/String;

    if-eqz v0, :cond_16b

    iget-object v0, v7, Lcom/sprint/w/installer/PackInfo;->srcUrl:Ljava/lang/String;

    const-string v1, "psi://content/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16b

    .line 320
    iget-object v0, v7, Lcom/sprint/w/installer/PackInfo;->srcUrl:Ljava/lang/String;

    const-string v1, "psi://content/"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/sprint/w/installer/PackInfo;->psiId:Ljava/lang/String;

    .line 322
    :cond_16b
    return-object v7

    .end local v7           #info:Lcom/sprint/w/installer/PackInfo;
    .restart local v8       #info:Lcom/sprint/w/installer/PackInfo;
    :cond_16c
    move v0, v10

    .line 310
    goto :goto_131

    :cond_16e
    move v0, v10

    .line 311
    goto :goto_141

    .line 315
    .end local v8           #info:Lcom/sprint/w/installer/PackInfo;
    .restart local v7       #info:Lcom/sprint/w/installer/PackInfo;
    :catchall_170
    move-exception v0

    :goto_171
    if-eqz v6, :cond_176

    .line 316
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_176
    throw v0

    .line 315
    .end local v7           #info:Lcom/sprint/w/installer/PackInfo;
    .restart local v8       #info:Lcom/sprint/w/installer/PackInfo;
    :catchall_177
    move-exception v0

    move-object v7, v8

    .end local v8           #info:Lcom/sprint/w/installer/PackInfo;
    .restart local v7       #info:Lcom/sprint/w/installer/PackInfo;
    goto :goto_171
.end method

.method public static loadPackIcon(Landroid/content/Context;J)[B
    .registers 12
    .parameter "context"
    .parameter "rowId"

    .prologue
    .line 456
    const/4 v6, 0x0

    .line 457
    .local v6, bytes:[B
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "icon"

    aput-object v1, v2, v0

    .line 460
    .local v2, projection:[Ljava/lang/String;
    const/4 v7, 0x0

    .line 462
    .local v7, cur:Landroid/database/Cursor;
    :try_start_a
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sprint/w/installer/ContentProvider;->URI_PACKS:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "name"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 464
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 465
    const-string v0, "icon"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 466
    .local v8, index:I
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_2b
    .catchall {:try_start_a .. :try_end_2b} :catchall_32

    move-result-object v6

    .line 469
    .end local v8           #index:I
    :cond_2c
    if-eqz v7, :cond_31

    .line 470
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 473
    :cond_31
    return-object v6

    .line 469
    :catchall_32
    move-exception v0

    if-eqz v7, :cond_38

    .line 470
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_38
    throw v0
.end method

.method public static loadPackSwitcherIcon(Landroid/content/Context;J)[B
    .registers 12
    .parameter "context"
    .parameter "rowId"

    .prologue
    .line 435
    const/4 v6, 0x0

    .line 436
    .local v6, bytes:[B
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "swIcon"

    aput-object v1, v2, v0

    .line 439
    .local v2, projection:[Ljava/lang/String;
    const/4 v7, 0x0

    .line 441
    .local v7, cur:Landroid/database/Cursor;
    :try_start_a
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sprint/w/installer/ContentProvider;->URI_PACKS:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "name"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 443
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 444
    const-string v0, "swIcon"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 445
    .local v8, index:I
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_2b
    .catchall {:try_start_a .. :try_end_2b} :catchall_32

    move-result-object v6

    .line 448
    .end local v8           #index:I
    :cond_2c
    if-eqz v7, :cond_31

    .line 449
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 452
    :cond_31
    return-object v6

    .line 448
    :catchall_32
    move-exception v0

    if-eqz v7, :cond_38

    .line 449
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_38
    throw v0
.end method

.method public static parsePackDetails(Ljava/util/jar/JarFile;Ljava/lang/String;)Lcom/sprint/w/installer/PackInfo;
    .registers 26
    .parameter "f"
    .parameter "entryName"

    .prologue
    .line 126
    :try_start_0
    new-instance v12, Lcom/sprint/w/installer/PackInfo;

    invoke-direct {v12}, Lcom/sprint/w/installer/PackInfo;-><init>()V

    .line 127
    .local v12, info:Lcom/sprint/w/installer/PackInfo;
    invoke-virtual/range {p0 .. p1}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v9

    .line 128
    .local v9, entry:Ljava/util/jar/JarEntry;
    if-eqz v9, :cond_26f

    .line 129
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v5

    .line 130
    .local v5, db:Ljavax/xml/parsers/DocumentBuilder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v6

    .line 133
    .local v6, doc:Lorg/w3c/dom/Document;
    const-string v21, "pack-info"

    move-object/from16 v0, v21

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v16

    .line 134
    .local v16, nl:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v21

    if-lez v21, :cond_d7

    .line 135
    const/16 v21, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v17

    check-cast v17, Lorg/w3c/dom/Element;

    .line 136
    .local v17, packElem:Lorg/w3c/dom/Element;
    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v16

    .line 137
    const/4 v10, 0x0

    .local v10, i:I
    :goto_3e
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v21

    move/from16 v0, v21

    if-ge v10, v0, :cond_26a

    .line 138
    move-object/from16 v0, v16

    invoke-interface {v0, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v14

    .line 139
    .local v14, n:Lorg/w3c/dom/Node;
    invoke-interface {v14}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_ac

    .line 140
    move-object v0, v14

    check-cast v0, Lorg/w3c/dom/Element;

    move-object v8, v0

    .line 141
    .local v8, elem:Lorg/w3c/dom/Element;
    invoke-interface {v14}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5f} :catch_cb

    move-result-object v15

    .line 142
    .local v15, name:Ljava/lang/String;
    const/16 v20, 0x0

    .line 144
    .local v20, value:Ljava/lang/String;
    :try_start_62
    invoke-interface {v14}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_6d} :catch_af

    move-result-object v20

    .line 150
    :try_start_6e
    const-string v21, "icon"

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_f9

    .line 151
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v11

    .line 152
    .local v11, icEntry:Ljava/util/jar/JarEntry;
    if-eqz v11, :cond_dc

    .line 153
    move-object/from16 v0, p0

    invoke-static {v0, v11}, Lcom/sprint/w/installer/util/Util;->findBestResourceMatch(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;)Ljava/util/jar/JarEntry;

    move-result-object v11

    .line 154
    move-object/from16 v0, p0

    invoke-static {v0, v11}, Lcom/sprint/w/installer/util/Util;->readBytesFromJar(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;)[B

    move-result-object v2

    .line 155
    .local v2, bytes:[B
    if-nez v2, :cond_d9

    .line 156
    sget-object v21, Lcom/sprint/w/installer/PackInfo;->log:Lcom/sprint/id/logger/Logger;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Icon file not found in pack: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/sprint/id/logger/Logger;->w(Ljava/lang/String;)V

    .line 137
    .end local v2           #bytes:[B
    .end local v8           #elem:Lorg/w3c/dom/Element;
    .end local v11           #icEntry:Ljava/util/jar/JarEntry;
    .end local v15           #name:Ljava/lang/String;
    .end local v20           #value:Ljava/lang/String;
    :cond_ac
    :goto_ac
    add-int/lit8 v10, v10, 0x1

    goto :goto_3e

    .line 145
    .restart local v8       #elem:Lorg/w3c/dom/Element;
    .restart local v15       #name:Ljava/lang/String;
    .restart local v20       #value:Ljava/lang/String;
    :catch_af
    move-exception v7

    .line 146
    .local v7, e:Ljava/lang/Exception;
    sget-object v21, Lcom/sprint/w/installer/PackInfo;->log:Lcom/sprint/id/logger/Logger;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Ignoring empty node: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V
    :try_end_ca
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_ca} :catch_cb

    goto :goto_ac

    .line 222
    .end local v5           #db:Ljavax/xml/parsers/DocumentBuilder;
    .end local v6           #doc:Lorg/w3c/dom/Document;
    .end local v7           #e:Ljava/lang/Exception;
    .end local v8           #elem:Lorg/w3c/dom/Element;
    .end local v9           #entry:Ljava/util/jar/JarEntry;
    .end local v10           #i:I
    .end local v12           #info:Lcom/sprint/w/installer/PackInfo;
    .end local v14           #n:Lorg/w3c/dom/Node;
    .end local v15           #name:Ljava/lang/String;
    .end local v16           #nl:Lorg/w3c/dom/NodeList;
    .end local v17           #packElem:Lorg/w3c/dom/Element;
    .end local v20           #value:Ljava/lang/String;
    :catch_cb
    move-exception v7

    .line 223
    .restart local v7       #e:Ljava/lang/Exception;
    sget-object v21, Lcom/sprint/w/installer/PackInfo;->log:Lcom/sprint/id/logger/Logger;

    const-string v22, "Error saving pack details"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v7}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 225
    .end local v7           #e:Ljava/lang/Exception;
    :cond_d7
    :goto_d7
    const/4 v12, 0x0

    :goto_d8
    return-object v12

    .line 158
    .restart local v2       #bytes:[B
    .restart local v5       #db:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v6       #doc:Lorg/w3c/dom/Document;
    .restart local v8       #elem:Lorg/w3c/dom/Element;
    .restart local v9       #entry:Ljava/util/jar/JarEntry;
    .restart local v10       #i:I
    .restart local v11       #icEntry:Ljava/util/jar/JarEntry;
    .restart local v12       #info:Lcom/sprint/w/installer/PackInfo;
    .restart local v14       #n:Lorg/w3c/dom/Node;
    .restart local v15       #name:Ljava/lang/String;
    .restart local v16       #nl:Lorg/w3c/dom/NodeList;
    .restart local v17       #packElem:Lorg/w3c/dom/Element;
    .restart local v20       #value:Ljava/lang/String;
    :cond_d9
    :try_start_d9
    iput-object v2, v12, Lcom/sprint/w/installer/PackInfo;->iconBytes:[B

    goto :goto_ac

    .line 161
    .end local v2           #bytes:[B
    :cond_dc
    sget-object v21, Lcom/sprint/w/installer/PackInfo;->log:Lcom/sprint/id/logger/Logger;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Icon file not found in pack: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/sprint/id/logger/Logger;->w(Ljava/lang/String;)V

    goto :goto_ac

    .line 163
    .end local v11           #icEntry:Ljava/util/jar/JarEntry;
    :cond_f9
    const-string v21, "icon-switcher"

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_177

    .line 164
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v11

    .line 165
    .restart local v11       #icEntry:Ljava/util/jar/JarEntry;
    if-eqz v11, :cond_159

    .line 166
    move-object/from16 v0, p0

    invoke-static {v0, v11}, Lcom/sprint/w/installer/util/Util;->findBestResourceMatch(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;)Ljava/util/jar/JarEntry;

    move-result-object v11

    .line 167
    move-object/from16 v0, p0

    invoke-static {v0, v11}, Lcom/sprint/w/installer/util/Util;->readBytesFromJar(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;)[B

    move-result-object v2

    .line 168
    .restart local v2       #bytes:[B
    if-nez v2, :cond_139

    .line 169
    sget-object v21, Lcom/sprint/w/installer/PackInfo;->log:Lcom/sprint/id/logger/Logger;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Icon-switcher file not found in pack: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/sprint/id/logger/Logger;->w(Ljava/lang/String;)V

    goto/16 :goto_ac

    .line 171
    :cond_139
    sget-object v21, Lcom/sprint/w/installer/PackInfo;->log:Lcom/sprint/id/logger/Logger;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Icon-switcher file was found in pack: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/sprint/id/logger/Logger;->w(Ljava/lang/String;)V

    .line 172
    iput-object v2, v12, Lcom/sprint/w/installer/PackInfo;->switcherIconBytes:[B

    goto/16 :goto_ac

    .line 175
    .end local v2           #bytes:[B
    :cond_159
    sget-object v21, Lcom/sprint/w/installer/PackInfo;->log:Lcom/sprint/id/logger/Logger;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Icon-switcher file not found in pack: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/sprint/id/logger/Logger;->w(Ljava/lang/String;)V

    goto/16 :goto_ac

    .line 177
    .end local v11           #icEntry:Ljava/util/jar/JarEntry;
    :cond_177
    const-string v21, "id"

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_187

    .line 178
    move-object/from16 v0, v20

    iput-object v0, v12, Lcom/sprint/w/installer/PackInfo;->id:Ljava/lang/String;

    goto/16 :goto_ac

    .line 179
    :cond_187
    const-string v21, "name"

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_197

    .line 180
    move-object/from16 v0, v20

    iput-object v0, v12, Lcom/sprint/w/installer/PackInfo;->name:Ljava/lang/String;

    goto/16 :goto_ac

    .line 181
    :cond_197
    const-string v21, "description"

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1a7

    .line 182
    move-object/from16 v0, v20

    iput-object v0, v12, Lcom/sprint/w/installer/PackInfo;->description:Ljava/lang/String;

    goto/16 :goto_ac

    .line 183
    :cond_1a7
    const-string v21, "author"

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1b7

    .line 184
    move-object/from16 v0, v20

    iput-object v0, v12, Lcom/sprint/w/installer/PackInfo;->author:Ljava/lang/String;

    goto/16 :goto_ac

    .line 185
    :cond_1b7
    const-string v21, "version"

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1fa

    .line 186
    move-object/from16 v0, v20

    iput-object v0, v12, Lcom/sprint/w/installer/PackInfo;->version:Ljava/lang/String;
    :try_end_1c5
    .catch Ljava/lang/Exception; {:try_start_d9 .. :try_end_1c5} :catch_cb

    .line 188
    :try_start_1c5
    const-string v21, "code"

    move-object/from16 v0, v21

    invoke-interface {v8, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v21

    iput v0, v12, Lcom/sprint/w/installer/PackInfo;->versionCode:I
    :try_end_1d5
    .catch Ljava/lang/NumberFormatException; {:try_start_1c5 .. :try_end_1d5} :catch_1d7
    .catch Ljava/lang/Exception; {:try_start_1c5 .. :try_end_1d5} :catch_cb

    goto/16 :goto_ac

    .line 189
    :catch_1d7
    move-exception v7

    .line 190
    .local v7, e:Ljava/lang/NumberFormatException;
    :try_start_1d8
    sget-object v21, Lcom/sprint/w/installer/PackInfo;->log:Lcom/sprint/id/logger/Logger;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Invalid versoin code "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "code"

    move-object/from16 v0, v23

    invoke-interface {v8, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/sprint/id/logger/Logger;->w(Ljava/lang/String;)V

    goto/16 :goto_ac

    .line 192
    .end local v7           #e:Ljava/lang/NumberFormatException;
    :cond_1fa
    const-string v21, "contact"

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_ac

    .line 193
    invoke-interface {v14}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 194
    .local v3, contNodes:Lorg/w3c/dom/NodeList;
    const/4 v13, 0x0

    .local v13, j:I
    :goto_209
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v21

    move/from16 v0, v21

    if-ge v13, v0, :cond_ac

    .line 195
    invoke-interface {v3, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 196
    .local v4, contSub:Lorg/w3c/dom/Node;
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeType()S
    :try_end_218
    .catch Ljava/lang/Exception; {:try_start_1d8 .. :try_end_218} :catch_cb

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_243

    .line 197
    const/16 v19, 0x0

    .line 199
    .local v19, subValue:Ljava/lang/String;
    :try_start_223
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_22e
    .catch Ljava/lang/Exception; {:try_start_223 .. :try_end_22e} :catch_246

    move-result-object v19

    .line 203
    :try_start_22f
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v18

    .line 204
    .local v18, subName:Ljava/lang/String;
    const-string v21, "email"

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_248

    .line 205
    move-object/from16 v0, v19

    iput-object v0, v12, Lcom/sprint/w/installer/PackInfo;->contactEmail:Ljava/lang/String;

    .line 194
    .end local v18           #subName:Ljava/lang/String;
    .end local v19           #subValue:Ljava/lang/String;
    :cond_243
    :goto_243
    add-int/lit8 v13, v13, 0x1

    goto :goto_209

    .line 200
    .restart local v19       #subValue:Ljava/lang/String;
    :catch_246
    move-exception v7

    .line 201
    .local v7, e:Ljava/lang/Exception;
    goto :goto_243

    .line 206
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v18       #subName:Ljava/lang/String;
    :cond_248
    const-string v21, "url"

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_259

    .line 207
    move-object/from16 v0, v19

    iput-object v0, v12, Lcom/sprint/w/installer/PackInfo;->contactUrl:Ljava/lang/String;

    goto :goto_243

    .line 208
    :cond_259
    const-string v21, "phone"

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_243

    .line 209
    move-object/from16 v0, v19

    iput-object v0, v12, Lcom/sprint/w/installer/PackInfo;->contactPhone:Ljava/lang/String;

    goto :goto_243

    .line 216
    .end local v3           #contNodes:Lorg/w3c/dom/NodeList;
    .end local v4           #contSub:Lorg/w3c/dom/Node;
    .end local v8           #elem:Lorg/w3c/dom/Element;
    .end local v13           #j:I
    .end local v14           #n:Lorg/w3c/dom/Node;
    .end local v15           #name:Ljava/lang/String;
    .end local v18           #subName:Ljava/lang/String;
    .end local v19           #subValue:Ljava/lang/String;
    .end local v20           #value:Ljava/lang/String;
    :cond_26a
    invoke-static {v12}, Lcom/sprint/w/installer/util/Util;->setPackNamespacePrefix(Lcom/sprint/w/installer/PackInfo;)V

    goto/16 :goto_d8

    .line 220
    .end local v5           #db:Ljavax/xml/parsers/DocumentBuilder;
    .end local v6           #doc:Lorg/w3c/dom/Document;
    .end local v10           #i:I
    .end local v16           #nl:Lorg/w3c/dom/NodeList;
    .end local v17           #packElem:Lorg/w3c/dom/Element;
    :cond_26f
    sget-object v21, Lcom/sprint/w/installer/PackInfo;->log:Lcom/sprint/id/logger/Logger;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Could not find the pack-info.xml in the SPK. entryName: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;)V
    :try_end_28b
    .catch Ljava/lang/Exception; {:try_start_22f .. :try_end_28b} :catch_cb

    goto/16 :goto_d7
.end method

.method public static saveActivePackInfo(Landroid/content/Context;Lcom/sprint/w/installer/PackInfo;Z)V
    .registers 10
    .parameter "context"
    .parameter "info"
    .parameter "newInstall"

    .prologue
    .line 105
    sget-object v3, Lcom/sprint/w/installer/PackInfo;->log:Lcom/sprint/id/logger/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Recording installed packId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/sprint/w/installer/PackInfo;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 107
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 108
    .local v2, sp:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "packId"

    iget-object v5, p1, Lcom/sprint/w/installer/PackInfo;->id:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "packName"

    iget-object v5, p1, Lcom/sprint/w/installer/PackInfo;->name:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "packVersion"

    iget-object v5, p1, Lcom/sprint/w/installer/PackInfo;->version:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "packVersionCode"

    iget v5, p1, Lcom/sprint/w/installer/PackInfo;->versionCode:I

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "packPsiId"

    iget-object v5, p1, Lcom/sprint/w/installer/PackInfo;->psiId:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "activationTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-interface {v3, v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "isNewInstall"

    invoke-interface {v3, v4, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "isDefault"

    invoke-virtual {p1}, Lcom/sprint/w/installer/PackInfo;->isDefaultPack()Z

    move-result v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "isLocked"

    invoke-virtual {p1}, Lcom/sprint/w/installer/PackInfo;->isLocked()Z

    move-result v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 112
    :try_start_71
    const-string v3, "pack"

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 113
    .local v1, fos:Ljava/io/FileOutputStream;
    iget-object v3, p1, Lcom/sprint/w/installer/PackInfo;->id:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 114
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 115
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_87} :catch_88

    .line 119
    .end local v1           #fos:Ljava/io/FileOutputStream;
    :goto_87
    return-void

    .line 116
    :catch_88
    move-exception v0

    .line 117
    .local v0, e:Ljava/lang/Exception;
    sget-object v3, Lcom/sprint/w/installer/PackInfo;->log:Lcom/sprint/id/logger/Logger;

    const-string v4, "Error writing the pack file"

    invoke-virtual {v3, v4, v0}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_87
.end method

.method public static savePackDetails(Landroid/content/Context;Lcom/sprint/w/installer/PackInfo;)Landroid/net/Uri;
    .registers 10
    .parameter "context"
    .parameter "info"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 233
    :try_start_2
    sget-object v5, Lcom/sprint/w/installer/PackInfo;->log:Lcom/sprint/id/logger/Logger;

    const-string v6, "Saving pack details..."

    invoke-virtual {v5, v6}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 235
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 236
    .local v2, values:Landroid/content/ContentValues;
    const-string v5, "icon"

    iget-object v6, p1, Lcom/sprint/w/installer/PackInfo;->iconBytes:[B

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 237
    const-string v5, "swIcon"

    iget-object v6, p1, Lcom/sprint/w/installer/PackInfo;->switcherIconBytes:[B

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 238
    const-string v5, "id"

    iget-object v6, p1, Lcom/sprint/w/installer/PackInfo;->id:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const-string v5, "psiId"

    iget-object v6, p1, Lcom/sprint/w/installer/PackInfo;->psiId:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    const-string v5, "name"

    iget-object v6, p1, Lcom/sprint/w/installer/PackInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const-string v5, "descr"

    iget-object v6, p1, Lcom/sprint/w/installer/PackInfo;->description:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const-string v5, "author"

    iget-object v6, p1, Lcom/sprint/w/installer/PackInfo;->author:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const-string v5, "contEmail"

    iget-object v6, p1, Lcom/sprint/w/installer/PackInfo;->contactEmail:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const-string v5, "contUrl"

    iget-object v6, p1, Lcom/sprint/w/installer/PackInfo;->contactUrl:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const-string v5, "contPhone"

    iget-object v6, p1, Lcom/sprint/w/installer/PackInfo;->contactPhone:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const-string v5, "verName"

    iget-object v6, p1, Lcom/sprint/w/installer/PackInfo;->version:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const-string v5, "verCode"

    iget v6, p1, Lcom/sprint/w/installer/PackInfo;->versionCode:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 248
    const-string v5, "srcUrl"

    iget-object v6, p1, Lcom/sprint/w/installer/PackInfo;->srcUrl:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const-string v6, "isDefault"

    invoke-virtual {p1}, Lcom/sprint/w/installer/PackInfo;->isDefaultPack()Z

    move-result v5

    if-eqz v5, :cond_a6

    move v5, v3

    :goto_76
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 250
    const-string v5, "isLocked"

    invoke-virtual {p1}, Lcom/sprint/w/installer/PackInfo;->isLocked()Z

    move-result v6

    if-eqz v6, :cond_a8

    :goto_85
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 252
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 253
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v3, Lcom/sprint/w/installer/ContentProvider;->URI_PACKS:Landroid/net/Uri;

    const-string v4, "id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, p1, Lcom/sprint/w/installer/PackInfo;->id:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 256
    sget-object v3, Lcom/sprint/w/installer/ContentProvider;->URI_PACKS:Landroid/net/Uri;

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_a4} :catch_aa

    move-result-object v3

    .line 260
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v2           #values:Landroid/content/ContentValues;
    :goto_a5
    return-object v3

    .restart local v2       #values:Landroid/content/ContentValues;
    :cond_a6
    move v5, v4

    .line 249
    goto :goto_76

    :cond_a8
    move v3, v4

    .line 250
    goto :goto_85

    .line 257
    .end local v2           #values:Landroid/content/ContentValues;
    :catch_aa
    move-exception v1

    .line 258
    .local v1, e:Ljava/lang/Exception;
    sget-object v3, Lcom/sprint/w/installer/PackInfo;->log:Lcom/sprint/id/logger/Logger;

    const-string v4, "Error saving pack details"

    invoke-virtual {v3, v4, v1}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 260
    const/4 v3, 0x0

    goto :goto_a5
.end method


# virtual methods
.method public getOemLauncher()Landroid/content/ComponentName;
    .registers 4

    .prologue
    .line 487
    iget-object v0, p0, Lcom/sprint/w/installer/PackInfo;->oemLauncherPkg:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sprint/w/installer/PackInfo;->oemLauncherClass:Ljava/lang/String;

    if-nez v0, :cond_a

    .line 488
    :cond_8
    const/4 v0, 0x0

    .line 490
    :goto_9
    return-object v0

    :cond_a
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/sprint/w/installer/PackInfo;->oemLauncherPkg:Ljava/lang/String;

    iget-object v2, p0, Lcom/sprint/w/installer/PackInfo;->oemLauncherClass:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9
.end method

.method public isDefaultPack()Z
    .registers 2

    .prologue
    .line 494
    iget-boolean v0, p0, Lcom/sprint/w/installer/PackInfo;->defaultPack:Z

    return v0
.end method

.method public isLocked()Z
    .registers 2

    .prologue
    .line 502
    iget-boolean v0, p0, Lcom/sprint/w/installer/PackInfo;->locked:Z

    return v0
.end method

.method public setDefaultPack(Z)V
    .registers 2
    .parameter "defaultPack"

    .prologue
    .line 498
    iput-boolean p1, p0, Lcom/sprint/w/installer/PackInfo;->defaultPack:Z

    .line 499
    return-void
.end method

.method public setLocked(Z)V
    .registers 2
    .parameter "locked"

    .prologue
    .line 506
    iput-boolean p1, p0, Lcom/sprint/w/installer/PackInfo;->locked:Z

    .line 507
    return-void
.end method

.method public setOemLauncher(Landroid/content/ComponentName;)V
    .registers 3
    .parameter "launcher"

    .prologue
    const/4 v0, 0x0

    .line 477
    if-nez p1, :cond_8

    .line 478
    iput-object v0, p0, Lcom/sprint/w/installer/PackInfo;->oemLauncherPkg:Ljava/lang/String;

    .line 479
    iput-object v0, p0, Lcom/sprint/w/installer/PackInfo;->oemLauncherClass:Ljava/lang/String;

    .line 484
    :goto_7
    return-void

    .line 481
    :cond_8
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/w/installer/PackInfo;->oemLauncherPkg:Ljava/lang/String;

    .line 482
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/w/installer/PackInfo;->oemLauncherClass:Ljava/lang/String;

    goto :goto_7
.end method
