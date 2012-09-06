.class public final Lcom/google/api/services/plusi/model/RecommendedPeople;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "RecommendedPeople.java"


# instance fields
.field public id:Ljava/lang/String;

.field public member:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/EmbedsPerson;",
            ">;"
        }
    .end annotation
.end field

.field public name:Ljava/lang/String;

.field public sharer:Lcom/google/api/services/plusi/model/EmbedsPerson;

.field public url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 43
    const-class v0, Lcom/google/api/services/plusi/model/EmbedsPerson;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 44
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/GenericJson;-><init>()V

    return-void
.end method
