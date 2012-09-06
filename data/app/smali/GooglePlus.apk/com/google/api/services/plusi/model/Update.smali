.class public final Lcom/google/api/services/plusi/model/Update;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "Update.java"


# instance fields
.field public activityToReshare:Ljava/lang/String;

.field public albumId:Ljava/lang/String;

.field public annotation:Ljava/lang/String;

.field public annotationSegments:Lcom/google/api/services/plusi/model/ViewSegments;

.field public audienceSize:Ljava/lang/Long;

.field public authorEmail:Ljava/lang/String;

.field public authorName:Ljava/lang/String;

.field public authorProfileUrl:Ljava/lang/String;

.field public body:Ljava/lang/String;

.field public canViewerComment:Ljava/lang/Boolean;

.field public canViewerShare:Ljava/lang/Boolean;

.field public collapsedBody:Ljava/lang/String;

.field public collapsedTitle:Ljava/lang/String;

.field public collapsedTitleSegments:Lcom/google/api/services/plusi/model/ViewSegments;

.field public comment:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/Comment;",
            ">;"
        }
    .end annotation
.end field

.field public commentDetails:Lcom/google/api/services/plusi/model/CommentGroup;

.field public commentsInModerationCount:Ljava/lang/Integer;

.field public debug:Ljava/lang/String;

.field public displayedTimestampMillis:Ljava/lang/Long;

.field public embed:Lcom/google/api/services/plusi/model/EmbedClientItem;

.field public explanation:Lcom/google/api/services/plusi/model/Explanation;

.field public facePileUser:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/Person;",
            ">;"
        }
    .end annotation
.end field

.field public faviconUrl:Ljava/lang/String;

.field public gadgetsData:Lcom/google/api/services/plusi/model/GadgetsData;

.field public globalScore:Ljava/lang/Float;

.field public groupNameDeprecated:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public hasEverBeenRead:Ljava/lang/Boolean;

.field public humanReadableTimestamp:Ljava/lang/String;

.field public hypothesizedInterest:Ljava/lang/String;

.field public interestUpdate:Lcom/google/api/services/plusi/model/InterestUpdate;

.field public isBumping:Ljava/lang/Boolean;

.field public isCheckin:Ljava/lang/Boolean;

.field public isFollowing:Ljava/lang/Boolean;

.field public isHidden:Ljava/lang/Boolean;

.field public isInvolvedUser:Ljava/lang/Boolean;

.field public isLikedByViewer:Ljava/lang/Boolean;

.field public isLocationWithoutContent:Ljava/lang/Boolean;

.field public isMute:Ljava/lang/Boolean;

.field public isMutedByAuthor:Ljava/lang/Boolean;

.field public isOwnedByViewer:Ljava/lang/Boolean;

.field public isOwnerless:Ljava/lang/Boolean;

.field public isPlusoneAble:Ljava/lang/Boolean;

.field public isPrivateToChatContacts:Ljava/lang/Boolean;

.field public isPrivateToLatitudeFriends:Ljava/lang/Boolean;

.field public isPublic:Ljava/lang/Boolean;

.field public isRead:Ljava/lang/Boolean;

.field public isRestrictedToDomain:Ljava/lang/Boolean;

.field public isSearchResult:Ljava/lang/Boolean;

.field public isSharedFromPublicPost:Ljava/lang/Boolean;

.field public isSharedToGroup:Ljava/lang/Boolean;

.field public isSharedWithExtendedNetwork:Ljava/lang/Boolean;

.field public isStrangerPost:Ljava/lang/Boolean;

.field public isViewerFollowing:Ljava/lang/Boolean;

.field public isVisibilityInspectorDisabled:Ljava/lang/Boolean;

.field public itemCategory:Ljava/lang/String;

.field public lastReadTimeUsec:Ljava/lang/Long;

.field public likingUser:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/Person;",
            ">;"
        }
    .end annotation
.end field

.field public location:Lcom/google/api/services/plusi/model/Location;

.field public media:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mediaLayout:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/MediaLayout;",
            ">;"
        }
    .end annotation
.end field

.field public messageType:Ljava/lang/String;

.field public metadata:Lcom/google/api/services/plusi/model/UpdateMetadata;

.field public newCollapsedComments:Lcom/google/api/services/plusi/model/CommentGroup;

.field public numPendingTags:Ljava/lang/Integer;

.field public numPendingTagsOfViewer:Ljava/lang/Integer;

.field public numTagsOfViewer:Ljava/lang/Integer;

.field public obfuscatedEmbedOwnerId:Ljava/lang/String;

.field public obfuscatedId:Ljava/lang/String;

.field public oldCollapsedComments:Lcom/google/api/services/plusi/model/CommentGroup;

.field public openSocialDomain:Ljava/lang/String;

.field public originalAnnotation:Ljava/lang/String;

.field public originalAnnotationSegments:Lcom/google/api/services/plusi/model/EditSegments;

.field public originalItemId:Ljava/lang/String;

.field public originalPosition:Ljava/lang/Integer;

.field public originalReshareCount:Ljava/lang/Integer;

.field public originalTitle:Ljava/lang/String;

.field public originalTitleSegments:Lcom/google/api/services/plusi/model/EditSegments;

.field public originalUrl:Ljava/lang/String;

.field public page:Ljava/lang/Long;

.field public perfectStreamDebug:Ljava/lang/String;

.field public permalinkUrl:Ljava/lang/String;

.field public personalizedScore:Ljava/lang/Double;

.field public photoUrl:Ljava/lang/String;

.field public place:Lcom/google/api/services/plusi/model/Place;

.field public plusone:Lcom/google/api/services/plusi/model/DataPlusOne;

.field public recommendationReason:Ljava/lang/Integer;

.field public recommendationSourceType:Ljava/lang/String;

.field public relatedUpdate:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/Update;",
            ">;"
        }
    .end annotation
.end field

.field public relativeDateInfo:Lcom/google/api/services/plusi/model/RelativeDateInfo;

.field public resharingUser:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/Person;",
            ">;"
        }
    .end annotation
.end field

.field public restrictedDomainData:Lcom/google/api/services/plusi/model/DomainData;

.field public sharedFromAuthor:Lcom/google/api/services/plusi/model/Person;

.field public sharedFromItemId:Ljava/lang/String;

.field public sharedFromOriginalAuthor:Lcom/google/api/services/plusi/model/Person;

.field public sharedFromPostUrl:Ljava/lang/String;

.field public sharedToItemId:Ljava/lang/String;

.field public sortingTimestamp:Ljava/lang/Long;

.field public sourceFeed:Lcom/google/api/services/plusi/model/SourceFeed;

.field public sourceStreamId:Ljava/lang/String;

.field public sourceStreamName:Ljava/lang/String;

.field public sourceUrl:Ljava/lang/String;

.field public squareUpdate:Lcom/google/api/services/plusi/model/SquareUpdate;

.field public systemPostData:Lcom/google/api/services/plusi/model/SystemPostData;

.field public taggedUser:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/Person;",
            ">;"
        }
    .end annotation
.end field

.field public textTitle:Ljava/lang/String;

.field public timestamp:Ljava/lang/Long;

.field public title:Ljava/lang/String;

.field public titleSegments:Lcom/google/api/services/plusi/model/ViewSegments;

.field public totalCommentCount:Ljava/lang/Integer;

.field public updateId:Ljava/lang/String;

.field public updatedTimestampUsec:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 396
    const-class v0, Lcom/google/api/services/plusi/model/Person;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 478
    const-class v0, Lcom/google/api/services/plusi/model/Comment;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 740
    const-class v0, Lcom/google/api/services/plusi/model/MediaLayout;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 801
    const-class v0, Lcom/google/api/services/plusi/model/Person;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 823
    const-class v0, Lcom/google/api/services/plusi/model/Person;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 857
    const-class v0, Lcom/google/api/services/plusi/model/Person;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 877
    const-class v0, Lcom/google/api/services/plusi/model/Update;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 878
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/GenericJson;-><init>()V

    return-void
.end method
