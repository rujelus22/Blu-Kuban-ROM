.class Lcom/google/android/apps/reader/preference/ProviderPreferences;
.super Ljava/lang/Object;
.source "ProviderPreferences.java"

# interfaces
.implements Landroid/content/SharedPreferences;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/reader/preference/ProviderPreferences$1;,
        Lcom/google/android/apps/reader/preference/ProviderPreferences$AutoRequeryObserver;,
        Lcom/google/android/apps/reader/preference/ProviderPreferences$OnSharedPreferenceChangeListenerReceiver;,
        Lcom/google/android/apps/reader/preference/ProviderPreferences$PreferencesEditor;,
        Lcom/google/android/apps/reader/preference/ProviderPreferences$ApplyTask;
    }
.end annotation


# static fields
.field private static final COLUMN_KEY:I = 0x0

.field private static final COLUMN_VALUE:I = 0x1

.field private static final PROJECTION:[Ljava/lang/String;


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContentUri:Landroid/net/Uri;

.field private final mCursor:Landroid/database/Cursor;

.field private final mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 47
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "key"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "value"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/reader/preference/ProviderPreferences;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .registers 10
    .parameter "resolver"
    .parameter "uri"

    .prologue
    const/4 v3, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-static {}, Lcom/google/android/apps/reader/preference/ProviderPreferences;->createSet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/reader/preference/ProviderPreferences;->mListeners:Ljava/util/Set;

    .line 78
    if-nez p1, :cond_14

    .line 79
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Content resolver is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_14
    if-nez p2, :cond_1e

    .line 82
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Content URI is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_1e
    iput-object p1, p0, Lcom/google/android/apps/reader/preference/ProviderPreferences;->mContentResolver:Landroid/content/ContentResolver;

    .line 85
    iput-object p2, p0, Lcom/google/android/apps/reader/preference/ProviderPreferences;->mContentUri:Landroid/net/Uri;

    .line 86
    sget-object v2, Lcom/google/android/apps/reader/preference/ProviderPreferences;->PROJECTION:[Ljava/lang/String;

    move-object v0, p1

    move-object v1, p2

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/reader/preference/ProviderPreferences;->mCursor:Landroid/database/Cursor;

    .line 88
    new-instance v6, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 89
    .local v6, handler:Landroid/os/Handler;
    iget-object v0, p0, Lcom/google/android/apps/reader/preference/ProviderPreferences;->mCursor:Landroid/database/Cursor;

    new-instance v1, Lcom/google/android/apps/reader/preference/ProviderPreferences$AutoRequeryObserver;

    invoke-direct {v1, p0, v6}, Lcom/google/android/apps/reader/preference/ProviderPreferences$AutoRequeryObserver;-><init>(Lcom/google/android/apps/reader/preference/ProviderPreferences;Landroid/os/Handler;)V

    invoke-interface {v0, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 90
    new-instance v0, Lcom/google/android/apps/reader/preference/ProviderPreferences$OnSharedPreferenceChangeListenerReceiver;

    invoke-direct {v0, p0, v6}, Lcom/google/android/apps/reader/preference/ProviderPreferences$OnSharedPreferenceChangeListenerReceiver;-><init>(Lcom/google/android/apps/reader/preference/ProviderPreferences;Landroid/os/Handler;)V

    invoke-direct {p0, v0}, Lcom/google/android/apps/reader/preference/ProviderPreferences;->registerOnSharedPreferenceChangeListener(Landroid/os/ResultReceiver;)V

    .line 92
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/reader/preference/ProviderPreferences;)Landroid/net/Uri;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/apps/reader/preference/ProviderPreferences;->mContentUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/reader/preference/ProviderPreferences;)Landroid/content/ContentResolver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/apps/reader/preference/ProviderPreferences;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$200(Ljava/util/List;)[Landroid/content/ContentValues;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    invoke-static {p0}, Lcom/google/android/apps/reader/preference/ProviderPreferences;->newContentValuesArray(Ljava/util/List;)[Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/apps/reader/preference/ProviderPreferences;)Ljava/util/Set;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/apps/reader/preference/ProviderPreferences;->mListeners:Ljava/util/Set;

    return-object v0
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
    .line 54
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0
.end method

.method private findKey(Ljava/lang/String;)Z
    .registers 5
    .parameter "key"

    .prologue
    const/4 v2, 0x0

    .line 98
    const/4 v0, 0x0

    .local v0, position:I
    :goto_2
    iget-object v1, p0, Lcom/google/android/apps/reader/preference/ProviderPreferences;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 99
    iget-object v1, p0, Lcom/google/android/apps/reader/preference/ProviderPreferences;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 100
    const/4 v1, 0x1

    .line 103
    :goto_17
    return v1

    .line 98
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1b
    move v1, v2

    .line 103
    goto :goto_17
.end method

.method private static newContentValuesArray(Ljava/util/List;)[Landroid/content/ContentValues;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)[",
            "Landroid/content/ContentValues;"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, values:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/content/ContentValues;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0           #values:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    check-cast p0, [Landroid/content/ContentValues;

    return-object p0
.end method

.method private registerOnSharedPreferenceChangeListener(Landroid/os/ResultReceiver;)V
    .registers 4
    .parameter

    .prologue
    .line 222
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 223
    const-string v1, "registerOnSharedPreferenceChangeListener"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 224
    iget-object v1, p0, Lcom/google/android/apps/reader/preference/ProviderPreferences;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, v0}, Landroid/database/Cursor;->respond(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 225
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .registers 3
    .parameter "key"

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/google/android/apps/reader/preference/ProviderPreferences;->findKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public edit()Landroid/content/SharedPreferences$Editor;
    .registers 2

    .prologue
    .line 117
    new-instance v0, Lcom/google/android/apps/reader/preference/ProviderPreferences$PreferencesEditor;

    invoke-direct {v0, p0}, Lcom/google/android/apps/reader/preference/ProviderPreferences$PreferencesEditor;-><init>(Lcom/google/android/apps/reader/preference/ProviderPreferences;)V

    return-object v0
.end method

.method public getAll()Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 124
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move v1, v5

    .line 125
    :goto_7
    iget-object v2, p0, Lcom/google/android/apps/reader/preference/ProviderPreferences;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 126
    iget-object v2, p0, Lcom/google/android/apps/reader/preference/ProviderPreferences;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 127
    iget-object v3, p0, Lcom/google/android/apps/reader/preference/ProviderPreferences;->mCursor:Landroid/database/Cursor;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 128
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 130
    :cond_22
    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 137
    invoke-direct {p0, p1}, Lcom/google/android/apps/reader/preference/ProviderPreferences;->findKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 139
    iget-object v0, p0, Lcom/google/android/apps/reader/preference/ProviderPreferences;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 141
    :try_start_d
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_10
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_10} :catch_17

    move-result v0

    if-eqz v0, :cond_15

    move v0, v1

    .line 146
    :goto_14
    return v0

    .line 141
    :cond_15
    const/4 v0, 0x0

    goto :goto_14

    .line 143
    :catch_17
    move-exception v1

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_14

    :cond_1d
    move v0, p2

    .line 146
    goto :goto_14
.end method

.method public getFloat(Ljava/lang/String;F)F
    .registers 5
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 154
    invoke-direct {p0, p1}, Lcom/google/android/apps/reader/preference/ProviderPreferences;->findKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 155
    iget-object v0, p0, Lcom/google/android/apps/reader/preference/ProviderPreferences;->mCursor:Landroid/database/Cursor;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    .line 157
    :goto_d
    return v0

    :cond_e
    move v0, p2

    goto :goto_d
.end method

.method public getInt(Ljava/lang/String;I)I
    .registers 5
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 165
    invoke-direct {p0, p1}, Lcom/google/android/apps/reader/preference/ProviderPreferences;->findKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 166
    iget-object v0, p0, Lcom/google/android/apps/reader/preference/ProviderPreferences;->mCursor:Landroid/database/Cursor;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 168
    :goto_d
    return v0

    :cond_e
    move v0, p2

    goto :goto_d
.end method

.method public getLong(Ljava/lang/String;J)J
    .registers 6
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 176
    invoke-direct {p0, p1}, Lcom/google/android/apps/reader/preference/ProviderPreferences;->findKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 177
    iget-object v0, p0, Lcom/google/android/apps/reader/preference/ProviderPreferences;->mCursor:Landroid/database/Cursor;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 179
    :goto_d
    return-wide v0

    :cond_e
    move-wide v0, p2

    goto :goto_d
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 187
    invoke-direct {p0, p1}, Lcom/google/android/apps/reader/preference/ProviderPreferences;->findKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 188
    iget-object v0, p0, Lcom/google/android/apps/reader/preference/ProviderPreferences;->mCursor:Landroid/database/Cursor;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 190
    :goto_d
    return-object v0

    :cond_e
    move-object v0, p2

    goto :goto_d
.end method

.method public getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .registers 4
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 198
    .local p2, defValue:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method onContentChanged()V
    .registers 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/google/android/apps/reader/preference/ProviderPreferences;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    .line 229
    return-void
.end method

.method public registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .registers 4
    .parameter

    .prologue
    .line 206
    iget-object v0, p0, Lcom/google/android/apps/reader/preference/ProviderPreferences;->mListeners:Ljava/util/Set;

    monitor-enter v0

    .line 207
    :try_start_3
    iget-object v1, p0, Lcom/google/android/apps/reader/preference/ProviderPreferences;->mListeners:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 208
    monitor-exit v0

    .line 209
    return-void

    .line 208
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .registers 4
    .parameter

    .prologue
    .line 216
    iget-object v0, p0, Lcom/google/android/apps/reader/preference/ProviderPreferences;->mListeners:Ljava/util/Set;

    monitor-enter v0

    .line 217
    :try_start_3
    iget-object v1, p0, Lcom/google/android/apps/reader/preference/ProviderPreferences;->mListeners:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 218
    monitor-exit v0

    .line 219
    return-void

    .line 218
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method
