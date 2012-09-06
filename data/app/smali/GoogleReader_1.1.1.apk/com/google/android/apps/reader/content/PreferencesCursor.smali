.class Lcom/google/android/apps/reader/content/PreferencesCursor;
.super Landroid/database/AbstractCursor;
.source "PreferencesCursor.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private final mChanges:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCursor:Landroid/database/Cursor;

.field private final mOnSharedPreferenceChangeListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/os/ResultReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreferences:Landroid/content/SharedPreferences;

.field private final mProjection:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;Landroid/content/SharedPreferences;)V
    .registers 5
    .parameter "projection"
    .parameter "preferences"

    .prologue
    .line 86
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 77
    invoke-static {}, Lcom/google/android/apps/reader/content/PreferencesCursor;->createSet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/reader/content/PreferencesCursor;->mChanges:Ljava/util/Set;

    .line 79
    invoke-static {}, Lcom/google/android/apps/reader/content/PreferencesCursor;->createSet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/reader/content/PreferencesCursor;->mOnSharedPreferenceChangeListeners:Ljava/util/Set;

    .line 87
    if-nez p1, :cond_19

    .line 88
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Project is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_19
    if-nez p2, :cond_23

    .line 91
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Preferences are null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_23
    iput-object p1, p0, Lcom/google/android/apps/reader/content/PreferencesCursor;->mProjection:[Ljava/lang/String;

    .line 94
    iput-object p2, p0, Lcom/google/android/apps/reader/content/PreferencesCursor;->mPreferences:Landroid/content/SharedPreferences;

    .line 95
    invoke-static {p1, p2}, Lcom/google/android/apps/reader/content/PreferencesCursor;->copyToCursor([Ljava/lang/String;Landroid/content/SharedPreferences;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/reader/content/PreferencesCursor;->mCursor:Landroid/database/Cursor;

    .line 96
    iget-object v0, p0, Lcom/google/android/apps/reader/content/PreferencesCursor;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 97
    return-void
.end method

.method private static copyToCursor([Ljava/lang/String;Landroid/content/SharedPreferences;)Landroid/database/Cursor;
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x0

    .line 47
    new-instance v2, Landroid/database/MatrixCursor;

    invoke-direct {v2, p0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 48
    invoke-interface {p1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_65

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 49
    invoke-virtual {v2}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v4

    .line 50
    array-length v5, p0

    move v6, v8

    :goto_24
    if-ge v6, v5, :cond_12

    aget-object v1, p0, v6

    .line 51
    const-string v7, "key"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3d

    .line 52
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 53
    invoke-virtual {v4, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 50
    :goto_39
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_24

    .line 54
    :cond_3d
    const-string v7, "value"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_60

    .line 55
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 56
    instance-of v7, v1, Ljava/lang/Boolean;

    if-eqz v7, :cond_5a

    .line 58
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v7, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5e

    const/4 v1, 0x1

    :goto_56
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 60
    :cond_5a
    invoke-virtual {v4, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_39

    :cond_5e
    move v1, v8

    .line 58
    goto :goto_56

    .line 62
    :cond_60
    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_39

    .line 66
    :cond_65
    return-object v2
.end method

.method private static createSet()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Set",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 70
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0
.end method

.method private getPositionedCursor()Landroid/database/Cursor;
    .registers 4

    .prologue
    .line 105
    iget v0, p0, Lcom/google/android/apps/reader/content/PreferencesCursor;->mPos:I

    .line 106
    .local v0, index:I
    iget-object v2, p0, Lcom/google/android/apps/reader/content/PreferencesCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 107
    iget-object v2, p0, Lcom/google/android/apps/reader/content/PreferencesCursor;->mCursor:Landroid/database/Cursor;

    return-object v2

    .line 109
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/apps/reader/content/PreferencesCursor;->getCount()I

    move-result v1

    .line 110
    .local v1, size:I
    new-instance v2, Landroid/database/CursorIndexOutOfBoundsException;

    invoke-direct {v2, v0, v1}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(II)V

    throw v2
.end method

.method private notifyOnSharedPreferenceChangeListeners(Ljava/util/Set;)V
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 166
    .local p1, changes:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 167
    .local v2, key:Ljava/lang/String;
    iget-object v5, p0, Lcom/google/android/apps/reader/content/PreferencesCursor;->mOnSharedPreferenceChangeListeners:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ResultReceiver;

    .line 168
    .local v3, receiver:Landroid/os/ResultReceiver;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 169
    .local v4, resultData:Landroid/os/Bundle;
    const-string v5, "key"

    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_16

    .line 173
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #key:Ljava/lang/String;
    .end local v3           #receiver:Landroid/os/ResultReceiver;
    .end local v4           #resultData:Landroid/os/Bundle;
    :cond_31
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/google/android/apps/reader/content/PreferencesCursor;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 192
    invoke-super {p0}, Landroid/database/AbstractCursor;->close()V

    .line 193
    return-void
.end method

.method public getColumnNames()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/android/apps/reader/content/PreferencesCursor;->mProjection:[Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/android/apps/reader/content/PreferencesCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    return v0
.end method

.method public getDouble(I)D
    .registers 4
    .parameter "column"

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/google/android/apps/reader/content/PreferencesCursor;->getPositionedCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat(I)F
    .registers 3
    .parameter "column"

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/google/android/apps/reader/content/PreferencesCursor;->getPositionedCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    return v0
.end method

.method public getInt(I)I
    .registers 3
    .parameter "column"

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/google/android/apps/reader/content/PreferencesCursor;->getPositionedCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getLong(I)J
    .registers 4
    .parameter "column"

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/google/android/apps/reader/content/PreferencesCursor;->getPositionedCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShort(I)S
    .registers 3
    .parameter "column"

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/google/android/apps/reader/content/PreferencesCursor;->getPositionedCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .registers 3
    .parameter "column"

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/google/android/apps/reader/content/PreferencesCursor;->getPositionedCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isNull(I)Z
    .registers 3
    .parameter "column"

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/google/android/apps/reader/content/PreferencesCursor;->getPositionedCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    return v0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 202
    iget-object v0, p0, Lcom/google/android/apps/reader/content/PreferencesCursor;->mChanges:Ljava/util/Set;

    monitor-enter v0

    .line 203
    :try_start_3
    iget-object v1, p0, Lcom/google/android/apps/reader/content/PreferencesCursor;->mChanges:Ljava/util/Set;

    invoke-interface {v1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 204
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_e

    .line 205
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/reader/content/PreferencesCursor;->onChange(Z)V

    .line 206
    return-void

    .line 204
    :catchall_e
    move-exception v1

    :try_start_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw v1
.end method

.method public requery()Z
    .registers 3

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/android/apps/reader/content/PreferencesCursor;->mProjection:[Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/apps/reader/content/PreferencesCursor;->mPreferences:Landroid/content/SharedPreferences;

    invoke-static {v0, v1}, Lcom/google/android/apps/reader/content/PreferencesCursor;->copyToCursor([Ljava/lang/String;Landroid/content/SharedPreferences;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/reader/content/PreferencesCursor;->mCursor:Landroid/database/Cursor;

    .line 157
    iget-object v0, p0, Lcom/google/android/apps/reader/content/PreferencesCursor;->mChanges:Ljava/util/Set;

    monitor-enter v0

    .line 158
    :try_start_d
    iget-object v1, p0, Lcom/google/android/apps/reader/content/PreferencesCursor;->mChanges:Ljava/util/Set;

    invoke-direct {p0, v1}, Lcom/google/android/apps/reader/content/PreferencesCursor;->notifyOnSharedPreferenceChangeListeners(Ljava/util/Set;)V

    .line 159
    iget-object v1, p0, Lcom/google/android/apps/reader/content/PreferencesCursor;->mChanges:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 160
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_d .. :try_end_18} :catchall_1d

    .line 162
    invoke-super {p0}, Landroid/database/AbstractCursor;->requery()Z

    move-result v0

    return v0

    .line 160
    :catchall_1d
    move-exception v1

    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 4
    .parameter

    .prologue
    .line 177
    const-string v0, "registerOnSharedPreferenceChangeListener"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ResultReceiver;

    .line 178
    if-eqz v0, :cond_f

    .line 179
    iget-object v1, p0, Lcom/google/android/apps/reader/content/PreferencesCursor;->mOnSharedPreferenceChangeListeners:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 186
    :cond_f
    invoke-super {p0, p1}, Landroid/database/AbstractCursor;->respond(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
