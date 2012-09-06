.class public Lcom/google/android/apps/reader/provider/ReaderContract$Items;
.super Ljava/lang/Object;
.source "ReaderContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Lcom/google/android/apps/reader/provider/ReaderContract$FriendsColumns;
.implements Lcom/google/android/apps/reader/provider/ReaderContract$ItemsColumns;
.implements Lcom/google/android/apps/reader/provider/ReaderContract$SyncColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/reader/provider/ReaderContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Items"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = null

.field public static final CONTENT_TYPE:Ljava/lang/String; = null

.field public static final HTML_CHARSET:Ljava/lang/String; = "UTF-8"

.field public static final HTML_MARKER_END:Ljava/lang/String; = "<!--[/HTML]-->"

.field public static final HTML_MARKER_START:Ljava/lang/String; = "<!--[HTML]-->"

.field public static final RANKING_AUTO:Ljava/lang/String; = "auto"

.field public static final RANKING_DATE:Ljava/lang/String; = "date"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RANKING_HYBRID:Ljava/lang/String; = "hybrid"

.field public static final RANKING_MAGIC:Ljava/lang/String; = "magic"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RANKING_NEWEST_FIRST:Ljava/lang/String; = "newest"

.field public static final RANKING_OLDEST_FIRST:Ljava/lang/String; = "oldest"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1714
    const-string v0, "item"

    invoke-static {v0}, Lcom/google/android/apps/reader/provider/ReaderContract;->contentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/reader/provider/ReaderContract$Items;->CONTENT_TYPE:Ljava/lang/String;

    .line 1716
    const-string v0, "item"

    invoke-static {v0}, Lcom/google/android/apps/reader/provider/ReaderContract;->contentItemType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/reader/provider/ReaderContract$Items;->CONTENT_ITEM_TYPE:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 2039
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2040
    return-void
.end method

.method public static getAnnotation(Landroid/net/Uri;)Ljava/lang/String;
    .registers 2
    .parameter "uri"

    .prologue
    .line 2011
    const-string v0, "annotation"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getExcludeTarget(Landroid/net/Uri;)Ljava/lang/String;
    .registers 2
    .parameter "uri"

    .prologue
    .line 1988
    const-string v0, "xt"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getHtmlAsString(Landroid/content/ContentResolver;Lcom/google/android/accounts/Account;J)Ljava/lang/String;
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, -0x1

    .line 1823
    invoke-static {p1, p2, p3}, Lcom/google/android/apps/reader/provider/ReaderContract$Items;->htmlUri(Lcom/google/android/accounts/Account;J)Landroid/net/Uri;

    move-result-object v0

    .line 1825
    :try_start_5
    const-string v1, "r"

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 1826
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v1

    .line 1827
    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-nez v3, :cond_17

    .line 1828
    const-wide/16 v1, 0x2000

    .line 1830
    :cond_17
    new-instance v3, Ljava/lang/StringBuilder;

    long-to-int v1, v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1831
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v0

    .line 1832
    new-instance v1, Ljava/io/InputStreamReader;

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_28} :catch_63

    .line 1834
    const/16 v0, 0x400

    :try_start_2a
    new-array v0, v0, [C

    .line 1835
    invoke-virtual {v1, v0}, Ljava/io/InputStreamReader;->read([C)I

    move-result v2

    :goto_30
    if-eq v2, v5, :cond_3b

    .line 1836
    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1835
    invoke-virtual {v1, v0}, Ljava/io/InputStreamReader;->read([C)I
    :try_end_39
    .catchall {:try_start_2a .. :try_end_39} :catchall_5e

    move-result v2

    goto :goto_30

    .line 1839
    :cond_3b
    :try_start_3b
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V

    .line 1841
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1842
    const-string v1, "<!--[HTML]-->"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 1843
    const-string v2, "<!--[/HTML]-->"

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 1844
    if-eq v1, v5, :cond_5d

    if-eq v2, v5, :cond_5d

    .line 1845
    const-string v3, "<!--[HTML]-->"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v1, v3

    .line 1846
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1851
    :cond_5d
    :goto_5d
    return-object v0

    .line 1839
    :catchall_5e
    move-exception v0

    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V

    throw v0
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_63} :catch_63

    .line 1851
    :catch_63
    move-exception v0

    const/4 v0, 0x0

    goto :goto_5d
.end method

.method public static getQuery(Landroid/net/Uri;)Ljava/lang/String;
    .registers 2
    .parameter "uri"

    .prologue
    .line 2003
    const-string v0, "q"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRanking(Landroid/net/Uri;)Ljava/lang/String;
    .registers 2
    .parameter "uri"

    .prologue
    .line 1996
    const-string v0, "r"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getShare(Landroid/net/Uri;)Z
    .registers 3
    .parameter "uri"

    .prologue
    .line 2027
    const-string v1, "share"

    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2028
    .local v0, share:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static getSnippet(Landroid/net/Uri;)Ljava/lang/String;
    .registers 2
    .parameter "uri"

    .prologue
    .line 2019
    const-string v0, "snippet"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStreamId(Landroid/net/Uri;)Ljava/lang/String;
    .registers 2
    .parameter "uri"

    .prologue
    .line 1980
    const-string v0, "stream_id"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTags(Landroid/net/Uri;)Ljava/util/List;
    .registers 2
    .parameter "uri"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2036
    const-string v0, "tag"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static htmlUri(Lcom/google/android/accounts/Account;J)Landroid/net/Uri;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 1806
    if-nez p0, :cond_a

    .line 1807
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Account is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1809
    :cond_a
    sget-object v0, Lcom/google/android/apps/reader/provider/ReaderContract;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1810
    const-string v1, "item_html"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1811
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1812
    const-string v1, "account_name"

    iget-object v2, p0, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1813
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static insertUri(Lcom/google/android/accounts/Account;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;)Landroid/net/Uri;
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/accounts/Account;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/net/Uri;"
        }
    .end annotation

    .prologue
    .line 1866
    if-nez p0, :cond_a

    .line 1867
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Account is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1869
    :cond_a
    sget-object v0, Lcom/google/android/apps/reader/provider/ReaderContract;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1870
    const-string v1, "items"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1871
    const-string v1, "account_name"

    iget-object v2, p0, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1872
    if-eqz p1, :cond_23

    .line 1873
    const-string v1, "snippet"

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1875
    :cond_23
    if-eqz p2, :cond_2a

    .line 1876
    const-string v1, "annotation"

    invoke-virtual {v0, v1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1878
    :cond_2a
    const-string v1, "share"

    invoke-static {p3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1879
    if-eqz p4, :cond_4b

    .line 1880
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_39
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 1881
    const-string v2, "tag"

    invoke-virtual {v0, v2, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_39

    .line 1884
    :cond_4b
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static itemUri(Lcom/google/android/accounts/Account;J)Landroid/net/Uri;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 1792
    if-nez p0, :cond_a

    .line 1793
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Account is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1795
    :cond_a
    sget-object v0, Lcom/google/android/apps/reader/provider/ReaderContract;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1796
    const-string v1, "items"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1797
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1798
    const-string v1, "account_name"

    iget-object v2, p0, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1799
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static markAllAsRead(Landroid/content/AsyncQueryHandler;ILjava/lang/Object;Landroid/net/Uri;)V
    .registers 10
    .parameter "handler"
    .parameter "token"
    .parameter "cookie"
    .parameter "uri"

    .prologue
    .line 1912
    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/reader/provider/ReaderContract$Items;->markAllAsRead(Landroid/content/AsyncQueryHandler;ILjava/lang/Object;Landroid/net/Uri;J)V

    .line 1913
    return-void
.end method

.method public static markAllAsRead(Landroid/content/AsyncQueryHandler;ILjava/lang/Object;Landroid/net/Uri;J)V
    .registers 13
    .parameter "handler"
    .parameter "token"
    .parameter "cookie"
    .parameter "uri"
    .parameter "offset"

    .prologue
    const-wide/16 v2, 0x0

    .line 1897
    cmp-long v0, p4, v2

    if-lez v0, :cond_e

    .line 1898
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Positive offsets are not allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1900
    :cond_e
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1901
    .local v4, values:Landroid/content/ContentValues;
    const-string v0, "read"

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1902
    cmp-long v0, p4, v2

    if-eqz v0, :cond_3b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "crawl_time < "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    .line 1903
    .local v5, selection:Ljava/lang/String;
    :goto_32
    const/4 v6, 0x0

    .local v6, selectionArgs:[Ljava/lang/String;
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 1904
    invoke-virtual/range {v0 .. v6}, Landroid/content/AsyncQueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1905
    return-void

    .line 1902
    .end local v5           #selection:Ljava/lang/String;
    .end local v6           #selectionArgs:[Ljava/lang/String;
    :cond_3b
    const/4 v0, 0x0

    move-object v5, v0

    goto :goto_32
.end method

.method public static searchUri(Lcom/google/android/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1775
    if-nez p0, :cond_a

    .line 1776
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Account is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1778
    :cond_a
    if-nez p1, :cond_14

    .line 1779
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Query is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1781
    :cond_14
    sget-object v0, Lcom/google/android/apps/reader/provider/ReaderContract;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1782
    const-string v1, "items"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1783
    const-string v1, "account_name"

    iget-object v2, p0, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1784
    const-string v1, "q"

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1785
    if-eqz p2, :cond_32

    .line 1786
    const-string v1, "stream_id"

    invoke-virtual {v0, v1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1788
    :cond_32
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static setAccount(Landroid/net/Uri;Lcom/google/android/accounts/Account;)Landroid/net/Uri;
    .registers 7
    .parameter "uri"
    .parameter "account"

    .prologue
    .line 1963
    invoke-static {p0}, Lcom/google/android/apps/reader/provider/ReaderContract$Items;->getStreamId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 1964
    .local v2, streamId:Ljava/lang/String;
    const-string v3, "user/-/state/com.google/read"

    invoke-static {p0}, Lcom/google/android/apps/reader/provider/ReaderContract$Items;->getExcludeTarget(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1965
    .local v0, excludeRead:Z
    invoke-static {p0}, Lcom/google/android/apps/reader/provider/ReaderContract$Items;->getRanking(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 1966
    .local v1, ranking:Ljava/lang/String;
    if-nez v2, :cond_1c

    .line 1967
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Stream ID not set"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1969
    :cond_1c
    if-nez v1, :cond_26

    .line 1970
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Ranking not set"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1972
    :cond_26
    invoke-static {p1, v2, v0, v1}, Lcom/google/android/apps/reader/provider/ReaderContract$Items;->streamUri(Lcom/google/android/accounts/Account;Ljava/lang/String;ZLjava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    return-object v3
.end method

.method public static setExcludeRead(Landroid/net/Uri;Z)Landroid/net/Uri;
    .registers 6
    .parameter "uri"
    .parameter "excludeRead"

    .prologue
    .line 1925
    invoke-static {p0}, Lcom/google/android/apps/reader/provider/ReaderContract$Accounts;->getAccount(Landroid/net/Uri;)Lcom/google/android/accounts/Account;

    move-result-object v0

    .line 1926
    .local v0, account:Lcom/google/android/accounts/Account;
    invoke-static {p0}, Lcom/google/android/apps/reader/provider/ReaderContract$Items;->getStreamId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 1927
    .local v2, streamId:Ljava/lang/String;
    if-nez v2, :cond_10

    .line 1928
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 1930
    :cond_10
    invoke-static {p0}, Lcom/google/android/apps/reader/provider/ReaderContract$Items;->getRanking(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 1931
    .local v1, ranking:Ljava/lang/String;
    invoke-static {v0, v2, p1, v1}, Lcom/google/android/apps/reader/provider/ReaderContract$Items;->streamUri(Lcom/google/android/accounts/Account;Ljava/lang/String;ZLjava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    return-object v3
.end method

.method public static setRanking(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .registers 7
    .parameter "uri"
    .parameter "ranking"

    .prologue
    .line 1945
    invoke-static {p0}, Lcom/google/android/apps/reader/provider/ReaderContract$Accounts;->getAccount(Landroid/net/Uri;)Lcom/google/android/accounts/Account;

    move-result-object v0

    .line 1946
    .local v0, account:Lcom/google/android/accounts/Account;
    invoke-static {p0}, Lcom/google/android/apps/reader/provider/ReaderContract$Items;->getStreamId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 1947
    .local v2, streamId:Ljava/lang/String;
    if-nez v2, :cond_12

    .line 1948
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Stream ID not set"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1950
    :cond_12
    const-string v3, "user/-/state/com.google/read"

    invoke-static {p0}, Lcom/google/android/apps/reader/provider/ReaderContract$Items;->getExcludeTarget(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1951
    .local v1, excludeRead:Z
    invoke-static {v0, v2, v1, p1}, Lcom/google/android/apps/reader/provider/ReaderContract$Items;->streamUri(Lcom/google/android/accounts/Account;Ljava/lang/String;ZLjava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    return-object v3
.end method

.method public static streamUri(Lcom/google/android/accounts/Account;Ljava/lang/String;ZLjava/lang/String;)Landroid/net/Uri;
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1745
    if-nez p0, :cond_a

    .line 1746
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Account is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1748
    :cond_a
    if-nez p1, :cond_14

    .line 1749
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Stream ID is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1751
    :cond_14
    if-nez p3, :cond_1e

    .line 1752
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Ranking is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1754
    :cond_1e
    sget-object v0, Lcom/google/android/apps/reader/provider/ReaderContract;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1755
    const-string v1, "items"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1756
    const-string v1, "account_name"

    iget-object v2, p0, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1757
    const-string v1, "stream_id"

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1758
    if-eqz p2, :cond_3e

    .line 1759
    const-string v1, "xt"

    const-string v2, "user/-/state/com.google/read"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1761
    :cond_3e
    const-string v1, "r"

    invoke-virtual {v0, v1, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1762
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
