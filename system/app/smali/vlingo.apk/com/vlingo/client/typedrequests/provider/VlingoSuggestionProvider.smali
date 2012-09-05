.class public Lcom/vlingo/client/typedrequests/provider/VlingoSuggestionProvider;
.super Landroid/content/ContentProvider;
.source "VlingoSuggestionProvider.java"

# interfaces
.implements Lcom/vlingo/client/typedrequests/provider/SuggestionProviderExecutor$SuggestionProviderListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vlingo/client/typedrequests/provider/VlingoSuggestionProvider$SuggestionsCursor;
    }
.end annotation


# static fields
.field public static AUTHORITY:Ljava/lang/String; = null

.field private static final COLUMNS:[Ljava/lang/String; = null

.field private static final COL_ICON_1:I = 0x3

.field private static final COL_ICON_2:I = 0x4

.field private static final COL_ID:I = 0x0

.field private static final COL_INTENT_DATA:I = 0x7

.field private static final COL_INTENT_EXTRA_DATA:I = 0x6

.field private static final COL_QUERY:I = 0x5

.field private static final COL_TEXT_1:I = 0x1

.field private static final COL_TEXT_2:I = 0x2

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final MAX_RESULT_WAIT_TIME:I = 0x1f40

.field public static final SEARCH_MIME_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.vlingo.android.typedrequests"


# instance fields
.field private final cacheProvider:Lcom/vlingo/client/typedrequests/provider/SuggestionProvider;

.field private volatile currentRequestId:I

.field private final handler:Landroid/os/Handler;

.field private final localProviders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vlingo/client/typedrequests/provider/SuggestionProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final networkProvider:Lcom/vlingo/client/typedrequests/provider/SuggestionProvider;

.field private final suggestionManager:Lcom/vlingo/client/typedrequests/provider/SuggestionManager;

.field private final taskExecutor:Lcom/vlingo/client/typedrequests/provider/SuggestionProviderExecutor;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 30
    const-string v0, "com.vlingo.client.samsung.typedrequests.provider.VlingoSuggestionProvider"

    sput-object v0, Lcom/vlingo/client/typedrequests/provider/VlingoSuggestionProvider;->AUTHORITY:Ljava/lang/String;

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/vlingo/client/typedrequests/provider/VlingoSuggestionProvider;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/suggest"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/vlingo/client/typedrequests/provider/VlingoSuggestionProvider;->CONTENT_URI:Landroid/net/Uri;

    .line 57
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "suggest_text_1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "suggest_text_2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "suggest_icon_1"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "suggest_icon_2"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "suggest_intent_query"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "suggest_intent_extra_data"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "suggest_intent_data"

    aput-object v2, v0, v1

    sput-object v0, Lcom/vlingo/client/typedrequests/provider/VlingoSuggestionProvider;->COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x6

    .line 69
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/vlingo/client/typedrequests/provider/VlingoSuggestionProvider;->currentRequestId:I

    .line 71
    new-instance v0, Lcom/vlingo/client/typedrequests/provider/SuggestionProviderExecutor;

    invoke-direct {v0}, Lcom/vlingo/client/typedrequests/provider/SuggestionProviderExecutor;-><init>()V

    iput-object v0, p0, Lcom/vlingo/client/typedrequests/provider/VlingoSuggestionProvider;->taskExecutor:Lcom/vlingo/client/typedrequests/provider/SuggestionProviderExecutor;

    .line 73
    new-instance v0, Lcom/vlingo/client/typedrequests/provider/SuggestionManager;

    invoke-direct {v0}, Lcom/vlingo/client/typedrequests/provider/SuggestionManager;-><init>()V

    iput-object v0, p0, Lcom/vlingo/client/typedrequests/provider/VlingoSuggestionProvider;->suggestionManager:Lcom/vlingo/client/typedrequests/provider/SuggestionManager;

    .line 75
    new-instance v0, Lcom/vlingo/client/typedrequests/provider/NetworkSuggestionProvider;

    iget-object v1, p0, Lcom/vlingo/client/typedrequests/provider/VlingoSuggestionProvider;->suggestionManager:Lcom/vlingo/client/typedrequests/provider/SuggestionManager;

    invoke-direct {v0, v1, v2}, Lcom/vlingo/client/typedrequests/provider/NetworkSuggestionProvider;-><init>(Lcom/vlingo/client/typedrequests/provider/SuggestionManager;I)V

    iput-object v0, p0, Lcom/vlingo/client/typedrequests/provider/VlingoSuggestionProvider;->networkProvider:Lcom/vlingo/client/typedrequests/provider/SuggestionProvider;

    .line 76
    new-instance v0, Lcom/vlingo/client/typedrequests/provider/CacheSuggestionProvider;

    iget-object v1, p0, Lcom/vlingo/client/typedrequests/provider/VlingoSuggestionProvider;->suggestionManager:Lcom/vlingo/client/typedrequests/provider/SuggestionManager;

    invoke-direct {v0, v1, v2}, Lcom/vlingo/client/typedrequests/provider/CacheSuggestionProvider;-><init>(Lcom/vlingo/client/typedrequests/provider/SuggestionManager;I)V

    iput-object v0, p0, Lcom/vlingo/client/typedrequests/provider/VlingoSuggestionProvider;->cacheProvider:Lcom/vlingo/client/typedrequests/provider/SuggestionProvider;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vlingo/client/typedrequests/provider/VlingoSuggestionProvider;->localProviders:Ljava/util/ArrayList;

    .line 79
    iget-object v0, p0, Lcom/vlingo/client/typedrequests/provider/VlingoSuggestionProvider;->localProviders:Ljava/util/ArrayList;

    new-instance v1, Lcom/vlingo/client/typedrequests/provider/ApplicationSuggestionProvider;

    invoke-direct {v1, v2}, Lcom/vlingo/client/typedrequests/provider/ApplicationSuggestionProvider;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v0, p0, Lcom/vlingo/client/typedrequests/provider/VlingoSuggestionProvider;->localProviders:Ljava/util/ArrayList;

    new-instance v1, Lcom/vlingo/client/typedrequests/provider/ContactSuggestionProvider;

    invoke-direct {v1, v2}, Lcom/vlingo/client/typedrequests/provider/ContactSuggestionProvider;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/vlingo/client/typedrequests/provider/VlingoSuggestionProvider;->handler:Landroid/os/Handler;

    .line 84
    return-void
.end method

.method static synthetic access$000(Lcom/vlingo/client/typedrequests/provider/VlingoSuggestionProvider;Ljava/util/ArrayList;IZLcom/vlingo/client/typedrequests/provider/VlingoSuggestionProvider$SuggestionsCursor;)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/vlingo/client/typedrequests/provider/VlingoSuggestionProvider;->updateSuggestionsInCursor(Ljava/util/ArrayList;IZLcom/vlingo/client/typedrequests/provider/VlingoSuggestionProvider$SuggestionsCursor;)V

    return-void
.end method

.method static synthetic access$100()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 25
    sget-object v0, Lcom/vlingo/client/typedrequests/provider/VlingoSuggestionProvider;->COLUMNS:[Ljava/lang/String;

    return-object v0
.end method

.method private declared-synchronized runProviderAsync(Ljava/lang/String;IZLcom/vlingo/client/typedrequests/provider/SuggestionProvider;Lcom/vlingo/client/typedrequests/provider/VlingoSuggestionProvider$SuggestionsCursor;)V
    .registers 14
    .parameter "query"
    .parameter "requestId"
    .parameter "removeCachedSuggestions"
    .parameter "provider"
    .parameter "cursor"

    .prologue
    .line 187
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/vlingo/client/typedrequests/provider/VlingoSuggestionProvider;->taskExecutor:Lcom/vlingo/client/typedrequests/provider/SuggestionProviderExecutor;

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p3}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {p0}, Lcom/vlingo/client/typedrequests/provider/VlingoSuggestionProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    move-object v1, p1

    move v2, p2

    move-object v3, p4

    move-object v4, p0

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Lcom/vlingo/client/typedrequests/provider/SuggestionProviderExecutor;->executeTask(Ljava/lang/String;ILcom/vlingo/client/typedrequests/provider/SuggestionProvider;Lcom/vlingo/client/typedrequests/provider/SuggestionProviderExecutor$SuggestionProviderListener;Ljava/lang/Object;Ljava/lang/Object;Landroid/content/Context;)V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 188
    monitor-exit p0

    return-void

    .line 187
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private updateSuggestionsInCursor(Ljava/util/ArrayList;IZLcom/vlingo/client/typedrequests/provider/VlingoSuggestionProvider$SuggestionsCursor;)V
    .registers 6
    .parameter
    .parameter "requestId"
    .parameter "removeCachedSuggestions"
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vlingo/client/typedrequests/provider/Suggestion;",
            ">;IZ",
            "Lcom/vlingo/client/typedrequests/provider/VlingoSuggestionProvider$SuggestionsCursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 203
    .local p1, suggestions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/vlingo/client/typedrequests/provider/Suggestion;>;"
    if-eqz p3, :cond_5

    .line 204
    invoke-virtual {p4}, Lcom/vlingo/client/typedrequests/provider/VlingoSuggestionProvider$SuggestionsCursor;->removeCachedSuggestions()V

    .line 206
    :cond_5
    const/4 v0, 0x1

    invoke-virtual {p4, p1, p2, v0}, Lcom/vlingo/client/typedrequests/provider/VlingoSuggestionProvider$SuggestionsCursor;->addSuggestions(Ljava/util/ArrayList;IZ)V

    .line 207
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 437
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3
    .parameter "uri"

    .prologue
    .line 101
    const-string v0, "vnd.android.cursor.dir/vnd.android.search.suggest"

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 4
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 427
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public onCreate()Z
    .registers 2

    .prologue
    .line 88
    const/4 v0, 0x1

    return v0
.end method

.method public onLowMemory()V
    .registers 1

    .prologue
    .line 92
    invoke-super {p0}, Landroid/content/ContentProvider;->onLowMemory()V

    .line 93
    return-void
.end method

.method public declared-synchronized onNewRequest()V
    .registers 2

    .prologue
    .line 105
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/vlingo/client/typedrequests/provider/VlingoSuggestionProvider;->currentRequestId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/vlingo/client/typedrequests/provider/VlingoSuggestionProvider;->currentRequestId:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 106
    monitor-exit p0

    return-void

    .line 105
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onSuggestionsAvailable(Ljava/util/ArrayList;ILjava/lang/Object;Ljava/lang/Object;)V
    .registers 12
    .parameter
    .parameter "requestId"
    .parameter "tag1"
    .parameter "tag2"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vlingo/client/typedrequests/provider/Suggestion;",
            ">;I",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 191
    .local p1, suggestions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/vlingo/client/typedrequests/provider/Suggestion;>;"
    move-object v5, p3

    check-cast v5, Lcom/vlingo/client/typedrequests/provider/VlingoSuggestionProvider$SuggestionsCursor;

    .line 192
    .local v5, cursor:Lcom/vlingo/client/typedrequests/provider/VlingoSuggestionProvider$SuggestionsCursor;
    check-cast p4, Ljava/lang/Boolean;

    .end local p4
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 193
    .local v4, removeCachedSuggestions:Z
    if-eqz p1, :cond_1e

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1e

    .line 194
    iget-object v6, p0, Lcom/vlingo/client/typedrequests/provider/VlingoSuggestionProvider;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/vlingo/client/typedrequests/provider/VlingoSuggestionProvider$1;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/vlingo/client/typedrequests/provider/VlingoSuggestionProvider$1;-><init>(Lcom/vlingo/client/typedrequests/provider/VlingoSuggestionProvider;Ljava/util/ArrayList;IZLcom/vlingo/client/typedrequests/provider/VlingoSuggestionProvider$SuggestionsCursor;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 200
    :cond_1e
    return-void
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 27
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 115
    invoke-virtual/range {p0 .. p0}, Lcom/vlingo/client/typedrequests/provider/VlingoSuggestionProvider;->onNewRequest()V

    .line 117
    const/4 v1, 0x0

    aget-object v2, p4, v1

    .line 118
    .local v2, query:Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 119
    .local v18, startTime:J
    move-object/from16 v0, p0

    iget v3, v0, Lcom/vlingo/client/typedrequests/provider/VlingoSuggestionProvider;->currentRequestId:I

    .line 124
    .local v3, thisRequestId:I
    new-instance v6, Lcom/vlingo/client/typedrequests/provider/VlingoSuggestionProvider$SuggestionsCursor;

    invoke-direct {v6, v3}, Lcom/vlingo/client/typedrequests/provider/VlingoSuggestionProvider$SuggestionsCursor;-><init>(I)V

    .line 127
    .local v6, cursor:Lcom/vlingo/client/typedrequests/provider/VlingoSuggestionProvider$SuggestionsCursor;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vlingo/client/typedrequests/provider/VlingoSuggestionProvider;->cacheProvider:Lcom/vlingo/client/typedrequests/provider/SuggestionProvider;

    invoke-virtual/range {p0 .. p0}, Lcom/vlingo/client/typedrequests/provider/VlingoSuggestionProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v1, v4, v2}, Lcom/vlingo/client/typedrequests/provider/SuggestionProvider;->executeQuery(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v20

    .line 133
    .local v20, suggestions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/vlingo/client/typedrequests/provider/Suggestion;>;"
    invoke-static {v2}, Lcom/vlingo/client/core/util/StringUtils;->isNullOrWhiteSpace(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_89

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_89

    .line 138
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vlingo/client/typedrequests/provider/VlingoSuggestionProvider;->localProviders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, i$:Ljava/util/Iterator;
    :goto_33
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_46

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vlingo/client/typedrequests/provider/SuggestionProvider;

    .line 139
    .local v5, provider:Lcom/vlingo/client/typedrequests/provider/SuggestionProvider;
    const/4 v4, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/vlingo/client/typedrequests/provider/VlingoSuggestionProvider;->runProviderAsync(Ljava/lang/String;IZLcom/vlingo/client/typedrequests/provider/SuggestionProvider;Lcom/vlingo/client/typedrequests/provider/VlingoSuggestionProvider$SuggestionsCursor;)V

    goto :goto_33

    .line 143
    .end local v5           #provider:Lcom/vlingo/client/typedrequests/provider/SuggestionProvider;
    :cond_46
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vlingo/client/typedrequests/provider/VlingoSuggestionProvider;->networkProvider:Lcom/vlingo/client/typedrequests/provider/SuggestionProvider;

    invoke-virtual/range {p0 .. p0}, Lcom/vlingo/client/typedrequests/provider/VlingoSuggestionProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v1, v4, v2}, Lcom/vlingo/client/typedrequests/provider/SuggestionProvider;->executeQuery(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v20

    .line 144
    const/4 v1, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v6, v0, v3, v1}, Lcom/vlingo/client/typedrequests/provider/VlingoSuggestionProvider$SuggestionsCursor;->addSuggestions(Ljava/util/ArrayList;IZ)V

    .line 159
    :cond_58
    invoke-virtual {v6}, Lcom/vlingo/client/typedrequests/provider/VlingoSuggestionProvider$SuggestionsCursor;->getCount()I

    move-result v13

    .line 160
    .local v13, count:I
    if-nez v13, :cond_c2

    .line 163
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 167
    .local v14, curTime:J
    :goto_62
    move-object/from16 v0, p0

    iget v1, v0, Lcom/vlingo/client/typedrequests/provider/VlingoSuggestionProvider;->currentRequestId:I

    if-ne v3, v1, :cond_c2

    if-nez v13, :cond_c2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vlingo/client/typedrequests/provider/VlingoSuggestionProvider;->taskExecutor:Lcom/vlingo/client/typedrequests/provider/SuggestionProviderExecutor;

    invoke-virtual {v1, v3}, Lcom/vlingo/client/typedrequests/provider/SuggestionProviderExecutor;->areTasksRunning(I)Z

    move-result v1

    if-eqz v1, :cond_c2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v14

    const-wide/16 v9, 0x1f40

    cmp-long v1, v7, v9

    if-gez v1, :cond_c2

    .line 169
    const-wide/16 v7, 0x96

    :try_start_81
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_84} :catch_b7

    .line 170
    :goto_84
    invoke-virtual {v6}, Lcom/vlingo/client/typedrequests/provider/VlingoSuggestionProvider$SuggestionsCursor;->getCount()I

    move-result v13

    goto :goto_62

    .line 148
    .end local v13           #count:I
    .end local v14           #curTime:J
    .end local v17           #i$:Ljava/util/Iterator;
    :cond_89
    const/4 v1, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v6, v0, v3, v1}, Lcom/vlingo/client/typedrequests/provider/VlingoSuggestionProvider$SuggestionsCursor;->addSuggestions(Ljava/util/ArrayList;IZ)V

    .line 151
    const/4 v10, 0x1

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vlingo/client/typedrequests/provider/VlingoSuggestionProvider;->networkProvider:Lcom/vlingo/client/typedrequests/provider/SuggestionProvider;

    move-object/from16 v7, p0

    move-object v8, v2

    move v9, v3

    move-object v12, v6

    invoke-direct/range {v7 .. v12}, Lcom/vlingo/client/typedrequests/provider/VlingoSuggestionProvider;->runProviderAsync(Ljava/lang/String;IZLcom/vlingo/client/typedrequests/provider/SuggestionProvider;Lcom/vlingo/client/typedrequests/provider/VlingoSuggestionProvider$SuggestionsCursor;)V

    .line 152
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vlingo/client/typedrequests/provider/VlingoSuggestionProvider;->localProviders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .restart local v17       #i$:Ljava/util/Iterator;
    :goto_a4
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_58

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vlingo/client/typedrequests/provider/SuggestionProvider;

    .line 153
    .restart local v5       #provider:Lcom/vlingo/client/typedrequests/provider/SuggestionProvider;
    const/4 v4, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/vlingo/client/typedrequests/provider/VlingoSuggestionProvider;->runProviderAsync(Ljava/lang/String;IZLcom/vlingo/client/typedrequests/provider/SuggestionProvider;Lcom/vlingo/client/typedrequests/provider/VlingoSuggestionProvider$SuggestionsCursor;)V

    goto :goto_a4

    .line 169
    .end local v5           #provider:Lcom/vlingo/client/typedrequests/provider/SuggestionProvider;
    .restart local v13       #count:I
    .restart local v14       #curTime:J
    :catch_b7
    move-exception v16

    .local v16, ex:Ljava/lang/Exception;
    const-string v1, "VLG_EXCEPTION"

    invoke-static/range {v16 .. v16}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_84

    .line 180
    .end local v14           #curTime:J
    .end local v16           #ex:Ljava/lang/Exception;
    :cond_c2
    return-object v6
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 432
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
