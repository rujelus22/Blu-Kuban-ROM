.class public Lcom/google/android/apps/reader/widget/RecommendationListAdapter;
.super Landroid/support/v4/widget/CursorAdapter;
.source "RecommendationListAdapter.java"


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final COLUMN_ACCOUNT_NAME:I = 0x3

.field private static final COLUMN_ACCOUNT_TYPE:I = 0x4

.field private static final COLUMN_STREAM:I = 0x2

.field private static final COLUMN_TITLE:I = 0x1

.field private static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 41
    const-class v0, Lcom/google/android/apps/reader/widget/RecommendationListAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_2a

    move v0, v3

    :goto_b
    sput-boolean v0, Lcom/google/android/apps/reader/widget/RecommendationListAdapter;->$assertionsDisabled:Z

    .line 43
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "title"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "account_name"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "account_type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/reader/widget/RecommendationListAdapter;->PROJECTION:[Ljava/lang/String;

    return-void

    :cond_2a
    move v0, v2

    .line 41
    goto :goto_b
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 57
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v4/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 58
    return-void
.end method

.method private static getAccount(Landroid/database/Cursor;)Lcom/google/android/accounts/Account;
    .registers 4
    .parameter "cursor"

    .prologue
    .line 107
    const/4 v2, 0x3

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, accountName:Ljava/lang/String;
    const/4 v2, 0x4

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 109
    .local v1, accountType:Ljava/lang/String;
    new-instance v2, Lcom/google/android/accounts/Account;

    invoke-direct {v2, v0, v1}, Lcom/google/android/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 7
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 89
    const v2, 0x1020014

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 90
    .local v0, text1:Landroid/widget/TextView;
    const/4 v2, 0x1

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 91
    .local v1, title:Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
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

    .line 73
    sget-boolean v0, Lcom/google/android/apps/reader/widget/RecommendationListAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_2f

    sget-object v0, Lcom/google/android/apps/reader/provider/ReaderContract$Recommendations;->CONTENT_ITEM_TYPE:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/apps/reader/widget/RecommendationListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    sget-object v0, Lcom/google/android/apps/reader/provider/ReaderContract$Recommendations;->CONTENT_TYPE:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/apps/reader/widget/RecommendationListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 75
    :cond_2f
    new-instance v0, Landroid/support/v4/content/CursorLoader;

    iget-object v1, p0, Lcom/google/android/apps/reader/widget/RecommendationListAdapter;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/google/android/apps/reader/widget/RecommendationListAdapter;->PROJECTION:[Ljava/lang/String;

    move-object v2, p1

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public findStream(Ljava/lang/String;)Landroid/database/Cursor;
    .registers 5
    .parameter "streamId"

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/google/android/apps/reader/widget/RecommendationListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 96
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_1d

    .line 97
    const/4 v1, 0x0

    .local v1, position:I
    :goto_7
    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 98
    const/4 v2, 0x2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1a

    move-object v2, v0

    .line 103
    .end local v1           #position:I
    :goto_19
    return-object v2

    .line 97
    .restart local v1       #position:I
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 103
    .end local v1           #position:I
    :cond_1d
    const/4 v2, 0x0

    goto :goto_19
.end method

.method public newItemsIntent(Ljava/lang/String;Landroid/database/Cursor;)Landroid/content/Intent;
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 61
    invoke-static {p2}, Lcom/google/android/apps/reader/widget/RecommendationListAdapter;->getAccount(Landroid/database/Cursor;)Lcom/google/android/accounts/Account;

    move-result-object v0

    .line 62
    const/4 v1, 0x2

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 63
    const/4 v2, 0x1

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 64
    const/4 v3, 0x0

    .line 65
    const-string v4, "newest"

    .line 66
    invoke-static {v0, v1, v3, v4}, Lcom/google/android/apps/reader/provider/ReaderContract$Items;->streamUri(Lcom/google/android/accounts/Account;Ljava/lang/String;ZLjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 67
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 68
    const-string v0, "android.intent.extra.TITLE"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    return-object v1
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 80
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 81
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f030040

    const/4 v4, 0x0

    invoke-virtual {v1, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 82
    .local v2, view:Landroid/view/View;
    const v3, 0x1020006

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 83
    .local v0, icon:Landroid/widget/ImageView;
    const v3, 0x7f020075

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 84
    return-object v2
.end method
