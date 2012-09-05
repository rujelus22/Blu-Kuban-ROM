.class public final Lcom/google/android/apps/books/util/CursorUtils;
.super Ljava/lang/Object;
.source "CursorUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public static getBlob(Landroid/database/Cursor;Ljava/lang/String;)[B
    .registers 3
    .parameter "cursor"
    .parameter "column"

    .prologue
    .line 243
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    return-object v0
.end method

.method public static getBoolean(Landroid/database/Cursor;I)Z
    .registers 3
    .parameter "cursor"
    .parameter "index"

    .prologue
    .line 224
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static getBoolean(Landroid/database/Cursor;Ljava/lang/String;)Z
    .registers 3
    .parameter "cursor"
    .parameter "column"

    .prologue
    .line 220
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static getDouble(Landroid/database/Cursor;Ljava/lang/String;)D
    .registers 4
    .parameter "cursor"
    .parameter "column"

    .prologue
    .line 212
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public static getDoubleObject(Landroid/database/Cursor;I)Ljava/lang/Double;
    .registers 4
    .parameter "cursor"
    .parameter "columnIndex"

    .prologue
    .line 239
    invoke-interface {p0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_7
.end method

.method public static getDoubleObject(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Double;
    .registers 3
    .parameter "cursor"
    .parameter "column"

    .prologue
    .line 216
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/google/android/apps/books/util/CursorUtils;->getDoubleObject(Landroid/database/Cursor;I)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public static getInt(Landroid/database/Cursor;Ljava/lang/String;)I
    .registers 3
    .parameter "cursor"
    .parameter "column"

    .prologue
    .line 196
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public static getInteger(Landroid/database/Cursor;I)Ljava/lang/Integer;
    .registers 3
    .parameter "cursor"
    .parameter "columnIndex"

    .prologue
    .line 228
    invoke-interface {p0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_7
.end method

.method public static getInteger(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Integer;
    .registers 3
    .parameter "cursor"
    .parameter "column"

    .prologue
    .line 200
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/google/android/apps/books/util/CursorUtils;->getInteger(Landroid/database/Cursor;I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static getLong(Landroid/database/Cursor;Ljava/lang/String;)J
    .registers 4
    .parameter "cursor"
    .parameter "column"

    .prologue
    .line 204
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLongObject(Landroid/database/Cursor;I)Ljava/lang/Long;
    .registers 4
    .parameter "cursor"
    .parameter "columnIndex"

    .prologue
    .line 232
    invoke-interface {p0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_7
.end method

.method public static getLongObject(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Long;
    .registers 3
    .parameter "cursor"
    .parameter "column"

    .prologue
    .line 208
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/google/android/apps/books/util/CursorUtils;->getLongObject(Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public static getPositionsWithValue(Landroid/database/Cursor;ILjava/lang/String;)Ljava/util/List;
    .registers 8
    .parameter "cursor"
    .parameter "index"
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 140
    if-ltz p1, :cond_5d

    invoke-interface {p0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v2

    if-ge p1, v2, :cond_5d

    const/4 v2, 0x1

    :goto_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", expected [0.."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 143
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 144
    .local v1, positions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    monitor-enter p0

    .line 145
    const/4 v2, -0x1

    :try_start_3b
    invoke-interface {p0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 146
    :cond_3e
    :goto_3e
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 147
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, cursorValue:Ljava/lang/String;
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 149
    invoke-interface {p0}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3e

    .line 152
    .end local v0           #cursorValue:Ljava/lang/String;
    :catchall_5a
    move-exception v2

    monitor-exit p0
    :try_end_5c
    .catchall {:try_start_3b .. :try_end_5c} :catchall_5a

    throw v2

    .line 140
    .end local v1           #positions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_5d
    const/4 v2, 0x0

    goto :goto_9

    .line 152
    .restart local v1       #positions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_5f
    :try_start_5f
    monitor-exit p0
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5a

    .line 153
    return-object v1
.end method

.method public static getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "cursor"
    .parameter "column"

    .prologue
    .line 192
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStringValues(Landroid/database/Cursor;I)Ljava/util/List;
    .registers 5
    .parameter "cursor"
    .parameter "columnIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 179
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 180
    .local v1, values:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    monitor-enter p0

    .line 181
    const/4 v2, -0x1

    :try_start_6
    invoke-interface {p0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 182
    :goto_9
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 183
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, name:Ljava/lang/String;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 187
    .end local v0           #name:Ljava/lang/String;
    :catchall_17
    move-exception v2

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_17

    throw v2

    .line 186
    :cond_1a
    const/4 v2, -0x1

    :try_start_1b
    invoke-interface {p0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 187
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1b .. :try_end_1f} :catchall_17

    .line 188
    return-object v1
.end method

.method public static getValuesAtPositions(Landroid/database/Cursor;ILjava/util/List;)Ljava/util/List;
    .registers 9
    .parameter "cursor"
    .parameter "index"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 162
    .local p2, positions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 163
    .local v2, values:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    monitor-enter p0

    .line 164
    :try_start_5
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_43

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 165
    .local v1, position:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 166
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 171
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #position:Ljava/lang/Integer;
    :catchall_27
    move-exception v3

    monitor-exit p0
    :try_end_29
    .catchall {:try_start_5 .. :try_end_29} :catchall_27

    throw v3

    .line 168
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v1       #position:Ljava/lang/Integer;
    :cond_2a
    :try_start_2a
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not move to position "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 171
    .end local v1           #position:Ljava/lang/Integer;
    :cond_43
    monitor-exit p0
    :try_end_44
    .catchall {:try_start_2a .. :try_end_44} :catchall_27

    .line 172
    return-object v2
.end method

.method public static moveBackwardUntilMatchingColumnLocked(Landroid/database/Cursor;IILcom/google/common/base/Predicate;)Z
    .registers 9
    .parameter "cursor"
    .parameter "startPosition"
    .parameter "column"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "II",
            "Lcom/google/common/base/Predicate",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p3, predicate:Lcom/google/common/base/Predicate;,"Lcom/google/common/base/Predicate<Ljava/lang/String;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 119
    const/4 v0, -0x1

    if-lt p1, v0, :cond_72

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gt p1, v0, :cond_72

    move v0, v1

    :goto_c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad position "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", expected [-1.."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 121
    if-ltz p2, :cond_74

    invoke-interface {p0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    if-ge p2, v0, :cond_74

    move v0, v1

    :goto_3f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", expected [0.."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 124
    invoke-interface {p0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-nez v0, :cond_76

    .line 132
    :goto_71
    return v2

    :cond_72
    move v0, v2

    .line 119
    goto :goto_c

    :cond_74
    move v0, v2

    .line 121
    goto :goto_3f

    .line 128
    :cond_76
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_82

    move v2, v1

    .line 129
    goto :goto_71

    .line 131
    :cond_82
    invoke-interface {p0}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v0

    if-nez v0, :cond_76

    goto :goto_71
.end method

.method public static moveForwardUntilMatchingColumnLocked(Landroid/database/Cursor;IILcom/google/common/base/Predicate;)Z
    .registers 9
    .parameter "cursor"
    .parameter "startPosition"
    .parameter "column"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "II",
            "Lcom/google/common/base/Predicate",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p3, predicate:Lcom/google/common/base/Predicate;,"Lcom/google/common/base/Predicate<Ljava/lang/String;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 94
    const/4 v0, -0x1

    if-lt p1, v0, :cond_72

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gt p1, v0, :cond_72

    move v0, v1

    :goto_c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad position "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", expected [-1.."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 96
    if-ltz p2, :cond_74

    invoke-interface {p0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    if-ge p2, v0, :cond_74

    move v0, v1

    :goto_3f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", expected [0.."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 99
    invoke-interface {p0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-nez v0, :cond_76

    .line 107
    :goto_71
    return v2

    :cond_72
    move v0, v2

    .line 94
    goto :goto_c

    :cond_74
    move v0, v2

    .line 96
    goto :goto_3f

    .line 103
    :cond_76
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_82

    move v2, v1

    .line 104
    goto :goto_71

    .line 106
    :cond_82
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_76

    goto :goto_71
.end method

.method public static moveToNextStringValueLocked(Landroid/database/Cursor;IILjava/lang/String;)Z
    .registers 5
    .parameter "cursor"
    .parameter "startPosition"
    .parameter "columnIndex"
    .parameter "value"

    .prologue
    .line 36
    new-instance v0, Lcom/google/android/apps/books/util/CursorUtils$1;

    invoke-direct {v0, p0, p1, p3}, Lcom/google/android/apps/books/util/CursorUtils$1;-><init>(Landroid/database/Cursor;ILjava/lang/String;)V

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/apps/books/util/CursorUtils;->moveForwardUntilMatchingColumnLocked(Landroid/database/Cursor;IILcom/google/common/base/Predicate;)Z

    move-result v0

    return v0
.end method

.method public static moveToNextStringValueOrThrowLocked(Landroid/database/Cursor;IILjava/lang/String;)V
    .registers 7
    .parameter "cursor"
    .parameter "startPosition"
    .parameter "columnIndex"
    .parameter "value"

    .prologue
    .line 50
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/apps/books/util/CursorUtils;->moveToNextStringValueLocked(Landroid/database/Cursor;IILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 51
    new-instance v0, Ljava/util/NoSuchElementException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_2d
    return-void
.end method

.method public static moveToStringValueLocked(Landroid/database/Cursor;ILjava/lang/String;)Z
    .registers 5
    .parameter "cursor"
    .parameter "columnIndex"
    .parameter "value"

    .prologue
    .line 62
    const/4 v0, 0x0

    new-instance v1, Lcom/google/android/apps/books/util/CursorUtils$2;

    invoke-direct {v1, p2}, Lcom/google/android/apps/books/util/CursorUtils$2;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p1, v1}, Lcom/google/android/apps/books/util/CursorUtils;->moveForwardUntilMatchingColumnLocked(Landroid/database/Cursor;IILcom/google/common/base/Predicate;)Z

    move-result v0

    return v0
.end method

.method public static moveToStringValueOrThrowLocked(Landroid/database/Cursor;ILjava/lang/String;)V
    .registers 6
    .parameter "cursor"
    .parameter "columnIndex"
    .parameter "value"

    .prologue
    .line 79
    invoke-static {p0, p1, p2}, Lcom/google/android/apps/books/util/CursorUtils;->moveToStringValueLocked(Landroid/database/Cursor;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 80
    new-instance v0, Ljava/util/NoSuchElementException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_2d
    return-void
.end method
