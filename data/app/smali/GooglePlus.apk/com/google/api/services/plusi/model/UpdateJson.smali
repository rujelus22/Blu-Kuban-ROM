.class public final Lcom/google/api/services/plusi/model/UpdateJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "UpdateJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/plusi/model/Update;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/plusi/model/UpdateJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/plusi/model/UpdateJson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/UpdateJson;-><init>()V

    sput-object v0, Lcom/google/api/services/plusi/model/UpdateJson;->INSTANCE:Lcom/google/api/services/plusi/model/UpdateJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/plusi/model/Update;

    const/16 v1, 0x94

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-class v3, Lcom/google/api/services/plusi/model/PersonJson;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "sharedFromOriginalAuthor"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "isBumping"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "messageType"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "recommendationReason"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "numPendingTags"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-class v3, Lcom/google/api/services/plusi/model/CommentGroupJson;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "commentDetails"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-class v3, Lcom/google/api/services/plusi/model/GadgetsDataJson;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "gadgetsData"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "obfuscatedEmbedOwnerId"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-class v3, Lcom/google/api/services/plusi/model/CommentGroupJson;

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "oldCollapsedComments"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "title"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-class v3, Lcom/google/api/services/plusi/model/ViewSegmentsJson;

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "titleSegments"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-class v3, Lcom/google/api/services/plusi/model/LocationJson;

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "location"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "authorProfileUrl"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "sharedFromPostUrl"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "isStrangerPost"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "commentsInModerationCount"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    sget-object v3, Lcom/google/api/services/plusi/model/UpdateJson;->JSON_STRING:Ljava/lang/Object;

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "timestamp"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "isPrivateToLatitudeFriends"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string v3, "isInvolvedUser"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    sget-object v3, Lcom/google/api/services/plusi/model/UpdateJson;->JSON_STRING:Ljava/lang/Object;

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-string v3, "lastReadTimeUsec"

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    const-string v3, "numPendingTagsOfViewer"

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    const-class v3, Lcom/google/api/services/plusi/model/PersonJson;

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    const-string v3, "sharedFromAuthor"

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    const-string v3, "isSharedFromPublicPost"

    aput-object v3, v1, v2

    const/16 v2, 0x20

    const-string v3, "debug"

    aput-object v3, v1, v2

    const/16 v2, 0x21

    const-string v3, "collapsedTitle"

    aput-object v3, v1, v2

    const/16 v2, 0x22

    sget-object v3, Lcom/google/api/services/plusi/model/UpdateJson;->JSON_STRING:Ljava/lang/Object;

    aput-object v3, v1, v2

    const/16 v2, 0x23

    const-string v3, "page"

    aput-object v3, v1, v2

    const/16 v2, 0x24

    const-string v3, "hypothesizedInterest"

    aput-object v3, v1, v2

    const/16 v2, 0x25

    const-string v3, "isMutedByAuthor"

    aput-object v3, v1, v2

    const/16 v2, 0x26

    const-string v3, "photoUrl"

    aput-object v3, v1, v2

    const/16 v2, 0x27

    sget-object v3, Lcom/google/api/services/plusi/model/UpdateJson;->JSON_STRING:Ljava/lang/Object;

    aput-object v3, v1, v2

    const/16 v2, 0x28

    const-string v3, "audienceSize"

    aput-object v3, v1, v2

    const/16 v2, 0x29

    const-string v3, "isCheckin"

    aput-object v3, v1, v2

    const/16 v2, 0x2a

    const-string v3, "numTagsOfViewer"

    aput-object v3, v1, v2

    const/16 v2, 0x2b

    const-string v3, "isLocationWithoutContent"

    aput-object v3, v1, v2

    const/16 v2, 0x2c

    const-class v3, Lcom/google/api/services/plusi/model/EditSegmentsJson;

    aput-object v3, v1, v2

    const/16 v2, 0x2d

    const-string v3, "originalAnnotationSegments"

    aput-object v3, v1, v2

    const/16 v2, 0x2e

    const-class v3, Lcom/google/api/services/plusi/model/SystemPostDataJson;

    aput-object v3, v1, v2

    const/16 v2, 0x2f

    const-string v3, "systemPostData"

    aput-object v3, v1, v2

    const/16 v2, 0x30

    const-class v3, Lcom/google/api/services/plusi/model/RelativeDateInfoJson;

    aput-object v3, v1, v2

    const/16 v2, 0x31

    const-string v3, "relativeDateInfo"

    aput-object v3, v1, v2

    const/16 v2, 0x32

    const-string v3, "isSearchResult"

    aput-object v3, v1, v2

    const/16 v2, 0x33

    const-class v3, Lcom/google/api/services/plusi/model/DataPlusOneJson;

    aput-object v3, v1, v2

    const/16 v2, 0x34

    const-string v3, "plusone"

    aput-object v3, v1, v2

    const/16 v2, 0x35

    const-string v3, "groupNameDeprecated"

    aput-object v3, v1, v2

    const/16 v2, 0x36

    const-string v3, "obfuscatedId"

    aput-object v3, v1, v2

    const/16 v2, 0x37

    const-class v3, Lcom/google/api/services/plusi/model/InterestUpdateJson;

    aput-object v3, v1, v2

    const/16 v2, 0x38

    const-string v3, "interestUpdate"

    aput-object v3, v1, v2

    const/16 v2, 0x39

    const-string v3, "itemCategory"

    aput-object v3, v1, v2

    const/16 v2, 0x3a

    const-class v3, Lcom/google/api/services/plusi/model/UpdateMetadataJson;

    aput-object v3, v1, v2

    const/16 v2, 0x3b

    const-string v3, "metadata"

    aput-object v3, v1, v2

    const/16 v2, 0x3c

    const-string v3, "body"

    aput-object v3, v1, v2

    const/16 v2, 0x3d

    const-string v3, "isPlusoneAble"

    aput-object v3, v1, v2

    const/16 v2, 0x3e

    const-string v3, "openSocialDomain"

    aput-object v3, v1, v2

    const/16 v2, 0x3f

    const-string v3, "permalinkUrl"

    aput-object v3, v1, v2

    const/16 v2, 0x40

    const-string v3, "isSharedWithExtendedNetwork"

    aput-object v3, v1, v2

    const/16 v2, 0x41

    const-class v3, Lcom/google/api/services/plusi/model/PersonJson;

    aput-object v3, v1, v2

    const/16 v2, 0x42

    const-string v3, "facePileUser"

    aput-object v3, v1, v2

    const/16 v2, 0x43

    const-string v3, "activityToReshare"

    aput-object v3, v1, v2

    const/16 v2, 0x44

    const-class v3, Lcom/google/api/services/plusi/model/EditSegmentsJson;

    aput-object v3, v1, v2

    const/16 v2, 0x45

    const-string v3, "originalTitleSegments"

    aput-object v3, v1, v2

    const/16 v2, 0x46

    const-string v3, "faviconUrl"

    aput-object v3, v1, v2

    const/16 v2, 0x47

    const-string v3, "isLikedByViewer"

    aput-object v3, v1, v2

    const/16 v2, 0x48

    const-string v3, "collapsedBody"

    aput-object v3, v1, v2

    const/16 v2, 0x49

    const-string v3, "globalScore"

    aput-object v3, v1, v2

    const/16 v2, 0x4a

    const-class v3, Lcom/google/api/services/plusi/model/SquareUpdateJson;

    aput-object v3, v1, v2

    const/16 v2, 0x4b

    const-string v3, "squareUpdate"

    aput-object v3, v1, v2

    const/16 v2, 0x4c

    const-string v3, "isVisibilityInspectorDisabled"

    aput-object v3, v1, v2

    const/16 v2, 0x4d

    const-class v3, Lcom/google/api/services/plusi/model/PlaceJson;

    aput-object v3, v1, v2

    const/16 v2, 0x4e

    const-string v3, "place"

    aput-object v3, v1, v2

    const/16 v2, 0x4f

    const-class v3, Lcom/google/api/services/plusi/model/CommentJson;

    aput-object v3, v1, v2

    const/16 v2, 0x50

    const-string v3, "comment"

    aput-object v3, v1, v2

    const/16 v2, 0x51

    sget-object v3, Lcom/google/api/services/plusi/model/UpdateJson;->JSON_STRING:Ljava/lang/Object;

    aput-object v3, v1, v2

    const/16 v2, 0x52

    const-string v3, "sortingTimestamp"

    aput-object v3, v1, v2

    const/16 v2, 0x53

    const-string v3, "originalItemId"

    aput-object v3, v1, v2

    const/16 v2, 0x54

    const-string v3, "isSharedToGroup"

    aput-object v3, v1, v2

    const/16 v2, 0x55

    const-string v3, "originalReshareCount"

    aput-object v3, v1, v2

    const/16 v2, 0x56

    const-string v3, "isViewerFollowing"

    aput-object v3, v1, v2

    const/16 v2, 0x57

    const-string v3, "humanReadableTimestamp"

    aput-object v3, v1, v2

    const/16 v2, 0x58

    const-string v3, "isMute"

    aput-object v3, v1, v2

    const/16 v2, 0x59

    const-class v3, Lcom/google/api/services/plusi/model/ViewSegmentsJson;

    aput-object v3, v1, v2

    const/16 v2, 0x5a

    const-string v3, "collapsedTitleSegments"

    aput-object v3, v1, v2

    const/16 v2, 0x5b

    const-string v3, "textTitle"

    aput-object v3, v1, v2

    const/16 v2, 0x5c

    const-string v3, "isRestrictedToDomain"

    aput-object v3, v1, v2

    const/16 v2, 0x5d

    const-string v3, "originalPosition"

    aput-object v3, v1, v2

    const/16 v2, 0x5e

    const-string v3, "isHidden"

    aput-object v3, v1, v2

    const/16 v2, 0x5f

    const-string v3, "sourceUrl"

    aput-object v3, v1, v2

    const/16 v2, 0x60

    const-class v3, Lcom/google/api/services/plusi/model/ViewSegmentsJson;

    aput-object v3, v1, v2

    const/16 v2, 0x61

    const-string v3, "annotationSegments"

    aput-object v3, v1, v2

    const/16 v2, 0x62

    const-class v3, Lcom/google/api/services/plusi/model/ExplanationJson;

    aput-object v3, v1, v2

    const/16 v2, 0x63

    const-string v3, "explanation"

    aput-object v3, v1, v2

    const/16 v2, 0x64

    const-string v3, "canViewerShare"

    aput-object v3, v1, v2

    const/16 v2, 0x65

    const-string v3, "updateId"

    aput-object v3, v1, v2

    const/16 v2, 0x66

    const-class v3, Lcom/google/api/services/plusi/model/EmbedClientItemJson;

    aput-object v3, v1, v2

    const/16 v2, 0x67

    const-string v3, "embed"

    aput-object v3, v1, v2

    const/16 v2, 0x68

    const-string v3, "totalCommentCount"

    aput-object v3, v1, v2

    const/16 v2, 0x69

    const-string v3, "originalAnnotation"

    aput-object v3, v1, v2

    const/16 v2, 0x6a

    const-string v3, "isFollowing"

    aput-object v3, v1, v2

    const/16 v2, 0x6b

    const-string v3, "isPrivateToChatContacts"

    aput-object v3, v1, v2

    const/16 v2, 0x6c

    sget-object v3, Lcom/google/api/services/plusi/model/UpdateJson;->JSON_STRING:Ljava/lang/Object;

    aput-object v3, v1, v2

    const/16 v2, 0x6d

    const-string v3, "displayedTimestampMillis"

    aput-object v3, v1, v2

    const/16 v2, 0x6e

    const-string v3, "personalizedScore"

    aput-object v3, v1, v2

    const/16 v2, 0x6f

    sget-object v3, Lcom/google/api/services/plusi/model/UpdateJson;->JSON_STRING:Ljava/lang/Object;

    aput-object v3, v1, v2

    const/16 v2, 0x70

    const-string v3, "updatedTimestampUsec"

    aput-object v3, v1, v2

    const/16 v2, 0x71

    const-string v3, "canViewerComment"

    aput-object v3, v1, v2

    const/16 v2, 0x72

    const-class v3, Lcom/google/api/services/plusi/model/DomainDataJson;

    aput-object v3, v1, v2

    const/16 v2, 0x73

    const-string v3, "restrictedDomainData"

    aput-object v3, v1, v2

    const/16 v2, 0x74

    const-string v3, "media"

    aput-object v3, v1, v2

    const/16 v2, 0x75

    const-string v3, "perfectStreamDebug"

    aput-object v3, v1, v2

    const/16 v2, 0x76

    const-class v3, Lcom/google/api/services/plusi/model/SourceFeedJson;

    aput-object v3, v1, v2

    const/16 v2, 0x77

    const-string v3, "sourceFeed"

    aput-object v3, v1, v2

    const/16 v2, 0x78

    const-string v3, "authorEmail"

    aput-object v3, v1, v2

    const/16 v2, 0x79

    const-string v3, "authorName"

    aput-object v3, v1, v2

    const/16 v2, 0x7a

    const-string v3, "isOwnedByViewer"

    aput-object v3, v1, v2

    const/16 v2, 0x7b

    const-string v3, "hasEverBeenRead"

    aput-object v3, v1, v2

    const/16 v2, 0x7c

    const-class v3, Lcom/google/api/services/plusi/model/MediaLayoutJson;

    aput-object v3, v1, v2

    const/16 v2, 0x7d

    const-string v3, "mediaLayout"

    aput-object v3, v1, v2

    const/16 v2, 0x7e

    const-string v3, "isPublic"

    aput-object v3, v1, v2

    const/16 v2, 0x7f

    const-string v3, "isOwnerless"

    aput-object v3, v1, v2

    const/16 v2, 0x80

    const-string v3, "sourceStreamId"

    aput-object v3, v1, v2

    const/16 v2, 0x81

    const-string v3, "originalTitle"

    aput-object v3, v1, v2

    const/16 v2, 0x82

    const-string v3, "albumId"

    aput-object v3, v1, v2

    const/16 v2, 0x83

    const-string v3, "isRead"

    aput-object v3, v1, v2

    const/16 v2, 0x84

    const-class v3, Lcom/google/api/services/plusi/model/PersonJson;

    aput-object v3, v1, v2

    const/16 v2, 0x85

    const-string v3, "resharingUser"

    aput-object v3, v1, v2

    const/16 v2, 0x86

    const-string v3, "annotation"

    aput-object v3, v1, v2

    const/16 v2, 0x87

    const-class v3, Lcom/google/api/services/plusi/model/PersonJson;

    aput-object v3, v1, v2

    const/16 v2, 0x88

    const-string v3, "taggedUser"

    aput-object v3, v1, v2

    const/16 v2, 0x89

    const-string v3, "sharedFromItemId"

    aput-object v3, v1, v2

    const/16 v2, 0x8a

    const-string v3, "recommendationSourceType"

    aput-object v3, v1, v2

    const/16 v2, 0x8b

    const-string v3, "originalUrl"

    aput-object v3, v1, v2

    const/16 v2, 0x8c

    const-class v3, Lcom/google/api/services/plusi/model/PersonJson;

    aput-object v3, v1, v2

    const/16 v2, 0x8d

    const-string v3, "likingUser"

    aput-object v3, v1, v2

    const/16 v2, 0x8e

    const-string v3, "sourceStreamName"

    aput-object v3, v1, v2

    const/16 v2, 0x8f

    const-class v3, Lcom/google/api/services/plusi/model/UpdateJson;

    aput-object v3, v1, v2

    const/16 v2, 0x90

    const-string v3, "relatedUpdate"

    aput-object v3, v1, v2

    const/16 v2, 0x91

    const-string v3, "sharedToItemId"

    aput-object v3, v1, v2

    const/16 v2, 0x92

    const-class v3, Lcom/google/api/services/plusi/model/CommentGroupJson;

    aput-object v3, v1, v2

    const/16 v2, 0x93

    const-string v3, "newCollapsedComments"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 133
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/plusi/model/UpdateJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/plusi/model/UpdateJson;->INSTANCE:Lcom/google/api/services/plusi/model/UpdateJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/plusi/model/Update;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 142
    const/16 v0, 0x6f

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Update;->sharedFromOriginalAuthor:Lcom/google/api/services/plusi/model/Person;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Update;->isBumping:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Update;->messageType:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Update;->recommendationReason:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Update;->numPendingTags:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Update;->commentDetails:Lcom/google/api/services/plusi/model/CommentGroup;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Update;->gadgetsData:Lcom/google/api/services/plusi/model/GadgetsData;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Update;->obfuscatedEmbedOwnerId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Update;->oldCollapsedComments:Lcom/google/api/services/plusi/model/CommentGroup;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Update;->title:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Update;->titleSegments:Lcom/google/api/services/plusi/model/ViewSegments;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Update;->location:Lcom/google/api/services/plusi/model/Location;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Update;->authorProfileUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Update;->sharedFromPostUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Update;->isStrangerPost:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Update;->commentsInModerationCount:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Update;->timestamp:Ljava/lang/Long;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Update;->isPrivateToLatitudeFriends:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Update;->isInvolvedUser:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Update;->lastReadTimeUsec:Ljava/lang/Long;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Update;->numPendingTagsOfViewer:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Update;->sharedFromAuthor:Lcom/google/api/services/plusi/model/Person;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Update;->isSharedFromPublicPost:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Update;->debug:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Update;->collapsedTitle:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Update;->page:Ljava/lang/Long;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Update;->hypothesizedInterest:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Update;->isMutedByAuthor:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Update;->photoUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Update;->audienceSize:Ljava/lang/Long;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Update;->isCheckin:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Update;->numTagsOfViewer:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Update;->isLocationWithoutContent:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Update;->originalAnnotationSegments:Lcom/google/api/services/plusi/model/EditSegments;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Update;->systemPostData:Lcom/google/api/services/plusi/model/SystemPostData;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Update;->relativeDateInfo:Lcom/google/api/services/plusi/model/RelativeDateInfo;

    aput-object v2, v0, v1

    const/16 v1, 0x24

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Update;->isSearchResult:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/16 v1, 0x25

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Update;->plusone:Lcom/google/api/services/plusi/model/DataPlusOne;

    aput-object v2, v0, v1

    const/16 v1, 0x26

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Update;->groupNameDeprecated:Ljava/util/List;

    aput-object v2, v0, v1

    const/16 v1, 0x27

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Update;->obfuscatedId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x28

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Update;->interestUpdate:Lcom/google/api/services/plusi/model/InterestUpdate;

    aput-object v2, v0, v1

    const/16 v1, 0x29

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Update;->itemCategory:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Update;->metadata:Lcom/google/api/services/plusi/model/UpdateMetadata;

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Update;->body:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Update;->isPlusoneAble:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Update;->openSocialDomain:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Update;->permalinkUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Update;->isSharedWithExtendedNetwork:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/16 v1, 0x30

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Update;->facePileUser:Ljava/util/List;

    aput-object v2, v0, v1

    const/16 v1, 0x31

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Update;->activityToReshare:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x32

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Update;->originalTitleSegments:Lcom/google/api/services/plusi/model/EditSegments;

    aput-object v2, v0, v1

    const/16 v1, 0x33

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Update;->faviconUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x34

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Update;->isLikedByViewer:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/16 v1, 0x35

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Update;->collapsedBody:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x36

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Update;->globalScore:Ljava/lang/Float;

    aput-object v2, v0, v1

    const/16 v1, 0x37

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Update;->squareUpdate:Lcom/google/api/services/plusi/model/SquareUpdate;

    aput-object v2, v0, v1

    const/16 v1, 0x38

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Update;->isVisibilityInspectorDisabled:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/16 v1, 0x39

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Update;->place:Lcom/google/api/services/plusi/model/Place;

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Update;->comment:Ljava/util/List;

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Update;->sortingTimestamp:Ljava/lang/Long;

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Update;->originalItemId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Update;->isSharedToGroup:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Update;->originalReshareCount:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Update;->isViewerFollowing:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/16 v1, 0x40

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Update;->humanReadableTimestamp:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x41

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Update;->isMute:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/16 v1, 0x42

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Update;->collapsedTitleSegments:Lcom/google/api/services/plusi/model/ViewSegments;

    aput-object v2, v0, v1

    const/16 v1, 0x43

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Update;->textTitle:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x44

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Update;->isRestrictedToDomain:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/16 v1, 0x45

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Update;->originalPosition:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0x46

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Update;->isHidden:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/16 v1, 0x47

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Update;->sourceUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x48

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Update;->annotationSegments:Lcom/google/api/services/plusi/model/ViewSegments;

    aput-object v2, v0, v1

    const/16 v1, 0x49

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Update;->explanation:Lcom/google/api/services/plusi/model/Explanation;

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Update;->canViewerShare:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Update;->updateId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Update;->embed:Lcom/google/api/services/plusi/model/EmbedClientItem;

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Update;->totalCommentCount:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Update;->originalAnnotation:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Update;->isFollowing:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/16 v1, 0x50

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Update;->isPrivateToChatContacts:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/16 v1, 0x51

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Update;->displayedTimestampMillis:Ljava/lang/Long;

    aput-object v2, v0, v1

    const/16 v1, 0x52

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Update;->personalizedScore:Ljava/lang/Double;

    aput-object v2, v0, v1

    const/16 v1, 0x53

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Update;->updatedTimestampUsec:Ljava/lang/Long;

    aput-object v2, v0, v1

    const/16 v1, 0x54

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Update;->canViewerComment:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/16 v1, 0x55

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Update;->restrictedDomainData:Lcom/google/api/services/plusi/model/DomainData;

    aput-object v2, v0, v1

    const/16 v1, 0x56

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Update;->media:Ljava/util/List;

    aput-object v2, v0, v1

    const/16 v1, 0x57

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Update;->perfectStreamDebug:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x58

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Update;->sourceFeed:Lcom/google/api/services/plusi/model/SourceFeed;

    aput-object v2, v0, v1

    const/16 v1, 0x59

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Update;->authorEmail:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Update;->authorName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Update;->isOwnedByViewer:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Update;->hasEverBeenRead:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Update;->mediaLayout:Ljava/util/List;

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Update;->isPublic:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Update;->isOwnerless:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/16 v1, 0x60

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Update;->sourceStreamId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x61

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Update;->originalTitle:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x62

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Update;->albumId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x63

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Update;->isRead:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/16 v1, 0x64

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Update;->resharingUser:Ljava/util/List;

    aput-object v2, v0, v1

    const/16 v1, 0x65

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Update;->annotation:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x66

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Update;->taggedUser:Ljava/util/List;

    aput-object v2, v0, v1

    const/16 v1, 0x67

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Update;->sharedFromItemId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x68

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Update;->recommendationSourceType:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x69

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Update;->originalUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Update;->likingUser:Ljava/util/List;

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Update;->sourceStreamName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Update;->relatedUpdate:Ljava/util/List;

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Update;->sharedToItemId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Update;->newCollapsedComments:Lcom/google/api/services/plusi/model/CommentGroup;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/plusi/model/Update;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/plusi/model/UpdateJson;->getValues(Lcom/google/api/services/plusi/model/Update;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/plusi/model/Update;
    .registers 2

    .prologue
    .line 137
    new-instance v0, Lcom/google/api/services/plusi/model/Update;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/Update;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/plusi/model/UpdateJson;->newInstance()Lcom/google/api/services/plusi/model/Update;

    move-result-object v0

    return-object v0
.end method
