.class public Lcom/google/android/apps/reader/widget/UnreadCountQuery;
.super Landroid/support/v4/widget/CursorAdapter;
.source "UnreadCountQuery.java"


# static fields
.field private static final COLUMN_MAX_UNREAD_COUNT:I = 0x2

.field private static final COLUMN_UNREAD_COUNT:I = 0x1

.field private static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 41
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "unread_count"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "max_unread_count"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/reader/widget/UnreadCountQuery;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 49
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v4/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 50
    return-void
.end method

.method private getCursorExtras()Landroid/os/Bundle;
    .registers 3

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/google/android/apps/reader/widget/UnreadCountQuery;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 59
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
    .line 63
    invoke-direct {p0}, Lcom/google/android/apps/reader/widget/UnreadCountQuery;->getCursorExtras()Landroid/os/Bundle;

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
    .line 122
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bindView(Landroid/view/View;Z)V
    .registers 15
    .parameter "view"
    .parameter "showUnreadCount"

    .prologue
    const v11, 0x1030042

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 82
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 83
    .local v0, context:Landroid/content/Context;
    const v8, 0x1020014

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 84
    .local v5, text1:Landroid/widget/TextView;
    const v8, 0x1020015

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 86
    .local v6, text2:Landroid/widget/TextView;
    const/4 v7, 0x0

    .line 87
    .local v7, unreadCount:I
    const/4 v3, -0x1

    .line 88
    .local v3, maxUnreadCount:I
    invoke-virtual {p0}, Lcom/google/android/apps/reader/widget/UnreadCountQuery;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 89
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_32

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_32

    .line 90
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 91
    const/4 v8, 0x2

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 95
    :cond_32
    invoke-virtual {v5, v0, v11}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 96
    invoke-virtual {v6, v0, v11}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 99
    if-eqz v7, :cond_53

    move v4, v9

    .line 100
    .local v4, style:I
    :goto_3b
    invoke-virtual {v5}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v5, v8, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 101
    invoke-virtual {v6}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v6, v8, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 103
    if-eqz p2, :cond_4d

    if-nez v7, :cond_55

    .line 104
    :cond_4d
    const-string v8, ""

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    :goto_52
    return-void

    .end local v4           #style:I
    :cond_53
    move v4, v10

    .line 99
    goto :goto_3b

    .line 105
    .restart local v4       #style:I
    :cond_55
    if-lt v7, v3, :cond_6a

    .line 106
    new-array v2, v9, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v2, v10

    .line 109
    .local v2, formatArgs:[Ljava/lang/Object;
    const v8, 0x7f0d0107

    invoke-virtual {v0, v8, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_52

    .line 111
    .end local v2           #formatArgs:[Ljava/lang/Object;
    :cond_6a
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_52
.end method

.method public createLoader(Lcom/google/android/accounts/Account;Ljava/lang/String;)Landroid/support/v4/content/Loader;
    .registers 10
    .parameter "account"
    .parameter "streamId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/accounts/Account;",
            "Ljava/lang/String;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 53
    invoke-static {p1, p2}, Lcom/google/android/apps/reader/provider/ReaderContract$UnreadCounts;->itemUri(Lcom/google/android/accounts/Account;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 54
    .local v2, uri:Landroid/net/Uri;
    new-instance v0, Landroid/support/v4/content/CursorLoader;

    iget-object v1, p0, Lcom/google/android/apps/reader/widget/UnreadCountQuery;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/google/android/apps/reader/widget/UnreadCountQuery;->PROJECTION:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getStreamId()Ljava/lang/String;
    .registers 3

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/google/android/apps/reader/widget/UnreadCountQuery;->getUri()Landroid/net/Uri;

    move-result-object v0

    .line 68
    .local v0, uri:Landroid/net/Uri;
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    :goto_a
    return-object v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 117
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
