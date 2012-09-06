.class public final Lcom/google/api/services/plusi/model/Book;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "Book.java"


# instance fields
.field public about:Lcom/google/api/services/plusi/model/EmbedClientItem;

.field public aggregateRating:Lcom/google/api/services/plusi/model/AggregateRating;

.field public author:Ljava/util/List;
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

.field public imageUrl:Ljava/lang/String;

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

.field public text:Ljava/lang/String;

.field public thumbnailUrl:Ljava/lang/String;

.field public titleIconUrl:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 58
    const-class v0, Lcom/google/api/services/plusi/model/EmbedsPerson;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 119
    const-class v0, Lcom/google/api/services/plusi/model/Offer;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 120
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/GenericJson;-><init>()V

    return-void
.end method
