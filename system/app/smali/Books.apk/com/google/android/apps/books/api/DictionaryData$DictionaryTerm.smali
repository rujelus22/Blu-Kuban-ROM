.class public Lcom/google/android/apps/books/api/DictionaryData$DictionaryTerm;
.super Ljava/lang/Object;
.source "DictionaryData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/api/DictionaryData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DictionaryTerm"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/api/DictionaryData$DictionaryTerm$TermType;
    }
.end annotation


# instance fields
.field public termLabels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/books/api/DictionaryData$DictionaryLabel;",
            ">;"
        }
    .end annotation
.end field

.field public termLanguage:Ljava/lang/String;

.field public termText:Ljava/lang/String;

.field public termType:Lcom/google/android/apps/books/api/DictionaryData$DictionaryTerm$TermType;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 454
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 455
    return-void
.end method

.method public static parseDictionaryTerm(Lorg/json/JSONObject;)Lcom/google/android/apps/books/api/DictionaryData$DictionaryTerm;
    .registers 7
    .parameter "termJson"

    .prologue
    .line 464
    new-instance v0, Lcom/google/android/apps/books/api/DictionaryData$DictionaryTerm;

    invoke-direct {v0}, Lcom/google/android/apps/books/api/DictionaryData$DictionaryTerm;-><init>()V

    .line 465
    .local v0, dictTerm:Lcom/google/android/apps/books/api/DictionaryData$DictionaryTerm;
    const-string v4, "type"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/apps/books/api/DictionaryData$DictionaryTerm$TermType;->get(Ljava/lang/String;)Lcom/google/android/apps/books/api/DictionaryData$DictionaryTerm$TermType;

    move-result-object v4

    iput-object v4, v0, Lcom/google/android/apps/books/api/DictionaryData$DictionaryTerm;->termType:Lcom/google/android/apps/books/api/DictionaryData$DictionaryTerm$TermType;

    .line 466
    const-string v4, "text"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/google/android/apps/books/api/DictionaryData$DictionaryTerm;->termText:Ljava/lang/String;

    .line 467
    const-string v4, "language"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/google/android/apps/books/api/DictionaryData$DictionaryTerm;->termLanguage:Ljava/lang/String;

    .line 469
    const-string v4, "labels"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 470
    .local v3, labels:Lorg/json/JSONArray;
    if-eqz v3, :cond_48

    .line 471
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, v0, Lcom/google/android/apps/books/api/DictionaryData$DictionaryTerm;->termLabels:Ljava/util/List;

    .line 472
    const/4 v1, 0x0

    .local v1, i:I
    :goto_30
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_48

    .line 473
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 474
    .local v2, labelJson:Lorg/json/JSONObject;
    if-eqz v2, :cond_45

    .line 475
    iget-object v4, v0, Lcom/google/android/apps/books/api/DictionaryData$DictionaryTerm;->termLabels:Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/apps/books/api/DictionaryData$DictionaryLabel;->parseDictionaryLabel(Lorg/json/JSONObject;)Lcom/google/android/apps/books/api/DictionaryData$DictionaryLabel;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 472
    :cond_45
    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    .line 480
    .end local v1           #i:I
    .end local v2           #labelJson:Lorg/json/JSONObject;
    :cond_48
    return-object v0
.end method
