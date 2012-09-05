.class public Lcom/google/android/apps/books/provider/BooksContract$Volumes;
.super Ljava/lang/Object;
.source "BooksContract.java"

# interfaces
.implements Lcom/google/android/apps/books/provider/BooksContract$VolumeColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/provider/BooksContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Volumes"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/provider/BooksContract$Volumes$TtsPermission;,
        Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;,
        Lcom/google/android/apps/books/provider/BooksContract$Volumes$Mode;,
        Lcom/google/android/apps/books/provider/BooksContract$Volumes$Viewability;,
        Lcom/google/android/apps/books/provider/BooksContract$Volumes$OpenAccess;
    }
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 1455
    sget-object v0, Lcom/google/android/apps/books/provider/BooksContract;->BASE_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "accounts"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "volumes"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 1540
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1541
    return-void
.end method

.method public static buildAccountVolumesDirUri(Landroid/accounts/Account;)Landroid/net/Uri;
    .registers 2
    .parameter "account"

    .prologue
    .line 1557
    const-string v0, "Missing account"

    invoke-static {p0, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1558
    iget-object v0, p0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->buildAccountVolumesDirUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static buildAccountVolumesDirUri(Ljava/lang/String;)Landroid/net/Uri;
    .registers 3
    .parameter "accountName"

    .prologue
    .line 1547
    const-string v0, "Valid account name required"

    invoke-static {p0, v0}, Lcom/google/android/apps/books/util/BooksPreconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 1548
    sget-object v0, Lcom/google/android/apps/books/provider/BooksContract;->BASE_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "accounts"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "volumes"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static buildCoverThumbnailUri(Landroid/accounts/Account;Ljava/lang/String;)Landroid/net/Uri;
    .registers 3
    .parameter "account"
    .parameter "volumeId"

    .prologue
    .line 1610
    const-string v0, "Missing account"

    invoke-static {p0, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1611
    iget-object v0, p0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->buildCoverThumbnailUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static buildCoverThumbnailUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .registers 4
    .parameter "accountName"
    .parameter "volumeId"

    .prologue
    .line 1600
    const-string v0, "Valid account name required"

    invoke-static {p0, v0}, Lcom/google/android/apps/books/util/BooksPreconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 1601
    invoke-static {p0, p1}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->buildVolumeUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "cover_thumbnail"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static buildCoverThumbnailUriSql(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "accountNameKey"
    .parameter "volumeIdKey"

    .prologue
    .line 1619
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/books/provider/BooksContract;->BASE_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "accounts"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/\' || "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " || \'/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "volumes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/\' || "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " || \'/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "cover_thumbnail"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static buildCoverUri(Landroid/accounts/Account;Ljava/lang/String;)Landroid/net/Uri;
    .registers 3
    .parameter "account"
    .parameter "volumeId"

    .prologue
    .line 1591
    const-string v0, "Missing account"

    invoke-static {p0, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1592
    iget-object v0, p0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->buildCoverUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static buildCoverUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .registers 4
    .parameter "accountName"
    .parameter "volumeId"

    .prologue
    .line 1582
    const-string v0, "Valid account name required"

    invoke-static {p0, v0}, Lcom/google/android/apps/books/util/BooksPreconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 1583
    invoke-static {p0, p1}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->buildVolumeUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "cover"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static buildVolumeUri(Landroid/accounts/Account;Ljava/lang/String;)Landroid/net/Uri;
    .registers 3
    .parameter "account"
    .parameter "volumeId"

    .prologue
    .line 1573
    const-string v0, "Missing account"

    invoke-static {p0, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1574
    iget-object v0, p0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->buildVolumeUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static buildVolumeUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .registers 3
    .parameter "accountName"
    .parameter "volumeId"

    .prologue
    .line 1565
    const-string v0, "Valid volume required"

    invoke-static {p1, v0}, Lcom/google/android/apps/books/util/BooksPreconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 1566
    invoke-static {p0}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->buildAccountVolumesDirUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static checkUri(Landroid/net/Uri;)V
    .registers 5
    .parameter "uri"

    .prologue
    .line 1634
    invoke-static {}, Lcom/google/android/apps/books/provider/BooksContract;->access$100()Landroid/content/UriMatcher;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 1635
    .local v0, match:I
    const/16 v1, 0x78

    if-eq v0, v1, :cond_24

    const/16 v1, 0x96

    if-eq v0, v1, :cond_24

    const/16 v1, 0x97

    if-eq v0, v1, :cond_24

    const/16 v1, 0x19a

    if-eq v0, v1, :cond_24

    const/16 v1, 0x19d

    if-eq v0, v1, :cond_24

    const/16 v1, 0x19b

    if-eq v0, v1, :cond_24

    const/16 v1, 0x19c

    if-ne v0, v1, :cond_40

    :cond_24
    const/4 v1, 0x1

    :goto_25
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not a volume Uri, match="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1640
    return-void

    .line 1635
    :cond_40
    const/4 v1, 0x0

    goto :goto_25
.end method

.method public static computeMode(II)I
    .registers 3
    .parameter "volumeMode"
    .parameter "lastMode"

    .prologue
    .line 1364
    const/4 v0, -0x1

    if-ne p1, v0, :cond_4

    .end local p0
    :goto_3
    return p0

    .restart local p0
    :cond_4
    move p0, p1

    goto :goto_3
.end method

.method public static getAccount(Landroid/net/Uri;)Landroid/accounts/Account;
    .registers 4
    .parameter "uri"

    .prologue
    .line 1654
    new-instance v0, Landroid/accounts/Account;

    invoke-static {p0}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->getAccountName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.google"

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getAccountName(Landroid/net/Uri;)Ljava/lang/String;
    .registers 7
    .parameter "uri"

    .prologue
    const/4 v3, 0x1

    .line 1643
    invoke-static {}, Lcom/google/android/apps/books/provider/BooksContract;->access$100()Landroid/content/UriMatcher;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 1644
    .local v0, match:I
    const/16 v2, 0x6e

    if-eq v0, v2, :cond_29

    const/16 v2, 0x78

    if-eq v0, v2, :cond_29

    const/16 v2, 0x96

    if-eq v0, v2, :cond_29

    const/16 v2, 0x97

    if-eq v0, v2, :cond_29

    const/16 v2, 0x19a

    if-eq v0, v2, :cond_29

    const/16 v2, 0x19d

    if-eq v0, v2, :cond_29

    const/16 v2, 0x19b

    if-eq v0, v2, :cond_29

    const/16 v2, 0x19c

    if-ne v0, v2, :cond_4f

    :cond_29
    move v2, v3

    :goto_2a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not a volume Uri, match="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1649
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    .line 1650
    .local v1, paths:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    return-object v2

    .line 1644
    .end local v1           #paths:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_4f
    const/4 v2, 0x0

    goto :goto_2a
.end method

.method public static getContentUris(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .parameter "accountName"
    .parameter "volumeId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1828
    invoke-static {p0, p1}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->getManifestContentUris(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1829
    .local v0, uris:Ljava/util/List;,"Ljava/util/List<Landroid/net/Uri;>;"
    invoke-static {p0, p1}, Lcom/google/android/apps/books/provider/BooksContract$VolumeFiles;->buildClearContentUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1830
    return-object v0
.end method

.method public static getDownloadedFraction(ILjava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)D
    .registers 13
    .parameter "mode"
    .parameter "sectionFraction"
    .parameter "resourceFraction"
    .parameter "pageFraction"

    .prologue
    const-wide/high16 v7, 0x3fe0

    const-wide/16 v4, 0x0

    .line 1768
    const/4 v6, 0x1

    if-ne p0, v6, :cond_f

    .line 1769
    if-nez p3, :cond_a

    .line 1781
    :goto_9
    return-wide v4

    .line 1769
    :cond_a
    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    goto :goto_9

    .line 1771
    :cond_f
    if-nez p1, :cond_23

    move-wide v2, v4

    .line 1773
    .local v2, secFrac:D
    :goto_12
    const-wide v4, 0x3fefffffca501acbL

    cmpg-double v4, v2, v4

    if-gez v4, :cond_28

    .line 1776
    const-wide/16 v0, 0x0

    .line 1781
    .local v0, resFrac:D
    :goto_1d
    mul-double v4, v7, v2

    mul-double v6, v7, v0

    add-double/2addr v4, v6

    goto :goto_9

    .line 1771
    .end local v0           #resFrac:D
    .end local v2           #secFrac:D
    :cond_23
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    goto :goto_12

    .line 1779
    .restart local v2       #secFrac:D
    :cond_28
    if-nez p2, :cond_2d

    const-wide/high16 v0, 0x3ff0

    .restart local v0       #resFrac:D
    :goto_2c
    goto :goto_1d

    .end local v0           #resFrac:D
    :cond_2d
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    goto :goto_2c
.end method

.method public static getManifestContentUris(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .parameter "accountName"
    .parameter "volumeId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1817
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-static {p0, p1}, Lcom/google/android/apps/books/provider/BooksContract$Chapters;->buildChapterDirUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p0, p1}, Lcom/google/android/apps/books/provider/BooksContract$Segments;->buildSectionDirUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p0, p1}, Lcom/google/android/apps/books/provider/BooksContract$Resources;->buildResourceDirUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {p0, p1}, Lcom/google/android/apps/books/provider/BooksContract$Pages;->buildPageDirUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getValuesToClearContentColumns()Landroid/content/ContentValues;
    .registers 3

    .prologue
    .line 1851
    invoke-static {}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->getValuesToClearManifestContentColumns()Landroid/content/ContentValues;

    move-result-object v0

    .line 1852
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "cover_content_status"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1853
    return-object v0
.end method

.method public static getValuesToClearManifestContentColumns()Landroid/content/ContentValues;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1838
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1839
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "content_version"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1840
    const-string v1, "first_chapter_start_segment_id"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1841
    const-string v1, "preferred_mode"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1842
    const-string v1, "has_text_mode"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1843
    const-string v1, "has_image_mode"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1844
    return-object v0
.end method

.method public static getVolumeId(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3
    .parameter "uri"

    .prologue
    .line 1667
    invoke-static {p0}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->checkUri(Landroid/net/Uri;)V

    .line 1668
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 1669
    .local v0, paths:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method public static getVolumeIdFromIntent(Landroid/net/Uri;)Ljava/lang/String;
    .registers 6
    .parameter "uri"

    .prologue
    .line 1691
    invoke-static {}, Lcom/google/android/apps/books/provider/BooksContract;->access$100()Landroid/content/UriMatcher;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 1692
    .local v0, match:I
    const/16 v2, 0x50

    if-ne v0, v2, :cond_18

    .line 1693
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    .line 1694
    .local v1, paths:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1699
    .end local v1           #paths:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :goto_17
    return-object v2

    .line 1696
    :cond_18
    const-string v2, "BooksContract"

    const/4 v3, 0x5

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 1697
    const-string v2, "BooksContract"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Warning: ignoring any account included in intent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1699
    :cond_39
    invoke-static {p0}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->getVolumeId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    goto :goto_17
.end method

.method private static hasSampleStateChanged(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .parameter "oldBuyUrl"
    .parameter "newBuyUrl"

    .prologue
    const/4 v2, 0x0

    .line 1720
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1730
    :cond_7
    :goto_7
    return v2

    .line 1723
    :cond_8
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 1724
    .local v1, isOldBuyUrlEmpty:Z
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 1725
    .local v0, isNewBuyUrlEmpty:Z
    if-eqz v1, :cond_14

    if-eqz v0, :cond_18

    :cond_14
    if-nez v1, :cond_7

    if-eqz v0, :cond_7

    .line 1728
    :cond_18
    const/4 v2, 0x1

    goto :goto_7
.end method

.method public static isContentInvalid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .parameter "oldViewability"
    .parameter "oldBuyUrl"
    .parameter "oldOpenAccess"
    .parameter "newViewability"
    .parameter "newBuyUrl"
    .parameter "newOpenAccess"

    .prologue
    .line 1714
    invoke-static {p0, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {p1, p4}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->hasSampleStateChanged(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-static {p2, p5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public static isFullyDownloaded(D)Z
    .registers 4
    .parameter "fraction"

    .prologue
    .line 1790
    const-wide v0, 0x3fefffffca501acbL

    cmpl-double v0, p0, v0

    if-lez v0, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static isPartiallyOrFullyDownloaded(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)Z
    .registers 12
    .parameter "sectionFraction"
    .parameter "resourceFraction"
    .parameter "pageFraction"

    .prologue
    const-wide v7, 0x3e7ad7f29abcaf48L

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1804
    if-eqz p0, :cond_30

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    cmpl-double v5, v5, v7

    if-lez v5, :cond_30

    move v2, v4

    .line 1806
    .local v2, hasSection:Z
    :goto_12
    if-eqz p1, :cond_32

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    cmpl-double v5, v5, v7

    if-lez v5, :cond_32

    move v1, v4

    .line 1808
    .local v1, hasResource:Z
    :goto_1d
    if-eqz p2, :cond_34

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    cmpl-double v5, v5, v7

    if-lez v5, :cond_34

    move v0, v4

    .line 1810
    .local v0, hasPage:Z
    :goto_28
    if-nez v2, :cond_2e

    if-nez v1, :cond_2e

    if-eqz v0, :cond_2f

    :cond_2e
    move v3, v4

    :cond_2f
    return v3

    .end local v0           #hasPage:Z
    .end local v1           #hasResource:Z
    .end local v2           #hasSection:Z
    :cond_30
    move v2, v3

    .line 1804
    goto :goto_12

    .restart local v2       #hasSection:Z
    :cond_32
    move v1, v3

    .line 1806
    goto :goto_1d

    .restart local v1       #hasResource:Z
    :cond_34
    move v0, v3

    .line 1808
    goto :goto_28
.end method
