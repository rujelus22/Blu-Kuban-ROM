.class Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor$2;
.super Ljava/lang/Object;
.source "RecentSuggestionsProvider.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor;->makeRequest(Lcom/google/android/finsky/providers/RecentSuggestionsProvider$OnCompleteListener;)V
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
.field final synthetic this$0:Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor;

.field final synthetic val$rListener:Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor$RefCountedOnCompleteListener;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor;Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor$RefCountedOnCompleteListener;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 386
    iput-object p1, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor$2;->this$0:Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor;

    iput-object p2, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor$2;->val$rListener:Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor$RefCountedOnCompleteListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 386
    check-cast p1, Lorg/json/JSONArray;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor$2;->onResponse(Lorg/json/JSONArray;)V

    return-void
.end method

.method public onResponse(Lorg/json/JSONArray;)V
    .registers 13
    .parameter "responseArray"

    .prologue
    .line 390
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    :try_start_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_98

    .line 391
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 392
    .local v9, suggestedObject:Lorg/json/JSONObject;
    const-string v0, "s"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 397
    .local v3, suggestion:Ljava/lang/String;
    const-string v0, "t"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7c

    const-string v0, "p"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7c

    const-string v0, "t"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "a"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 399
    const-string v0, "p"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 401
    .local v8, pkg:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor$2;->this$0:Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor;

    iget-object v5, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor$2;->val$rListener:Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor$RefCountedOnCompleteListener;

    #calls: Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor;->getIconUri(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor$RefCountedOnCompleteListener;)Landroid/net/Uri;
    invoke-static {v0, v9, v8, v5}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor;->access$000(Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor;Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor$RefCountedOnCompleteListener;)Landroid/net/Uri;

    move-result-object v2

    .line 403
    .local v2, iconUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor$2;->this$0:Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor;

    #getter for: Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor;->mDescription:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor;->access$100(Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor;)Ljava/lang/String;

    move-result-object v4

    .line 404
    .local v4, desc:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor$2;->this$0:Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor;

    #getter for: Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor;->mDescription:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor;->access$100(Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_59

    const-string v0, "d"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 405
    const-string v0, "d"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 410
    :cond_59
    iget-object v0, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor$2;->this$0:Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor;

    const-string v5, "com.google.android.finsky.NAVIGATIONAL_SUGGESTION"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "https://market.android.com/details?id="

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, "&feature=sugg"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor;->addRow(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    .end local v2           #iconUri:Landroid/net/Uri;
    .end local v4           #desc:Ljava/lang/String;
    .end local v8           #pkg:Ljava/lang/String;
    :cond_79
    :goto_79
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 414
    :cond_7c
    iget-object v0, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor$2;->this$0:Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor;

    #getter for: Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor;->mAppsOnly:Z
    invoke-static {v0}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor;->access$200(Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor;)Z

    move-result v0

    if-nez v0, :cond_79

    .line 415
    iget-object v0, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor$2;->this$0:Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor;

    const v5, 0x108004f

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v1, v5, v3}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor;->addRow(ILjava/lang/Object;Ljava/lang/String;)V
    :try_end_90
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_90} :catch_91

    goto :goto_79

    .line 420
    .end local v3           #suggestion:Ljava/lang/String;
    .end local v9           #suggestedObject:Lorg/json/JSONObject;
    :catch_91
    move-exception v7

    .line 421
    .local v7, e:Lorg/json/JSONException;
    iget-object v0, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor$2;->val$rListener:Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor$RefCountedOnCompleteListener;

    invoke-virtual {v0}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor$RefCountedOnCompleteListener;->onComplete()V

    .line 423
    .end local v7           #e:Lorg/json/JSONException;
    :goto_97
    return-void

    .line 419
    :cond_98
    :try_start_98
    iget-object v0, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor$2;->val$rListener:Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor$RefCountedOnCompleteListener;

    invoke-virtual {v0}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor$RefCountedOnCompleteListener;->onComplete()V
    :try_end_9d
    .catch Lorg/json/JSONException; {:try_start_98 .. :try_end_9d} :catch_91

    goto :goto_97
.end method
