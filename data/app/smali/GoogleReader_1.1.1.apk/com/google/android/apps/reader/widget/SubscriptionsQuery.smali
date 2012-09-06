.class public Lcom/google/android/apps/reader/widget/SubscriptionsQuery;
.super Landroid/support/v4/widget/CursorAdapter;
.source "SubscriptionsQuery.java"


# static fields
.field private static final COLUMN_STREAM_ID:I = 0x1

.field private static final PROJECTION:[Ljava/lang/String;


# instance fields
.field private final mSubscriptions:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 41
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/reader/widget/SubscriptionsQuery;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 50
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v4/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 47
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/apps/reader/widget/SubscriptionsQuery;->mSubscriptions:Ljava/util/HashSet;

    .line 51
    return-void
.end method

.method private clearSubscriptions()V
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/apps/reader/widget/SubscriptionsQuery;->mSubscriptions:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 70
    return-void
.end method

.method private getCursorExtras()Landroid/os/Bundle;
    .registers 3

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/google/android/apps/reader/widget/SubscriptionsQuery;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 87
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

.method private updateSubscriptions()V
    .registers 5

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/apps/reader/widget/SubscriptionsQuery;->mSubscriptions:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 59
    invoke-virtual {p0}, Lcom/google/android/apps/reader/widget/SubscriptionsQuery;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 60
    if-eqz v0, :cond_1f

    .line 61
    const/4 v1, 0x0

    :goto_c
    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 62
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 63
    iget-object v3, p0, Lcom/google/android/apps/reader/widget/SubscriptionsQuery;->mSubscriptions:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 61
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 66
    :cond_1f
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 5
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 113
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public contains(Ljava/lang/String;)Z
    .registers 3
    .parameter "subscriptionId"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/apps/reader/widget/SubscriptionsQuery;->mSubscriptions:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/lang/Iterable;)Z
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 77
    .local p1, subscriptions:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;

    .line 78
    .local v1, subscription:Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;
    iget-object v2, p0, Lcom/google/android/apps/reader/widget/SubscriptionsQuery;->mSubscriptions:Ljava/util/HashSet;

    invoke-virtual {v1}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;->getStreamId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 79
    const/4 v2, 0x0

    .line 82
    .end local v1           #subscription:Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;
    :goto_1d
    return v2

    :cond_1e
    const/4 v2, 0x1

    goto :goto_1d
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

    .line 54
    new-instance v0, Landroid/support/v4/content/CursorLoader;

    iget-object v1, p0, Lcom/google/android/apps/reader/widget/SubscriptionsQuery;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/google/android/apps/reader/widget/SubscriptionsQuery;->PROJECTION:[Ljava/lang/String;

    move-object v2, p1

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getAccount()Lcom/google/android/accounts/Account;
    .registers 3

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/google/android/apps/reader/widget/SubscriptionsQuery;->getCursorExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.google.reader.cursor.extra.ACCOUNT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/accounts/Account;

    return-object p0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 108
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public notifyDataSetChanged()V
    .registers 1

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/google/android/apps/reader/widget/SubscriptionsQuery;->updateSubscriptions()V

    .line 97
    invoke-super {p0}, Landroid/support/v4/widget/CursorAdapter;->notifyDataSetChanged()V

    .line 98
    return-void
.end method

.method public notifyDataSetInvalidated()V
    .registers 1

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/google/android/apps/reader/widget/SubscriptionsQuery;->clearSubscriptions()V

    .line 103
    invoke-super {p0}, Landroid/support/v4/widget/CursorAdapter;->notifyDataSetInvalidated()V

    .line 104
    return-void
.end method
