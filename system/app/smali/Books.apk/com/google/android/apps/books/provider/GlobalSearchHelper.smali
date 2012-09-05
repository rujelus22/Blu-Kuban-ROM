.class public Lcom/google/android/apps/books/provider/GlobalSearchHelper;
.super Ljava/lang/Object;
.source "GlobalSearchHelper.java"


# static fields
.field private static final GLOBAL_SEARCH_PROJECTION:[Ljava/lang/String;

.field private static final THUMBNAIL_URL_SQL:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 26
    invoke-static {}, Lcom/google/android/apps/books/provider/GlobalSearchHelper;->createDefaultProjection()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/books/provider/GlobalSearchHelper;->GLOBAL_SEARCH_PROJECTION:[Ljava/lang/String;

    .line 28
    const-string v0, "account_name"

    const-string v1, "volume_id"

    invoke-static {v0, v1}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->buildCoverThumbnailUriSql(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/books/provider/GlobalSearchHelper;->THUMBNAIL_URL_SQL:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/google/android/apps/books/provider/GlobalSearchHelper;->mContext:Landroid/content/Context;

    .line 39
    return-void
.end method

.method private static createDefaultProjection()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .local v0, projection:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "_id"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    const-string v1, "suggest_text_1"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    const-string v1, "suggest_text_2"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    const-string v1, "suggest_icon_1"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    const-string v1, "suggest_intent_data_id"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    const-string v1, "suggest_intent_extra_data"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    const-string v1, "suggest_shortcut_id"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    const-string v1, "suggest_last_access_hint"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method private getAccount(ILandroid/net/Uri;)Ljava/lang/String;
    .registers 8
    .parameter "match"
    .parameter "uri"

    .prologue
    const/4 v3, 0x0

    .line 130
    iget-object v4, p0, Lcom/google/android/apps/books/provider/GlobalSearchHelper;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/google/android/apps/books/util/AccountUtils;->findIntentAccount(Landroid/content/Context;Landroid/accounts/Account;)Lcom/google/android/apps/books/util/AccountUtils$FindAccountResult;

    move-result-object v1

    .line 132
    .local v1, result:Lcom/google/android/apps/books/util/AccountUtils$FindAccountResult;
    iget-object v4, v1, Lcom/google/android/apps/books/util/AccountUtils$FindAccountResult;->account:Landroid/accounts/Account;

    if-eqz v4, :cond_28

    .line 133
    const/16 v4, 0x1f6

    if-ne p1, v4, :cond_29

    .line 135
    invoke-virtual {p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 136
    .local v0, pathSegments:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 137
    .local v2, shortcutAccount:Ljava/lang/String;
    iget-object v4, v1, Lcom/google/android/apps/books/util/AccountUtils$FindAccountResult;->account:Landroid/accounts/Account;

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 138
    iget-object v3, v1, Lcom/google/android/apps/books/util/AccountUtils$FindAccountResult;->account:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 144
    .end local v0           #pathSegments:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v2           #shortcutAccount:Ljava/lang/String;
    :cond_28
    :goto_28
    return-object v3

    .line 141
    :cond_29
    iget-object v3, v1, Lcom/google/android/apps/books/util/AccountUtils$FindAccountResult;->account:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    goto :goto_28
.end method

.method private getVolumeId(ILandroid/net/Uri;)Ljava/lang/String;
    .registers 4
    .parameter "match"
    .parameter "uri"

    .prologue
    .line 121
    const/16 v0, 0x1f6

    if-ne p1, v0, :cond_9

    .line 122
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 124
    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method


# virtual methods
.method public getLimit(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3
    .parameter "uri"

    .prologue
    .line 85
    const-string v0, "limit"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQuery(ILandroid/net/Uri;)Ljava/lang/String;
    .registers 4
    .parameter "match"
    .parameter "uri"

    .prologue
    .line 69
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_9

    .line 70
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 72
    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getQueryProjection([Ljava/lang/String;)[Ljava/lang/String;
    .registers 2
    .parameter "projection"

    .prologue
    .line 61
    if-nez p1, :cond_4

    .line 62
    sget-object p1, Lcom/google/android/apps/books/provider/GlobalSearchHelper;->GLOBAL_SEARCH_PROJECTION:[Ljava/lang/String;

    .line 64
    .end local p1
    :cond_4
    return-object p1
.end method

.method public getSelectionBuilder(ILandroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;
    .registers 12
    .parameter "match"
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 91
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/books/provider/GlobalSearchHelper;->getAccount(ILandroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, account:Ljava/lang/String;
    if-nez v0, :cond_a

    .line 93
    const/4 v1, 0x0

    .line 117
    :goto_9
    return-object v1

    .line 96
    :cond_a
    new-instance v1, Lcom/google/android/apps/books/util/SelectionBuilder;

    invoke-direct {v1}, Lcom/google/android/apps/books/util/SelectionBuilder;-><init>()V

    .line 97
    .local v1, builder:Lcom/google/android/apps/books/util/SelectionBuilder;
    invoke-virtual {v1, p3, p4}, Lcom/google/android/apps/books/util/SelectionBuilder;->where(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    .line 98
    const-string v3, "account_name=?"

    new-array v4, v6, [Ljava/lang/String;

    aput-object v0, v4, v5

    invoke-virtual {v1, v3, v4}, Lcom/google/android/apps/books/util/SelectionBuilder;->where(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    .line 100
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/books/provider/GlobalSearchHelper;->getVolumeId(ILandroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 101
    .local v2, volumeId:Ljava/lang/String;
    if-eqz v2, :cond_2a

    .line 102
    const-string v3, "volume_id=?"

    new-array v4, v6, [Ljava/lang/String;

    aput-object v2, v4, v5

    invoke-virtual {v1, v3, v4}, Lcom/google/android/apps/books/util/SelectionBuilder;->where(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    .line 104
    :cond_2a
    const/16 v3, 0x1f5

    if-ne p1, v3, :cond_35

    .line 105
    const-string v3, "last_access IS NOT NULL"

    new-array v4, v5, [Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/google/android/apps/books/util/SelectionBuilder;->where(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    .line 108
    :cond_35
    const-string v3, "suggest_text_1"

    const-string v4, "title"

    invoke-virtual {v1, v3, v4}, Lcom/google/android/apps/books/util/SelectionBuilder;->map(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    .line 109
    const-string v3, "suggest_text_2"

    const-string v4, "creator"

    invoke-virtual {v1, v3, v4}, Lcom/google/android/apps/books/util/SelectionBuilder;->map(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    .line 110
    const-string v3, "suggest_icon_1"

    sget-object v4, Lcom/google/android/apps/books/provider/GlobalSearchHelper;->THUMBNAIL_URL_SQL:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/google/android/apps/books/util/SelectionBuilder;->map(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    .line 111
    const-string v3, "suggest_intent_data_id"

    const-string v4, "volume_id"

    invoke-virtual {v1, v3, v4}, Lcom/google/android/apps/books/util/SelectionBuilder;->map(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    .line 112
    const-string v3, "suggest_intent_extra_data"

    const-string v4, "account_name"

    invoke-virtual {v1, v3, v4}, Lcom/google/android/apps/books/util/SelectionBuilder;->map(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    .line 113
    const-string v3, "suggest_shortcut_id"

    const-string v4, "account_name || \'/\' || volume_id"

    invoke-virtual {v1, v3, v4}, Lcom/google/android/apps/books/util/SelectionBuilder;->map(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    .line 114
    const-string v3, "suggest_last_access_hint"

    const-string v4, "last_access"

    invoke-virtual {v1, v3, v4}, Lcom/google/android/apps/books/util/SelectionBuilder;->map(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    goto :goto_9
.end method

.method public getSortOrder(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "sortOrder"

    .prologue
    .line 77
    if-nez p1, :cond_4

    .line 78
    const-string p1, "last_interaction DESC"

    .line 80
    .end local p1
    :cond_4
    return-object p1
.end method

.method public isGlobalSearch(I)Z
    .registers 3
    .parameter "match"

    .prologue
    .line 55
    const/16 v0, 0x1f5

    if-eq p1, v0, :cond_c

    const/16 v0, 0x1f4

    if-eq p1, v0, :cond_c

    const/16 v0, 0x1f6

    if-ne p1, v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method
