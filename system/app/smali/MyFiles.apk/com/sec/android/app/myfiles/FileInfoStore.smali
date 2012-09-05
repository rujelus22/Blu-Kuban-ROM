.class public Lcom/sec/android/app/myfiles/FileInfoStore;
.super Ljava/lang/Object;
.source "FileInfoStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/myfiles/FileInfoStore$FileInfoType;
    }
.end annotation


# static fields
.field public static mInfoStore:Lcom/sec/android/app/myfiles/FileInfoStore;


# instance fields
.field private final mCtx:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "ctx"

    .prologue
    .line 63
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/sec/android/app/myfiles/FileInfoStore;->mCtx:Landroid/content/Context;

    .line 65
    sput-object p0, Lcom/sec/android/app/myfiles/FileInfoStore;->mInfoStore:Lcom/sec/android/app/myfiles/FileInfoStore;

    .line 66
    return-void
.end method


# virtual methods
.method public close(Ljava/lang/String;)V
    .registers 5
    .parameter "ClassName"

    .prologue
    .line 89
    const-string v0, "[MyFiles]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":  Close databases...."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    return-void
.end method

.method public deleteFileInfoTable(Ljava/lang/String;Lcom/sec/android/app/myfiles/FileInfoStore$FileInfoType;)V
    .registers 8
    .parameter "path"
    .parameter "type"

    .prologue
    const/4 v4, 0x0

    .line 334
    sget-object v0, Lcom/sec/android/app/myfiles/FileInfoStore$FileInfoType;->PROTECTION:Lcom/sec/android/app/myfiles/FileInfoStore$FileInfoType;

    if-ne p2, v0, :cond_2a

    .line 335
    iget-object v0, p0, Lcom/sec/android/app/myfiles/FileInfoStore;->mCtx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/myfiles/FileProtection$Protection;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "path = \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 341
    :cond_29
    :goto_29
    return-void

    .line 337
    :cond_2a
    sget-object v0, Lcom/sec/android/app/myfiles/FileInfoStore$FileInfoType;->BT_VISIBILITY:Lcom/sec/android/app/myfiles/FileInfoStore$FileInfoType;

    if-ne p2, v0, :cond_29

    .line 338
    iget-object v0, p0, Lcom/sec/android/app/myfiles/FileInfoStore;->mCtx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/myfiles/FileBtVisibility$BtVisibility;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "path = \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_29
.end method

.method public fetchHavingSpecificPath(Ljava/lang/String;Lcom/sec/android/app/myfiles/FileInfoStore$FileInfoType;)Landroid/database/Cursor;
    .registers 10
    .parameter "prefix"
    .parameter "type"

    .prologue
    const/4 v2, 0x0

    .line 97
    sget-object v0, Lcom/sec/android/app/myfiles/FileInfoStore$FileInfoType;->PROTECTION:Lcom/sec/android/app/myfiles/FileInfoStore$FileInfoType;

    if-ne p2, v0, :cond_58

    .line 98
    iget-object v0, p0, Lcom/sec/android/app/myfiles/FileInfoStore;->mCtx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/myfiles/FileProtection$Protection;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "path = \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 107
    .local v6, cursor:Landroid/database/Cursor;
    :goto_2c
    if-eqz v6, :cond_57

    .line 108
    const-string v0, "[MyFiles]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fetch having "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " result : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 111
    :cond_57
    return-object v6

    .line 100
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_58
    sget-object v0, Lcom/sec/android/app/myfiles/FileInfoStore$FileInfoType;->BT_VISIBILITY:Lcom/sec/android/app/myfiles/FileInfoStore$FileInfoType;

    if-ne p2, v0, :cond_84

    .line 101
    iget-object v0, p0, Lcom/sec/android/app/myfiles/FileInfoStore;->mCtx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/myfiles/FileBtVisibility$BtVisibility;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "path = \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .restart local v6       #cursor:Landroid/database/Cursor;
    goto :goto_2c

    .line 104
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_84
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown FileInfoType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFileInfoState(Ljava/lang/String;Lcom/sec/android/app/myfiles/FileInfoStore$FileInfoType;)I
    .registers 9
    .parameter "path"
    .parameter "type"

    .prologue
    .line 353
    const/4 v2, 0x1

    .line 355
    .local v2, ret_val:I
    const/4 v0, 0x0

    .line 357
    .local v0, cursor:Landroid/database/Cursor;
    sget-object v3, Lcom/sec/android/app/myfiles/FileInfoStore$FileInfoType;->PROTECTION:Lcom/sec/android/app/myfiles/FileInfoStore$FileInfoType;

    if-ne p2, v3, :cond_2e

    .line 359
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 361
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 362
    sget-object v3, Lcom/sec/android/app/myfiles/FileInfoStore$FileInfoType;->PROTECTION:Lcom/sec/android/app/myfiles/FileInfoStore$FileInfoType;

    invoke-virtual {p0, p1, v3}, Lcom/sec/android/app/myfiles/FileInfoStore;->fetchHavingSpecificPath(Ljava/lang/String;Lcom/sec/android/app/myfiles/FileInfoStore$FileInfoType;)Landroid/database/Cursor;

    move-result-object v0

    .line 375
    .end local v1           #file:Ljava/io/File;
    :goto_17
    if-eqz v0, :cond_25

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_26

    .line 376
    :cond_25
    const/4 v2, 0x0

    .line 378
    :cond_26
    if-eqz v0, :cond_2b

    .line 379
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 382
    :cond_2b
    return v2

    .line 368
    .restart local v1       #file:Ljava/io/File;
    :cond_2c
    const/4 v2, 0x0

    goto :goto_17

    .line 370
    .end local v1           #file:Ljava/io/File;
    :cond_2e
    sget-object v3, Lcom/sec/android/app/myfiles/FileInfoStore$FileInfoType;->BT_VISIBILITY:Lcom/sec/android/app/myfiles/FileInfoStore$FileInfoType;

    if-ne p2, v3, :cond_39

    .line 371
    sget-object v3, Lcom/sec/android/app/myfiles/FileInfoStore$FileInfoType;->BT_VISIBILITY:Lcom/sec/android/app/myfiles/FileInfoStore$FileInfoType;

    invoke-virtual {p0, p1, v3}, Lcom/sec/android/app/myfiles/FileInfoStore;->fetchHavingSpecificPath(Ljava/lang/String;Lcom/sec/android/app/myfiles/FileInfoStore$FileInfoType;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_17

    .line 373
    :cond_39
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown FileInfoType "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getFileInfoStateList(Ljava/lang/String;ILcom/sec/android/app/myfiles/FileInfoStore$FileInfoType;)[Ljava/lang/String;
    .registers 13
    .parameter "path"
    .parameter "depth"
    .parameter "type"

    .prologue
    const/4 v2, 0x0

    .line 298
    sget-object v0, Lcom/sec/android/app/myfiles/FileInfoStore$FileInfoType;->PROTECTION:Lcom/sec/android/app/myfiles/FileInfoStore$FileInfoType;

    if-ne p3, v0, :cond_51

    .line 299
    iget-object v0, p0, Lcom/sec/android/app/myfiles/FileInfoStore;->mCtx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/myfiles/FileProtection$Protection;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file_depth = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and path like "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 312
    .local v6, c:Landroid/database/Cursor;
    :goto_3c
    if-eqz v6, :cond_4a

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_4a

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_a6

    .line 313
    :cond_4a
    if-eqz v6, :cond_4f

    .line 314
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4f
    move-object v8, v2

    .line 329
    :cond_50
    :goto_50
    return-object v8

    .line 303
    .end local v6           #c:Landroid/database/Cursor;
    :cond_51
    sget-object v0, Lcom/sec/android/app/myfiles/FileInfoStore$FileInfoType;->BT_VISIBILITY:Lcom/sec/android/app/myfiles/FileInfoStore$FileInfoType;

    if-ne p3, v0, :cond_8d

    .line 304
    iget-object v0, p0, Lcom/sec/android/app/myfiles/FileInfoStore;->mCtx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/myfiles/FileBtVisibility$BtVisibility;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file_depth = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and path like "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .restart local v6       #c:Landroid/database/Cursor;
    goto :goto_3c

    .line 309
    .end local v6           #c:Landroid/database/Cursor;
    :cond_8d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown FileInfoType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 319
    .restart local v6       #c:Landroid/database/Cursor;
    :cond_a6
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v8, v0, [Ljava/lang/String;

    .line 321
    .local v8, s:[Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_ad
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v7, v0, :cond_c5

    .line 322
    const-string v0, "path"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v7

    .line 323
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 321
    add-int/lit8 v7, v7, 0x1

    goto :goto_ad

    .line 326
    :cond_c5
    if-eqz v6, :cond_50

    .line 327
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_50
.end method

.method public insertFileInfoTable(Ljava/lang/String;IILcom/sec/android/app/myfiles/FileInfoStore$FileInfoType;)V
    .registers 12
    .parameter "path"
    .parameter "state"
    .parameter "depth"
    .parameter "type"

    .prologue
    const v6, 0x7f09004f

    const/4 v5, 0x0

    .line 245
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 247
    .local v2, values:Landroid/content/ContentValues;
    sget-object v3, Lcom/sec/android/app/myfiles/FileInfoStore$FileInfoType;->PROTECTION:Lcom/sec/android/app/myfiles/FileInfoStore$FileInfoType;

    if-ne p4, v3, :cond_42

    .line 248
    const-string v3, "path"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const-string v3, "state"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 250
    const-string v3, "file_depth"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 253
    :try_start_24
    iget-object v3, p0, Lcom/sec/android/app/myfiles/FileInfoStore;->mCtx:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/myfiles/FileProtection$Protection;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_2f
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_24 .. :try_end_2f} :catch_30

    .line 292
    :goto_2f
    return-void

    .line 256
    :catch_30
    move-exception v0

    .line 257
    .local v0, e:Landroid/database/sqlite/SQLiteFullException;
    iget-object v3, p0, Lcom/sec/android/app/myfiles/FileInfoStore;->mCtx:Landroid/content/Context;

    invoke-static {v3, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 260
    .local v1, toast:Landroid/widget/Toast;
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 262
    const-string v3, "[MyFiles]"

    const-string v4, "FileInfoStore.insertFileInfoTable - SQLiteFullException is occured."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f

    .line 268
    .end local v0           #e:Landroid/database/sqlite/SQLiteFullException;
    .end local v1           #toast:Landroid/widget/Toast;
    :cond_42
    sget-object v3, Lcom/sec/android/app/myfiles/FileInfoStore$FileInfoType;->BT_VISIBILITY:Lcom/sec/android/app/myfiles/FileInfoStore$FileInfoType;

    if-ne p4, v3, :cond_7b

    .line 269
    const-string v3, "path"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    const-string v3, "state"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 271
    const-string v3, "file_depth"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 274
    :try_start_5d
    iget-object v3, p0, Lcom/sec/android/app/myfiles/FileInfoStore;->mCtx:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/myfiles/FileBtVisibility$BtVisibility;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_68
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_5d .. :try_end_68} :catch_69

    goto :goto_2f

    .line 277
    :catch_69
    move-exception v0

    .line 278
    .restart local v0       #e:Landroid/database/sqlite/SQLiteFullException;
    iget-object v3, p0, Lcom/sec/android/app/myfiles/FileInfoStore;->mCtx:Landroid/content/Context;

    invoke-static {v3, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 281
    .restart local v1       #toast:Landroid/widget/Toast;
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 283
    const-string v3, "[MyFiles]"

    const-string v4, "FileInfoStore.insertFileInfoTable - SQLiteFullException is occured."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f

    .line 290
    .end local v0           #e:Landroid/database/sqlite/SQLiteFullException;
    .end local v1           #toast:Landroid/widget/Toast;
    :cond_7b
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown FileInfoType "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public open(Ljava/lang/String;)Lcom/sec/android/app/myfiles/FileInfoStore;
    .registers 5
    .parameter "ClassName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 81
    const-string v0, "[MyFiles]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : Open ...."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    return-object p0
.end method
