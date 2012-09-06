.class Lcom/google/android/apps/reader/content/CachedStreamContentHandler;
.super Lcom/google/android/feeds/AbstractCachedContentHandler;
.source "CachedStreamContentHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/reader/content/CachedStreamContentHandler$RecordUsageTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CachedStream"


# instance fields
.field private final mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private final mExtras:Landroid/os/Bundle;

.field private final mItemList:Lcom/google/android/apps/reader/content/ItemList;

.field private final mRemoteContentHandler:Ljava/net/ContentHandler;

.field private final mRequery:Z

.field private final mSyncOrRefresh:Z


# direct methods
.method public constructor <init>(JLjava/net/ContentHandler;Lcom/google/android/apps/reader/content/ItemList;Landroid/database/sqlite/SQLiteDatabase;Landroid/os/Bundle;)V
    .registers 11
    .parameter "maxAge"
    .parameter "handler"
    .parameter "itemList"
    .parameter "database"
    .parameter "extras"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 65
    invoke-direct {p0, p1, p2, p6}, Lcom/google/android/feeds/AbstractCachedContentHandler;-><init>(JLandroid/os/Bundle;)V

    .line 66
    if-nez p3, :cond_d

    .line 67
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 69
    :cond_d
    if-nez p4, :cond_15

    .line 70
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 72
    :cond_15
    if-nez p5, :cond_1d

    .line 73
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 75
    :cond_1d
    if-nez p6, :cond_25

    .line 76
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 78
    :cond_25
    iput-object p3, p0, Lcom/google/android/apps/reader/content/CachedStreamContentHandler;->mRemoteContentHandler:Ljava/net/ContentHandler;

    .line 79
    iput-object p4, p0, Lcom/google/android/apps/reader/content/CachedStreamContentHandler;->mItemList:Lcom/google/android/apps/reader/content/ItemList;

    .line 80
    iput-object p5, p0, Lcom/google/android/apps/reader/content/CachedStreamContentHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 81
    iput-object p6, p0, Lcom/google/android/apps/reader/content/CachedStreamContentHandler;->mExtras:Landroid/os/Bundle;

    .line 82
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p1, v0

    if-nez v0, :cond_44

    move v0, v3

    :goto_37
    iput-boolean v0, p0, Lcom/google/android/apps/reader/content/CachedStreamContentHandler;->mRequery:Z

    .line 90
    const-wide/32 v0, 0x493e0

    cmp-long v0, p1, v0

    if-gez v0, :cond_46

    move v0, v3

    :goto_41
    iput-boolean v0, p0, Lcom/google/android/apps/reader/content/CachedStreamContentHandler;->mSyncOrRefresh:Z

    .line 91
    return-void

    :cond_44
    move v0, v2

    .line 82
    goto :goto_37

    :cond_46
    move v0, v2

    .line 90
    goto :goto_41
.end method

.method private static getUri(Ljava/net/URLConnection;)Landroid/net/Uri;
    .registers 4
    .parameter "connection"

    .prologue
    .line 46
    invoke-virtual {p0}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v1

    .line 47
    .local v1, url:Ljava/net/URL;
    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, spec:Ljava/lang/String;
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    return-object v2
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
    .line 100
    iget-boolean v2, p0, Lcom/google/android/apps/reader/content/CachedStreamContentHandler;->mRequery:Z

    if-eqz v2, :cond_9

    .line 121
    :cond_4
    :goto_4
    invoke-super {p0, p1}, Lcom/google/android/feeds/AbstractCachedContentHandler;->getContent(Ljava/net/URLConnection;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 104
    :cond_9
    iget-boolean v2, p0, Lcom/google/android/apps/reader/content/CachedStreamContentHandler;->mSyncOrRefresh:Z

    if-nez v2, :cond_4

    .line 112
    iget-object v2, p0, Lcom/google/android/apps/reader/content/CachedStreamContentHandler;->mItemList:Lcom/google/android/apps/reader/content/ItemList;

    invoke-virtual {v2}, Lcom/google/android/apps/reader/content/ItemList;->getAccount()Lcom/google/android/accounts/Account;

    move-result-object v0

    .line 113
    .local v0, account:Lcom/google/android/accounts/Account;
    iget-object v2, p0, Lcom/google/android/apps/reader/content/CachedStreamContentHandler;->mItemList:Lcom/google/android/apps/reader/content/ItemList;

    invoke-virtual {v2}, Lcom/google/android/apps/reader/content/ItemList;->getStreamId()Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, streamId:Ljava/lang/String;
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 116
    new-instance v2, Lcom/google/android/apps/reader/content/CachedStreamContentHandler$RecordUsageTask;

    iget-object v3, p0, Lcom/google/android/apps/reader/content/CachedStreamContentHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v2, v3, v0, v1}, Lcom/google/android/apps/reader/content/CachedStreamContentHandler$RecordUsageTask;-><init>(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/google/android/apps/reader/content/CachedStreamContentHandler$RecordUsageTask;->execute()V

    goto :goto_4
.end method

.method protected getLocalContent(Ljava/net/URLConnection;)Ljava/lang/Object;
    .registers 5
    .parameter "connection"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/android/apps/reader/content/CachedStreamContentHandler;->mItemList:Lcom/google/android/apps/reader/content/ItemList;

    iget-object v1, p0, Lcom/google/android/apps/reader/content/CachedStreamContentHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lcom/google/android/apps/reader/content/CachedStreamContentHandler;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/reader/content/ItemList;->getLocalContent(Landroid/database/sqlite/SQLiteDatabase;Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getRemoteContent(Ljava/net/URLConnection;)Ljava/lang/Object;
    .registers 3
    .parameter "connection"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/apps/reader/content/CachedStreamContentHandler;->mRemoteContentHandler:Ljava/net/ContentHandler;

    invoke-virtual {v0, p1}, Ljava/net/ContentHandler;->getContent(Ljava/net/URLConnection;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getTimestamp(Ljava/net/URLConnection;)J
    .registers 8
    .parameter "connection"

    .prologue
    const-wide/16 v4, -0x1

    const/4 v3, -0x1

    .line 132
    invoke-static {p1}, Lcom/google/android/apps/reader/content/CachedStreamContentHandler;->getUri(Ljava/net/URLConnection;)Landroid/net/Uri;

    move-result-object v1

    .line 133
    .local v1, uri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/google/android/apps/reader/net/ReaderUri;->isContinuation(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_f

    move-wide v2, v4

    .line 143
    :goto_e
    return-wide v2

    .line 137
    :cond_f
    invoke-static {v1, v3}, Lcom/google/android/apps/reader/net/ReaderUri;->getNumber(Landroid/net/Uri;I)I

    move-result v0

    .line 138
    .local v0, n:I
    if-eq v0, v3, :cond_25

    const/16 v2, 0x14

    if-le v0, v2, :cond_25

    iget-object v2, p0, Lcom/google/android/apps/reader/content/CachedStreamContentHandler;->mItemList:Lcom/google/android/apps/reader/content/ItemList;

    iget-object v3, p0, Lcom/google/android/apps/reader/content/CachedStreamContentHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v3}, Lcom/google/android/apps/reader/content/ItemList;->getItemCount(Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v2

    if-le v0, v2, :cond_25

    move-wide v2, v4

    .line 141
    goto :goto_e

    .line 143
    :cond_25
    iget-object v2, p0, Lcom/google/android/apps/reader/content/CachedStreamContentHandler;->mItemList:Lcom/google/android/apps/reader/content/ItemList;

    iget-object v3, p0, Lcom/google/android/apps/reader/content/CachedStreamContentHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v3}, Lcom/google/android/apps/reader/content/ItemList;->getCacheTimestamp(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v2

    goto :goto_e
.end method

.method protected setTimestamp(Ljava/net/URLConnection;J)V
    .registers 4
    .parameter "connection"
    .parameter "value"

    .prologue
    .line 155
    return-void
.end method
