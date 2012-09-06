.class public final Lcom/google/api/services/plusi/model/PlaceInfo;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "PlaceInfo.java"


# instance fields
.field public cid:Ljava/lang/Long;

.field public claimedGaiaId:Ljava/lang/String;

.field public clusterId:Ljava/lang/String;

.field public featureId:Ljava/lang/String;

.field public gaiaIdForDisplay:Ljava/lang/String;

.field public isExact:Ljava/lang/Boolean;

.field public latitudeE6:Ljava/lang/Integer;

.field public latlng:Lcom/google/api/services/plusi/model/LatLng;

.field public lbcClaimedGaiaId:Ljava/lang/String;

.field public longitudeE6:Ljava/lang/Integer;

.field public ownerStatus:Ljava/lang/String;

.field public signedClusterId:Ljava/lang/String;

.field public timeZoneId:Ljava/lang/String;

.field public timeZoneOffsetMin:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/GenericJson;-><init>()V

    return-void
.end method
