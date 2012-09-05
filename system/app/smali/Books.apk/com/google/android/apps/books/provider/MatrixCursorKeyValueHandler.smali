.class public Lcom/google/android/apps/books/provider/MatrixCursorKeyValueHandler;
.super Ljava/lang/Object;
.source "MatrixCursorKeyValueHandler.java"

# interfaces
.implements Lcom/google/android/apps/books/net/KeyValueHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/apps/books/net/KeyValueHandler",
        "<",
        "Landroid/database/MatrixCursor;",
        ">;"
    }
.end annotation


# instance fields
.field protected final mExtras:Landroid/os/Bundle;

.field private final mOutput:Landroid/database/MatrixCursor;

.field private final mRow:Landroid/content/ContentValues;

.field private mRowCount:I


# virtual methods
.method public endRow()V
    .registers 7

    .prologue
    .line 61
    iget-object v5, p0, Lcom/google/android/apps/books/provider/MatrixCursorKeyValueHandler;->mOutput:Landroid/database/MatrixCursor;

    invoke-virtual {v5}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v0

    .line 62
    .local v0, builder:Landroid/database/MatrixCursor$RowBuilder;
    iget-object v5, p0, Lcom/google/android/apps/books/provider/MatrixCursorKeyValueHandler;->mOutput:Landroid/database/MatrixCursor;

    invoke-virtual {v5}, Landroid/database/MatrixCursor;->getColumnCount()I

    move-result v1

    .line 63
    .local v1, columnCount:I
    const/4 v2, 0x0

    .local v2, columnIndex:I
    :goto_d
    if-ge v2, v1, :cond_21

    .line 64
    iget-object v5, p0, Lcom/google/android/apps/books/provider/MatrixCursorKeyValueHandler;->mOutput:Landroid/database/MatrixCursor;

    invoke-virtual {v5, v2}, Landroid/database/MatrixCursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v3

    .line 65
    .local v3, columnName:Ljava/lang/String;
    iget-object v5, p0, Lcom/google/android/apps/books/provider/MatrixCursorKeyValueHandler;->mRow:Landroid/content/ContentValues;

    invoke-virtual {v5, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 66
    .local v4, columnValue:Ljava/lang/Object;
    invoke-virtual {v0, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 63
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 68
    .end local v3           #columnName:Ljava/lang/String;
    .end local v4           #columnValue:Ljava/lang/Object;
    :cond_21
    iget v5, p0, Lcom/google/android/apps/books/provider/MatrixCursorKeyValueHandler;->mRowCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/android/apps/books/provider/MatrixCursorKeyValueHandler;->mRowCount:I

    .line 69
    return-void
.end method

.method public getContent()Landroid/database/MatrixCursor;
    .registers 4

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/android/apps/books/provider/MatrixCursorKeyValueHandler;->mExtras:Landroid/os/Bundle;

    const-string v1, "com.google.android.feeds.cursor.extra.DOCUMENT_ROW_COUNT"

    iget v2, p0, Lcom/google/android/apps/books/provider/MatrixCursorKeyValueHandler;->mRowCount:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 121
    iget-object v0, p0, Lcom/google/android/apps/books/provider/MatrixCursorKeyValueHandler;->mExtras:Landroid/os/Bundle;

    const-string v1, "com.google.android.feeds.cursor.extra.CONTENT_ROW_COUNT"

    iget v2, p0, Lcom/google/android/apps/books/provider/MatrixCursorKeyValueHandler;->mRowCount:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 123
    iget-object v0, p0, Lcom/google/android/apps/books/provider/MatrixCursorKeyValueHandler;->mOutput:Landroid/database/MatrixCursor;

    return-object v0
.end method

.method public bridge synthetic getContent()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/google/android/apps/books/provider/MatrixCursorKeyValueHandler;->getContent()Landroid/database/MatrixCursor;

    move-result-object v0

    return-object v0
.end method

.method public init()V
    .registers 2

    .prologue
    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/books/provider/MatrixCursorKeyValueHandler;->mRowCount:I

    .line 48
    return-void
.end method

.method public setColumn(Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 4
    .parameter "columnName"
    .parameter "value"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/apps/books/provider/MatrixCursorKeyValueHandler;->mRow:Landroid/content/ContentValues;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 90
    return-void
.end method

.method public setColumn(Ljava/lang/String;Ljava/lang/Long;)V
    .registers 4
    .parameter "columnName"
    .parameter "value"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/android/apps/books/provider/MatrixCursorKeyValueHandler;->mRow:Landroid/content/ContentValues;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 83
    return-void
.end method

.method public setColumn(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "columnName"
    .parameter "value"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/apps/books/provider/MatrixCursorKeyValueHandler;->mRow:Landroid/content/ContentValues;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public setMetadata(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "key"
    .parameter "value"

    .prologue
    .line 96
    const-string v2, "com.google.android.apps.books.cursor.extra.TOTAL_RESULTS"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 98
    :try_start_8
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 99
    .local v1, totalResults:I
    iget-object v2, p0, Lcom/google/android/apps/books/provider/MatrixCursorKeyValueHandler;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v2, p1, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_11
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_11} :catch_12

    .line 106
    .end local v1           #totalResults:I
    :goto_11
    return-void

    .line 100
    :catch_12
    move-exception v0

    .line 101
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v2, "MatrixCursorKeyValue"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Total results is not an integer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_11

    .line 104
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_2c
    iget-object v2, p0, Lcom/google/android/apps/books/provider/MatrixCursorKeyValueHandler;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v2, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11
.end method

.method public startRow()V
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/apps/books/provider/MatrixCursorKeyValueHandler;->mRow:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 55
    return-void
.end method
