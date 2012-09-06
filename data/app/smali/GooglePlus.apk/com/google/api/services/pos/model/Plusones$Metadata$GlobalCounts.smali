.class public final Lcom/google/api/services/pos/model/Plusones$Metadata$GlobalCounts;
.super Lcom/google/android/apps/plus/json/GenericJson;
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
.field public count:Ljava/lang/Double;

.field public person:Ljava/util/List;
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
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 137
    const-class v0, Lcom/google/api/services/pos/model/Plusones$Metadata$GlobalCounts$Person;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 138
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/GenericJson;-><init>()V

    .line 143
    return-void
.end method
