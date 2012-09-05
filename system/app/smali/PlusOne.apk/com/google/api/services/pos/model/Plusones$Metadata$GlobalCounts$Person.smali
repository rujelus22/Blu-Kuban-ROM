.class public final Lcom/google/api/services/pos/model/Plusones$Metadata$GlobalCounts$Person;
.super Lcom/google/api/client/json/GenericJson;
.source "Plusones.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/pos/model/Plusones$Metadata$GlobalCounts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Person"
.end annotation


# instance fields
.field private displayName:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private profileUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private thumbnailUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 397
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 484
    iget-object v0, p0, Lcom/google/api/services/pos/model/Plusones$Metadata$GlobalCounts$Person;->id:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/api/services/pos/model/Plusones$Metadata$GlobalCounts$Person;
    .registers 2
    .parameter "id"

    .prologue
    .line 492
    iput-object p1, p0, Lcom/google/api/services/pos/model/Plusones$Metadata$GlobalCounts$Person;->id:Ljava/lang/String;

    .line 493
    return-object p0
.end method
