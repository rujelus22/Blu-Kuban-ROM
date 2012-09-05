.class Lcom/google/android/finsky/providers/RecentSuggestionsProvider$HistorySearchSuggestor;
.super Lcom/google/android/finsky/providers/RecentSuggestionsProvider$AsyncSuggestionAuthority;
.source "RecentSuggestionsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/providers/RecentSuggestionsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HistorySearchSuggestor"
.end annotation


# instance fields
.field private final mCursor:Landroid/database/Cursor;

.field final synthetic this$0:Lcom/google/android/finsky/providers/RecentSuggestionsProvider;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/providers/RecentSuggestionsProvider;Ljava/lang/String;Landroid/database/Cursor;)V
    .registers 4
    .parameter
    .parameter "query"
    .parameter "historyCursor"

    .prologue
    .line 228
    iput-object p1, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$HistorySearchSuggestor;->this$0:Lcom/google/android/finsky/providers/RecentSuggestionsProvider;

    .line 229
    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$AsyncSuggestionAuthority;-><init>(Lcom/google/android/finsky/providers/RecentSuggestionsProvider;Ljava/lang/String;)V

    .line 230
    iput-object p3, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$HistorySearchSuggestor;->mCursor:Landroid/database/Cursor;

    .line 231
    return-void
.end method


# virtual methods
.method protected makeRequest(Lcom/google/android/finsky/providers/RecentSuggestionsProvider$OnCompleteListener;)V
    .registers 12
    .parameter "listener"

    .prologue
    .line 235
    const/4 v1, 0x0

    .line 236
    .local v1, col:I
    const/4 v4, 0x0

    .line 237
    .local v4, idColumn:I
    const/4 v6, 0x0

    .line 238
    .local v6, textColumn:I
    iget-object v7, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$HistorySearchSuggestor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_b
    if-ge v3, v5, :cond_27

    aget-object v2, v0, v3

    .line 239
    .local v2, historyCol:Ljava/lang/String;
    const-string v7, "_id"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1d

    .line 240
    move v4, v1

    .line 244
    :cond_18
    :goto_18
    add-int/lit8 v1, v1, 0x1

    .line 238
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 241
    :cond_1d
    const-string v7, "suggest_text_1"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_18

    .line 242
    move v6, v1

    goto :goto_18

    .line 246
    .end local v2           #historyCol:Ljava/lang/String;
    :cond_27
    iget-object v7, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$HistorySearchSuggestor;->mCursor:Landroid/database/Cursor;

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 247
    :goto_2d
    iget-object v7, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$HistorySearchSuggestor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v7

    if-nez v7, :cond_4d

    .line 248
    iget-object v7, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$HistorySearchSuggestor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const v8, 0x108004a

    iget-object v9, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$HistorySearchSuggestor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v9, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v7, v8, v9}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$HistorySearchSuggestor;->addRow(IILjava/lang/String;)V

    .line 250
    iget-object v7, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$HistorySearchSuggestor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2d

    .line 252
    :cond_4d
    iget-object v7, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$HistorySearchSuggestor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 253
    invoke-interface {p1}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$OnCompleteListener;->onComplete()V

    .line 254
    return-void
.end method
