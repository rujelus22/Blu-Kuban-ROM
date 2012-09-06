.class public final Lcom/google/api/services/plusi/model/PostalAddress;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "PostalAddress.java"


# instance fields
.field public addressLine:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public administrativeAreaName:Ljava/lang/String;

.field public countryName:Ljava/lang/String;

.field public countryNameCode:Ljava/lang/String;

.field public dependentLocalityName:Ljava/lang/String;

.field public dependentThoroughfareLeadingType:Ljava/lang/String;

.field public dependentThoroughfareName:Ljava/lang/String;

.field public dependentThoroughfarePostDirection:Ljava/lang/String;

.field public dependentThoroughfarePreDirection:Ljava/lang/String;

.field public dependentThoroughfareTrailingType:Ljava/lang/String;

.field public dependentThoroughfaresConnector:Ljava/lang/String;

.field public dependentThoroughfaresIndicator:Ljava/lang/String;

.field public dependentThoroughfaresType:Ljava/lang/String;

.field public firmName:Ljava/lang/String;

.field public languageCode:Ljava/lang/String;

.field public localityName:Ljava/lang/String;

.field public postBoxNumber:Ljava/lang/String;

.field public postalCodeNumber:Ljava/lang/String;

.field public postalCodeNumberExtension:Ljava/lang/String;

.field public premiseName:Ljava/lang/String;

.field public recipientName:Ljava/lang/String;

.field public sortingCode:Ljava/lang/String;

.field public subAdministrativeAreaName:Ljava/lang/String;

.field public subPremiseName:Ljava/lang/String;

.field public thoroughfareLeadingType:Ljava/lang/String;

.field public thoroughfareName:Ljava/lang/String;

.field public thoroughfareNumber:Ljava/lang/String;

.field public thoroughfarePostDirection:Ljava/lang/String;

.field public thoroughfarePreDirection:Ljava/lang/String;

.field public thoroughfareTrailingType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/GenericJson;-><init>()V

    return-void
.end method
