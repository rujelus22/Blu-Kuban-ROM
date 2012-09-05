.class public final Lcom/google/api/services/plus/model/Acl;
.super Lcom/google/api/client/json/GenericJson;
.source "Acl.java"


# instance fields
.field private description:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "description"
    .end annotation
.end field

.field private items:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "items"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plus/model/PlusAclentryResource;",
            ">;"
        }
    .end annotation
.end field

.field private kind:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "kind"
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
.method public setItems(Ljava/util/List;)Lcom/google/api/services/plus/model/Acl;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plus/model/PlusAclentryResource;",
            ">;)",
            "Lcom/google/api/services/plus/model/Acl;"
        }
    .end annotation

    .prologue
    .line 53
    .local p1, items:Ljava/util/List;,"Ljava/util/List<Lcom/google/api/services/plus/model/PlusAclentryResource;>;"
    iput-object p1, p0, Lcom/google/api/services/plus/model/Acl;->items:Ljava/util/List;

    .line 54
    return-object p0
.end method
