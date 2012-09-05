.class public Lcom/google/android/googlequicksearchbox/MapBackedSuggestionExtras;
.super Ljava/lang/Object;
.source "MapBackedSuggestionExtras.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/SuggestionExtras;


# static fields
.field private static final DEFAULT_COLUMNS:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mMap:Ljava/util/HashMap;
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


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 39
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/google/android/googlequicksearchbox/MapBackedSuggestionExtras;->DEFAULT_COLUMNS:Ljava/util/HashSet;

    .line 41
    sget-object v0, Lcom/google/android/googlequicksearchbox/MapBackedSuggestionExtras;->DEFAULT_COLUMNS:Ljava/util/HashSet;

    sget-object v1, Lcom/google/android/googlequicksearchbox/WebSuggestionsBackedCursor;->COLUMNS:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 42
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/MapBackedSuggestionExtras;->mMap:Ljava/util/HashMap;

    .line 48
    return-void
.end method

.method public static fromCursor(Landroid/database/Cursor;)Lcom/google/android/googlequicksearchbox/SuggestionExtras;
    .registers 7
    .parameter "c"

    .prologue
    .line 61
    const/4 v2, 0x0

    .line 62
    .local v2, extras:Lcom/google/android/googlequicksearchbox/MapBackedSuggestionExtras;
    invoke-static {p0}, Lcom/google/android/googlequicksearchbox/MapBackedSuggestionExtras;->getExtraColumns(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v1

    .line 63
    .local v1, columns:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_31

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_31

    .line 64
    new-instance v2, Lcom/google/android/googlequicksearchbox/MapBackedSuggestionExtras;

    .end local v2           #extras:Lcom/google/android/googlequicksearchbox/MapBackedSuggestionExtras;
    invoke-direct {v2}, Lcom/google/android/googlequicksearchbox/MapBackedSuggestionExtras;-><init>()V

    .line 65
    .restart local v2       #extras:Lcom/google/android/googlequicksearchbox/MapBackedSuggestionExtras;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_16
    :goto_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 66
    .local v4, key:Ljava/lang/String;
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 67
    .local v0, columnIdx:I
    const/4 v5, -0x1

    if-eq v0, v5, :cond_16

    .line 68
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lcom/google/android/googlequicksearchbox/MapBackedSuggestionExtras;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16

    .line 72
    .end local v0           #columnIdx:I
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #key:Ljava/lang/String;
    :cond_31
    return-object v2
.end method

.method public static varargs fromKeyValuePairs([Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/SuggestionExtras;
    .registers 5
    .parameter "pairs"

    .prologue
    .line 52
    array-length v2, p0

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_b

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 53
    :cond_b
    new-instance v0, Lcom/google/android/googlequicksearchbox/MapBackedSuggestionExtras;

    invoke-direct {v0}, Lcom/google/android/googlequicksearchbox/MapBackedSuggestionExtras;-><init>()V

    .line 54
    .local v0, extras:Lcom/google/android/googlequicksearchbox/MapBackedSuggestionExtras;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_11
    array-length v2, p0

    if-ge v1, v2, :cond_20

    .line 55
    aget-object v2, p0, v1

    add-int/lit8 v3, v1, 0x1

    aget-object v3, p0, v3

    invoke-direct {v0, v2, v3}, Lcom/google/android/googlequicksearchbox/MapBackedSuggestionExtras;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    add-int/lit8 v1, v1, 0x2

    goto :goto_11

    .line 57
    :cond_20
    return-object v0
.end method

.method private static getCursorColumns(Landroid/database/Cursor;)[Ljava/lang/String;
    .registers 4
    .parameter "cursor"

    .prologue
    .line 92
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    .line 96
    :goto_4
    return-object v1

    .line 93
    :catch_5
    move-exception v0

    .line 95
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v1, "QSB.SuggestionExtrasMap"

    const-string v2, "getColumnNames() failed, "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 96
    const/4 v1, 0x0

    goto :goto_4
.end method

.method private static getExtraColumns(Landroid/database/Cursor;)Ljava/util/List;
    .registers 8
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    invoke-static {p0}, Lcom/google/android/googlequicksearchbox/MapBackedSuggestionExtras;->getCursorColumns(Landroid/database/Cursor;)[Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, columns:[Ljava/lang/String;
    if-nez v1, :cond_8

    const/4 v3, 0x0

    .line 87
    :cond_7
    return-object v3

    .line 78
    :cond_8
    const/4 v3, 0x0

    .line 79
    .local v3, extraColumns:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    move-object v0, v1

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_c
    if-ge v4, v5, :cond_7

    aget-object v2, v0, v4

    .line 80
    .local v2, cursorColumn:Ljava/lang/String;
    sget-object v6, Lcom/google/android/googlequicksearchbox/MapBackedSuggestionExtras;->DEFAULT_COLUMNS:Ljava/util/HashSet;

    invoke-virtual {v6, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_22

    .line 81
    if-nez v3, :cond_1f

    .line 82
    new-instance v3, Ljava/util/ArrayList;

    .end local v3           #extraColumns:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .restart local v3       #extraColumns:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_1f
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    :cond_22
    add-int/lit8 v4, v4, 0x1

    goto :goto_c
.end method

.method private put(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "key"
    .parameter "value"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/MapBackedSuggestionExtras;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    return-void
.end method


# virtual methods
.method public getExtra(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "columnName"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/MapBackedSuggestionExtras;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getExtraColumnNames()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/MapBackedSuggestionExtras;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public toJsonString()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 116
    new-instance v0, Lcom/google/android/googlequicksearchbox/JsonBackedSuggestionExtras;

    invoke-direct {v0, p0}, Lcom/google/android/googlequicksearchbox/JsonBackedSuggestionExtras;-><init>(Lcom/google/android/googlequicksearchbox/SuggestionExtras;)V

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/JsonBackedSuggestionExtras;->toJsonString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
