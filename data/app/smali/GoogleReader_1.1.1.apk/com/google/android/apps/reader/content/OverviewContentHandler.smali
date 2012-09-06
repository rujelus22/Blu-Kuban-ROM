.class final Lcom/google/android/apps/reader/content/OverviewContentHandler;
.super Ljava/net/ContentHandler;
.source "OverviewContentHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ReaderOverview"


# instance fields
.field private final mAccount:Lcom/google/android/accounts/Account;

.field private final mContext:Landroid/content/Context;

.field private final mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private mPosition:I

.field private final mValues:Landroid/content/ContentValues;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/accounts/Account;Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 5
    .parameter "context"
    .parameter "account"
    .parameter "database"

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/net/ContentHandler;-><init>()V

    .line 64
    if-nez p1, :cond_b

    .line 65
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 67
    :cond_b
    if-nez p2, :cond_13

    .line 68
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 70
    :cond_13
    if-nez p3, :cond_1b

    .line 71
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 73
    :cond_1b
    iput-object p1, p0, Lcom/google/android/apps/reader/content/OverviewContentHandler;->mContext:Landroid/content/Context;

    .line 74
    iput-object p2, p0, Lcom/google/android/apps/reader/content/OverviewContentHandler;->mAccount:Lcom/google/android/accounts/Account;

    .line 75
    iput-object p3, p0, Lcom/google/android/apps/reader/content/OverviewContentHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 76
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/reader/content/OverviewContentHandler;->mValues:Landroid/content/ContentValues;

    .line 77
    return-void
.end method

.method private buildSummary(Ljava/util/List;)Ljava/lang/String;
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 170
    :try_start_0
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 171
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v1

    .line 172
    invoke-interface {v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 173
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_10
    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_68

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;

    .line 174
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;->hasId()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;->hasTitleText()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;->hasSummaryText()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 175
    const-string v3, ""

    const-string v4, "p"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 176
    const-string v3, ""

    const-string v4, "b"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 177
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;->getTitleText()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 178
    const-string v3, ""

    const-string v4, "b"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 179
    const-string v3, " "

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 180
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;->getSummaryText()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 181
    const-string v3, ""

    const-string v4, "p"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5d} :catch_5e

    goto :goto_10

    .line 186
    :catch_5e
    move-exception v0

    .line 187
    const-string v1, "ReaderOverview"

    const-string v2, "Unable to generate summary"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 188
    const/4 v0, 0x0

    :goto_67
    return-object v0

    .line 184
    :cond_68
    :try_start_68
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    .line 185
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_6e} :catch_5e

    move-result-object v0

    goto :goto_67
.end method

.method private clearStreams()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 126
    const-string v0, "account_name = ?"

    .line 127
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/apps/reader/content/OverviewContentHandler;->mAccount:Lcom/google/android/accounts/Account;

    iget-object v2, v2, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    aput-object v2, v1, v4

    .line 130
    iget-object v2, p0, Lcom/google/android/apps/reader/content/OverviewContentHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "overview"

    invoke-virtual {v2, v3, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 132
    iput v4, p0, Lcom/google/android/apps/reader/content/OverviewContentHandler;->mPosition:I

    .line 133
    return-void
.end method

.method private insertStream(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;)V
    .registers 6
    .parameter

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/android/apps/reader/content/OverviewContentHandler;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 138
    iget-object v0, p0, Lcom/google/android/apps/reader/content/OverviewContentHandler;->mValues:Landroid/content/ContentValues;

    const-string v1, "account_name"

    iget-object v2, p0, Lcom/google/android/apps/reader/content/OverviewContentHandler;->mAccount:Lcom/google/android/accounts/Account;

    iget-object v2, v2, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/google/android/apps/reader/content/OverviewContentHandler;->mValues:Landroid/content/ContentValues;

    const-string v1, "account_type"

    iget-object v2, p0, Lcom/google/android/apps/reader/content/OverviewContentHandler;->mAccount:Lcom/google/android/accounts/Account;

    iget-object v2, v2, Lcom/google/android/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-long v0, v0

    .line 142
    iget-object v2, p0, Lcom/google/android/apps/reader/content/OverviewContentHandler;->mValues:Landroid/content/ContentValues;

    const-string v3, "_id"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 143
    iget-object v0, p0, Lcom/google/android/apps/reader/content/OverviewContentHandler;->mValues:Landroid/content/ContentValues;

    const-string v1, "sid"

    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->hasImage()Z

    move-result v0

    if-eqz v0, :cond_59

    .line 146
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->getImage()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;

    move-result-object v0

    .line 147
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;->hasSource()Z

    move-result v1

    if-eqz v1, :cond_59

    .line 148
    iget-object v1, p0, Lcom/google/android/apps/reader/content/OverviewContentHandler;->mValues:Landroid/content/ContentValues;

    const-string v2, "image_url"

    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;->getSource()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :cond_59
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->getItemsList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/reader/content/OverviewContentHandler;->buildSummary(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 153
    if-eqz v0, :cond_6a

    .line 154
    iget-object v1, p0, Lcom/google/android/apps/reader/content/OverviewContentHandler;->mValues:Landroid/content/ContentValues;

    const-string v2, "summary"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :cond_6a
    iget-object v0, p0, Lcom/google/android/apps/reader/content/OverviewContentHandler;->mValues:Landroid/content/ContentValues;

    const-string v1, "position"

    iget v2, p0, Lcom/google/android/apps/reader/content/OverviewContentHandler;->mPosition:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/android/apps/reader/content/OverviewContentHandler;->mPosition:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 159
    iget-object v0, p0, Lcom/google/android/apps/reader/content/OverviewContentHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "overview"

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/apps/reader/content/OverviewContentHandler;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 160
    return-void
.end method

.method private notifyChange()V
    .registers 3

    .prologue
    .line 193
    iget-object v0, p0, Lcom/google/android/apps/reader/content/OverviewContentHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/reader/content/OverviewContentHandler;->mAccount:Lcom/google/android/accounts/Account;

    invoke-static {v0, v1}, Lcom/google/android/apps/reader/provider/ReaderContract$Accounts;->notifyChange(Landroid/content/Context;Lcom/google/android/accounts/Account;)V

    .line 194
    return-void
.end method


# virtual methods
.method public getContent(Ljava/net/URLConnection;)Ljava/lang/Object;
    .registers 13
    .parameter "connection"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    invoke-static {p1}, Lcom/google/android/feeds/ContentHandlerUtils;->getUncompressedInputStream(Ljava/net/URLConnection;)Ljava/io/InputStream;

    move-result-object v3

    .line 84
    .local v3, input:Ljava/io/InputStream;
    :try_start_4
    invoke-static {v3}, Lcom/google/feedreader/extrpc/Client$OverviewContent;->parseFrom(Ljava/io/InputStream;)Lcom/google/feedreader/extrpc/Client$OverviewContent;
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_32

    move-result-object v5

    .line 86
    .local v5, overview:Lcom/google/feedreader/extrpc/Client$OverviewContent;
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 89
    iget-object v9, p0, Lcom/google/android/apps/reader/content/OverviewContentHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 91
    :try_start_10
    invoke-direct {p0}, Lcom/google/android/apps/reader/content/OverviewContentHandler;->clearStreams()V

    .line 92
    invoke-virtual {v5}, Lcom/google/feedreader/extrpc/Client$OverviewContent;->getSegmentStreamsList()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    .line 93
    .local v8, stream:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;
    invoke-direct {p0, v8}, Lcom/google/android/apps/reader/content/OverviewContentHandler;->insertStream(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;)V
    :try_end_2a
    .catchall {:try_start_10 .. :try_end_2a} :catchall_2b

    goto :goto_1b

    .line 117
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v8           #stream:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;
    :catchall_2b
    move-exception v9

    iget-object v10, p0, Lcom/google/android/apps/reader/content/OverviewContentHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v9

    .line 86
    .end local v5           #overview:Lcom/google/feedreader/extrpc/Client$OverviewContent;
    :catchall_32
    move-exception v9

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    throw v9

    .line 95
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v5       #overview:Lcom/google/feedreader/extrpc/Client$OverviewContent;
    :cond_37
    :try_start_37
    invoke-virtual {v5}, Lcom/google/feedreader/extrpc/Client$OverviewContent;->hasBroadcastStream()Z

    move-result v9

    if-eqz v9, :cond_44

    .line 96
    invoke-virtual {v5}, Lcom/google/feedreader/extrpc/Client$OverviewContent;->getBroadcastStream()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    move-result-object v0

    .line 97
    .local v0, broadcastStream:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;
    invoke-direct {p0, v0}, Lcom/google/android/apps/reader/content/OverviewContentHandler;->insertStream(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;)V

    .line 99
    .end local v0           #broadcastStream:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;
    :cond_44
    invoke-virtual {v5}, Lcom/google/feedreader/extrpc/Client$OverviewContent;->hasStarredStream()Z

    move-result v9

    if-eqz v9, :cond_51

    .line 100
    invoke-virtual {v5}, Lcom/google/feedreader/extrpc/Client$OverviewContent;->getStarredStream()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    move-result-object v7

    .line 101
    .local v7, starredStream:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;
    invoke-direct {p0, v7}, Lcom/google/android/apps/reader/content/OverviewContentHandler;->insertStream(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;)V

    .line 103
    .end local v7           #starredStream:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;
    :cond_51
    invoke-virtual {v5}, Lcom/google/feedreader/extrpc/Client$OverviewContent;->hasKeptUnreadStream()Z

    move-result v9

    if-eqz v9, :cond_5e

    .line 104
    invoke-virtual {v5}, Lcom/google/feedreader/extrpc/Client$OverviewContent;->getKeptUnreadStream()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    move-result-object v4

    .line 105
    .local v4, keptUnreadStream:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;
    invoke-direct {p0, v4}, Lcom/google/android/apps/reader/content/OverviewContentHandler;->insertStream(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;)V

    .line 107
    .end local v4           #keptUnreadStream:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;
    :cond_5e
    invoke-virtual {v5}, Lcom/google/feedreader/extrpc/Client$OverviewContent;->hasReadStream()Z

    move-result v9

    if-eqz v9, :cond_6b

    .line 108
    invoke-virtual {v5}, Lcom/google/feedreader/extrpc/Client$OverviewContent;->getReadStream()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    move-result-object v6

    .line 109
    .local v6, readStream:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;
    invoke-direct {p0, v6}, Lcom/google/android/apps/reader/content/OverviewContentHandler;->insertStream(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;)V

    .line 111
    .end local v6           #readStream:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;
    :cond_6b
    invoke-virtual {v5}, Lcom/google/feedreader/extrpc/Client$OverviewContent;->hasCoolStream()Z

    move-result v9

    if-eqz v9, :cond_78

    .line 112
    invoke-virtual {v5}, Lcom/google/feedreader/extrpc/Client$OverviewContent;->getCoolStream()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    move-result-object v1

    .line 113
    .local v1, coolStream:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;
    invoke-direct {p0, v1}, Lcom/google/android/apps/reader/content/OverviewContentHandler;->insertStream(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;)V

    .line 115
    .end local v1           #coolStream:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;
    :cond_78
    iget-object v9, p0, Lcom/google/android/apps/reader/content/OverviewContentHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_7d
    .catchall {:try_start_37 .. :try_end_7d} :catchall_2b

    .line 117
    iget-object v9, p0, Lcom/google/android/apps/reader/content/OverviewContentHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 120
    invoke-direct {p0}, Lcom/google/android/apps/reader/content/OverviewContentHandler;->notifyChange()V

    .line 122
    invoke-static {}, Lcom/google/android/feeds/FeedLoader;->documentInfo()Ljava/lang/Object;

    move-result-object v9

    return-object v9
.end method
