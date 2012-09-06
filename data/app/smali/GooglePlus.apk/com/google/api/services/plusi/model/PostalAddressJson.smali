.class public final Lcom/google/api/services/plusi/model/PostalAddressJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "PostalAddressJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/plusi/model/PostalAddress;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/plusi/model/PostalAddressJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/plusi/model/PostalAddressJson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/PostalAddressJson;-><init>()V

    sput-object v0, Lcom/google/api/services/plusi/model/PostalAddressJson;->INSTANCE:Lcom/google/api/services/plusi/model/PostalAddressJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/plusi/model/PostalAddress;

    const/16 v1, 0x1e

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "languageCode"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "addressLine"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "dependentThoroughfaresType"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "postalCodeNumberExtension"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "localityName"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "thoroughfarePreDirection"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "recipientName"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "firmName"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "dependentThoroughfarePostDirection"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "countryNameCode"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "sortingCode"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "dependentThoroughfarePreDirection"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "subAdministrativeAreaName"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "thoroughfarePostDirection"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "dependentThoroughfareName"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "subPremiseName"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "postalCodeNumber"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "dependentThoroughfareTrailingType"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "thoroughfareTrailingType"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "dependentThoroughfaresIndicator"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "dependentThoroughfareLeadingType"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "countryName"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "thoroughfareLeadingType"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "thoroughfareNumber"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "dependentThoroughfaresConnector"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string v3, "premiseName"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string v3, "administrativeAreaName"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-string v3, "thoroughfareName"

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    const-string v3, "dependentLocalityName"

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    const-string v3, "postBoxNumber"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 52
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/plusi/model/PostalAddressJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/plusi/model/PostalAddressJson;->INSTANCE:Lcom/google/api/services/plusi/model/PostalAddressJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/plusi/model/PostalAddress;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 61
    const/16 v0, 0x1e

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PostalAddress;->languageCode:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PostalAddress;->addressLine:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PostalAddress;->dependentThoroughfaresType:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PostalAddress;->postalCodeNumberExtension:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PostalAddress;->localityName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PostalAddress;->thoroughfarePreDirection:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PostalAddress;->recipientName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PostalAddress;->firmName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PostalAddress;->dependentThoroughfarePostDirection:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PostalAddress;->countryNameCode:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PostalAddress;->sortingCode:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PostalAddress;->dependentThoroughfarePreDirection:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PostalAddress;->subAdministrativeAreaName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PostalAddress;->thoroughfarePostDirection:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PostalAddress;->dependentThoroughfareName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PostalAddress;->subPremiseName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PostalAddress;->postalCodeNumber:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PostalAddress;->dependentThoroughfareTrailingType:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PostalAddress;->thoroughfareTrailingType:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PostalAddress;->dependentThoroughfaresIndicator:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PostalAddress;->dependentThoroughfareLeadingType:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PostalAddress;->countryName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PostalAddress;->thoroughfareLeadingType:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PostalAddress;->thoroughfareNumber:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PostalAddress;->dependentThoroughfaresConnector:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PostalAddress;->premiseName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PostalAddress;->administrativeAreaName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PostalAddress;->thoroughfareName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PostalAddress;->dependentLocalityName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PostalAddress;->postBoxNumber:Ljava/lang/String;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/plusi/model/PostalAddress;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/plusi/model/PostalAddressJson;->getValues(Lcom/google/api/services/plusi/model/PostalAddress;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/plusi/model/PostalAddress;
    .registers 2

    .prologue
    .line 56
    new-instance v0, Lcom/google/api/services/plusi/model/PostalAddress;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/PostalAddress;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/plusi/model/PostalAddressJson;->newInstance()Lcom/google/api/services/plusi/model/PostalAddress;

    move-result-object v0

    return-object v0
.end method
