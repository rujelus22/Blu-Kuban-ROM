.class Lcom/google/android/apps/unveil/history/SearchHistoryEngine$2;
.super Lcom/google/android/apps/unveil/history/SearchHistoryEngine$ResponseHandler;
.source "SearchHistoryEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/unveil/history/SearchHistoryEngine;->lookup(Ljava/lang/String;Lcom/google/android/apps/unveil/history/SearchHistoryEngine$EventListener;)V
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
    .line 205
    iput-object p1, p0, Lcom/google/android/apps/unveil/history/SearchHistoryEngine$2;->this$0:Lcom/google/android/apps/unveil/history/SearchHistoryEngine;

    iput-object p3, p0, Lcom/google/android/apps/unveil/history/SearchHistoryEngine$2;->val$listener:Lcom/google/android/apps/unveil/history/SearchHistoryEngine$EventListener;

    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/unveil/history/SearchHistoryEngine$ResponseHandler;-><init>(Lcom/google/android/apps/unveil/history/SearchHistoryEngine;Lcom/google/android/apps/unveil/history/SearchHistoryEngine$EventListener;)V

    return-void
.end method


# virtual methods
.method public onValidResponse(Ljava/lang/String;)V
    .registers 7
    .parameter "response"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 209
    :try_start_2
    iget-object v1, p0, Lcom/google/android/apps/unveil/history/SearchHistoryEngine$2;->val$listener:Lcom/google/android/apps/unveil/history/SearchHistoryEngine$EventListener;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/google/android/apps/unveil/history/SearchHistoryItemFactory;->fromJsonObject(Lorg/json/JSONObject;)Lcom/google/android/apps/unveil/history/SearchHistoryItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/unveil/history/SearchHistoryEngine$EventListener;->onLookupResponse(Lcom/google/android/apps/unveil/history/SearchHistoryItem;)V
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_10} :catch_11
    .catch Ljava/util/zip/DataFormatException; {:try_start_2 .. :try_end_10} :catch_25

    .line 220
    :goto_10
    return-void

    .line 211
    :catch_11
    move-exception v0

    .line 212
    .local v0, e:Lorg/json/JSONException;
    invoke-static {}, Lcom/google/android/apps/unveil/history/SearchHistoryEngine;->access$100()Lcom/google/android/apps/unveil/env/UnveilLogger;

    move-result-object v1

    const-string v2, "Failed to parse JSON: %s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 213
    iget-object v1, p0, Lcom/google/android/apps/unveil/history/SearchHistoryEngine$2;->val$listener:Lcom/google/android/apps/unveil/history/SearchHistoryEngine$EventListener;

    invoke-virtual {v1}, Lcom/google/android/apps/unveil/history/SearchHistoryEngine$EventListener;->onError()V

    goto :goto_10

    .line 215
    .end local v0           #e:Lorg/json/JSONException;
    :catch_25
    move-exception v0

    .line 216
    .local v0, e:Ljava/util/zip/DataFormatException;
    invoke-static {}, Lcom/google/android/apps/unveil/history/SearchHistoryEngine;->access$100()Lcom/google/android/apps/unveil/env/UnveilLogger;

    move-result-object v1

    const-string v2, "Failed to lookup SearchHistoryItem: %s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 217
    iget-object v1, p0, Lcom/google/android/apps/unveil/history/SearchHistoryEngine$2;->val$listener:Lcom/google/android/apps/unveil/history/SearchHistoryEngine$EventListener;

    invoke-virtual {v1}, Lcom/google/android/apps/unveil/history/SearchHistoryEngine$EventListener;->onError()V

    goto :goto_10
.end method
