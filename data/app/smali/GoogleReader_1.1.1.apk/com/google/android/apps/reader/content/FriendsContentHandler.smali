.class public Lcom/google/android/apps/reader/content/FriendsContentHandler;
.super Ljava/net/ContentHandler;
.source "FriendsContentHandler.java"


# static fields
.field private static final FLAG_HAS_PROFILE:I = 0x20

.field private static final FLAG_HAS_SHARED_ITEMS:I = 0x200

.field private static final FLAG_IS_ANONYMOUS:I = 0x100

.field private static final FLAG_IS_BLOCKED:I = 0x10

.field private static final FLAG_IS_HIDDEN:I = 0x2

.field private static final FLAG_IS_IGNORED:I = 0x40

.field private static final FLAG_IS_ME:I = 0x1

.field private static final FLAG_IS_NEW:I = 0x4

.field private static final FLAG_IS_NEW_FOLLOWER:I = 0x80

.field private static final FLAG_USES_READER:I = 0x8


# instance fields
.field private final mAccount:Lcom/google/android/accounts/Account;

.field private final mContext:Landroid/content/Context;

.field private final mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private final mValues:Landroid/content/ContentValues;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/accounts/Account;Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 5
    .parameter "context"
    .parameter "account"
    .parameter "database"

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/net/ContentHandler;-><init>()V

    .line 79
    if-nez p1, :cond_b

    .line 80
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 82
    :cond_b
    if-nez p2, :cond_13

    .line 83
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 85
    :cond_13
    if-nez p3, :cond_1b

    .line 86
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 88
    :cond_1b
    iput-object p1, p0, Lcom/google/android/apps/reader/content/FriendsContentHandler;->mContext:Landroid/content/Context;

    .line 89
    iput-object p2, p0, Lcom/google/android/apps/reader/content/FriendsContentHandler;->mAccount:Lcom/google/android/accounts/Account;

    .line 90
    iput-object p3, p0, Lcom/google/android/apps/reader/content/FriendsContentHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 91
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/reader/content/FriendsContentHandler;->mValues:Landroid/content/ContentValues;

    .line 92
    return-void
.end method

.method private clearFriends()V
    .registers 5

    .prologue
    .line 95
    const-string v0, "account_name = ?"

    .line 96
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/apps/reader/content/FriendsContentHandler;->mAccount:Lcom/google/android/accounts/Account;

    iget-object v3, v3, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 99
    iget-object v2, p0, Lcom/google/android/apps/reader/content/FriendsContentHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "friends"

    invoke-virtual {v2, v3, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 100
    return-void
.end method

.method private insertFriend(Lcom/google/feedreader/extrpc/Client$Friend;)V
    .registers 13
    .parameter

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/apps/reader/content/FriendsContentHandler;->mValues:Landroid/content/ContentValues;

    .line 104
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$Friend;->getContactId()J

    move-result-wide v1

    .line 105
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$Friend;->getStream()Ljava/lang/String;

    move-result-object v3

    .line 106
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$Friend;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    .line 107
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$Friend;->getPhotoUrl()Ljava/lang/String;

    move-result-object v5

    .line 108
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$Friend;->getFlags()I

    move-result v6

    .line 109
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    int-to-long v7, v7

    .line 110
    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 111
    const-string v9, "account_name"

    iget-object v10, p0, Lcom/google/android/apps/reader/content/FriendsContentHandler;->mAccount:Lcom/google/android/accounts/Account;

    iget-object v10, v10, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v9, "photo_url"

    invoke-virtual {v0, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v9, "_id"

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v9, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 114
    const-string v7, "contact_id"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 115
    const-string v7, "display_name"

    invoke-virtual {v0, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string v4, "stream"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v3, "is_me"

    const/4 v4, 0x1

    invoke-static {v6, v4}, Lcom/google/android/apps/reader/content/FriendsContentHandler;->isSet(II)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 118
    const-string v3, "is_hidden"

    const/4 v4, 0x2

    invoke-static {v6, v4}, Lcom/google/android/apps/reader/content/FriendsContentHandler;->isSet(II)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 119
    const-string v3, "is_new"

    const/4 v4, 0x4

    invoke-static {v6, v4}, Lcom/google/android/apps/reader/content/FriendsContentHandler;->isSet(II)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 120
    const-string v3, "uses_reader"

    const/16 v4, 0x8

    invoke-static {v6, v4}, Lcom/google/android/apps/reader/content/FriendsContentHandler;->isSet(II)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 121
    const-string v3, "is_blocked"

    const/16 v4, 0x10

    invoke-static {v6, v4}, Lcom/google/android/apps/reader/content/FriendsContentHandler;->isSet(II)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 122
    const-string v3, "has_profile"

    const/16 v4, 0x20

    invoke-static {v6, v4}, Lcom/google/android/apps/reader/content/FriendsContentHandler;->isSet(II)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 123
    const-string v3, "is_ignored"

    const/16 v4, 0x40

    invoke-static {v6, v4}, Lcom/google/android/apps/reader/content/FriendsContentHandler;->isSet(II)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 124
    const-string v3, "is_new_follower"

    const/16 v4, 0x80

    invoke-static {v6, v4}, Lcom/google/android/apps/reader/content/FriendsContentHandler;->isSet(II)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 125
    const-string v3, "is_anonymous"

    const/16 v4, 0x100

    invoke-static {v6, v4}, Lcom/google/android/apps/reader/content/FriendsContentHandler;->isSet(II)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 126
    const-string v3, "has_shared_items"

    const/16 v4, 0x200

    invoke-static {v6, v4}, Lcom/google/android/apps/reader/content/FriendsContentHandler;->isSet(II)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 127
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_cc

    .line 130
    iget-object v3, p0, Lcom/google/android/apps/reader/content/FriendsContentHandler;->mAccount:Lcom/google/android/accounts/Account;

    invoke-static {v3, v1, v2}, Lcom/google/android/apps/reader/provider/ReaderContract$Friends;->photoUri(Lcom/google/android/accounts/Account;J)Landroid/net/Uri;

    move-result-object v1

    .line 131
    const-string v2, "photo_uri"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :cond_cc
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$Friend;->getEmailAddressesCount()I

    move-result v1

    if-eqz v1, :cond_dc

    .line 135
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/google/feedreader/extrpc/Client$Friend;->getEmailAddresses(I)Ljava/lang/String;

    move-result-object v1

    .line 136
    const-string v2, "email_address"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :cond_dc
    iget-object v1, p0, Lcom/google/android/apps/reader/content/FriendsContentHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "friends"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 139
    return-void
.end method

.method private static isSet(II)Ljava/lang/Boolean;
    .registers 3
    .parameter "flags"
    .parameter "flag"

    .prologue
    .line 67
    and-int v0, p0, p1

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_5
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private notifyChange()V
    .registers 3

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/android/apps/reader/content/FriendsContentHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/reader/content/FriendsContentHandler;->mAccount:Lcom/google/android/accounts/Account;

    invoke-static {v0, v1}, Lcom/google/android/apps/reader/provider/ReaderContract$Accounts;->notifyChange(Landroid/content/Context;Lcom/google/android/accounts/Account;)V

    .line 143
    return-void
.end method


# virtual methods
.method public getContent(Ljava/net/URLConnection;)Ljava/lang/Object;
    .registers 8
    .parameter "connection"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 148
    invoke-static {p1}, Lcom/google/android/feeds/ContentHandlerUtils;->getUncompressedInputStream(Ljava/net/URLConnection;)Ljava/io/InputStream;

    move-result-object v3

    .line 150
    .local v3, input:Ljava/io/InputStream;
    :try_start_4
    invoke-static {v3}, Lcom/google/feedreader/extrpc/Client$FriendsList;->parseFrom(Ljava/io/InputStream;)Lcom/google/feedreader/extrpc/Client$FriendsList;
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_32

    move-result-object v1

    .line 152
    .local v1, friends:Lcom/google/feedreader/extrpc/Client$FriendsList;
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 155
    iget-object v4, p0, Lcom/google/android/apps/reader/content/FriendsContentHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 158
    :try_start_10
    invoke-direct {p0}, Lcom/google/android/apps/reader/content/FriendsContentHandler;->clearFriends()V

    .line 159
    invoke-virtual {v1}, Lcom/google/feedreader/extrpc/Client$FriendsList;->getFriendsList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/feedreader/extrpc/Client$Friend;

    .line 160
    .local v0, friend:Lcom/google/feedreader/extrpc/Client$Friend;
    invoke-direct {p0, v0}, Lcom/google/android/apps/reader/content/FriendsContentHandler;->insertFriend(Lcom/google/feedreader/extrpc/Client$Friend;)V
    :try_end_2a
    .catchall {:try_start_10 .. :try_end_2a} :catchall_2b

    goto :goto_1b

    .line 164
    .end local v0           #friend:Lcom/google/feedreader/extrpc/Client$Friend;
    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_2b
    move-exception v4

    iget-object v5, p0, Lcom/google/android/apps/reader/content/FriendsContentHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4

    .line 152
    .end local v1           #friends:Lcom/google/feedreader/extrpc/Client$FriendsList;
    :catchall_32
    move-exception v4

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    throw v4

    .line 162
    .restart local v1       #friends:Lcom/google/feedreader/extrpc/Client$FriendsList;
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_37
    :try_start_37
    iget-object v4, p0, Lcom/google/android/apps/reader/content/FriendsContentHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3c
    .catchall {:try_start_37 .. :try_end_3c} :catchall_2b

    .line 164
    iget-object v4, p0, Lcom/google/android/apps/reader/content/FriendsContentHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 167
    invoke-direct {p0}, Lcom/google/android/apps/reader/content/FriendsContentHandler;->notifyChange()V

    .line 169
    invoke-virtual {v1}, Lcom/google/feedreader/extrpc/Client$FriendsList;->getFriendsCount()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/feeds/FeedLoader;->documentInfo(I)Ljava/lang/Object;

    move-result-object v4

    return-object v4
.end method
