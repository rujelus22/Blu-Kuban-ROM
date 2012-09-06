.class public Lcom/google/android/apps/reader/widget/SubscribedQuery;
.super Landroid/support/v4/widget/CursorAdapter;
.source "SubscribedQuery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/reader/widget/SubscribedQuery$QueryHandler;
    }
.end annotation


# static fields
.field private static final PROJECTION:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "SubscribedQuery"


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 43
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/reader/widget/SubscribedQuery;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 48
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v4/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 49
    return-void
.end method

.method private getCursorExtras()Landroid/os/Bundle;
    .registers 3

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/google/android/apps/reader/widget/SubscribedQuery;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 53
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_b

    invoke-interface {v0}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    :goto_a
    return-object v1

    :cond_b
    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    goto :goto_a
.end method

.method private getUri()Landroid/net/Uri;
    .registers 3

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/google/android/apps/reader/widget/SubscribedQuery;->getCursorExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.google.reader.cursor.extra.URI"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/net/Uri;

    return-object p0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 5
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 140
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public createLoader(Landroid/net/Uri;)Landroid/support/v4/content/Loader;
    .registers 9
    .parameter "uri"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 130
    new-instance v0, Landroid/support/v4/content/CursorLoader;

    iget-object v1, p0, Lcom/google/android/apps/reader/widget/SubscribedQuery;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/google/android/apps/reader/widget/SubscribedQuery;->PROJECTION:[Ljava/lang/String;

    move-object v2, p1

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getAccount()Lcom/google/android/accounts/Account;
    .registers 3

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/google/android/apps/reader/widget/SubscribedQuery;->getCursorExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.google.reader.cursor.extra.ACCOUNT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/accounts/Account;

    return-object p0
.end method

.method public getStreamId()Ljava/lang/String;
    .registers 3

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/google/android/apps/reader/widget/SubscribedQuery;->getUri()Landroid/net/Uri;

    move-result-object v0

    .line 70
    .local v0, uri:Landroid/net/Uri;
    if-eqz v0, :cond_b

    .line 71
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 73
    :goto_a
    return-object v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public hasError()Z
    .registers 3

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/google/android/apps/reader/widget/SubscribedQuery;->getCursorExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.google.feeds.cursor.extra.ERROR"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSubscribed()Z
    .registers 3

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/google/android/apps/reader/widget/SubscribedQuery;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 83
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_e

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_e

    const/4 v1, 0x1

    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 135
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public subscribe(Ljava/lang/String;)V
    .registers 8
    .parameter

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/google/android/apps/reader/widget/SubscribedQuery;->getUri()Landroid/net/Uri;

    move-result-object v0

    .line 88
    if-nez v0, :cond_e

    .line 89
    const-string v0, "SubscribedQuery"

    const-string v1, "Stream not selected"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :goto_d
    return-void

    .line 92
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/apps/reader/widget/SubscribedQuery;->getAccount()Lcom/google/android/accounts/Account;

    move-result-object v1

    .line 93
    if-nez v1, :cond_1c

    .line 94
    const-string v0, "SubscribedQuery"

    const-string v1, "Account not selected"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 97
    :cond_1c
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 98
    const/4 v2, 0x1

    .line 100
    invoke-static {v1}, Lcom/google/android/apps/reader/provider/ReaderContract$Subscriptions;->contentUri(Lcom/google/android/accounts/Account;)Landroid/net/Uri;

    move-result-object v1

    .line 101
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 102
    const-string v4, "id"

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v4, "title"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    new-instance v4, Lcom/google/android/apps/reader/widget/SubscribedQuery$QueryHandler;

    iget-object v5, p0, Lcom/google/android/apps/reader/widget/SubscribedQuery;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/google/android/apps/reader/widget/SubscribedQuery$QueryHandler;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v2, v0, v1, v3}, Lcom/google/android/apps/reader/widget/SubscribedQuery$QueryHandler;->startInsert(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;)V

    goto :goto_d
.end method
