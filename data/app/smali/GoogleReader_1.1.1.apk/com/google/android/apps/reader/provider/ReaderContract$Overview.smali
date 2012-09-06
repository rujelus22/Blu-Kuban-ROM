.class public Lcom/google/android/apps/reader/provider/ReaderContract$Overview;
.super Ljava/lang/Object;
.source "ReaderContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Lcom/google/android/apps/reader/provider/ReaderContract$OverviewColumns;
.implements Lcom/google/android/apps/reader/provider/ReaderContract$SyncColumns;
.implements Lcom/google/android/apps/reader/provider/ReaderContract$UnreadCountsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/reader/provider/ReaderContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Overview"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String;

.field public static final CONTENT_TYPE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 2202
    const-string v0, "overview"

    invoke-static {v0}, Lcom/google/android/apps/reader/provider/ReaderContract;->contentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/reader/provider/ReaderContract$Overview;->CONTENT_TYPE:Ljava/lang/String;

    .line 2204
    const-string v0, "overview"

    invoke-static {v0}, Lcom/google/android/apps/reader/provider/ReaderContract;->contentItemType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/reader/provider/ReaderContract$Overview;->CONTENT_ITEM_TYPE:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 2221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2222
    return-void
.end method

.method public static contentUri(Lcom/google/android/accounts/Account;)Landroid/net/Uri;
    .registers 4
    .parameter

    .prologue
    .line 2207
    sget-object v0, Lcom/google/android/apps/reader/provider/ReaderContract;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 2208
    const-string v1, "overview"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2209
    const-string v1, "account_name"

    iget-object v2, p0, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2210
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static itemUri(Lcom/google/android/accounts/Account;Ljava/lang/String;)Landroid/net/Uri;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 2214
    sget-object v0, Lcom/google/android/apps/reader/provider/ReaderContract;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 2215
    const-string v1, "overview"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2216
    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2217
    const-string v1, "account_name"

    iget-object v2, p0, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2218
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
