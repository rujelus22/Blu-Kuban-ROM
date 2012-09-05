.class public final Lcom/google/android/apps/books/provider/BooksContract$Segments;
.super Ljava/lang/Object;
.source "BooksContract.java"

# interfaces
.implements Lcom/google/android/apps/books/provider/BooksContract$SegmentColumns;
.implements Lcom/google/android/apps/books/provider/BooksContract$SessionKeyJoinColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/provider/BooksContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Segments"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 1908
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1909
    return-void
.end method

.method public static buildSectionContentUri(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .registers 4
    .parameter "account"
    .parameter "volumeId"
    .parameter "sectionId"

    .prologue
    .line 1931
    const-string v0, "Missing account"

    invoke-static {p0, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1932
    iget-object v0, p0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/google/android/apps/books/provider/BooksContract$Segments;->buildSectionContentUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static buildSectionContentUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .registers 5
    .parameter "accountName"
    .parameter "volumeId"
    .parameter "sectionId"

    .prologue
    .line 1919
    const-string v0, "Valid account name required"

    invoke-static {p0, v0}, Lcom/google/android/apps/books/util/BooksPreconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 1920
    invoke-static {p0, p1, p2}, Lcom/google/android/apps/books/provider/BooksContract$Segments;->buildSectionUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static buildSectionDirUri(Landroid/accounts/Account;Ljava/lang/String;)Landroid/net/Uri;
    .registers 3
    .parameter "account"
    .parameter "volumeId"

    .prologue
    .line 1947
    const-string v0, "Missing account"

    invoke-static {p0, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1948
    iget-object v0, p0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/apps/books/provider/BooksContract$Segments;->buildSectionDirUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static buildSectionDirUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .registers 4
    .parameter "accountName"
    .parameter "volumeId"

    .prologue
    .line 1939
    invoke-static {p0, p1}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->buildVolumeUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "segments"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static buildSectionUri(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .registers 4
    .parameter "account"
    .parameter "volumeId"
    .parameter "sectionId"

    .prologue
    .line 1974
    const-string v0, "Missing account"

    invoke-static {p0, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1975
    iget-object v0, p0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/google/android/apps/books/provider/BooksContract$Segments;->buildSectionUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static buildSectionUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .registers 4
    .parameter "accountName"
    .parameter "volumeId"
    .parameter "sectionId"

    .prologue
    .line 1960
    const-string v0, "Valid section required"

    invoke-static {p2, v0}, Lcom/google/android/apps/books/util/BooksPreconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 1961
    invoke-static {p0, p1}, Lcom/google/android/apps/books/provider/BooksContract$Segments;->buildSectionDirUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static checkUri(Landroid/net/Uri;)V
    .registers 5
    .parameter "uri"

    .prologue
    .line 1979
    invoke-static {}, Lcom/google/android/apps/books/provider/BooksContract;->access$100()Landroid/content/UriMatcher;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 1980
    .local v0, match:I
    const/16 v1, 0xc8

    if-eq v0, v1, :cond_14

    const/16 v1, 0xc9

    if-eq v0, v1, :cond_14

    const/16 v1, 0xca

    if-ne v0, v1, :cond_30

    :cond_14
    const/4 v1, 0x1

    :goto_15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not a sections Uri, match="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1982
    return-void

    .line 1980
    :cond_30
    const/4 v1, 0x0

    goto :goto_15
.end method

.method public static getAccount(Landroid/net/Uri;)Landroid/accounts/Account;
    .registers 4
    .parameter "uri"

    .prologue
    .line 1998
    new-instance v0, Landroid/accounts/Account;

    invoke-static {p0}, Lcom/google/android/apps/books/provider/BooksContract$Segments;->getAccountName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.google"

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getAccountName(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3
    .parameter "uri"

    .prologue
    .line 1992
    invoke-static {p0}, Lcom/google/android/apps/books/provider/BooksContract$Segments;->checkUri(Landroid/net/Uri;)V

    .line 1993
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 1994
    .local v0, paths:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method public static getSectionId(Landroid/net/Uri;)Ljava/lang/String;
    .registers 6
    .parameter "uri"

    .prologue
    .line 2015
    invoke-static {}, Lcom/google/android/apps/books/provider/BooksContract;->access$100()Landroid/content/UriMatcher;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 2016
    .local v0, match:I
    const/16 v2, 0xc9

    if-eq v0, v2, :cond_10

    const/16 v2, 0xca

    if-ne v0, v2, :cond_37

    :cond_10
    const/4 v2, 0x1

    :goto_11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not a section Uri, match="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 2018
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    .line 2019
    .local v1, paths:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x5

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    return-object v2

    .line 2016
    .end local v1           #paths:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_37
    const/4 v2, 0x0

    goto :goto_11
.end method

.method public static getVolumeId(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3
    .parameter "uri"

    .prologue
    .line 2009
    invoke-static {p0}, Lcom/google/android/apps/books/provider/BooksContract$Segments;->checkUri(Landroid/net/Uri;)V

    .line 2010
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 2011
    .local v0, paths:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method
