.class Lcom/google/android/apps/unveil/history/SearchHistoryEngine$1;
.super Lcom/google/android/apps/unveil/history/SearchHistoryEngine$ResponseHandler;
.source "SearchHistoryEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/unveil/history/SearchHistoryEngine;->search(Lcom/google/android/apps/unveil/history/SearchHistoryQuery$QuerySpec;Ljava/lang/String;ILcom/google/android/apps/unveil/history/SearchHistoryEngine$EventListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/unveil/history/SearchHistoryEngine;

.field final synthetic val$listener:Lcom/google/android/apps/unveil/history/SearchHistoryEngine$EventListener;


# direct methods
.method constructor <init>(Lcom/google/android/apps/unveil/history/SearchHistoryEngine;Lcom/google/android/apps/unveil/history/SearchHistoryEngine$EventListener;Lcom/google/android/apps/unveil/history/SearchHistoryEngine$EventListener;)V
    .registers 4
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 166
    iput-object p1, p0, Lcom/google/android/apps/unveil/history/SearchHistoryEngine$1;->this$0:Lcom/google/android/apps/unveil/history/SearchHistoryEngine;

    iput-object p3, p0, Lcom/google/android/apps/unveil/history/SearchHistoryEngine$1;->val$listener:Lcom/google/android/apps/unveil/history/SearchHistoryEngine$EventListener;

    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/unveil/history/SearchHistoryEngine$ResponseHandler;-><init>(Lcom/google/android/apps/unveil/history/SearchHistoryEngine;Lcom/google/android/apps/unveil/history/SearchHistoryEngine$EventListener;)V

    return-void
.end method


# virtual methods
.method public onValidResponse(Ljava/lang/String;)V
    .registers 13
    .parameter "response"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 170
    :try_start_2
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 171
    .local v3, object:Lorg/json/JSONObject;
    const-string v5, "gogglesQueries"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 173
    .local v4, queries:Lorg/json/JSONArray;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 174
    .local v2, items:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/unveil/history/SearchHistoryItem;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_13
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I
    :try_end_16
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_16} :catch_38

    move-result v5

    if-ge v1, v5, :cond_4c

    .line 176
    :try_start_19
    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/apps/unveil/history/SearchHistoryItemFactory;->fromJsonObject(Lorg/json/JSONObject;)Lcom/google/android/apps/unveil/history/SearchHistoryItem;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_24
    .catch Ljava/util/zip/DataFormatException; {:try_start_19 .. :try_end_24} :catch_27
    .catch Lorg/json/JSONException; {:try_start_19 .. :try_end_24} :catch_38

    .line 174
    :goto_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 177
    :catch_27
    move-exception v0

    .line 178
    .local v0, e:Ljava/util/zip/DataFormatException;
    :try_start_28
    invoke-static {}, Lcom/google/android/apps/unveil/history/SearchHistoryEngine;->access$100()Lcom/google/android/apps/unveil/env/UnveilLogger;

    move-result-object v5

    const-string v6, "Skipping problematic SearchHistoryItem: %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_37
    .catch Lorg/json/JSONException; {:try_start_28 .. :try_end_37} :catch_38

    goto :goto_24

    .line 184
    .end local v0           #e:Ljava/util/zip/DataFormatException;
    .end local v1           #i:I
    .end local v2           #items:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/unveil/history/SearchHistoryItem;>;"
    .end local v3           #object:Lorg/json/JSONObject;
    .end local v4           #queries:Lorg/json/JSONArray;
    :catch_38
    move-exception v0

    .line 185
    .local v0, e:Lorg/json/JSONException;
    invoke-static {}, Lcom/google/android/apps/unveil/history/SearchHistoryEngine;->access$100()Lcom/google/android/apps/unveil/env/UnveilLogger;

    move-result-object v5

    const-string v6, "Failed to parse JSON: %s"

    new-array v7, v10, [Ljava/lang/Object;

    aput-object p1, v7, v9

    invoke-virtual {v5, v0, v6, v7}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 186
    iget-object v5, p0, Lcom/google/android/apps/unveil/history/SearchHistoryEngine$1;->val$listener:Lcom/google/android/apps/unveil/history/SearchHistoryEngine$EventListener;

    invoke-virtual {v5}, Lcom/google/android/apps/unveil/history/SearchHistoryEngine$EventListener;->onError()V

    .line 189
    .end local v0           #e:Lorg/json/JSONException;
    :goto_4b
    return-void

    .line 182
    .restart local v1       #i:I
    .restart local v2       #items:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/unveil/history/SearchHistoryItem;>;"
    .restart local v3       #object:Lorg/json/JSONObject;
    .restart local v4       #queries:Lorg/json/JSONArray;
    :cond_4c
    :try_start_4c
    iget-object v6, p0, Lcom/google/android/apps/unveil/history/SearchHistoryEngine$1;->val$listener:Lcom/google/android/apps/unveil/history/SearchHistoryEngine$EventListener;

    const/4 v5, 0x0

    new-array v5, v5, [Lcom/google/android/apps/unveil/history/SearchHistoryItem;

    invoke-interface {v2, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/google/android/apps/unveil/history/SearchHistoryItem;

    const-string v7, "numMatched"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    const-string v8, "continuationToken"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v5, v7, v8}, Lcom/google/android/apps/unveil/history/SearchHistoryEngine$EventListener;->onSearchResponse([Lcom/google/android/apps/unveil/history/SearchHistoryItem;ILjava/lang/String;)V
    :try_end_66
    .catch Lorg/json/JSONException; {:try_start_4c .. :try_end_66} :catch_38

    goto :goto_4b
.end method
