.class public final Lcom/google/api/services/pos/model/Plusones$Metadata;
.super Lcom/google/api/client/json/GenericJson;
.source "Plusones.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/pos/model/Plusones;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Metadata"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/services/pos/model/Plusones$Metadata$GlobalCounts;
    }
.end annotation


# instance fields
.field private adgroupId:Ljava/lang/Long;
    .annotation runtime Lcom/google/api/client/json/JsonString;
    .end annotation

    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private creativeId:Ljava/lang/Long;
    .annotation runtime Lcom/google/api/client/json/JsonString;
    .end annotation

    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private globalCounts:Lcom/google/api/services/pos/model/Plusones$Metadata$GlobalCounts;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private title:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private type:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 217
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    .line 343
    return-void
.end method


# virtual methods
.method public getGlobalCounts()Lcom/google/api/services/pos/model/Plusones$Metadata$GlobalCounts;
    .registers 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/google/api/services/pos/model/Plusones$Metadata;->globalCounts:Lcom/google/api/services/pos/model/Plusones$Metadata$GlobalCounts;

    return-object v0
.end method
