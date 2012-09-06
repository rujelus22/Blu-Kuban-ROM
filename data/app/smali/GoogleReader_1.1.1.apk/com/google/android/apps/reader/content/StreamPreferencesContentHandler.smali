.class Lcom/google/android/apps/reader/content/StreamPreferencesContentHandler;
.super Ljava/net/ContentHandler;
.source "StreamPreferencesContentHandler.java"


# instance fields
.field private final mAccount:Lcom/google/android/accounts/Account;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/accounts/Account;)V
    .registers 3
    .parameter "context"
    .parameter "account"

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/net/ContentHandler;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/google/android/apps/reader/content/StreamPreferencesContentHandler;->mContext:Landroid/content/Context;

    .line 66
    iput-object p2, p0, Lcom/google/android/apps/reader/content/StreamPreferencesContentHandler;->mAccount:Lcom/google/android/accounts/Account;

    .line 67
    return-void
.end method

.method public static getSharedPreferences(Landroid/content/Context;Lcom/google/android/accounts/Account;Ljava/lang/String;)Landroid/content/SharedPreferences;
    .registers 10
    .parameter "context"
    .parameter "account"
    .parameter "streamId"

    .prologue
    const/4 v6, 0x0

    .line 42
    invoke-static {p2}, Lcom/google/android/apps/reader/provider/ReaderStream;->isRoot(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 48
    invoke-static {p2}, Lcom/google/android/apps/reader/provider/ReaderStream;->unsetUserId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 53
    :cond_b
    iget-object v3, p1, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 54
    .local v0, accountKey:Ljava/lang/Integer;
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 56
    .local v2, streamKey:Ljava/lang/Integer;
    const-string v3, "account-%d-stream-%d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v6

    const/4 v5, 0x1

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, name:Ljava/lang/String;
    invoke-virtual {p0, v1, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public getContent(Ljava/net/URLConnection;)Ljava/lang/Object;
    .registers 10
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    invoke-static {p1}, Lcom/google/android/feeds/ContentHandlerUtils;->getUncompressedInputStream(Ljava/net/URLConnection;)Ljava/io/InputStream;

    move-result-object v0

    .line 72
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;->parseFrom(Ljava/io/InputStream;)Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;

    move-result-object v1

    .line 73
    invoke-virtual {v1}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;->getStreamprefsList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;

    .line 74
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;->getStreamid()Ljava/lang/String;

    move-result-object v3

    .line 75
    iget-object v4, p0, Lcom/google/android/apps/reader/content/StreamPreferencesContentHandler;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/android/apps/reader/content/StreamPreferencesContentHandler;->mAccount:Lcom/google/android/accounts/Account;

    invoke-static {v4, v5, v3}, Lcom/google/android/apps/reader/content/StreamPreferencesContentHandler;->getSharedPreferences(Landroid/content/Context;Lcom/google/android/accounts/Account;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 76
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 77
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;->getPrefsList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_34
    :goto_34
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_57

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/feedreader/extrpc/Client$PrefPair;

    .line 78
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$PrefPair;->getId()Ljava/lang/String;

    move-result-object v6

    .line 79
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$PrefPair;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 80
    const/4 v7, 0x0

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_34

    .line 81
    invoke-interface {v4, v6, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_34

    .line 86
    :cond_57
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_10

    .line 88
    :cond_5b
    invoke-virtual {v1}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;->getStreamprefsCount()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/feeds/FeedLoader;->documentInfo(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
