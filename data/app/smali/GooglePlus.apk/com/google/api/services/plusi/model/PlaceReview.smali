.class public final Lcom/google/api/services/plusi/model/PlaceReview;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "PlaceReview.java"


# instance fields
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

.field public dateModified:Ljava/lang/String;

.field public dateModifiedMilliseconds:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public itemReviewed:Lcom/google/api/services/plusi/model/EmbedClientItem;

.field public name:Ljava/lang/String;

.field public price:Ljava/lang/String;

.field public reviewBody:Ljava/lang/String;

.field public reviewRating:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/Rating;",
            ">;"
        }
    .end annotation
.end field

.field public url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 81
    const-class v0, Lcom/google/api/services/plusi/model/EmbedsPerson;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 101
    const-class v0, Lcom/google/api/services/plusi/model/Rating;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 102
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/GenericJson;-><init>()V

    return-void
.end method
