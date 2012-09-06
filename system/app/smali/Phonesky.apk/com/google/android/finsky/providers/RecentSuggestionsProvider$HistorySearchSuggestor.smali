.class Lcom/google/android/finsky/providers/RecentSuggestionsProvider$HistorySearchSuggestor;
.super Lcom/google/android/finsky/providers/RecentSuggestionsProvider$AsyncSuggestionAuthority;
.source "RecentSuggestionsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/providers/RecentSuggestionsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HistorySearchSuggestor"
.end annotation


# instance fields
.field private final mCursor:Landroid/database/Cursor;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/database/Cursor;Landroid/content/Context;)V
    .registers 4
    .parameter "query"
    .parameter "historyCursor"
    .parameter "context"

    .prologue
    .line 438
    invoke-direct {p0, p1, p3}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$AsyncSuggestionAuthority;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 439
    iput-object p2, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$HistorySearchSuggestor;->mCursor:Landroid/database/Cursor;

    .line 440
    return-void
.end method


# virtual methods
.method protected makeRequest(Lcom/google/android/finsky/providers/RecentSuggestionsProvider$OnCompleteListener;)V
    .registers 12
    .parameter "listener"

    .prologue
    .line 444
    const/4 v1, 0x0

    .line 445
    .local v1, col:I
    const/4 v4, 0x0

    .line 446
    .local v4, idColumn:I
    const/4 v7, 0x0

    .line 447
    .local v7, textColumn:I
    iget-object v8, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$HistorySearchSuggestor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_b
    if-ge v3, v5, :cond_27

    aget-object v2, v0, v3

    .line 448
    .local v2, historyCol:Ljava/lang/String;
    const-string v8, "_id"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1d

    .line 449
    move v4, v1

    .line 453
    :cond_18
    :goto_18
    add-int/lit8 v1, v1, 0x1

    .line 447
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 450
    :cond_1d
    const-string v8, "suggest_text_1"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_18

    .line 451
    move v7, v1

    goto :goto_18

    .line 455
    .end local v2           #historyCol:Ljava/lang/String;
    :cond_27
    iget-object v8, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$HistorySearchSuggestor;->mCursor:Landroid/database/Cursor;

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 456
    :goto_2d
    iget-object v8, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$HistorySearchSuggestor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v8

    if-nez v8, :cond_59

    .line 458
    iget-object v8, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$HistorySearchSuggestor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v8, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 459
    .local v6, suggestion:Ljava/lang/String;
    iget-object v8, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$HistorySearchSuggestor;->mQuery:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_53

    .line 460
    iget-object v8, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$HistorySearchSuggestor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const v9, 0x108004a

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p0, v8, v9, v6}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$HistorySearchSuggestor;->addRow(ILjava/lang/Object;Ljava/lang/String;)V

    .line 463
    :cond_53
    iget-object v8, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$HistorySearchSuggestor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2d

    .line 465
    .end local v6           #suggestion:Ljava/lang/String;
    :cond_59
    iget-object v8, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$HistorySearchSuggestor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 466
    invoke-interface {p1}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$OnCompleteListener;->onComplete()V

    .line 467
    return-void
.end method
