.class public Lcom/sec/android/providers/downloads/saveas/SecDownloadSaveasManager;
.super Ljava/lang/Object;
.source "SecDownloadSaveasManager.java"


# static fields
.field public static final DOWNLOAD_SAVEAS_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 43
    const-string v0, "content://downloadsaveas/downloadsaveas"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/providers/downloads/saveas/SecDownloadSaveasManager;->DOWNLOAD_SAVEAS_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetNewFilePath(Landroid/content/Context;JI)Ljava/lang/String;
    .registers 16
    .parameter "ctx"
    .parameter "id"
    .parameter "storageType"

    .prologue
    const/4 v11, 0x0

    const/4 v3, 0x0

    .line 168
    const/4 v9, 0x0

    .line 169
    .local v9, ret:Z
    const/4 v10, 0x0

    .line 171
    .local v10, retPath:Ljava/lang/String;
    sget-object v0, Lcom/sec/android/providers/downloads/saveas/SecDownloadSaveasManager;->DOWNLOAD_SAVEAS_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 172
    .local v1, renameUri:Landroid/net/Uri;
    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v11

    const/4 v0, 0x1

    const-string v4, "hint"

    aput-object v4, v2, v0

    const/4 v0, 0x2

    const-string v4, "storagetype"

    aput-object v4, v2, v0

    const/4 v0, 0x3

    const-string v4, "status"

    aput-object v4, v2, v0

    .line 173
    .local v2, projection:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 175
    .local v8, renameCursor:Landroid/database/Cursor;
    if-nez v8, :cond_49

    .line 215
    :goto_2c
    if-eqz v9, :cond_30

    if-nez v10, :cond_34

    .line 221
    :cond_30
    invoke-static {p0, p3}, Lcom/sec/android/providers/downloads/SecHelpers;->GetSavePath(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v10

    .line 228
    :cond_34
    const/16 v0, 0x2e

    invoke-virtual {v10, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    .line 229
    .local v7, index:I
    if-lez v7, :cond_48

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    if-gt v7, v0, :cond_48

    .line 231
    invoke-virtual {v10, v11, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 238
    :cond_48
    return-object v10

    .line 183
    .end local v7           #index:I
    :cond_49
    :try_start_49
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_60

    .line 185
    const-string v0, "hint"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 186
    .local v6, columnId:I
    invoke-interface {v8, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 188
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_5c
    .catchall {:try_start_49 .. :try_end_5c} :catchall_73
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_5c} :catch_6e

    move-result v0

    if-nez v0, :cond_66

    .line 192
    const/4 v9, 0x1

    .line 208
    .end local v6           #columnId:I
    :cond_60
    :goto_60
    :try_start_60
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_63} :catch_64

    goto :goto_2c

    .line 209
    :catch_64
    move-exception v0

    goto :goto_2c

    .line 195
    .restart local v6       #columnId:I
    :cond_66
    :try_start_66
    const-string v0, "SecDownloader"

    const-string v3, "CDDownloadService : [saveas] path is empty"

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6d
    .catchall {:try_start_66 .. :try_end_6d} :catchall_73
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_6d} :catch_6e

    goto :goto_60

    .line 199
    .end local v6           #columnId:I
    :catch_6e
    move-exception v0

    .line 208
    :try_start_6f
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_72} :catch_64

    goto :goto_2c

    .line 207
    :catchall_73
    move-exception v0

    .line 208
    :try_start_74
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_77} :catch_78

    .line 207
    :goto_77
    throw v0

    .line 209
    :catch_78
    move-exception v3

    goto :goto_77
.end method

.method public static checkInfoForInsert(Landroid/content/Context;Lcom/sec/android/providers/downloads/SecDownloadInfo;)Z
    .registers 7
    .parameter "ctx"
    .parameter "info"

    .prologue
    .line 47
    const/4 v1, 0x0

    .line 49
    .local v1, ret:Z
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 51
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "_id"

    iget v4, p1, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 52
    const-string v3, "hint"

    iget-object v4, p1, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mHint:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string v3, "storagetype"

    iget v4, p1, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mStorageType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 54
    const-string v3, "status"

    const/16 v4, 0xbe

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 60
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/sec/android/providers/downloads/saveas/SecDownloadSaveasManager;->DOWNLOAD_SAVEAS_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 62
    iget v3, p1, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mMethod:I

    if-nez v3, :cond_4b

    .line 68
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW_SEC_DOWNLOADS"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 69
    .local v0, intent:Landroid/content/Intent;
    const/high16 v3, 0x1000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 70
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 76
    const/4 v1, 0x1

    .line 79
    .end local v0           #intent:Landroid/content/Intent;
    :cond_4b
    return v1
.end method

.method public static checkInfoForUpdate(Landroid/content/Context;Lcom/sec/android/providers/downloads/SecDownloadInfo;)Z
    .registers 12
    .parameter "ctx"
    .parameter "info"

    .prologue
    const/4 v3, 0x0

    .line 84
    const/4 v8, 0x0

    .line 86
    .local v8, ret:Z
    sget-object v0, Lcom/sec/android/providers/downloads/saveas/SecDownloadSaveasManager;->DOWNLOAD_SAVEAS_URI:Landroid/net/Uri;

    iget v4, p1, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mId:I

    int-to-long v4, v4

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 87
    .local v1, renameUri:Landroid/net/Uri;
    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v0

    const/4 v0, 0x1

    const-string v4, "hint"

    aput-object v4, v2, v0

    const/4 v0, 0x2

    const-string v4, "storagetype"

    aput-object v4, v2, v0

    const/4 v0, 0x3

    const-string v4, "status"

    aput-object v4, v2, v0

    .line 88
    .local v2, projection:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 90
    .local v7, renameCursor:Landroid/database/Cursor;
    if-nez v7, :cond_2f

    .line 147
    :goto_2e
    return v8

    .line 98
    :cond_2f
    :try_start_2f
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 100
    const-string v0, "status"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 101
    .local v6, columnId:I
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getInt(I)I
    :try_end_3e
    .catchall {:try_start_2f .. :try_end_3e} :catchall_53
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_3e} :catch_58

    move-result v9

    .line 107
    .local v9, status:I
    const/16 v0, 0x1ea

    if-ne v9, v0, :cond_49

    .line 140
    .end local v6           #columnId:I
    .end local v9           #status:I
    :cond_43
    :goto_43
    :try_start_43
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_46} :catch_47

    goto :goto_2e

    .line 141
    :catch_47
    move-exception v0

    goto :goto_2e

    .line 114
    .restart local v6       #columnId:I
    .restart local v9       #status:I
    :cond_49
    const/16 v0, 0xc0

    if-eq v9, v0, :cond_43

    .line 121
    const/16 v0, 0xbe

    if-ne v9, v0, :cond_43

    .line 126
    const/4 v8, 0x1

    goto :goto_43

    .line 139
    .end local v6           #columnId:I
    .end local v9           #status:I
    :catchall_53
    move-exception v0

    .line 140
    :try_start_54
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_57} :catch_5d

    .line 139
    :goto_57
    throw v0

    .line 131
    :catch_58
    move-exception v0

    .line 140
    :try_start_59
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_5c} :catch_47

    goto :goto_2e

    .line 141
    :catch_5d
    move-exception v3

    goto :goto_57
.end method

.method public static deleteInfo(Landroid/content/Context;Lcom/sec/android/providers/downloads/SecDownloadInfo;)V
    .registers 7
    .parameter "ctx"
    .parameter "info"

    .prologue
    const/4 v4, 0x0

    .line 157
    sget-object v1, Lcom/sec/android/providers/downloads/saveas/SecDownloadSaveasManager;->DOWNLOAD_SAVEAS_URI:Landroid/net/Uri;

    iget v2, p1, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mId:I

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 158
    .local v0, renameUri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 164
    return-void
.end method
