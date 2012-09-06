.class public final Lcom/google/api/services/plusi/model/EmbedClientItemJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "EmbedClientItemJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/plusi/model/EmbedClientItem;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/plusi/model/EmbedClientItemJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/plusi/model/EmbedClientItemJson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/EmbedClientItemJson;-><init>()V

    sput-object v0, Lcom/google/api/services/plusi/model/EmbedClientItemJson;->INSTANCE:Lcom/google/api/services/plusi/model/EmbedClientItemJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/plusi/model/EmbedClientItem;

    const/16 v1, 0x6b

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-class v3, Lcom/google/api/services/plusi/model/EmbedsCommentJson;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "comment"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, Lcom/google/api/services/plusi/model/PlusEventJson;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "plusEvent"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-class v3, Lcom/google/api/services/plusi/model/EmbedsSquareJson;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "square"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-class v3, Lcom/google/api/services/plusi/model/PlayMusicAlbumJson;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "playMusicAlbum"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-class v3, Lcom/google/api/services/plusi/model/RatingJson;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "rating"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-class v3, Lcom/google/api/services/plusi/model/GoogleChartJson;

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "googleChart"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-class v3, Lcom/google/api/services/plusi/model/DocumentObjectJson;

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "documentObject"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-class v3, Lcom/google/api/services/plusi/model/FormObjectJson;

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "formObject"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "canonicalId"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-class v3, Lcom/google/api/services/plusi/model/AggregateRatingJson;

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "aggregateRating"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-class v3, Lcom/google/api/services/plusi/model/ExampleObjectJson;

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "exampleObject"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-class v3, Lcom/google/api/services/plusi/model/TvEpisodeJson;

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "tvEpisode"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-class v3, Lcom/google/api/services/plusi/model/ImageGalleryJson;

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "imageGallery"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-class v3, Lcom/google/api/services/plusi/model/CreativeWorkJson;

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string v3, "creativeWork"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-string v3, "id"

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    const-class v3, Lcom/google/api/services/plusi/model/GeoCoordinatesJson;

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    const-string v3, "geoCoordinates"

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    const-class v3, Lcom/google/api/services/plusi/model/AudioObjectJson;

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    const-string v3, "audioObject"

    aput-object v3, v1, v2

    const/16 v2, 0x20

    const-class v3, Lcom/google/api/services/plusi/model/PlaceReviewJson;

    aput-object v3, v1, v2

    const/16 v2, 0x21

    const-string v3, "placeReview"

    aput-object v3, v1, v2

    const/16 v2, 0x22

    const-class v3, Lcom/google/api/services/plusi/model/MusicRecordingJson;

    aput-object v3, v1, v2

    const/16 v2, 0x23

    const-string v3, "musicRecording"

    aput-object v3, v1, v2

    const/16 v2, 0x24

    const-class v3, Lcom/google/api/services/plusi/model/ThingJson;

    aput-object v3, v1, v2

    const/16 v2, 0x25

    const-string v3, "thing"

    aput-object v3, v1, v2

    const/16 v2, 0x26

    const-class v3, Lcom/google/api/services/plusi/model/WebPageJson;

    aput-object v3, v1, v2

    const/16 v2, 0x27

    const-string v3, "webPage"

    aput-object v3, v1, v2

    const/16 v2, 0x28

    const-class v3, Lcom/google/api/services/plusi/model/MovieJson;

    aput-object v3, v1, v2

    const/16 v2, 0x29

    const-string v3, "movie"

    aput-object v3, v1, v2

    const/16 v2, 0x2a

    const-class v3, Lcom/google/api/services/plusi/model/ReviewJson;

    aput-object v3, v1, v2

    const/16 v2, 0x2b

    const-string v3, "review"

    aput-object v3, v1, v2

    const/16 v2, 0x2c

    const-class v3, Lcom/google/api/services/plusi/model/MagazineJson;

    aput-object v3, v1, v2

    const/16 v2, 0x2d

    const-string v3, "magazine"

    aput-object v3, v1, v2

    const/16 v2, 0x2e

    const-class v3, Lcom/google/api/services/plusi/model/PlusPhotoAlbumJson;

    aput-object v3, v1, v2

    const/16 v2, 0x2f

    const-string v3, "plusPhotoAlbum"

    aput-object v3, v1, v2

    const/16 v2, 0x30

    const-class v3, Lcom/google/api/services/plusi/model/PlusPhotosAddedToCollectionJson;

    aput-object v3, v1, v2

    const/16 v2, 0x31

    const-string v3, "plusPhotosAddedToCollection"

    aput-object v3, v1, v2

    const/16 v2, 0x32

    const-class v3, Lcom/google/api/services/plusi/model/BookJson;

    aput-object v3, v1, v2

    const/16 v2, 0x33

    const-string v3, "book"

    aput-object v3, v1, v2

    const/16 v2, 0x34

    const-class v3, Lcom/google/api/services/plusi/model/MusicAlbumJson;

    aput-object v3, v1, v2

    const/16 v2, 0x35

    const-string v3, "musicAlbum"

    aput-object v3, v1, v2

    const/16 v2, 0x36

    const-class v3, Lcom/google/api/services/plusi/model/PlusPhotoJson;

    aput-object v3, v1, v2

    const/16 v2, 0x37

    const-string v3, "plusPhoto"

    aput-object v3, v1, v2

    const/16 v2, 0x38

    const-class v3, Lcom/google/api/services/plusi/model/MobileApplicationJson;

    aput-object v3, v1, v2

    const/16 v2, 0x39

    const-string v3, "mobileApplication"

    aput-object v3, v1, v2

    const/16 v2, 0x3a

    const-class v3, Lcom/google/api/services/plusi/model/EmbedsPostalAddressJson;

    aput-object v3, v1, v2

    const/16 v2, 0x3b

    const-string v3, "postalAddress"

    aput-object v3, v1, v2

    const/16 v2, 0x3c

    const-string v3, "type"

    aput-object v3, v1, v2

    const/16 v2, 0x3d

    const-class v3, Lcom/google/api/services/plusi/model/FileObjectJson;

    aput-object v3, v1, v2

    const/16 v2, 0x3e

    const-string v3, "fileObject"

    aput-object v3, v1, v2

    const/16 v2, 0x3f

    const-class v3, Lcom/google/api/services/plusi/model/HangoutConsumerJson;

    aput-object v3, v1, v2

    const/16 v2, 0x40

    const-string v3, "hangoutConsumer"

    aput-object v3, v1, v2

    const/16 v2, 0x41

    const-class v3, Lcom/google/api/services/plusi/model/OfferJson;

    aput-object v3, v1, v2

    const/16 v2, 0x42

    const-string v3, "offer"

    aput-object v3, v1, v2

    const/16 v2, 0x43

    const-class v3, Lcom/google/api/services/plusi/model/CheckinJson;

    aput-object v3, v1, v2

    const/16 v2, 0x44

    const-string v3, "checkin"

    aput-object v3, v1, v2

    const/16 v2, 0x45

    const-class v3, Lcom/google/api/services/plusi/model/SpreadsheetObjectJson;

    aput-object v3, v1, v2

    const/16 v2, 0x46

    const-string v3, "spreadsheetObject"

    aput-object v3, v1, v2

    const/16 v2, 0x47

    const-class v3, Lcom/google/api/services/plusi/model/ImageObjectJson;

    aput-object v3, v1, v2

    const/16 v2, 0x48

    const-string v3, "imageObject"

    aput-object v3, v1, v2

    const/16 v2, 0x49

    const-class v3, Lcom/google/api/services/plusi/model/RecommendedPeopleJson;

    aput-object v3, v1, v2

    const/16 v2, 0x4a

    const-string v3, "recommendedPeople"

    aput-object v3, v1, v2

    const/16 v2, 0x4b

    const-class v3, Lcom/google/api/services/plusi/model/MusicGroupJson;

    aput-object v3, v1, v2

    const/16 v2, 0x4c

    const-string v3, "musicGroup"

    aput-object v3, v1, v2

    const/16 v2, 0x4d

    const-class v3, Lcom/google/api/services/plusi/model/TvSeriesJson;

    aput-object v3, v1, v2

    const/16 v2, 0x4e

    const-string v3, "tvSeries"

    aput-object v3, v1, v2

    const/16 v2, 0x4f

    const-class v3, Lcom/google/api/services/plusi/model/ReservationJson;

    aput-object v3, v1, v2

    const/16 v2, 0x50

    const-string v3, "reservation"

    aput-object v3, v1, v2

    const/16 v2, 0x51

    const-class v3, Lcom/google/api/services/plusi/model/HangoutBroadcastJson;

    aput-object v3, v1, v2

    const/16 v2, 0x52

    const-string v3, "hangoutBroadcast"

    aput-object v3, v1, v2

    const/16 v2, 0x53

    const-class v3, Lcom/google/api/services/plusi/model/ProductReviewJson;

    aput-object v3, v1, v2

    const/16 v2, 0x54

    const-string v3, "productReview"

    aput-object v3, v1, v2

    const/16 v2, 0x55

    const-class v3, Lcom/google/api/services/plusi/model/PlusPageJson;

    aput-object v3, v1, v2

    const/16 v2, 0x56

    const-string v3, "plusPage"

    aput-object v3, v1, v2

    const/16 v2, 0x57

    const-class v3, Lcom/google/api/services/plusi/model/VideoObjectJson;

    aput-object v3, v1, v2

    const/16 v2, 0x58

    const-string v3, "videoObject"

    aput-object v3, v1, v2

    const/16 v2, 0x59

    const-class v3, Lcom/google/api/services/plusi/model/PlayMusicTrackJson;

    aput-object v3, v1, v2

    const/16 v2, 0x5a

    const-string v3, "playMusicTrack"

    aput-object v3, v1, v2

    const/16 v2, 0x5b

    const-class v3, Lcom/google/api/services/plusi/model/DrawingObjectJson;

    aput-object v3, v1, v2

    const/16 v2, 0x5c

    const-string v3, "drawingObject"

    aput-object v3, v1, v2

    const/16 v2, 0x5d

    const-class v3, Lcom/google/api/services/plusi/model/PresentationObjectJson;

    aput-object v3, v1, v2

    const/16 v2, 0x5e

    const-string v3, "presentationObject"

    aput-object v3, v1, v2

    const/16 v2, 0x5f

    const-class v3, Lcom/google/api/services/plusi/model/EmbedsPersonJson;

    aput-object v3, v1, v2

    const/16 v2, 0x60

    const-string v3, "person"

    aput-object v3, v1, v2

    const/16 v2, 0x61

    const-class v3, Lcom/google/api/services/plusi/model/LocalBusinessJson;

    aput-object v3, v1, v2

    const/16 v2, 0x62

    const-string v3, "localBusiness"

    aput-object v3, v1, v2

    const/16 v2, 0x63

    const-class v3, Lcom/google/api/services/plusi/model/PlaceJson;

    aput-object v3, v1, v2

    const/16 v2, 0x64

    const-string v3, "place"

    aput-object v3, v1, v2

    const/16 v2, 0x65

    const-class v3, Lcom/google/api/services/plusi/model/FinancialQuoteJson;

    aput-object v3, v1, v2

    const/16 v2, 0x66

    const-string v3, "financialQuote"

    aput-object v3, v1, v2

    const/16 v2, 0x67

    const-class v3, Lcom/google/api/services/plusi/model/TourObjectJson;

    aput-object v3, v1, v2

    const/16 v2, 0x68

    const-string v3, "tourObject"

    aput-object v3, v1, v2

    const/16 v2, 0x69

    const-class v3, Lcom/google/api/services/plusi/model/TravelEventJson;

    aput-object v3, v1, v2

    const/16 v2, 0x6a

    const-string v3, "travelEvent"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 77
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/plusi/model/EmbedClientItemJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/plusi/model/EmbedClientItemJson;->INSTANCE:Lcom/google/api/services/plusi/model/EmbedClientItemJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/plusi/model/EmbedClientItem;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 86
    const/16 v0, 0x37

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/plusi/model/EmbedClientItem;->comment:Lcom/google/api/services/plusi/model/EmbedsComment;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/api/services/plusi/model/EmbedClientItem;->plusEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/google/api/services/plusi/model/EmbedClientItem;->square:Lcom/google/api/services/plusi/model/EmbedsSquare;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/google/api/services/plusi/model/EmbedClientItem;->playMusicAlbum:Lcom/google/api/services/plusi/model/PlayMusicAlbum;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p1, Lcom/google/api/services/plusi/model/EmbedClientItem;->rating:Lcom/google/api/services/plusi/model/Rating;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/google/api/services/plusi/model/EmbedClientItem;->googleChart:Lcom/google/api/services/plusi/model/GoogleChart;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p1, Lcom/google/api/services/plusi/model/EmbedClientItem;->documentObject:Lcom/google/api/services/plusi/model/DocumentObject;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p1, Lcom/google/api/services/plusi/model/EmbedClientItem;->formObject:Lcom/google/api/services/plusi/model/FormObject;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p1, Lcom/google/api/services/plusi/model/EmbedClientItem;->canonicalId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p1, Lcom/google/api/services/plusi/model/EmbedClientItem;->aggregateRating:Lcom/google/api/services/plusi/model/AggregateRating;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    iget-object v2, p1, Lcom/google/api/services/plusi/model/EmbedClientItem;->exampleObject:Lcom/google/api/services/plusi/model/ExampleObject;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    iget-object v2, p1, Lcom/google/api/services/plusi/model/EmbedClientItem;->tvEpisode:Lcom/google/api/services/plusi/model/TvEpisode;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    iget-object v2, p1, Lcom/google/api/services/plusi/model/EmbedClientItem;->imageGallery:Lcom/google/api/services/plusi/model/ImageGallery;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    iget-object v2, p1, Lcom/google/api/services/plusi/model/EmbedClientItem;->creativeWork:Lcom/google/api/services/plusi/model/CreativeWork;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    iget-object v2, p1, Lcom/google/api/services/plusi/model/EmbedClientItem;->id:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    iget-object v2, p1, Lcom/google/api/services/plusi/model/EmbedClientItem;->geoCoordinates:Lcom/google/api/services/plusi/model/GeoCoordinates;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    iget-object v2, p1, Lcom/google/api/services/plusi/model/EmbedClientItem;->audioObject:Lcom/google/api/services/plusi/model/AudioObject;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    iget-object v2, p1, Lcom/google/api/services/plusi/model/EmbedClientItem;->placeReview:Lcom/google/api/services/plusi/model/PlaceReview;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    iget-object v2, p1, Lcom/google/api/services/plusi/model/EmbedClientItem;->musicRecording:Lcom/google/api/services/plusi/model/MusicRecording;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    iget-object v2, p1, Lcom/google/api/services/plusi/model/EmbedClientItem;->thing:Lcom/google/api/services/plusi/model/Thing;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    iget-object v2, p1, Lcom/google/api/services/plusi/model/EmbedClientItem;->webPage:Lcom/google/api/services/plusi/model/WebPage;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    iget-object v2, p1, Lcom/google/api/services/plusi/model/EmbedClientItem;->movie:Lcom/google/api/services/plusi/model/Movie;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    iget-object v2, p1, Lcom/google/api/services/plusi/model/EmbedClientItem;->review:Lcom/google/api/services/plusi/model/Review;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    iget-object v2, p1, Lcom/google/api/services/plusi/model/EmbedClientItem;->magazine:Lcom/google/api/services/plusi/model/Magazine;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    iget-object v2, p1, Lcom/google/api/services/plusi/model/EmbedClientItem;->plusPhotoAlbum:Lcom/google/api/services/plusi/model/PlusPhotoAlbum;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    iget-object v2, p1, Lcom/google/api/services/plusi/model/EmbedClientItem;->plusPhotosAddedToCollection:Lcom/google/api/services/plusi/model/PlusPhotosAddedToCollection;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    iget-object v2, p1, Lcom/google/api/services/plusi/model/EmbedClientItem;->book:Lcom/google/api/services/plusi/model/Book;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    iget-object v2, p1, Lcom/google/api/services/plusi/model/EmbedClientItem;->musicAlbum:Lcom/google/api/services/plusi/model/MusicAlbum;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    iget-object v2, p1, Lcom/google/api/services/plusi/model/EmbedClientItem;->plusPhoto:Lcom/google/api/services/plusi/model/PlusPhoto;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    iget-object v2, p1, Lcom/google/api/services/plusi/model/EmbedClientItem;->mobileApplication:Lcom/google/api/services/plusi/model/MobileApplication;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    iget-object v2, p1, Lcom/google/api/services/plusi/model/EmbedClientItem;->postalAddress:Lcom/google/api/services/plusi/model/EmbedsPostalAddress;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    iget-object v2, p1, Lcom/google/api/services/plusi/model/EmbedClientItem;->type:Ljava/util/List;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    iget-object v2, p1, Lcom/google/api/services/plusi/model/EmbedClientItem;->fileObject:Lcom/google/api/services/plusi/model/FileObject;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    iget-object v2, p1, Lcom/google/api/services/plusi/model/EmbedClientItem;->hangoutConsumer:Lcom/google/api/services/plusi/model/HangoutConsumer;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    iget-object v2, p1, Lcom/google/api/services/plusi/model/EmbedClientItem;->offer:Lcom/google/api/services/plusi/model/Offer;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    iget-object v2, p1, Lcom/google/api/services/plusi/model/EmbedClientItem;->checkin:Lcom/google/api/services/plusi/model/Checkin;

    aput-object v2, v0, v1

    const/16 v1, 0x24

    iget-object v2, p1, Lcom/google/api/services/plusi/model/EmbedClientItem;->spreadsheetObject:Lcom/google/api/services/plusi/model/SpreadsheetObject;

    aput-object v2, v0, v1

    const/16 v1, 0x25

    iget-object v2, p1, Lcom/google/api/services/plusi/model/EmbedClientItem;->imageObject:Lcom/google/api/services/plusi/model/ImageObject;

    aput-object v2, v0, v1

    const/16 v1, 0x26

    iget-object v2, p1, Lcom/google/api/services/plusi/model/EmbedClientItem;->recommendedPeople:Lcom/google/api/services/plusi/model/RecommendedPeople;

    aput-object v2, v0, v1

    const/16 v1, 0x27

    iget-object v2, p1, Lcom/google/api/services/plusi/model/EmbedClientItem;->musicGroup:Lcom/google/api/services/plusi/model/MusicGroup;

    aput-object v2, v0, v1

    const/16 v1, 0x28

    iget-object v2, p1, Lcom/google/api/services/plusi/model/EmbedClientItem;->tvSeries:Lcom/google/api/services/plusi/model/TvSeries;

    aput-object v2, v0, v1

    const/16 v1, 0x29

    iget-object v2, p1, Lcom/google/api/services/plusi/model/EmbedClientItem;->reservation:Lcom/google/api/services/plusi/model/Reservation;

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    iget-object v2, p1, Lcom/google/api/services/plusi/model/EmbedClientItem;->hangoutBroadcast:Lcom/google/api/services/plusi/model/HangoutBroadcast;

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    iget-object v2, p1, Lcom/google/api/services/plusi/model/EmbedClientItem;->productReview:Lcom/google/api/services/plusi/model/ProductReview;

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    iget-object v2, p1, Lcom/google/api/services/plusi/model/EmbedClientItem;->plusPage:Lcom/google/api/services/plusi/model/PlusPage;

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    iget-object v2, p1, Lcom/google/api/services/plusi/model/EmbedClientItem;->videoObject:Lcom/google/api/services/plusi/model/VideoObject;

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    iget-object v2, p1, Lcom/google/api/services/plusi/model/EmbedClientItem;->playMusicTrack:Lcom/google/api/services/plusi/model/PlayMusicTrack;

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    iget-object v2, p1, Lcom/google/api/services/plusi/model/EmbedClientItem;->drawingObject:Lcom/google/api/services/plusi/model/DrawingObject;

    aput-object v2, v0, v1

    const/16 v1, 0x30

    iget-object v2, p1, Lcom/google/api/services/plusi/model/EmbedClientItem;->presentationObject:Lcom/google/api/services/plusi/model/PresentationObject;

    aput-object v2, v0, v1

    const/16 v1, 0x31

    iget-object v2, p1, Lcom/google/api/services/plusi/model/EmbedClientItem;->person:Lcom/google/api/services/plusi/model/EmbedsPerson;

    aput-object v2, v0, v1

    const/16 v1, 0x32

    iget-object v2, p1, Lcom/google/api/services/plusi/model/EmbedClientItem;->localBusiness:Lcom/google/api/services/plusi/model/LocalBusiness;

    aput-object v2, v0, v1

    const/16 v1, 0x33

    iget-object v2, p1, Lcom/google/api/services/plusi/model/EmbedClientItem;->place:Lcom/google/api/services/plusi/model/Place;

    aput-object v2, v0, v1

    const/16 v1, 0x34

    iget-object v2, p1, Lcom/google/api/services/plusi/model/EmbedClientItem;->financialQuote:Lcom/google/api/services/plusi/model/FinancialQuote;

    aput-object v2, v0, v1

    const/16 v1, 0x35

    iget-object v2, p1, Lcom/google/api/services/plusi/model/EmbedClientItem;->tourObject:Lcom/google/api/services/plusi/model/TourObject;

    aput-object v2, v0, v1

    const/16 v1, 0x36

    iget-object v2, p1, Lcom/google/api/services/plusi/model/EmbedClientItem;->travelEvent:Lcom/google/api/services/plusi/model/TravelEvent;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/plusi/model/EmbedClientItem;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/plusi/model/EmbedClientItemJson;->getValues(Lcom/google/api/services/plusi/model/EmbedClientItem;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/plusi/model/EmbedClientItem;
    .registers 2

    .prologue
    .line 81
    new-instance v0, Lcom/google/api/services/plusi/model/EmbedClientItem;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/EmbedClientItem;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/plusi/model/EmbedClientItemJson;->newInstance()Lcom/google/api/services/plusi/model/EmbedClientItem;

    move-result-object v0

    return-object v0
.end method
