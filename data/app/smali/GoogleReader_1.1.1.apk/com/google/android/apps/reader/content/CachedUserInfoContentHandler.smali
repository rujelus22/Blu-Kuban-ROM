.class Lcom/google/android/apps/reader/content/CachedUserInfoContentHandler;
.super Lcom/google/android/apps/reader/content/CachedContentHandler;
.source "CachedUserInfoContentHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CachedUserInfoContentHandler"


# instance fields
.field private final mExtras:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(JLjava/net/ContentHandler;Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Landroid/os/Bundle;)V
    .registers 9
    .parameter "maxAge"
    .parameter "handler"
    .parameter "db"
    .parameter "account"
    .parameter "extras"

    .prologue
    .line 41
    invoke-direct/range {p0 .. p6}, Lcom/google/android/apps/reader/content/CachedContentHandler;-><init>(JLjava/net/ContentHandler;Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Landroid/os/Bundle;)V

    .line 42
    if-nez p6, :cond_d

    .line 43
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Extras bundle is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_d
    iput-object p6, p0, Lcom/google/android/apps/reader/content/CachedUserInfoContentHandler;->mExtras:Landroid/os/Bundle;

    .line 46
    return-void
.end method

.method private queryUserId()Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 66
    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "user_id"

    aput-object v0, v2, v1

    .line 67
    const-string v3, "account_name = ?"

    .line 68
    new-array v4, v4, [Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/apps/reader/content/CachedUserInfoContentHandler;->mAccount:Lcom/google/android/accounts/Account;

    iget-object v0, v0, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    aput-object v0, v4, v1

    .line 69
    iget-object v0, p0, Lcom/google/android/apps/reader/content/CachedUserInfoContentHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "user_info"

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 72
    :try_start_1d
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 73
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_27
    .catchall {:try_start_1d .. :try_end_27} :catchall_39

    move-result-object v1

    .line 79
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v1

    :goto_2c
    return-object v0

    .line 75
    :cond_2d
    :try_start_2d
    const-string v1, "CachedUserInfoContentHandler"

    const-string v2, "User ID not found"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_39

    .line 79
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v5

    goto :goto_2c

    :catchall_39
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
.end method


# virtual methods
.method protected getLocalContent(Ljava/net/URLConnection;)Ljava/lang/Object;
    .registers 5
    .parameter "connection"

    .prologue
    .line 50
    iget-object v1, p0, Lcom/google/android/apps/reader/content/CachedUserInfoContentHandler;->mExtras:Landroid/os/Bundle;

    const-string v2, "com.google.reader.cursor.extra.USER_ID"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 59
    :cond_a
    :goto_a
    invoke-super {p0, p1}, Lcom/google/android/apps/reader/content/CachedContentHandler;->getLocalContent(Ljava/net/URLConnection;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 54
    :cond_f
    invoke-direct {p0}, Lcom/google/android/apps/reader/content/CachedUserInfoContentHandler;->queryUserId()Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, userId:Ljava/lang/String;
    if-eqz v0, :cond_a

    .line 56
    iget-object v1, p0, Lcom/google/android/apps/reader/content/CachedUserInfoContentHandler;->mExtras:Landroid/os/Bundle;

    const-string v2, "com.google.reader.cursor.extra.USER_ID"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a
.end method
