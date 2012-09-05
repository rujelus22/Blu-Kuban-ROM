.class public final Lcom/google/api/services/pos/model/Plusones$Metadata$GlobalCounts;
.super Lcom/google/api/client/json/GenericJson;
.source "Plusones.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/pos/model/Plusones$Metadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GlobalCounts"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/services/pos/model/Plusones$Metadata$GlobalCounts$Person;
    }
.end annotation


# instance fields
.field private count:Ljava/lang/Double;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private person:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/pos/model/Plusones$Metadata$GlobalCounts$Person;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 343
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    .line 397
    return-void
.end method


# virtual methods
.method public getCount()Ljava/lang/Double;
    .registers 2

    .prologue
    .line 365
    iget-object v0, p0, Lcom/google/api/services/pos/model/Plusones$Metadata$GlobalCounts;->count:Ljava/lang/Double;

    return-object v0
.end method

.method public getPerson()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/pos/model/Plusones$Metadata$GlobalCounts$Person;",
            ">;"
        }
    .end annotation

    .prologue
    .line 382
    iget-object v0, p0, Lcom/google/api/services/pos/model/Plusones$Metadata$GlobalCounts;->person:Ljava/util/List;

    return-object v0
.end method

.method public setCount(Ljava/lang/Double;)Lcom/google/api/services/pos/model/Plusones$Metadata$GlobalCounts;
    .registers 2
    .parameter "count"

    .prologue
    .line 373
    iput-object p1, p0, Lcom/google/api/services/pos/model/Plusones$Metadata$GlobalCounts;->count:Ljava/lang/Double;

    .line 374
    return-object p0
.end method
