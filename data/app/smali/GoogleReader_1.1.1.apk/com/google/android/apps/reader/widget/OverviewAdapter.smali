.class public Lcom/google/android/apps/reader/widget/OverviewAdapter;
.super Landroid/support/v4/widget/CursorAdapter;
.source "OverviewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/reader/widget/OverviewAdapter$1;
    }
.end annotation


# static fields
.field private static final COLUMN_ACCOUNT_NAME:I = 0x1

.field private static final COLUMN_ACCOUNT_TYPE:I = 0x2

.field private static final COLUMN_IMAGE_URL:I = 0x8

.field private static final COLUMN_MAX_UNREAD_COUNT:I = 0x6

.field private static final COLUMN_STREAM_ID:I = 0x3

.field private static final COLUMN_SUMMARY:I = 0x7

.field private static final COLUMN_TITLE:I = 0x4

.field private static final COLUMN_UNREAD_COUNT:I = 0x5

.field private static final PROJECTION:[Ljava/lang/String;


# instance fields
.field private final mImageLoader:Lcom/google/android/imageloader/ImageLoader;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 44
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "account_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "account_type"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "sid"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "unread_count"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "max_unread_count"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "summary"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "image_url"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/reader/widget/OverviewAdapter;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 62
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v4/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 63
    invoke-static {p1}, Lcom/google/android/imageloader/ImageLoader;->get(Landroid/content/Context;)Lcom/google/android/imageloader/ImageLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/reader/widget/OverviewAdapter;->mImageLoader:Lcom/google/android/imageloader/ImageLoader;

    .line 64
    return-void
.end method

.method private getAccount(Landroid/database/Cursor;)Lcom/google/android/accounts/Account;
    .registers 5
    .parameter "cursor"

    .prologue
    .line 73
    const/4 v2, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, accountName:Ljava/lang/String;
    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, accountType:Ljava/lang/String;
    new-instance v2, Lcom/google/android/accounts/Account;

    invoke-direct {v2, v0, v1}, Lcom/google/android/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method private getSummary(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .registers 4
    .parameter "cursor"

    .prologue
    .line 143
    const/4 v1, 0x7

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, summary:Ljava/lang/String;
    if-eqz v0, :cond_c

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    :goto_b
    return-object v1

    :cond_c
    const-string v1, ""

    goto :goto_b
.end method

.method private getTitle(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .registers 10
    .parameter "cursor"

    .prologue
    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 122
    const/4 v3, 0x4

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 123
    .local v1, title:Ljava/lang/String;
    const/4 v3, 0x5

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 124
    .local v2, unreadCount:I
    const/4 v3, 0x6

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 125
    .local v0, maxUnreadCount:I
    if-eqz v1, :cond_42

    .line 126
    if-lez v2, :cond_40

    .line 127
    if-ge v2, v0, :cond_2c

    .line 128
    iget-object v3, p0, Lcom/google/android/apps/reader/widget/OverviewAdapter;->mContext:Landroid/content/Context;

    const v4, 0x7f0d0130

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 138
    :goto_2b
    return-object v3

    .line 131
    :cond_2c
    iget-object v3, p0, Lcom/google/android/apps/reader/widget/OverviewAdapter;->mContext:Landroid/content/Context;

    const v4, 0x7f0d0131

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2b

    :cond_40
    move-object v3, v1

    .line 135
    goto :goto_2b

    .line 138
    :cond_42
    const-string v3, ""

    goto :goto_2b
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 13
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/16 v8, 0x8

    .line 93
    const v6, 0x1020014

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 94
    .local v3, text1:Landroid/widget/TextView;
    const v6, 0x1020015

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 95
    .local v4, text2:Landroid/widget/TextView;
    const v6, 0x1020006

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 97
    .local v0, icon:Landroid/widget/ImageView;
    invoke-direct {p0, p3}, Lcom/google/android/apps/reader/widget/OverviewAdapter;->getTitle(Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 98
    .local v5, title:Ljava/lang/CharSequence;
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    invoke-direct {p0, p3}, Lcom/google/android/apps/reader/widget/OverviewAdapter;->getSummary(Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 101
    .local v2, summary:Ljava/lang/CharSequence;
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 104
    .local v1, imageUrl:Ljava/lang/String;
    if-eqz v1, :cond_51

    .line 105
    sget-object v6, Lcom/google/android/apps/reader/widget/OverviewAdapter$1;->$SwitchMap$com$google$android$imageloader$ImageLoader$BindResult:[I

    iget-object v7, p0, Lcom/google/android/apps/reader/widget/OverviewAdapter;->mImageLoader:Lcom/google/android/imageloader/ImageLoader;

    invoke-virtual {v7, p0, v0, v1}, Lcom/google/android/imageloader/ImageLoader;->bind(Landroid/widget/BaseAdapter;Landroid/widget/ImageView;Ljava/lang/String;)Lcom/google/android/imageloader/ImageLoader$BindResult;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/imageloader/ImageLoader$BindResult;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_56

    .line 119
    :goto_42
    return-void

    .line 107
    :pswitch_43
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_42

    .line 110
    :pswitch_48
    const/4 v6, 0x4

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_42

    .line 113
    :pswitch_4d
    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_42

    .line 117
    :cond_51
    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_42

    .line 105
    nop

    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_43
        :pswitch_48
        :pswitch_4d
    .end packed-switch
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
    .line 148
    sget-object v3, Lcom/google/android/apps/reader/widget/OverviewAdapter;->PROJECTION:[Ljava/lang/String;

    .line 149
    .local v3, projection:[Ljava/lang/String;
    const-string v4, "sid LIKE \'feed/%\'"

    .line 150
    .local v4, selection:Ljava/lang/String;
    const/4 v5, 0x0

    .line 151
    .local v5, selectionArgs:[Ljava/lang/String;
    const-string v6, "position ASC"

    .line 152
    .local v6, sortOrder:Ljava/lang/String;
    new-instance v0, Landroid/support/v4/content/CursorLoader;

    iget-object v1, p0, Lcom/google/android/apps/reader/widget/OverviewAdapter;->mContext:Landroid/content/Context;

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public newIntent(Ljava/lang/String;Landroid/database/Cursor;)Landroid/content/Intent;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 79
    invoke-direct {p0, p2}, Lcom/google/android/apps/reader/widget/OverviewAdapter;->getAccount(Landroid/database/Cursor;)Lcom/google/android/accounts/Account;

    move-result-object v0

    .line 80
    const/4 v1, 0x3

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 81
    invoke-static {v0, v1}, Lcom/google/android/apps/reader/provider/ReaderContract$Streams;->itemUri(Lcom/google/android/accounts/Account;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 82
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 84
    const/4 v0, 0x4

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 85
    if-eqz v0, :cond_1e

    .line 86
    const-string v2, "android.intent.extra.TITLE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    :cond_1e
    return-object v1
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 68
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 69
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f030028

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method
