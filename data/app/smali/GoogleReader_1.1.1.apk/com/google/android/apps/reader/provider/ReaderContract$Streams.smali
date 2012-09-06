.class public Lcom/google/android/apps/reader/provider/ReaderContract$Streams;
.super Ljava/lang/Object;
.source "ReaderContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Lcom/google/android/apps/reader/provider/ReaderContract$StreamsColumns;
.implements Lcom/google/android/apps/reader/provider/ReaderContract$StreamsSortKeys;
.implements Lcom/google/android/apps/reader/provider/ReaderContract$SyncColumns;
.implements Lcom/google/android/apps/reader/provider/ReaderContract$UnreadCountsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/reader/provider/ReaderContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Streams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/reader/provider/ReaderContract$Streams$Filter;
    }
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String;

.field public static final CONTENT_TYPE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1401
    const-string v0, "stream"

    invoke-static {v0}, Lcom/google/android/apps/reader/provider/ReaderContract;->contentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/reader/provider/ReaderContract$Streams;->CONTENT_TYPE:Ljava/lang/String;

    .line 1403
    const-string v0, "stream"

    invoke-static {v0}, Lcom/google/android/apps/reader/provider/ReaderContract;->contentItemType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/reader/provider/ReaderContract$Streams;->CONTENT_ITEM_TYPE:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 1449
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1450
    return-void
.end method

.method public static contentUri(Lcom/google/android/accounts/Account;)Landroid/net/Uri;
    .registers 2
    .parameter "account"

    .prologue
    .line 1420
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/apps/reader/provider/ReaderContract$Streams;->contentUri(Lcom/google/android/accounts/Account;Lcom/google/android/apps/reader/provider/ReaderContract$Streams$Filter;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static contentUri(Lcom/google/android/accounts/Account;Lcom/google/android/apps/reader/provider/ReaderContract$Streams$Filter;)Landroid/net/Uri;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1406
    if-nez p0, :cond_a

    .line 1407
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Account is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1409
    :cond_a
    sget-object v0, Lcom/google/android/apps/reader/provider/ReaderContract;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1410
    const-string v1, "streams"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1411
    const-string v1, "account_name"

    iget-object v2, p0, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1412
    if-eqz p1, :cond_2b

    .line 1413
    invoke-virtual {p1}, Lcom/google/android/apps/reader/provider/ReaderContract$Streams$Filter;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 1414
    const-string v2, "stream_filter"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1416
    :cond_2b
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getFilter(Landroid/net/Uri;)Lcom/google/android/apps/reader/provider/ReaderContract$Streams$Filter;
    .registers 4
    .parameter "uri"

    .prologue
    .line 1438
    if-nez p0, :cond_a

    .line 1439
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "URI is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1441
    :cond_a
    const-string v1, "stream_filter"

    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1442
    .local v0, name:Ljava/lang/String;
    if-eqz v0, :cond_1b

    .line 1443
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/reader/provider/ReaderContract$Streams$Filter;->valueOf(Ljava/lang/String;)Lcom/google/android/apps/reader/provider/ReaderContract$Streams$Filter;

    move-result-object v1

    .line 1445
    :goto_1a
    return-object v1

    :cond_1b
    sget-object v1, Lcom/google/android/apps/reader/provider/ReaderContract$Streams$Filter;->NONE:Lcom/google/android/apps/reader/provider/ReaderContract$Streams$Filter;

    goto :goto_1a
.end method

.method public static itemUri(Lcom/google/android/accounts/Account;Ljava/lang/String;)Landroid/net/Uri;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1424
    if-nez p0, :cond_a

    .line 1425
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Account is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1427
    :cond_a
    if-nez p1, :cond_14

    .line 1428
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Stream ID is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1430
    :cond_14
    sget-object v0, Lcom/google/android/apps/reader/provider/ReaderContract;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1431
    const-string v1, "streams"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1432
    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1433
    const-string v1, "account_name"

    iget-object v2, p0, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1434
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
