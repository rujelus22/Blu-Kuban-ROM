.class public Lcom/google/android/apps/books/api/DictionaryData;
.super Ljava/lang/Object;
.source "DictionaryData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/api/DictionaryData$DictionaryLabel;,
        Lcom/google/android/apps/books/api/DictionaryData$DictionaryTerm;,
        Lcom/google/android/apps/books/api/DictionaryData$DictionaryEntry;
    }
.end annotation


# instance fields
.field public primaries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/books/api/DictionaryData$DictionaryEntry;",
            ">;"
        }
    .end annotation
.end field

.field public query:Ljava/lang/String;

.field public sourceLanguage:Ljava/lang/String;

.field public targetLanguage:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    return-void
.end method

.method public static parseDictionaryData(Lorg/json/JSONObject;)Lcom/google/android/apps/books/api/DictionaryData;
    .registers 7
    .parameter "dataJson"

    .prologue
    .line 130
    new-instance v0, Lcom/google/android/apps/books/api/DictionaryData;

    invoke-direct {v0}, Lcom/google/android/apps/books/api/DictionaryData;-><init>()V

    .line 131
    .local v0, dictData:Lcom/google/android/apps/books/api/DictionaryData;
    const-string v4, "query"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/google/android/apps/books/api/DictionaryData;->query:Ljava/lang/String;

    .line 132
    const-string v4, "sourceLanguage"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/google/android/apps/books/api/DictionaryData;->sourceLanguage:Ljava/lang/String;

    .line 133
    const-string v4, "targetLanguage"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/google/android/apps/books/api/DictionaryData;->targetLanguage:Ljava/lang/String;

    .line 135
    const-string v4, "primaries"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 136
    .local v3, primaries:Lorg/json/JSONArray;
    if-eqz v3, :cond_44

    .line 137
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, v0, Lcom/google/android/apps/books/api/DictionaryData;->primaries:Ljava/util/List;

    .line 138
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2c
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_44

    .line 139
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 140
    .local v1, entryJson:Lorg/json/JSONObject;
    if-eqz v1, :cond_41

    .line 141
    iget-object v4, v0, Lcom/google/android/apps/books/api/DictionaryData;->primaries:Ljava/util/List;

    invoke-static {v1}, Lcom/google/android/apps/books/api/DictionaryData$DictionaryEntry;->parseDictionaryEntry(Lorg/json/JSONObject;)Lcom/google/android/apps/books/api/DictionaryData$DictionaryEntry;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    :cond_41
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    .line 145
    .end local v1           #entryJson:Lorg/json/JSONObject;
    .end local v2           #i:I
    :cond_44
    return-object v0
.end method


# virtual methods
.method public asHtml()Ljava/lang/String;
    .registers 4

    .prologue
    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    .local v1, result:Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/google/android/apps/books/api/DictionaryData;->primaries:Ljava/util/List;

    if-nez v2, :cond_c

    .line 158
    const-string v2, ""

    .line 167
    :goto_b
    return-object v2

    .line 161
    :cond_c
    const/4 v0, 0x0

    .local v0, i:I
    :goto_d
    iget-object v2, p0, Lcom/google/android/apps/books/api/DictionaryData;->primaries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_32

    .line 162
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_20

    .line 163
    const-string v2, "<hr>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    :cond_20
    iget-object v2, p0, Lcom/google/android/apps/books/api/DictionaryData;->primaries:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/books/api/DictionaryData$DictionaryEntry;

    invoke-virtual {v2}, Lcom/google/android/apps/books/api/DictionaryData$DictionaryEntry;->primaryDefAsHtml()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 167
    :cond_32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_b
.end method
