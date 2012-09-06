.class public final Lcom/google/wireless/contacts/proto/Client$Request$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/contacts/proto/Client$RequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Client$Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/contacts/proto/Client$Request;",
        "Lcom/google/wireless/contacts/proto/Client$Request$Builder;",
        ">;",
        "Lcom/google/wireless/contacts/proto/Client$RequestOrBuilder;"
    }
.end annotation


# instance fields
.field private actionToken_:Ljava/lang/Object;

.field private bitField0_:I

.field private blockUserRequest_:Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;

.field private createCircleRequest_:Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;

.field private integration_:Lcom/google/wireless/contacts/proto/Integrations$Integration;

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
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 541
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 903
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->requestId_:Ljava/lang/Object;

    .line 939
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->actionToken_:Ljava/lang/Object;

    .line 975
    invoke-static {}, Lcom/google/wireless/contacts/proto/Integrations$Integration;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Integrations$Integration;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->integration_:Lcom/google/wireless/contacts/proto/Integrations$Integration;

    .line 1018
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->mobilePeopleSuggestionsRequest_:Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest;

    .line 1061
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->recordPeopleSuggestionRequest_:Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;

    .line 1104
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->mobileCirclesRequest_:Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;

    .line 1147
    invoke-static {}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->createCircleRequest_:Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;

    .line 1190
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->peoplelistRequest_:Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;

    .line 1233
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->publicProfilesRequest_:Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;

    .line 1276
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$PersonRequest;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$PersonRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->personRequest_:Lcom/google/wireless/contacts/proto/Client$PersonRequest;

    .line 1319
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$ProfileRequest;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$ProfileRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->profileRequest_:Lcom/google/wireless/contacts/proto/Client$ProfileRequest;

    .line 1362
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->blockUserRequest_:Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;

    .line 1405
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->reportProfileRequest_:Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;

    .line 1448
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->mobileCircleMembersRequest_:Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;

    .line 1491
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->modifyCirclePropertiesRequest_:Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest;

    .line 1534
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->modifyCircleMembershipRequest_:Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;

    .line 542
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->maybeForceBuilderInitialization()V

    .line 543
    return-void
.end method

.method static synthetic access$100()Lcom/google/wireless/contacts/proto/Client$Request$Builder;
    .registers 1

    .prologue
    .line 536
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->create()Lcom/google/wireless/contacts/proto/Client$Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/contacts/proto/Client$Request$Builder;
    .registers 1

    .prologue
    .line 548
    new-instance v0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Client$Request$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 546
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 536
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->build()Lcom/google/wireless/contacts/proto/Client$Request;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/contacts/proto/Client$Request;
    .registers 3

    .prologue
    .line 597
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Client$Request;

    move-result-object v0

    .line 598
    .local v0, result:Lcom/google/wireless/contacts/proto/Client$Request;
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Client$Request;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 599
    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 601
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 536
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Client$Request;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/contacts/proto/Client$Request;
    .registers 7

    .prologue
    const v5, 0x8000

    .line 615
    new-instance v1, Lcom/google/wireless/contacts/proto/Client$Request;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/contacts/proto/Client$Request;-><init>(Lcom/google/wireless/contacts/proto/Client$Request$Builder;Lcom/google/wireless/contacts/proto/Client$1;)V

    .line 616
    .local v1, result:Lcom/google/wireless/contacts/proto/Client$Request;
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    .line 617
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 618
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_13

    .line 619
    or-int/lit8 v2, v2, 0x1

    .line 621
    :cond_13
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->requestId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/contacts/proto/Client$Request;->requestId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Client$Request;->access$302(Lcom/google/wireless/contacts/proto/Client$Request;Ljava/lang/Object;)Ljava/lang/Object;

    .line 622
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1f

    .line 623
    or-int/lit8 v2, v2, 0x2

    .line 625
    :cond_1f
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->actionToken_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/contacts/proto/Client$Request;->actionToken_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Client$Request;->access$402(Lcom/google/wireless/contacts/proto/Client$Request;Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2b

    .line 627
    or-int/lit8 v2, v2, 0x4

    .line 629
    :cond_2b
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->integration_:Lcom/google/wireless/contacts/proto/Integrations$Integration;

    #setter for: Lcom/google/wireless/contacts/proto/Client$Request;->integration_:Lcom/google/wireless/contacts/proto/Integrations$Integration;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Client$Request;->access$502(Lcom/google/wireless/contacts/proto/Client$Request;Lcom/google/wireless/contacts/proto/Integrations$Integration;)Lcom/google/wireless/contacts/proto/Integrations$Integration;

    .line 630
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_38

    .line 631
    or-int/lit8 v2, v2, 0x8

    .line 633
    :cond_38
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->mobilePeopleSuggestionsRequest_:Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest;

    #setter for: Lcom/google/wireless/contacts/proto/Client$Request;->mobilePeopleSuggestionsRequest_:Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Client$Request;->access$602(Lcom/google/wireless/contacts/proto/Client$Request;Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest;)Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest;

    .line 634
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_45

    .line 635
    or-int/lit8 v2, v2, 0x10

    .line 637
    :cond_45
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->recordPeopleSuggestionRequest_:Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;

    #setter for: Lcom/google/wireless/contacts/proto/Client$Request;->recordPeopleSuggestionRequest_:Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Client$Request;->access$702(Lcom/google/wireless/contacts/proto/Client$Request;Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;)Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;

    .line 638
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_52

    .line 639
    or-int/lit8 v2, v2, 0x20

    .line 641
    :cond_52
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->mobileCirclesRequest_:Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;

    #setter for: Lcom/google/wireless/contacts/proto/Client$Request;->mobileCirclesRequest_:Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Client$Request;->access$802(Lcom/google/wireless/contacts/proto/Client$Request;Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;)Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;

    .line 642
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_5f

    .line 643
    or-int/lit8 v2, v2, 0x40

    .line 645
    :cond_5f
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->createCircleRequest_:Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;

    #setter for: Lcom/google/wireless/contacts/proto/Client$Request;->createCircleRequest_:Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Client$Request;->access$902(Lcom/google/wireless/contacts/proto/Client$Request;Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;)Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;

    .line 646
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_6c

    .line 647
    or-int/lit16 v2, v2, 0x80

    .line 649
    :cond_6c
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->peoplelistRequest_:Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;

    #setter for: Lcom/google/wireless/contacts/proto/Client$Request;->peoplelistRequest_:Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Client$Request;->access$1002(Lcom/google/wireless/contacts/proto/Client$Request;Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;)Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;

    .line 650
    and-int/lit16 v3, v0, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_79

    .line 651
    or-int/lit16 v2, v2, 0x100

    .line 653
    :cond_79
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->publicProfilesRequest_:Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;

    #setter for: Lcom/google/wireless/contacts/proto/Client$Request;->publicProfilesRequest_:Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Client$Request;->access$1102(Lcom/google/wireless/contacts/proto/Client$Request;Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;)Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;

    .line 654
    and-int/lit16 v3, v0, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_86

    .line 655
    or-int/lit16 v2, v2, 0x200

    .line 657
    :cond_86
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->personRequest_:Lcom/google/wireless/contacts/proto/Client$PersonRequest;

    #setter for: Lcom/google/wireless/contacts/proto/Client$Request;->personRequest_:Lcom/google/wireless/contacts/proto/Client$PersonRequest;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Client$Request;->access$1202(Lcom/google/wireless/contacts/proto/Client$Request;Lcom/google/wireless/contacts/proto/Client$PersonRequest;)Lcom/google/wireless/contacts/proto/Client$PersonRequest;

    .line 658
    and-int/lit16 v3, v0, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_93

    .line 659
    or-int/lit16 v2, v2, 0x400

    .line 661
    :cond_93
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->profileRequest_:Lcom/google/wireless/contacts/proto/Client$ProfileRequest;

    #setter for: Lcom/google/wireless/contacts/proto/Client$Request;->profileRequest_:Lcom/google/wireless/contacts/proto/Client$ProfileRequest;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Client$Request;->access$1302(Lcom/google/wireless/contacts/proto/Client$Request;Lcom/google/wireless/contacts/proto/Client$ProfileRequest;)Lcom/google/wireless/contacts/proto/Client$ProfileRequest;

    .line 662
    and-int/lit16 v3, v0, 0x800

    const/16 v4, 0x800

    if-ne v3, v4, :cond_a0

    .line 663
    or-int/lit16 v2, v2, 0x800

    .line 665
    :cond_a0
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->blockUserRequest_:Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;

    #setter for: Lcom/google/wireless/contacts/proto/Client$Request;->blockUserRequest_:Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Client$Request;->access$1402(Lcom/google/wireless/contacts/proto/Client$Request;Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;)Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;

    .line 666
    and-int/lit16 v3, v0, 0x1000

    const/16 v4, 0x1000

    if-ne v3, v4, :cond_ad

    .line 667
    or-int/lit16 v2, v2, 0x1000

    .line 669
    :cond_ad
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->reportProfileRequest_:Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;

    #setter for: Lcom/google/wireless/contacts/proto/Client$Request;->reportProfileRequest_:Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Client$Request;->access$1502(Lcom/google/wireless/contacts/proto/Client$Request;Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;)Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;

    .line 670
    and-int/lit16 v3, v0, 0x2000

    const/16 v4, 0x2000

    if-ne v3, v4, :cond_ba

    .line 671
    or-int/lit16 v2, v2, 0x2000

    .line 673
    :cond_ba
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->mobileCircleMembersRequest_:Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;

    #setter for: Lcom/google/wireless/contacts/proto/Client$Request;->mobileCircleMembersRequest_:Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Client$Request;->access$1602(Lcom/google/wireless/contacts/proto/Client$Request;Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;)Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;

    .line 674
    and-int/lit16 v3, v0, 0x4000

    const/16 v4, 0x4000

    if-ne v3, v4, :cond_c7

    .line 675
    or-int/lit16 v2, v2, 0x4000

    .line 677
    :cond_c7
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->modifyCirclePropertiesRequest_:Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest;

    #setter for: Lcom/google/wireless/contacts/proto/Client$Request;->modifyCirclePropertiesRequest_:Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Client$Request;->access$1702(Lcom/google/wireless/contacts/proto/Client$Request;Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest;)Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest;

    .line 678
    and-int v3, v0, v5

    if-ne v3, v5, :cond_d1

    .line 679
    or-int/2addr v2, v5

    .line 681
    :cond_d1
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->modifyCircleMembershipRequest_:Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;

    #setter for: Lcom/google/wireless/contacts/proto/Client$Request;->modifyCircleMembershipRequest_:Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Client$Request;->access$1802(Lcom/google/wireless/contacts/proto/Client$Request;Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;)Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;

    .line 682
    #setter for: Lcom/google/wireless/contacts/proto/Client$Request;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/contacts/proto/Client$Request;->access$1902(Lcom/google/wireless/contacts/proto/Client$Request;I)I

    .line 683
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 536
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->clear()Lcom/google/wireless/contacts/proto/Client$Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 536
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->clear()Lcom/google/wireless/contacts/proto/Client$Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/contacts/proto/Client$Request$Builder;
    .registers 3

    .prologue
    .line 552
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 553
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->requestId_:Ljava/lang/Object;

    .line 554
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    .line 555
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->actionToken_:Ljava/lang/Object;

    .line 556
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    .line 557
    invoke-static {}, Lcom/google/wireless/contacts/proto/Integrations$Integration;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Integrations$Integration;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->integration_:Lcom/google/wireless/contacts/proto/Integrations$Integration;

    .line 558
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    .line 559
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->mobilePeopleSuggestionsRequest_:Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest;

    .line 560
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    .line 561
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->recordPeopleSuggestionRequest_:Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;

    .line 562
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    .line 563
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->mobileCirclesRequest_:Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;

    .line 564
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    .line 565
    invoke-static {}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->createCircleRequest_:Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;

    .line 566
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    .line 567
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->peoplelistRequest_:Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;

    .line 568
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    .line 569
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->publicProfilesRequest_:Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;

    .line 570
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    .line 571
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$PersonRequest;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$PersonRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->personRequest_:Lcom/google/wireless/contacts/proto/Client$PersonRequest;

    .line 572
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    .line 573
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$ProfileRequest;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$ProfileRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->profileRequest_:Lcom/google/wireless/contacts/proto/Client$ProfileRequest;

    .line 574
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    .line 575
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->blockUserRequest_:Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;

    .line 576
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    .line 577
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->reportProfileRequest_:Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;

    .line 578
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    .line 579
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->mobileCircleMembersRequest_:Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;

    .line 580
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    .line 581
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->modifyCirclePropertiesRequest_:Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest;

    .line 582
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    .line 583
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->modifyCircleMembershipRequest_:Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;

    .line 584
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    .line 585
    return-object p0
.end method

.method public clearActionToken()Lcom/google/wireless/contacts/proto/Client$Request$Builder;
    .registers 2

    .prologue
    .line 963
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    .line 964
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$Request;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Client$Request;->getActionToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->actionToken_:Ljava/lang/Object;

    .line 966
    return-object p0
.end method

.method public clearBlockUserRequest()Lcom/google/wireless/contacts/proto/Client$Request$Builder;
    .registers 2

    .prologue
    .line 1398
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->blockUserRequest_:Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;

    .line 1400
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    .line 1401
    return-object p0
.end method

.method public clearCreateCircleRequest()Lcom/google/wireless/contacts/proto/Client$Request$Builder;
    .registers 2

    .prologue
    .line 1183
    invoke-static {}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->createCircleRequest_:Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;

    .line 1185
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    .line 1186
    return-object p0
.end method

.method public clearIntegration()Lcom/google/wireless/contacts/proto/Client$Request$Builder;
    .registers 2

    .prologue
    .line 1011
    invoke-static {}, Lcom/google/wireless/contacts/proto/Integrations$Integration;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Integrations$Integration;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->integration_:Lcom/google/wireless/contacts/proto/Integrations$Integration;

    .line 1013
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    .line 1014
    return-object p0
.end method

.method public clearMobileCircleMembersRequest()Lcom/google/wireless/contacts/proto/Client$Request$Builder;
    .registers 2

    .prologue
    .line 1484
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->mobileCircleMembersRequest_:Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;

    .line 1486
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    .line 1487
    return-object p0
.end method

.method public clearMobileCirclesRequest()Lcom/google/wireless/contacts/proto/Client$Request$Builder;
    .registers 2

    .prologue
    .line 1140
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->mobileCirclesRequest_:Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;

    .line 1142
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    .line 1143
    return-object p0
.end method

.method public clearMobilePeopleSuggestionsRequest()Lcom/google/wireless/contacts/proto/Client$Request$Builder;
    .registers 2

    .prologue
    .line 1054
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->mobilePeopleSuggestionsRequest_:Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest;

    .line 1056
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    .line 1057
    return-object p0
.end method

.method public clearModifyCircleMembershipRequest()Lcom/google/wireless/contacts/proto/Client$Request$Builder;
    .registers 3

    .prologue
    .line 1570
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->modifyCircleMembershipRequest_:Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;

    .line 1572
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    .line 1573
    return-object p0
.end method

.method public clearModifyCirclePropertiesRequest()Lcom/google/wireless/contacts/proto/Client$Request$Builder;
    .registers 2

    .prologue
    .line 1527
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->modifyCirclePropertiesRequest_:Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest;

    .line 1529
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    .line 1530
    return-object p0
.end method

.method public clearPeoplelistRequest()Lcom/google/wireless/contacts/proto/Client$Request$Builder;
    .registers 2

    .prologue
    .line 1226
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->peoplelistRequest_:Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;

    .line 1228
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    .line 1229
    return-object p0
.end method

.method public clearPersonRequest()Lcom/google/wireless/contacts/proto/Client$Request$Builder;
    .registers 2

    .prologue
    .line 1312
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$PersonRequest;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$PersonRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->personRequest_:Lcom/google/wireless/contacts/proto/Client$PersonRequest;

    .line 1314
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    .line 1315
    return-object p0
.end method

.method public clearProfileRequest()Lcom/google/wireless/contacts/proto/Client$Request$Builder;
    .registers 2

    .prologue
    .line 1355
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$ProfileRequest;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$ProfileRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->profileRequest_:Lcom/google/wireless/contacts/proto/Client$ProfileRequest;

    .line 1357
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    .line 1358
    return-object p0
.end method

.method public clearPublicProfilesRequest()Lcom/google/wireless/contacts/proto/Client$Request$Builder;
    .registers 2

    .prologue
    .line 1269
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->publicProfilesRequest_:Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;

    .line 1271
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    .line 1272
    return-object p0
.end method

.method public clearRecordPeopleSuggestionRequest()Lcom/google/wireless/contacts/proto/Client$Request$Builder;
    .registers 2

    .prologue
    .line 1097
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->recordPeopleSuggestionRequest_:Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;

    .line 1099
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    .line 1100
    return-object p0
.end method

.method public clearReportProfileRequest()Lcom/google/wireless/contacts/proto/Client$Request$Builder;
    .registers 2

    .prologue
    .line 1441
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->reportProfileRequest_:Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;

    .line 1443
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    .line 1444
    return-object p0
.end method

.method public clearRequestId()Lcom/google/wireless/contacts/proto/Client$Request$Builder;
    .registers 2

    .prologue
    .line 927
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    .line 928
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$Request;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Client$Request;->getRequestId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->requestId_:Ljava/lang/Object;

    .line 930
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 536
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->clone()Lcom/google/wireless/contacts/proto/Client$Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 536
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->clone()Lcom/google/wireless/contacts/proto/Client$Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/contacts/proto/Client$Request$Builder;
    .registers 3

    .prologue
    .line 589
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->create()Lcom/google/wireless/contacts/proto/Client$Request$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Client$Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Client$Request;)Lcom/google/wireless/contacts/proto/Client$Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 536
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->clone()Lcom/google/wireless/contacts/proto/Client$Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getActionToken()Ljava/lang/String;
    .registers 4

    .prologue
    .line 944
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->actionToken_:Ljava/lang/Object;

    .line 945
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 946
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 947
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->actionToken_:Ljava/lang/Object;

    .line 950
    .end local v1           #s:Ljava/lang/String;
    :goto_e
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_e
.end method

.method public getBlockUserRequest()Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;
    .registers 2

    .prologue
    .line 1367
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->blockUserRequest_:Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;

    return-object v0
.end method

.method public getCreateCircleRequest()Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;
    .registers 2

    .prologue
    .line 1152
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->createCircleRequest_:Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 536
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$Request;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 536
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$Request;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$Request;
    .registers 2

    .prologue
    .line 593
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$Request;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$Request;

    move-result-object v0

    return-object v0
.end method

.method public getIntegration()Lcom/google/wireless/contacts/proto/Integrations$Integration;
    .registers 2

    .prologue
    .line 980
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->integration_:Lcom/google/wireless/contacts/proto/Integrations$Integration;

    return-object v0
.end method

.method public getMobileCircleMembersRequest()Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;
    .registers 2

    .prologue
    .line 1453
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->mobileCircleMembersRequest_:Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;

    return-object v0
.end method

.method public getMobileCirclesRequest()Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;
    .registers 2

    .prologue
    .line 1109
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->mobileCirclesRequest_:Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;

    return-object v0
.end method

.method public getMobilePeopleSuggestionsRequest()Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest;
    .registers 2

    .prologue
    .line 1023
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->mobilePeopleSuggestionsRequest_:Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest;

    return-object v0
.end method

.method public getModifyCircleMembershipRequest()Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;
    .registers 2

    .prologue
    .line 1539
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->modifyCircleMembershipRequest_:Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;

    return-object v0
.end method

.method public getModifyCirclePropertiesRequest()Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest;
    .registers 2

    .prologue
    .line 1496
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->modifyCirclePropertiesRequest_:Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest;

    return-object v0
.end method

.method public getPeoplelistRequest()Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;
    .registers 2

    .prologue
    .line 1195
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->peoplelistRequest_:Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;

    return-object v0
.end method

.method public getPersonRequest()Lcom/google/wireless/contacts/proto/Client$PersonRequest;
    .registers 2

    .prologue
    .line 1281
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->personRequest_:Lcom/google/wireless/contacts/proto/Client$PersonRequest;

    return-object v0
.end method

.method public getProfileRequest()Lcom/google/wireless/contacts/proto/Client$ProfileRequest;
    .registers 2

    .prologue
    .line 1324
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->profileRequest_:Lcom/google/wireless/contacts/proto/Client$ProfileRequest;

    return-object v0
.end method

.method public getPublicProfilesRequest()Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;
    .registers 2

    .prologue
    .line 1238
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->publicProfilesRequest_:Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;

    return-object v0
.end method

.method public getRecordPeopleSuggestionRequest()Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;
    .registers 2

    .prologue
    .line 1066
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->recordPeopleSuggestionRequest_:Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;

    return-object v0
.end method

.method public getReportProfileRequest()Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;
    .registers 2

    .prologue
    .line 1410
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->reportProfileRequest_:Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;

    return-object v0
.end method

.method public getRequestId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 908
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->requestId_:Ljava/lang/Object;

    .line 909
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 910
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 911
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->requestId_:Ljava/lang/Object;

    .line 914
    .end local v1           #s:Ljava/lang/String;
    :goto_e
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_e
.end method

.method public hasActionToken()Z
    .registers 3

    .prologue
    .line 941
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

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
    .line 1364
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

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
    .line 1149
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

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
    .line 977
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

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
    .line 1450
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

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
    .line 1106
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

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
    .line 1020
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

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

    .line 1536
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

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
    .line 1493
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

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
    .line 1192
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

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
    .line 1278
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

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
    .line 1321
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

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
    .line 1235
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

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
    .line 1063
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

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
    .line 1407
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

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

    .line 905
    iget v1, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 740
    const/4 v0, 0x1

    return v0
.end method

.method public mergeBlockUserRequest(Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;)Lcom/google/wireless/contacts/proto/Client$Request$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 1386
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->blockUserRequest_:Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;

    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 1388
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->blockUserRequest_:Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;

    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;->newBuilder(Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;)Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;)Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->blockUserRequest_:Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;

    .line 1394
    :goto_20
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    .line 1395
    return-object p0

    .line 1391
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->blockUserRequest_:Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;

    goto :goto_20
.end method

.method public mergeCreateCircleRequest(Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;)Lcom/google/wireless/contacts/proto/Client$Request$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 1171
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->createCircleRequest_:Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;

    invoke-static {}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 1173
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->createCircleRequest_:Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;

    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;->newBuilder(Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;)Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;)Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->createCircleRequest_:Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;

    .line 1179
    :goto_20
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    .line 1180
    return-object p0

    .line 1176
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->createCircleRequest_:Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;

    goto :goto_20
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 536
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Client$Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 536
    check-cast p1, Lcom/google/wireless/contacts/proto/Client$Request;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Client$Request;)Lcom/google/wireless/contacts/proto/Client$Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 536
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Client$Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Client$Request$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 748
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 749
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_1bc

    .line 754
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 756
    :sswitch_d
    return-object p0

    .line 761
    :sswitch_e
    iget v2, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    .line 762
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->requestId_:Ljava/lang/Object;

    goto :goto_0

    .line 766
    :sswitch_1b
    iget v2, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    .line 767
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->actionToken_:Ljava/lang/Object;

    goto :goto_0

    .line 771
    :sswitch_28
    invoke-static {}, Lcom/google/wireless/contacts/proto/Integrations$Integration;->newBuilder()Lcom/google/wireless/contacts/proto/Integrations$Integration$Builder;

    move-result-object v0

    .line 772
    .local v0, subBuilder:Lcom/google/wireless/contacts/proto/Integrations$Integration$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->hasIntegration()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 773
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->getIntegration()Lcom/google/wireless/contacts/proto/Integrations$Integration;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/contacts/proto/Integrations$Integration$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Integrations$Integration;)Lcom/google/wireless/contacts/proto/Integrations$Integration$Builder;

    .line 775
    :cond_39
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 776
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Integrations$Integration$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Integrations$Integration;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->setIntegration(Lcom/google/wireless/contacts/proto/Integrations$Integration;)Lcom/google/wireless/contacts/proto/Client$Request$Builder;

    goto :goto_0

    .line 780
    .end local v0           #subBuilder:Lcom/google/wireless/contacts/proto/Integrations$Integration$Builder;
    :sswitch_44
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest;->newBuilder()Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest$Builder;

    move-result-object v0

    .line 781
    .local v0, subBuilder:Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->hasMobilePeopleSuggestionsRequest()Z

    move-result v2

    if-eqz v2, :cond_55

    .line 782
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->getMobilePeopleSuggestionsRequest()Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest;)Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest$Builder;

    .line 784
    :cond_55
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 785
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->setMobilePeopleSuggestionsRequest(Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest;)Lcom/google/wireless/contacts/proto/Client$Request$Builder;

    goto :goto_0

    .line 789
    .end local v0           #subBuilder:Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest$Builder;
    :sswitch_60
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;->newBuilder()Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;

    move-result-object v0

    .line 790
    .local v0, subBuilder:Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->hasRecordPeopleSuggestionRequest()Z

    move-result v2

    if-eqz v2, :cond_71

    .line 791
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->getRecordPeopleSuggestionRequest()Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;)Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;

    .line 793
    :cond_71
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 794
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->setRecordPeopleSuggestionRequest(Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;)Lcom/google/wireless/contacts/proto/Client$Request$Builder;

    goto :goto_0

    .line 798
    .end local v0           #subBuilder:Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;
    :sswitch_7c
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;->newBuilder()Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;

    move-result-object v0

    .line 799
    .local v0, subBuilder:Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->hasMobileCirclesRequest()Z

    move-result v2

    if-eqz v2, :cond_8d

    .line 800
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->getMobileCirclesRequest()Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;)Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;

    .line 802
    :cond_8d
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 803
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->setMobileCirclesRequest(Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;)Lcom/google/wireless/contacts/proto/Client$Request$Builder;

    goto/16 :goto_0

    .line 807
    .end local v0           #subBuilder:Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;
    :sswitch_99
    invoke-static {}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;->newBuilder()Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;

    move-result-object v0

    .line 808
    .local v0, subBuilder:Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->hasCreateCircleRequest()Z

    move-result v2

    if-eqz v2, :cond_aa

    .line 809
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->getCreateCircleRequest()Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;)Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;

    .line 811
    :cond_aa
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 812
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->setCreateCircleRequest(Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;)Lcom/google/wireless/contacts/proto/Client$Request$Builder;

    goto/16 :goto_0

    .line 816
    .end local v0           #subBuilder:Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;
    :sswitch_b6
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;->newBuilder()Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;

    move-result-object v0

    .line 817
    .local v0, subBuilder:Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->hasPeoplelistRequest()Z

    move-result v2

    if-eqz v2, :cond_c7

    .line 818
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->getPeoplelistRequest()Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;)Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;

    .line 820
    :cond_c7
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 821
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->setPeoplelistRequest(Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;)Lcom/google/wireless/contacts/proto/Client$Request$Builder;

    goto/16 :goto_0

    .line 825
    .end local v0           #subBuilder:Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;
    :sswitch_d3
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;->newBuilder()Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;

    move-result-object v0

    .line 826
    .local v0, subBuilder:Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->hasPublicProfilesRequest()Z

    move-result v2

    if-eqz v2, :cond_e4

    .line 827
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->getPublicProfilesRequest()Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;)Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;

    .line 829
    :cond_e4
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 830
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->setPublicProfilesRequest(Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;)Lcom/google/wireless/contacts/proto/Client$Request$Builder;

    goto/16 :goto_0

    .line 834
    .end local v0           #subBuilder:Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;
    :sswitch_f0
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$PersonRequest;->newBuilder()Lcom/google/wireless/contacts/proto/Client$PersonRequest$Builder;

    move-result-object v0

    .line 835
    .local v0, subBuilder:Lcom/google/wireless/contacts/proto/Client$PersonRequest$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->hasPersonRequest()Z

    move-result v2

    if-eqz v2, :cond_101

    .line 836
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->getPersonRequest()Lcom/google/wireless/contacts/proto/Client$PersonRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/contacts/proto/Client$PersonRequest$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Client$PersonRequest;)Lcom/google/wireless/contacts/proto/Client$PersonRequest$Builder;

    .line 838
    :cond_101
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 839
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Client$PersonRequest$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Client$PersonRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->setPersonRequest(Lcom/google/wireless/contacts/proto/Client$PersonRequest;)Lcom/google/wireless/contacts/proto/Client$Request$Builder;

    goto/16 :goto_0

    .line 843
    .end local v0           #subBuilder:Lcom/google/wireless/contacts/proto/Client$PersonRequest$Builder;
    :sswitch_10d
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$ProfileRequest;->newBuilder()Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;

    move-result-object v0

    .line 844
    .local v0, subBuilder:Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->hasProfileRequest()Z

    move-result v2

    if-eqz v2, :cond_11e

    .line 845
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->getProfileRequest()Lcom/google/wireless/contacts/proto/Client$ProfileRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Client$ProfileRequest;)Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;

    .line 847
    :cond_11e
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 848
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Client$ProfileRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->setProfileRequest(Lcom/google/wireless/contacts/proto/Client$ProfileRequest;)Lcom/google/wireless/contacts/proto/Client$Request$Builder;

    goto/16 :goto_0

    .line 852
    .end local v0           #subBuilder:Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;
    :sswitch_12a
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;->newBuilder()Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;

    move-result-object v0

    .line 853
    .local v0, subBuilder:Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->hasBlockUserRequest()Z

    move-result v2

    if-eqz v2, :cond_13b

    .line 854
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->getBlockUserRequest()Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;)Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;

    .line 856
    :cond_13b
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 857
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->setBlockUserRequest(Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;)Lcom/google/wireless/contacts/proto/Client$Request$Builder;

    goto/16 :goto_0

    .line 861
    .end local v0           #subBuilder:Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;
    :sswitch_147
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;->newBuilder()Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;

    move-result-object v0

    .line 862
    .local v0, subBuilder:Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->hasReportProfileRequest()Z

    move-result v2

    if-eqz v2, :cond_158

    .line 863
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->getReportProfileRequest()Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;)Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;

    .line 865
    :cond_158
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 866
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->setReportProfileRequest(Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;)Lcom/google/wireless/contacts/proto/Client$Request$Builder;

    goto/16 :goto_0

    .line 870
    .end local v0           #subBuilder:Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;
    :sswitch_164
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;->newBuilder()Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$Builder;

    move-result-object v0

    .line 871
    .local v0, subBuilder:Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->hasMobileCircleMembersRequest()Z

    move-result v2

    if-eqz v2, :cond_175

    .line 872
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->getMobileCircleMembersRequest()Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;)Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$Builder;

    .line 874
    :cond_175
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 875
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->setMobileCircleMembersRequest(Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;)Lcom/google/wireless/contacts/proto/Client$Request$Builder;

    goto/16 :goto_0

    .line 879
    .end local v0           #subBuilder:Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$Builder;
    :sswitch_181
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest;->newBuilder()Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest$Builder;

    move-result-object v0

    .line 880
    .local v0, subBuilder:Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->hasModifyCirclePropertiesRequest()Z

    move-result v2

    if-eqz v2, :cond_192

    .line 881
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->getModifyCirclePropertiesRequest()Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest;)Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest$Builder;

    .line 883
    :cond_192
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 884
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->setModifyCirclePropertiesRequest(Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest;)Lcom/google/wireless/contacts/proto/Client$Request$Builder;

    goto/16 :goto_0

    .line 888
    .end local v0           #subBuilder:Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest$Builder;
    :sswitch_19e
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;->newBuilder()Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;

    move-result-object v0

    .line 889
    .local v0, subBuilder:Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->hasModifyCircleMembershipRequest()Z

    move-result v2

    if-eqz v2, :cond_1af

    .line 890
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->getModifyCircleMembershipRequest()Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;)Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;

    .line 892
    :cond_1af
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 893
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->setModifyCircleMembershipRequest(Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;)Lcom/google/wireless/contacts/proto/Client$Request$Builder;

    goto/16 :goto_0

    .line 749
    nop

    :sswitch_data_1bc
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1b
        0x1a -> :sswitch_28
        0x22 -> :sswitch_44
        0x2a -> :sswitch_60
        0x32 -> :sswitch_7c
        0x3a -> :sswitch_99
        0x42 -> :sswitch_b6
        0x4a -> :sswitch_d3
        0x52 -> :sswitch_f0
        0x5a -> :sswitch_10d
        0x62 -> :sswitch_12a
        0x6a -> :sswitch_147
        0x72 -> :sswitch_164
        0x7a -> :sswitch_181
        0x82 -> :sswitch_19e
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/contacts/proto/Client$Request;)Lcom/google/wireless/contacts/proto/Client$Request$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 687
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$Request;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$Request;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 736
    :cond_6
    :goto_6
    return-object p0

    .line 688
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$Request;->hasRequestId()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 689
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$Request;->getRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->setRequestId(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Client$Request$Builder;

    .line 691
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$Request;->hasActionToken()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 692
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$Request;->getActionToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->setActionToken(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Client$Request$Builder;

    .line 694
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$Request;->hasIntegration()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 695
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$Request;->getIntegration()Lcom/google/wireless/contacts/proto/Integrations$Integration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->mergeIntegration(Lcom/google/wireless/contacts/proto/Integrations$Integration;)Lcom/google/wireless/contacts/proto/Client$Request$Builder;

    .line 697
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$Request;->hasMobilePeopleSuggestionsRequest()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 698
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$Request;->getMobilePeopleSuggestionsRequest()Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->mergeMobilePeopleSuggestionsRequest(Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest;)Lcom/google/wireless/contacts/proto/Client$Request$Builder;

    .line 700
    :cond_3b
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$Request;->hasRecordPeopleSuggestionRequest()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 701
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$Request;->getRecordPeopleSuggestionRequest()Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->mergeRecordPeopleSuggestionRequest(Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;)Lcom/google/wireless/contacts/proto/Client$Request$Builder;

    .line 703
    :cond_48
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$Request;->hasMobileCirclesRequest()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 704
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$Request;->getMobileCirclesRequest()Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->mergeMobileCirclesRequest(Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;)Lcom/google/wireless/contacts/proto/Client$Request$Builder;

    .line 706
    :cond_55
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$Request;->hasCreateCircleRequest()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 707
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$Request;->getCreateCircleRequest()Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->mergeCreateCircleRequest(Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;)Lcom/google/wireless/contacts/proto/Client$Request$Builder;

    .line 709
    :cond_62
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$Request;->hasPeoplelistRequest()Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 710
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$Request;->getPeoplelistRequest()Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->mergePeoplelistRequest(Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;)Lcom/google/wireless/contacts/proto/Client$Request$Builder;

    .line 712
    :cond_6f
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$Request;->hasPublicProfilesRequest()Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 713
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$Request;->getPublicProfilesRequest()Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->mergePublicProfilesRequest(Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;)Lcom/google/wireless/contacts/proto/Client$Request$Builder;

    .line 715
    :cond_7c
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$Request;->hasPersonRequest()Z

    move-result v0

    if-eqz v0, :cond_89

    .line 716
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$Request;->getPersonRequest()Lcom/google/wireless/contacts/proto/Client$PersonRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->mergePersonRequest(Lcom/google/wireless/contacts/proto/Client$PersonRequest;)Lcom/google/wireless/contacts/proto/Client$Request$Builder;

    .line 718
    :cond_89
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$Request;->hasProfileRequest()Z

    move-result v0

    if-eqz v0, :cond_96

    .line 719
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$Request;->getProfileRequest()Lcom/google/wireless/contacts/proto/Client$ProfileRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->mergeProfileRequest(Lcom/google/wireless/contacts/proto/Client$ProfileRequest;)Lcom/google/wireless/contacts/proto/Client$Request$Builder;

    .line 721
    :cond_96
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$Request;->hasBlockUserRequest()Z

    move-result v0

    if-eqz v0, :cond_a3

    .line 722
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$Request;->getBlockUserRequest()Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->mergeBlockUserRequest(Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;)Lcom/google/wireless/contacts/proto/Client$Request$Builder;

    .line 724
    :cond_a3
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$Request;->hasReportProfileRequest()Z

    move-result v0

    if-eqz v0, :cond_b0

    .line 725
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$Request;->getReportProfileRequest()Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->mergeReportProfileRequest(Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;)Lcom/google/wireless/contacts/proto/Client$Request$Builder;

    .line 727
    :cond_b0
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$Request;->hasMobileCircleMembersRequest()Z

    move-result v0

    if-eqz v0, :cond_bd

    .line 728
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$Request;->getMobileCircleMembersRequest()Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->mergeMobileCircleMembersRequest(Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;)Lcom/google/wireless/contacts/proto/Client$Request$Builder;

    .line 730
    :cond_bd
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$Request;->hasModifyCirclePropertiesRequest()Z

    move-result v0

    if-eqz v0, :cond_ca

    .line 731
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$Request;->getModifyCirclePropertiesRequest()Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->mergeModifyCirclePropertiesRequest(Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest;)Lcom/google/wireless/contacts/proto/Client$Request$Builder;

    .line 733
    :cond_ca
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$Request;->hasModifyCircleMembershipRequest()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 734
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$Request;->getModifyCircleMembershipRequest()Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->mergeModifyCircleMembershipRequest(Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;)Lcom/google/wireless/contacts/proto/Client$Request$Builder;

    goto/16 :goto_6
.end method

.method public mergeIntegration(Lcom/google/wireless/contacts/proto/Integrations$Integration;)Lcom/google/wireless/contacts/proto/Client$Request$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 999
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->integration_:Lcom/google/wireless/contacts/proto/Integrations$Integration;

    invoke-static {}, Lcom/google/wireless/contacts/proto/Integrations$Integration;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Integrations$Integration;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 1001
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->integration_:Lcom/google/wireless/contacts/proto/Integrations$Integration;

    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Integrations$Integration;->newBuilder(Lcom/google/wireless/contacts/proto/Integrations$Integration;)Lcom/google/wireless/contacts/proto/Integrations$Integration$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/contacts/proto/Integrations$Integration$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Integrations$Integration;)Lcom/google/wireless/contacts/proto/Integrations$Integration$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Integrations$Integration$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Integrations$Integration;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->integration_:Lcom/google/wireless/contacts/proto/Integrations$Integration;

    .line 1007
    :goto_1f
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    .line 1008
    return-object p0

    .line 1004
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->integration_:Lcom/google/wireless/contacts/proto/Integrations$Integration;

    goto :goto_1f
.end method

.method public mergeMobileCircleMembersRequest(Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;)Lcom/google/wireless/contacts/proto/Client$Request$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 1472
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->mobileCircleMembersRequest_:Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;

    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 1474
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->mobileCircleMembersRequest_:Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;

    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;->newBuilder(Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;)Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;)Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->mobileCircleMembersRequest_:Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;

    .line 1480
    :goto_20
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    .line 1481
    return-object p0

    .line 1477
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->mobileCircleMembersRequest_:Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;

    goto :goto_20
.end method

.method public mergeMobileCirclesRequest(Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;)Lcom/google/wireless/contacts/proto/Client$Request$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 1128
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->mobileCirclesRequest_:Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;

    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 1130
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->mobileCirclesRequest_:Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;

    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;->newBuilder(Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;)Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;)Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->mobileCirclesRequest_:Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;

    .line 1136
    :goto_20
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    .line 1137
    return-object p0

    .line 1133
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->mobileCirclesRequest_:Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;

    goto :goto_20
.end method

.method public mergeMobilePeopleSuggestionsRequest(Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest;)Lcom/google/wireless/contacts/proto/Client$Request$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 1042
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->mobilePeopleSuggestionsRequest_:Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest;

    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 1044
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->mobilePeopleSuggestionsRequest_:Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest;

    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest;->newBuilder(Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest;)Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest;)Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->mobilePeopleSuggestionsRequest_:Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest;

    .line 1050
    :goto_20
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    .line 1051
    return-object p0

    .line 1047
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->mobilePeopleSuggestionsRequest_:Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest;

    goto :goto_20
.end method

.method public mergeModifyCircleMembershipRequest(Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;)Lcom/google/wireless/contacts/proto/Client$Request$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const v2, 0x8000

    .line 1558
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_26

    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->modifyCircleMembershipRequest_:Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;

    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 1560
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->modifyCircleMembershipRequest_:Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;

    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;->newBuilder(Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;)Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;)Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->modifyCircleMembershipRequest_:Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;

    .line 1566
    :goto_20
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    .line 1567
    return-object p0

    .line 1563
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->modifyCircleMembershipRequest_:Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;

    goto :goto_20
.end method

.method public mergeModifyCirclePropertiesRequest(Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest;)Lcom/google/wireless/contacts/proto/Client$Request$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 1515
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->modifyCirclePropertiesRequest_:Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest;

    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 1517
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->modifyCirclePropertiesRequest_:Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest;

    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest;->newBuilder(Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest;)Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest;)Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->modifyCirclePropertiesRequest_:Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest;

    .line 1523
    :goto_20
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    .line 1524
    return-object p0

    .line 1520
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->modifyCirclePropertiesRequest_:Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest;

    goto :goto_20
.end method

.method public mergePeoplelistRequest(Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;)Lcom/google/wireless/contacts/proto/Client$Request$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 1214
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->peoplelistRequest_:Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;

    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 1216
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->peoplelistRequest_:Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;

    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;->newBuilder(Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;)Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;)Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->peoplelistRequest_:Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;

    .line 1222
    :goto_20
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    .line 1223
    return-object p0

    .line 1219
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->peoplelistRequest_:Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;

    goto :goto_20
.end method

.method public mergePersonRequest(Lcom/google/wireless/contacts/proto/Client$PersonRequest;)Lcom/google/wireless/contacts/proto/Client$Request$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 1300
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->personRequest_:Lcom/google/wireless/contacts/proto/Client$PersonRequest;

    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$PersonRequest;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$PersonRequest;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 1302
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->personRequest_:Lcom/google/wireless/contacts/proto/Client$PersonRequest;

    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Client$PersonRequest;->newBuilder(Lcom/google/wireless/contacts/proto/Client$PersonRequest;)Lcom/google/wireless/contacts/proto/Client$PersonRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/contacts/proto/Client$PersonRequest$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Client$PersonRequest;)Lcom/google/wireless/contacts/proto/Client$PersonRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Client$PersonRequest$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Client$PersonRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->personRequest_:Lcom/google/wireless/contacts/proto/Client$PersonRequest;

    .line 1308
    :goto_20
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    .line 1309
    return-object p0

    .line 1305
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->personRequest_:Lcom/google/wireless/contacts/proto/Client$PersonRequest;

    goto :goto_20
.end method

.method public mergeProfileRequest(Lcom/google/wireless/contacts/proto/Client$ProfileRequest;)Lcom/google/wireless/contacts/proto/Client$Request$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 1343
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->profileRequest_:Lcom/google/wireless/contacts/proto/Client$ProfileRequest;

    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$ProfileRequest;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$ProfileRequest;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 1345
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->profileRequest_:Lcom/google/wireless/contacts/proto/Client$ProfileRequest;

    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Client$ProfileRequest;->newBuilder(Lcom/google/wireless/contacts/proto/Client$ProfileRequest;)Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Client$ProfileRequest;)Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Client$ProfileRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->profileRequest_:Lcom/google/wireless/contacts/proto/Client$ProfileRequest;

    .line 1351
    :goto_20
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    .line 1352
    return-object p0

    .line 1348
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->profileRequest_:Lcom/google/wireless/contacts/proto/Client$ProfileRequest;

    goto :goto_20
.end method

.method public mergePublicProfilesRequest(Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;)Lcom/google/wireless/contacts/proto/Client$Request$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 1257
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->publicProfilesRequest_:Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;

    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 1259
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->publicProfilesRequest_:Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;

    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;->newBuilder(Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;)Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;)Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->publicProfilesRequest_:Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;

    .line 1265
    :goto_20
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    .line 1266
    return-object p0

    .line 1262
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->publicProfilesRequest_:Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;

    goto :goto_20
.end method

.method public mergeRecordPeopleSuggestionRequest(Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;)Lcom/google/wireless/contacts/proto/Client$Request$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 1085
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->recordPeopleSuggestionRequest_:Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;

    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 1087
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->recordPeopleSuggestionRequest_:Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;

    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;->newBuilder(Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;)Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;)Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->recordPeopleSuggestionRequest_:Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;

    .line 1093
    :goto_20
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    .line 1094
    return-object p0

    .line 1090
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->recordPeopleSuggestionRequest_:Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;

    goto :goto_20
.end method

.method public mergeReportProfileRequest(Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;)Lcom/google/wireless/contacts/proto/Client$Request$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 1429
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->reportProfileRequest_:Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;

    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 1431
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->reportProfileRequest_:Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;

    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;->newBuilder(Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;)Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;)Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->reportProfileRequest_:Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;

    .line 1437
    :goto_20
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    .line 1438
    return-object p0

    .line 1434
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->reportProfileRequest_:Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;

    goto :goto_20
.end method

.method public setActionToken(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Client$Request$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 954
    if-nez p1, :cond_8

    .line 955
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 957
    :cond_8
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    .line 958
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->actionToken_:Ljava/lang/Object;

    .line 960
    return-object p0
.end method

.method public setBlockUserRequest(Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;)Lcom/google/wireless/contacts/proto/Client$Request$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 1380
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;->build()Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->blockUserRequest_:Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;

    .line 1382
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    .line 1383
    return-object p0
.end method

.method public setBlockUserRequest(Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;)Lcom/google/wireless/contacts/proto/Client$Request$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1370
    if-nez p1, :cond_8

    .line 1371
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1373
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->blockUserRequest_:Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;

    .line 1375
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    .line 1376
    return-object p0
.end method

.method public setCreateCircleRequest(Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;)Lcom/google/wireless/contacts/proto/Client$Request$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 1165
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->build()Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->createCircleRequest_:Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;

    .line 1167
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    .line 1168
    return-object p0
.end method

.method public setCreateCircleRequest(Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;)Lcom/google/wireless/contacts/proto/Client$Request$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1155
    if-nez p1, :cond_8

    .line 1156
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1158
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->createCircleRequest_:Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;

    .line 1160
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    .line 1161
    return-object p0
.end method

.method public setIntegration(Lcom/google/wireless/contacts/proto/Integrations$Integration$Builder;)Lcom/google/wireless/contacts/proto/Client$Request$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 993
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Integrations$Integration$Builder;->build()Lcom/google/wireless/contacts/proto/Integrations$Integration;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->integration_:Lcom/google/wireless/contacts/proto/Integrations$Integration;

    .line 995
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    .line 996
    return-object p0
.end method

.method public setIntegration(Lcom/google/wireless/contacts/proto/Integrations$Integration;)Lcom/google/wireless/contacts/proto/Client$Request$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 983
    if-nez p1, :cond_8

    .line 984
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 986
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->integration_:Lcom/google/wireless/contacts/proto/Integrations$Integration;

    .line 988
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    .line 989
    return-object p0
.end method

.method public setMobileCircleMembersRequest(Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$Builder;)Lcom/google/wireless/contacts/proto/Client$Request$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 1466
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$Builder;->build()Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->mobileCircleMembersRequest_:Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;

    .line 1468
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    .line 1469
    return-object p0
.end method

.method public setMobileCircleMembersRequest(Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;)Lcom/google/wireless/contacts/proto/Client$Request$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1456
    if-nez p1, :cond_8

    .line 1457
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1459
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->mobileCircleMembersRequest_:Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;

    .line 1461
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    .line 1462
    return-object p0
.end method

.method public setMobileCirclesRequest(Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;)Lcom/google/wireless/contacts/proto/Client$Request$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 1122
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;->build()Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->mobileCirclesRequest_:Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;

    .line 1124
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    .line 1125
    return-object p0
.end method

.method public setMobileCirclesRequest(Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;)Lcom/google/wireless/contacts/proto/Client$Request$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1112
    if-nez p1, :cond_8

    .line 1113
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1115
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->mobileCirclesRequest_:Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;

    .line 1117
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    .line 1118
    return-object p0
.end method

.method public setMobilePeopleSuggestionsRequest(Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest$Builder;)Lcom/google/wireless/contacts/proto/Client$Request$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 1036
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest$Builder;->build()Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->mobilePeopleSuggestionsRequest_:Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest;

    .line 1038
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    .line 1039
    return-object p0
.end method

.method public setMobilePeopleSuggestionsRequest(Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest;)Lcom/google/wireless/contacts/proto/Client$Request$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1026
    if-nez p1, :cond_8

    .line 1027
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1029
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->mobilePeopleSuggestionsRequest_:Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest;

    .line 1031
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    .line 1032
    return-object p0
.end method

.method public setModifyCircleMembershipRequest(Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;)Lcom/google/wireless/contacts/proto/Client$Request$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 1552
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;->build()Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->modifyCircleMembershipRequest_:Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;

    .line 1554
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    .line 1555
    return-object p0
.end method

.method public setModifyCircleMembershipRequest(Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;)Lcom/google/wireless/contacts/proto/Client$Request$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 1542
    if-nez p1, :cond_8

    .line 1543
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1545
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->modifyCircleMembershipRequest_:Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;

    .line 1547
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    .line 1548
    return-object p0
.end method

.method public setModifyCirclePropertiesRequest(Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest$Builder;)Lcom/google/wireless/contacts/proto/Client$Request$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 1509
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest$Builder;->build()Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->modifyCirclePropertiesRequest_:Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest;

    .line 1511
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    .line 1512
    return-object p0
.end method

.method public setModifyCirclePropertiesRequest(Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest;)Lcom/google/wireless/contacts/proto/Client$Request$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1499
    if-nez p1, :cond_8

    .line 1500
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1502
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->modifyCirclePropertiesRequest_:Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest;

    .line 1504
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    .line 1505
    return-object p0
.end method

.method public setPeoplelistRequest(Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;)Lcom/google/wireless/contacts/proto/Client$Request$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 1208
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->build()Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->peoplelistRequest_:Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;

    .line 1210
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    .line 1211
    return-object p0
.end method

.method public setPeoplelistRequest(Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;)Lcom/google/wireless/contacts/proto/Client$Request$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1198
    if-nez p1, :cond_8

    .line 1199
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1201
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->peoplelistRequest_:Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;

    .line 1203
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    .line 1204
    return-object p0
.end method

.method public setPersonRequest(Lcom/google/wireless/contacts/proto/Client$PersonRequest$Builder;)Lcom/google/wireless/contacts/proto/Client$Request$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 1294
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$PersonRequest$Builder;->build()Lcom/google/wireless/contacts/proto/Client$PersonRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->personRequest_:Lcom/google/wireless/contacts/proto/Client$PersonRequest;

    .line 1296
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    .line 1297
    return-object p0
.end method

.method public setPersonRequest(Lcom/google/wireless/contacts/proto/Client$PersonRequest;)Lcom/google/wireless/contacts/proto/Client$Request$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1284
    if-nez p1, :cond_8

    .line 1285
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1287
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->personRequest_:Lcom/google/wireless/contacts/proto/Client$PersonRequest;

    .line 1289
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    .line 1290
    return-object p0
.end method

.method public setProfileRequest(Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;)Lcom/google/wireless/contacts/proto/Client$Request$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 1337
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;->build()Lcom/google/wireless/contacts/proto/Client$ProfileRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->profileRequest_:Lcom/google/wireless/contacts/proto/Client$ProfileRequest;

    .line 1339
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    .line 1340
    return-object p0
.end method

.method public setProfileRequest(Lcom/google/wireless/contacts/proto/Client$ProfileRequest;)Lcom/google/wireless/contacts/proto/Client$Request$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1327
    if-nez p1, :cond_8

    .line 1328
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1330
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->profileRequest_:Lcom/google/wireless/contacts/proto/Client$ProfileRequest;

    .line 1332
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    .line 1333
    return-object p0
.end method

.method public setPublicProfilesRequest(Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;)Lcom/google/wireless/contacts/proto/Client$Request$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 1251
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;->build()Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->publicProfilesRequest_:Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;

    .line 1253
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    .line 1254
    return-object p0
.end method

.method public setPublicProfilesRequest(Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;)Lcom/google/wireless/contacts/proto/Client$Request$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1241
    if-nez p1, :cond_8

    .line 1242
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1244
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->publicProfilesRequest_:Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;

    .line 1246
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    .line 1247
    return-object p0
.end method

.method public setRecordPeopleSuggestionRequest(Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;)Lcom/google/wireless/contacts/proto/Client$Request$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 1079
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;->build()Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->recordPeopleSuggestionRequest_:Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;

    .line 1081
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    .line 1082
    return-object p0
.end method

.method public setRecordPeopleSuggestionRequest(Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;)Lcom/google/wireless/contacts/proto/Client$Request$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1069
    if-nez p1, :cond_8

    .line 1070
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1072
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->recordPeopleSuggestionRequest_:Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;

    .line 1074
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    .line 1075
    return-object p0
.end method

.method public setReportProfileRequest(Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;)Lcom/google/wireless/contacts/proto/Client$Request$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 1423
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;->build()Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->reportProfileRequest_:Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;

    .line 1425
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    .line 1426
    return-object p0
.end method

.method public setReportProfileRequest(Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;)Lcom/google/wireless/contacts/proto/Client$Request$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1413
    if-nez p1, :cond_8

    .line 1414
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1416
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->reportProfileRequest_:Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;

    .line 1418
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    .line 1419
    return-object p0
.end method

.method public setRequestId(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Client$Request$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 918
    if-nez p1, :cond_8

    .line 919
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 921
    :cond_8
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->bitField0_:I

    .line 922
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$Request$Builder;->requestId_:Ljava/lang/Object;

    .line 924
    return-object p0
.end method
