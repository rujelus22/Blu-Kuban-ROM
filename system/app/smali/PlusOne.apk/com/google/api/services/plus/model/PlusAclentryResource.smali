.class public final Lcom/google/api/services/plus/model/PlusAclentryResource;
.super Lcom/google/api/client/json/GenericJson;
.source "PlusAclentryResource.java"


# instance fields
.field private id:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "id"
    .end annotation
.end field

.field private type:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "type"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    return-void
.end method


# virtual methods
.method public setId(Ljava/lang/String;)Lcom/google/api/services/plus/model/PlusAclentryResource;
    .registers 2
    .parameter "id"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/google/api/services/plus/model/PlusAclentryResource;->id:Ljava/lang/String;

    .line 91
    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lcom/google/api/services/plus/model/PlusAclentryResource;
    .registers 2
    .parameter "type"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/google/api/services/plus/model/PlusAclentryResource;->type:Ljava/lang/String;

    .line 68
    return-object p0
.end method
