.class public Lcom/google/android/apps/reader/provider/ReaderContract$StreamDetails;
.super Ljava/lang/Object;
.source "ReaderContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Lcom/google/android/apps/reader/provider/ReaderContract$StreamDetailsColumns;
.implements Lcom/google/android/apps/reader/provider/ReaderContract$SyncColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/reader/provider/ReaderContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StreamDetails"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1455
    const-string v0, "stream-details"

    invoke-static {v0}, Lcom/google/android/apps/reader/provider/ReaderContract;->contentItemType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/reader/provider/ReaderContract$StreamDetails;->CONTENT_ITEM_TYPE:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 1471
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1472
    return-void
.end method

.method public static itemUri(Lcom/google/android/accounts/Account;Ljava/lang/String;)Landroid/net/Uri;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1458
    if-nez p0, :cond_a

    .line 1459
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Account is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1461
    :cond_a
    if-nez p1, :cond_14

    .line 1462
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Stream ID is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1464
    :cond_14
    sget-object v0, Lcom/google/android/apps/reader/provider/ReaderContract;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1465
    const-string v1, "stream-details"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1466
    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1467
    const-string v1, "account_name"

    iget-object v2, p0, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1468
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
