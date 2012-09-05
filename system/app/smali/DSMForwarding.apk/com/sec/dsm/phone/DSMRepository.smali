.class public Lcom/sec/dsm/phone/DSMRepository;
.super Ljava/lang/Object;
.source "DSMRepository.java"


# static fields
.field public static final URI:Landroid/net/Uri;


# instance fields
.field private mcontext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    const-string v0, "content://com.sec.dsm.system.dsmcontentprovider/dsm"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/dsm/phone/DSMRepository;->URI:Landroid/net/Uri;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/dsm/phone/DSMRepository;->mcontext:Landroid/content/Context;

    .line 18
    iput-object p1, p0, Lcom/sec/dsm/phone/DSMRepository;->mcontext:Landroid/content/Context;

    .line 19
    return-void
.end method


# virtual methods
.method protected containsKey(Ljava/lang/String;)Z
    .registers 14
    .parameter "key"

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 34
    const/4 v9, 0x0

    .line 36
    .local v9, ret:Z
    const/4 v7, 0x0

    .line 38
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v0, 0x1

    :try_start_5
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "Value"

    aput-object v1, v2, v0

    .line 39
    .local v2, projection:[Ljava/lang/String;
    const-string v3, "Key = ?"

    .line 40
    .local v3, selection:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    .line 41
    .local v4, selectionArgs:[Ljava/lang/String;
    iget-object v0, p0, Lcom/sec/dsm/phone/DSMRepository;->mcontext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/dsm/phone/DSMRepository;->URI:Landroid/net/Uri;

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
    .catchall {:try_start_5 .. :try_end_27} :catchall_3d
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

    .line 54
    .end local v2           #projection:[Ljava/lang/String;
    .end local v3           #selection:Ljava/lang/String;
    .end local v4           #selectionArgs:[Ljava/lang/String;
    .end local v6           #count:I
    :cond_30
    :goto_30
    return v9

    .restart local v2       #projection:[Ljava/lang/String;
    .restart local v3       #selection:Ljava/lang/String;
    .restart local v4       #selectionArgs:[Ljava/lang/String;
    .restart local v6       #count:I
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
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_3d

    .line 50
    if-eqz v7, :cond_30

    .line 51
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_30

    .line 50
    .end local v8           #e:Ljava/lang/Exception;
    :catchall_3d
    move-exception v0

    if-eqz v7, :cond_43

    .line 51
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_43
    throw v0
.end method

.method protected put(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .parameter "key"
    .parameter "value"

    .prologue
    .line 83
    const/4 v0, 0x0

    .line 85
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_1
    const-string v2, "Key = ?"

    .line 86
    .local v2, selection:Ljava/lang/String;
    const/4 v5, 0x1

    new-array v3, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v3, v5

    .line 88
    .local v3, selectionArgs:[Ljava/lang/String;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 89
    .local v4, values:Landroid/content/ContentValues;
    const-string v5, "Key"

    invoke-virtual {v4, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v5, "Value"

    invoke-virtual {v4, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0, p1}, Lcom/sec/dsm/phone/DSMRepository;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2f

    .line 92
    iget-object v5, p0, Lcom/sec/dsm/phone/DSMRepository;->mcontext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/sec/dsm/phone/DSMRepository;->URI:Landroid/net/Uri;

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_45
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_29} :catch_3b

    .line 100
    :goto_29
    if-eqz v0, :cond_2e

    .line 101
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 104
    .end local v2           #selection:Ljava/lang/String;
    .end local v3           #selectionArgs:[Ljava/lang/String;
    .end local v4           #values:Landroid/content/ContentValues;
    :cond_2e
    :goto_2e
    return-void

    .line 94
    .restart local v2       #selection:Ljava/lang/String;
    .restart local v3       #selectionArgs:[Ljava/lang/String;
    .restart local v4       #values:Landroid/content/ContentValues;
    :cond_2f
    :try_start_2f
    iget-object v5, p0, Lcom/sec/dsm/phone/DSMRepository;->mcontext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/sec/dsm/phone/DSMRepository;->URI:Landroid/net/Uri;

    invoke-virtual {v5, v6, v4, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3a
    .catchall {:try_start_2f .. :try_end_3a} :catchall_45
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_3a} :catch_3b

    goto :goto_29

    .line 97
    .end local v2           #selection:Ljava/lang/String;
    .end local v3           #selectionArgs:[Ljava/lang/String;
    .end local v4           #values:Landroid/content/ContentValues;
    :catch_3b
    move-exception v1

    .line 98
    .local v1, e:Ljava/lang/Exception;
    :try_start_3c
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_45

    .line 100
    if-eqz v0, :cond_2e

    .line 101
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_2e

    .line 100
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_45
    move-exception v5

    if-eqz v0, :cond_4b

    .line 101
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4b
    throw v5
.end method

.method protected remove(Ljava/lang/String;)V
    .registers 7
    .parameter "key"

    .prologue
    .line 108
    :try_start_0
    const-string v2, "Key = ?"

    .line 109
    .local v2, where:Ljava/lang/String;
    const/4 v3, 0x1

    new-array v1, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v1, v3

    .line 110
    .local v1, selectionArgs:[Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/dsm/phone/DSMRepository;->mcontext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/sec/dsm/phone/DSMRepository;->URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v2, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    .line 114
    .end local v1           #selectionArgs:[Ljava/lang/String;
    .end local v2           #where:Ljava/lang/String;
    :goto_13
    return-void

    .line 111
    :catch_14
    move-exception v0

    .line 112
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_13
.end method
