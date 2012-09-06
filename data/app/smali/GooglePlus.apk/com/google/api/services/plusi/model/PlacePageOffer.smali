.class public final Lcom/google/api/services/plusi/model/PlacePageOffer;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "PlacePageOffer.java"


# instance fields
.field public details:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public detailsSnippet:Ljava/lang/String;

.field public endDate:Lcom/google/api/services/plusi/model/Date;

.field public expiryDate:Lcom/google/api/services/plusi/model/Date;

.field public fullTitle:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public imageUrl:Ljava/lang/String;

.field public isRelevant:Ljava/lang/Boolean;

.field public link:Lcom/google/api/services/plusi/model/PlacePageLink;

.field public loyaltyTier:Ljava/lang/Integer;

.field public offerSummary:Ljava/lang/String;

.field public redemptionAvailability:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public requiredClientCapabilities:Ljava/lang/String;

.field public source:Ljava/lang/String;

.field public startDate:Lcom/google/api/services/plusi/model/Date;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/GenericJson;-><init>()V

    return-void
.end method
