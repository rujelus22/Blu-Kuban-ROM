.class public Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity$VanityUrlLoader;
.super Lcom/google/android/apps/plus/phone/EsAsyncTaskLoader;
.source "UrlGatewayLoaderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VanityUrlLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/phone/EsAsyncTaskLoader",
        "<",
        "Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field private mData:Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;

.field private final mVanityId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)V
    .registers 4
    .parameter "context"
    .parameter "account"
    .parameter "vanityId"

    .prologue
    .line 209
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/phone/EsAsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 210
    iput-object p2, p0, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity$VanityUrlLoader;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 211
    iput-object p3, p0, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity$VanityUrlLoader;->mVanityId:Ljava/lang/String;

    .line 212
    return-void
.end method


# virtual methods
.method public deliverResult(Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;)V
    .registers 3
    .parameter "data"

    .prologue
    .line 253
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity$VanityUrlLoader;->isReset()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 262
    :cond_6
    :goto_6
    return-void

    .line 257
    :cond_7
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity$VanityUrlLoader;->mData:Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;

    .line 259
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity$VanityUrlLoader;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 260
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/phone/EsAsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    goto :goto_6
.end method

.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 199
    check-cast p1, Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity$VanityUrlLoader;->deliverResult(Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;)V

    return-void
.end method

.method public esLoadInBackground()Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;
    .registers 10

    .prologue
    const/4 v4, 0x0

    .line 219
    new-instance v0, Lcom/google/android/apps/plus/api/ResolveVanityIdOperation;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity$VanityUrlLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity$VanityUrlLoader;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v3, p0, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity$VanityUrlLoader;->mVanityId:Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/api/ResolveVanityIdOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V

    .line 221
    .local v0, op:Lcom/google/android/apps/plus/api/ResolveVanityIdOperation;
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/ResolveVanityIdOperation;->start()V

    .line 222
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/ResolveVanityIdOperation;->hasError()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 223
    const-string v1, "VanityUrlLoader"

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/api/ResolveVanityIdOperation;->logError(Ljava/lang/String;)V

    .line 238
    :cond_1e
    :goto_1e
    return-object v4

    .line 227
    :cond_1f
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/ResolveVanityIdOperation;->getPerson()Lcom/google/api/services/plusi/model/DataCirclePerson;

    move-result-object v8

    .line 228
    .local v8, person:Lcom/google/api/services/plusi/model/DataCirclePerson;
    if-eqz v8, :cond_1e

    .line 232
    new-instance v7, Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;

    invoke-direct {v7}, Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;-><init>()V

    .line 233
    .local v7, data:Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;
    iget-object v1, v8, Lcom/google/api/services/plusi/model/DataCirclePerson;->memberId:Lcom/google/api/services/plusi/model/DataCircleMemberId;

    iget-object v1, v1, Lcom/google/api/services/plusi/model/DataCircleMemberId;->obfuscatedGaiaId:Ljava/lang/String;

    iput-object v1, v7, Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;->gaiaId:Ljava/lang/String;

    .line 234
    iget-object v1, v8, Lcom/google/api/services/plusi/model/DataCirclePerson;->memberProperties:Lcom/google/api/services/plusi/model/DataCircleMemberProperties;

    iget-object v1, v1, Lcom/google/api/services/plusi/model/DataCircleMemberProperties;->displayName:Ljava/lang/String;

    iput-object v1, v7, Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;->displayName:Ljava/lang/String;

    .line 235
    iget-object v1, v7, Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;->gaiaId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_41

    .line 236
    const/4 v1, 0x2

    iput v1, v7, Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;->profileState:I

    :cond_41
    move-object v4, v7

    .line 238
    goto :goto_1e
.end method

.method public bridge synthetic esLoadInBackground()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity$VanityUrlLoader;->esLoadInBackground()Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;

    move-result-object v0

    return-object v0
.end method

.method protected onStartLoading()V
    .registers 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity$VanityUrlLoader;->mData:Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;

    if-nez v0, :cond_7

    .line 244
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity$VanityUrlLoader;->forceLoad()V

    .line 246
    :cond_7
    return-void
.end method
