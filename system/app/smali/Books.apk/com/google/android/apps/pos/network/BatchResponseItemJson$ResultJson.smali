.class public Lcom/google/android/apps/pos/network/BatchResponseItemJson$ResultJson;
.super Lcom/google/api/client/json/GenericJson;
.source "BatchResponseItemJson.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/pos/network/BatchResponseItemJson;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResultJson"
.end annotation


# instance fields
.field private abtk:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private continuationToken:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private displayName:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "display_name"
    .end annotation
.end field

.field private email:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private items:[Lcom/google/android/apps/pos/model/Plusone;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private kind:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private metadata:Lcom/google/android/apps/pos/model/Metadata;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private profileImageUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "profile_image_url"
    .end annotation
.end field

.field private setByViewer:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "isSetByViewer"
    .end annotation
.end field

.field private signedUp:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    return-void
.end method


# virtual methods
.method public getAbuseToken()Ljava/lang/String;
    .registers 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/google/android/apps/pos/network/BatchResponseItemJson$ResultJson;->abtk:Ljava/lang/String;

    return-object v0
.end method

.method public getContinuationToken()Ljava/lang/String;
    .registers 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/google/android/apps/pos/network/BatchResponseItemJson$ResultJson;->continuationToken:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/android/apps/pos/network/BatchResponseItemJson$ResultJson;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .registers 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/android/apps/pos/network/BatchResponseItemJson$ResultJson;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/google/android/apps/pos/network/BatchResponseItemJson$ResultJson;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getItems()[Lcom/google/android/apps/pos/model/Plusone;
    .registers 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/google/android/apps/pos/network/BatchResponseItemJson$ResultJson;->items:[Lcom/google/android/apps/pos/model/Plusone;

    return-object v0
.end method

.method public getKind()Ljava/lang/String;
    .registers 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/google/android/apps/pos/network/BatchResponseItemJson$ResultJson;->kind:Ljava/lang/String;

    return-object v0
.end method

.method public getMetadata()Lcom/google/android/apps/pos/model/Metadata;
    .registers 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/google/android/apps/pos/network/BatchResponseItemJson$ResultJson;->metadata:Lcom/google/android/apps/pos/model/Metadata;

    return-object v0
.end method

.method public getProfileImageUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/google/android/apps/pos/network/BatchResponseItemJson$ResultJson;->profileImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isSetByViewer()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/google/android/apps/pos/network/BatchResponseItemJson$ResultJson;->setByViewer:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isSignedUp()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/google/android/apps/pos/network/BatchResponseItemJson$ResultJson;->signedUp:Ljava/lang/Boolean;

    return-object v0
.end method
