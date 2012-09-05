.class public final Lcom/google/android/apps/books/provider/BooksContract$Collections;
.super Ljava/lang/Object;
.source "BooksContract.java"

# interfaces
.implements Lcom/google/android/apps/books/provider/BooksContract$CollectionColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/provider/BooksContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Collections"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/com.google.android.apps.books.account.collection"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/com.google.android.apps.books.account.collection"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final MY_EBOOKS_ID:I = 0x7

.field static final PATH_COLLECTIONS:Ljava/lang/String; = "collections"

.field static final PATH_LIBRARY:Ljava/lang/String; = "lib"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 2639
    const-string v0, "content://com.google.android.apps.books/lib/accounts/collections"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/books/provider/BooksContract$Collections;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 2660
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2661
    return-void
.end method

.method public static dirUri(Ljava/lang/String;)Landroid/net/Uri;
    .registers 3
    .parameter "accountName"

    .prologue
    .line 2667
    sget-object v0, Lcom/google/android/apps/books/provider/BooksContract;->BASE_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "lib"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "accounts"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "collections"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getAccount(Landroid/net/Uri;)Landroid/accounts/Account;
    .registers 4
    .parameter "uri"

    .prologue
    .line 2694
    new-instance v0, Landroid/accounts/Account;

    invoke-static {p0}, Lcom/google/android/apps/books/provider/BooksContract$Collections;->getAccountName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.google"

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getAccountName(Landroid/net/Uri;)Ljava/lang/String;
    .registers 6
    .parameter "uri"

    .prologue
    .line 2684
    invoke-static {}, Lcom/google/android/apps/books/provider/BooksContract;->access$100()Landroid/content/UriMatcher;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 2685
    .local v0, match:I
    const/16 v2, 0x2bd

    if-eq v0, v2, :cond_1c

    const/16 v2, 0x2be

    if-eq v0, v2, :cond_1c

    const/16 v2, 0x2c7

    if-eq v0, v2, :cond_1c

    const/16 v2, 0x2c8

    if-eq v0, v2, :cond_1c

    const/16 v2, 0x2d0

    if-ne v0, v2, :cond_43

    :cond_1c
    const/4 v2, 0x1

    :goto_1d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not a collections Uri, match="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 2689
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    .line 2690
    .local v1, paths:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    return-object v2

    .line 2685
    .end local v1           #paths:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_43
    const/4 v2, 0x0

    goto :goto_1d
.end method

.method public static getCollectionId(Landroid/net/Uri;)J
    .registers 6
    .parameter "uri"

    .prologue
    .line 2701
    invoke-static {}, Lcom/google/android/apps/books/provider/BooksContract;->access$100()Landroid/content/UriMatcher;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 2702
    .local v0, match:I
    const/16 v2, 0x2be

    if-eq v0, v2, :cond_14

    const/16 v2, 0x2c7

    if-eq v0, v2, :cond_14

    const/16 v2, 0x2c8

    if-ne v0, v2, :cond_3f

    :cond_14
    const/4 v2, 0x1

    :goto_15
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not a collection Uri, match="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 2705
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    .line 2706
    .local v1, paths:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x4

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    return-wide v2

    .line 2702
    .end local v1           #paths:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_3f
    const/4 v2, 0x0

    goto :goto_15
.end method

.method public static itemUri(Ljava/lang/String;J)Landroid/net/Uri;
    .registers 5
    .parameter "accountName"
    .parameter "collectionId"

    .prologue
    .line 2676
    invoke-static {p0}, Lcom/google/android/apps/books/provider/BooksContract$Collections;->dirUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
