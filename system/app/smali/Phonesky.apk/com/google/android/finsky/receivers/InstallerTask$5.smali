.class Lcom/google/android/finsky/receivers/InstallerTask$5;
.super Landroid/os/AsyncTask;
.source "InstallerTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/receivers/InstallerTask;->startApplyingPatch(Lcom/google/android/finsky/appstate/AppStates$AppState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/receivers/InstallerTask;

.field final synthetic val$downloadUri:Landroid/net/Uri;

.field final synthetic val$downloadUriString:Ljava/lang/String;

.field final synthetic val$installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/receivers/InstallerTask;Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;Landroid/net/Uri;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1518
    iput-object p1, p0, Lcom/google/android/finsky/receivers/InstallerTask$5;->this$0:Lcom/google/android/finsky/receivers/InstallerTask;

    iput-object p2, p0, Lcom/google/android/finsky/receivers/InstallerTask$5;->val$installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    iput-object p3, p0, Lcom/google/android/finsky/receivers/InstallerTask$5;->val$downloadUri:Landroid/net/Uri;

    iput-object p4, p0, Lcom/google/android/finsky/receivers/InstallerTask$5;->val$downloadUriString:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/io/File;
    .registers 29
    .parameter "params"

    .prologue
    .line 1522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/receivers/InstallerTask$5;->val$installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getPackageName()Ljava/lang/String;

    move-result-object v20

    .line 1523
    .local v20, packageName:Ljava/lang/String;
    const/4 v9, 0x0

    .line 1524
    .local v9, inputFile:Ljava/io/RandomAccessFile;
    const/16 v21, 0x0

    .line 1525
    .local v21, patchStream:Ljava/io/InputStream;
    const/16 v17, 0x0

    .line 1527
    .local v17, outputStream:Ljava/io/OutputStream;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    .line 1528
    .local v3, appContext:Landroid/content/Context;
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    .line 1531
    .local v22, resolver:Landroid/content/ContentResolver;
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    .line 1533
    .local v19, packageManager:Landroid/content/pm/PackageManager;
    const/16 v24, 0x0

    :try_start_1d
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 1535
    .local v4, applicationInfo:Landroid/content/pm/ApplicationInfo;
    new-instance v10, Ljava/io/RandomAccessFile;

    new-instance v24, Ljava/io/File;

    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-direct/range {v24 .. v25}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v25, "r"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-direct {v10, v0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_3b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1d .. :try_end_3b} :catch_83
    .catch Ljava/io/FileNotFoundException; {:try_start_1d .. :try_end_3b} :catch_98

    .line 1545
    .end local v9           #inputFile:Ljava/io/RandomAccessFile;
    .local v10, inputFile:Ljava/io/RandomAccessFile;
    :try_start_3b
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/receivers/InstallerTask$5;->val$downloadUri:Landroid/net/Uri;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_48
    .catch Ljava/io/FileNotFoundException; {:try_start_3b .. :try_end_48} :catch_ad

    move-result-object v21

    .line 1551
    const/16 v16, 0x0

    .line 1557
    .local v16, outputFile:Ljava/io/File;
    :try_start_4b
    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v5

    .line 1558
    .local v5, cacheDir:Ljava/io/File;
    const/16 v24, 0x1

    const/16 v25, 0x0

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v5, v0, v1}, Ljava/io/File;->setExecutable(ZZ)Z

    move-result v24

    if-nez v24, :cond_c3

    .line 1559
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/receivers/InstallerTask$5;->this$0:Lcom/google/android/finsky/receivers/InstallerTask;

    move-object/from16 v24, v0

    const-string v25, "cache-dir-executable"

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    move-object/from16 v2, v25

    #calls: Lcom/google/android/finsky/receivers/InstallerTask;->reportPatchFailure(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/google/android/finsky/receivers/InstallerTask;->access$1000(Lcom/google/android/finsky/receivers/InstallerTask;Ljava/lang/String;Ljava/lang/String;)V

    .line 1560
    const-string v24, "Could not make executable %s"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v5, v25, v26

    invoke-static/range {v24 .. v25}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7f
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_7f} :catch_166

    .line 1561
    const/16 v16, 0x0

    .end local v16           #outputFile:Ljava/io/File;
    move-object v9, v10

    .line 1627
    .end local v4           #applicationInfo:Landroid/content/pm/ApplicationInfo;
    .end local v5           #cacheDir:Ljava/io/File;
    .end local v10           #inputFile:Ljava/io/RandomAccessFile;
    .restart local v9       #inputFile:Ljava/io/RandomAccessFile;
    :goto_82
    return-object v16

    .line 1536
    :catch_83
    move-exception v7

    .line 1537
    .local v7, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/receivers/InstallerTask$5;->this$0:Lcom/google/android/finsky/receivers/InstallerTask;

    move-object/from16 v24, v0

    const-string v25, "source-NameNotFoundException"

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    move-object/from16 v2, v25

    #calls: Lcom/google/android/finsky/receivers/InstallerTask;->reportPatchFailure(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/google/android/finsky/receivers/InstallerTask;->access$1000(Lcom/google/android/finsky/receivers/InstallerTask;Ljava/lang/String;Ljava/lang/String;)V

    .line 1538
    const/16 v16, 0x0

    goto :goto_82

    .line 1539
    .end local v7           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_98
    move-exception v7

    .line 1540
    .local v7, e:Ljava/io/FileNotFoundException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/receivers/InstallerTask$5;->this$0:Lcom/google/android/finsky/receivers/InstallerTask;

    move-object/from16 v24, v0

    const-string v25, "source-FileNotFoundException"

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    move-object/from16 v2, v25

    #calls: Lcom/google/android/finsky/receivers/InstallerTask;->reportPatchFailure(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/google/android/finsky/receivers/InstallerTask;->access$1000(Lcom/google/android/finsky/receivers/InstallerTask;Ljava/lang/String;Ljava/lang/String;)V

    .line 1541
    const/16 v16, 0x0

    goto :goto_82

    .line 1546
    .end local v7           #e:Ljava/io/FileNotFoundException;
    .end local v9           #inputFile:Ljava/io/RandomAccessFile;
    .restart local v4       #applicationInfo:Landroid/content/pm/ApplicationInfo;
    .restart local v10       #inputFile:Ljava/io/RandomAccessFile;
    :catch_ad
    move-exception v8

    .line 1547
    .local v8, e1:Ljava/io/FileNotFoundException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/receivers/InstallerTask$5;->this$0:Lcom/google/android/finsky/receivers/InstallerTask;

    move-object/from16 v24, v0

    const-string v25, "patch-FileNotFoundException"

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    move-object/from16 v2, v25

    #calls: Lcom/google/android/finsky/receivers/InstallerTask;->reportPatchFailure(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/google/android/finsky/receivers/InstallerTask;->access$1000(Lcom/google/android/finsky/receivers/InstallerTask;Ljava/lang/String;Ljava/lang/String;)V

    .line 1548
    const/16 v16, 0x0

    move-object v9, v10

    .end local v10           #inputFile:Ljava/io/RandomAccessFile;
    .restart local v9       #inputFile:Ljava/io/RandomAccessFile;
    goto :goto_82

    .line 1564
    .end local v8           #e1:Ljava/io/FileNotFoundException;
    .end local v9           #inputFile:Ljava/io/RandomAccessFile;
    .restart local v5       #cacheDir:Ljava/io/File;
    .restart local v10       #inputFile:Ljava/io/RandomAccessFile;
    .restart local v16       #outputFile:Ljava/io/File;
    :cond_c3
    :try_start_c3
    new-instance v15, Ljava/io/File;

    const-string v24, "patches"

    move-object/from16 v0, v24

    invoke-direct {v15, v5, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1565
    .local v15, outputDirectory:Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->mkdirs()Z

    .line 1567
    const/16 v24, 0x1

    const/16 v25, 0x0

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v15, v0, v1}, Ljava/io/File;->setExecutable(ZZ)Z

    move-result v24

    if-eqz v24, :cond_115

    const/16 v24, 0x1

    const/16 v25, 0x0

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v15, v0, v1}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v24

    if-eqz v24, :cond_115

    const/4 v12, 0x1

    .line 1569
    .local v12, madeReadable:Z
    :goto_ec
    if-nez v12, :cond_117

    .line 1570
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/receivers/InstallerTask$5;->this$0:Lcom/google/android/finsky/receivers/InstallerTask;

    move-object/from16 v24, v0

    const-string v25, "out-dir-readable"

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    move-object/from16 v2, v25

    #calls: Lcom/google/android/finsky/receivers/InstallerTask;->reportPatchFailure(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/google/android/finsky/receivers/InstallerTask;->access$1000(Lcom/google/android/finsky/receivers/InstallerTask;Ljava/lang/String;Ljava/lang/String;)V

    .line 1571
    const-string v24, "Could not make readable %s"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v15, v25, v26

    invoke-static/range {v24 .. v25}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1572
    const/16 v16, 0x0

    .end local v16           #outputFile:Ljava/io/File;
    move-object v9, v10

    .end local v10           #inputFile:Ljava/io/RandomAccessFile;
    .restart local v9       #inputFile:Ljava/io/RandomAccessFile;
    goto/16 :goto_82

    .line 1567
    .end local v9           #inputFile:Ljava/io/RandomAccessFile;
    .end local v12           #madeReadable:Z
    .restart local v10       #inputFile:Ljava/io/RandomAccessFile;
    .restart local v16       #outputFile:Ljava/io/File;
    :cond_115
    const/4 v12, 0x0

    goto :goto_ec

    .line 1574
    .restart local v12       #madeReadable:Z
    :cond_117
    const-string v24, ".apk"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-static {v0, v1, v15}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v16

    .line 1575
    new-instance v18, Ljava/io/FileOutputStream;

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_12a
    .catch Ljava/io/IOException; {:try_start_c3 .. :try_end_12a} :catch_166

    .line 1577
    .end local v17           #outputStream:Ljava/io/OutputStream;
    .local v18, outputStream:Ljava/io/OutputStream;
    const/16 v24, 0x1

    const/16 v25, 0x0

    :try_start_12e
    move-object/from16 v0, v16

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v24

    if-nez v24, :cond_17d

    .line 1578
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/receivers/InstallerTask$5;->this$0:Lcom/google/android/finsky/receivers/InstallerTask;

    move-object/from16 v24, v0

    const-string v25, "out-file-readable"

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    move-object/from16 v2, v25

    #calls: Lcom/google/android/finsky/receivers/InstallerTask;->reportPatchFailure(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/google/android/finsky/receivers/InstallerTask;->access$1000(Lcom/google/android/finsky/receivers/InstallerTask;Ljava/lang/String;Ljava/lang/String;)V

    .line 1579
    const-string v24, "Could not make readable %s"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v16, v25, v26

    invoke-static/range {v24 .. v25}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1580
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z
    :try_end_15f
    .catch Ljava/io/IOException; {:try_start_12e .. :try_end_15f} :catch_2b8

    .line 1581
    const/16 v16, 0x0

    .end local v16           #outputFile:Ljava/io/File;
    move-object/from16 v17, v18

    .end local v18           #outputStream:Ljava/io/OutputStream;
    .restart local v17       #outputStream:Ljava/io/OutputStream;
    move-object v9, v10

    .end local v10           #inputFile:Ljava/io/RandomAccessFile;
    .restart local v9       #inputFile:Ljava/io/RandomAccessFile;
    goto/16 :goto_82

    .line 1583
    .end local v5           #cacheDir:Ljava/io/File;
    .end local v9           #inputFile:Ljava/io/RandomAccessFile;
    .end local v12           #madeReadable:Z
    .end local v15           #outputDirectory:Ljava/io/File;
    .restart local v10       #inputFile:Ljava/io/RandomAccessFile;
    .restart local v16       #outputFile:Ljava/io/File;
    :catch_166
    move-exception v8

    .line 1584
    .local v8, e1:Ljava/io/IOException;
    :goto_167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/receivers/InstallerTask$5;->this$0:Lcom/google/android/finsky/receivers/InstallerTask;

    move-object/from16 v24, v0

    const-string v25, "out-dir-IOException"

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    move-object/from16 v2, v25

    #calls: Lcom/google/android/finsky/receivers/InstallerTask;->reportPatchFailure(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/google/android/finsky/receivers/InstallerTask;->access$1000(Lcom/google/android/finsky/receivers/InstallerTask;Ljava/lang/String;Ljava/lang/String;)V

    .line 1585
    const/16 v16, 0x0

    move-object v9, v10

    .end local v10           #inputFile:Ljava/io/RandomAccessFile;
    .restart local v9       #inputFile:Ljava/io/RandomAccessFile;
    goto/16 :goto_82

    .line 1588
    .end local v8           #e1:Ljava/io/IOException;
    .end local v9           #inputFile:Ljava/io/RandomAccessFile;
    .end local v17           #outputStream:Ljava/io/OutputStream;
    .restart local v5       #cacheDir:Ljava/io/File;
    .restart local v10       #inputFile:Ljava/io/RandomAccessFile;
    .restart local v12       #madeReadable:Z
    .restart local v15       #outputDirectory:Ljava/io/File;
    .restart local v18       #outputStream:Ljava/io/OutputStream;
    :cond_17d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/receivers/InstallerTask$5;->val$installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getDeliveryData()Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->getDownloadSize()J

    move-result-wide v13

    .line 1589
    .local v13, maxOutputLength:J
    const/4 v11, 0x0

    .line 1591
    .local v11, keepOutputFile:Z
    :try_start_18c
    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-static {v10, v0, v1, v13, v14}, Lcom/google/android/finsky/installer/Gdiff;->patch(Ljava/io/RandomAccessFile;Ljava/io/InputStream;Ljava/io/OutputStream;J)J
    :try_end_193
    .catchall {:try_start_18c .. :try_end_193} :catchall_284
    .catch Lcom/google/android/finsky/installer/Gdiff$FileFormatException; {:try_start_18c .. :try_end_193} :catch_1a7
    .catch Ljava/io/IOException; {:try_start_18c .. :try_end_193} :catch_208
    .catch Ljava/lang/Exception; {:try_start_18c .. :try_end_193} :catch_246

    .line 1592
    const/4 v11, 0x1

    .line 1618
    :try_start_194
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_197
    .catch Ljava/io/IOException; {:try_start_194 .. :try_end_197} :catch_294

    .line 1621
    :goto_197
    :try_start_197
    invoke-virtual/range {v21 .. v21}, Ljava/io/InputStream;->close()V
    :try_end_19a
    .catch Ljava/io/IOException; {:try_start_197 .. :try_end_19a} :catch_297

    .line 1624
    :goto_19a
    :try_start_19a
    invoke-virtual/range {v18 .. v18}, Ljava/io/OutputStream;->close()V
    :try_end_19d
    .catch Ljava/io/IOException; {:try_start_19a .. :try_end_19d} :catch_29a

    .line 1626
    :goto_19d
    if-nez v11, :cond_1a2

    .line 1627
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    :cond_1a2
    move-object/from16 v17, v18

    .end local v18           #outputStream:Ljava/io/OutputStream;
    .restart local v17       #outputStream:Ljava/io/OutputStream;
    move-object v9, v10

    .end local v10           #inputFile:Ljava/io/RandomAccessFile;
    .restart local v9       #inputFile:Ljava/io/RandomAccessFile;
    goto/16 :goto_82

    .line 1594
    .end local v9           #inputFile:Ljava/io/RandomAccessFile;
    .end local v17           #outputStream:Ljava/io/OutputStream;
    .restart local v10       #inputFile:Ljava/io/RandomAccessFile;
    .restart local v18       #outputStream:Ljava/io/OutputStream;
    :catch_1a7
    move-exception v7

    .line 1595
    .local v7, e:Lcom/google/android/finsky/installer/Gdiff$FileFormatException;
    :try_start_1a8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/receivers/InstallerTask$5;->this$0:Lcom/google/android/finsky/receivers/InstallerTask;

    move-object/from16 v24, v0

    const-string v25, "gdiff-FileFormatException"

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    move-object/from16 v2, v25

    #calls: Lcom/google/android/finsky/receivers/InstallerTask;->reportPatchFailure(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/google/android/finsky/receivers/InstallerTask;->access$1000(Lcom/google/android/finsky/receivers/InstallerTask;Ljava/lang/String;Ljava/lang/String;)V

    .line 1599
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/receivers/InstallerTask$5;->val$downloadUriString:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v23

    .line 1600
    .local v23, uriString:Ljava/lang/String;
    const-string v24, "my_downloads"

    const-string v25, "public_downloads"

    invoke-virtual/range {v23 .. v25}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 1601
    invoke-static/range {v23 .. v23}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    .line 1602
    .local v6, contentType:Ljava/lang/String;
    const-string v24, "Patch %s (content-type \'%s\') is not Gdiff, will install as APK"

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v20, v25, v26

    const/16 v26, 0x1

    aput-object v6, v25, v26

    invoke-static/range {v24 .. v25}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1606
    new-instance v24, Ljava/io/File;

    const-string v25, ""

    invoke-direct/range {v24 .. v25}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1f3
    .catchall {:try_start_1a8 .. :try_end_1f3} :catchall_284

    .line 1618
    :try_start_1f3
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1f6
    .catch Ljava/io/IOException; {:try_start_1f3 .. :try_end_1f6} :catch_29d

    .line 1621
    :goto_1f6
    :try_start_1f6
    invoke-virtual/range {v21 .. v21}, Ljava/io/InputStream;->close()V
    :try_end_1f9
    .catch Ljava/io/IOException; {:try_start_1f6 .. :try_end_1f9} :catch_2a0

    .line 1624
    :goto_1f9
    :try_start_1f9
    invoke-virtual/range {v18 .. v18}, Ljava/io/OutputStream;->close()V
    :try_end_1fc
    .catch Ljava/io/IOException; {:try_start_1f9 .. :try_end_1fc} :catch_2a3

    .line 1626
    :goto_1fc
    if-nez v11, :cond_201

    .line 1627
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    :cond_201
    move-object/from16 v17, v18

    .end local v18           #outputStream:Ljava/io/OutputStream;
    .restart local v17       #outputStream:Ljava/io/OutputStream;
    move-object v9, v10

    .end local v10           #inputFile:Ljava/io/RandomAccessFile;
    .restart local v9       #inputFile:Ljava/io/RandomAccessFile;
    move-object/from16 v16, v24

    goto/16 :goto_82

    .line 1607
    .end local v6           #contentType:Ljava/lang/String;
    .end local v7           #e:Lcom/google/android/finsky/installer/Gdiff$FileFormatException;
    .end local v9           #inputFile:Ljava/io/RandomAccessFile;
    .end local v17           #outputStream:Ljava/io/OutputStream;
    .end local v23           #uriString:Ljava/lang/String;
    .restart local v10       #inputFile:Ljava/io/RandomAccessFile;
    .restart local v18       #outputStream:Ljava/io/OutputStream;
    :catch_208
    move-exception v7

    .line 1608
    .local v7, e:Ljava/io/IOException;
    :try_start_209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/receivers/InstallerTask$5;->this$0:Lcom/google/android/finsky/receivers/InstallerTask;

    move-object/from16 v24, v0

    const-string v25, "gdiff-IOException"

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    move-object/from16 v2, v25

    #calls: Lcom/google/android/finsky/receivers/InstallerTask;->reportPatchFailure(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/google/android/finsky/receivers/InstallerTask;->access$1000(Lcom/google/android/finsky/receivers/InstallerTask;Ljava/lang/String;Ljava/lang/String;)V

    .line 1609
    const-string v24, "Patch %s failed with exception "

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v20, v25, v26

    const/16 v26, 0x1

    aput-object v7, v25, v26

    invoke-static/range {v24 .. v25}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_22f
    .catchall {:try_start_209 .. :try_end_22f} :catchall_284

    .line 1610
    const/16 v24, 0x0

    .line 1618
    :try_start_231
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_234
    .catch Ljava/io/IOException; {:try_start_231 .. :try_end_234} :catch_2a6

    .line 1621
    :goto_234
    :try_start_234
    invoke-virtual/range {v21 .. v21}, Ljava/io/InputStream;->close()V
    :try_end_237
    .catch Ljava/io/IOException; {:try_start_234 .. :try_end_237} :catch_2a8

    .line 1624
    :goto_237
    :try_start_237
    invoke-virtual/range {v18 .. v18}, Ljava/io/OutputStream;->close()V
    :try_end_23a
    .catch Ljava/io/IOException; {:try_start_237 .. :try_end_23a} :catch_2aa

    .line 1626
    :goto_23a
    if-nez v11, :cond_23f

    .line 1627
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    :cond_23f
    move-object/from16 v17, v18

    .end local v18           #outputStream:Ljava/io/OutputStream;
    .restart local v17       #outputStream:Ljava/io/OutputStream;
    move-object v9, v10

    .end local v10           #inputFile:Ljava/io/RandomAccessFile;
    .restart local v9       #inputFile:Ljava/io/RandomAccessFile;
    move-object/from16 v16, v24

    goto/16 :goto_82

    .line 1611
    .end local v7           #e:Ljava/io/IOException;
    .end local v9           #inputFile:Ljava/io/RandomAccessFile;
    .end local v17           #outputStream:Ljava/io/OutputStream;
    .restart local v10       #inputFile:Ljava/io/RandomAccessFile;
    .restart local v18       #outputStream:Ljava/io/OutputStream;
    :catch_246
    move-exception v7

    .line 1612
    .local v7, e:Ljava/lang/Exception;
    :try_start_247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/receivers/InstallerTask$5;->this$0:Lcom/google/android/finsky/receivers/InstallerTask;

    move-object/from16 v24, v0

    const-string v25, "gdiff-Exception"

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    move-object/from16 v2, v25

    #calls: Lcom/google/android/finsky/receivers/InstallerTask;->reportPatchFailure(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/google/android/finsky/receivers/InstallerTask;->access$1000(Lcom/google/android/finsky/receivers/InstallerTask;Ljava/lang/String;Ljava/lang/String;)V

    .line 1613
    const-string v24, "Patch %s failed with exception "

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v20, v25, v26

    const/16 v26, 0x1

    aput-object v7, v25, v26

    invoke-static/range {v24 .. v25}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_26d
    .catchall {:try_start_247 .. :try_end_26d} :catchall_284

    .line 1614
    const/16 v24, 0x0

    .line 1618
    :try_start_26f
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_272
    .catch Ljava/io/IOException; {:try_start_26f .. :try_end_272} :catch_2ac

    .line 1621
    :goto_272
    :try_start_272
    invoke-virtual/range {v21 .. v21}, Ljava/io/InputStream;->close()V
    :try_end_275
    .catch Ljava/io/IOException; {:try_start_272 .. :try_end_275} :catch_2ae

    .line 1624
    :goto_275
    :try_start_275
    invoke-virtual/range {v18 .. v18}, Ljava/io/OutputStream;->close()V
    :try_end_278
    .catch Ljava/io/IOException; {:try_start_275 .. :try_end_278} :catch_2b0

    .line 1626
    :goto_278
    if-nez v11, :cond_27d

    .line 1627
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    :cond_27d
    move-object/from16 v17, v18

    .end local v18           #outputStream:Ljava/io/OutputStream;
    .restart local v17       #outputStream:Ljava/io/OutputStream;
    move-object v9, v10

    .end local v10           #inputFile:Ljava/io/RandomAccessFile;
    .restart local v9       #inputFile:Ljava/io/RandomAccessFile;
    move-object/from16 v16, v24

    goto/16 :goto_82

    .line 1617
    .end local v7           #e:Ljava/lang/Exception;
    .end local v9           #inputFile:Ljava/io/RandomAccessFile;
    .end local v17           #outputStream:Ljava/io/OutputStream;
    .restart local v10       #inputFile:Ljava/io/RandomAccessFile;
    .restart local v18       #outputStream:Ljava/io/OutputStream;
    :catchall_284
    move-exception v24

    .line 1618
    :try_start_285
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_288
    .catch Ljava/io/IOException; {:try_start_285 .. :try_end_288} :catch_2b2

    .line 1621
    :goto_288
    :try_start_288
    invoke-virtual/range {v21 .. v21}, Ljava/io/InputStream;->close()V
    :try_end_28b
    .catch Ljava/io/IOException; {:try_start_288 .. :try_end_28b} :catch_2b4

    .line 1624
    :goto_28b
    :try_start_28b
    invoke-virtual/range {v18 .. v18}, Ljava/io/OutputStream;->close()V
    :try_end_28e
    .catch Ljava/io/IOException; {:try_start_28b .. :try_end_28e} :catch_2b6

    .line 1626
    :goto_28e
    if-nez v11, :cond_293

    .line 1627
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    :cond_293
    throw v24

    .line 1619
    :catch_294
    move-exception v24

    goto/16 :goto_197

    .line 1622
    :catch_297
    move-exception v24

    goto/16 :goto_19a

    .line 1625
    :catch_29a
    move-exception v24

    goto/16 :goto_19d

    .line 1619
    .restart local v6       #contentType:Ljava/lang/String;
    .local v7, e:Lcom/google/android/finsky/installer/Gdiff$FileFormatException;
    .restart local v23       #uriString:Ljava/lang/String;
    :catch_29d
    move-exception v25

    goto/16 :goto_1f6

    .line 1622
    :catch_2a0
    move-exception v25

    goto/16 :goto_1f9

    .line 1625
    :catch_2a3
    move-exception v25

    goto/16 :goto_1fc

    .line 1619
    .end local v6           #contentType:Ljava/lang/String;
    .end local v23           #uriString:Ljava/lang/String;
    .local v7, e:Ljava/io/IOException;
    :catch_2a6
    move-exception v25

    goto :goto_234

    .line 1622
    :catch_2a8
    move-exception v25

    goto :goto_237

    .line 1625
    :catch_2aa
    move-exception v25

    goto :goto_23a

    .line 1619
    .local v7, e:Ljava/lang/Exception;
    :catch_2ac
    move-exception v25

    goto :goto_272

    .line 1622
    :catch_2ae
    move-exception v25

    goto :goto_275

    .line 1625
    :catch_2b0
    move-exception v25

    goto :goto_278

    .line 1619
    .end local v7           #e:Ljava/lang/Exception;
    :catch_2b2
    move-exception v25

    goto :goto_288

    .line 1622
    :catch_2b4
    move-exception v25

    goto :goto_28b

    .line 1625
    :catch_2b6
    move-exception v25

    goto :goto_28e

    .line 1583
    .end local v11           #keepOutputFile:Z
    .end local v13           #maxOutputLength:J
    :catch_2b8
    move-exception v8

    move-object/from16 v17, v18

    .end local v18           #outputStream:Ljava/io/OutputStream;
    .restart local v17       #outputStream:Ljava/io/OutputStream;
    goto/16 :goto_167
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 1518
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/receivers/InstallerTask$5;->doInBackground([Ljava/lang/Void;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/io/File;)V
    .registers 7
    .parameter "patchedFile"

    .prologue
    const/16 v4, 0x3c

    .line 1640
    if-eqz p1, :cond_1b

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1642
    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerTask$5;->this$0:Lcom/google/android/finsky/receivers/InstallerTask;

    iget-object v1, p0, Lcom/google/android/finsky/receivers/InstallerTask$5;->val$downloadUri:Landroid/net/Uri;

    #calls: Lcom/google/android/finsky/receivers/InstallerTask;->setInstallerState(ILandroid/net/Uri;)V
    invoke-static {v0, v4, v1}, Lcom/google/android/finsky/receivers/InstallerTask;->access$1100(Lcom/google/android/finsky/receivers/InstallerTask;ILandroid/net/Uri;)V

    .line 1643
    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerTask$5;->this$0:Lcom/google/android/finsky/receivers/InstallerTask;

    #calls: Lcom/google/android/finsky/receivers/InstallerTask;->advanceState()V
    invoke-static {v0}, Lcom/google/android/finsky/receivers/InstallerTask;->access$900(Lcom/google/android/finsky/receivers/InstallerTask;)V

    .line 1667
    :goto_1a
    return-void

    .line 1648
    :cond_1b
    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerTask$5;->this$0:Lcom/google/android/finsky/receivers/InstallerTask;

    #getter for: Lcom/google/android/finsky/receivers/InstallerTask;->mDownloadQueue:Lcom/google/android/finsky/download/DownloadQueue;
    invoke-static {v0}, Lcom/google/android/finsky/receivers/InstallerTask;->access$1200(Lcom/google/android/finsky/receivers/InstallerTask;)Lcom/google/android/finsky/download/DownloadQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/receivers/InstallerTask$5;->val$downloadUri:Landroid/net/Uri;

    invoke-interface {v0, v1}, Lcom/google/android/finsky/download/DownloadQueue;->release(Landroid/net/Uri;)V

    .line 1651
    if-nez p1, :cond_2e

    .line 1652
    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerTask$5;->this$0:Lcom/google/android/finsky/receivers/InstallerTask;

    #calls: Lcom/google/android/finsky/receivers/InstallerTask;->tryRestartWithoutPatch()Z
    invoke-static {v0}, Lcom/google/android/finsky/receivers/InstallerTask;->access$1300(Lcom/google/android/finsky/receivers/InstallerTask;)Z

    goto :goto_1a

    .line 1657
    :cond_2e
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v0

    const-string v1, "install.applyPatch"

    iget-object v2, p0, Lcom/google/android/finsky/receivers/InstallerTask$5;->this$0:Lcom/google/android/finsky/receivers/InstallerTask;

    iget-object v2, v2, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/finsky/analytics/Analytics;->logTagAndPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1659
    const-string v0, "Successfully applied patch to update %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/finsky/receivers/InstallerTask$5;->this$0:Lcom/google/android/finsky/receivers/InstallerTask;

    iget-object v3, v3, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1662
    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerTask$5;->this$0:Lcom/google/android/finsky/receivers/InstallerTask;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/google/android/finsky/receivers/InstallerTask;->setInstallerState(ILjava/lang/String;)V
    invoke-static {v0, v4, v1}, Lcom/google/android/finsky/receivers/InstallerTask;->access$800(Lcom/google/android/finsky/receivers/InstallerTask;ILjava/lang/String;)V

    .line 1666
    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerTask$5;->this$0:Lcom/google/android/finsky/receivers/InstallerTask;

    #calls: Lcom/google/android/finsky/receivers/InstallerTask;->advanceState()V
    invoke-static {v0}, Lcom/google/android/finsky/receivers/InstallerTask;->access$900(Lcom/google/android/finsky/receivers/InstallerTask;)V

    goto :goto_1a
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 1518
    check-cast p1, Ljava/io/File;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/receivers/InstallerTask$5;->onPostExecute(Ljava/io/File;)V

    return-void
.end method
