.class Lcom/android/inputmethod/latin/UserUnigramDictionary$UpdateDbTask;
.super Landroid/os/AsyncTask;
.source "UserUnigramDictionary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/UserUnigramDictionary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdateDbTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mDbHelper:Lcom/android/inputmethod/latin/UserUnigramDictionary$DatabaseHelper;

.field private final mLocale:Ljava/lang/String;

.field private final mMap:Ljava/util/HashMap;
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


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/inputmethod/latin/UserUnigramDictionary$DatabaseHelper;Ljava/util/HashMap;Ljava/lang/String;)V
    .registers 5
    .parameter "context"
    .parameter "openHelper"
    .parameter
    .parameter "locale"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/inputmethod/latin/UserUnigramDictionary$DatabaseHelper;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 231
    .local p3, pendingWrites:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 233
    iput-object p3, p0, Lcom/android/inputmethod/latin/UserUnigramDictionary$UpdateDbTask;->mMap:Ljava/util/HashMap;

    .line 234
    iput-object p4, p0, Lcom/android/inputmethod/latin/UserUnigramDictionary$UpdateDbTask;->mLocale:Ljava/lang/String;

    .line 235
    iput-object p2, p0, Lcom/android/inputmethod/latin/UserUnigramDictionary$UpdateDbTask;->mDbHelper:Lcom/android/inputmethod/latin/UserUnigramDictionary$DatabaseHelper;

    .line 236
    return-void
.end method

.method private getContentValues(Ljava/lang/String;ILjava/lang/String;)Landroid/content/ContentValues;
    .registers 7
    .parameter "word"
    .parameter "frequency"
    .parameter "locale"

    .prologue
    .line 256
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 257
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "word"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    const-string v1, "freq"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 259
    const-string v1, "locale"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    return-object v0
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/inputmethod/latin/UserUnigramDictionary$UpdateDbTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 13
    .parameter "v"

    .prologue
    const/4 v10, 0x0

    .line 240
    iget-object v4, p0, Lcom/android/inputmethod/latin/UserUnigramDictionary$UpdateDbTask;->mDbHelper:Lcom/android/inputmethod/latin/UserUnigramDictionary$DatabaseHelper;

    invoke-virtual {v4}, Lcom/android/inputmethod/latin/UserUnigramDictionary$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 242
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    iget-object v4, p0, Lcom/android/inputmethod/latin/UserUnigramDictionary$UpdateDbTask;->mMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 243
    .local v3, mEntries:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_11
    :goto_11
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_18

    .line 252
    return-object v10

    .line 243
    :cond_18
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 244
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 245
    .local v2, freq:Ljava/lang/Integer;
    const-string v6, "words"

    const-string v7, "word=? AND locale=?"

    .line 246
    const/4 v4, 0x2

    new-array v8, v4, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v8, v9

    const/4 v4, 0x1

    iget-object v9, p0, Lcom/android/inputmethod/latin/UserUnigramDictionary$UpdateDbTask;->mLocale:Ljava/lang/String;

    aput-object v9, v8, v4

    .line 245
    invoke-virtual {v0, v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 247
    if-eqz v2, :cond_11

    .line 248
    const-string v6, "words"

    .line 249
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v8, p0, Lcom/android/inputmethod/latin/UserUnigramDictionary$UpdateDbTask;->mLocale:Ljava/lang/String;

    invoke-direct {p0, v4, v7, v8}, Lcom/android/inputmethod/latin/UserUnigramDictionary$UpdateDbTask;->getContentValues(Ljava/lang/String;ILjava/lang/String;)Landroid/content/ContentValues;

    move-result-object v4

    .line 248
    invoke-virtual {v0, v6, v10, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_11
.end method
