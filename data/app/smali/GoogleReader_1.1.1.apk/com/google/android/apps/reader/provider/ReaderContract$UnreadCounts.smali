.class public Lcom/google/android/apps/reader/provider/ReaderContract$UnreadCounts;
.super Ljava/lang/Object;
.source "ReaderContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Lcom/google/android/apps/reader/provider/ReaderContract$SyncColumns;
.implements Lcom/google/android/apps/reader/provider/ReaderContract$UnreadCountsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/reader/provider/ReaderContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UnreadCounts"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = null

.field public static final CONTENT_TYPE:Ljava/lang/String; = null

.field public static final STREAM_ID:Ljava/lang/String; = "stream_id"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1672
    const-string v0, "unread-count"

    invoke-static {v0}, Lcom/google/android/apps/reader/provider/ReaderContract;->contentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/reader/provider/ReaderContract$UnreadCounts;->CONTENT_TYPE:Ljava/lang/String;

    .line 1674
    const-string v0, "unread-count"

    invoke-static {v0}, Lcom/google/android/apps/reader/provider/ReaderContract;->contentItemType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/reader/provider/ReaderContract$UnreadCounts;->CONTENT_ITEM_TYPE:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 1691
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1692
    return-void
.end method

.method public static contentUri(Lcom/google/android/accounts/Account;)Landroid/net/Uri;
    .registers 4
    .parameter

    .prologue
    .line 1677
    sget-object v0, Lcom/google/android/apps/reader/provider/ReaderContract;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1678
    const-string v1, "unread-counts"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1679
    const-string v1, "account_name"

    iget-object v2, p0, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1680
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static itemUri(Lcom/google/android/accounts/Account;Ljava/lang/String;)Landroid/net/Uri;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1684
    sget-object v0, Lcom/google/android/apps/reader/provider/ReaderContract;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1685
    const-string v1, "unread-counts"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1686
    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1687
    const-string v1, "account_name"

    iget-object v2, p0, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1688
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
