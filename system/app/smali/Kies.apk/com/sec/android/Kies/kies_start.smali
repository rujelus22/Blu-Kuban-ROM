.class public Lcom/sec/android/Kies/kies_start;
.super Landroid/app/Service;
.source "kies_start.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/Kies/kies_start$kiesBinder;
    }
.end annotation


# static fields
.field public static m_nKiesActionEvent:I

.field public static m_nKiesMode:I

.field public static m_nUmsActionEvent:I

.field public static m_szLog:Ljava/lang/String;


# instance fields
.field public binder:Landroid/os/IBinder;

.field private mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mStorageManager:Landroid/os/storage/StorageManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 44
    sput v0, Lcom/sec/android/Kies/kies_start;->m_nKiesActionEvent:I

    .line 45
    sput v0, Lcom/sec/android/Kies/kies_start;->m_nKiesMode:I

    .line 53
    const/16 v0, 0xa

    sput v0, Lcom/sec/android/Kies/kies_start;->m_nUmsActionEvent:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 47
    new-instance v0, Lcom/sec/android/Kies/kies_start$kiesBinder;

    invoke-direct {v0, p0}, Lcom/sec/android/Kies/kies_start$kiesBinder;-><init>(Lcom/sec/android/Kies/kies_start;)V

    iput-object v0, p0, Lcom/sec/android/Kies/kies_start;->binder:Landroid/os/IBinder;

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/Kies/kies_start;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 528
    return-void
.end method


# virtual methods
.method public checkEbookSupport()Z
    .registers 7

    .prologue
    .line 298
    const-string v4, "KIES_START"

    const-string v5, "checkEbookSupport"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    invoke-virtual {p0}, Lcom/sec/android/Kies/kies_start;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 300
    .local v3, packMgr:Landroid/content/pm/PackageManager;
    const/16 v4, 0x2000

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v2

    .line 302
    .local v2, installedAppList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 303
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_15

    .line 304
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v5, "com.samsung.ebook.reader"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 305
    const-string v4, "KIES_START"

    const-string v5, "Found Ebook app [com.samsung.ebook.reader]"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    const/4 v4, 0x1

    .line 311
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    :goto_39
    return v4

    .line 310
    :cond_3a
    const-string v4, "KIES_START"

    const-string v5, "Not Found Ebook app"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    const/4 v4, 0x0

    goto :goto_39
.end method

.method public copyXml(Ljava/io/File;Ljava/io/File;)V
    .registers 23
    .parameter "targetFile"
    .parameter "resultFile"

    .prologue
    .line 321
    const-string v17, "KIES_START"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "copyXml :: target file ="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    new-instance v16, Ljava/io/File;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "_"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 324
    .local v16, tmpFile:Ljava/io/File;
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->isFile()Z

    move-result v17

    if-eqz v17, :cond_11e

    .line 325
    const/4 v7, 0x0

    .line 326
    .local v7, in:Ljava/io/InputStream;
    const/4 v11, 0x0

    .line 327
    .local v11, out:Ljava/io/OutputStream;
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_116

    .line 328
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_6f

    .line 329
    new-instance v17, Ljava/io/File;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "_"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 331
    :cond_6f
    const/4 v10, 0x0

    .line 332
    .local v10, nRead:I
    const/16 v17, 0x2000

    move/from16 v0, v17

    new-array v4, v0, [B

    .line 334
    .local v4, buffer:[B
    :try_start_76
    new-instance v8, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_7d
    .catchall {:try_start_76 .. :try_end_7d} :catchall_100
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_7d} :catch_159

    .line 335
    .end local v7           #in:Ljava/io/InputStream;
    .local v8, in:Ljava/io/InputStream;
    :try_start_7d
    new-instance v12, Ljava/io/FileOutputStream;

    move-object/from16 v0, p2

    invoke-direct {v12, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_84
    .catchall {:try_start_7d .. :try_end_84} :catchall_152
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_84} :catch_15c

    .line 336
    .end local v11           #out:Ljava/io/OutputStream;
    .local v12, out:Ljava/io/OutputStream;
    :goto_84
    :try_start_84
    invoke-virtual {v8, v4}, Ljava/io/InputStream;->read([B)I

    move-result v10

    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v10, v0, :cond_d6

    .line 337
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v12, v4, v0, v10}, Ljava/io/OutputStream;->write([BII)V
    :try_end_95
    .catchall {:try_start_84 .. :try_end_95} :catchall_155
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_95} :catch_96

    goto :goto_84

    .line 340
    :catch_96
    move-exception v5

    move-object v11, v12

    .end local v12           #out:Ljava/io/OutputStream;
    .restart local v11       #out:Ljava/io/OutputStream;
    move-object v7, v8

    .line 341
    .end local v8           #in:Ljava/io/InputStream;
    .local v5, e:Ljava/io/IOException;
    .restart local v7       #in:Ljava/io/InputStream;
    :goto_99
    :try_start_99
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 342
    const-string v17, "KIES_START"

    const-string v18, "File copy failed."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_b5

    .line 344
    new-instance v17, Ljava/io/File;

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v17}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_b5
    .catchall {:try_start_99 .. :try_end_b5} :catchall_100

    .line 348
    :cond_b5
    if-eqz v7, :cond_ba

    .line 350
    :try_start_b7
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_ba
    .catch Ljava/io/IOException; {:try_start_b7 .. :try_end_ba} :catch_f6

    .line 353
    :cond_ba
    :goto_ba
    if-eqz v11, :cond_bf

    .line 355
    :try_start_bc
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_bf
    .catch Ljava/io/IOException; {:try_start_bc .. :try_end_bf} :catch_fb

    .line 360
    .end local v5           #e:Ljava/io/IOException;
    :cond_bf
    :goto_bf
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_c8

    .line 361
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    .line 363
    :cond_c8
    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/io/File;->setReadable(ZZ)Z

    .line 379
    .end local v4           #buffer:[B
    .end local v7           #in:Ljava/io/InputStream;
    .end local v10           #nRead:I
    .end local v11           #out:Ljava/io/OutputStream;
    :cond_d5
    :goto_d5
    return-void

    .line 339
    .restart local v4       #buffer:[B
    .restart local v8       #in:Ljava/io/InputStream;
    .restart local v10       #nRead:I
    .restart local v12       #out:Ljava/io/OutputStream;
    :cond_d6
    :try_start_d6
    const-string v17, "KIES_START"

    const-string v18, "File copied."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_dd
    .catchall {:try_start_d6 .. :try_end_dd} :catchall_155
    .catch Ljava/io/IOException; {:try_start_d6 .. :try_end_dd} :catch_96

    .line 348
    if-eqz v8, :cond_e2

    .line 350
    :try_start_df
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_e2
    .catch Ljava/io/IOException; {:try_start_df .. :try_end_e2} :catch_ea

    .line 353
    :cond_e2
    :goto_e2
    if-eqz v12, :cond_160

    .line 355
    :try_start_e4
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_e7
    .catch Ljava/io/IOException; {:try_start_e4 .. :try_end_e7} :catch_ef

    move-object v11, v12

    .end local v12           #out:Ljava/io/OutputStream;
    .restart local v11       #out:Ljava/io/OutputStream;
    move-object v7, v8

    .line 356
    .end local v8           #in:Ljava/io/InputStream;
    .restart local v7       #in:Ljava/io/InputStream;
    goto :goto_bf

    .line 351
    .end local v7           #in:Ljava/io/InputStream;
    .end local v11           #out:Ljava/io/OutputStream;
    .restart local v8       #in:Ljava/io/InputStream;
    .restart local v12       #out:Ljava/io/OutputStream;
    :catch_ea
    move-exception v5

    .restart local v5       #e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e2

    .line 356
    .end local v5           #e:Ljava/io/IOException;
    :catch_ef
    move-exception v5

    .restart local v5       #e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    move-object v11, v12

    .end local v12           #out:Ljava/io/OutputStream;
    .restart local v11       #out:Ljava/io/OutputStream;
    move-object v7, v8

    .end local v8           #in:Ljava/io/InputStream;
    .restart local v7       #in:Ljava/io/InputStream;
    goto :goto_bf

    .line 351
    :catch_f6
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_ba

    .line 356
    :catch_fb
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_bf

    .line 348
    .end local v5           #e:Ljava/io/IOException;
    :catchall_100
    move-exception v17

    :goto_101
    if-eqz v7, :cond_106

    .line 350
    :try_start_103
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_106
    .catch Ljava/io/IOException; {:try_start_103 .. :try_end_106} :catch_10c

    .line 353
    :cond_106
    :goto_106
    if-eqz v11, :cond_10b

    .line 355
    :try_start_108
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_10b
    .catch Ljava/io/IOException; {:try_start_108 .. :try_end_10b} :catch_111

    .line 356
    :cond_10b
    :goto_10b
    throw v17

    .line 351
    :catch_10c
    move-exception v5

    .restart local v5       #e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_106

    .line 356
    .end local v5           #e:Ljava/io/IOException;
    :catch_111
    move-exception v5

    .restart local v5       #e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_10b

    .line 365
    .end local v4           #buffer:[B
    .end local v5           #e:Ljava/io/IOException;
    .end local v10           #nRead:I
    :cond_116
    const-string v17, "KIES_START"

    const-string v18, "target file does not exist"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d5

    .line 368
    .end local v7           #in:Ljava/io/InputStream;
    .end local v11           #out:Ljava/io/OutputStream;
    :cond_11e
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->mkdir()Z

    move-result v17

    if-nez v17, :cond_12b

    .line 369
    const-string v17, "KIES_START"

    const-string v18, "mkdir failed "

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :cond_12b
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v15

    .line 372
    .local v15, subFiles:[Ljava/io/File;
    if-eqz v15, :cond_d5

    array-length v0, v15

    move/from16 v17, v0

    if-eqz v17, :cond_d5

    .line 373
    move-object v3, v15

    .local v3, arr$:[Ljava/io/File;
    array-length v9, v3

    .local v9, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_139
    if-ge v6, v9, :cond_d5

    aget-object v13, v3, v6

    .line 374
    .local v13, sf:Ljava/io/File;
    new-instance v14, Ljava/io/File;

    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-direct {v14, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 375
    .local v14, subDst:Ljava/io/File;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/sec/android/Kies/kies_start;->copyXml(Ljava/io/File;Ljava/io/File;)V

    .line 373
    add-int/lit8 v6, v6, 0x1

    goto :goto_139

    .line 348
    .end local v3           #arr$:[Ljava/io/File;
    .end local v6           #i$:I
    .end local v9           #len$:I
    .end local v13           #sf:Ljava/io/File;
    .end local v14           #subDst:Ljava/io/File;
    .end local v15           #subFiles:[Ljava/io/File;
    .restart local v4       #buffer:[B
    .restart local v8       #in:Ljava/io/InputStream;
    .restart local v10       #nRead:I
    .restart local v11       #out:Ljava/io/OutputStream;
    :catchall_152
    move-exception v17

    move-object v7, v8

    .end local v8           #in:Ljava/io/InputStream;
    .restart local v7       #in:Ljava/io/InputStream;
    goto :goto_101

    .end local v7           #in:Ljava/io/InputStream;
    .end local v11           #out:Ljava/io/OutputStream;
    .restart local v8       #in:Ljava/io/InputStream;
    .restart local v12       #out:Ljava/io/OutputStream;
    :catchall_155
    move-exception v17

    move-object v11, v12

    .end local v12           #out:Ljava/io/OutputStream;
    .restart local v11       #out:Ljava/io/OutputStream;
    move-object v7, v8

    .end local v8           #in:Ljava/io/InputStream;
    .restart local v7       #in:Ljava/io/InputStream;
    goto :goto_101

    .line 340
    :catch_159
    move-exception v5

    goto/16 :goto_99

    .end local v7           #in:Ljava/io/InputStream;
    .restart local v8       #in:Ljava/io/InputStream;
    :catch_15c
    move-exception v5

    move-object v7, v8

    .end local v8           #in:Ljava/io/InputStream;
    .restart local v7       #in:Ljava/io/InputStream;
    goto/16 :goto_99

    .end local v7           #in:Ljava/io/InputStream;
    .end local v11           #out:Ljava/io/OutputStream;
    .restart local v8       #in:Ljava/io/InputStream;
    .restart local v12       #out:Ljava/io/OutputStream;
    :cond_160
    move-object v11, v12

    .end local v12           #out:Ljava/io/OutputStream;
    .restart local v11       #out:Ljava/io/OutputStream;
    move-object v7, v8

    .end local v8           #in:Ljava/io/InputStream;
    .restart local v7       #in:Ljava/io/InputStream;
    goto/16 :goto_bf
.end method

.method public copyXml(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "target_File"
    .parameter "result_File"

    .prologue
    .line 315
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 316
    .local v1, targetFile:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 317
    .local v0, resultFile:Ljava/io/File;
    invoke-virtual {p0, v1, v0}, Lcom/sec/android/Kies/kies_start;->copyXml(Ljava/io/File;Ljava/io/File;)V

    .line 318
    return-void
.end method

.method public getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;
    .registers 5

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sec/android/Kies/kies_start;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_20

    .line 57
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Lcom/sec/android/Kies/kies_start;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/sec/android/Kies/kies_start;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 59
    iget-object v0, p0, Lcom/sec/android/Kies/kies_start;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_20

    .line 60
    const-string v0, "KIES_START"

    const-string v1, "Can\'t get DevicePolicyManagerService: is it running?"

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Stack trace:"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 64
    :cond_20
    iget-object v0, p0, Lcom/sec/android/Kies/kies_start;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    return-object v0
.end method

.method public get_connect_mode()I
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 68
    invoke-virtual {p0}, Lcom/sec/android/Kies/kies_start;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 71
    .local v0, KiesPrefs:Landroid/content/SharedPreferences;
    const-string v1, "list_preference"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_15

    .line 72
    sput v2, Lcom/sec/android/Kies/kies_start;->m_nKiesMode:I

    .line 76
    :cond_14
    :goto_14
    return v3

    .line 73
    :cond_15
    const-string v1, "list_preference"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_14

    .line 74
    sput v3, Lcom/sec/android/Kies/kies_start;->m_nKiesMode:I

    goto :goto_14
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "arg0"

    .prologue
    .line 525
    iget-object v0, p0, Lcom/sec/android/Kies/kies_start;->binder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onDestroy()V
    .registers 5

    .prologue
    .line 516
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 517
    const-string v0, "kies_start::onDestroy()-m_nKiesMode=%d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget v3, Lcom/sec/android/Kies/kies_start;->m_nKiesMode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/Kies/kies_start;->m_szLog:Ljava/lang/String;

    .line 520
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .registers 9
    .parameter "intent"
    .parameter "startId"

    .prologue
    const/4 v2, 0x0

    .line 475
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 477
    iget-object v0, p0, Lcom/sec/android/Kies/kies_start;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v0, :cond_1d

    .line 478
    const-string v0, "storage"

    invoke-virtual {p0, v0}, Lcom/sec/android/Kies/kies_start;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/sec/android/Kies/kies_start;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 479
    iget-object v0, p0, Lcom/sec/android/Kies/kies_start;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v0, :cond_1d

    .line 480
    const-string v0, "KIES_START"

    const-string v1, "Failed to get StorageManager"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    :cond_1d
    sget v0, Lcom/sec/android/Kies/kies_start;->m_nUmsActionEvent:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_3c

    .line 487
    invoke-virtual {p0}, Lcom/sec/android/Kies/kies_start;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.samsung.sec.android/memo/id"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 490
    invoke-virtual {p0}, Lcom/sec/android/Kies/kies_start;->get_connect_mode()I

    .line 493
    sget v0, Lcom/sec/android/Kies/kies_start;->m_nKiesMode:I

    invoke-virtual {p0, v0}, Lcom/sec/android/Kies/kies_start;->select_action(I)I

    .line 507
    :goto_3b
    return-void

    .line 497
    :cond_3c
    sget v0, Lcom/sec/android/Kies/kies_start;->m_nUmsActionEvent:I

    packed-switch v0, :pswitch_data_4e

    .line 505
    :goto_41
    invoke-virtual {p0}, Lcom/sec/android/Kies/kies_start;->stopSelf()V

    goto :goto_3b

    .line 499
    :pswitch_45
    invoke-virtual {p0}, Lcom/sec/android/Kies/kies_start;->umsMount()V

    goto :goto_41

    .line 502
    :pswitch_49
    invoke-virtual {p0}, Lcom/sec/android/Kies/kies_start;->umsUnmount()V

    goto :goto_41

    .line 497
    nop

    :pswitch_data_4e
    .packed-switch 0xb
        :pswitch_45
        :pswitch_49
    .end packed-switch
.end method

.method public process_action_event_get_Xml()V
    .registers 6

    .prologue
    .line 282
    const/4 v0, 0x0

    .line 284
    .local v0, isEbookSupport:Z
    new-instance v2, Ljava/io/File;

    const-string v3, "/system/etc/kies"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 285
    .local v2, target_File:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v3, "/data/kies"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 286
    .local v1, result_File:Ljava/io/File;
    invoke-virtual {p0, v2, v1}, Lcom/sec/android/Kies/kies_start;->copyXml(Ljava/io/File;Ljava/io/File;)V

    .line 288
    invoke-virtual {p0}, Lcom/sec/android/Kies/kies_start;->checkEbookSupport()Z

    move-result v0

    .line 289
    if-eqz v0, :cond_20

    .line 290
    const-string v3, "/system/etc/kies/ebook_support/Contents.xml"

    const-string v4, "/data/kies/Contents.xml"

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/Kies/kies_start;->copyXml(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    :goto_1f
    return-void

    .line 292
    :cond_20
    const-string v3, "/system/etc/kies/ebook_unsupport/Contents.xml"

    const-string v4, "/data/kies/Contents.xml"

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/Kies/kies_start;->copyXml(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1f
.end method

.method public process_action_event_get_limit_status()I
    .registers 3

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/sec/android/Kies/kies_start;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    .line 204
    .local v0, mDpm:Landroid/app/admin/DevicePolicyManager;
    if-eqz v0, :cond_1a

    .line 205
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getAllowDesktopSync(Landroid/content/ComponentName;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 206
    const-string v1, "True"

    invoke-virtual {p0, v1}, Lcom/sec/android/Kies/kies_start;->write_limit_status(Ljava/lang/String;)V

    .line 216
    :goto_12
    const/4 v1, 0x1

    return v1

    .line 209
    :cond_14
    const-string v1, "False"

    invoke-virtual {p0, v1}, Lcom/sec/android/Kies/kies_start;->write_limit_status(Ljava/lang/String;)V

    goto :goto_12

    .line 213
    :cond_1a
    const-string v1, "Invalid"

    invoke-virtual {p0, v1}, Lcom/sec/android/Kies/kies_start;->write_limit_status(Ljava/lang/String;)V

    goto :goto_12
.end method

.method public process_action_event_get_lock_status(I)I
    .registers 10
    .parameter "nKiesCableMode"

    .prologue
    const/4 v7, 0x1

    .line 221
    invoke-virtual {p0}, Lcom/sec/android/Kies/kies_start;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 230
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v4, "mtp_drive_display"

    const/4 v5, 0x0

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 231
    .local v3, mtp_partition_start_check:I
    invoke-virtual {p0}, Lcom/sec/android/Kies/kies_start;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    .line 232
    .local v1, dpm:Landroid/app/admin/DevicePolicyManager;
    new-instance v2, Landroid/content/ComponentName;

    const-string v4, "com.sec.android.Kies"

    const-string v5, "com.sec.android.Kies.kies_admin"

    invoke-direct {v2, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    .local v2, mAdminName:Landroid/content/ComponentName;
    if-eqz v1, :cond_24

    .line 235
    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v4

    if-nez v4, :cond_24

    .line 236
    invoke-virtual {v1, v2, v7}, Landroid/app/admin/DevicePolicyManager;->setActiveAdmin(Landroid/content/ComponentName;Z)V

    .line 242
    :cond_24
    const-string v4, "KIES_START"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mtp_partition_start_check = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    const-string v4, "keyguard"

    invoke-virtual {p0, v4}, Lcom/sec/android/Kies/kies_start;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/KeyguardManager;

    iput-object v4, p0, Lcom/sec/android/Kies/kies_start;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 246
    iget-object v4, p0, Lcom/sec/android/Kies/kies_start;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v4, :cond_7b

    .line 248
    iget-object v4, p0, Lcom/sec/android/Kies/kies_start;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v4}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v4

    if-eqz v4, :cond_6e

    .line 250
    if-nez v3, :cond_61

    .line 253
    const-string v4, "True"

    invoke-virtual {p0, v4}, Lcom/sec/android/Kies/kies_start;->write_lock_status(Ljava/lang/String;)V

    .line 255
    const-string v4, "KIES_START"

    const-string v5, "TRUE"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :goto_60
    return v7

    .line 259
    :cond_61
    const-string v4, "False"

    invoke-virtual {p0, v4}, Lcom/sec/android/Kies/kies_start;->write_lock_status(Ljava/lang/String;)V

    .line 260
    const-string v4, "KIES_START"

    const-string v5, "FALSE"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_60

    .line 265
    :cond_6e
    const-string v4, "False"

    invoke-virtual {p0, v4}, Lcom/sec/android/Kies/kies_start;->write_lock_status(Ljava/lang/String;)V

    .line 266
    const-string v4, "KIES_START"

    const-string v5, "FALSE"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_60

    .line 271
    :cond_7b
    const-string v4, "Invalid"

    invoke-virtual {p0, v4}, Lcom/sec/android/Kies/kies_start;->write_lock_status(Ljava/lang/String;)V

    .line 272
    const-string v4, "KIES_START"

    const-string v5, "Invalid"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_60
.end method

.method public process_action_event_samsung_kies_start(I)I
    .registers 4
    .parameter "nKiesCableMode"

    .prologue
    .line 116
    packed-switch p1, :pswitch_data_a

    .line 138
    :goto_3
    const/4 v1, 0x1

    return v1

    .line 118
    :pswitch_5
    invoke-virtual {p0}, Lcom/sec/android/Kies/kies_start;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    .line 132
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    goto :goto_3

    .line 116
    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_5
    .end packed-switch
.end method

.method public process_action_event_samsung_kies_stop(I)I
    .registers 3
    .parameter "nKiesCableMode"

    .prologue
    .line 143
    packed-switch p1, :pswitch_data_a

    .line 154
    :goto_3
    const/4 v0, 0x1

    return v0

    .line 146
    :pswitch_5
    invoke-virtual {p0}, Lcom/sec/android/Kies/kies_start;->umsUnmount()V

    goto :goto_3

    .line 143
    nop

    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_5
    .end packed-switch
.end method

.method public process_action_event_ums_connection(I)I
    .registers 3
    .parameter "nKiesCableMode"

    .prologue
    .line 173
    const/4 v0, 0x1

    return v0
.end method

.method public process_action_event_ums_disconneciton(I)I
    .registers 3
    .parameter "nKiesCableMode"

    .prologue
    .line 178
    packed-switch p1, :pswitch_data_e

    .line 196
    :goto_3
    const/4 v0, 0x1

    return v0

    .line 181
    :pswitch_5
    invoke-virtual {p0}, Lcom/sec/android/Kies/kies_start;->umsUnmount()V

    goto :goto_3

    .line 187
    :pswitch_9
    invoke-virtual {p0}, Lcom/sec/android/Kies/kies_start;->umsUnmount()V

    goto :goto_3

    .line 178
    nop

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_5
        :pswitch_9
    .end packed-switch
.end method

.method public select_action(I)I
    .registers 3
    .parameter "kiesMode"

    .prologue
    .line 80
    sget v0, Lcom/sec/android/Kies/kies_start;->m_nKiesActionEvent:I

    packed-switch v0, :pswitch_data_26

    .line 109
    :goto_5
    :pswitch_5
    invoke-virtual {p0}, Lcom/sec/android/Kies/kies_start;->stopSelf()V

    .line 111
    const/4 v0, 0x1

    return v0

    .line 83
    :pswitch_a
    invoke-virtual {p0, p1}, Lcom/sec/android/Kies/kies_start;->process_action_event_samsung_kies_start(I)I

    goto :goto_5

    .line 87
    :pswitch_e
    invoke-virtual {p0, p1}, Lcom/sec/android/Kies/kies_start;->process_action_event_samsung_kies_stop(I)I

    goto :goto_5

    .line 91
    :pswitch_12
    invoke-virtual {p0, p1}, Lcom/sec/android/Kies/kies_start;->process_action_event_ums_connection(I)I

    goto :goto_5

    .line 95
    :pswitch_16
    invoke-virtual {p0, p1}, Lcom/sec/android/Kies/kies_start;->process_action_event_ums_disconneciton(I)I

    goto :goto_5

    .line 99
    :pswitch_1a
    invoke-virtual {p0}, Lcom/sec/android/Kies/kies_start;->process_action_event_get_limit_status()I

    .line 100
    invoke-virtual {p0, p1}, Lcom/sec/android/Kies/kies_start;->process_action_event_get_lock_status(I)I

    goto :goto_5

    .line 103
    :pswitch_21
    invoke-virtual {p0}, Lcom/sec/android/Kies/kies_start;->process_action_event_get_Xml()V

    goto :goto_5

    .line 80
    nop

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_a
        :pswitch_e
        :pswitch_12
        :pswitch_16
        :pswitch_5
        :pswitch_1a
        :pswitch_21
    .end packed-switch
.end method

.method public umsMount()V
    .registers 2

    .prologue
    .line 446
    iget-object v0, p0, Lcom/sec/android/Kies/kies_start;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->enableUsbMassStorage()V

    .line 447
    return-void
.end method

.method public umsUnmount()V
    .registers 2

    .prologue
    .line 450
    iget-object v0, p0, Lcom/sec/android/Kies/kies_start;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->disableUsbMassStorage()V

    .line 451
    return-void
.end method

.method public write_limit_status(Ljava/lang/String;)V
    .registers 10
    .parameter "s"

    .prologue
    .line 384
    const/4 v0, 0x0

    .line 385
    .local v0, bos:Ljava/io/BufferedOutputStream;
    const/4 v3, 0x0

    .line 388
    .local v3, fos:Ljava/io/FileOutputStream;
    :try_start_2
    new-instance v4, Ljava/io/FileOutputStream;

    const-string v5, "/data/data/com.sec.android.Kies/kies_limit_status.dat"

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_65
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_9} :catch_2d
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_9} :catch_49

    .line 389
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .local v4, fos:Ljava/io/FileOutputStream;
    :try_start_9
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_7a
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_e} :catch_88
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_e} :catch_81

    .line 390
    .end local v0           #bos:Ljava/io/BufferedOutputStream;
    .local v1, bos:Ljava/io/BufferedOutputStream;
    :try_start_e
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_7d
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_15} :catch_8b
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_15} :catch_84

    .line 399
    if-eqz v1, :cond_1a

    .line 401
    :try_start_17
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    .line 403
    :cond_1a
    if-eqz v4, :cond_1f

    .line 404
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1f} :catch_22

    :cond_1f
    move-object v3, v4

    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    move-object v0, v1

    .line 410
    .end local v1           #bos:Ljava/io/BufferedOutputStream;
    .restart local v0       #bos:Ljava/io/BufferedOutputStream;
    :cond_21
    :goto_21
    return-void

    .line 406
    .end local v0           #bos:Ljava/io/BufferedOutputStream;
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #bos:Ljava/io/BufferedOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :catch_22
    move-exception v2

    .line 407
    .local v2, ex:Ljava/io/IOException;
    const-string v5, "KIES_START"

    const-string v6, "IOException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    move-object v0, v1

    .line 409
    .end local v1           #bos:Ljava/io/BufferedOutputStream;
    .restart local v0       #bos:Ljava/io/BufferedOutputStream;
    goto :goto_21

    .line 392
    .end local v2           #ex:Ljava/io/IOException;
    :catch_2d
    move-exception v2

    .line 393
    .local v2, ex:Ljava/io/FileNotFoundException;
    :goto_2e
    :try_start_2e
    const-string v5, "KIES_START"

    const-string v6, "FileNotFoundException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35
    .catchall {:try_start_2e .. :try_end_35} :catchall_65

    .line 399
    if-eqz v0, :cond_3a

    .line 401
    :try_start_37
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    .line 403
    :cond_3a
    if-eqz v3, :cond_21

    .line 404
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3f} :catch_40

    goto :goto_21

    .line 406
    :catch_40
    move-exception v2

    .line 407
    .local v2, ex:Ljava/io/IOException;
    const-string v5, "KIES_START"

    const-string v6, "IOException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21

    .line 394
    .end local v2           #ex:Ljava/io/IOException;
    :catch_49
    move-exception v2

    .line 395
    .restart local v2       #ex:Ljava/io/IOException;
    :goto_4a
    :try_start_4a
    const-string v5, "KIES_START"

    const-string v6, "IOException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_51
    .catchall {:try_start_4a .. :try_end_51} :catchall_65

    .line 399
    if-eqz v0, :cond_56

    .line 401
    :try_start_53
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    .line 403
    :cond_56
    if-eqz v3, :cond_21

    .line 404
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_5b} :catch_5c

    goto :goto_21

    .line 406
    :catch_5c
    move-exception v2

    .line 407
    const-string v5, "KIES_START"

    const-string v6, "IOException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21

    .line 398
    .end local v2           #ex:Ljava/io/IOException;
    :catchall_65
    move-exception v5

    .line 399
    :goto_66
    if-eqz v0, :cond_6b

    .line 401
    :try_start_68
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    .line 403
    :cond_6b
    if-eqz v3, :cond_70

    .line 404
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_70} :catch_71

    .line 408
    :cond_70
    :goto_70
    throw v5

    .line 406
    :catch_71
    move-exception v2

    .line 407
    .restart local v2       #ex:Ljava/io/IOException;
    const-string v6, "KIES_START"

    const-string v7, "IOException"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_70

    .line 398
    .end local v2           #ex:Ljava/io/IOException;
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :catchall_7a
    move-exception v5

    move-object v3, v4

    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    goto :goto_66

    .end local v0           #bos:Ljava/io/BufferedOutputStream;
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #bos:Ljava/io/BufferedOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :catchall_7d
    move-exception v5

    move-object v3, v4

    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    move-object v0, v1

    .end local v1           #bos:Ljava/io/BufferedOutputStream;
    .restart local v0       #bos:Ljava/io/BufferedOutputStream;
    goto :goto_66

    .line 394
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :catch_81
    move-exception v2

    move-object v3, v4

    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    goto :goto_4a

    .end local v0           #bos:Ljava/io/BufferedOutputStream;
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #bos:Ljava/io/BufferedOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :catch_84
    move-exception v2

    move-object v3, v4

    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    move-object v0, v1

    .end local v1           #bos:Ljava/io/BufferedOutputStream;
    .restart local v0       #bos:Ljava/io/BufferedOutputStream;
    goto :goto_4a

    .line 392
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :catch_88
    move-exception v2

    move-object v3, v4

    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    goto :goto_2e

    .end local v0           #bos:Ljava/io/BufferedOutputStream;
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #bos:Ljava/io/BufferedOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :catch_8b
    move-exception v2

    move-object v3, v4

    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    move-object v0, v1

    .end local v1           #bos:Ljava/io/BufferedOutputStream;
    .restart local v0       #bos:Ljava/io/BufferedOutputStream;
    goto :goto_2e
.end method

.method public write_lock_status(Ljava/lang/String;)V
    .registers 10
    .parameter "s"

    .prologue
    .line 415
    const/4 v0, 0x0

    .line 416
    .local v0, bos:Ljava/io/BufferedOutputStream;
    const/4 v3, 0x0

    .line 418
    .local v3, fos:Ljava/io/FileOutputStream;
    const-string v5, "KIES_START"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "write_lock_status"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    :try_start_1a
    new-instance v4, Ljava/io/FileOutputStream;

    const-string v5, "/data/data/com.sec.android.Kies/kies_lock_status.dat"

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_21
    .catchall {:try_start_1a .. :try_end_21} :catchall_7d
    .catch Ljava/io/FileNotFoundException; {:try_start_1a .. :try_end_21} :catch_45
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_21} :catch_61

    .line 422
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .local v4, fos:Ljava/io/FileOutputStream;
    :try_start_21
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_26
    .catchall {:try_start_21 .. :try_end_26} :catchall_92
    .catch Ljava/io/FileNotFoundException; {:try_start_21 .. :try_end_26} :catch_a0
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_26} :catch_99

    .line 423
    .end local v0           #bos:Ljava/io/BufferedOutputStream;
    .local v1, bos:Ljava/io/BufferedOutputStream;
    :try_start_26
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_2d
    .catchall {:try_start_26 .. :try_end_2d} :catchall_95
    .catch Ljava/io/FileNotFoundException; {:try_start_26 .. :try_end_2d} :catch_a3
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_2d} :catch_9c

    .line 432
    if-eqz v1, :cond_32

    .line 434
    :try_start_2f
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    .line 436
    :cond_32
    if-eqz v4, :cond_37

    .line 437
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_37} :catch_3a

    :cond_37
    move-object v3, v4

    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    move-object v0, v1

    .line 443
    .end local v1           #bos:Ljava/io/BufferedOutputStream;
    .restart local v0       #bos:Ljava/io/BufferedOutputStream;
    :cond_39
    :goto_39
    return-void

    .line 439
    .end local v0           #bos:Ljava/io/BufferedOutputStream;
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #bos:Ljava/io/BufferedOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :catch_3a
    move-exception v2

    .line 440
    .local v2, ex:Ljava/io/IOException;
    const-string v5, "KIES_START"

    const-string v6, "IOException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    move-object v0, v1

    .line 442
    .end local v1           #bos:Ljava/io/BufferedOutputStream;
    .restart local v0       #bos:Ljava/io/BufferedOutputStream;
    goto :goto_39

    .line 425
    .end local v2           #ex:Ljava/io/IOException;
    :catch_45
    move-exception v2

    .line 426
    .local v2, ex:Ljava/io/FileNotFoundException;
    :goto_46
    :try_start_46
    const-string v5, "KIES_START"

    const-string v6, "FileNotFoundException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4d
    .catchall {:try_start_46 .. :try_end_4d} :catchall_7d

    .line 432
    if-eqz v0, :cond_52

    .line 434
    :try_start_4f
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    .line 436
    :cond_52
    if-eqz v3, :cond_39

    .line 437
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_57} :catch_58

    goto :goto_39

    .line 439
    :catch_58
    move-exception v2

    .line 440
    .local v2, ex:Ljava/io/IOException;
    const-string v5, "KIES_START"

    const-string v6, "IOException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39

    .line 427
    .end local v2           #ex:Ljava/io/IOException;
    :catch_61
    move-exception v2

    .line 428
    .restart local v2       #ex:Ljava/io/IOException;
    :goto_62
    :try_start_62
    const-string v5, "KIES_START"

    const-string v6, "IOException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_69
    .catchall {:try_start_62 .. :try_end_69} :catchall_7d

    .line 432
    if-eqz v0, :cond_6e

    .line 434
    :try_start_6b
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    .line 436
    :cond_6e
    if-eqz v3, :cond_39

    .line 437
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_73} :catch_74

    goto :goto_39

    .line 439
    :catch_74
    move-exception v2

    .line 440
    const-string v5, "KIES_START"

    const-string v6, "IOException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39

    .line 431
    .end local v2           #ex:Ljava/io/IOException;
    :catchall_7d
    move-exception v5

    .line 432
    :goto_7e
    if-eqz v0, :cond_83

    .line 434
    :try_start_80
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    .line 436
    :cond_83
    if-eqz v3, :cond_88

    .line 437
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_88
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_88} :catch_89

    .line 441
    :cond_88
    :goto_88
    throw v5

    .line 439
    :catch_89
    move-exception v2

    .line 440
    .restart local v2       #ex:Ljava/io/IOException;
    const-string v6, "KIES_START"

    const-string v7, "IOException"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_88

    .line 431
    .end local v2           #ex:Ljava/io/IOException;
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :catchall_92
    move-exception v5

    move-object v3, v4

    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    goto :goto_7e

    .end local v0           #bos:Ljava/io/BufferedOutputStream;
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #bos:Ljava/io/BufferedOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :catchall_95
    move-exception v5

    move-object v3, v4

    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    move-object v0, v1

    .end local v1           #bos:Ljava/io/BufferedOutputStream;
    .restart local v0       #bos:Ljava/io/BufferedOutputStream;
    goto :goto_7e

    .line 427
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :catch_99
    move-exception v2

    move-object v3, v4

    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    goto :goto_62

    .end local v0           #bos:Ljava/io/BufferedOutputStream;
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #bos:Ljava/io/BufferedOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :catch_9c
    move-exception v2

    move-object v3, v4

    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    move-object v0, v1

    .end local v1           #bos:Ljava/io/BufferedOutputStream;
    .restart local v0       #bos:Ljava/io/BufferedOutputStream;
    goto :goto_62

    .line 425
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :catch_a0
    move-exception v2

    move-object v3, v4

    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    goto :goto_46

    .end local v0           #bos:Ljava/io/BufferedOutputStream;
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #bos:Ljava/io/BufferedOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :catch_a3
    move-exception v2

    move-object v3, v4

    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    move-object v0, v1

    .end local v1           #bos:Ljava/io/BufferedOutputStream;
    .restart local v0       #bos:Ljava/io/BufferedOutputStream;
    goto :goto_46
.end method
