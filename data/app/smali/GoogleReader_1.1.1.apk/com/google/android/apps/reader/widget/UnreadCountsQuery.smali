.class public Lcom/google/android/apps/reader/widget/UnreadCountsQuery;
.super Landroid/support/v4/widget/CursorAdapter;
.source "UnreadCountsQuery.java"


# static fields
.field private static final COLUMN_MAX_UNREAD_COUNT:I = 0x3

.field private static final COLUMN_STREAM_ID:I = 0x1

.field private static final COLUMN_UNREAD_COUNT:I = 0x2

.field private static final PROJECTION:[Ljava/lang/String;


# instance fields
.field private final mMaxUnreadCounts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mUnreadCounts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 40
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "stream_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "unread_count"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "max_unread_count"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/reader/widget/UnreadCountsQuery;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 53
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v4/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/reader/widget/UnreadCountsQuery;->mUnreadCounts:Ljava/util/HashMap;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/reader/widget/UnreadCountsQuery;->mMaxUnreadCounts:Ljava/util/HashMap;

    .line 54
    return-void
.end method

.method private clearUnreadCounts()V
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/android/apps/reader/widget/UnreadCountsQuery;->mUnreadCounts:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 107
    iget-object v0, p0, Lcom/google/android/apps/reader/widget/UnreadCountsQuery;->mMaxUnreadCounts:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 108
    return-void
.end method

.method private updateUnreadCounts()V
    .registers 7

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/google/android/apps/reader/widget/UnreadCountsQuery;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lcom/google/android/apps/reader/widget/UnreadCountsQuery;->mUnreadCounts:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 86
    iget-object v1, p0, Lcom/google/android/apps/reader/widget/UnreadCountsQuery;->mMaxUnreadCounts:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 87
    const/4 v1, 0x0

    :goto_f
    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 88
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 89
    const/4 v3, 0x2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 90
    const/4 v4, 0x3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 92
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 93
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 94
    iget-object v5, p0, Lcom/google/android/apps/reader/widget/UnreadCountsQuery;->mUnreadCounts:Ljava/util/HashMap;

    invoke-virtual {v5, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object v5, p0, Lcom/google/android/apps/reader/widget/UnreadCountsQuery;->mMaxUnreadCounts:Ljava/util/HashMap;

    invoke-virtual {v5, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    invoke-static {v2}, Lcom/google/android/apps/reader/provider/ReaderStream;->unsetUserId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 100
    iget-object v5, p0, Lcom/google/android/apps/reader/widget/UnreadCountsQuery;->mUnreadCounts:Ljava/util/HashMap;

    invoke-virtual {v5, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v3, p0, Lcom/google/android/apps/reader/widget/UnreadCountsQuery;->mMaxUnreadCounts:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 103
    :cond_47
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 5
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 117
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public createLoader(Lcom/google/android/accounts/Account;)Landroid/support/v4/content/Loader;
    .registers 9
    .parameter "account"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/accounts/Account;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 57
    invoke-static {p1}, Lcom/google/android/apps/reader/provider/ReaderContract$UnreadCounts;->contentUri(Lcom/google/android/accounts/Account;)Landroid/net/Uri;

    move-result-object v2

    .line 58
    .local v2, uri:Landroid/net/Uri;
    new-instance v0, Landroid/support/v4/content/CursorLoader;

    iget-object v1, p0, Lcom/google/android/apps/reader/widget/UnreadCountsQuery;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/google/android/apps/reader/widget/UnreadCountsQuery;->PROJECTION:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getMaxUnreadCount(Ljava/lang/String;)I
    .registers 4
    .parameter "streamId"

    .prologue
    .line 67
    iget-object v1, p0, Lcom/google/android/apps/reader/widget/UnreadCountsQuery;->mMaxUnreadCounts:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 68
    .local v0, count:Ljava/lang/Integer;
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_e
    return v1

    :cond_f
    const/16 v1, 0x3e8

    goto :goto_e
.end method

.method public getUnreadCount(Ljava/lang/String;)I
    .registers 4
    .parameter "streamId"

    .prologue
    .line 62
    iget-object v1, p0, Lcom/google/android/apps/reader/widget/UnreadCountsQuery;->mUnreadCounts:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 63
    .local v0, count:Ljava/lang/Integer;
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_e
    return v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 112
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public notifyDataSetChanged()V
    .registers 1

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/google/android/apps/reader/widget/UnreadCountsQuery;->updateUnreadCounts()V

    .line 74
    invoke-super {p0}, Landroid/support/v4/widget/CursorAdapter;->notifyDataSetChanged()V

    .line 75
    return-void
.end method

.method public notifyDataSetInvalidated()V
    .registers 1

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/google/android/apps/reader/widget/UnreadCountsQuery;->clearUnreadCounts()V

    .line 80
    invoke-super {p0}, Landroid/support/v4/widget/CursorAdapter;->notifyDataSetInvalidated()V

    .line 81
    return-void
.end method
