.class public Lcom/android/inputmethod/latin/UserUnigramDictionary;
.super Lcom/android/inputmethod/latin/ExpandableDictionary;
.source "UserUnigramDictionary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/latin/UserUnigramDictionary$DatabaseHelper;,
        Lcom/android/inputmethod/latin/UserUnigramDictionary$UpdateDbTask;
    }
.end annotation


# static fields
.field private static final COLUMN_FREQUENCY:Ljava/lang/String; = "freq"

.field private static final COLUMN_ID:Ljava/lang/String; = "_id"

.field private static final COLUMN_LOCALE:Ljava/lang/String; = "locale"

.field private static final COLUMN_WORD:Ljava/lang/String; = "word"

.field private static final DATABASE_NAME:Ljava/lang/String; = "auto_dict.db"

.field private static final DATABASE_VERSION:I = 0x1

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "freq DESC"

.field static final ENABLE_USER_UNIGRAM_DICTIONARY:Z = false

.field static final FREQUENCY_FOR_PICKED:I = 0x3

.field static final FREQUENCY_FOR_TYPED:I = 0x1

.field private static final USER_UNIGRAM_DICT_TABLE_NAME:Ljava/lang/String; = "words"

.field private static final VALIDITY_THRESHOLD:I = 0x6

.field private static sDictProjectionMap:Ljava/util/HashMap;
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

.field private static sOpenHelper:Lcom/android/inputmethod/latin/UserUnigramDictionary$DatabaseHelper;


# instance fields
.field private mIme:Lcom/android/inputmethod/latin/LatinIME;

.field private mLocale:Ljava/lang/String;

.field private mPendingWrites:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingWritesLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 86
    const/4 v0, 0x0

    sput-object v0, Lcom/android/inputmethod/latin/UserUnigramDictionary;->sOpenHelper:Lcom/android/inputmethod/latin/UserUnigramDictionary$DatabaseHelper;

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/inputmethod/latin/LatinIME;Ljava/lang/String;I)V
    .registers 6
    .parameter "context"
    .parameter "ime"
    .parameter "locale"
    .parameter "dicTypeId"

    .prologue
    .line 89
    invoke-direct {p0, p1, p4}, Lcom/android/inputmethod/latin/ExpandableDictionary;-><init>(Landroid/content/Context;I)V

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/UserUnigramDictionary;->mPendingWrites:Ljava/util/HashMap;

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/UserUnigramDictionary;->mPendingWritesLock:Ljava/lang/Object;

    .line 92
    return-void
.end method

.method private query(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 12
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    const/4 v2, 0x0

    .line 211
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 212
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v3, "words"

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 213
    sget-object v3, Lcom/android/inputmethod/latin/UserUnigramDictionary;->sDictProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 216
    sget-object v3, Lcom/android/inputmethod/latin/UserUnigramDictionary;->sOpenHelper:Lcom/android/inputmethod/latin/UserUnigramDictionary$DatabaseHelper;

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/UserUnigramDictionary$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 218
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v7, "freq DESC"

    move-object v3, p1

    move-object v4, p2

    move-object v5, v2

    move-object v6, v2

    .line 217
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 219
    .local v8, c:Landroid/database/Cursor;
    return-object v8
.end method


# virtual methods
.method public addWord(Ljava/lang/String;I)V
    .registers 3
    .parameter "newWord"
    .parameter "addFrequency"

    .prologue
    .line 148
    return-void
.end method

.method public close()V
    .registers 1

    .prologue
    .line 112
    invoke-super {p0}, Lcom/android/inputmethod/latin/ExpandableDictionary;->close()V

    .line 113
    return-void
.end method

.method public flushPendingWrites()V
    .registers 1

    .prologue
    .line 171
    return-void
.end method

.method public declared-synchronized isValidWord(Ljava/lang/CharSequence;)Z
    .registers 3
    .parameter "word"

    .prologue
    .line 105
    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return v0
.end method

.method public loadDictionaryAsync()V
    .registers 1

    .prologue
    .line 123
    return-void
.end method
