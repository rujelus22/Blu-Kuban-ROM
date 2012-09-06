.class public Lcom/google/android/apps/reader/content/UserInfoContentHandler;
.super Ljava/net/ContentHandler;
.source "UserInfoContentHandler.java"


# instance fields
.field private final mAccount:Lcom/google/android/accounts/Account;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private final mExtras:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lcom/google/android/accounts/Account;Landroid/content/ContentResolver;Landroid/database/sqlite/SQLiteDatabase;Landroid/os/Bundle;)V
    .registers 7
    .parameter "account"
    .parameter "contentResolver"
    .parameter "database"
    .parameter "extras"

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/net/ContentHandler;-><init>()V

    .line 53
    if-nez p1, :cond_d

    .line 54
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Account is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_d
    if-nez p2, :cond_17

    .line 57
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "ContentResolver is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_17
    if-nez p3, :cond_21

    .line 60
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Database is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_21
    if-nez p4, :cond_2b

    .line 63
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Extras are null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_2b
    iput-object p1, p0, Lcom/google/android/apps/reader/content/UserInfoContentHandler;->mAccount:Lcom/google/android/accounts/Account;

    .line 66
    iput-object p2, p0, Lcom/google/android/apps/reader/content/UserInfoContentHandler;->mContentResolver:Landroid/content/ContentResolver;

    .line 67
    iput-object p3, p0, Lcom/google/android/apps/reader/content/UserInfoContentHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 68
    iput-object p4, p0, Lcom/google/android/apps/reader/content/UserInfoContentHandler;->mExtras:Landroid/os/Bundle;

    .line 69
    return-void
.end method

.method private deleteUserInfo()V
    .registers 5

    .prologue
    .line 72
    const-string v0, "account_name = ?"

    .line 73
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/apps/reader/content/UserInfoContentHandler;->mAccount:Lcom/google/android/accounts/Account;

    iget-object v3, v3, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 76
    iget-object v2, p0, Lcom/google/android/apps/reader/content/UserInfoContentHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "user_info"

    invoke-virtual {v2, v3, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 77
    return-void
.end method

.method private insertUserInfo(Lcom/google/feedreader/extrpc/Client$UserInfo;)V
    .registers 14
    .parameter

    .prologue
    .line 80
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 81
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$UserInfo;->getUserName()Ljava/lang/String;

    move-result-object v1

    .line 82
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$UserInfo;->getUserProfileId()Ljava/lang/String;

    move-result-object v2

    .line 83
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$UserInfo;->getUserEmail()Ljava/lang/String;

    move-result-object v3

    .line 84
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$UserInfo;->getIsBloggerUser()Z

    move-result v4

    .line 85
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$UserInfo;->getSignupTimeSec()I

    move-result v5

    int-to-long v5, v5

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    .line 88
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    int-to-long v7, v7

    .line 90
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 91
    const-string v10, "account_name"

    iget-object v11, p0, Lcom/google/android/apps/reader/content/UserInfoContentHandler;->mAccount:Lcom/google/android/accounts/Account;

    iget-object v11, v11, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v10, "_id"

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v9, v10, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 93
    const-string v7, "user_id"

    invoke-virtual {v9, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v0, "user_name"

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v0, "user_profile_id"

    invoke-virtual {v9, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v0, "user_email"

    invoke-virtual {v9, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v0, "blogger_user"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 98
    const-string v0, "signup_time"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 99
    iget-object v0, p0, Lcom/google/android/apps/reader/content/UserInfoContentHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "user_info"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v9}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 100
    return-void
.end method

.method private notifyChanged()V
    .registers 5

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/android/apps/reader/content/UserInfoContentHandler;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/google/android/apps/reader/content/UserInfoContentHandler;->mAccount:Lcom/google/android/accounts/Account;

    invoke-static {v1}, Lcom/google/android/apps/reader/provider/ReaderContract$Accounts;->notifyUri(Lcom/google/android/accounts/Account;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 108
    return-void
.end method

.method private putExtras(Lcom/google/feedreader/extrpc/Client$UserInfo;)V
    .registers 5
    .parameter "info"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/apps/reader/content/UserInfoContentHandler;->mExtras:Landroid/os/Bundle;

    const-string v1, "com.google.reader.cursor.extra.USER_ID"

    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    return-void
.end method


# virtual methods
.method public getContent(Ljava/net/URLConnection;)Ljava/lang/Object;
    .registers 6
    .parameter "connection"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    invoke-static {p1}, Lcom/google/android/feeds/ContentHandlerUtils;->getUncompressedInputStream(Ljava/net/URLConnection;)Ljava/io/InputStream;

    move-result-object v1

    .line 116
    .local v1, input:Ljava/io/InputStream;
    :try_start_4
    invoke-static {v1}, Lcom/google/feedreader/extrpc/Client$UserInfo;->parseFrom(Ljava/io/InputStream;)Lcom/google/feedreader/extrpc/Client$UserInfo;
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_2c

    move-result-object v0

    .line 118
    .local v0, info:Lcom/google/feedreader/extrpc/Client$UserInfo;
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 121
    iget-object v2, p0, Lcom/google/android/apps/reader/content/UserInfoContentHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 123
    :try_start_10
    invoke-direct {p0}, Lcom/google/android/apps/reader/content/UserInfoContentHandler;->deleteUserInfo()V

    .line 124
    invoke-direct {p0, v0}, Lcom/google/android/apps/reader/content/UserInfoContentHandler;->insertUserInfo(Lcom/google/feedreader/extrpc/Client$UserInfo;)V

    .line 125
    invoke-direct {p0, v0}, Lcom/google/android/apps/reader/content/UserInfoContentHandler;->putExtras(Lcom/google/feedreader/extrpc/Client$UserInfo;)V

    .line 126
    iget-object v2, p0, Lcom/google/android/apps/reader/content/UserInfoContentHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1e
    .catchall {:try_start_10 .. :try_end_1e} :catchall_31

    .line 128
    iget-object v2, p0, Lcom/google/android/apps/reader/content/UserInfoContentHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 130
    invoke-direct {p0}, Lcom/google/android/apps/reader/content/UserInfoContentHandler;->notifyChanged()V

    .line 132
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/google/android/feeds/FeedLoader;->documentInfo(I)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 118
    .end local v0           #info:Lcom/google/feedreader/extrpc/Client$UserInfo;
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v2

    .line 128
    .restart local v0       #info:Lcom/google/feedreader/extrpc/Client$UserInfo;
    :catchall_31
    move-exception v2

    iget-object v3, p0, Lcom/google/android/apps/reader/content/UserInfoContentHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
.end method
