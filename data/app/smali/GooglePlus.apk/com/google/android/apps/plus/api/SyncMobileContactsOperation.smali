.class public Lcom/google/android/apps/plus/api/SyncMobileContactsOperation;
.super Lcom/google/android/apps/plus/network/PlusiOperation;
.source "SyncMobileContactsOperation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/network/PlusiOperation",
        "<",
        "Lcom/google/api/services/plusi/model/SyncMobileContactsRequest;",
        "Lcom/google/api/services/plusi/model/SyncMobileContactsResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContacts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/MobileContact;",
            ">;"
        }
    .end annotation
.end field

.field private final mDevice:Ljava/lang/String;

.field private mSuccess:Z

.field private mSyncType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V
    .registers 16
    .parameter "context"
    .parameter "account"
    .parameter "device"
    .parameter
    .parameter "syncType"
    .parameter "intent"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/plus/content/EsAccount;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/MobileContact;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/content/Intent;",
            "Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 54
    .local p4, contacts:Ljava/util/List;,"Ljava/util/List<Lcom/google/api/services/plusi/model/MobileContact;>;"
    const-string v3, "syncmobilecontacts"

    invoke-static {}, Lcom/google/api/services/plusi/model/SyncMobileContactsRequestJson;->getInstance()Lcom/google/api/services/plusi/model/SyncMobileContactsRequestJson;

    move-result-object v4

    invoke-static {}, Lcom/google/api/services/plusi/model/SyncMobileContactsResponseJson;->getInstance()Lcom/google/api/services/plusi/model/SyncMobileContactsResponseJson;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/plus/network/PlusiOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/android/apps/plus/json/EsJson;Lcom/google/android/apps/plus/json/EsJson;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 37
    const-string v0, "FULL"

    iput-object v0, p0, Lcom/google/android/apps/plus/api/SyncMobileContactsOperation;->mSyncType:Ljava/lang/String;

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/api/SyncMobileContactsOperation;->mSuccess:Z

    .line 57
    iput-object p3, p0, Lcom/google/android/apps/plus/api/SyncMobileContactsOperation;->mDevice:Ljava/lang/String;

    .line 58
    iput-object p4, p0, Lcom/google/android/apps/plus/api/SyncMobileContactsOperation;->mContacts:Ljava/util/List;

    .line 59
    iput-object p5, p0, Lcom/google/android/apps/plus/api/SyncMobileContactsOperation;->mSyncType:Ljava/lang/String;

    .line 60
    return-void
.end method


# virtual methods
.method protected bridge synthetic handleResponse(Lcom/google/android/apps/plus/json/GenericJson;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 25
    check-cast p1, Lcom/google/api/services/plusi/model/SyncMobileContactsResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/api/SyncMobileContactsOperation;->handleResponse(Lcom/google/api/services/plusi/model/SyncMobileContactsResponse;)V

    return-void
.end method

.method protected handleResponse(Lcom/google/api/services/plusi/model/SyncMobileContactsResponse;)V
    .registers 5
    .parameter "response"

    .prologue
    const/4 v1, 0x0

    .line 77
    iget-object v0, p1, Lcom/google/api/services/plusi/model/SyncMobileContactsResponse;->status:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2c

    iget-object v0, p1, Lcom/google/api/services/plusi/model/SyncMobileContactsResponse;->status:Ljava/lang/String;

    const-string v2, "SUCCESS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const/4 v0, 0x1

    :goto_14
    iput-boolean v0, p0, Lcom/google/android/apps/plus/api/SyncMobileContactsOperation;->mSuccess:Z

    .line 78
    iget-boolean v0, p0, Lcom/google/android/apps/plus/api/SyncMobileContactsOperation;->mSuccess:Z

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/google/android/apps/plus/api/SyncMobileContactsOperation;->mSyncType:Ljava/lang/String;

    const-string v2, "WIPEOUT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 79
    iget-object v0, p0, Lcom/google/android/apps/plus/api/SyncMobileContactsOperation;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/apps/plus/api/SyncMobileContactsOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v0, v2, v1}, Lcom/google/android/apps/plus/content/EsAccountsData;->saveContactsStatsWipeoutNeeded(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Z)V

    .line 81
    :cond_2b
    return-void

    :cond_2c
    move v0, v1

    .line 77
    goto :goto_14
.end method

.method protected bridge synthetic populateRequest(Lcom/google/android/apps/plus/json/GenericJson;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 25
    check-cast p1, Lcom/google/api/services/plusi/model/SyncMobileContactsRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/api/SyncMobileContactsOperation;->populateRequest(Lcom/google/api/services/plusi/model/SyncMobileContactsRequest;)V

    return-void
.end method

.method protected populateRequest(Lcom/google/api/services/plusi/model/SyncMobileContactsRequest;)V
    .registers 3
    .parameter "request"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/apps/plus/api/SyncMobileContactsOperation;->mDevice:Ljava/lang/String;

    iput-object v0, p1, Lcom/google/api/services/plusi/model/SyncMobileContactsRequest;->device:Ljava/lang/String;

    .line 68
    iget-object v0, p0, Lcom/google/android/apps/plus/api/SyncMobileContactsOperation;->mSyncType:Ljava/lang/String;

    iput-object v0, p1, Lcom/google/api/services/plusi/model/SyncMobileContactsRequest;->type:Ljava/lang/String;

    .line 69
    iget-object v0, p0, Lcom/google/android/apps/plus/api/SyncMobileContactsOperation;->mContacts:Ljava/util/List;

    iput-object v0, p1, Lcom/google/api/services/plusi/model/SyncMobileContactsRequest;->contact:Ljava/util/List;

    .line 70
    return-void
.end method
