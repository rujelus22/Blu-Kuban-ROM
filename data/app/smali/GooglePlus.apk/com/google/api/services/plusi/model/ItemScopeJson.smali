.class public final Lcom/google/api/services/plusi/model/ItemScopeJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "ItemScopeJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/plusi/model/ItemScope;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/plusi/model/ItemScopeJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/plusi/model/ItemScopeJson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/ItemScopeJson;-><init>()V

    sput-object v0, Lcom/google/api/services/plusi/model/ItemScopeJson;->INSTANCE:Lcom/google/api/services/plusi/model/ItemScopeJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/plusi/model/ItemScope;

    const/16 v1, 0x65

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "startDate"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "ownerObfuscatedId"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "postalCode"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "endDate"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-class v3, Lcom/google/api/services/plusi/model/ItemScopeJson;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "producer"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "text"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "reviewBody"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-class v3, Lcom/google/api/services/plusi/model/ItemScopeJson;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "address"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "encodedCustomProto"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "birthDate"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "datePublished"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "addressLocality"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-class v3, Lcom/google/api/services/plusi/model/ItemScopeJson;

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "aggregateRating"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "additionalName"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "worstRating"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "ratingCount"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-class v3, Lcom/google/api/services/plusi/model/ItemScopeJson;

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "contributor"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "price"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "id"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "postOfficeBoxNumber"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "thumbnailUrl"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-class v3, Lcom/google/api/services/plusi/model/ItemScopeJson;

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string v3, "attendees"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-string v3, "itemtype"

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    const-class v3, Lcom/google/api/services/plusi/model/ItemScopeJson;

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    const-string v3, "author"

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    const-class v3, Lcom/google/api/services/plusi/model/ItemScopeJson;

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    const-string v3, "tracks"

    aput-object v3, v1, v2

    const/16 v2, 0x20

    const-class v3, Lcom/google/api/services/plusi/model/ItemScopeJson;

    aput-object v3, v1, v2

    const/16 v2, 0x21

    const-string v3, "performers"

    aput-object v3, v1, v2

    const/16 v2, 0x22

    const-class v3, Lcom/google/api/services/plusi/model/ItemScopeJson;

    aput-object v3, v1, v2

    const/16 v2, 0x23

    const-string v3, "thumbnail"

    aput-object v3, v1, v2

    const/16 v2, 0x24

    const-class v3, Lcom/google/api/services/plusi/model/ItemScopeJson;

    aput-object v3, v1, v2

    const/16 v2, 0x25

    const-string v3, "actor"

    aput-object v3, v1, v2

    const/16 v2, 0x26

    const-string v3, "bestRating"

    aput-object v3, v1, v2

    const/16 v2, 0x27

    const-string v3, "addressCountry"

    aput-object v3, v1, v2

    const/16 v2, 0x28

    const-string v3, "width"

    aput-object v3, v1, v2

    const/16 v2, 0x29

    const-string v3, "streetAddress"

    aput-object v3, v1, v2

    const/16 v2, 0x2a

    const-class v3, Lcom/google/api/services/plusi/model/ItemScopeJson;

    aput-object v3, v1, v2

    const/16 v2, 0x2b

    const-string v3, "offers"

    aput-object v3, v1, v2

    const/16 v2, 0x2c

    const-class v3, Lcom/google/api/services/plusi/model/ItemScopeJson;

    aput-object v3, v1, v2

    const/16 v2, 0x2d

    const-string v3, "location"

    aput-object v3, v1, v2

    const/16 v2, 0x2e

    const-class v3, Lcom/google/api/services/plusi/model/EmbedClientItemJson;

    aput-object v3, v1, v2

    const/16 v2, 0x2f

    const-string v3, "embedClientItem"

    aput-object v3, v1, v2

    const/16 v2, 0x30

    const-class v3, Lcom/google/api/services/plusi/model/ItemScopeJson;

    aput-object v3, v1, v2

    const/16 v2, 0x31

    const-string v3, "byArtist"

    aput-object v3, v1, v2

    const/16 v2, 0x32

    const-string v3, "type"

    aput-object v3, v1, v2

    const/16 v2, 0x33

    const-string v3, "dateModified"

    aput-object v3, v1, v2

    const/16 v2, 0x34

    const-class v3, Lcom/google/api/services/plusi/model/ItemScopeJson;

    aput-object v3, v1, v2

    const/16 v2, 0x35

    const-string v3, "itemReviewed"

    aput-object v3, v1, v2

    const/16 v2, 0x36

    const-string v3, "contentSize"

    aput-object v3, v1, v2

    const/16 v2, 0x37

    const-string v3, "contentUrl"

    aput-object v3, v1, v2

    const/16 v2, 0x38

    const-string v3, "mapUrl"

    aput-object v3, v1, v2

    const/16 v2, 0x39

    const-string v3, "description"

    aput-object v3, v1, v2

    const/16 v2, 0x3a

    const-string v3, "duration"

    aput-object v3, v1, v2

    const/16 v2, 0x3b

    const-string v3, "familyName"

    aput-object v3, v1, v2

    const/16 v2, 0x3c

    const-string v3, "dateCreated"

    aput-object v3, v1, v2

    const/16 v2, 0x3d

    const-class v3, Lcom/google/api/services/plusi/model/ItemScopeJson;

    aput-object v3, v1, v2

    const/16 v2, 0x3e

    const-string v3, "director"

    aput-object v3, v1, v2

    const/16 v2, 0x3f

    const-string v3, "latitude"

    aput-object v3, v1, v2

    const/16 v2, 0x40

    const-string v3, "attendeeCount"

    aput-object v3, v1, v2

    const/16 v2, 0x41

    const-class v3, Lcom/google/api/services/plusi/model/ItemScopeJson;

    aput-object v3, v1, v2

    const/16 v2, 0x42

    const-string v3, "inAlbum"

    aput-object v3, v1, v2

    const/16 v2, 0x43

    const-string v3, "addressRegion"

    aput-object v3, v1, v2

    const/16 v2, 0x44

    const-string v3, "faviconUrl"

    aput-object v3, v1, v2

    const/16 v2, 0x45

    const-string v3, "height"

    aput-object v3, v1, v2

    const/16 v2, 0x46

    const-class v3, Lcom/google/api/services/plusi/model/ItemScopeJson;

    aput-object v3, v1, v2

    const/16 v2, 0x47

    const-string v3, "geo"

    aput-object v3, v1, v2

    const/16 v2, 0x48

    const-class v3, Lcom/google/api/services/plusi/model/ItemScopeJson;

    aput-object v3, v1, v2

    const/16 v2, 0x49

    const-string v3, "contentLocation"

    aput-object v3, v1, v2

    const/16 v2, 0x4a

    const-string v3, "tickerSymbol"

    aput-object v3, v1, v2

    const/16 v2, 0x4b

    const-string v3, "playerType"

    aput-object v3, v1, v2

    const/16 v2, 0x4c

    const-class v3, Lcom/google/api/services/plusi/model/ItemScopeJson;

    aput-object v3, v1, v2

    const/16 v2, 0x4d

    const-string v3, "about"

    aput-object v3, v1, v2

    const/16 v2, 0x4e

    const-string v3, "givenName"

    aput-object v3, v1, v2

    const/16 v2, 0x4f

    const-string v3, "name"

    aput-object v3, v1, v2

    const/16 v2, 0x50

    const-class v3, Lcom/google/api/services/plusi/model/ItemScopeExtensionJson;

    aput-object v3, v1, v2

    const/16 v2, 0x51

    const-string v3, "extension"

    aput-object v3, v1, v2

    const/16 v2, 0x52

    const-class v3, Lcom/google/api/services/plusi/model/ItemScopeJson;

    aput-object v3, v1, v2

    const/16 v2, 0x53

    const-string v3, "associatedMedia"

    aput-object v3, v1, v2

    const/16 v2, 0x54

    const-string v3, "url"

    aput-object v3, v1, v2

    const/16 v2, 0x55

    const-string v3, "gender"

    aput-object v3, v1, v2

    const/16 v2, 0x56

    const-string v3, "imageUrl"

    aput-object v3, v1, v2

    const/16 v2, 0x57

    const-class v3, Lcom/google/api/services/plusi/model/ItemScopeJson;

    aput-object v3, v1, v2

    const/16 v2, 0x58

    const-string v3, "partOfTvSeries"

    aput-object v3, v1, v2

    const/16 v2, 0x59

    const-string v3, "numTracks"

    aput-object v3, v1, v2

    const/16 v2, 0x5a

    const-string v3, "longitude"

    aput-object v3, v1, v2

    const/16 v2, 0x5b

    const-string v3, "email"

    aput-object v3, v1, v2

    const/16 v2, 0x5c

    const-string v3, "priceCurrency"

    aput-object v3, v1, v2

    const/16 v2, 0x5d

    const-string v3, "caption"

    aput-object v3, v1, v2

    const/16 v2, 0x5e

    const-string v3, "embedUrl"

    aput-object v3, v1, v2

    const/16 v2, 0x5f

    const-string v3, "ratingValue"

    aput-object v3, v1, v2

    const/16 v2, 0x60

    const-string v3, "telephone"

    aput-object v3, v1, v2

    const/16 v2, 0x61

    const-class v3, Lcom/google/api/services/plusi/model/ItemScopeJson;

    aput-object v3, v1, v2

    const/16 v2, 0x62

    const-string v3, "reviewRating"

    aput-object v3, v1, v2

    const/16 v2, 0x63

    const-class v3, Lcom/google/api/services/plusi/model/ItemScopeJson;

    aput-object v3, v1, v2

    const/16 v2, 0x64

    const-string v3, "audio"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 98
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/plusi/model/ItemScopeJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/plusi/model/ItemScopeJson;->INSTANCE:Lcom/google/api/services/plusi/model/ItemScopeJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/plusi/model/ItemScope;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 107
    const/16 v0, 0x4c

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ItemScope;->startDate:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ItemScope;->ownerObfuscatedId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ItemScope;->postalCode:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ItemScope;->endDate:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ItemScope;->producer:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ItemScope;->text:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ItemScope;->reviewBody:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ItemScope;->address:Lcom/google/api/services/plusi/model/ItemScope;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ItemScope;->encodedCustomProto:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ItemScope;->birthDate:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ItemScope;->datePublished:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ItemScope;->addressLocality:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ItemScope;->aggregateRating:Lcom/google/api/services/plusi/model/ItemScope;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ItemScope;->additionalName:Ljava/util/List;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ItemScope;->worstRating:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ItemScope;->ratingCount:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ItemScope;->contributor:Ljava/util/List;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ItemScope;->price:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ItemScope;->id:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ItemScope;->postOfficeBoxNumber:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ItemScope;->thumbnailUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ItemScope;->attendees:Ljava/util/List;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ItemScope;->itemtype:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ItemScope;->author:Ljava/util/List;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ItemScope;->tracks:Ljava/util/List;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ItemScope;->performers:Ljava/util/List;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ItemScope;->thumbnail:Lcom/google/api/services/plusi/model/ItemScope;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ItemScope;->actor:Ljava/util/List;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ItemScope;->bestRating:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ItemScope;->addressCountry:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ItemScope;->width:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ItemScope;->streetAddress:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ItemScope;->offers:Ljava/util/List;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ItemScope;->location:Lcom/google/api/services/plusi/model/ItemScope;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ItemScope;->embedClientItem:Lcom/google/api/services/plusi/model/EmbedClientItem;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ItemScope;->byArtist:Lcom/google/api/services/plusi/model/ItemScope;

    aput-object v2, v0, v1

    const/16 v1, 0x24

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ItemScope;->type:Ljava/util/List;

    aput-object v2, v0, v1

    const/16 v1, 0x25

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ItemScope;->dateModified:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x26

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ItemScope;->itemReviewed:Lcom/google/api/services/plusi/model/ItemScope;

    aput-object v2, v0, v1

    const/16 v1, 0x27

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ItemScope;->contentSize:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x28

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ItemScope;->contentUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x29

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ItemScope;->mapUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ItemScope;->description:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ItemScope;->duration:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ItemScope;->familyName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ItemScope;->dateCreated:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ItemScope;->director:Ljava/util/List;

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ItemScope;->latitude:Ljava/lang/Double;

    aput-object v2, v0, v1

    const/16 v1, 0x30

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ItemScope;->attendeeCount:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0x31

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ItemScope;->inAlbum:Lcom/google/api/services/plusi/model/ItemScope;

    aput-object v2, v0, v1

    const/16 v1, 0x32

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ItemScope;->addressRegion:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x33

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ItemScope;->faviconUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x34

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ItemScope;->height:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x35

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ItemScope;->geo:Lcom/google/api/services/plusi/model/ItemScope;

    aput-object v2, v0, v1

    const/16 v1, 0x36

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ItemScope;->contentLocation:Lcom/google/api/services/plusi/model/ItemScope;

    aput-object v2, v0, v1

    const/16 v1, 0x37

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ItemScope;->tickerSymbol:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x38

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ItemScope;->playerType:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x39

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ItemScope;->about:Lcom/google/api/services/plusi/model/ItemScope;

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ItemScope;->givenName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ItemScope;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ItemScope;->extension:Ljava/util/List;

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ItemScope;->associatedMedia:Ljava/util/List;

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ItemScope;->url:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ItemScope;->gender:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x40

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ItemScope;->imageUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x41

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ItemScope;->partOfTvSeries:Lcom/google/api/services/plusi/model/ItemScope;

    aput-object v2, v0, v1

    const/16 v1, 0x42

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ItemScope;->numTracks:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x43

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ItemScope;->longitude:Ljava/lang/Double;

    aput-object v2, v0, v1

    const/16 v1, 0x44

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ItemScope;->email:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x45

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ItemScope;->priceCurrency:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x46

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ItemScope;->caption:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x47

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ItemScope;->embedUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x48

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ItemScope;->ratingValue:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x49

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ItemScope;->telephone:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ItemScope;->reviewRating:Ljava/util/List;

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ItemScope;->audio:Lcom/google/api/services/plusi/model/ItemScope;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/plusi/model/ItemScope;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/plusi/model/ItemScopeJson;->getValues(Lcom/google/api/services/plusi/model/ItemScope;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/plusi/model/ItemScope;
    .registers 2

    .prologue
    .line 102
    new-instance v0, Lcom/google/api/services/plusi/model/ItemScope;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/ItemScope;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/plusi/model/ItemScopeJson;->newInstance()Lcom/google/api/services/plusi/model/ItemScope;

    move-result-object v0

    return-object v0
.end method
