.class public Lcom/google/android/apps/reader/widget/ModifiedCursor;
.super Landroid/database/CursorWrapper;
.source "ModifiedCursor.java"


# instance fields
.field private final mModifications:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .registers 3
    .parameter "cursor"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 55
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/reader/widget/ModifiedCursor;->mModifications:Landroid/util/SparseArray;

    .line 56
    return-void
.end method

.method private key(I)I
    .registers 4
    .parameter "columnIndex"

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/google/android/apps/reader/widget/ModifiedCursor;->getPosition()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/apps/reader/widget/ModifiedCursor;->getColumnCount()I

    move-result v1

    mul-int/2addr v0, v1

    add-int/2addr v0, p1

    return v0
.end method


# virtual methods
.method public fill(Landroid/content/ContentValues;IILandroid/widget/BaseAdapter;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/google/android/apps/reader/widget/ModifiedCursor;->getPosition()I

    move-result v0

    move v1, p2

    .line 128
    :goto_5
    if-ge v1, p3, :cond_10

    .line 129
    invoke-virtual {p0, v1}, Lcom/google/android/apps/reader/widget/ModifiedCursor;->moveToPosition(I)Z

    .line 130
    invoke-virtual {p0, p1}, Lcom/google/android/apps/reader/widget/ModifiedCursor;->putModification(Landroid/content/ContentValues;)V

    .line 128
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 132
    :cond_10
    invoke-virtual {p0, v0}, Lcom/google/android/apps/reader/widget/ModifiedCursor;->moveToPosition(I)Z

    .line 133
    invoke-virtual {p4}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 134
    return-void
.end method

.method public getDouble(I)D
    .registers 6
    .parameter "columnIndex"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/android/apps/reader/widget/ModifiedCursor;->mModifications:Landroid/util/SparseArray;

    invoke-direct {p0, p1}, Lcom/google/android/apps/reader/widget/ModifiedCursor;->key(I)I

    move-result v1

    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->getDouble(I)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat(I)F
    .registers 5
    .parameter "columnIndex"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/android/apps/reader/widget/ModifiedCursor;->mModifications:Landroid/util/SparseArray;

    invoke-direct {p0, p1}, Lcom/google/android/apps/reader/widget/ModifiedCursor;->key(I)I

    move-result v1

    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->getFloat(I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public getInt(I)I
    .registers 5
    .parameter "columnIndex"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/apps/reader/widget/ModifiedCursor;->mModifications:Landroid/util/SparseArray;

    invoke-direct {p0, p1}, Lcom/google/android/apps/reader/widget/ModifiedCursor;->key(I)I

    move-result v1

    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getLong(I)J
    .registers 6
    .parameter "columnIndex"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/apps/reader/widget/ModifiedCursor;->mModifications:Landroid/util/SparseArray;

    invoke-direct {p0, p1}, Lcom/google/android/apps/reader/widget/ModifiedCursor;->key(I)I

    move-result v1

    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getShort(I)S
    .registers 5
    .parameter "columnIndex"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/apps/reader/widget/ModifiedCursor;->mModifications:Landroid/util/SparseArray;

    invoke-direct {p0, p1}, Lcom/google/android/apps/reader/widget/ModifiedCursor;->key(I)I

    move-result v1

    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->getShort(I)S

    move-result v2

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Short;

    invoke-virtual {p0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .registers 6
    .parameter "columnIndex"

    .prologue
    .line 64
    iget-object v1, p0, Lcom/google/android/apps/reader/widget/ModifiedCursor;->mModifications:Landroid/util/SparseArray;

    invoke-direct {p0, p1}, Lcom/google/android/apps/reader/widget/ModifiedCursor;->key(I)I

    move-result v2

    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 65
    .local v0, value:Ljava/lang/Object;
    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_14
    return-object v1

    :cond_15
    const/4 v1, 0x0

    goto :goto_14
.end method

.method public put(Landroid/content/ContentValues;Landroid/widget/BaseAdapter;)V
    .registers 3
    .parameter "values"
    .parameter "callback"

    .prologue
    .line 114
    invoke-virtual {p0, p1}, Lcom/google/android/apps/reader/widget/ModifiedCursor;->putModification(Landroid/content/ContentValues;)V

    .line 115
    invoke-virtual {p2}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 116
    return-void
.end method

.method putModification(Landroid/content/ContentValues;)V
    .registers 9
    .parameter "values"

    .prologue
    .line 94
    invoke-virtual {p1}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_8
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_42

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 95
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 96
    .local v3, key:Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 97
    .local v4, value:Ljava/lang/Object;
    instance-of v5, v4, Ljava/lang/Boolean;

    if-eqz v5, :cond_2f

    .line 98
    check-cast v4, Ljava/lang/Boolean;

    .end local v4           #value:Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_40

    const/4 v5, 0x1

    :goto_2b
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 100
    :cond_2f
    invoke-virtual {p0, v3}, Lcom/google/android/apps/reader/widget/ModifiedCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 101
    .local v0, columnIndex:I
    const/4 v5, -0x1

    if-eq v0, v5, :cond_8

    .line 102
    iget-object v5, p0, Lcom/google/android/apps/reader/widget/ModifiedCursor;->mModifications:Landroid/util/SparseArray;

    invoke-direct {p0, v0}, Lcom/google/android/apps/reader/widget/ModifiedCursor;->key(I)I

    move-result v6

    invoke-virtual {v5, v6, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_8

    .line 98
    .end local v0           #columnIndex:I
    :cond_40
    const/4 v5, 0x0

    goto :goto_2b

    .line 105
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3           #key:Ljava/lang/String;
    :cond_42
    return-void
.end method
