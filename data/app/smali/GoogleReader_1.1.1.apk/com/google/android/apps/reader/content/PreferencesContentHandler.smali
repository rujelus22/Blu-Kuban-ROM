.class Lcom/google/android/apps/reader/content/PreferencesContentHandler;
.super Ljava/net/ContentHandler;
.source "PreferencesContentHandler.java"


# instance fields
.field private final mAccount:Lcom/google/android/accounts/Account;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/accounts/Account;)V
    .registers 5
    .parameter "context"
    .parameter "account"

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/net/ContentHandler;-><init>()V

    .line 52
    if-nez p1, :cond_d

    .line 53
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Context is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_d
    if-nez p2, :cond_17

    .line 56
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Account is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_17
    iput-object p1, p0, Lcom/google/android/apps/reader/content/PreferencesContentHandler;->mContext:Landroid/content/Context;

    .line 59
    iput-object p2, p0, Lcom/google/android/apps/reader/content/PreferencesContentHandler;->mAccount:Lcom/google/android/accounts/Account;

    .line 60
    return-void
.end method

.method public static getSharedPreferences(Landroid/content/Context;Lcom/google/android/accounts/Account;)Landroid/content/SharedPreferences;
    .registers 7
    .parameter "context"
    .parameter "account"

    .prologue
    const/4 v4, 0x0

    .line 41
    iget-object v2, p1, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 42
    .local v0, accountKey:Ljava/lang/Integer;
    const-string v2, "account-%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 44
    .local v1, name:Ljava/lang/String;
    invoke-virtual {p0, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public getContent(Ljava/net/URLConnection;)Ljava/lang/Object;
    .registers 9
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-static {p1}, Lcom/google/android/feeds/ContentHandlerUtils;->getUncompressedInputStream(Ljava/net/URLConnection;)Ljava/io/InputStream;

    move-result-object v0

    .line 65
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$PrefsContent;->parseFrom(Ljava/io/InputStream;)Lcom/google/feedreader/extrpc/Client$PrefsContent;

    move-result-object v0

    .line 66
    iget-object v1, p0, Lcom/google/android/apps/reader/content/PreferencesContentHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/apps/reader/content/PreferencesContentHandler;->mAccount:Lcom/google/android/accounts/Account;

    invoke-static {v1, v2}, Lcom/google/android/apps/reader/content/PreferencesContentHandler;->getSharedPreferences(Landroid/content/Context;Lcom/google/android/accounts/Account;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 67
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 68
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$PrefsContent;->getPrefsList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1c
    :goto_1c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/feedreader/extrpc/Client$PrefPair;

    .line 69
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$PrefPair;->getId()Ljava/lang/String;

    move-result-object v4

    .line 70
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$PrefPair;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 71
    const/4 v6, 0x0

    invoke-interface {v1, v4, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1c

    .line 72
    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1c

    .line 77
    :cond_3f
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 78
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$PrefsContent;->getPrefsCount()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/feeds/FeedLoader;->documentInfo(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
