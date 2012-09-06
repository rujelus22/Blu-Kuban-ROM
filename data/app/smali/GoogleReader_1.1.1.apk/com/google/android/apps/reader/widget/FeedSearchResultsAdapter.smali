.class public final Lcom/google/android/apps/reader/widget/FeedSearchResultsAdapter;
.super Landroid/support/v4/widget/CursorAdapter;
.source "FeedSearchResultsAdapter.java"


# static fields
.field private static final COLUMN_ACCOUNT_NAME:I = 0x3

.field private static final COLUMN_ACCOUNT_TYPE:I = 0x4

.field private static final COLUMN_STREAM_ID:I = 0x1

.field private static final COLUMN_TITLE:I = 0x2

.field private static final PROJECTION:[Ljava/lang/String;


# instance fields
.field private final mSubscriptions:Lcom/google/android/apps/reader/widget/SubscriptionsQuery;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 37
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "account_name"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "account_type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/reader/widget/FeedSearchResultsAdapter;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/reader/widget/SubscriptionsQuery;)V
    .registers 5
    .parameter "context"
    .parameter "subscriptions"

    .prologue
    .line 53
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v4/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 54
    if-nez p2, :cond_f

    .line 55
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Subscriptions query is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_f
    iput-object p2, p0, Lcom/google/android/apps/reader/widget/FeedSearchResultsAdapter;->mSubscriptions:Lcom/google/android/apps/reader/widget/SubscriptionsQuery;

    .line 58
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 8
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 73
    const/4 v3, 0x1

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, streamId:Ljava/lang/String;
    const v3, 0x1020014

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 76
    .local v2, textView:Landroid/widget/TextView;
    const/4 v3, 0x2

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    const v3, 0x1020001

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 79
    .local v0, checkbox:Landroid/widget/CheckBox;
    iget-object v3, p0, Lcom/google/android/apps/reader/widget/FeedSearchResultsAdapter;->mSubscriptions:Lcom/google/android/apps/reader/widget/SubscriptionsQuery;

    invoke-virtual {v3, v1}, Lcom/google/android/apps/reader/widget/SubscriptionsQuery;->contains(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 80
    return-void
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

    .line 61
    sget-object v3, Lcom/google/android/apps/reader/widget/FeedSearchResultsAdapter;->PROJECTION:[Ljava/lang/String;

    .line 62
    .local v3, projection:[Ljava/lang/String;
    new-instance v0, Landroid/support/v4/content/CursorLoader;

    iget-object v1, p0, Lcom/google/android/apps/reader/widget/FeedSearchResultsAdapter;->mContext:Landroid/content/Context;

    move-object v2, p1

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getAccount(Landroid/database/Cursor;)Lcom/google/android/accounts/Account;
    .registers 5
    .parameter "cursor"

    .prologue
    .line 83
    const/4 v2, 0x3

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, accountName:Ljava/lang/String;
    const/4 v2, 0x4

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 85
    .local v1, accountType:Ljava/lang/String;
    new-instance v2, Lcom/google/android/accounts/Account;

    invoke-direct {v2, v0, v1}, Lcom/google/android/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public getStreamId(Landroid/database/Cursor;)Ljava/lang/String;
    .registers 3
    .parameter "cursor"

    .prologue
    .line 89
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle(Landroid/database/Cursor;)Ljava/lang/String;
    .registers 3
    .parameter "cursor"

    .prologue
    .line 93
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 67
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 68
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f030013

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method
