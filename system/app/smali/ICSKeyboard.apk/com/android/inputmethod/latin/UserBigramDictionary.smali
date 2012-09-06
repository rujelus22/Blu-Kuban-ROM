.class public Lcom/android/inputmethod/latin/UserBigramDictionary;
.super Lcom/android/inputmethod/latin/ExpandableDictionary;
.source "UserBigramDictionary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/latin/UserBigramDictionary$Bigram;,
        Lcom/android/inputmethod/latin/UserBigramDictionary$DatabaseHelper;,
        Lcom/android/inputmethod/latin/UserBigramDictionary$UpdateDbTask;
    }
.end annotation


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "userbigram_dict.db"

.field private static final DATABASE_VERSION:I = 0x1

.field private static final FREQUENCY_FOR_TYPED:I = 0x2

.field private static final FREQUENCY_MAX:I = 0x7f

.field private static final FREQ_COLUMN_FREQUENCY:Ljava/lang/String; = "freq"

.field private static final FREQ_COLUMN_ID:Ljava/lang/String; = "_id"

.field private static final FREQ_COLUMN_PAIR_ID:Ljava/lang/String; = "pair_id"

.field private static final FREQ_TABLE_NAME:Ljava/lang/String; = "frequency"

.field private static final MAIN_COLUMN_ID:Ljava/lang/String; = "_id"

.field private static final MAIN_COLUMN_LOCALE:Ljava/lang/String; = "locale"

.field private static final MAIN_COLUMN_WORD1:Ljava/lang/String; = "word1"

.field private static final MAIN_COLUMN_WORD2:Ljava/lang/String; = "word2"

.field private static final MAIN_TABLE_NAME:Ljava/lang/String; = "main"

.field private static final TAG:Ljava/lang/String; = "UserBigramDictionary"

.field private static sDeleteUserBigrams:I

.field private static final sDictProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sMaxUserBigrams:I

.field private static sOpenHelper:Lcom/android/inputmethod/latin/UserBigramDictionary$DatabaseHelper;

.field private static volatile sUpdatingDB:Z


# instance fields
.field private final mIme:Lcom/android/inputmethod/latin/LatinIME;

.field private mLocale:Ljava/lang/String;

.field private mPendingWrites:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/inputmethod/latin/UserBigramDictionary$Bigram;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingWritesLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 49
    const/16 v0, 0x2710

    sput v0, Lcom/android/inputmethod/latin/UserBigramDictionary;->sMaxUserBigrams:I

    .line 56
    const/16 v0, 0x3e8

    sput v0, Lcom/android/inputmethod/latin/UserBigramDictionary;->sDeleteUserBigrams:I

    .line 87
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/inputmethod/latin/UserBigramDictionary;->sUpdatingDB:Z

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/inputmethod/latin/UserBigramDictionary;->sDictProjectionMap:Ljava/util/HashMap;

    .line 93
    sget-object v0, Lcom/android/inputmethod/latin/UserBigramDictionary;->sDictProjectionMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v2, "_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/android/inputmethod/latin/UserBigramDictionary;->sDictProjectionMap:Ljava/util/HashMap;

    const-string v1, "word1"

    const-string v2, "word1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/android/inputmethod/latin/UserBigramDictionary;->sDictProjectionMap:Ljava/util/HashMap;

    const-string v1, "word2"

    const-string v2, "word2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/android/inputmethod/latin/UserBigramDictionary;->sDictProjectionMap:Ljava/util/HashMap;

    const-string v1, "locale"

    const-string v2, "locale"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/android/inputmethod/latin/UserBigramDictionary;->sDictProjectionMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v2, "_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/android/inputmethod/latin/UserBigramDictionary;->sDictProjectionMap:Ljava/util/HashMap;

    const-string v1, "pair_id"

    const-string v2, "pair_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/android/inputmethod/latin/UserBigramDictionary;->sDictProjectionMap:Ljava/util/HashMap;

    const-string v1, "freq"

    const-string v2, "freq"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const/4 v0, 0x0

    sput-object v0, Lcom/android/inputmethod/latin/UserBigramDictionary;->sOpenHelper:Lcom/android/inputmethod/latin/UserBigramDictionary$DatabaseHelper;

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/inputmethod/latin/LatinIME;Ljava/lang/String;I)V
    .registers 7
    .parameter "context"
    .parameter "ime"
    .parameter "locale"
    .parameter "dicTypeId"

    .prologue
    .line 137
    invoke-direct {p0, p1, p4}, Lcom/android/inputmethod/latin/ExpandableDictionary;-><init>(Landroid/content/Context;I)V

    .line 85
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/UserBigramDictionary;->mPendingWrites:Ljava/util/HashSet;

    .line 86
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/UserBigramDictionary;->mPendingWritesLock:Ljava/lang/Object;

    .line 138
    iput-object p2, p0, Lcom/android/inputmethod/latin/UserBigramDictionary;->mIme:Lcom/android/inputmethod/latin/LatinIME;

    .line 139
    iput-object p3, p0, Lcom/android/inputmethod/latin/UserBigramDictionary;->mLocale:Ljava/lang/String;

    .line 140
    sget-object v0, Lcom/android/inputmethod/latin/UserBigramDictionary;->sOpenHelper:Lcom/android/inputmethod/latin/UserBigramDictionary$DatabaseHelper;

    if-nez v0, :cond_24

    .line 141
    new-instance v0, Lcom/android/inputmethod/latin/UserBigramDictionary$DatabaseHelper;

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/UserBigramDictionary;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/inputmethod/latin/UserBigramDictionary$DatabaseHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/inputmethod/latin/UserBigramDictionary;->sOpenHelper:Lcom/android/inputmethod/latin/UserBigramDictionary$DatabaseHelper;

    .line 143
    :cond_24
    iget-object v0, p0, Lcom/android/inputmethod/latin/UserBigramDictionary;->mLocale:Ljava/lang/String;

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/android/inputmethod/latin/UserBigramDictionary;->mLocale:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_34

    .line 144
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/UserBigramDictionary;->loadDictionary()V

    .line 146
    :cond_34
    return-void
.end method

.method static synthetic access$0()I
    .registers 1

    .prologue
    .line 49
    sget v0, Lcom/android/inputmethod/latin/UserBigramDictionary;->sMaxUserBigrams:I

    return v0
.end method

.method static synthetic access$1()I
    .registers 1

    .prologue
    .line 56
    sget v0, Lcom/android/inputmethod/latin/UserBigramDictionary;->sDeleteUserBigrams:I

    return v0
.end method

.method static synthetic access$2(Z)V
    .registers 1
    .parameter

    .prologue
    .line 87
    sput-boolean p0, Lcom/android/inputmethod/latin/UserBigramDictionary;->sUpdatingDB:Z

    return-void
.end method

.method private query(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 12
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    const/4 v5, 0x0

    .line 243
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 246
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v2, "main INNER JOIN frequency ON (main._id=frequency.pair_id)"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 250
    sget-object v2, Lcom/android/inputmethod/latin/UserBigramDictionary;->sDictProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 253
    sget-object v2, Lcom/android/inputmethod/latin/UserBigramDictionary;->sOpenHelper:Lcom/android/inputmethod/latin/UserBigramDictionary$DatabaseHelper;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/UserBigramDictionary$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 255
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "word1"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "word2"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "freq"

    aput-object v4, v2, v3

    move-object v3, p1

    move-object v4, p2

    move-object v6, v5

    move-object v7, v5

    .line 254
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 257
    .local v8, c:Landroid/database/Cursor;
    return-object v8
.end method


# virtual methods
.method public addBigrams(Ljava/lang/String;Ljava/lang/String;)I
    .registers 8
    .parameter "word1"
    .parameter "word2"

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x0

    .line 163
    iget-object v2, p0, Lcom/android/inputmethod/latin/UserBigramDictionary;->mIme:Lcom/android/inputmethod/latin/LatinIME;

    if-eqz v2, :cond_30

    iget-object v2, p0, Lcom/android/inputmethod/latin/UserBigramDictionary;->mIme:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentWord()Lcom/android/inputmethod/latin/WordComposer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/WordComposer;->isAutoCapitalized()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 164
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 167
    :cond_30
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 183
    :goto_36
    return v1

    .line 171
    :cond_37
    invoke-super {p0, p1, p2, v4}, Lcom/android/inputmethod/latin/ExpandableDictionary;->addBigram(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 172
    .local v1, freq:I
    const/16 v2, 0x7f

    if-le v1, v2, :cond_41

    const/16 v1, 0x7f

    .line 173
    :cond_41
    iget-object v3, p0, Lcom/android/inputmethod/latin/UserBigramDictionary;->mPendingWritesLock:Ljava/lang/Object;

    monitor-enter v3

    .line 174
    if-eq v1, v4, :cond_4e

    :try_start_46
    iget-object v2, p0, Lcom/android/inputmethod/latin/UserBigramDictionary;->mPendingWrites:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 175
    :cond_4e
    iget-object v2, p0, Lcom/android/inputmethod/latin/UserBigramDictionary;->mPendingWrites:Ljava/util/HashSet;

    new-instance v4, Lcom/android/inputmethod/latin/UserBigramDictionary$Bigram;

    invoke-direct {v4, p1, p2, v1}, Lcom/android/inputmethod/latin/UserBigramDictionary$Bigram;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 173
    :goto_58
    monitor-exit v3

    goto :goto_36

    :catchall_5a
    move-exception v2

    monitor-exit v3
    :try_end_5c
    .catchall {:try_start_46 .. :try_end_5c} :catchall_5a

    throw v2

    .line 177
    :cond_5d
    :try_start_5d
    new-instance v0, Lcom/android/inputmethod/latin/UserBigramDictionary$Bigram;

    invoke-direct {v0, p1, p2, v1}, Lcom/android/inputmethod/latin/UserBigramDictionary$Bigram;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 178
    .local v0, bi:Lcom/android/inputmethod/latin/UserBigramDictionary$Bigram;
    iget-object v2, p0, Lcom/android/inputmethod/latin/UserBigramDictionary;->mPendingWrites:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 179
    iget-object v2, p0, Lcom/android/inputmethod/latin/UserBigramDictionary;->mPendingWrites:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_6c
    .catchall {:try_start_5d .. :try_end_6c} :catchall_5a

    goto :goto_58
.end method

.method public close()V
    .registers 1

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/UserBigramDictionary;->flushPendingWrites()V

    .line 155
    invoke-super {p0}, Lcom/android/inputmethod/latin/ExpandableDictionary;->close()V

    .line 156
    return-void
.end method

.method public flushPendingWrites()V
    .registers 6

    .prologue
    .line 190
    iget-object v1, p0, Lcom/android/inputmethod/latin/UserBigramDictionary;->mPendingWritesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 192
    :try_start_3
    iget-object v0, p0, Lcom/android/inputmethod/latin/UserBigramDictionary;->mPendingWrites:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    monitor-exit v1

    .line 198
    :goto_c
    return-void

    .line 194
    :cond_d
    new-instance v0, Lcom/android/inputmethod/latin/UserBigramDictionary$UpdateDbTask;

    sget-object v2, Lcom/android/inputmethod/latin/UserBigramDictionary;->sOpenHelper:Lcom/android/inputmethod/latin/UserBigramDictionary$DatabaseHelper;

    iget-object v3, p0, Lcom/android/inputmethod/latin/UserBigramDictionary;->mPendingWrites:Ljava/util/HashSet;

    iget-object v4, p0, Lcom/android/inputmethod/latin/UserBigramDictionary;->mLocale:Ljava/lang/String;

    invoke-direct {v0, v2, v3, v4}, Lcom/android/inputmethod/latin/UserBigramDictionary$UpdateDbTask;-><init>(Lcom/android/inputmethod/latin/UserBigramDictionary$DatabaseHelper;Ljava/util/HashSet;Ljava/lang/String;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Lcom/android/inputmethod/latin/UserBigramDictionary$UpdateDbTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 196
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/UserBigramDictionary;->mPendingWrites:Ljava/util/HashSet;

    .line 190
    monitor-exit v1

    goto :goto_c

    :catchall_27
    move-exception v0

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw v0
.end method

.method public loadDictionaryAsync()V
    .registers 13

    .prologue
    const/16 v11, 0x20

    .line 216
    const-string v7, "locale=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/inputmethod/latin/UserBigramDictionary;->mLocale:Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-direct {p0, v7, v8}, Lcom/android/inputmethod/latin/UserBigramDictionary;->query(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 218
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_10
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_2e

    .line 219
    const-string v7, "word1"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 220
    .local v4, word1Index:I
    const-string v7, "word2"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 221
    .local v6, word2Index:I
    const-string v7, "freq"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 222
    .local v2, frequencyIndex:I
    :goto_28
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z
    :try_end_2b
    .catchall {:try_start_10 .. :try_end_2b} :catchall_51

    move-result v7

    if-eqz v7, :cond_32

    .line 235
    .end local v2           #frequencyIndex:I
    .end local v4           #word1Index:I
    .end local v6           #word2Index:I
    :cond_2e
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 237
    return-void

    .line 223
    .restart local v2       #frequencyIndex:I
    .restart local v4       #word1Index:I
    .restart local v6       #word2Index:I
    :cond_32
    :try_start_32
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 224
    .local v3, word1:Ljava/lang/String;
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 225
    .local v5, word2:Ljava/lang/String;
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 228
    .local v1, frequency:I
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v7, v11, :cond_4d

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v7, v11, :cond_4d

    .line 229
    invoke-super {p0, v3, v5, v1}, Lcom/android/inputmethod/latin/ExpandableDictionary;->setBigram(Ljava/lang/String;Ljava/lang/String;I)I

    .line 231
    :cond_4d
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_50
    .catchall {:try_start_32 .. :try_end_50} :catchall_51

    goto :goto_28

    .line 234
    .end local v1           #frequency:I
    .end local v2           #frequencyIndex:I
    .end local v3           #word1:Ljava/lang/String;
    .end local v4           #word1Index:I
    .end local v5           #word2:Ljava/lang/String;
    .end local v6           #word2Index:I
    :catchall_51
    move-exception v7

    .line 235
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 236
    throw v7
.end method

.method public setDatabaseDelete(I)V
    .registers 2
    .parameter "deleteUserBigram"

    .prologue
    .line 133
    sput p1, Lcom/android/inputmethod/latin/UserBigramDictionary;->sDeleteUserBigrams:I

    .line 134
    return-void
.end method

.method public setDatabaseMax(I)V
    .registers 2
    .parameter "maxUserBigram"

    .prologue
    .line 129
    sput p1, Lcom/android/inputmethod/latin/UserBigramDictionary;->sMaxUserBigrams:I

    .line 130
    return-void
.end method

.method waitUntilUpdateDBDone()V
    .registers 5

    .prologue
    .line 202
    iget-object v1, p0, Lcom/android/inputmethod/latin/UserBigramDictionary;->mPendingWritesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 203
    :goto_3
    :try_start_3
    sget-boolean v0, Lcom/android/inputmethod/latin/UserBigramDictionary;->sUpdatingDB:Z

    if-nez v0, :cond_9

    .line 209
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_11

    return-void

    .line 205
    :cond_9
    const-wide/16 v2, 0x64

    :try_start_b
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_11
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_e} :catch_f

    goto :goto_3

    .line 206
    :catch_f
    move-exception v0

    goto :goto_3

    .line 202
    :catchall_11
    move-exception v0

    :try_start_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw v0
.end method
