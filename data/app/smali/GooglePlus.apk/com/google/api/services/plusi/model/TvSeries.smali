.class public final Lcom/google/api/services/plusi/model/TvSeries;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "TvSeries.java"


# instance fields
.field public about:Lcom/google/api/services/plusi/model/EmbedClientItem;

.field public actor:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/EmbedsPerson;",
            ">;"
        }
    .end annotation
.end field

.field public buttonStyle:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public logoHrefUrl:Ljava/lang/String;

.field public logoImageUrl:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public offers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/Offer;",
            ">;"
        }
    .end annotation
.end field

.field public thumbnailUrl:Ljava/lang/String;

.field public titleIconUrl:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 74
    const-class v0, Lcom/google/api/services/plusi/model/EmbedsPerson;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 97
    const-class v0, Lcom/google/api/services/plusi/model/Offer;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 98
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/GenericJson;-><init>()V

    return-void
.end method
