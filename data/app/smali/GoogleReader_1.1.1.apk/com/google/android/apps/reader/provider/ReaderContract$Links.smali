.class public Lcom/google/android/apps/reader/provider/ReaderContract$Links;
.super Ljava/lang/Object;
.source "ReaderContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Lcom/google/android/apps/reader/provider/ReaderContract$LinksColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/reader/provider/ReaderContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Links"
.end annotation


# static fields
.field public static final CONTENT_TYPE:Ljava/lang/String; = null

.field public static final REL_ALTERNATE:Ljava/lang/String; = "alternate"

.field public static final REL_ENCLOSURE:Ljava/lang/String; = "enclosure"

.field public static final REL_RELATED:Ljava/lang/String; = "related"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 2048
    const-string v0, "link"

    invoke-static {v0}, Lcom/google/android/apps/reader/provider/ReaderContract;->contentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/reader/provider/ReaderContract$Links;->CONTENT_TYPE:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 2105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2106
    return-void
.end method

.method public static contentUri(Lcom/google/android/accounts/Account;JLjava/lang/String;)Landroid/net/Uri;
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2066
    if-nez p0, :cond_a

    .line 2067
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Account is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2069
    :cond_a
    if-nez p3, :cond_14

    .line 2070
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Relation is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2072
    :cond_14
    sget-object v0, Lcom/google/android/apps/reader/provider/ReaderContract;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 2073
    const-string v1, "links"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2074
    const-string v1, "account_name"

    iget-object v2, p0, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2075
    const-string v1, "item_id"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2076
    const-string v1, "rel"

    invoke-virtual {v0, v1, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2077
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getItemId(Landroid/net/Uri;)Ljava/lang/Long;
    .registers 4
    .parameter "uri"

    .prologue
    const/4 v2, 0x0

    .line 2085
    const-string v1, "item_id"

    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2086
    .local v0, value:Ljava/lang/String;
    if-eqz v0, :cond_11

    .line 2088
    :try_start_9
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_c} :catch_e

    move-result-object v1

    .line 2093
    :goto_d
    return-object v1

    .line 2090
    :catch_e
    move-exception v1

    move-object v1, v2

    goto :goto_d

    :cond_11
    move-object v1, v2

    .line 2093
    goto :goto_d
.end method

.method public static getRel(Landroid/net/Uri;)Ljava/lang/String;
    .registers 2
    .parameter "uri"

    .prologue
    .line 2102
    const-string v0, "rel"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
