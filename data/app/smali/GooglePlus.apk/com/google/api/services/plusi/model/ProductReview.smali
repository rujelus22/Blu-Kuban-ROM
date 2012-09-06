.class public final Lcom/google/api/services/plusi/model/ProductReview;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "ProductReview.java"


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

.field public authorReviewPageUrl:Ljava/lang/String;

.field public bestRatingAsInt:Ljava/lang/Integer;

.field public description:Ljava/lang/String;

.field public displayUrl:Ljava/lang/String;

.field public imageUrl:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public productName:Ljava/lang/String;

.field public productPrice:Ljava/lang/String;

.field public ratingValueAsInt:Ljava/lang/Integer;

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

.field public reviewTruncated:Ljava/lang/Boolean;

.field public url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 64
    const-class v0, Lcom/google/api/services/plusi/model/EmbedsPerson;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 109
    const-class v0, Lcom/google/api/services/plusi/model/Rating;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 110
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/GenericJson;-><init>()V

    return-void
.end method
