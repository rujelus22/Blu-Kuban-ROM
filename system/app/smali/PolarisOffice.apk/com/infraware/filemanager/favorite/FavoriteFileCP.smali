.class public Lcom/infraware/filemanager/favorite/FavoriteFileCP;
.super Landroid/content/ContentProvider;
.source "FavoriteFileCP.java"


# static fields
.field static final ALL_FAVORITE_FILES:I = 0x1

.field static final AUTHROTY:Ljava/lang/String; = "com.infraware.polarisoffice"

.field static final CONTENT_URI:Landroid/net/Uri; = null

.field static final FAVORITE_SCHEME:Ljava/lang/String; = "polaris_office_favorite://"

.field static final MIME_TYPE_MULTI_FAVORITE_FILES:Ljava/lang/String; = "vnd.infraware.cursor.dir/favorite_files"

.field static final MIME_TYPE_SINGLE_FAVORITE_FILE:Ljava/lang/String; = "vnd.infraware.cursor.item/favorite_file"

.field static final ONE_FAVORITE_FILE:I = 0x2

.field static final matcher:Landroid/content/UriMatcher;


# instance fields
.field mDB:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 23
    const-string v0, "content://com.infraware.polarisoffice/favorite_files"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/infraware/filemanager/favorite/FavoriteFileCP;->CONTENT_URI:Landroid/net/Uri;

    .line 46
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/infraware/filemanager/favorite/FavoriteFileCP;->matcher:Landroid/content/UriMatcher;

    .line 47
    sget-object v0, Lcom/infraware/filemanager/favorite/FavoriteFileCP;->matcher:Landroid/content/UriMatcher;

    const-string v1, "com.infraware.polarisoffice"

    const-string v2, "/favorite_files"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 48
    sget-object v0, Lcom/infraware/filemanager/favorite/FavoriteFileCP;->matcher:Landroid/content/UriMatcher;

    const-string v1, "com.infraware.polarisoffice"

    const-string v2, "/favorite_file/*"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 19
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method public static getFileAbsPathFromScheme(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "aDocViewScheme"

    .prologue
    .line 32
    const/4 v0, 0x0

    .line 34
    .local v0, ret:Ljava/lang/String;
    const-string v1, "polaris_office_favorite://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 35
    const-string v1, "polaris_office_favorite://"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 41
    :goto_11
    return-object v0

    .line 38
    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 138
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 4
    .parameter "uri"

    .prologue
    .line 58
    sget-object v0, Lcom/infraware/filemanager/favorite/FavoriteFileCP;->matcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    .line 59
    const-string v0, "vnd.infraware.cursor.dir/favorite_files"

    .line 64
    :goto_b
    return-object v0

    .line 61
    :cond_c
    sget-object v0, Lcom/infraware/filemanager/favorite/FavoriteFileCP;->matcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_18

    .line 62
    const-string v0, "vnd.infraware.cursor.item/favorite_file"

    goto :goto_b

    .line 64
    :cond_18
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 4
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 144
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .registers 2

    .prologue
    .line 54
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 19
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 68
    const/4 v7, 0x6

    new-array v5, v7, [Ljava/lang/String;

    .line 69
    .local v5, liveFolderColumns:[Ljava/lang/String;
    const/4 v7, 0x0

    const-string v8, "_id"

    aput-object v8, v5, v7

    .line 70
    const/4 v7, 0x1

    const-string v8, "name"

    aput-object v8, v5, v7

    .line 71
    const/4 v7, 0x2

    const-string v8, "description"

    aput-object v8, v5, v7

    .line 72
    const/4 v7, 0x3

    const-string v8, "icon_package"

    aput-object v8, v5, v7

    .line 73
    const/4 v7, 0x4

    const-string v8, "icon_resource"

    aput-object v8, v5, v7

    .line 74
    const/4 v7, 0x5

    const-string v8, "intent"

    aput-object v8, v5, v7

    .line 76
    new-instance v1, Landroid/database/MatrixCursor;

    invoke-direct {v1, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 79
    .local v1, cursor:Landroid/database/MatrixCursor;
    const/4 v7, 0x6

    :try_start_27
    new-array v0, v7, [Ljava/lang/Object;

    .line 80
    .local v0, columnValues:[Ljava/lang/Object;
    new-instance v3, Lcom/infraware/filemanager/file/FileListIcon;

    invoke-virtual {p0}, Lcom/infraware/filemanager/favorite/FavoriteFileCP;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v3, v7}, Lcom/infraware/filemanager/file/FileListIcon;-><init>(Landroid/content/Context;)V

    .line 82
    .local v3, fIcon:Lcom/infraware/filemanager/file/FileListIcon;
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/infraware/filemanager/favorite/FavoriteFileCP;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_58

    .line 83
    invoke-virtual {p0}, Lcom/infraware/filemanager/favorite/FavoriteFileCP;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/infraware/filemanager/favorite/FavoriteListManager;->getInstance(Landroid/content/Context;)Lcom/infraware/filemanager/favorite/FavoriteListManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/infraware/filemanager/favorite/FavoriteListManager;->getFavoriteFiles()Ljava/util/ArrayList;

    move-result-object v4

    .line 85
    .local v4, fileItemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/infraware/filemanager/file/FileListItem;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_52
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_6f

    .line 119
    .end local v4           #fileItemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/infraware/filemanager/file/FileListItem;>;"
    :cond_58
    invoke-virtual {p0}, Lcom/infraware/filemanager/favorite/FavoriteFileCP;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v1, v7, p1}, Landroid/database/MatrixCursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    :try_end_63
    .catchall {:try_start_27 .. :try_end_63} :catchall_f3
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_63} :catch_e2

    .line 125
    if-eqz v1, :cond_6e

    .line 126
    invoke-virtual {v1}, Landroid/database/MatrixCursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_6e

    .line 127
    invoke-virtual {v1}, Landroid/database/MatrixCursor;->close()V

    .line 132
    .end local v0           #columnValues:[Ljava/lang/Object;
    .end local v3           #fIcon:Lcom/infraware/filemanager/file/FileListIcon;
    :cond_6e
    :goto_6e
    return-object v1

    .line 85
    .restart local v0       #columnValues:[Ljava/lang/Object;
    .restart local v3       #fIcon:Lcom/infraware/filemanager/file/FileListIcon;
    .restart local v4       #fileItemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/infraware/filemanager/file/FileListItem;>;"
    :cond_6f
    :try_start_6f
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/infraware/filemanager/file/FileListItem;

    .line 86
    .local v6, tempItem:Lcom/infraware/filemanager/file/FileListItem;
    const/4 v8, 0x0

    iget v9, v6, Lcom/infraware/filemanager/file/FileListItem;->favoritePkey:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v0, v8

    .line 87
    const/4 v8, 0x1

    invoke-virtual {v6}, Lcom/infraware/filemanager/file/FileListItem;->getFullFileName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v0, v8

    .line 89
    const/4 v8, 0x2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/infraware/filemanager/favorite/FavoriteFileCP;->getContext()Landroid/content/Context;

    move-result-object v10

    iget-wide v11, v6, Lcom/infraware/filemanager/file/FileListItem;->updateTime:J

    invoke-static {v10, v11, v12}, Lcom/infraware/common/util/FileUtils;->getDateString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 90
    iget-wide v10, v6, Lcom/infraware/filemanager/file/FileListItem;->size:J

    invoke-static {v10, v11}, Lcom/infraware/common/util/FileUtils;->getSizeString(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 89
    aput-object v9, v0, v8

    .line 91
    const/4 v8, 0x3

    invoke-virtual {p0}, Lcom/infraware/filemanager/favorite/FavoriteFileCP;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v0, v8

    .line 92
    const/4 v8, 0x4

    iget-object v9, v6, Lcom/infraware/filemanager/file/FileListItem;->ext:Ljava/lang/String;

    invoke-virtual {v3, v9}, Lcom/infraware/filemanager/file/FileListIcon;->getResByFileExt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v0, v8

    .line 93
    const/4 v8, 0x5

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "polaris_office_favorite://"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/infraware/filemanager/file/FileListItem;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v0, v8

    .line 94
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_e0
    .catchall {:try_start_6f .. :try_end_e0} :catchall_f3
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_e0} :catch_e2

    goto/16 :goto_52

    .line 121
    .end local v0           #columnValues:[Ljava/lang/Object;
    .end local v3           #fIcon:Lcom/infraware/filemanager/file/FileListIcon;
    .end local v4           #fileItemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/infraware/filemanager/file/FileListItem;>;"
    .end local v6           #tempItem:Lcom/infraware/filemanager/file/FileListItem;
    :catch_e2
    move-exception v2

    .line 122
    .local v2, e:Ljava/lang/Exception;
    :try_start_e3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_e6
    .catchall {:try_start_e3 .. :try_end_e6} :catchall_f3

    .line 125
    if-eqz v1, :cond_6e

    .line 126
    invoke-virtual {v1}, Landroid/database/MatrixCursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_6e

    .line 127
    invoke-virtual {v1}, Landroid/database/MatrixCursor;->close()V

    goto/16 :goto_6e

    .line 124
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_f3
    move-exception v7

    .line 125
    if-eqz v1, :cond_ff

    .line 126
    invoke-virtual {v1}, Landroid/database/MatrixCursor;->isClosed()Z

    move-result v8

    if-nez v8, :cond_ff

    .line 127
    invoke-virtual {v1}, Landroid/database/MatrixCursor;->close()V

    .line 130
    :cond_ff
    throw v7
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 150
    const/4 v0, 0x0

    return v0
.end method
