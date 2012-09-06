.class public Lcom/google/android/apps/translate/Translate;
.super Ljava/lang/Object;
.source "Translate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/translate/Translate$TranslateResult;
    }
.end annotation


# static fields
.field public static final ALPHA_LANG_PARAM:Ljava/lang/String; = "al"

.field private static final ALPHA_VALUE:Ljava/lang/String; = "1"

.field private static final CB_VALUE:Ljava/lang/String; = "1"

.field private static final DICTIONARY_FIELD:Ljava/lang/String; = "dict"

.field private static final DICTIONARY_SYNONYMS:Ljava/lang/String; = "terms"

.field private static final DICTIONARY_TYPE:Ljava/lang/String; = "pos"

.field private static final ENCODING:Ljava/lang/String; = "UTF-8"

.field public static final ERROR_EMPTY:I = -0x1

.field public static final ERROR_NETWORK:I = -0x2

.field public static final ERROR_NONE:I = 0x0

.field public static final ERROR_OTHERS:I = -0x3

.field private static final FIND_LANG_VAR:Ljava/lang/String; = "&hl="

.field public static final INPUT_ENCODING_PARAM:Ljava/lang/String; = "ie"

.field private static final INPUT_ENCODING_VAR:Ljava/lang/String; = "&ie="

.field public static final LOCALE_LANG_PARAM:Ljava/lang/String; = "hl"

.field private static final LOCALE_LANG_VAR:Ljava/lang/String; = "&hl="

.field public static final NAME_SEPARATOR:Ljava/lang/String; = ":"

.field public static final OTF_DEFAULT_PARAM:Ljava/lang/String; = "&otf=1"

.field public static final OTF_INSTANT_PARAM:Ljava/lang/String; = "&otf=2"

.field public static final OTF_NEW_INSTANT_PARAM:Ljava/lang/String; = "&otf=3"

.field public static final OTF_PARAM:Ljava/lang/String; = "otf"

.field public static final OUTPUT_ENCODING_PARAM:Ljava/lang/String; = "oe"

.field private static final OUTPUT_ENCODING_VAR:Ljava/lang/String; = "&oe="

.field private static final QUERY_VAR:Ljava/lang/String; = "&q="

.field private static final SOURCE_LANGUAGE_FIELD:Ljava/lang/String; = "src"

.field public static final SOURCE_LANG_PARAM:Ljava/lang/String; = "sl"

.field private static final SOURCE_LANG_VAR:Ljava/lang/String; = "&sl="

.field private static final SRC_TRANSLITERATION_FIELD:Ljava/lang/String; = "src_translit"

.field private static final SUGGEST_CLIENT_VALUE:Ljava/lang/String; = "android-translate"

.field private static final TAG:Ljava/lang/String; = "Translate"

.field public static final TARGET_LANG_PARAM:Ljava/lang/String; = "tl"

.field private static final TARGET_LANG_VAR:Ljava/lang/String; = "&tl="

.field private static final TEXT_VAR:Ljava/lang/String; = "&text="

.field public static final TRANSLATE_HOST:Ljava/lang/String; = "translate.google.com"

.field public static final TRANSLATE_PAGE_PARAM:Ljava/lang/String; = "u"

.field public static final TRANSLATE_PAGE_PATH:Ljava/lang/String; = "translate"

.field public static final TRANSLATE_QUERY_DELIM_PATTERN:Ljava/lang/String; = "\\|"

.field public static final TRANSLATE_QUERY_PARAM:Ljava/lang/String; = "q"

.field public static final TRANSLATE_SCHEME:Ljava/lang/String; = "http"

.field public static final TRANSLATE_WEB_MIMETYPE:Ljava/lang/String; = "text/html"

.field private static final TRANSLATION_DATA_FIELD:Ljava/lang/String; = "sentences"

.field private static final TRANSLATION_FIELD:Ljava/lang/String; = "trans"

.field private static final TRG_TRANSLITERATION_FIELD:Ljava/lang/String; = "translit"

.field private static final URL_LANGUAGE:Ljava/lang/String; = "http://translate.google.com/translate_a/l?client=at&cb=1&alpha=1"

.field private static final URL_SUGGESTION:Ljava/lang/String; = "http://clients1.google.com/complete/search?client=android-translate"

.field private static final URL_TRANSLATE:Ljava/lang/String; = "http://translate.google.com/translate_a/t?client=at&v=2.0"

.field private static mAcceptLanguage:Ljava/lang/String;

.field private static mUserAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 130
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/apps/translate/Translate;->mUserAgent:Ljava/lang/String;

    .line 135
    const-string v0, "en"

    sput-object v0, Lcom/google/android/apps/translate/Translate;->mAcceptLanguage:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    return-void
.end method

.method private static extractLanguages(Ljava/lang/String;)Ljava/util/List;
    .registers 8
    .parameter "raw"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 377
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 378
    .local v3, languages:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 379
    const-string v4, "1("

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_19

    const-string v4, ")"

    invoke-virtual {p0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1a

    .line 406
    :cond_19
    :goto_19
    return-object v3

    .line 382
    :cond_1a
    const-string v4, "1"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 387
    :try_start_2c
    new-instance v2, Lorg/json/JSONArray;

    const/16 v4, 0x7b

    const/16 v5, 0x5b

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x7d

    const/16 v6, 0x5d

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x3a

    const/16 v6, 0x2c

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 391
    .local v2, jsonArray:Lorg/json/JSONArray;
    invoke-static {v2}, Lcom/google/android/apps/translate/Translate;->verifyJsonArrayText(Lorg/json/JSONArray;)V

    .line 394
    const-string v4, "sl"

    const-string v5, "sl"

    const/4 v6, 0x0

    invoke-static {v2, v5, v6}, Lcom/google/android/apps/translate/Translate;->getSubArrayBykeyName(Lorg/json/JSONArray;Ljava/lang/String;Z)Lorg/json/JSONArray;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lcom/google/android/apps/translate/Translate;->parseJsonLanguageList(Ljava/lang/String;Lorg/json/JSONArray;Ljava/util/List;)V

    .line 396
    const-string v4, "tl"

    const-string v5, "tl"

    const/4 v6, 0x0

    invoke-static {v2, v5, v6}, Lcom/google/android/apps/translate/Translate;->getSubArrayBykeyName(Lorg/json/JSONArray;Ljava/lang/String;Z)Lorg/json/JSONArray;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lcom/google/android/apps/translate/Translate;->parseJsonLanguageList(Ljava/lang/String;Lorg/json/JSONArray;Ljava/util/List;)V

    .line 400
    const-string v4, "al"

    const/4 v5, 0x1

    invoke-static {v2, v4, v5}, Lcom/google/android/apps/translate/Translate;->getSubArrayBykeyName(Lorg/json/JSONArray;Ljava/lang/String;Z)Lorg/json/JSONArray;

    move-result-object v0

    .line 402
    .local v0, alphaArray:Lorg/json/JSONArray;
    if-eqz v0, :cond_19

    .line 403
    const-string v4, "al"

    invoke-static {v4, v0, v3}, Lcom/google/android/apps/translate/Translate;->parseJsonLanguageList(Ljava/lang/String;Lorg/json/JSONArray;Ljava/util/List;)V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_72} :catch_73

    goto :goto_19

    .line 407
    .end local v0           #alphaArray:Lorg/json/JSONArray;
    .end local v2           #jsonArray:Lorg/json/JSONArray;
    :catch_73
    move-exception v1

    .line 408
    .local v1, ex:Ljava/lang/Exception;
    const-string v4, "TranslateService"

    const-string v5, "JSON error."

    invoke-static {v4, v5, v1}, Lcom/google/android/apps/translate/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 409
    throw v1
.end method

.method private static extractSuggestions(Ljava/lang/String;)Ljava/util/List;
    .registers 9
    .parameter "result"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 635
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 637
    .local v5, suggestions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :try_start_5
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 638
    .local v2, jsonArray:Lorg/json/JSONArray;
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v3

    .line 639
    .local v3, list:Lorg/json/JSONArray;
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 640
    .local v4, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_14
    if-ge v1, v4, :cond_29

    .line 641
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1d
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_1d} :catch_20

    .line 640
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 643
    .end local v1           #i:I
    .end local v2           #jsonArray:Lorg/json/JSONArray;
    .end local v3           #list:Lorg/json/JSONArray;
    .end local v4           #size:I
    :catch_20
    move-exception v0

    .line 644
    .local v0, e:Lorg/json/JSONException;
    const-string v6, "TranslateService"

    const-string v7, "JSON error."

    invoke-static {v6, v7, v0}, Lcom/google/android/apps/translate/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 645
    throw v0

    .line 647
    .end local v0           #e:Lorg/json/JSONException;
    .restart local v1       #i:I
    .restart local v2       #jsonArray:Lorg/json/JSONArray;
    .restart local v3       #list:Lorg/json/JSONArray;
    .restart local v4       #size:I
    :cond_29
    return-object v5
.end method

.method private static fetchUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 311
    sget-object v2, Lcom/google/android/apps/translate/Translate;->mUserAgent:Ljava/lang/String;

    if-nez v2, :cond_c

    .line 312
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "No user-agent"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 315
    :cond_c
    sget-object v2, Lcom/google/android/apps/translate/Translate;->mUserAgent:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/apps/translate/Util;->newHttpClient(Ljava/lang/String;)Lorg/apache/http/client/HttpClient;

    move-result-object v2

    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v3, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 317
    .local v0, response:Lorg/apache/http/HttpResponse;
    const-string v1, ""

    .line 318
    .local v1, result:Ljava/lang/String;
    if-eqz v0, :cond_23

    .line 319
    invoke-static {v0}, Lcom/google/android/apps/translate/Util;->readStringFromHttpResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v1

    .line 322
    :cond_23
    return-object v1
.end method

.method private static fetchUrl1(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 327
    const/4 v1, 0x0

    .line 328
    .local v1, is:Ljava/io/InputStream;
    const-string v4, ""

    .line 330
    .local v4, result:Ljava/lang/String;
    :try_start_3
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 331
    .local v0, client:Lorg/apache/http/client/HttpClient;
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 332
    .local v2, request:Lorg/apache/http/client/methods/HttpGet;
    invoke-interface {v0, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 333
    .local v3, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    .line 334
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    .line 335
    .local v5, statusLine:Lorg/apache/http/StatusLine;
    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    const/16 v7, 0xc8

    if-ne v6, v7, :cond_33

    .line 336
    invoke-static {v1}, Lcom/google/android/apps/translate/Translate;->toString(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_3d

    move-result-object v4

    .line 341
    if-eqz v1, :cond_32

    .line 342
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 345
    :cond_32
    return-object v4

    .line 338
    :cond_33
    :try_start_33
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_3d
    .catchall {:try_start_33 .. :try_end_3d} :catchall_3d

    .line 341
    .end local v0           #client:Lorg/apache/http/client/HttpClient;
    .end local v2           #request:Lorg/apache/http/client/methods/HttpGet;
    .end local v3           #response:Lorg/apache/http/HttpResponse;
    .end local v5           #statusLine:Lorg/apache/http/StatusLine;
    :catchall_3d
    move-exception v6

    if-eqz v1, :cond_43

    .line 342
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_43
    throw v6
.end method

.method private static formatOfflineOutput(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter "input"
    .parameter "sourceLanguage"
    .parameter "output"

    .prologue
    .line 669
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 670
    .local v3, sentences:Lorg/json/JSONObject;
    const-string v4, "trans"

    invoke-virtual {v3, v4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 671
    const-string v4, "src_translit"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 672
    const-string v4, "translit"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 673
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 674
    .local v0, array:Lorg/json/JSONArray;
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 676
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 677
    .local v2, json:Lorg/json/JSONObject;
    const-string v4, "sentences"

    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 678
    const-string v4, "src"

    invoke-virtual {v2, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 681
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/google/android/apps/translate/Translate;->formatTranslation(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_36} :catch_38

    move-result-object v4

    .line 686
    .end local v0           #array:Lorg/json/JSONArray;
    .end local v2           #json:Lorg/json/JSONObject;
    .end local v3           #sentences:Lorg/json/JSONObject;
    :goto_37
    return-object v4

    .line 682
    :catch_38
    move-exception v1

    .line 683
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 684
    const-string v4, "Exception in formatOfflineOutput."

    invoke-static {v4}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;)V

    .line 686
    const-string v4, ""

    goto :goto_37
.end method

.method private static formatTranslation(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 25
    .parameter "sourceLanguage"
    .parameter "raw"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 506
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 507
    if-eqz p1, :cond_12

    const-string v20, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_15

    .line 508
    :cond_12
    const-string v20, ""

    .line 578
    :goto_14
    return-object v20

    .line 509
    :cond_15
    const-string v20, "\""

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_48

    const-string v20, "\""

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_48

    .line 511
    const/16 v20, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v21

    add-int/lit8 v21, v21, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    const-string v21, "\\n"

    const-string v22, "\n"

    invoke-virtual/range {v20 .. v22}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v20

    goto :goto_14

    .line 513
    :cond_48
    const-string v20, "Translate"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "formatTranslation raw="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    :try_start_64
    new-instance v12, Lorg/json/JSONObject;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 517
    .local v12, json:Lorg/json/JSONObject;
    const-string v20, "sentences"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 518
    .local v3, count:I
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 519
    .local v16, translation:Ljava/lang/StringBuilder;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 520
    .local v13, srcTransliteration:Ljava/lang/StringBuilder;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 521
    .local v18, trgTransliteration:Ljava/lang/StringBuilder;
    const/4 v10, 0x0

    .local v10, i:I
    :goto_87
    if-ge v10, v3, :cond_cb

    .line 522
    const-string v20, "sentences"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v17

    .line 524
    .local v17, translationJson:Lorg/json/JSONObject;
    const-string v20, "trans"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    const-string v20, "src_translit"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    const-string v20, "translit"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    add-int/lit8 v10, v10, 0x1

    goto :goto_87

    .line 530
    .end local v17           #translationJson:Lorg/json/JSONObject;
    :cond_cb
    invoke-static/range {p0 .. p0}, Lcom/google/android/apps/translate/Util;->isAutoDetectLanguage(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_d9

    .line 531
    const-string v20, "src"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 534
    :cond_d9
    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 535
    .local v4, detailedTranslation:Ljava/lang/StringBuilder;
    const-string v20, "\t"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 537
    const-string v20, "\t"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 539
    const-string v20, "\t"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_ff
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_ff} :catch_186

    .line 543
    :try_start_ff
    const-string v20, "dict"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 545
    .local v7, dictionaryJson:Lorg/json/JSONArray;
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v8

    .line 546
    .local v8, dictionaryLength:I
    if-lez v8, :cond_176

    .line 547
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 548
    .local v5, dictionary:Ljava/lang/StringBuilder;
    const/4 v10, 0x0

    :goto_113
    if-ge v10, v8, :cond_173

    .line 549
    invoke-virtual {v7, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 551
    .local v6, dictionaryEntry:Lorg/json/JSONObject;
    const-string v20, "pos"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 553
    .local v19, type:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_132

    .line 554
    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ":\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    :cond_132
    const-string v20, "terms"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    .line 558
    .local v14, synonyms:Lorg/json/JSONArray;
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v15

    .line 562
    .local v15, synonymsLength:I
    const/4 v11, 0x1

    .local v11, j:I
    :goto_13f
    if-gt v11, v15, :cond_169

    .line 563
    const-string v20, " "

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ". "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    add-int/lit8 v21, v11, -0x1

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    add-int/lit8 v11, v11, 0x1

    goto :goto_13f

    .line 567
    :cond_169
    const-string v20, "\n"

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    add-int/lit8 v10, v10, 0x1

    goto :goto_113

    .line 569
    .end local v6           #dictionaryEntry:Lorg/json/JSONObject;
    .end local v11           #j:I
    .end local v14           #synonyms:Lorg/json/JSONArray;
    .end local v15           #synonymsLength:I
    .end local v19           #type:Ljava/lang/String;
    :cond_173
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    :try_end_176
    .catch Lorg/json/JSONException; {:try_start_ff .. :try_end_176} :catch_193
    .catch Ljava/lang/Exception; {:try_start_ff .. :try_end_176} :catch_186

    .line 575
    .end local v5           #dictionary:Ljava/lang/StringBuilder;
    .end local v7           #dictionaryJson:Lorg/json/JSONArray;
    .end local v8           #dictionaryLength:I
    :cond_176
    :goto_176
    :try_start_176
    const-string v20, "\t"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 578
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_183
    .catch Ljava/lang/Exception; {:try_start_176 .. :try_end_183} :catch_186

    move-result-object v20

    goto/16 :goto_14

    .line 579
    .end local v3           #count:I
    .end local v4           #detailedTranslation:Ljava/lang/StringBuilder;
    .end local v10           #i:I
    .end local v12           #json:Lorg/json/JSONObject;
    .end local v13           #srcTransliteration:Ljava/lang/StringBuilder;
    .end local v16           #translation:Ljava/lang/StringBuilder;
    .end local v18           #trgTransliteration:Ljava/lang/StringBuilder;
    :catch_186
    move-exception v9

    .line 580
    .local v9, ex:Ljava/lang/Exception;
    const-string v20, "TranslateService"

    const-string v21, "JSON error."

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v9}, Lcom/google/android/apps/translate/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 581
    throw v9

    .line 571
    .end local v9           #ex:Ljava/lang/Exception;
    .restart local v3       #count:I
    .restart local v4       #detailedTranslation:Ljava/lang/StringBuilder;
    .restart local v10       #i:I
    .restart local v12       #json:Lorg/json/JSONObject;
    .restart local v13       #srcTransliteration:Ljava/lang/StringBuilder;
    .restart local v16       #translation:Ljava/lang/StringBuilder;
    .restart local v18       #trgTransliteration:Ljava/lang/StringBuilder;
    :catch_193
    move-exception v20

    goto :goto_176
.end method

.method private static generateErrorResult(I)Ljava/lang/String;
    .registers 2
    .parameter "errorCode"

    .prologue
    .line 284
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static generateLanguageTuple(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "prefix"
    .parameter "shortName"
    .parameter "longName"

    .prologue
    .line 488
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 489
    .local v0, out:Ljava/lang/StringBuilder;
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getResultCode(Ljava/lang/String;)I
    .registers 7
    .parameter "result"

    .prologue
    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v5, 0x1

    .line 288
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b

    move v1, v2

    .line 298
    :cond_a
    :goto_a
    return v1

    .line 294
    :cond_b
    const-string v3, "\t"

    const/4 v4, 0x3

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 295
    .local v0, results:[Ljava/lang/String;
    array-length v3, v0

    if-le v3, v5, :cond_1f

    aget-object v3, v0, v5

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1f

    move v1, v2

    .line 296
    goto :goto_a

    .line 298
    :cond_1f
    array-length v2, v0

    if-ne v2, v5, :cond_a

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_a
.end method

.method private static getSubArrayBykeyName(Lorg/json/JSONArray;Ljava/lang/String;Z)Lorg/json/JSONArray;
    .registers 9
    .parameter "jsonArray"
    .parameter "keyName"
    .parameter "optional"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 427
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 428
    .local v2, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    if-ge v0, v2, :cond_3e

    .line 429
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 430
    add-int/lit8 v3, v2, -0x1

    if-lt v0, v3, :cond_34

    .line 431
    new-instance v3, Lorg/json/JSONException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SubArray for : \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\" does not exist."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 434
    :cond_34
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v3

    .line 449
    :goto_3a
    return-object v3

    .line 428
    :cond_3b
    add-int/lit8 v0, v0, 0x2

    goto :goto_5

    .line 438
    :cond_3e
    if-nez p2, :cond_7e

    .line 439
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 440
    .local v1, keys:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    :goto_46
    if-ge v0, v2, :cond_57

    .line 441
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    add-int/lit8 v0, v0, 0x2

    goto :goto_46

    .line 445
    :cond_57
    new-instance v3, Lorg/json/JSONException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot find \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\". All the key list: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 449
    .end local v1           #keys:Ljava/lang/StringBuilder;
    :cond_7e
    const/4 v3, 0x0

    goto :goto_3a
.end method

.method public static languages(Ljava/lang/String;)Ljava/util/List;
    .registers 2
    .parameter "baseLanguage"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 213
    invoke-static {p0}, Lcom/google/android/apps/translate/Translate;->retrieveLanguages(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static offlineTranslate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "text"
    .parameter "from"
    .parameter "to"
    .parameter "extra"

    .prologue
    .line 662
    invoke-static {p1, p2, p0}, Lcom/google/android/apps/translate/offline/TranslateOfflineUtil;->translate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/google/android/apps/translate/Translate;->formatOfflineOutput(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static parseJsonLanguageList(Ljava/lang/String;Lorg/json/JSONArray;Ljava/util/List;)V
    .registers 7
    .parameter "param"
    .parameter "jsonArray"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONArray;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 480
    .local p2, languages:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    .line 481
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    if-ge v0, v1, :cond_1b

    .line 482
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/google/android/apps/translate/Translate;->generateLanguageTuple(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 481
    add-int/lit8 v0, v0, 0x2

    goto :goto_5

    .line 485
    :cond_1b
    return-void
.end method

.method private static prepareTranslateUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "text"
    .parameter "from"
    .parameter "to"
    .parameter "extra"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://translate.google.com/translate_a/t?client=at&v=2.0"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 357
    .local v0, url:Ljava/lang/StringBuilder;
    const-string v1, "&sl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    const-string v1, "&tl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    const-string v1, "&hl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/google/android/apps/translate/Translate;->mAcceptLanguage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    const-string v1, "&ie="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    const-string v1, "&oe="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    const-string v1, "&text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-static {p0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    if-eqz p3, :cond_56

    const-string v1, ""

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_56

    .line 365
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    :cond_56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static retrieveLanguages(Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .parameter "baseLanguage"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 217
    const-string v1, ""

    .line 219
    .local v1, result:Ljava/lang/String;
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http://translate.google.com/translate_a/l?client=at&cb=1&alpha=1"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 220
    .local v2, url:Ljava/lang/StringBuilder;
    const-string v3, "&hl="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    const-string v3, "&ie="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    const-string v3, "&oe="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    const-string v3, "Translate"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "url="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/translate/Translate;->fetchUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 225
    invoke-static {v1}, Lcom/google/android/apps/translate/Translate;->extractLanguages(Ljava/lang/String;)Ljava/util/List;
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_4f} :catch_51

    move-result-object v3

    return-object v3

    .line 226
    .end local v2           #url:Ljava/lang/StringBuilder;
    :catch_51
    move-exception v0

    .line 227
    .local v0, ex:Ljava/lang/Exception;
    const-string v3, "TranslateService"

    const-string v4, "Error during languages retrieval."

    invoke-static {v3, v4, v0}, Lcom/google/android/apps/translate/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 228
    throw v0
.end method

.method private static retrieveTranslation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 15
    .parameter "text"
    .parameter "from"
    .parameter "to"
    .parameter "extra"
    .parameter "dualMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 244
    const-string v3, ""

    .line 246
    .local v3, result:Ljava/lang/String;
    :try_start_2
    new-instance v5, Lcom/google/android/apps/translate/CsiTimer;

    const-string v7, "trs"

    invoke-direct {v5, v7}, Lcom/google/android/apps/translate/CsiTimer;-><init>(Ljava/lang/String;)V

    .line 247
    .local v5, translateTimer:Lcom/google/android/apps/translate/CsiTimer;
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "t"

    aput-object v9, v7, v8

    invoke-virtual {v5, v7}, Lcom/google/android/apps/translate/CsiTimer;->begin([Ljava/lang/String;)V

    .line 249
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/apps/translate/Translate;->prepareTranslateUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 250
    .local v6, url:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/apps/translate/Logger;->isDebug()Z

    move-result v7

    if-eqz v7, :cond_36

    .line 251
    const-string v7, "Translate"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "retrieveTranslation url="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    :cond_36
    invoke-static {v6}, Lcom/google/android/apps/translate/Translate;->fetchUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 255
    if-eqz p4, :cond_7d

    .line 257
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 259
    .local v2, json:Lorg/json/JSONObject;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 260
    .local v4, sentence:Lorg/json/JSONObject;
    const-string v7, "trans"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p1, p2, p0}, Lcom/google/android/apps/translate/offline/TranslateOfflineUtil;->translate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 262
    const-string v7, "src_translit"

    const-string v8, ""

    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 263
    const-string v7, "translit"

    const-string v8, ""

    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 264
    const-string v7, "sentences"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    invoke-virtual {v7, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 265
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    .line 268
    .end local v2           #json:Lorg/json/JSONObject;
    .end local v4           #sentence:Lorg/json/JSONObject;
    :cond_7d
    invoke-static {p1, v3}, Lcom/google/android/apps/translate/Translate;->formatTranslation(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 270
    .local v1, formatedResult:Ljava/lang/String;
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "t"

    aput-object v9, v7, v8

    invoke-virtual {v5, v7}, Lcom/google/android/apps/translate/CsiTimer;->end([Ljava/lang/String;)V

    .line 271
    sget-object v7, Lcom/google/android/apps/translate/Translate;->mUserAgent:Ljava/lang/String;

    invoke-static {v7}, Lcom/google/android/apps/translate/Util;->newHttpClient(Ljava/lang/String;)Lorg/apache/http/client/HttpClient;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/google/android/apps/translate/CsiTimer;->report(Lorg/apache/http/client/HttpClient;)V
    :try_end_95
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_95} :catch_96
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_95} :catch_a4

    .line 279
    .end local v1           #formatedResult:Ljava/lang/String;
    .end local v5           #translateTimer:Lcom/google/android/apps/translate/CsiTimer;
    .end local v6           #url:Ljava/lang/String;
    :goto_95
    return-object v1

    .line 273
    :catch_96
    move-exception v0

    .line 274
    .local v0, ex:Ljava/io/IOException;
    const-string v7, "TranslateService"

    const-string v8, "Error during translation retrieval (network error)."

    invoke-static {v7, v8, v0}, Lcom/google/android/apps/translate/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 276
    const/4 v7, -0x2

    invoke-static {v7}, Lcom/google/android/apps/translate/Translate;->generateErrorResult(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_95

    .line 277
    .end local v0           #ex:Ljava/io/IOException;
    :catch_a4
    move-exception v0

    .line 278
    .local v0, ex:Ljava/lang/Exception;
    const-string v7, "TranslateService"

    const-string v8, "Error during translation retrieval."

    invoke-static {v7, v8, v0}, Lcom/google/android/apps/translate/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 279
    const/4 v7, -0x3

    invoke-static {v7}, Lcom/google/android/apps/translate/Translate;->generateErrorResult(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_95
.end method

.method public static setAcceptLanguage(Ljava/lang/String;)V
    .registers 1
    .parameter "acceptLanguage"

    .prologue
    .line 306
    sput-object p0, Lcom/google/android/apps/translate/Translate;->mAcceptLanguage:Ljava/lang/String;

    .line 307
    return-void
.end method

.method public static setUserAgent(Ljava/lang/String;)V
    .registers 1
    .parameter "userAgent"

    .prologue
    .line 302
    sput-object p0, Lcom/google/android/apps/translate/Translate;->mUserAgent:Ljava/lang/String;

    .line 303
    return-void
.end method

.method public static suggestions(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .parameter "text"
    .parameter "baseLanguage"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 621
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http://clients1.google.com/complete/search?client=android-translate"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 622
    .local v2, url:Ljava/lang/StringBuilder;
    const-string v3, "&hl="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 623
    const-string v3, "&ie="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 624
    const-string v3, "&oe="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 625
    const-string v3, "&q="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 626
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/translate/Translate;->fetchUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 627
    .local v1, result:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/apps/translate/Translate;->extractSuggestions(Ljava/lang/String;)Ljava/util/List;
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3e} :catch_40

    move-result-object v3

    return-object v3

    .line 628
    .end local v1           #result:Ljava/lang/String;
    .end local v2           #url:Ljava/lang/StringBuilder;
    :catch_40
    move-exception v0

    .line 629
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "TranslateService"

    const-string v4, "Error during suggestions retrieval."

    invoke-static {v3, v4, v0}, Lcom/google/android/apps/translate/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 630
    throw v0
.end method

.method private static toString(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 7
    .parameter "inputStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 594
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 597
    .local v1, outputBuilder:Ljava/lang/StringBuilder;
    if-eqz p0, :cond_2b

    .line 598
    :try_start_7
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    const-string v5, "UTF-8"

    invoke-direct {v4, p0, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 600
    .local v2, reader:Ljava/io/BufferedReader;
    :goto_13
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, string:Ljava/lang/String;
    if-eqz v3, :cond_2b

    .line 601
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_22} :catch_23

    goto :goto_13

    .line 604
    .end local v2           #reader:Ljava/io/BufferedReader;
    .end local v3           #string:Ljava/lang/String;
    :catch_23
    move-exception v0

    .line 605
    .local v0, ex:Ljava/lang/Exception;
    const-string v4, "TranslateService"

    const-string v5, "Error reading translation stream."

    invoke-static {v4, v5, v0}, Lcom/google/android/apps/translate/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 607
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_2b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static translate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 6
    .parameter "text"
    .parameter "from"
    .parameter "to"
    .parameter "extra"
    .parameter "dualMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 201
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/apps/translate/Translate;->retrieveTranslation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static verifyJsonArrayText(Lorg/json/JSONArray;)V
    .registers 6
    .parameter "jsonArray"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 460
    const-string v3, "sl"

    invoke-static {p0, v3, v4}, Lcom/google/android/apps/translate/Translate;->getSubArrayBykeyName(Lorg/json/JSONArray;Ljava/lang/String;Z)Lorg/json/JSONArray;

    move-result-object v1

    .line 461
    .local v1, slArray:Lorg/json/JSONArray;
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_17

    .line 462
    new-instance v3, Lorg/json/JSONException;

    const-string v4, "Incorrect number of pairs of param: sl"

    invoke-direct {v3, v4}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 465
    :cond_17
    const-string v3, "tl"

    invoke-static {p0, v3, v4}, Lcom/google/android/apps/translate/Translate;->getSubArrayBykeyName(Lorg/json/JSONArray;Ljava/lang/String;Z)Lorg/json/JSONArray;

    move-result-object v2

    .line 466
    .local v2, tlArray:Lorg/json/JSONArray;
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_2d

    .line 467
    new-instance v3, Lorg/json/JSONException;

    const-string v4, "Incorrect number of pairs of param: tl"

    invoke-direct {v3, v4}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 472
    :cond_2d
    const-string v3, "al"

    const/4 v4, 0x1

    invoke-static {p0, v3, v4}, Lcom/google/android/apps/translate/Translate;->getSubArrayBykeyName(Lorg/json/JSONArray;Ljava/lang/String;Z)Lorg/json/JSONArray;

    move-result-object v0

    .line 473
    .local v0, alArray:Lorg/json/JSONArray;
    if-eqz v0, :cond_46

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_46

    .line 474
    new-instance v3, Lorg/json/JSONException;

    const-string v4, "Incorrect number of pairs of param: al"

    invoke-direct {v3, v4}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 476
    :cond_46
    return-void
.end method
