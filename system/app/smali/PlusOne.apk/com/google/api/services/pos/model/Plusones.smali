.class public final Lcom/google/api/services/pos/model/Plusones;
.super Lcom/google/api/client/json/GenericJson;
.source "Plusones.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/services/pos/model/Plusones$Metadata;
    }
.end annotation


# instance fields
.field private abtk:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private aclJson:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private isSetByViewer:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private kind:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private metadata:Lcom/google/api/services/pos/model/Plusones$Metadata;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private responseHeaders:Lcom/google/api/client/http/HttpHeaders;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    .line 217
    return-void
.end method


# virtual methods
.method public getAbtk()Ljava/lang/String;
    .registers 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/google/api/services/pos/model/Plusones;->abtk:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/google/api/services/pos/model/Plusones;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getIsSetByViewer()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/api/services/pos/model/Plusones;->isSetByViewer:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getMetadata()Lcom/google/api/services/pos/model/Plusones$Metadata;
    .registers 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/google/api/services/pos/model/Plusones;->metadata:Lcom/google/api/services/pos/model/Plusones$Metadata;

    return-object v0
.end method

.method public setAbtk(Ljava/lang/String;)Lcom/google/api/services/pos/model/Plusones;
    .registers 2
    .parameter "abtk"

    .prologue
    .line 131
    iput-object p1, p0, Lcom/google/api/services/pos/model/Plusones;->abtk:Ljava/lang/String;

    .line 132
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/api/services/pos/model/Plusones;
    .registers 2
    .parameter "id"

    .prologue
    .line 165
    iput-object p1, p0, Lcom/google/api/services/pos/model/Plusones;->id:Ljava/lang/String;

    .line 166
    return-object p0
.end method

.method public setIsSetByViewer(Ljava/lang/Boolean;)Lcom/google/api/services/pos/model/Plusones;
    .registers 2
    .parameter "isSetByViewer"

    .prologue
    .line 148
    iput-object p1, p0, Lcom/google/api/services/pos/model/Plusones;->isSetByViewer:Ljava/lang/Boolean;

    .line 149
    return-object p0
.end method

.method public setResponseHeaders(Lcom/google/api/client/http/HttpHeaders;)V
    .registers 2
    .parameter "responseHeaders"

    .prologue
    .line 198
    iput-object p1, p0, Lcom/google/api/services/pos/model/Plusones;->responseHeaders:Lcom/google/api/client/http/HttpHeaders;

    .line 199
    return-void
.end method
