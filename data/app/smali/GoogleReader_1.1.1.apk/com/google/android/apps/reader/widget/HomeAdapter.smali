.class public Lcom/google/android/apps/reader/widget/HomeAdapter;
.super Lcom/google/android/apps/reader/widget/StreamListAdapter;
.source "HomeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/reader/widget/HomeAdapter$1;,
        Lcom/google/android/apps/reader/widget/HomeAdapter$UnreadCountsDataSetObserver;
    }
.end annotation


# static fields
.field private static final GROUP_COLLAPSED_STATE_SET:[I = null

.field private static final GROUP_EXPANDED_STATE_SET:[I = null

.field public static final ITEM_EXPLORE:Ljava/lang/Object; = null

.field public static final ITEM_HOME:Ljava/lang/Object; = null

.field public static final ITEM_SUBSCRIPTIONS:Ljava/lang/Object; = null

.field public static final PARAM_FILTERED:Ljava/lang/String; = "filtered"

.field private static final VIEW_TYPE_COUNT:I = 0x3

.field private static final VIEW_TYPE_EMPTY:I = 0x2

.field private static final VIEW_TYPE_HEADER:I = 0x0

.field private static final VIEW_TYPE_ITEM:I = 0x1


# instance fields
.field private mExpanded:Z

.field private final mKeysCollapsed:[Ljava/lang/String;

.field private final mKeysExpanded:[Ljava/lang/String;

.field private final mLabelsCollapsed:[Ljava/lang/String;

.field private final mLabelsExpanded:[Ljava/lang/String;

.field private final mLayoutsCollapsed:[I

.field private final mLayoutsExpanded:[I

.field private final mOnClickListener:Landroid/view/View$OnClickListener;

.field private mShowAllSubscriptions:Z

.field private final mUnreadCounts:Lcom/google/android/apps/reader/widget/UnreadCountsQuery;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 60
    const-string v0, "home"

    sput-object v0, Lcom/google/android/apps/reader/widget/HomeAdapter;->ITEM_HOME:Ljava/lang/Object;

    .line 62
    const-string v0, "explore"

    sput-object v0, Lcom/google/android/apps/reader/widget/HomeAdapter;->ITEM_EXPLORE:Ljava/lang/Object;

    .line 64
    const-string v0, "subscriptions"

    sput-object v0, Lcom/google/android/apps/reader/widget/HomeAdapter;->ITEM_SUBSCRIPTIONS:Ljava/lang/Object;

    .line 82
    new-array v0, v2, [I

    sput-object v0, Lcom/google/android/apps/reader/widget/HomeAdapter;->GROUP_COLLAPSED_STATE_SET:[I

    .line 85
    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x10100a8

    aput v1, v0, v2

    sput-object v0, Lcom/google/android/apps/reader/widget/HomeAdapter;->GROUP_EXPANDED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/reader/widget/UnreadCountsQuery;Landroid/view/View$OnClickListener;)V
    .registers 8
    .parameter "context"
    .parameter "unreadCounts"
    .parameter "onClickListener"

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lcom/google/android/apps/reader/widget/StreamListAdapter;-><init>(Landroid/content/Context;)V

    .line 124
    iput-object p2, p0, Lcom/google/android/apps/reader/widget/HomeAdapter;->mUnreadCounts:Lcom/google/android/apps/reader/widget/UnreadCountsQuery;

    .line 125
    iput-object p3, p0, Lcom/google/android/apps/reader/widget/HomeAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 126
    iget-object v1, p0, Lcom/google/android/apps/reader/widget/HomeAdapter;->mUnreadCounts:Lcom/google/android/apps/reader/widget/UnreadCountsQuery;

    new-instance v2, Lcom/google/android/apps/reader/widget/HomeAdapter$UnreadCountsDataSetObserver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/google/android/apps/reader/widget/HomeAdapter$UnreadCountsDataSetObserver;-><init>(Lcom/google/android/apps/reader/widget/HomeAdapter;Lcom/google/android/apps/reader/widget/HomeAdapter$1;)V

    invoke-virtual {v1, v2}, Lcom/google/android/apps/reader/widget/UnreadCountsQuery;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 127
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 128
    .local v0, resources:Landroid/content/res/Resources;
    const v1, 0x7f070003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/reader/widget/HomeAdapter;->mKeysExpanded:[Ljava/lang/String;

    .line 129
    const/high16 v1, 0x7f07

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/reader/widget/HomeAdapter;->mKeysCollapsed:[Ljava/lang/String;

    .line 130
    const v1, 0x7f070004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/reader/widget/HomeAdapter;->mLabelsExpanded:[Ljava/lang/String;

    .line 131
    const v1, 0x7f070001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/reader/widget/HomeAdapter;->mLabelsCollapsed:[Ljava/lang/String;

    .line 132
    const v1, 0x7f070005

    invoke-static {v0, v1}, Lcom/google/android/apps/reader/widget/HomeAdapter;->getResourceIdArray(Landroid/content/res/Resources;I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/reader/widget/HomeAdapter;->mLayoutsExpanded:[I

    .line 133
    const v1, 0x7f070002

    invoke-static {v0, v1}, Lcom/google/android/apps/reader/widget/HomeAdapter;->getResourceIdArray(Landroid/content/res/Resources;I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/reader/widget/HomeAdapter;->mLayoutsCollapsed:[I

    .line 134
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/apps/reader/widget/HomeAdapter;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/google/android/apps/reader/widget/HomeAdapter;->mDataValid:Z

    return v0
.end method

.method private createExploreStreamId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 475
    invoke-direct {p0}, Lcom/google/android/apps/reader/widget/HomeAdapter;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 476
    .local v0, language:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/apps/reader/widget/HomeAdapter;->getUserId()Ljava/lang/String;

    move-result-object v1

    .line 477
    .local v1, userId:Ljava/lang/String;
    if-eqz v1, :cond_f

    .line 478
    invoke-static {v1, v0}, Lcom/google/android/apps/reader/provider/ReaderStream;->createSplicedRecommendationsStreamId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 480
    :goto_e
    return-object v2

    :cond_f
    const-string v2, "top"

    invoke-static {v2, v0}, Lcom/google/android/apps/reader/provider/ReaderStream;->createPopularStreamId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_e
.end method

.method private findLabel(Ljava/lang/Object;)Ljava/lang/String;
    .registers 5
    .parameter "item"

    .prologue
    .line 485
    invoke-virtual {p0}, Lcom/google/android/apps/reader/widget/HomeAdapter;->getCount()I

    move-result v0

    .line 486
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, position:I
    :goto_5
    if-ge v1, v0, :cond_19

    .line 487
    invoke-virtual {p0, v1}, Lcom/google/android/apps/reader/widget/HomeAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 488
    invoke-virtual {p0, v1}, Lcom/google/android/apps/reader/widget/HomeAdapter;->getLabel(I)Ljava/lang/String;

    move-result-object v2

    .line 491
    :goto_15
    return-object v2

    .line 486
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 491
    :cond_19
    const/4 v2, 0x0

    goto :goto_15
.end method

.method private getAccount()Lcom/google/android/accounts/Account;
    .registers 3

    .prologue
    .line 179
    invoke-direct {p0}, Lcom/google/android/apps/reader/widget/HomeAdapter;->getCursorExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.google.reader.cursor.extra.ACCOUNT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/accounts/Account;

    return-object p0
.end method

.method private getCursorExtras()Landroid/os/Bundle;
    .registers 3

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/google/android/apps/reader/widget/HomeAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 171
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

.method private getKey(I)Ljava/lang/String;
    .registers 5
    .parameter "position"

    .prologue
    const/4 v2, 0x0

    .line 377
    invoke-direct {p0}, Lcom/google/android/apps/reader/widget/HomeAdapter;->isFiltered()Z

    move-result v1

    if-eqz v1, :cond_9

    move-object v1, v2

    .line 384
    :goto_8
    return-object v1

    .line 380
    :cond_9
    iget-boolean v1, p0, Lcom/google/android/apps/reader/widget/HomeAdapter;->mExpanded:Z

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/google/android/apps/reader/widget/HomeAdapter;->mKeysExpanded:[Ljava/lang/String;

    move-object v0, v1

    .line 381
    .local v0, keys:[Ljava/lang/String;
    :goto_10
    if-ltz p1, :cond_1c

    array-length v1, v0

    if-ge p1, v1, :cond_1c

    .line 382
    aget-object v1, v0, p1

    goto :goto_8

    .line 380
    .end local v0           #keys:[Ljava/lang/String;
    :cond_18
    iget-object v1, p0, Lcom/google/android/apps/reader/widget/HomeAdapter;->mKeysCollapsed:[Ljava/lang/String;

    move-object v0, v1

    goto :goto_10

    .restart local v0       #keys:[Ljava/lang/String;
    :cond_1c
    move-object v1, v2

    .line 384
    goto :goto_8
.end method

.method private getLanguage()Ljava/lang/String;
    .registers 5

    .prologue
    .line 463
    iget-object v3, p0, Lcom/google/android/apps/reader/widget/HomeAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 464
    .local v2, resources:Landroid/content/res/Resources;
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 465
    .local v0, configuration:Landroid/content/res/Configuration;
    iget-object v3, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 466
    .local v1, language:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_18

    move-object v3, v1

    .line 469
    :goto_17
    return-object v3

    :cond_18
    const-string v3, "en"

    goto :goto_17
.end method

.method private getLayout(I)I
    .registers 5
    .parameter "position"

    .prologue
    const/4 v2, 0x0

    .line 404
    invoke-direct {p0}, Lcom/google/android/apps/reader/widget/HomeAdapter;->isFiltered()Z

    move-result v1

    if-eqz v1, :cond_9

    move v1, v2

    .line 411
    :goto_8
    return v1

    .line 407
    :cond_9
    iget-boolean v1, p0, Lcom/google/android/apps/reader/widget/HomeAdapter;->mExpanded:Z

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/google/android/apps/reader/widget/HomeAdapter;->mLayoutsExpanded:[I

    move-object v0, v1

    .line 408
    .local v0, layouts:[I
    :goto_10
    if-ltz p1, :cond_1c

    array-length v1, v0

    if-ge p1, v1, :cond_1c

    .line 409
    aget v1, v0, p1

    goto :goto_8

    .line 407
    .end local v0           #layouts:[I
    :cond_18
    iget-object v1, p0, Lcom/google/android/apps/reader/widget/HomeAdapter;->mLayoutsCollapsed:[I

    move-object v0, v1

    goto :goto_10

    .restart local v0       #layouts:[I
    :cond_1c
    move v1, v2

    .line 411
    goto :goto_8
.end method

.method private static getResourceIdArray(Landroid/content/res/Resources;I)[I
    .registers 7
    .parameter "resources"
    .parameter "resourceId"

    .prologue
    .line 88
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 90
    .local v3, typedArray:Landroid/content/res/TypedArray;
    :try_start_4
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    .line 91
    .local v1, length:I
    new-array v2, v1, [I

    .line 92
    .local v2, resourceIds:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_b
    if-ge v0, v1, :cond_17

    .line 93
    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    aput v4, v2, v0
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_1b

    .line 92
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 97
    :cond_17
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    return-object v2

    .end local v0           #i:I
    .end local v1           #length:I
    .end local v2           #resourceIds:[I
    :catchall_1b
    move-exception v4

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    throw v4
.end method

.method private getUri()Landroid/net/Uri;
    .registers 3

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/google/android/apps/reader/widget/HomeAdapter;->getCursorExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.google.reader.cursor.extra.URI"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/net/Uri;

    return-object p0
.end method

.method private hasAccount()Z
    .registers 3

    .prologue
    .line 183
    invoke-direct {p0}, Lcom/google/android/apps/reader/widget/HomeAdapter;->getAccount()Lcom/google/android/accounts/Account;

    move-result-object v0

    .line 184
    .local v0, account:Lcom/google/android/accounts/Account;
    if-eqz v0, :cond_8

    const/4 v1, 0x1

    :goto_7
    return v1

    :cond_8
    const/4 v1, 0x0

    goto :goto_7
.end method

.method private hasError()Z
    .registers 3

    .prologue
    .line 188
    invoke-direct {p0}, Lcom/google/android/apps/reader/widget/HomeAdapter;->getCursorExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.google.feeds.cursor.extra.ERROR"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isFiltered()Z
    .registers 3

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/google/android/apps/reader/widget/HomeAdapter;->getUri()Landroid/net/Uri;

    move-result-object v0

    .line 193
    .local v0, uri:Landroid/net/Uri;
    if-eqz v0, :cond_10

    const-string v1, "filtered"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_10

    const/4 v1, 0x1

    :goto_f
    return v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method private newErrorView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6
    .parameter "inflater"
    .parameter "parent"

    .prologue
    .line 338
    const v1, 0x7f030011

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 339
    .local v0, view:Landroid/view/View;
    const v1, 0x7f0b002f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/reader/widget/HomeAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 340
    return-object v0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .registers 2

    .prologue
    .line 247
    const/4 v0, 0x0

    return v0
.end method

.method public createLoader(Lcom/google/android/accounts/Account;ZZLjava/lang/CharSequence;)Landroid/support/v4/content/Loader;
    .registers 16
    .parameter "account"
    .parameter "sortSubscriptionsAlpha"
    .parameter "showAllSubscriptions"
    .parameter "constraint"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/accounts/Account;",
            "ZZ",
            "Ljava/lang/CharSequence;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 138
    sget-object v0, Lcom/google/android/apps/reader/provider/ReaderContract$Streams$Filter;->ROOT:Lcom/google/android/apps/reader/provider/ReaderContract$Streams$Filter;

    invoke-static {p1, v0}, Lcom/google/android/apps/reader/provider/ReaderContract$Streams;->contentUri(Lcom/google/android/accounts/Account;Lcom/google/android/apps/reader/provider/ReaderContract$Streams$Filter;)Landroid/net/Uri;

    move-result-object v2

    .line 139
    .local v2, uri:Landroid/net/Uri;
    sget-object v3, Lcom/google/android/apps/reader/widget/HomeAdapter;->PROJECTION:[Ljava/lang/String;

    .line 140
    .local v3, projection:[Ljava/lang/String;
    const-string v4, "id LIKE \'feed/%\' OR id LIKE \'webfeed/%\' OR id LIKE \'%/label/%\'"

    .line 141
    .local v4, selection:Ljava/lang/String;
    sget-object v5, Lcom/google/android/apps/reader/widget/HomeAdapter;->SELECTION_ARGS:[Ljava/lang/String;

    .line 142
    .local v5, selectionArgs:[Ljava/lang/String;
    if-eqz p2, :cond_76

    const-string v0, "sort_key_alpha"

    move-object v6, v0

    .line 143
    .local v6, orderBy:Ljava/lang/String;
    :goto_11
    if-nez p3, :cond_38

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "unread_count"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " != 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 146
    :cond_38
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6e

    .line 147
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "filtered"

    const-string v10, "true"

    invoke-virtual {v0, v1, v10}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 159
    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 160
    .local v7, escapedConstraint:Ljava/lang/String;
    const-string v8, "(^1) AND (^2 LIKE (^3 || \'%\') OR ^2 LIKE (\'% \' || ^3 || \'%\'))"

    .line 161
    .local v8, template:Ljava/lang/String;
    const/4 v0, 0x3

    new-array v9, v0, [Ljava/lang/CharSequence;

    const/4 v0, 0x0

    aput-object v4, v9, v0

    const/4 v0, 0x1

    const-string v1, "label"

    aput-object v1, v9, v0

    const/4 v0, 0x2

    aput-object v7, v9, v0

    .line 164
    .local v9, values:[Ljava/lang/CharSequence;
    invoke-static {v8, v9}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 166
    .end local v7           #escapedConstraint:Ljava/lang/String;
    .end local v8           #template:Ljava/lang/String;
    .end local v9           #values:[Ljava/lang/CharSequence;
    :cond_6e
    new-instance v0, Landroid/support/v4/content/CursorLoader;

    iget-object v1, p0, Lcom/google/android/apps/reader/widget/HomeAdapter;->mContext:Landroid/content/Context;

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 142
    .end local v6           #orderBy:Ljava/lang/String;
    :cond_76
    const-string v0, "sort_key_manual"

    move-object v6, v0

    goto :goto_11
.end method

.method public getCount()I
    .registers 4

    .prologue
    .line 198
    invoke-direct {p0}, Lcom/google/android/apps/reader/widget/HomeAdapter;->isFiltered()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 199
    invoke-super {p0}, Lcom/google/android/apps/reader/widget/StreamListAdapter;->getCount()I

    move-result v2

    .line 211
    :goto_a
    return v2

    .line 201
    :cond_b
    iget-boolean v2, p0, Lcom/google/android/apps/reader/widget/HomeAdapter;->mDataValid:Z

    if-eqz v2, :cond_27

    .line 202
    iget-boolean v2, p0, Lcom/google/android/apps/reader/widget/HomeAdapter;->mExpanded:Z

    if-eqz v2, :cond_23

    iget-object v2, p0, Lcom/google/android/apps/reader/widget/HomeAdapter;->mKeysExpanded:[Ljava/lang/String;

    move-object v1, v2

    .line 203
    .local v1, keys:[Ljava/lang/String;
    :goto_16
    array-length v0, v1

    .line 204
    .local v0, count:I
    invoke-super {p0}, Lcom/google/android/apps/reader/widget/StreamListAdapter;->getCount()I

    move-result v2

    add-int/2addr v0, v2

    .line 205
    array-length v2, v1

    if-ne v0, v2, :cond_21

    .line 207
    add-int/lit8 v0, v0, 0x1

    :cond_21
    move v2, v0

    .line 209
    goto :goto_a

    .line 202
    .end local v0           #count:I
    .end local v1           #keys:[Ljava/lang/String;
    :cond_23
    iget-object v2, p0, Lcom/google/android/apps/reader/widget/HomeAdapter;->mKeysCollapsed:[Ljava/lang/String;

    move-object v1, v2

    goto :goto_16

    .line 211
    :cond_27
    const/4 v2, 0x0

    goto :goto_a
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 5
    .parameter "position"

    .prologue
    .line 345
    invoke-direct {p0}, Lcom/google/android/apps/reader/widget/HomeAdapter;->isFiltered()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 346
    invoke-super {p0, p1}, Lcom/google/android/apps/reader/widget/StreamListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    .line 357
    :goto_a
    return-object v2

    .line 348
    :cond_b
    iget-boolean v2, p0, Lcom/google/android/apps/reader/widget/HomeAdapter;->mExpanded:Z

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lcom/google/android/apps/reader/widget/HomeAdapter;->mKeysExpanded:[Ljava/lang/String;

    move-object v1, v2

    .line 349
    .local v1, keys:[Ljava/lang/String;
    :goto_12
    array-length v2, v1

    if-ge p1, v2, :cond_1e

    .line 350
    invoke-direct {p0, p1}, Lcom/google/android/apps/reader/widget/HomeAdapter;->getKey(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_a

    .line 348
    .end local v1           #keys:[Ljava/lang/String;
    :cond_1a
    iget-object v2, p0, Lcom/google/android/apps/reader/widget/HomeAdapter;->mKeysCollapsed:[Ljava/lang/String;

    move-object v1, v2

    goto :goto_12

    .line 352
    .restart local v1       #keys:[Ljava/lang/String;
    :cond_1e
    array-length v2, v1

    sub-int/2addr p1, v2

    .line 353
    invoke-virtual {p0}, Lcom/google/android/apps/reader/widget/HomeAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 354
    .local v0, cursor:Landroid/database/Cursor;
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_2c

    move-object v2, v0

    .line 355
    goto :goto_a

    .line 357
    :cond_2c
    const/4 v2, 0x0

    goto :goto_a
.end method

.method public getItemId(I)J
    .registers 5
    .parameter "position"

    .prologue
    .line 364
    invoke-direct {p0}, Lcom/google/android/apps/reader/widget/HomeAdapter;->isFiltered()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 365
    invoke-super {p0, p1}, Lcom/google/android/apps/reader/widget/StreamListAdapter;->getItemId(I)J

    move-result-wide v1

    .line 372
    :goto_a
    return-wide v1

    .line 367
    :cond_b
    iget-boolean v1, p0, Lcom/google/android/apps/reader/widget/HomeAdapter;->mExpanded:Z

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/google/android/apps/reader/widget/HomeAdapter;->mKeysExpanded:[Ljava/lang/String;

    move-object v0, v1

    .line 368
    .local v0, keys:[Ljava/lang/String;
    :goto_12
    array-length v1, v0

    if-ge p1, v1, :cond_25

    .line 369
    aget-object v1, v0, p1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-long v1, v1

    goto :goto_a

    .line 367
    .end local v0           #keys:[Ljava/lang/String;
    :cond_21
    iget-object v1, p0, Lcom/google/android/apps/reader/widget/HomeAdapter;->mKeysCollapsed:[Ljava/lang/String;

    move-object v0, v1

    goto :goto_12

    .line 371
    .restart local v0       #keys:[Ljava/lang/String;
    :cond_25
    array-length v1, v0

    sub-int/2addr p1, v1

    .line 372
    invoke-super {p0, p1}, Lcom/google/android/apps/reader/widget/StreamListAdapter;->getItemId(I)J

    move-result-wide v1

    goto :goto_a
.end method

.method public getItemViewType(I)I
    .registers 6
    .parameter "position"

    .prologue
    const/4 v3, 0x1

    .line 222
    invoke-direct {p0}, Lcom/google/android/apps/reader/widget/HomeAdapter;->isFiltered()Z

    move-result v2

    if-eqz v2, :cond_9

    move v2, v3

    .line 240
    :goto_8
    return v2

    .line 225
    :cond_9
    iget-boolean v2, p0, Lcom/google/android/apps/reader/widget/HomeAdapter;->mExpanded:Z

    if-eqz v2, :cond_1b

    iget-object v2, p0, Lcom/google/android/apps/reader/widget/HomeAdapter;->mKeysExpanded:[Ljava/lang/String;

    move-object v1, v2

    .line 226
    .local v1, keys:[Ljava/lang/String;
    :goto_10
    array-length v2, v1

    if-ge p1, v2, :cond_2d

    .line 227
    invoke-virtual {p0, p1}, Lcom/google/android/apps/reader/widget/HomeAdapter;->isStream(I)Z

    move-result v2

    if-eqz v2, :cond_1f

    move v2, v3

    .line 228
    goto :goto_8

    .line 225
    .end local v1           #keys:[Ljava/lang/String;
    :cond_1b
    iget-object v2, p0, Lcom/google/android/apps/reader/widget/HomeAdapter;->mKeysCollapsed:[Ljava/lang/String;

    move-object v1, v2

    goto :goto_10

    .line 229
    .restart local v1       #keys:[Ljava/lang/String;
    :cond_1f
    invoke-virtual {p0, p1}, Lcom/google/android/apps/reader/widget/HomeAdapter;->isHeader(I)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 230
    const/4 v2, 0x0

    goto :goto_8

    .line 232
    :cond_27
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 235
    :cond_2d
    array-length v2, v1

    sub-int/2addr p1, v2

    .line 236
    invoke-virtual {p0}, Lcom/google/android/apps/reader/widget/HomeAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 237
    .local v0, cursor:Landroid/database/Cursor;
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_3b

    move v2, v3

    .line 238
    goto :goto_8

    .line 240
    :cond_3b
    const/4 v2, 0x2

    goto :goto_8
.end method

.method public getLabel(I)Ljava/lang/String;
    .registers 5
    .parameter "position"

    .prologue
    const/4 v2, 0x0

    .line 392
    invoke-direct {p0}, Lcom/google/android/apps/reader/widget/HomeAdapter;->isFiltered()Z

    move-result v1

    if-eqz v1, :cond_9

    move-object v1, v2

    .line 399
    :goto_8
    return-object v1

    .line 395
    :cond_9
    iget-boolean v1, p0, Lcom/google/android/apps/reader/widget/HomeAdapter;->mExpanded:Z

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/google/android/apps/reader/widget/HomeAdapter;->mLabelsExpanded:[Ljava/lang/String;

    move-object v0, v1

    .line 396
    .local v0, labels:[Ljava/lang/String;
    :goto_10
    if-ltz p1, :cond_1c

    array-length v1, v0

    if-ge p1, v1, :cond_1c

    .line 397
    aget-object v1, v0, p1

    goto :goto_8

    .line 395
    .end local v0           #labels:[Ljava/lang/String;
    :cond_18
    iget-object v1, p0, Lcom/google/android/apps/reader/widget/HomeAdapter;->mLabelsCollapsed:[Ljava/lang/String;

    move-object v0, v1

    goto :goto_10

    .restart local v0       #labels:[Ljava/lang/String;
    :cond_1c
    move-object v1, v2

    .line 399
    goto :goto_8
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 23
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 277
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/reader/widget/HomeAdapter;->isFiltered()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 278
    invoke-super/range {p0 .. p3}, Lcom/google/android/apps/reader/widget/StreamListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 325
    :goto_a
    return-object v5

    .line 280
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/reader/widget/HomeAdapter;->mExpanded:Z

    move v5, v0

    if-eqz v5, :cond_68

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/reader/widget/HomeAdapter;->mKeysExpanded:[Ljava/lang/String;

    move-object v5, v0

    move-object v14, v5

    .line 281
    .local v14, keys:[Ljava/lang/String;
    :goto_18
    array-length v5, v14

    move/from16 v0, p1

    move v1, v5

    if-ge v0, v1, :cond_b1

    .line 282
    invoke-direct/range {p0 .. p1}, Lcom/google/android/apps/reader/widget/HomeAdapter;->getLayout(I)I

    move-result v15

    .line 283
    .local v15, layout:I
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/apps/reader/widget/HomeAdapter;->getLabel(I)Ljava/lang/String;

    move-result-object v8

    .line 284
    .local v8, label:Ljava/lang/String;
    move-object/from16 v6, p2

    .line 285
    .local v6, view:Landroid/view/View;
    if-nez v6, :cond_38

    .line 286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/reader/widget/HomeAdapter;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v13

    .line 287
    .local v13, inflater:Landroid/view/LayoutInflater;
    const/4 v5, 0x0

    invoke-virtual {v13, v15, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 289
    .end local v13           #inflater:Landroid/view/LayoutInflater;
    :cond_38
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/apps/reader/widget/HomeAdapter;->isStream(I)Z

    move-result v5

    if-eqz v5, :cond_6f

    .line 290
    invoke-direct/range {p0 .. p1}, Lcom/google/android/apps/reader/widget/HomeAdapter;->getKey(I)Ljava/lang/String;

    move-result-object v7

    .line 291
    .local v7, streamId:Ljava/lang/String;
    const/16 v17, -0x1

    .line 292
    .local v17, subscriptionCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/reader/widget/HomeAdapter;->mUnreadCounts:Lcom/google/android/apps/reader/widget/UnreadCountsQuery;

    move-object v5, v0

    invoke-virtual {v5, v7}, Lcom/google/android/apps/reader/widget/UnreadCountsQuery;->getUnreadCount(Ljava/lang/String;)I

    move-result v9

    .line 293
    .local v9, unreadCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/reader/widget/HomeAdapter;->mUnreadCounts:Lcom/google/android/apps/reader/widget/UnreadCountsQuery;

    move-object v5, v0

    invoke-virtual {v5, v7}, Lcom/google/android/apps/reader/widget/UnreadCountsQuery;->getMaxUnreadCount(Ljava/lang/String;)I

    move-result v10

    .line 294
    .local v10, maxUnreadCount:I
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move-object v3, v5

    move/from16 v4, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/apps/reader/widget/HomeAdapter;->bindImageView(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v5, p0

    .line 295
    invoke-virtual/range {v5 .. v10}, Lcom/google/android/apps/reader/widget/HomeAdapter;->bindTextViews(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;II)V

    .end local v7           #streamId:Ljava/lang/String;
    .end local v9           #unreadCount:I
    .end local v10           #maxUnreadCount:I
    .end local v17           #subscriptionCount:I
    :cond_66
    :goto_66
    move-object v5, v6

    .line 308
    goto :goto_a

    .line 280
    .end local v6           #view:Landroid/view/View;
    .end local v8           #label:Ljava/lang/String;
    .end local v14           #keys:[Ljava/lang/String;
    .end local v15           #layout:I
    :cond_68
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/reader/widget/HomeAdapter;->mKeysCollapsed:[Ljava/lang/String;

    move-object v5, v0

    move-object v14, v5

    goto :goto_18

    .line 296
    .restart local v6       #view:Landroid/view/View;
    .restart local v8       #label:Ljava/lang/String;
    .restart local v14       #keys:[Ljava/lang/String;
    .restart local v15       #layout:I
    :cond_6f
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/apps/reader/widget/HomeAdapter;->isHeader(I)Z

    move-result v5

    if-eqz v5, :cond_66

    .line 297
    const v5, 0x1020014

    invoke-virtual {v6, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 298
    .local v18, text1:Landroid/widget/TextView;
    const v5, 0x1020006

    invoke-virtual {v6, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    .line 299
    .local v12, icon:Landroid/widget/ImageView;
    move-object/from16 v0, v18

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    if-nez p1, :cond_ac

    .line 301
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/reader/widget/HomeAdapter;->mExpanded:Z

    move v5, v0

    if-eqz v5, :cond_a7

    sget-object v5, Lcom/google/android/apps/reader/widget/HomeAdapter;->GROUP_EXPANDED_STATE_SET:[I

    move-object/from16 v16, v5

    .line 302
    .local v16, state:[I
    :goto_9a
    const/4 v5, 0x1

    move-object v0, v12

    move-object/from16 v1, v16

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setImageState([IZ)V

    .line 303
    const/4 v5, 0x0

    invoke-virtual {v12, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_66

    .line 301
    .end local v16           #state:[I
    :cond_a7
    sget-object v5, Lcom/google/android/apps/reader/widget/HomeAdapter;->GROUP_COLLAPSED_STATE_SET:[I

    move-object/from16 v16, v5

    goto :goto_9a

    .line 305
    :cond_ac
    const/4 v5, 0x4

    invoke-virtual {v12, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_66

    .line 310
    .end local v6           #view:Landroid/view/View;
    .end local v8           #label:Ljava/lang/String;
    .end local v12           #icon:Landroid/widget/ImageView;
    .end local v15           #layout:I
    .end local v18           #text1:Landroid/widget/TextView;
    :cond_b1
    array-length v5, v14

    sub-int p1, p1, v5

    .line 311
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/reader/widget/HomeAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v11

    .line 312
    .local v11, cursor:Landroid/database/Cursor;
    move-object v0, v11

    move/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v5

    if-eqz v5, :cond_c7

    .line 313
    invoke-super/range {p0 .. p3}, Lcom/google/android/apps/reader/widget/StreamListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    goto/16 :goto_a

    .line 314
    :cond_c7
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/reader/widget/HomeAdapter;->hasError()Z

    move-result v5

    if-eqz v5, :cond_e1

    .line 315
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/reader/widget/HomeAdapter;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v13

    .line 316
    .restart local v13       #inflater:Landroid/view/LayoutInflater;
    move-object/from16 v0, p0

    move-object v1, v13

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/reader/widget/HomeAdapter;->newErrorView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    goto/16 :goto_a

    .line 318
    .end local v13           #inflater:Landroid/view/LayoutInflater;
    :cond_e1
    move-object/from16 v0, p2

    check-cast v0, Landroid/widget/TextView;

    move-object v6, v0

    .line 319
    .local v6, view:Landroid/widget/TextView;
    if-nez v6, :cond_100

    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/reader/widget/HomeAdapter;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v13

    .line 321
    .restart local v13       #inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f030033

    const/4 v6, 0x0

    move-object v0, v13

    move v1, v5

    move-object/from16 v2, p3

    move v3, v6

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .end local v6           #view:Landroid/widget/TextView;
    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 323
    .end local v13           #inflater:Landroid/view/LayoutInflater;
    .restart local v6       #view:Landroid/widget/TextView;
    :cond_100
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/reader/widget/HomeAdapter;->mShowAllSubscriptions:Z

    move v5, v0

    if-eqz v5, :cond_114

    const v5, 0x7f0d0050

    :goto_10a
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/reader/widget/HomeAdapter;->getAccount()Lcom/google/android/accounts/Account;

    move-result-object v7

    invoke-static {v6, v5, v7}, Lcom/google/android/apps/reader/widget/ReaderLinks;->linkify(Landroid/widget/TextView;ILcom/google/android/accounts/Account;)V

    move-object v5, v6

    .line 325
    goto/16 :goto_a

    .line 323
    :cond_114
    const v5, 0x7f0d0054

    goto :goto_10a
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 217
    const/4 v0, 0x3

    return v0
.end method

.method public isEnabled(I)Z
    .registers 6
    .parameter "position"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 252
    invoke-direct {p0}, Lcom/google/android/apps/reader/widget/HomeAdapter;->isFiltered()Z

    move-result v1

    if-eqz v1, :cond_a

    move v1, v2

    .line 270
    :goto_9
    return v1

    .line 255
    :cond_a
    iget-boolean v1, p0, Lcom/google/android/apps/reader/widget/HomeAdapter;->mExpanded:Z

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/google/android/apps/reader/widget/HomeAdapter;->mKeysExpanded:[Ljava/lang/String;

    move-object v0, v1

    .line 256
    .local v0, keys:[Ljava/lang/String;
    :goto_11
    array-length v1, v0

    if-ge p1, v1, :cond_34

    .line 257
    invoke-virtual {p0, p1}, Lcom/google/android/apps/reader/widget/HomeAdapter;->isHeader(I)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 258
    if-nez p1, :cond_22

    move v1, v2

    goto :goto_9

    .line 255
    .end local v0           #keys:[Ljava/lang/String;
    :cond_1e
    iget-object v1, p0, Lcom/google/android/apps/reader/widget/HomeAdapter;->mKeysCollapsed:[Ljava/lang/String;

    move-object v0, v1

    goto :goto_11

    .restart local v0       #keys:[Ljava/lang/String;
    :cond_22
    move v1, v3

    .line 258
    goto :goto_9

    .line 259
    :cond_24
    invoke-virtual {p0, p1}, Lcom/google/android/apps/reader/widget/HomeAdapter;->isStream(I)Z

    move-result v1

    if-eqz v1, :cond_2c

    move v1, v2

    .line 260
    goto :goto_9

    .line 262
    :cond_2c
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unexpected item type"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 265
    :cond_34
    invoke-super {p0}, Lcom/google/android/apps/reader/widget/StreamListAdapter;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3c

    move v1, v3

    .line 267
    goto :goto_9

    :cond_3c
    move v1, v2

    .line 270
    goto :goto_9
.end method

.method public isExpanded()Z
    .registers 2

    .prologue
    .line 437
    iget-boolean v0, p0, Lcom/google/android/apps/reader/widget/HomeAdapter;->mExpanded:Z

    return v0
.end method

.method public isHeader(I)Z
    .registers 4
    .parameter "position"

    .prologue
    .line 425
    invoke-direct {p0, p1}, Lcom/google/android/apps/reader/widget/HomeAdapter;->getLayout(I)I

    move-result v0

    .line 426
    .local v0, layout:I
    const v1, 0x7f030034

    if-ne v0, v1, :cond_b

    const/4 v1, 0x1

    :goto_a
    return v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public isStream(I)Z
    .registers 4
    .parameter "position"

    .prologue
    .line 420
    invoke-direct {p0, p1}, Lcom/google/android/apps/reader/widget/HomeAdapter;->getLayout(I)I

    move-result v0

    .line 421
    .local v0, layout:I
    const v1, 0x7f030035

    if-ne v0, v1, :cond_b

    const/4 v1, 0x1

    :goto_a
    return v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public newViewIntent(Ljava/lang/Object;)Landroid/content/Intent;
    .registers 11
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 496
    invoke-virtual {p0}, Lcom/google/android/apps/reader/widget/HomeAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 497
    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_7d

    invoke-direct {p0}, Lcom/google/android/apps/reader/widget/HomeAdapter;->hasAccount()Z

    move-result v2

    if-eqz v2, :cond_7d

    .line 498
    invoke-direct {p0}, Lcom/google/android/apps/reader/widget/HomeAdapter;->getAccount()Lcom/google/android/accounts/Account;

    move-result-object v2

    .line 499
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 500
    invoke-direct {p0, p1}, Lcom/google/android/apps/reader/widget/HomeAdapter;->findLabel(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 501
    invoke-static {v1}, Lcom/google/android/apps/reader/provider/ReaderStream;->isFollowing(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_45

    .line 502
    invoke-static {v2}, Lcom/google/android/apps/reader/provider/ReaderContract$Friends;->followingUri(Lcom/google/android/accounts/Account;)Landroid/net/Uri;

    move-result-object v1

    .line 503
    const-string v4, "user/-/state/com.google/broadcast-friends"

    invoke-virtual {p0, v2, v4}, Lcom/google/android/apps/reader/widget/HomeAdapter;->createItemsUri(Lcom/google/android/accounts/Account;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 504
    if-eqz v2, :cond_43

    .line 505
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v4, v5, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 506
    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 507
    if-eqz v3, :cond_41

    .line 508
    const-string v1, "android.intent.extra.TITLE"

    invoke-virtual {v4, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_41
    move-object v1, v4

    .line 568
    :goto_42
    return-object v1

    :cond_43
    move-object v1, v7

    .line 512
    goto :goto_42

    .line 514
    :cond_45
    invoke-static {v1}, Lcom/google/android/apps/reader/provider/ReaderStream;->isRecommendation(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_65

    .line 515
    invoke-static {v2}, Lcom/google/android/apps/reader/provider/ReaderContract$Recommendations;->contentUri(Lcom/google/android/accounts/Account;)Landroid/net/Uri;

    move-result-object v1

    .line 516
    invoke-direct {p0}, Lcom/google/android/apps/reader/widget/HomeAdapter;->createExploreStreamId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/google/android/apps/reader/widget/HomeAdapter;->createItemsUri(Lcom/google/android/accounts/Account;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 517
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v3, v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 518
    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-object v1, v3

    .line 519
    goto :goto_42

    .line 521
    :cond_65
    invoke-virtual {p0, v2, v1}, Lcom/google/android/apps/reader/widget/HomeAdapter;->createItemsUri(Lcom/google/android/accounts/Account;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 522
    if-eqz v1, :cond_7b

    .line 523
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v2, v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 524
    if-eqz v3, :cond_79

    .line 525
    const-string v1, "android.intent.extra.TITLE"

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_79
    move-object v1, v2

    .line 527
    goto :goto_42

    :cond_7b
    move-object v1, v7

    .line 529
    goto :goto_42

    .line 532
    :cond_7d
    if-eqz p1, :cond_f3

    if-ne p1, v1, :cond_f3

    .line 533
    invoke-virtual {p0, v1}, Lcom/google/android/apps/reader/widget/HomeAdapter;->getAccount(Landroid/database/Cursor;)Lcom/google/android/accounts/Account;

    move-result-object v2

    .line 534
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 535
    const/4 v4, 0x2

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 537
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 538
    invoke-static {v3}, Lcom/google/android/apps/reader/widget/HomeAdapter;->isSubscriptionOrWebFeed(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_af

    .line 540
    invoke-virtual {p0, v2, v3}, Lcom/google/android/apps/reader/widget/HomeAdapter;->createItemsUri(Lcom/google/android/accounts/Account;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 541
    if-nez v1, :cond_a3

    move-object v1, v7

    .line 542
    goto :goto_42

    .line 544
    :cond_a3
    invoke-virtual {v5, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 563
    :goto_a6
    if-eqz v4, :cond_ad

    .line 564
    const-string v1, "android.intent.extra.TITLE"

    invoke-virtual {v5, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_ad
    move-object v1, v5

    .line 566
    goto :goto_42

    .line 545
    :cond_af
    invoke-static {v3}, Lcom/google/android/apps/reader/provider/ReaderStream;->isLabel(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_da

    .line 546
    invoke-virtual {p0, v1}, Lcom/google/android/apps/reader/widget/HomeAdapter;->isFolder(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_cd

    .line 548
    invoke-static {v2, v3}, Lcom/google/android/apps/reader/provider/ReaderContract$Tags;->itemUri(Lcom/google/android/accounts/Account;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 549
    invoke-virtual {v5, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 550
    const-string v1, "android.intent.extra.TITLE"

    invoke-virtual {v5, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 551
    const-string v1, "folder"

    invoke-virtual {v5, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_a6

    .line 554
    :cond_cd
    invoke-virtual {p0, v2, v3}, Lcom/google/android/apps/reader/widget/HomeAdapter;->createItemsUri(Lcom/google/android/accounts/Account;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 555
    if-nez v1, :cond_d6

    move-object v1, v7

    .line 556
    goto/16 :goto_42

    .line 558
    :cond_d6
    invoke-virtual {v5, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_a6

    .line 561
    :cond_da
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected stream ID: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_f3
    move-object v1, v7

    .line 568
    goto/16 :goto_42
.end method

.method public setExpanded(Z)V
    .registers 4
    .parameter

    .prologue
    .line 447
    iput-boolean p1, p0, Lcom/google/android/apps/reader/widget/HomeAdapter;->mExpanded:Z

    .line 449
    iget-object v0, p0, Lcom/google/android/apps/reader/widget/HomeAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/apps/reader/preference/LocalPreferences;->edit(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 450
    const-string v1, "home_expanded"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 451
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 453
    iget-boolean v0, p0, Lcom/google/android/apps/reader/widget/HomeAdapter;->mDataValid:Z

    if-eqz v0, :cond_17

    .line 454
    invoke-virtual {p0}, Lcom/google/android/apps/reader/widget/HomeAdapter;->notifyDataSetChanged()V

    .line 456
    :cond_17
    return-void
.end method

.method public setShowAllSubscriptions(Z)V
    .registers 3
    .parameter "showAllSubscriptions"

    .prologue
    .line 331
    iput-boolean p1, p0, Lcom/google/android/apps/reader/widget/HomeAdapter;->mShowAllSubscriptions:Z

    .line 332
    invoke-virtual {p0}, Lcom/google/android/apps/reader/widget/HomeAdapter;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 333
    invoke-virtual {p0}, Lcom/google/android/apps/reader/widget/HomeAdapter;->notifyDataSetChanged()V

    .line 335
    :cond_b
    return-void
.end method

.method public toggleExpanded()V
    .registers 2

    .prologue
    .line 459
    invoke-virtual {p0}, Lcom/google/android/apps/reader/widget/HomeAdapter;->isExpanded()Z

    move-result v0

    if-nez v0, :cond_b

    const/4 v0, 0x1

    :goto_7
    invoke-virtual {p0, v0}, Lcom/google/android/apps/reader/widget/HomeAdapter;->setExpanded(Z)V

    .line 460
    return-void

    .line 459
    :cond_b
    const/4 v0, 0x0

    goto :goto_7
.end method
