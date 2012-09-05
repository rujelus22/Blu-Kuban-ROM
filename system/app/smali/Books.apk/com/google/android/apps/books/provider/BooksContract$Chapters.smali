.class public final Lcom/google/android/apps/books/provider/BooksContract$Chapters;
.super Ljava/lang/Object;
.source "BooksContract.java"

# interfaces
.implements Lcom/google/android/apps/books/provider/BooksContract$ChapterColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/provider/BooksContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Chapters"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 2067
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2068
    return-void
.end method

.method public static buildChapterDirUri(Landroid/accounts/Account;Ljava/lang/String;)Landroid/net/Uri;
    .registers 3
    .parameter "account"
    .parameter "volumeId"

    .prologue
    .line 2090
    const-string v0, "Missing account"

    invoke-static {p0, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2091
    iget-object v0, p0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/apps/books/provider/BooksContract$Chapters;->buildChapterDirUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static buildChapterDirUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .registers 4
    .parameter "accountName"
    .parameter "volumeId"

    .prologue
    .line 2078
    invoke-static {p0, p1}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->buildVolumeUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "chapters"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static buildChapterUri(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .registers 4
    .parameter "account"
    .parameter "volumeId"
    .parameter "chapterId"

    .prologue
    .line 2115
    const-string v0, "Missing account"

    invoke-static {p0, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2116
    iget-object v0, p0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/google/android/apps/books/provider/BooksContract$Chapters;->buildChapterUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static buildChapterUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .registers 4
    .parameter "accountName"
    .parameter "volumeId"
    .parameter "chapterId"

    .prologue
    .line 2102
    const-string v0, "Valid chapter ID required"

    invoke-static {p2, v0}, Lcom/google/android/apps/books/util/BooksPreconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 2103
    invoke-static {p0, p1}, Lcom/google/android/apps/books/provider/BooksContract$Chapters;->buildChapterDirUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

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
    .line 2120
    invoke-static {}, Lcom/google/android/apps/books/provider/BooksContract;->access$100()Landroid/content/UriMatcher;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 2121
    .local v0, match:I
    const/16 v1, 0xcd

    if-eq v0, v1, :cond_10

    const/16 v1, 0xce

    if-ne v0, v1, :cond_2c

    :cond_10
    const/4 v1, 0x1

    :goto_11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not a chapters Uri, match="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 2123
    return-void

    .line 2121
    :cond_2c
    const/4 v1, 0x0

    goto :goto_11
.end method

.method public static getAccount(Landroid/net/Uri;)Landroid/accounts/Account;
    .registers 4
    .parameter "uri"

    .prologue
    .line 2132
    new-instance v0, Landroid/accounts/Account;

    invoke-static {p0}, Lcom/google/android/apps/books/provider/BooksContract$Chapters;->getAccountName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.google"

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getAccountName(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3
    .parameter "uri"

    .prologue
    .line 2126
    invoke-static {p0}, Lcom/google/android/apps/books/provider/BooksContract$Chapters;->checkUri(Landroid/net/Uri;)V

    .line 2127
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 2128
    .local v0, paths:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method public static getChapterId(Landroid/net/Uri;)Ljava/lang/String;
    .registers 6
    .parameter "uri"

    .prologue
    .line 2149
    invoke-static {}, Lcom/google/android/apps/books/provider/BooksContract;->access$100()Landroid/content/UriMatcher;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 2150
    .local v0, match:I
    const/16 v2, 0xce

    if-ne v0, v2, :cond_33

    const/4 v2, 0x1

    :goto_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not a chapter Uri, match="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 2151
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    .line 2152
    .local v1, paths:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x5

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    return-object v2

    .line 2150
    .end local v1           #paths:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_33
    const/4 v2, 0x0

    goto :goto_d
.end method

.method public static getVolumeId(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3
    .parameter "uri"

    .prologue
    .line 2143
    invoke-static {p0}, Lcom/google/android/apps/books/provider/BooksContract$Chapters;->checkUri(Landroid/net/Uri;)V

    .line 2144
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 2145
    .local v0, paths:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method
