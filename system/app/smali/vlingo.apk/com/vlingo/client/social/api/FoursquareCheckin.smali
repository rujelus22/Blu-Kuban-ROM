.class public Lcom/vlingo/client/social/api/FoursquareCheckin;
.super Ljava/lang/Object;
.source "FoursquareCheckin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vlingo/client/social/api/FoursquareCheckin$1;,
        Lcom/vlingo/client/social/api/FoursquareCheckin$FoursqaureCheckinXmlHandler;
    }
.end annotation


# static fields
.field public static final MAX_CHECKIN_AGE_MS:I = 0x14997000

.field private static final XML_E_ADDRESS:I = 0x6f

.field private static final XML_E_CHECKIN:I = 0x66

.field private static final XML_E_CHECKINS:I = 0x65

.field private static final XML_E_CREATED:I = 0x76

.field private static final XML_E_CROSSSTREET:I = 0x70

.field private static final XML_E_DISPLAY:I = 0x74

.field private static final XML_E_DISTANCE:I = 0x73

.field private static final XML_E_FIRSTNAME:I = 0x69

.field private static final XML_E_GENDER:I = 0x6c

.field private static final XML_E_GEOLAT:I = 0x71

.field private static final XML_E_GEOLONG:I = 0x72

.field private static final XML_E_ID:I = 0x67

.field private static final XML_E_LASTNAME:I = 0x6a

.field private static final XML_E_NAME:I = 0x6e

.field private static final XML_E_PHOTO:I = 0x6b

.field private static final XML_E_SHOUT:I = 0x75

.field private static final XML_E_USER:I = 0x68

.field private static final XML_E_VENUE:I = 0x6d


# instance fields
.field public ageMs:J

.field public checkinID:Ljava/lang/String;

.field public created:Ljava/util/Date;

.field public display:Ljava/lang/String;

.field public distance:D

.field public relativeDate:Ljava/lang/String;

.field public shout:Ljava/lang/String;

.field private userBitmap:Landroid/graphics/Bitmap;

.field public userFirstname:Ljava/lang/String;

.field public userGender:Ljava/lang/String;

.field public userID:Ljava/lang/String;

.field public userLastname:Ljava/lang/String;

.field public userName:Ljava/lang/String;

.field public userPhotoURL:Ljava/lang/String;

.field public venueAddress:Ljava/lang/String;

.field public venueCrossStreet:Ljava/lang/String;

.field public venueID:Ljava/lang/String;

.field public venueLat:F

.field public venueLong:F

.field public venueName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    return-void
.end method

.method public static getCheckins(Ljava/lang/String;)Ljava/util/Vector;
    .registers 10
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Vector",
            "<",
            "Lcom/vlingo/client/social/api/FoursquareCheckin;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 92
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 93
    .local v1, chars:[C
    new-instance v4, Lcom/vlingo/client/social/api/FoursquareCheckin$FoursqaureCheckinXmlHandler;

    const/4 v3, 0x0

    invoke-direct {v4, v3}, Lcom/vlingo/client/social/api/FoursquareCheckin$FoursqaureCheckinXmlHandler;-><init>(Lcom/vlingo/client/social/api/FoursquareCheckin$1;)V

    .line 94
    .local v4, handler:Lcom/vlingo/client/social/api/FoursquareCheckin$FoursqaureCheckinXmlHandler;
    new-instance v6, Lcom/vlingo/client/android/core/util/AndroidToIntHashtable;

    invoke-direct {v6}, Lcom/vlingo/client/android/core/util/AndroidToIntHashtable;-><init>()V

    .line 95
    .local v6, xmlAttributes:Lcom/vlingo/client/android/core/util/AndroidToIntHashtable;
    new-instance v5, Lcom/vlingo/client/android/core/util/AndroidToIntHashtable;

    invoke-direct {v5}, Lcom/vlingo/client/android/core/util/AndroidToIntHashtable;-><init>()V

    .line 96
    .local v5, xmlElements:Lcom/vlingo/client/android/core/util/AndroidToIntHashtable;
    const-string v3, "checkins"

    const/16 v7, 0x65

    invoke-virtual {v5, v3, v7}, Lcom/vlingo/client/android/core/util/AndroidToIntHashtable;->put(Ljava/lang/Object;I)I

    .line 97
    const-string v3, "checkin"

    const/16 v7, 0x66

    invoke-virtual {v5, v3, v7}, Lcom/vlingo/client/android/core/util/AndroidToIntHashtable;->put(Ljava/lang/Object;I)I

    .line 98
    const-string v3, "user"

    const/16 v7, 0x68

    invoke-virtual {v5, v3, v7}, Lcom/vlingo/client/android/core/util/AndroidToIntHashtable;->put(Ljava/lang/Object;I)I

    .line 99
    const-string v3, "id"

    const/16 v7, 0x67

    invoke-virtual {v5, v3, v7}, Lcom/vlingo/client/android/core/util/AndroidToIntHashtable;->put(Ljava/lang/Object;I)I

    .line 100
    const-string v3, "firstname"

    const/16 v7, 0x69

    invoke-virtual {v5, v3, v7}, Lcom/vlingo/client/android/core/util/AndroidToIntHashtable;->put(Ljava/lang/Object;I)I

    .line 101
    const-string v3, "lastname"

    const/16 v7, 0x6a

    invoke-virtual {v5, v3, v7}, Lcom/vlingo/client/android/core/util/AndroidToIntHashtable;->put(Ljava/lang/Object;I)I

    .line 102
    const-string v3, "photo"

    const/16 v7, 0x6b

    invoke-virtual {v5, v3, v7}, Lcom/vlingo/client/android/core/util/AndroidToIntHashtable;->put(Ljava/lang/Object;I)I

    .line 103
    const-string v3, "gender"

    const/16 v7, 0x6c

    invoke-virtual {v5, v3, v7}, Lcom/vlingo/client/android/core/util/AndroidToIntHashtable;->put(Ljava/lang/Object;I)I

    .line 104
    const-string v3, "venue"

    const/16 v7, 0x6d

    invoke-virtual {v5, v3, v7}, Lcom/vlingo/client/android/core/util/AndroidToIntHashtable;->put(Ljava/lang/Object;I)I

    .line 105
    const-string v3, "name"

    const/16 v7, 0x6e

    invoke-virtual {v5, v3, v7}, Lcom/vlingo/client/android/core/util/AndroidToIntHashtable;->put(Ljava/lang/Object;I)I

    .line 106
    const-string v3, "address"

    const/16 v7, 0x6f

    invoke-virtual {v5, v3, v7}, Lcom/vlingo/client/android/core/util/AndroidToIntHashtable;->put(Ljava/lang/Object;I)I

    .line 107
    const-string v3, "crossstreet"

    const/16 v7, 0x70

    invoke-virtual {v5, v3, v7}, Lcom/vlingo/client/android/core/util/AndroidToIntHashtable;->put(Ljava/lang/Object;I)I

    .line 108
    const-string v3, "geolat"

    const/16 v7, 0x71

    invoke-virtual {v5, v3, v7}, Lcom/vlingo/client/android/core/util/AndroidToIntHashtable;->put(Ljava/lang/Object;I)I

    .line 109
    const-string v3, "geolong"

    const/16 v7, 0x72

    invoke-virtual {v5, v3, v7}, Lcom/vlingo/client/android/core/util/AndroidToIntHashtable;->put(Ljava/lang/Object;I)I

    .line 110
    const-string v3, "distance"

    const/16 v7, 0x73

    invoke-virtual {v5, v3, v7}, Lcom/vlingo/client/android/core/util/AndroidToIntHashtable;->put(Ljava/lang/Object;I)I

    .line 111
    const-string v3, "display"

    const/16 v7, 0x74

    invoke-virtual {v5, v3, v7}, Lcom/vlingo/client/android/core/util/AndroidToIntHashtable;->put(Ljava/lang/Object;I)I

    .line 112
    const-string v3, "shout"

    const/16 v7, 0x75

    invoke-virtual {v5, v3, v7}, Lcom/vlingo/client/android/core/util/AndroidToIntHashtable;->put(Ljava/lang/Object;I)I

    .line 113
    const-string v3, "created"

    const/16 v7, 0x76

    invoke-virtual {v5, v3, v7}, Lcom/vlingo/client/android/core/util/AndroidToIntHashtable;->put(Ljava/lang/Object;I)I

    .line 115
    new-instance v0, Lcom/vlingo/client/core/xml/XmlParser;

    array-length v3, v1

    const/4 v7, 0x1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Lcom/vlingo/client/core/xml/XmlParser;-><init>([CIILcom/vlingo/client/core/xml/XmlHandler;Lcom/vlingo/client/core/util/ToIntHashtable;Lcom/vlingo/client/core/util/ToIntHashtable;ZZ)V

    .line 116
    .local v0, parser:Lcom/vlingo/client/core/xml/XmlParser;
    invoke-virtual {v0}, Lcom/vlingo/client/core/xml/XmlParser;->parseXml()V

    .line 117
    invoke-virtual {v4}, Lcom/vlingo/client/social/api/FoursquareCheckin$FoursqaureCheckinXmlHandler;->getCheckins()Ljava/util/Vector;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public declared-synchronized getUserPicture()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 74
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/vlingo/client/social/api/FoursquareCheckin;->userBitmap:Landroid/graphics/Bitmap;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hasLocation()Z
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 82
    iget v0, p0, Lcom/vlingo/client/social/api/FoursquareCheckin;->venueLat:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_f

    iget v0, p0, Lcom/vlingo/client/social/api/FoursquareCheckin;->venueLong:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public declared-synchronized setUserPicture(Landroid/graphics/Bitmap;)V
    .registers 3
    .parameter "bitmap"

    .prologue
    .line 78
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/vlingo/client/social/api/FoursquareCheckin;->userBitmap:Landroid/graphics/Bitmap;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 79
    monitor-exit p0

    return-void

    .line 78
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
