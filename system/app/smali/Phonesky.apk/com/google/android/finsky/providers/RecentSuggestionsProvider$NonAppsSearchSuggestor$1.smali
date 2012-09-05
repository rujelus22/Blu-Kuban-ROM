.class Lcom/google/android/finsky/providers/RecentSuggestionsProvider$NonAppsSearchSuggestor$1;
.super Ljava/lang/Object;
.source "RecentSuggestionsProvider.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/providers/RecentSuggestionsProvider$NonAppsSearchSuggestor;->makeRequest(Lcom/google/android/finsky/providers/RecentSuggestionsProvider$OnCompleteListener;)V
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
.field final synthetic this$1:Lcom/google/android/finsky/providers/RecentSuggestionsProvider$NonAppsSearchSuggestor;

.field final synthetic val$listener:Lcom/google/android/finsky/providers/RecentSuggestionsProvider$OnCompleteListener;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/providers/RecentSuggestionsProvider$NonAppsSearchSuggestor;Lcom/google/android/finsky/providers/RecentSuggestionsProvider$OnCompleteListener;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$NonAppsSearchSuggestor$1;->this$1:Lcom/google/android/finsky/providers/RecentSuggestionsProvider$NonAppsSearchSuggestor;

    iput-object p2, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$NonAppsSearchSuggestor$1;->val$listener:Lcom/google/android/finsky/providers/RecentSuggestionsProvider$OnCompleteListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 143
    check-cast p1, Lorg/json/JSONArray;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$NonAppsSearchSuggestor$1;->onResponse(Lorg/json/JSONArray;)V

    return-void
.end method

.method public onResponse(Lorg/json/JSONArray;)V
    .registers 6
    .parameter "responseArray"

    .prologue
    .line 147
    const/4 v1, 0x1

    :try_start_1
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object p1

    .line 148
    const/4 v0, 0x0

    .local v0, i:I
    :goto_6
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 149
    iget-object v1, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$NonAppsSearchSuggestor$1;->this$1:Lcom/google/android/finsky/providers/RecentSuggestionsProvider$NonAppsSearchSuggestor;

    const v2, 0x108004f

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$NonAppsSearchSuggestor;->addRow(IILjava/lang/String;)V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_28
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_18} :catch_21

    .line 148
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 154
    :cond_1b
    iget-object v1, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$NonAppsSearchSuggestor$1;->val$listener:Lcom/google/android/finsky/providers/RecentSuggestionsProvider$OnCompleteListener;

    invoke-interface {v1}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$OnCompleteListener;->onComplete()V

    .line 156
    .end local v0           #i:I
    :goto_20
    return-void

    .line 152
    :catch_21
    move-exception v1

    .line 154
    iget-object v1, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$NonAppsSearchSuggestor$1;->val$listener:Lcom/google/android/finsky/providers/RecentSuggestionsProvider$OnCompleteListener;

    invoke-interface {v1}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$OnCompleteListener;->onComplete()V

    goto :goto_20

    :catchall_28
    move-exception v1

    iget-object v2, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$NonAppsSearchSuggestor$1;->val$listener:Lcom/google/android/finsky/providers/RecentSuggestionsProvider$OnCompleteListener;

    invoke-interface {v2}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$OnCompleteListener;->onComplete()V

    throw v1
.end method
