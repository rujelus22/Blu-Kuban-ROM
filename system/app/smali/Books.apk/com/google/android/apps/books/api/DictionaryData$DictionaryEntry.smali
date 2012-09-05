.class public Lcom/google/android/apps/books/api/DictionaryData$DictionaryEntry;
.super Ljava/lang/Object;
.source "DictionaryData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/api/DictionaryData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DictionaryEntry"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/api/DictionaryData$DictionaryEntry$EntryType;
    }
.end annotation


# instance fields
.field public entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/books/api/DictionaryData$DictionaryEntry;",
            ">;"
        }
    .end annotation
.end field

.field public entryType:Lcom/google/android/apps/books/api/DictionaryData$DictionaryEntry$EntryType;

.field public labels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/books/api/DictionaryData$DictionaryLabel;",
            ">;"
        }
    .end annotation
.end field

.field public terms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/books/api/DictionaryData$DictionaryTerm;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    return-void
.end method

.method public static parseDictionaryEntry(Lorg/json/JSONObject;)Lcom/google/android/apps/books/api/DictionaryData$DictionaryEntry;
    .registers 12
    .parameter "entryJson"

    .prologue
    .line 259
    new-instance v0, Lcom/google/android/apps/books/api/DictionaryData$DictionaryEntry;

    invoke-direct {v0}, Lcom/google/android/apps/books/api/DictionaryData$DictionaryEntry;-><init>()V

    .line 260
    .local v0, dictEntry:Lcom/google/android/apps/books/api/DictionaryData$DictionaryEntry;
    const-string v9, "type"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 261
    .local v2, entryType:Ljava/lang/String;
    const-string v9, "type"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/apps/books/api/DictionaryData$DictionaryEntry$EntryType;->get(Ljava/lang/String;)Lcom/google/android/apps/books/api/DictionaryData$DictionaryEntry$EntryType;

    move-result-object v9

    iput-object v9, v0, Lcom/google/android/apps/books/api/DictionaryData$DictionaryEntry;->entryType:Lcom/google/android/apps/books/api/DictionaryData$DictionaryEntry$EntryType;

    .line 263
    const-string v9, "labels"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 264
    .local v5, labels:Lorg/json/JSONArray;
    if-eqz v5, :cond_3e

    .line 265
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v9

    iput-object v9, v0, Lcom/google/android/apps/books/api/DictionaryData$DictionaryEntry;->labels:Ljava/util/List;

    .line 266
    const/4 v3, 0x0

    .local v3, i:I
    :goto_26
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v3, v9, :cond_3e

    .line 267
    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 268
    .local v4, labelJson:Lorg/json/JSONObject;
    if-eqz v4, :cond_3b

    .line 269
    iget-object v9, v0, Lcom/google/android/apps/books/api/DictionaryData$DictionaryEntry;->labels:Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/apps/books/api/DictionaryData$DictionaryLabel;->parseDictionaryLabel(Lorg/json/JSONObject;)Lcom/google/android/apps/books/api/DictionaryData$DictionaryLabel;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    :cond_3b
    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    .line 274
    .end local v3           #i:I
    .end local v4           #labelJson:Lorg/json/JSONObject;
    :cond_3e
    const-string v9, "terms"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 275
    .local v8, terms:Lorg/json/JSONArray;
    if-eqz v8, :cond_65

    .line 276
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v9

    iput-object v9, v0, Lcom/google/android/apps/books/api/DictionaryData$DictionaryEntry;->terms:Ljava/util/List;

    .line 277
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_4d
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v3, v9, :cond_65

    .line 278
    invoke-virtual {v8, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 279
    .local v7, termJson:Lorg/json/JSONObject;
    if-eqz v7, :cond_62

    .line 280
    iget-object v9, v0, Lcom/google/android/apps/books/api/DictionaryData$DictionaryEntry;->terms:Ljava/util/List;

    invoke-static {v7}, Lcom/google/android/apps/books/api/DictionaryData$DictionaryTerm;->parseDictionaryTerm(Lorg/json/JSONObject;)Lcom/google/android/apps/books/api/DictionaryData$DictionaryTerm;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    :cond_62
    add-int/lit8 v3, v3, 0x1

    goto :goto_4d

    .line 285
    .end local v3           #i:I
    .end local v7           #termJson:Lorg/json/JSONObject;
    :cond_65
    const-string v9, "entries"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 286
    .local v1, entries:Lorg/json/JSONArray;
    if-eqz v1, :cond_8c

    .line 287
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v9

    iput-object v9, v0, Lcom/google/android/apps/books/api/DictionaryData$DictionaryEntry;->entries:Ljava/util/List;

    .line 288
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_74
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v3, v9, :cond_8c

    .line 289
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 290
    .local v6, subEntryJson:Lorg/json/JSONObject;
    if-eqz v6, :cond_89

    .line 291
    iget-object v9, v0, Lcom/google/android/apps/books/api/DictionaryData$DictionaryEntry;->entries:Ljava/util/List;

    invoke-static {v6}, Lcom/google/android/apps/books/api/DictionaryData$DictionaryEntry;->parseDictionaryEntry(Lorg/json/JSONObject;)Lcom/google/android/apps/books/api/DictionaryData$DictionaryEntry;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    :cond_89
    add-int/lit8 v3, v3, 0x1

    goto :goto_74

    .line 296
    .end local v3           #i:I
    .end local v6           #subEntryJson:Lorg/json/JSONObject;
    :cond_8c
    return-object v0
.end method


# virtual methods
.method public getPartsOfSpeech()Ljava/lang/String;
    .registers 8

    .prologue
    .line 323
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 324
    .local v3, result:Ljava/lang/StringBuilder;
    iget-object v5, p0, Lcom/google/android/apps/books/api/DictionaryData$DictionaryEntry;->entryType:Lcom/google/android/apps/books/api/DictionaryData$DictionaryEntry$EntryType;

    sget-object v6, Lcom/google/android/apps/books/api/DictionaryData$DictionaryEntry$EntryType;->HEADWORD:Lcom/google/android/apps/books/api/DictionaryData$DictionaryEntry$EntryType;

    if-ne v5, v6, :cond_6c

    .line 325
    iget-object v5, p0, Lcom/google/android/apps/books/api/DictionaryData$DictionaryEntry;->terms:Ljava/util/List;

    if-eqz v5, :cond_6c

    .line 326
    iget-object v5, p0, Lcom/google/android/apps/books/api/DictionaryData$DictionaryEntry;->terms:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/books/api/DictionaryData$DictionaryTerm;

    .line 327
    .local v4, term:Lcom/google/android/apps/books/api/DictionaryData$DictionaryTerm;
    iget-object v5, v4, Lcom/google/android/apps/books/api/DictionaryData$DictionaryTerm;->termType:Lcom/google/android/apps/books/api/DictionaryData$DictionaryTerm$TermType;

    sget-object v6, Lcom/google/android/apps/books/api/DictionaryData$DictionaryTerm$TermType;->TEXT:Lcom/google/android/apps/books/api/DictionaryData$DictionaryTerm$TermType;

    if-ne v5, v6, :cond_15

    .line 328
    iget-object v5, v4, Lcom/google/android/apps/books/api/DictionaryData$DictionaryTerm;->termLabels:Ljava/util/List;

    if-eqz v5, :cond_15

    .line 329
    iget-object v5, v4, Lcom/google/android/apps/books/api/DictionaryData$DictionaryTerm;->termLabels:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_31
    :goto_31
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/books/api/DictionaryData$DictionaryLabel;

    .line 330
    .local v2, label:Lcom/google/android/apps/books/api/DictionaryData$DictionaryLabel;
    iget-object v5, v2, Lcom/google/android/apps/books/api/DictionaryData$DictionaryLabel;->labelTitle:Ljava/lang/String;

    const-string v6, "Part-of-speech"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_31

    .line 331
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-nez v5, :cond_53

    .line 332
    iget-object v5, v2, Lcom/google/android/apps/books/api/DictionaryData$DictionaryLabel;->labelText:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_31

    .line 334
    :cond_53
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/google/android/apps/books/api/DictionaryData$DictionaryLabel;->labelText:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_31

    .line 343
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #label:Lcom/google/android/apps/books/api/DictionaryData$DictionaryLabel;
    .end local v4           #term:Lcom/google/android/apps/books/api/DictionaryData$DictionaryTerm;
    :cond_6c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public primaryDefAsHtml()Ljava/lang/String;
    .registers 8

    .prologue
    .line 353
    invoke-virtual {p0}, Lcom/google/android/apps/books/api/DictionaryData$DictionaryEntry;->getPartsOfSpeech()Ljava/lang/String;

    move-result-object v3

    .line 354
    .local v3, partOfSpeech:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 355
    .local v4, result:Ljava/lang/StringBuilder;
    iget-object v5, p0, Lcom/google/android/apps/books/api/DictionaryData$DictionaryEntry;->entries:Ljava/util/List;

    if-eqz v5, :cond_66

    iget-object v5, p0, Lcom/google/android/apps/books/api/DictionaryData$DictionaryEntry;->entries:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_66

    .line 356
    const-string v5, "<ol type=\"1\">\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    iget-object v5, p0, Lcom/google/android/apps/books/api/DictionaryData$DictionaryEntry;->entries:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_20
    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_61

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/api/DictionaryData$DictionaryEntry;

    .line 358
    .local v0, entry:Lcom/google/android/apps/books/api/DictionaryData$DictionaryEntry;
    iget-object v5, v0, Lcom/google/android/apps/books/api/DictionaryData$DictionaryEntry;->entryType:Lcom/google/android/apps/books/api/DictionaryData$DictionaryEntry$EntryType;

    sget-object v6, Lcom/google/android/apps/books/api/DictionaryData$DictionaryEntry$EntryType;->MEANING:Lcom/google/android/apps/books/api/DictionaryData$DictionaryEntry$EntryType;

    if-ne v5, v6, :cond_20

    iget-object v5, v0, Lcom/google/android/apps/books/api/DictionaryData$DictionaryEntry;->terms:Ljava/util/List;

    if-eqz v5, :cond_20

    .line 359
    const-string v5, "<li>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3c
    iget-object v5, v0, Lcom/google/android/apps/books/api/DictionaryData$DictionaryEntry;->terms:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_5b

    .line 361
    if-eqz v1, :cond_4b

    .line 362
    const-string v5, "; "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    :cond_4b
    iget-object v5, v0, Lcom/google/android/apps/books/api/DictionaryData$DictionaryEntry;->terms:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/books/api/DictionaryData$DictionaryTerm;

    iget-object v5, v5, Lcom/google/android/apps/books/api/DictionaryData$DictionaryTerm;->termText:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    add-int/lit8 v1, v1, 0x1

    goto :goto_3c

    .line 366
    :cond_5b
    const-string v5, "</li>\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_20

    .line 369
    .end local v0           #entry:Lcom/google/android/apps/books/api/DictionaryData$DictionaryEntry;
    .end local v1           #i:I
    :cond_61
    const-string v5, "</ol>\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_66
    invoke-static {v4}, Lcom/google/android/apps/books/util/BooksTextUtils;->isNullOrWhitespace(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_88

    .line 372
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 374
    :goto_87
    return-object v5

    :cond_88
    const-string v5, ""

    goto :goto_87
.end method
