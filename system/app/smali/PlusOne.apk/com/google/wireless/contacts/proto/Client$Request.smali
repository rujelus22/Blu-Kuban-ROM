.class public final Lcom/google/wireless/contacts/proto/Client$Request;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/contacts/proto/Client$RequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Request"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/contacts/proto/Client$Request$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/contacts/proto/Client$Request;

.field private static final serialVersionUID:J


# instance fields
.field private actionToken_:Ljava/lang/Object;

.field private bitField0_:I

.field private blockUserRequest_:Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;

.field private createCircleRequest_:Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;

.field private integration_:Lcom/google/wireless/contacts/proto/Integrations$Integration;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private mobileCircleMembersRequest_:Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;

.field private mobileCirclesRequest_:Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;

.field private mobilePeopleSuggestionsRequest_:Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest;

.field private modifyCircleMembershipRequest_:Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;

.field private modifyCirclePropertiesRequest_:Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest;

.field private peoplelistRequest_:Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;

.field private personRequest_:Lcom/google/wireless/contacts/proto/Client$PersonRequest;

.field private profileRequest_:Lcom/google/wireless/contacts/proto/Client$ProfileRequest;

.field private publicProfilesRequest_:Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;

.field private recordPeopleSuggestionRequest_:Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;

.field private reportProfileRequest_:Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;

.field private requestId_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 1580
    new-instance v0, Lcom/google/wireless/contacts/proto/Client$Request;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/contacts/proto/Client$Request;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Client$Request;->defaultInstance:Lcom/google/wireless/contacts/proto/Client$Request;

    .line 1581
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$Request;->defaultInstance:Lcom/google/wireless/contacts/proto/Client$Request;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Client$Request;->initFields()V

    .line 1582
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/contacts/proto/Client$Request$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 83
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 319
    iput-byte v0, p0, Lcom/google/wireless/contacts/proto/Client$Request;->memoizedIsInitialized:B

    .line 381
    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$Request;->memoizedSerializedSize:I

    .line 84
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/contacts/proto/Client$Request$Builder;Lcom/google/wireless/contacts/proto/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/google/wireless/contacts/proto/Client$Request;-><init>(Lcom/google/wireless/contacts/proto/Client$Request$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 85
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 319
    iput-byte v0, p0, Lcom/google/wireless/contacts/proto/Client$Request;->memoizedIsInitialized:B

    .line 381
    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$Request;->memoizedSerializedSize:I

    .line 85
    return-void
.end method

.method static synthetic access$1002(Lcom/google/wireless/contacts/proto/Client$Request;Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;)Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$Request;->peoplelistRequest_:Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/google/wireless/contacts/proto/Client$Request;Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;)Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$Request;->publicProfilesRequest_:Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/google/wireless/contacts/proto/Client$Request;Lcom/google/wireless/contacts/proto/Client$PersonRequest;)Lcom/google/wireless/contacts/proto/Client$PersonRequest;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$Request;->personRequest_:Lcom/google/wireless/contacts/proto/Client$PersonRequest;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/google/wireless/contacts/proto/Client$Request;Lcom/google/wireless/contacts/proto/Client$ProfileRequest;)Lcom/google/wireless/contacts/proto/Client$ProfileRequest;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$Request;->profileRequest_:Lcom/google/wireless/contacts/proto/Client$ProfileRequest;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/google/wireless/contacts/proto/Client$Request;Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;)Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$Request;->blockUserRequest_:Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/google/wireless/contacts/proto/Client$Request;Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;)Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$Request;->reportProfileRequest_:Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;

    return-object p1
.end method

.method static synthetic access$1602(Lcom/google/wireless/contacts/proto/Client$Request;Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;)Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$Request;->mobileCircleMembersRequest_:Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;

    return-object p1
.end method

.method static synthetic access$1702(Lcom/google/wireless/contacts/proto/Client$Request;Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest;)Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$Request;->modifyCirclePropertiesRequest_:Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest;

    return-object p1
.end method

.method static synthetic access$1802(Lcom/google/wireless/contacts/proto/Client$Request;Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;)Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$Request;->modifyCircleMembershipRequest_:Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;

    return-object p1
.end method

.method static synthetic access$1902(Lcom/google/wireless/contacts/proto/Client$Request;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput p1, p0, Lcom/google/wireless/contacts/proto/Client$Request;->bitField0_:I

    return p1
.end method

.method static synthetic access$302(Lcom/google/wireless/contacts/proto/Client$Request;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$Request;->requestId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$402(Lcom/google/wireless/contacts/proto/Client$Request;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$Request;->actionToken_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$502(Lcom/google/wireless/contacts/proto/Client$Request;Lcom/google/wireless/contacts/proto/Integrations$Integration;)Lcom/google/wireless/contacts/proto/Integrations$Integration;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$Request;->integration_:Lcom/google/wireless/contacts/proto/Integrations$Integration;

    return-object p1
.end method

.method static synthetic access$602(Lcom/google/wireless/contacts/proto/Client$Request;Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest;)Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$Request;->mobilePeopleSuggestionsRequest_:Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest;

    return-object p1
.end method

.method static synthetic access$702(Lcom/google/wireless/contacts/proto/Client$Request;Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;)Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$Request;->recordPeopleSuggestionRequest_:Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;

    return-object p1
.end method

.method static synthetic access$802(Lcom/google/wireless/contacts/proto/Client$Request;Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;)Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$Request;->mobileCirclesRequest_:Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;

    return-object p1
.end method

.method static synthetic access$902(Lcom/google/wireless/contacts/proto/Client$Request;Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;)Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$Request;->createCircleRequest_:Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;

    return-object p1
.end method

.method private getActionTokenBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 150
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Client$Request;->actionToken_:Ljava/lang/Object;

    .line 151
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 152
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 154
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request;->actionToken_:Ljava/lang/Object;

    .line 157
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_e
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_e
.end method

.method public static getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$Request;
    .registers 1

    .prologue
    .line 89
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$Request;->defaultInstance:Lcom/google/wireless/contacts/proto/Client$Request;

    return-object v0
.end method

.method private getRequestIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 118
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Client$Request;->requestId_:Ljava/lang/Object;

    .line 119
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 120
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 122
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request;->requestId_:Ljava/lang/Object;

    .line 125
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_e
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_e
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 302
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request;->requestId_:Ljava/lang/Object;

    .line 303
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request;->actionToken_:Ljava/lang/Object;

    .line 304
    invoke-static {}, Lcom/google/wireless/contacts/proto/Integrations$Integration;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Integrations$Integration;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request;->integration_:Lcom/google/wireless/contacts/proto/Integrations$Integration;

    .line 305
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request;->mobilePeopleSuggestionsRequest_:Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest;

    .line 306
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request;->recordPeopleSuggestionRequest_:Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;

    .line 307
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request;->mobileCirclesRequest_:Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;

    .line 308
    invoke-static {}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request;->createCircleRequest_:Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;

    .line 309
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request;->peoplelistRequest_:Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;

    .line 310
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request;->publicProfilesRequest_:Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;

    .line 311
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$PersonRequest;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$PersonRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request;->personRequest_:Lcom/google/wireless/contacts/proto/Client$PersonRequest;

    .line 312
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$ProfileRequest;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$ProfileRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request;->profileRequest_:Lcom/google/wireless/contacts/proto/Client$ProfileRequest;

    .line 313
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request;->blockUserRequest_:Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;

    .line 314
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request;->reportProfileRequest_:Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;

    .line 315
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request;->mobileCircleMembersRequest_:Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;

    .line 316
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request;->modifyCirclePropertiesRequest_:Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest;

    .line 317
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request;->modifyCircleMembershipRequest_:Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;

    .line 318
    return-void
.end method


# virtual methods
.method public getActionToken()Ljava/lang/String;
    .registers 5

    .prologue
    .line 136
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Client$Request;->actionToken_:Ljava/lang/Object;

    .line 137
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 138
    check-cast v1, Ljava/lang/String;

    .line 146
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 140
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 142
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 143
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 144
    iput-object v2, p0, Lcom/google/wireless/contacts/proto/Client$Request;->actionToken_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 146
    goto :goto_8
.end method

.method public getBlockUserRequest()Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;
    .registers 2

    .prologue
    .line 258
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request;->blockUserRequest_:Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;

    return-object v0
.end method

.method public getCreateCircleRequest()Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;
    .registers 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request;->createCircleRequest_:Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$Request;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$Request;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$Request;
    .registers 2

    .prologue
    .line 93
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$Request;->defaultInstance:Lcom/google/wireless/contacts/proto/Client$Request;

    return-object v0
.end method

.method public getIntegration()Lcom/google/wireless/contacts/proto/Integrations$Integration;
    .registers 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request;->integration_:Lcom/google/wireless/contacts/proto/Integrations$Integration;

    return-object v0
.end method

.method public getMobileCircleMembersRequest()Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;
    .registers 2

    .prologue
    .line 278
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request;->mobileCircleMembersRequest_:Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;

    return-object v0
.end method

.method public getMobileCirclesRequest()Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;
    .registers 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request;->mobileCirclesRequest_:Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;

    return-object v0
.end method

.method public getMobilePeopleSuggestionsRequest()Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest;
    .registers 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request;->mobilePeopleSuggestionsRequest_:Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest;

    return-object v0
.end method

.method public getModifyCircleMembershipRequest()Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;
    .registers 2

    .prologue
    .line 298
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request;->modifyCircleMembershipRequest_:Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;

    return-object v0
.end method

.method public getModifyCirclePropertiesRequest()Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest;
    .registers 2

    .prologue
    .line 288
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request;->modifyCirclePropertiesRequest_:Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest;

    return-object v0
.end method

.method public getPeoplelistRequest()Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;
    .registers 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request;->peoplelistRequest_:Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;

    return-object v0
.end method

.method public getPersonRequest()Lcom/google/wireless/contacts/proto/Client$PersonRequest;
    .registers 2

    .prologue
    .line 238
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request;->personRequest_:Lcom/google/wireless/contacts/proto/Client$PersonRequest;

    return-object v0
.end method

.method public getProfileRequest()Lcom/google/wireless/contacts/proto/Client$ProfileRequest;
    .registers 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request;->profileRequest_:Lcom/google/wireless/contacts/proto/Client$ProfileRequest;

    return-object v0
.end method

.method public getPublicProfilesRequest()Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;
    .registers 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request;->publicProfilesRequest_:Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;

    return-object v0
.end method

.method public getRecordPeopleSuggestionRequest()Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;
    .registers 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request;->recordPeopleSuggestionRequest_:Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;

    return-object v0
.end method

.method public getReportProfileRequest()Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;
    .registers 2

    .prologue
    .line 268
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request;->reportProfileRequest_:Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;

    return-object v0
.end method

.method public getRequestId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 104
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Client$Request;->requestId_:Ljava/lang/Object;

    .line 105
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 106
    check-cast v1, Ljava/lang/String;

    .line 114
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 108
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 110
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 111
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 112
    iput-object v2, p0, Lcom/google/wireless/contacts/proto/Client$Request;->requestId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 114
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 9

    .prologue
    const/16 v7, 0x10

    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 383
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request;->memoizedSerializedSize:I

    .line 384
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_e

    move v1, v0

    .line 452
    .end local v0           #size:I
    .local v1, size:I
    :goto_d
    return v1

    .line 386
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_e
    const/4 v0, 0x0

    .line 387
    iget v2, p0, Lcom/google/wireless/contacts/proto/Client$Request;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1e

    .line 388
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$Request;->getRequestIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 391
    :cond_1e
    iget v2, p0, Lcom/google/wireless/contacts/proto/Client$Request;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2d

    .line 392
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$Request;->getActionTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 395
    :cond_2d
    iget v2, p0, Lcom/google/wireless/contacts/proto/Client$Request;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_3b

    .line 396
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Client$Request;->integration_:Lcom/google/wireless/contacts/proto/Integrations$Integration;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 399
    :cond_3b
    iget v2, p0, Lcom/google/wireless/contacts/proto/Client$Request;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-ne v2, v6, :cond_48

    .line 400
    iget-object v2, p0, Lcom/google/wireless/contacts/proto/Client$Request;->mobilePeopleSuggestionsRequest_:Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest;

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 403
    :cond_48
    iget v2, p0, Lcom/google/wireless/contacts/proto/Client$Request;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    if-ne v2, v7, :cond_56

    .line 404
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Client$Request;->recordPeopleSuggestionRequest_:Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 407
    :cond_56
    iget v2, p0, Lcom/google/wireless/contacts/proto/Client$Request;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_66

    .line 408
    const/4 v2, 0x6

    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Client$Request;->mobileCirclesRequest_:Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 411
    :cond_66
    iget v2, p0, Lcom/google/wireless/contacts/proto/Client$Request;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_76

    .line 412
    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Client$Request;->createCircleRequest_:Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 415
    :cond_76
    iget v2, p0, Lcom/google/wireless/contacts/proto/Client$Request;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_85

    .line 416
    iget-object v2, p0, Lcom/google/wireless/contacts/proto/Client$Request;->peoplelistRequest_:Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;

    invoke-static {v6, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 419
    :cond_85
    iget v2, p0, Lcom/google/wireless/contacts/proto/Client$Request;->bitField0_:I

    and-int/lit16 v2, v2, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_96

    .line 420
    const/16 v2, 0x9

    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Client$Request;->publicProfilesRequest_:Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 423
    :cond_96
    iget v2, p0, Lcom/google/wireless/contacts/proto/Client$Request;->bitField0_:I

    and-int/lit16 v2, v2, 0x200

    const/16 v3, 0x200

    if-ne v2, v3, :cond_a7

    .line 424
    const/16 v2, 0xa

    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Client$Request;->personRequest_:Lcom/google/wireless/contacts/proto/Client$PersonRequest;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 427
    :cond_a7
    iget v2, p0, Lcom/google/wireless/contacts/proto/Client$Request;->bitField0_:I

    and-int/lit16 v2, v2, 0x400

    const/16 v3, 0x400

    if-ne v2, v3, :cond_b8

    .line 428
    const/16 v2, 0xb

    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Client$Request;->profileRequest_:Lcom/google/wireless/contacts/proto/Client$ProfileRequest;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 431
    :cond_b8
    iget v2, p0, Lcom/google/wireless/contacts/proto/Client$Request;->bitField0_:I

    and-int/lit16 v2, v2, 0x800

    const/16 v3, 0x800

    if-ne v2, v3, :cond_c9

    .line 432
    const/16 v2, 0xc

    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Client$Request;->blockUserRequest_:Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 435
    :cond_c9
    iget v2, p0, Lcom/google/wireless/contacts/proto/Client$Request;->bitField0_:I

    and-int/lit16 v2, v2, 0x1000

    const/16 v3, 0x1000

    if-ne v2, v3, :cond_da

    .line 436
    const/16 v2, 0xd

    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Client$Request;->reportProfileRequest_:Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 439
    :cond_da
    iget v2, p0, Lcom/google/wireless/contacts/proto/Client$Request;->bitField0_:I

    and-int/lit16 v2, v2, 0x2000

    const/16 v3, 0x2000

    if-ne v2, v3, :cond_eb

    .line 440
    const/16 v2, 0xe

    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Client$Request;->mobileCircleMembersRequest_:Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 443
    :cond_eb
    iget v2, p0, Lcom/google/wireless/contacts/proto/Client$Request;->bitField0_:I

    and-int/lit16 v2, v2, 0x4000

    const/16 v3, 0x4000

    if-ne v2, v3, :cond_fc

    .line 444
    const/16 v2, 0xf

    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Client$Request;->modifyCirclePropertiesRequest_:Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 447
    :cond_fc
    iget v2, p0, Lcom/google/wireless/contacts/proto/Client$Request;->bitField0_:I

    const v3, 0x8000

    and-int/2addr v2, v3

    const v3, 0x8000

    if-ne v2, v3, :cond_10e

    .line 448
    iget-object v2, p0, Lcom/google/wireless/contacts/proto/Client$Request;->modifyCircleMembershipRequest_:Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;

    invoke-static {v7, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 451
    :cond_10e
    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$Request;->memoizedSerializedSize:I

    move v1, v0

    .line 452
    .end local v0           #size:I
    .restart local v1       #size:I
    goto/16 :goto_d
.end method

.method public hasActionToken()Z
    .registers 3

    .prologue
    .line 133
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasBlockUserRequest()Z
    .registers 3

    .prologue
    .line 255
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasCreateCircleRequest()Z
    .registers 3

    .prologue
    .line 205
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasIntegration()Z
    .registers 3

    .prologue
    .line 165
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasMobileCircleMembersRequest()Z
    .registers 3

    .prologue
    .line 275
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasMobileCirclesRequest()Z
    .registers 3

    .prologue
    .line 195
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasMobilePeopleSuggestionsRequest()Z
    .registers 3

    .prologue
    .line 175
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasModifyCircleMembershipRequest()Z
    .registers 3

    .prologue
    const v1, 0x8000

    .line 295
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasModifyCirclePropertiesRequest()Z
    .registers 3

    .prologue
    .line 285
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request;->bitField0_:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasPeoplelistRequest()Z
    .registers 3

    .prologue
    .line 215
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasPersonRequest()Z
    .registers 3

    .prologue
    .line 235
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasProfileRequest()Z
    .registers 3

    .prologue
    .line 245
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasPublicProfilesRequest()Z
    .registers 3

    .prologue
    .line 225
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasRecordPeopleSuggestionRequest()Z
    .registers 3

    .prologue
    .line 185
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasReportProfileRequest()Z
    .registers 3

    .prologue
    .line 265
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasRequestId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 101
    iget v1, p0, Lcom/google/wireless/contacts/proto/Client$Request;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method protected writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 459
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 8
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x10

    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 330
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$Request;->getSerializedSize()I

    .line 331
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_17

    .line 332
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$Request;->getRequestIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 334
    :cond_17
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_24

    .line 335
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$Request;->getActionTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 337
    :cond_24
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_30

    .line 338
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Client$Request;->integration_:Lcom/google/wireless/contacts/proto/Integrations$Integration;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 340
    :cond_30
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v4, :cond_3b

    .line 341
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request;->mobilePeopleSuggestionsRequest_:Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest;

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 343
    :cond_3b
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-ne v0, v5, :cond_47

    .line 344
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Client$Request;->recordPeopleSuggestionRequest_:Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 346
    :cond_47
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_55

    .line 347
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Client$Request;->mobileCirclesRequest_:Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 349
    :cond_55
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_63

    .line 350
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Client$Request;->createCircleRequest_:Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 352
    :cond_63
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_70

    .line 353
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request;->peoplelistRequest_:Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 355
    :cond_70
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_7f

    .line 356
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Client$Request;->publicProfilesRequest_:Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 358
    :cond_7f
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_8e

    .line 359
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Client$Request;->personRequest_:Lcom/google/wireless/contacts/proto/Client$PersonRequest;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 361
    :cond_8e
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_9d

    .line 362
    const/16 v0, 0xb

    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Client$Request;->profileRequest_:Lcom/google/wireless/contacts/proto/Client$ProfileRequest;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 364
    :cond_9d
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_ac

    .line 365
    const/16 v0, 0xc

    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Client$Request;->blockUserRequest_:Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 367
    :cond_ac
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_bb

    .line 368
    const/16 v0, 0xd

    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Client$Request;->reportProfileRequest_:Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 370
    :cond_bb
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_ca

    .line 371
    const/16 v0, 0xe

    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Client$Request;->mobileCircleMembersRequest_:Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 373
    :cond_ca
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request;->bitField0_:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_d9

    .line 374
    const/16 v0, 0xf

    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Client$Request;->modifyCirclePropertiesRequest_:Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 376
    :cond_d9
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request;->bitField0_:I

    const v1, 0x8000

    and-int/2addr v0, v1

    const v1, 0x8000

    if-ne v0, v1, :cond_e9

    .line 377
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request;->modifyCircleMembershipRequest_:Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;

    invoke-virtual {p1, v5, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 379
    :cond_e9
    return-void
.end method
