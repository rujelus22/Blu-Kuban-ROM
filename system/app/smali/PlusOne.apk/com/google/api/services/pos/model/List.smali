.class public final Lcom/google/api/services/pos/model/List;
.super Lcom/google/api/client/json/GenericJson;
.source "List.java"


# instance fields
.field private continuationToken:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private items:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/pos/model/Plusones;",
            ">;"
        }
    .end annotation
.end field

.field private kind:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
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
.method public setItems(Ljava/util/List;)Lcom/google/api/services/pos/model/List;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/pos/model/Plusones;",
            ">;)",
            "Lcom/google/api/services/pos/model/List;"
        }
    .end annotation

    .prologue
    .line 75
    .local p1, items:Ljava/util/List;,"Ljava/util/List<Lcom/google/api/services/pos/model/Plusones;>;"
    iput-object p1, p0, Lcom/google/api/services/pos/model/List;->items:Ljava/util/List;

    .line 76
    return-object p0
.end method
