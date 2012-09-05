.class public Lcom/google/android/apps/books/provider/ResourceFileSha1RenameMigrator;
.super Ljava/lang/Object;
.source "ResourceFileSha1RenameMigrator.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static execute(Ljava/io/File;)V
    .registers 33
    .parameter "baseDir"

    .prologue
    .line 26
    const-string v29, "ResourceFileMigrator"

    const/16 v30, 0x3

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v29

    if-eqz v29, :cond_26

    .line 27
    const-string v29, "ResourceFileMigrator"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Migrating resource files in "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    :cond_26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    .line 34
    .local v23, startMillis:J
    new-instance v6, Ljava/io/File;

    const-string v29, "accounts"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v6, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 35
    .local v6, accountsDir:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v5

    .line 36
    .local v5, accounts:[Ljava/lang/String;
    if-nez v5, :cond_3c

    .line 66
    :cond_3b
    :goto_3b
    return-void

    .line 39
    :cond_3c
    move-object v7, v5

    .local v7, arr$:[Ljava/lang/String;
    array-length v15, v7

    .local v15, len$:I
    const/4 v12, 0x0

    .local v12, i$:I
    move v14, v12

    .end local v7           #arr$:[Ljava/lang/String;
    .end local v12           #i$:I
    .end local v15           #len$:I
    .local v14, i$:I
    :goto_40
    if-ge v14, v15, :cond_be

    aget-object v3, v7, v14

    .line 40
    .local v3, account:Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v6, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 41
    .local v4, accountDir:Ljava/io/File;
    new-instance v28, Ljava/io/File;

    const-string v29, "volumes"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-direct {v0, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 42
    .local v28, volumesDir:Ljava/io/File;
    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v27

    .line 43
    .local v27, volumes:[Ljava/lang/String;
    if-nez v27, :cond_5e

    .line 39
    .end local v14           #i$:I
    :cond_5a
    add-int/lit8 v12, v14, 0x1

    .restart local v12       #i$:I
    move v14, v12

    .end local v12           #i$:I
    .restart local v14       #i$:I
    goto :goto_40

    .line 46
    :cond_5e
    move-object/from16 v8, v27

    .local v8, arr$:[Ljava/lang/String;
    array-length v0, v8

    move/from16 v16, v0

    .local v16, len$:I
    const/4 v12, 0x0

    .end local v14           #i$:I
    .restart local v12       #i$:I
    move v13, v12

    .end local v8           #arr$:[Ljava/lang/String;
    .end local v12           #i$:I
    .end local v16           #len$:I
    .local v13, i$:I
    :goto_65
    move/from16 v0, v16

    if-ge v13, v0, :cond_5a

    aget-object v25, v8, v13

    .line 47
    .local v25, volume:Ljava/lang/String;
    new-instance v26, Ljava/io/File;

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 48
    .local v26, volumeDir:Ljava/io/File;
    new-instance v19, Ljava/io/File;

    const-string v29, "res"

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 49
    .local v19, oldResDir:Ljava/io/File;
    new-instance v18, Ljava/io/File;

    const-string v29, "res2"

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 50
    .local v18, newResDir:Ljava/io/File;
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v22

    .line 51
    .local v22, resources:[Ljava/lang/String;
    if-nez v22, :cond_9a

    .line 46
    .end local v13           #i$:I
    :cond_96
    add-int/lit8 v12, v13, 0x1

    .restart local v12       #i$:I
    move v13, v12

    .end local v12           #i$:I
    .restart local v13       #i$:I
    goto :goto_65

    .line 54
    :cond_9a
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->mkdirs()Z

    .line 55
    move-object/from16 v9, v22

    .local v9, arr$:[Ljava/lang/String;
    array-length v0, v9

    move/from16 v17, v0

    .local v17, len$:I
    const/4 v12, 0x0

    .end local v13           #i$:I
    .restart local v12       #i$:I
    :goto_a3
    move/from16 v0, v17

    if-ge v12, v0, :cond_96

    aget-object v20, v9, v12

    .line 56
    .local v20, resource:Ljava/lang/String;
    new-instance v21, Ljava/io/File;

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 57
    .local v21, resourceFile:Ljava/io/File;
    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/google/android/apps/books/provider/ResourceFileSha1RenameMigrator;->renameResourceFile(Ljava/io/File;Ljava/io/File;)V

    .line 55
    add-int/lit8 v12, v12, 0x1

    goto :goto_a3

    .line 62
    .end local v3           #account:Ljava/lang/String;
    .end local v4           #accountDir:Ljava/io/File;
    .end local v9           #arr$:[Ljava/lang/String;
    .end local v12           #i$:I
    .end local v17           #len$:I
    .end local v18           #newResDir:Ljava/io/File;
    .end local v19           #oldResDir:Ljava/io/File;
    .end local v20           #resource:Ljava/lang/String;
    .end local v21           #resourceFile:Ljava/io/File;
    .end local v22           #resources:[Ljava/lang/String;
    .end local v25           #volume:Ljava/lang/String;
    .end local v26           #volumeDir:Ljava/io/File;
    .end local v27           #volumes:[Ljava/lang/String;
    .end local v28           #volumesDir:Ljava/io/File;
    .restart local v14       #i$:I
    :cond_be
    const-string v29, "ResourceFileMigrator"

    const/16 v30, 0x3

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v29

    if-eqz v29, :cond_3b

    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v29

    sub-long v10, v29, v23

    .line 64
    .local v10, elapsedMillis:J
    const-string v29, "ResourceFileMigrator"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Time to rename resource files: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "ms"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3b
.end method

.method private static renameResourceFile(Ljava/io/File;Ljava/io/File;)V
    .registers 13
    .parameter "path"
    .parameter "newDir"

    .prologue
    const/4 v10, 0x6

    .line 76
    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 77
    .local v3, oldFilename:Ljava/lang/String;
    const/16 v7, 0xa

    invoke-static {v3, v7}, Lcom/google/android/apps/books/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v5

    .line 79
    .local v5, resourceUrlBytes:[B
    new-instance v4, Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-direct {v4, v5, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 80
    .local v4, resourceUrl:Ljava/lang/String;
    invoke-static {v3}, Lcom/google/android/apps/books/provider/BooksContract$Files;->resourceIdToFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 81
    .local v2, newFilename:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 82
    .local v1, newFile:Ljava/io/File;
    const-string v7, "ResourceFileMigrator"

    const/4 v8, 0x3

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_50

    .line 83
    const-string v7, "ResourceFileMigrator"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Renaming resource file for resource "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_50
    invoke-virtual {p0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v6

    .line 87
    .local v6, success:Z
    if-nez v6, :cond_7d

    const-string v7, "ResourceFileMigrator"

    const/4 v8, 0x6

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_7d

    .line 88
    const-string v7, "ResourceFileMigrator"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to move resource file "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_7d} :catch_7e

    .line 95
    .end local v1           #newFile:Ljava/io/File;
    .end local v2           #newFilename:Ljava/lang/String;
    .end local v3           #oldFilename:Ljava/lang/String;
    .end local v4           #resourceUrl:Ljava/lang/String;
    .end local v5           #resourceUrlBytes:[B
    .end local v6           #success:Z
    :cond_7d
    :goto_7d
    return-void

    .line 90
    :catch_7e
    move-exception v0

    .line 91
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    const-string v7, "ResourceFileMigrator"

    invoke-static {v7, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_7d

    .line 92
    const-string v7, "ResourceFileMigrator"

    const-string v8, "Unsupported encoding UTF-8"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7d
.end method
