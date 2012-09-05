.class Lcom/google/android/finsky/providers/RecentSuggestionsProvider$AppsSearchSuggestor$1;
.super Ljava/lang/Object;
.source "RecentSuggestionsProvider.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/providers/RecentSuggestionsProvider$AppsSearchSuggestor;->makeRequest(Lcom/google/android/finsky/providers/RecentSuggestionsProvider$OnCompleteListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lorg/json/JSONArray;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/finsky/providers/RecentSuggestionsProvider$AppsSearchSuggestor;

.field final synthetic val$listener:Lcom/google/android/finsky/providers/RecentSuggestionsProvider$OnCompleteListener;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/providers/RecentSuggestionsProvider$AppsSearchSuggestor;Lcom/google/android/finsky/providers/RecentSuggestionsProvider$OnCompleteListener;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 201
    iput-object p1, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$AppsSearchSuggestor$1;->this$1:Lcom/google/android/finsky/providers/RecentSuggestionsProvider$AppsSearchSuggestor;

    iput-object p2, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$AppsSearchSuggestor$1;->val$listener:Lcom/google/android/finsky/providers/RecentSuggestionsProvider$OnCompleteListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 201
    check-cast p1, Lorg/json/JSONArray;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$AppsSearchSuggestor$1;->onResponse(Lorg/json/JSONArray;)V

    return-void
.end method

.method public onResponse(Lorg/json/JSONArray;)V
    .registers 7
    .parameter "responseArray"

    .prologue
    .line 205
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    :try_start_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_1c

    .line 206
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 207
    .local v1, suggestedObject:Lorg/json/JSONObject;
    iget-object v2, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$AppsSearchSuggestor$1;->this$1:Lcom/google/android/finsky/providers/RecentSuggestionsProvider$AppsSearchSuggestor;

    const v3, 0x108004f

    const-string v4, "s"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v4}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$AppsSearchSuggestor;->addRow(IILjava/lang/String;)V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_29
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_19} :catch_22

    .line 205
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 212
    .end local v1           #suggestedObject:Lorg/json/JSONObject;
    :cond_1c
    iget-object v2, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$AppsSearchSuggestor$1;->val$listener:Lcom/google/android/finsky/providers/RecentSuggestionsProvider$OnCompleteListener;

    invoke-interface {v2}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$OnCompleteListener;->onComplete()V

    .line 214
    :goto_21
    return-void

    .line 210
    :catch_22
    move-exception v2

    .line 212
    iget-object v2, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$AppsSearchSuggestor$1;->val$listener:Lcom/google/android/finsky/providers/RecentSuggestionsProvider$OnCompleteListener;

    invoke-interface {v2}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$OnCompleteListener;->onComplete()V

    goto :goto_21

    :catchall_29
    move-exception v2

    iget-object v3, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$AppsSearchSuggestor$1;->val$listener:Lcom/google/android/finsky/providers/RecentSuggestionsProvider$OnCompleteListener;

    invoke-interface {v3}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$OnCompleteListener;->onComplete()V

    throw v2
.end method
