.class public abstract Lcom/infraware/common/util/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# static fields
.field private static m_strRootPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    const-string v0, "/mnt"

    sput-object v0, Lcom/infraware/common/util/FileUtils;->m_strRootPath:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addPathDelemeter(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "path"

    .prologue
    .line 100
    if-eqz p0, :cond_1d

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 103
    :cond_1d
    return-object p0
.end method

.method public static convertFileNameToValid(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "fileName"

    .prologue
    .line 251
    const-string v1, ""

    .line 252
    .local v1, newFileName:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, j:I
    :goto_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v0, v2, :cond_a

    .line 274
    return-object v1

    .line 254
    :cond_a
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sparse-switch v2, :sswitch_data_52

    .line 269
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 252
    :goto_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 257
    :sswitch_29
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 258
    goto :goto_26

    .line 266
    :sswitch_3d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x2d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 267
    goto :goto_26

    .line 254
    nop

    :sswitch_data_52
    .sparse-switch
        0x22 -> :sswitch_3d
        0x2a -> :sswitch_3d
        0x3a -> :sswitch_3d
        0x3c -> :sswitch_3d
        0x3e -> :sswitch_3d
        0x3f -> :sswitch_3d
        0x5c -> :sswitch_29
        0x7c -> :sswitch_3d
    .end sparse-switch
.end method

.method public static createCustomPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .registers 7
    .parameter "customPath"
    .parameter "dirName"
    .parameter "path"
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    .line 457
    const/4 v0, 0x0

    .line 458
    .local v0, tempPath:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_c

    .line 459
    invoke-static {p0, v2, p3}, Lcom/infraware/common/util/FileUtils;->makeDirectory(Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 461
    :cond_c
    if-nez v0, :cond_1d

    .line 462
    const/4 v1, 0x0

    invoke-static {p1, v1, p3}, Lcom/infraware/common/util/FileUtils;->makeDirectory(Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1d

    .line 463
    invoke-static {p2, v2, p3}, Lcom/infraware/common/util/FileUtils;->makeDirectory(Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1d

    .line 464
    const-string v0, "/mnt/sdcard/"

    .line 466
    :cond_1d
    invoke-static {v0}, Lcom/infraware/common/util/FileUtils;->addPathDelemeter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 468
    return-object v0
.end method

.method public static createFolder(Ljava/lang/String;)Z
    .registers 11
    .parameter "folder"

    .prologue
    .line 360
    const-string v7, "createFolder"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "folder:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    const/4 v1, 0x0

    .line 362
    .local v1, bCreate:Z
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 363
    .local v0, TempFolder:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v1

    .line 364
    const-string v7, "createFolder"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "bCreate:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    if-nez v1, :cond_49

    .line 367
    move-object v4, p0

    .line 368
    .local v4, strPath:Ljava/lang/String;
    const/4 v2, 0x0

    .line 371
    .local v2, nIndex:I
    :cond_36
    const-string v7, "/"

    invoke-virtual {v4, v7, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 372
    .local v3, nRet:I
    if-eqz v3, :cond_40

    if-eq v3, v2, :cond_43

    :cond_40
    const/4 v7, -0x1

    if-ne v3, v7, :cond_4a

    .line 382
    :cond_43
    :goto_43
    if-lez v2, :cond_49

    .line 383
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v1

    .line 386
    .end local v2           #nIndex:I
    .end local v3           #nRet:I
    .end local v4           #strPath:Ljava/lang/String;
    :cond_49
    return v1

    .line 373
    .restart local v2       #nIndex:I
    .restart local v3       #nRet:I
    .restart local v4       #strPath:Ljava/lang/String;
    :cond_4a
    const/4 v7, 0x0

    invoke-virtual {v4, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 374
    .local v6, tmpPath:Ljava/lang/String;
    const-string v7, "createFolder"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "tmpPath:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 376
    .local v5, temporaryFolder:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_85

    .line 377
    const-string v7, "temporaryFolder.exists()"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "tmpPath:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    invoke-virtual {v5}, Ljava/io/File;->mkdir()Z

    .line 380
    :cond_85
    add-int/lit8 v2, v3, 0x1

    .line 381
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-gt v7, v2, :cond_36

    goto :goto_43
.end method

.method public static decideFileName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter "context"
    .parameter "ext"
    .parameter "path"

    .prologue
    .line 171
    const/4 v2, 0x0

    .line 172
    .local v2, prefix:Ljava/lang/String;
    new-instance v2, Ljava/lang/String;

    .end local v2           #prefix:Ljava/lang/String;
    const v3, 0x7f080112

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 174
    .restart local v2       #prefix:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x30

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, p2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    .local v1, newfile:Ljava/io/File;
    const/4 v0, 0x0

    .line 177
    .local v0, index:I
    :goto_2f
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3a

    .line 182
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 178
    :cond_3a
    add-int/lit8 v0, v0, 0x1

    .line 179
    new-instance v1, Ljava/io/File;

    .end local v1           #newfile:Ljava/io/File;
    new-instance v3, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, p2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v1       #newfile:Ljava/io/File;
    goto :goto_2f
.end method

.method public static deleteDirectory(Ljava/io/File;Z)V
    .registers 7
    .parameter "dir"
    .parameter "bDeleteDir"

    .prologue
    .line 125
    if-nez p0, :cond_3

    .line 140
    :cond_2
    :goto_2
    return-void

    .line 128
    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 130
    :try_start_9
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v3, v2
    :try_end_e
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_e} :catch_2a

    const/4 v1, 0x0

    :goto_f
    if-lt v1, v3, :cond_17

    .line 137
    :goto_11
    if-eqz p1, :cond_2

    .line 138
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_2

    .line 130
    :cond_17
    :try_start_17
    aget-object v0, v2, v1

    .line 131
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_26

    .line 132
    const/4 v4, 0x1

    invoke-static {v0, v4}, Lcom/infraware/common/util/FileUtils;->deleteDirectory(Ljava/io/File;Z)V

    .line 130
    :goto_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 134
    :cond_26
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_29
    .catch Ljava/lang/NullPointerException; {:try_start_17 .. :try_end_29} :catch_2a

    goto :goto_23

    .line 135
    .end local v0           #file:Ljava/io/File;
    :catch_2a
    move-exception v1

    goto :goto_11
.end method

.method public static deleteDirectory(Ljava/lang/String;Z)V
    .registers 3
    .parameter "path"
    .parameter "bDeleteDir"

    .prologue
    .line 143
    if-nez p0, :cond_3

    .line 148
    :goto_2
    return-void

    .line 146
    :cond_3
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 147
    .local v0, dir:Ljava/io/File;
    invoke-static {v0, p1}, Lcom/infraware/common/util/FileUtils;->deleteDirectory(Ljava/io/File;Z)V

    goto :goto_2
.end method

.method public static deleteFolder(Ljava/io/File;)V
    .registers 6
    .parameter "a_oTargetFolder"

    .prologue
    .line 324
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_7

    .line 356
    :goto_6
    return-void

    .line 327
    :cond_7
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 330
    .local v3, oChildFile:[Ljava/io/File;
    if-nez v3, :cond_19

    .line 331
    const/4 v2, 0x0

    .line 336
    .local v2, nFileCount:I
    :goto_e
    if-lez v2, :cond_13

    .line 337
    const/4 v1, 0x0

    .local v1, i:I
    :goto_11
    if-lt v1, v2, :cond_1b

    .line 351
    .end local v1           #i:I
    :cond_13
    const/4 v0, 0x0

    .line 352
    .local v0, bDeleteResult:Z
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    .line 356
    goto :goto_6

    .line 333
    .end local v0           #bDeleteResult:Z
    .end local v2           #nFileCount:I
    :cond_19
    array-length v2, v3

    .restart local v2       #nFileCount:I
    goto :goto_e

    .line 340
    .restart local v1       #i:I
    :cond_1b
    aget-object v4, v3, v1

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_2d

    .line 341
    const/4 v0, 0x0

    .line 342
    .restart local v0       #bDeleteResult:Z
    aget-object v4, v3, v1

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v0

    .line 337
    .end local v0           #bDeleteResult:Z
    :goto_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 347
    :cond_2d
    aget-object v4, v3, v1

    invoke-static {v4}, Lcom/infraware/common/util/FileUtils;->deleteFolder(Ljava/io/File;)V

    goto :goto_2a
.end method

.method public static getCacheDir(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .parameter "context"

    .prologue
    .line 472
    const-string v0, "/mnt/sdcard/.polarisOffice/"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_e

    .line 473
    const-string v0, "/mnt/sdcard/.polarisOffice/"

    const/4 v1, 0x1

    invoke-static {v0, v1, p0}, Lcom/infraware/common/util/FileUtils;->makeDirectory(Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    .line 475
    :cond_e
    const-string v0, "/mnt/sdcard/.polarisOffice/polarisTemp"

    const-string v1, "polarisTemp"

    const-string v2, "/mnt/sdcard/.polarisOffice/polarisTemp"

    invoke-static {v0, v1, v2, p0}, Lcom/infraware/common/util/FileUtils;->createCustomPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDateString(Landroid/content/Context;J)Ljava/lang/String;
    .registers 7
    .parameter "context"
    .parameter "date"

    .prologue
    .line 186
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-nez v2, :cond_9

    const-string v2, ""

    .line 189
    :goto_8
    return-object v2

    .line 187
    :cond_9
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    .line 188
    .local v0, dateFormat:Ljava/text/DateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 189
    .local v1, dateTime:Ljava/util/Date;
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    goto :goto_8
.end method

.method public static getDateStringEx(Landroid/content/Context;J)Ljava/lang/String;
    .registers 8
    .parameter "context"
    .parameter "date"

    .prologue
    .line 194
    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-nez v3, :cond_9

    const-string v3, ""

    .line 199
    :goto_8
    return-object v3

    .line 195
    :cond_9
    invoke-static {p0, p1, p2}, Lcom/infraware/common/util/FileUtils;->getDateString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .line 197
    .local v1, sDate:Ljava/lang/String;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, " hh:mm:ss a"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 198
    .local v2, sdf:Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 199
    .local v0, dateTime:Ljava/util/Date;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_8
.end method

.method public static getFileExtString(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "fullPath"

    .prologue
    const/4 v2, 0x0

    .line 79
    invoke-static {p0}, Lcom/infraware/common/util/FileUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, strFileName:Ljava/lang/String;
    if-nez v1, :cond_8

    .line 86
    :cond_7
    :goto_7
    return-object v2

    .line 82
    :cond_8
    const/16 v3, 0x2e

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 83
    .local v0, nIndex:I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_7

    .line 86
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_7
.end method

.method public static getFileExtension(IZ)Ljava/lang/String;
    .registers 5
    .parameter "type"
    .parameter "isDot"

    .prologue
    .line 152
    const/4 v0, 0x0

    .line 153
    .local v0, ext:Ljava/lang/String;
    packed-switch p0, :pswitch_data_2a

    .line 163
    :goto_4
    if-eqz v0, :cond_17

    if-eqz p1, :cond_17

    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 166
    :cond_17
    return-object v0

    .line 155
    :pswitch_18
    const-string v0, "doc"

    goto :goto_4

    .line 156
    :pswitch_1b
    const-string v0, "ppt"

    goto :goto_4

    .line 157
    :pswitch_1e
    const-string v0, "xls"

    goto :goto_4

    .line 158
    :pswitch_21
    const-string v0, "docx"

    goto :goto_4

    .line 159
    :pswitch_24
    const-string v0, "pptx"

    goto :goto_4

    .line 160
    :pswitch_27
    const-string v0, "xlsx"

    goto :goto_4

    .line 153
    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_18
        :pswitch_1b
        :pswitch_1e
        :pswitch_21
        :pswitch_24
        :pswitch_27
    .end packed-switch
.end method

.method public static getFileName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "fullPath"

    .prologue
    .line 51
    if-eqz p0, :cond_c

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_f

    .line 52
    :cond_c
    const-string v1, ""

    .line 58
    :goto_e
    return-object v1

    .line 54
    :cond_f
    const/16 v1, 0x2f

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 55
    .local v0, nIndex:I
    if-ltz v0, :cond_1e

    .line 56
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_e

    .line 58
    :cond_1e
    const-string v1, ""

    goto :goto_e
.end method

.method public static getFileNameWihtoutExt(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "fullPath"

    .prologue
    .line 63
    if-eqz p0, :cond_c

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_f

    .line 64
    :cond_c
    const-string v2, ""

    .line 75
    :goto_e
    return-object v2

    .line 66
    :cond_f
    const/16 v2, 0x2f

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 67
    .local v0, nIndex1:I
    const/16 v2, 0x2e

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 68
    .local v1, nIndex2:I
    if-ltz v0, :cond_2a

    .line 69
    const/4 v2, 0x1

    if-lt v1, v2, :cond_27

    .line 70
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_e

    .line 72
    :cond_27
    const-string v2, ""

    goto :goto_e

    .line 75
    :cond_2a
    const-string v2, ""

    goto :goto_e
.end method

.method public static getFilePath(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "fullPath"

    .prologue
    .line 90
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_a

    .line 91
    :cond_8
    const/4 p0, 0x0

    .line 96
    .end local p0
    .local v0, nIndex:I
    :cond_9
    :goto_9
    return-object p0

    .line 93
    .end local v0           #nIndex:I
    .restart local p0
    :cond_a
    const/16 v1, 0x2f

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 94
    .restart local v0       #nIndex:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    .line 96
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_9
.end method

.method public static getRootPath(Landroid/content/Context;)Ljava/lang/String;
    .registers 5
    .parameter "context"

    .prologue
    .line 31
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 32
    .local v1, osVer:Ljava/lang/String;
    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2c

    const v2, 0x7f08030e

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "FV03"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2c

    .line 34
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v0

    .line 35
    .local v0, isExternalStorageRemovable:Z
    if-eqz v0, :cond_29

    .line 36
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/infraware/common/util/FileUtils;->m_strRootPath:Ljava/lang/String;

    .line 41
    .end local v0           #isExternalStorageRemovable:Z
    :cond_29
    :goto_29
    sget-object v2, Lcom/infraware/common/util/FileUtils;->m_strRootPath:Ljava/lang/String;

    return-object v2

    .line 39
    :cond_2c
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/infraware/common/util/FileUtils;->m_strRootPath:Ljava/lang/String;

    goto :goto_29
.end method

.method public static getSizeString(J)Ljava/lang/String;
    .registers 17
    .parameter "size"

    .prologue
    .line 204
    const-string v7, "GB"

    .local v7, strGiga:Ljava/lang/String;
    const-string v9, "MB"

    .local v9, strMega:Ljava/lang/String;
    const-string v8, "KB"

    .local v8, strKilo:Ljava/lang/String;
    const-string v6, "Bytes"

    .line 205
    .local v6, strBytes:Ljava/lang/String;
    const/high16 v1, 0x4e80

    .local v1, nGiga:F
    const/high16 v4, 0x4980

    .local v4, nMega:F
    const/high16 v2, 0x4480

    .line 206
    .local v2, nKilo:F
    const/4 v5, 0x0

    .line 208
    .local v5, nUnitSize:F
    const-wide/16 v11, 0x0

    cmp-long v11, p0, v11

    if-gez v11, :cond_17

    .line 209
    const/4 v0, 0x0

    .line 246
    :goto_16
    return-object v0

    .line 211
    :cond_17
    long-to-float v11, p0

    cmpl-float v11, v11, v1

    if-ltz v11, :cond_46

    .line 213
    long-to-float v11, p0

    div-float v5, v11, v1

    .line 214
    move-object v10, v7

    .line 232
    .local v10, strUnit:Ljava/lang/String;
    :goto_20
    long-to-float v11, p0

    cmpl-float v11, v11, v2

    if-ltz v11, :cond_5d

    float-to-int v11, v5

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v3

    .line 233
    .local v3, nLen:I
    :goto_2e
    packed-switch v3, :pswitch_data_88

    .line 242
    const-string v11, "%d%s"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    float-to-int v14, v5

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    aput-object v10, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, StrBuf:Ljava/lang/String;
    goto :goto_16

    .line 216
    .end local v0           #StrBuf:Ljava/lang/String;
    .end local v3           #nLen:I
    .end local v10           #strUnit:Ljava/lang/String;
    :cond_46
    long-to-float v11, p0

    cmpl-float v11, v11, v4

    if-ltz v11, :cond_50

    .line 218
    long-to-float v11, p0

    div-float v5, v11, v4

    .line 219
    move-object v10, v9

    .restart local v10       #strUnit:Ljava/lang/String;
    goto :goto_20

    .line 221
    .end local v10           #strUnit:Ljava/lang/String;
    :cond_50
    long-to-float v11, p0

    cmpl-float v11, v11, v2

    if-ltz v11, :cond_5a

    .line 223
    long-to-float v11, p0

    div-float v5, v11, v2

    .line 224
    move-object v10, v8

    .restart local v10       #strUnit:Ljava/lang/String;
    goto :goto_20

    .line 228
    .end local v10           #strUnit:Ljava/lang/String;
    :cond_5a
    long-to-float v5, p0

    .line 229
    move-object v10, v6

    .restart local v10       #strUnit:Ljava/lang/String;
    goto :goto_20

    .line 232
    :cond_5d
    const/4 v3, -0x1

    goto :goto_2e

    .line 236
    .restart local v3       #nLen:I
    :pswitch_5f
    const-string v11, "%.2f%s"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    aput-object v10, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 237
    .restart local v0       #StrBuf:Ljava/lang/String;
    goto :goto_16

    .line 239
    .end local v0           #StrBuf:Ljava/lang/String;
    :pswitch_73
    const-string v11, "%.1f%s"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    aput-object v10, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 240
    .restart local v0       #StrBuf:Ljava/lang/String;
    goto :goto_16

    .line 233
    nop

    :pswitch_data_88
    .packed-switch 0x1
        :pswitch_5f
        :pswitch_73
    .end packed-switch
.end method

.method public static getTextFromFile(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .registers 14
    .parameter "context"
    .parameter "fileName"
    .parameter "maxLength"

    .prologue
    const/4 v10, 0x0

    .line 279
    const/4 v8, 0x0

    .line 281
    .local v8, text:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 282
    .local v2, file:Ljava/io/File;
    new-array v3, p2, [B

    .line 283
    .local v3, fileBuffer:[B
    const/4 v7, 0x0

    .line 284
    .local v7, size:I
    const/4 v4, 0x0

    .line 286
    .local v4, inputStream:Ljava/io/InputStream;
    :try_start_b
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_10} :catch_36
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_10} :catch_38

    .line 287
    .end local v4           #inputStream:Ljava/io/InputStream;
    .local v5, inputStream:Ljava/io/InputStream;
    :try_start_10
    invoke-virtual {v5, v3}, Ljava/io/InputStream;->read([B)I

    move-result v7

    .line 288
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_17
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_17} :catch_61
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_17} :catch_5e

    .line 295
    const/16 v10, 0x50

    if-lt v7, v10, :cond_21

    invoke-static {}, Lcom/infraware/common/define/CMModelDefine;->isSamsungKorVer()Z

    move-result v10

    if-eqz v10, :cond_46

    .line 298
    :cond_21
    :try_start_21
    invoke-static {}, Lcom/infraware/common/define/CMModelDefine;->setCharName()Z

    move-result v10

    if-eqz v10, :cond_3a

    .line 299
    new-instance v9, Ljava/lang/String;

    const-string v10, "EUC-KR"

    invoke-direct {v9, v3, v10}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .end local v8           #text:Ljava/lang/String;
    .local v9, text:Ljava/lang/String;
    move-object v8, v9

    .line 303
    .end local v9           #text:Ljava/lang/String;
    .restart local v8       #text:Ljava/lang/String;
    :goto_2f
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    :goto_33
    move-object v4, v5

    .end local v5           #inputStream:Ljava/io/InputStream;
    .restart local v4       #inputStream:Ljava/io/InputStream;
    move-object v10, v8

    .line 321
    :goto_35
    return-object v10

    .line 289
    :catch_36
    move-exception v1

    .line 290
    .local v1, e:Ljava/io/FileNotFoundException;
    :goto_37
    goto :goto_35

    .line 291
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_38
    move-exception v1

    .line 292
    .local v1, e:Ljava/io/IOException;
    :goto_39
    goto :goto_35

    .line 301
    .end local v1           #e:Ljava/io/IOException;
    .end local v4           #inputStream:Ljava/io/InputStream;
    .restart local v5       #inputStream:Ljava/io/InputStream;
    :cond_3a
    new-instance v9, Ljava/lang/String;

    const-string v10, "UTF-8"

    invoke-direct {v9, v3, v10}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_41
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_21 .. :try_end_41} :catch_43

    .end local v8           #text:Ljava/lang/String;
    .restart local v9       #text:Ljava/lang/String;
    move-object v8, v9

    .end local v9           #text:Ljava/lang/String;
    .restart local v8       #text:Ljava/lang/String;
    goto :goto_2f

    .line 304
    :catch_43
    move-exception v1

    .line 305
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    const/4 v8, 0x0

    goto :goto_33

    .line 310
    .end local v1           #e:Ljava/io/UnsupportedEncodingException;
    :cond_46
    new-instance v0, Lcom/infraware/common/util/text/CharsetDetector;

    invoke-direct {v0}, Lcom/infraware/common/util/text/CharsetDetector;-><init>()V

    .line 311
    .local v0, detector:Lcom/infraware/common/util/text/CharsetDetector;
    invoke-virtual {v0, v3}, Lcom/infraware/common/util/text/CharsetDetector;->setText([B)Lcom/infraware/common/util/text/CharsetDetector;

    .line 312
    invoke-virtual {v0}, Lcom/infraware/common/util/text/CharsetDetector;->detect()Lcom/infraware/common/util/text/CharsetMatch;

    move-result-object v6

    .line 315
    .local v6, match:Lcom/infraware/common/util/text/CharsetMatch;
    :try_start_52
    invoke-virtual {v6, p2}, Lcom/infraware/common/util/text/CharsetMatch;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 316
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_59} :catch_5b

    move-result-object v8

    goto :goto_33

    .line 317
    :catch_5b
    move-exception v1

    .line 318
    .local v1, e:Ljava/io/IOException;
    const/4 v8, 0x0

    goto :goto_33

    .line 291
    .end local v0           #detector:Lcom/infraware/common/util/text/CharsetDetector;
    .end local v1           #e:Ljava/io/IOException;
    .end local v6           #match:Lcom/infraware/common/util/text/CharsetMatch;
    :catch_5e
    move-exception v1

    move-object v4, v5

    .end local v5           #inputStream:Ljava/io/InputStream;
    .restart local v4       #inputStream:Ljava/io/InputStream;
    goto :goto_39

    .line 289
    .end local v4           #inputStream:Ljava/io/InputStream;
    .restart local v5       #inputStream:Ljava/io/InputStream;
    :catch_61
    move-exception v1

    move-object v4, v5

    .end local v5           #inputStream:Ljava/io/InputStream;
    .restart local v4       #inputStream:Ljava/io/InputStream;
    goto :goto_37
.end method

.method public static isCacheFile(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 7
    .parameter "context"
    .parameter "fullPath"

    .prologue
    const/4 v3, 0x0

    .line 479
    const/16 v4, 0x2f

    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 480
    .local v1, index:I
    if-ltz v1, :cond_1a

    .line 482
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 484
    .local v2, path:Ljava/lang/String;
    invoke-static {p0}, Lcom/infraware/common/util/FileUtils;->getCacheDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 485
    .local v0, cacheDir:Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 486
    const/4 v3, 0x1

    .line 489
    .end local v0           #cacheDir:Ljava/lang/String;
    .end local v2           #path:Ljava/lang/String;
    :cond_1a
    return v3
.end method

.method public static isExistFile(Ljava/lang/String;)Z
    .registers 3
    .parameter "path"

    .prologue
    .line 448
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 451
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method public static isMediaScannerScanning(Landroid/content/Context;)Z
    .registers 11
    .parameter "context"

    .prologue
    const/4 v9, 0x1

    .line 419
    const/4 v7, 0x0

    .line 420
    .local v7, result:Z
    const/4 v6, 0x0

    .line 422
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 423
    .local v0, cr:Landroid/content/ContentResolver;
    invoke-static {}, Landroid/provider/MediaStore;->getMediaScannerUri()Landroid/net/Uri;

    move-result-object v1

    .line 424
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "volume"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 423
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 425
    if-eqz v6, :cond_3b

    .line 427
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ne v1, v9, :cond_3b

    .line 429
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 430
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 431
    .local v8, volumeName:Ljava/lang/String;
    const-string v1, "external"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3a

    const-string v1, "internal"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_61
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_3 .. :try_end_37} :catch_47
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_3 .. :try_end_37} :catch_54

    move-result v1

    if-eqz v1, :cond_3b

    .line 432
    :cond_3a
    const/4 v7, 0x1

    .line 440
    .end local v8           #volumeName:Ljava/lang/String;
    :cond_3b
    if-eqz v6, :cond_46

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_46

    .line 441
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 444
    .end local v0           #cr:Landroid/content/ContentResolver;
    :cond_46
    :goto_46
    return v7

    .line 435
    :catch_47
    move-exception v1

    .line 440
    if-eqz v6, :cond_46

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_46

    .line 441
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_46

    .line 437
    :catch_54
    move-exception v1

    .line 440
    if-eqz v6, :cond_46

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_46

    .line 441
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_46

    .line 439
    :catchall_61
    move-exception v1

    .line 440
    if-eqz v6, :cond_6d

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_6d

    .line 441
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 442
    :cond_6d
    throw v1
.end method

.method public static isSupported(Ljava/lang/String;)Z
    .registers 2
    .parameter "extension"

    .prologue
    .line 391
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 392
    if-eqz p0, :cond_56

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_56

    .line 394
    const-string v0, "doc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_54

    const-string v0, "docx"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_54

    .line 395
    const-string v0, "ppt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_54

    const-string v0, "pptx"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_54

    .line 396
    const-string v0, "xls"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_54

    const-string v0, "xlsx"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_54

    .line 397
    const-string v0, "hwp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_54

    .line 398
    const-string v0, "pdf"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_54

    .line 399
    const-string v0, "txt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_56

    .line 400
    :cond_54
    const/4 v0, 0x1

    .line 414
    :goto_55
    return v0

    :cond_56
    const/4 v0, 0x0

    goto :goto_55
.end method

.method public static makeDirectory(Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;
    .registers 7
    .parameter "path"
    .parameter "isAbsolutePath"
    .parameter "context"

    .prologue
    .line 107
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 108
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, dirName:Ljava/lang/String;
    const/4 v2, 0x0

    .line 111
    .local v2, new_dir:Ljava/io/File;
    if-nez p1, :cond_1e

    if-eqz p2, :cond_1e

    .line 112
    const/4 v3, 0x3

    invoke-virtual {p2, v0, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    .line 118
    :cond_13
    :goto_13
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 119
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 121
    :goto_1d
    return-object v3

    .line 114
    :cond_1e
    new-instance v2, Ljava/io/File;

    .end local v2           #new_dir:Ljava/io/File;
    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 115
    .restart local v2       #new_dir:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_13

    .line 116
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    goto :goto_13

    .line 121
    :cond_2d
    const/4 v3, 0x0

    goto :goto_1d
.end method


# virtual methods
.method public setRootPath(Ljava/lang/String;)V
    .registers 2
    .parameter "rootPath"

    .prologue
    .line 46
    sput-object p1, Lcom/infraware/common/util/FileUtils;->m_strRootPath:Ljava/lang/String;

    .line 47
    return-void
.end method
