.class public Lcom/sec/dsm/system/osp/PropertyRepository;
.super Ljava/lang/Object;
.source "PropertyRepository.java"


# static fields
.field private static final CONTENT_URI:Landroid/net/Uri;


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 11
    const-string v0, "content://com.osp.contentprovider.ospcontentprovider/property"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/dsm/system/osp/PropertyRepository;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/sec/dsm/system/osp/PropertyRepository;->context:Landroid/content/Context;

    .line 28
    return-void
.end method


# virtual methods
.method protected containsKey(Ljava/lang/String;)Z
    .registers 14
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/dsm/system/osp/PropertyException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 31
    const/4 v9, 0x0

    .line 33
    .local v9, ret:Z
    const/4 v7, 0x0

    .line 35
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v0, 0x1

    :try_start_5
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "Value"

    aput-object v1, v2, v0

    .line 36
    .local v2, projection:[Ljava/lang/String;
    const-string v3, "Key = ?"

    .line 37
    .local v3, selection:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    .line 39
    .local v4, selectionArgs:[Ljava/lang/String;
    iget-object v0, p0, Lcom/sec/dsm/system/osp/PropertyRepository;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/dsm/system/osp/PropertyRepository;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 42
    const/4 v6, 0x0

    .line 43
    .local v6, count:I
    if-eqz v7, :cond_2b

    .line 44
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_27
    .catchall {:try_start_5 .. :try_end_27} :catchall_3e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_27} :catch_33

    move-result v6

    .line 45
    if-lez v6, :cond_31

    move v9, v10

    .line 50
    :cond_2b
    :goto_2b
    if-eqz v7, :cond_30

    .line 51
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 55
    :cond_30
    return v9

    :cond_31
    move v9, v11

    .line 45
    goto :goto_2b

    .line 47
    .end local v2           #projection:[Ljava/lang/String;
    .end local v3           #selection:Ljava/lang/String;
    .end local v4           #selectionArgs:[Ljava/lang/String;
    .end local v6           #count:I
    :catch_33
    move-exception v8

    .line 48
    .local v8, e:Ljava/lang/Exception;
    :try_start_34
    new-instance v0, Lcom/sec/dsm/system/osp/PropertyException;

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v8}, Lcom/sec/dsm/system/osp/PropertyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_3e
    .catchall {:try_start_34 .. :try_end_3e} :catchall_3e

    .line 50
    .end local v8           #e:Ljava/lang/Exception;
    :catchall_3e
    move-exception v0

    if-eqz v7, :cond_44

    .line 51
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_44
    throw v0
.end method

.method protected get(Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/dsm/system/osp/PropertyException;
        }
    .end annotation

    .prologue
    .line 59
    const/4 v8, 0x0

    .line 61
    .local v8, valueData:Ljava/lang/String;
    const/4 v6, 0x0

    .line 63
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v0, 0x1

    :try_start_3
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "Value"

    aput-object v1, v2, v0

    .line 64
    .local v2, projection:[Ljava/lang/String;
    const-string v3, "Key = ?"

    .line 65
    .local v3, selection:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    .line 67
    .local v4, selectionArgs:[Ljava/lang/String;
    iget-object v0, p0, Lcom/sec/dsm/system/osp/PropertyRepository;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/dsm/system/osp/PropertyRepository;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 70
    if-eqz v6, :cond_2c

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 71
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_3d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_2b} :catch_32

    move-result-object v8

    .line 76
    :cond_2c
    if-eqz v6, :cond_31

    .line 77
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 81
    :cond_31
    return-object v8

    .line 73
    .end local v2           #projection:[Ljava/lang/String;
    .end local v3           #selection:Ljava/lang/String;
    .end local v4           #selectionArgs:[Ljava/lang/String;
    :catch_32
    move-exception v7

    .line 74
    .local v7, e:Ljava/lang/Exception;
    :try_start_33
    new-instance v0, Lcom/sec/dsm/system/osp/PropertyException;

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v7}, Lcom/sec/dsm/system/osp/PropertyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_3d
    .catchall {:try_start_33 .. :try_end_3d} :catchall_3d

    .line 76
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_3d
    move-exception v0

    if-eqz v6, :cond_43

    .line 77
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_43
    throw v0
.end method

.method protected put(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .parameter "key"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/dsm/system/osp/PropertyException;
        }
    .end annotation

    .prologue
    .line 86
    const/4 v0, 0x0

    .line 88
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_1
    const-string v2, "Key = ?"

    .line 89
    .local v2, selection:Ljava/lang/String;
    const/4 v5, 0x1

    new-array v3, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v3, v5

    .line 91
    .local v3, selectionArgs:[Ljava/lang/String;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 92
    .local v4, values:Landroid/content/ContentValues;
    const-string v5, "Key"

    invoke-virtual {v4, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v5, "Value"

    invoke-virtual {v4, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0, p1}, Lcom/sec/dsm/system/osp/PropertyRepository;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2f

    .line 96
    iget-object v5, p0, Lcom/sec/dsm/system/osp/PropertyRepository;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/sec/dsm/system/osp/PropertyRepository;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_46
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_29} :catch_3b

    .line 104
    :goto_29
    if-eqz v0, :cond_2e

    .line 105
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 108
    :cond_2e
    return-void

    .line 98
    :cond_2f
    :try_start_2f
    iget-object v5, p0, Lcom/sec/dsm/system/osp/PropertyRepository;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/sec/dsm/system/osp/PropertyRepository;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6, v4, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3a
    .catchall {:try_start_2f .. :try_end_3a} :catchall_46
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_3a} :catch_3b

    goto :goto_29

    .line 101
    .end local v2           #selection:Ljava/lang/String;
    .end local v3           #selectionArgs:[Ljava/lang/String;
    .end local v4           #values:Landroid/content/ContentValues;
    :catch_3b
    move-exception v1

    .line 102
    .local v1, e:Ljava/lang/Exception;
    :try_start_3c
    new-instance v5, Lcom/sec/dsm/system/osp/PropertyException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v1}, Lcom/sec/dsm/system/osp/PropertyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
    :try_end_46
    .catchall {:try_start_3c .. :try_end_46} :catchall_46

    .line 104
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_46
    move-exception v5

    if-eqz v0, :cond_4c

    .line 105
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4c
    throw v5
.end method
