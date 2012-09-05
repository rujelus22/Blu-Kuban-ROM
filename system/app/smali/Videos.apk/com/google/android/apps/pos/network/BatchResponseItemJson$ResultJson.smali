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

.field private kind:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private metadata:Lcom/google/android/apps/pos/model/Metadata;
    .annotation runtime Lcom/google/api/client/util/Key;
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
.method public getDisplayName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/apps/pos/network/BatchResponseItemJson$ResultJson;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .registers 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/android/apps/pos/network/BatchResponseItemJson$ResultJson;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/google/android/apps/pos/network/BatchResponseItemJson$ResultJson;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getKind()Ljava/lang/String;
    .registers 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/google/android/apps/pos/network/BatchResponseItemJson$ResultJson;->kind:Ljava/lang/String;

    return-object v0
.end method

.method public getMetadata()Lcom/google/android/apps/pos/model/Metadata;
    .registers 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/google/android/apps/pos/network/BatchResponseItemJson$ResultJson;->metadata:Lcom/google/android/apps/pos/model/Metadata;

    return-object v0
.end method

.method public isSetByViewer()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/google/android/apps/pos/network/BatchResponseItemJson$ResultJson;->setByViewer:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isSignedUp()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/android/apps/pos/network/BatchResponseItemJson$ResultJson;->signedUp:Ljava/lang/Boolean;

    return-object v0
.end method
