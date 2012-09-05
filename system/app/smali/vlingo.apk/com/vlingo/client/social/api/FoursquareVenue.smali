.class public Lcom/vlingo/client/social/api/FoursquareVenue;
.super Ljava/lang/Object;
.source "FoursquareVenue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vlingo/client/social/api/FoursquareVenue$1;,
        Lcom/vlingo/client/social/api/FoursquareVenue$FoursqaureVenueXmlHandler;
    }
.end annotation


# static fields
.field private static final XML_E_ADDRESS:I = 0x73

.field private static final XML_E_CITY:I = 0x74

.field private static final XML_E_DISTANCE:I = 0x72

.field private static final XML_E_GEOLAT:I = 0x6d

.field private static final XML_E_GEOLONG:I = 0x3fc

.field private static final XML_E_ICON_URL:I = 0x40a

.field private static final XML_E_ID:I = 0x66

.field private static final XML_E_NAME:I = 0x71

.field private static final XML_E_PHONE:I = 0x3e8

.field private static final XML_E_PRIMARY_CATEGORY:I = 0x409

.field private static final XML_E_STATE:I = 0x75

.field private static final XML_E_VENUE:I = 0x65

.field private static final XML_E_VENUES:I = 0x64

.field private static final XML_E_ZIP:I = 0x76


# instance fields
.field private venueBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    return-void
.end method

.method public static getVenues(Ljava/lang/String;)Ljava/util/Vector;
    .registers 10
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Vector",
            "<",
            "Lcom/vlingo/client/social/api/FoursquareVenue;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 72
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 73
    .local v1, chars:[C
    new-instance v4, Lcom/vlingo/client/social/api/FoursquareVenue$FoursqaureVenueXmlHandler;

    const/4 v3, 0x0

    invoke-direct {v4, v3}, Lcom/vlingo/client/social/api/FoursquareVenue$FoursqaureVenueXmlHandler;-><init>(Lcom/vlingo/client/social/api/FoursquareVenue$1;)V

    .line 74
    .local v4, handler:Lcom/vlingo/client/social/api/FoursquareVenue$FoursqaureVenueXmlHandler;
    new-instance v6, Lcom/vlingo/client/android/core/util/AndroidToIntHashtable;

    invoke-direct {v6}, Lcom/vlingo/client/android/core/util/AndroidToIntHashtable;-><init>()V

    .line 75
    .local v6, xmlAttributes:Lcom/vlingo/client/android/core/util/AndroidToIntHashtable;
    new-instance v5, Lcom/vlingo/client/android/core/util/AndroidToIntHashtable;

    invoke-direct {v5}, Lcom/vlingo/client/android/core/util/AndroidToIntHashtable;-><init>()V

    .line 77
    .local v5, xmlElements:Lcom/vlingo/client/android/core/util/AndroidToIntHashtable;
    const-string v3, "venues"

    const/16 v7, 0x64

    invoke-virtual {v5, v3, v7}, Lcom/vlingo/client/android/core/util/AndroidToIntHashtable;->put(Ljava/lang/Object;I)I

    .line 78
    const-string v3, "venue"

    const/16 v7, 0x65

    invoke-virtual {v5, v3, v7}, Lcom/vlingo/client/android/core/util/AndroidToIntHashtable;->put(Ljava/lang/Object;I)I

    .line 79
    const-string v3, "id"

    const/16 v7, 0x66

    invoke-virtual {v5, v3, v7}, Lcom/vlingo/client/android/core/util/AndroidToIntHashtable;->put(Ljava/lang/Object;I)I

    .line 80
    const-string v3, "name"

    const/16 v7, 0x71

    invoke-virtual {v5, v3, v7}, Lcom/vlingo/client/android/core/util/AndroidToIntHashtable;->put(Ljava/lang/Object;I)I

    .line 81
    const-string v3, "distance"

    const/16 v7, 0x72

    invoke-virtual {v5, v3, v7}, Lcom/vlingo/client/android/core/util/AndroidToIntHashtable;->put(Ljava/lang/Object;I)I

    .line 82
    const-string v3, "address"

    const/16 v7, 0x73

    invoke-virtual {v5, v3, v7}, Lcom/vlingo/client/android/core/util/AndroidToIntHashtable;->put(Ljava/lang/Object;I)I

    .line 83
    const-string v3, "city"

    const/16 v7, 0x74

    invoke-virtual {v5, v3, v7}, Lcom/vlingo/client/android/core/util/AndroidToIntHashtable;->put(Ljava/lang/Object;I)I

    .line 84
    const-string v3, "state"

    const/16 v7, 0x75

    invoke-virtual {v5, v3, v7}, Lcom/vlingo/client/android/core/util/AndroidToIntHashtable;->put(Ljava/lang/Object;I)I

    .line 85
    const-string v3, "zip"

    const/16 v7, 0x76

    invoke-virtual {v5, v3, v7}, Lcom/vlingo/client/android/core/util/AndroidToIntHashtable;->put(Ljava/lang/Object;I)I

    .line 86
    const-string v3, "geolat"

    const/16 v7, 0x6d

    invoke-virtual {v5, v3, v7}, Lcom/vlingo/client/android/core/util/AndroidToIntHashtable;->put(Ljava/lang/Object;I)I

    .line 87
    const-string v3, "geolong"

    const/16 v7, 0x3fc

    invoke-virtual {v5, v3, v7}, Lcom/vlingo/client/android/core/util/AndroidToIntHashtable;->put(Ljava/lang/Object;I)I

    .line 88
    const-string v3, "phone"

    const/16 v7, 0x3e8

    invoke-virtual {v5, v3, v7}, Lcom/vlingo/client/android/core/util/AndroidToIntHashtable;->put(Ljava/lang/Object;I)I

    .line 89
    const-string v3, "primarycategory"

    const/16 v7, 0x409

    invoke-virtual {v5, v3, v7}, Lcom/vlingo/client/android/core/util/AndroidToIntHashtable;->put(Ljava/lang/Object;I)I

    .line 90
    const-string v3, "iconurl"

    const/16 v7, 0x40a

    invoke-virtual {v5, v3, v7}, Lcom/vlingo/client/android/core/util/AndroidToIntHashtable;->put(Ljava/lang/Object;I)I

    .line 92
    new-instance v0, Lcom/vlingo/client/core/xml/XmlParser;

    array-length v3, v1

    const/4 v7, 0x1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Lcom/vlingo/client/core/xml/XmlParser;-><init>([CIILcom/vlingo/client/core/xml/XmlHandler;Lcom/vlingo/client/core/util/ToIntHashtable;Lcom/vlingo/client/core/util/ToIntHashtable;ZZ)V

    .line 93
    .local v0, parser:Lcom/vlingo/client/core/xml/XmlParser;
    invoke-virtual {v0}, Lcom/vlingo/client/core/xml/XmlParser;->parseXml()V

    .line 94
    invoke-virtual {v4}, Lcom/vlingo/client/social/api/FoursquareVenue$FoursqaureVenueXmlHandler;->getVenues()Ljava/util/Vector;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public declared-synchronized getVenuePicture()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 53
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/vlingo/client/social/api/FoursquareVenue;->venueBitmap:Landroid/graphics/Bitmap;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setVenuePicture(Landroid/graphics/Bitmap;)V
    .registers 3
    .parameter "bitmap"

    .prologue
    .line 57
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/vlingo/client/social/api/FoursquareVenue;->venueBitmap:Landroid/graphics/Bitmap;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 58
    monitor-exit p0

    return-void

    .line 57
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
