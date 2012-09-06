.class public Lcom/google/android/apps/plus/api/GetEventThemesOperation;
.super Lcom/google/android/apps/plus/network/PlusiOperation;
.source "GetEventThemesOperation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/network/PlusiOperation",
        "<",
        "Lcom/google/android/apps/plus/json/GenericJson;",
        "Lcom/google/api/services/plusi/model/GetEventThemesResponse;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V
    .registers 13
    .parameter "context"
    .parameter "account"
    .parameter "intent"
    .parameter "listener"

    .prologue
    .line 33
    const-string v3, "geteventthemes"

    const/4 v4, 0x0

    invoke-static {}, Lcom/google/api/services/plusi/model/GetEventThemesResponseJson;->getInstance()Lcom/google/api/services/plusi/model/GetEventThemesResponseJson;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/plus/network/PlusiOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/android/apps/plus/json/EsJson;Lcom/google/android/apps/plus/json/EsJson;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 35
    return-void
.end method


# virtual methods
.method protected bridge synthetic handleResponse(Lcom/google/android/apps/plus/json/GenericJson;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 20
    check-cast p1, Lcom/google/api/services/plusi/model/GetEventThemesResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/api/GetEventThemesOperation;->handleResponse(Lcom/google/api/services/plusi/model/GetEventThemesResponse;)V

    return-void
.end method

.method protected handleResponse(Lcom/google/api/services/plusi/model/GetEventThemesResponse;)V
    .registers 5
    .parameter "response"

    .prologue
    .line 49
    iget-object v0, p1, Lcom/google/api/services/plusi/model/GetEventThemesResponse;->themes:Ljava/util/List;

    if-eqz v0, :cond_d

    .line 50
    iget-object v0, p0, Lcom/google/android/apps/plus/api/GetEventThemesOperation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/api/GetEventThemesOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v2, p1, Lcom/google/api/services/plusi/model/GetEventThemesResponse;->themes:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/content/EsEventData;->insertEventThemes(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/List;)V

    .line 52
    :cond_d
    return-void
.end method

.method protected populateRequest(Lcom/google/android/apps/plus/json/GenericJson;)V
    .registers 2
    .parameter "request"

    .prologue
    .line 42
    return-void
.end method
