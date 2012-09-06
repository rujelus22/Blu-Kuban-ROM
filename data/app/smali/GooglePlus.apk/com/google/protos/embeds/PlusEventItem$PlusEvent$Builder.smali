.class public final Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "PlusEventItem.java"

# interfaces
.implements Lcom/google/protos/embeds/PlusEventItem$PlusEventOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/embeds/PlusEventItem$PlusEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/embeds/PlusEventItem$PlusEvent;",
        "Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;",
        ">;",
        "Lcom/google/protos/embeds/PlusEventItem$PlusEventOrBuilder;"
    }
.end annotation


# instance fields
.field private abuseStatus_:Lcom/google/protos/embeds/PlusEventItem$PlusEvent$AbuseStatus;

.field private bitField0_:I

.field private creatorObfuscatedId_:Ljava/lang/Object;

.field private creator_:Lcom/google/protos/embed/PersonItem$Person;

.field private deprecated11_:Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;

.field private deprecated6_:Ljava/lang/Object;

.field private deprecated9_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/embeds/PlusEventItem$Invitee;",
            ">;"
        }
    .end annotation
.end field

.field private description_:Ljava/lang/Object;

.field private displayContent_:Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;

.field private endDate_:Ljava/lang/Object;

.field private endTime_:Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;

.field private eventOptions_:Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;

.field private hangoutInfo_:Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;

.field private id_:Ljava/lang/Object;

.field private inviteeSummary_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;",
            ">;"
        }
    .end annotation
.end field

.field private isBroadcastView_:Z

.field private isPublic_:Z

.field private location_:Lcom/google/protos/embed/place/PlaceItem$Place;

.field private name_:Ljava/lang/Object;

.field private photoContributor_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/embeds/PlusEventItem$Invitee;",
            ">;"
        }
    .end annotation
.end field

.field private startDate_:Ljava/lang/Object;

.field private startTime_:Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;

.field private themeSpecification_:Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;

.field private theme_:Lcom/google/apps/people/events/proto/EventsCommonData$Theme;

.field private thirdPartyInfo_:Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;

.field private url_:Ljava/lang/Object;

.field private viewerInfo_:Lcom/google/protos/embeds/PlusEventItem$Invitee;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 980
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 1505
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->id_:Ljava/lang/Object;

    .line 1541
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->name_:Ljava/lang/Object;

    .line 1577
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->description_:Ljava/lang/Object;

    .line 1613
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->startDate_:Ljava/lang/Object;

    .line 1649
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->endDate_:Ljava/lang/Object;

    .line 1685
    invoke-static {}, Lcom/google/protos/embed/place/PlaceItem$Place;->getDefaultInstance()Lcom/google/protos/embed/place/PlaceItem$Place;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->location_:Lcom/google/protos/embed/place/PlaceItem$Place;

    .line 1728
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->url_:Ljava/lang/Object;

    .line 1764
    invoke-static {}, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;->getDefaultInstance()Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->eventOptions_:Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;

    .line 1807
    invoke-static {}, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;->getDefaultInstance()Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->startTime_:Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;

    .line 1850
    invoke-static {}, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;->getDefaultInstance()Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->endTime_:Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;

    .line 1893
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->creatorObfuscatedId_:Ljava/lang/Object;

    .line 1929
    invoke-static {}, Lcom/google/protos/embed/PersonItem$Person;->getDefaultInstance()Lcom/google/protos/embed/PersonItem$Person;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->creator_:Lcom/google/protos/embed/PersonItem$Person;

    .line 1972
    invoke-static {}, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;->getDefaultInstance()Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->displayContent_:Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;

    .line 2015
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->inviteeSummary_:Ljava/util/List;

    .line 2104
    invoke-static {}, Lcom/google/apps/people/events/proto/EventsCommonData$Theme;->getDefaultInstance()Lcom/google/apps/people/events/proto/EventsCommonData$Theme;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->theme_:Lcom/google/apps/people/events/proto/EventsCommonData$Theme;

    .line 2147
    invoke-static {}, Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;->getDefaultInstance()Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->themeSpecification_:Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;

    .line 2190
    invoke-static {}, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;->getDefaultInstance()Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->thirdPartyInfo_:Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;

    .line 2233
    invoke-static {}, Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;->getDefaultInstance()Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->hangoutInfo_:Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;

    .line 2276
    invoke-static {}, Lcom/google/protos/embeds/PlusEventItem$Invitee;->getDefaultInstance()Lcom/google/protos/embeds/PlusEventItem$Invitee;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->viewerInfo_:Lcom/google/protos/embeds/PlusEventItem$Invitee;

    .line 2361
    sget-object v0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$AbuseStatus;->NOT_REPORTED:Lcom/google/protos/embeds/PlusEventItem$PlusEvent$AbuseStatus;

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->abuseStatus_:Lcom/google/protos/embeds/PlusEventItem$PlusEvent$AbuseStatus;

    .line 2385
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->photoContributor_:Ljava/util/List;

    .line 2474
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->deprecated6_:Ljava/lang/Object;

    .line 2510
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->deprecated9_:Ljava/util/List;

    .line 2599
    invoke-static {}, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;->getDefaultInstance()Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->deprecated11_:Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;

    .line 981
    invoke-direct {p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->maybeForceBuilderInitialization()V

    .line 982
    return-void
.end method

.method static synthetic access$100()Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;
    .registers 1

    .prologue
    .line 975
    invoke-static {}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->create()Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;
    .registers 1

    .prologue
    .line 987
    new-instance v0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;

    invoke-direct {v0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;-><init>()V

    return-object v0
.end method

.method private ensureDeprecated9IsMutable()V
    .registers 4

    .prologue
    const/high16 v2, 0x100

    .line 2513
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-eq v0, v2, :cond_15

    .line 2514
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->deprecated9_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->deprecated9_:Ljava/util/List;

    .line 2515
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    .line 2517
    :cond_15
    return-void
.end method

.method private ensureInviteeSummaryIsMutable()V
    .registers 3

    .prologue
    .line 2018
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-eq v0, v1, :cond_17

    .line 2019
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->inviteeSummary_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->inviteeSummary_:Ljava/util/List;

    .line 2020
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    .line 2022
    :cond_17
    return-void
.end method

.method private ensurePhotoContributorIsMutable()V
    .registers 4

    .prologue
    const/high16 v2, 0x40

    .line 2388
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-eq v0, v2, :cond_15

    .line 2389
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->photoContributor_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->photoContributor_:Ljava/util/List;

    .line 2390
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    .line 2392
    :cond_15
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 985
    return-void
.end method


# virtual methods
.method public addDeprecated9(Lcom/google/protos/embeds/PlusEventItem$Invitee;)Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;
    .registers 3
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2546
    if-nez p1, :cond_8

    .line 2547
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2549
    :cond_8
    invoke-direct {p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->ensureDeprecated9IsMutable()V

    .line 2550
    iget-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->deprecated9_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2552
    return-object p0
.end method

.method public addInviteeSummary(Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;)Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 2051
    if-nez p1, :cond_8

    .line 2052
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2054
    :cond_8
    invoke-direct {p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->ensureInviteeSummaryIsMutable()V

    .line 2055
    iget-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->inviteeSummary_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2057
    return-object p0
.end method

.method public addPhotoContributor(Lcom/google/protos/embeds/PlusEventItem$Invitee;)Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 2421
    if-nez p1, :cond_8

    .line 2422
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2424
    :cond_8
    invoke-direct {p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->ensurePhotoContributorIsMutable()V

    .line 2425
    iget-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->photoContributor_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2427
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 975
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->build()Lcom/google/protos/embeds/PlusEventItem$PlusEvent;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/embeds/PlusEventItem$PlusEvent;
    .registers 3

    .prologue
    .line 1056
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->buildPartial()Lcom/google/protos/embeds/PlusEventItem$PlusEvent;

    move-result-object v0

    .line 1057
    .local v0, result:Lcom/google/protos/embeds/PlusEventItem$PlusEvent;
    invoke-virtual {v0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 1058
    invoke-static {v0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 1060
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 975
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->buildPartial()Lcom/google/protos/embeds/PlusEventItem$PlusEvent;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/embeds/PlusEventItem$PlusEvent;
    .registers 11

    .prologue
    const/high16 v9, 0x8

    const/high16 v8, 0x4

    const/high16 v7, 0x2

    const/high16 v6, 0x1

    const v5, 0x8000

    .line 1074
    new-instance v1, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;-><init>(Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;Lcom/google/protos/embeds/PlusEventItem$1;)V

    .line 1075
    .local v1, result:Lcom/google/protos/embeds/PlusEventItem$PlusEvent;
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    .line 1076
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 1077
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1b

    .line 1078
    or-int/lit8 v2, v2, 0x1

    .line 1080
    :cond_1b
    iget-object v3, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->id_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->id_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->access$302(Lcom/google/protos/embeds/PlusEventItem$PlusEvent;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1081
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_27

    .line 1082
    or-int/lit8 v2, v2, 0x2

    .line 1084
    :cond_27
    iget-object v3, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->name_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->name_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->access$402(Lcom/google/protos/embeds/PlusEventItem$PlusEvent;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1085
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_33

    .line 1086
    or-int/lit8 v2, v2, 0x4

    .line 1088
    :cond_33
    iget-object v3, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->description_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->description_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->access$502(Lcom/google/protos/embeds/PlusEventItem$PlusEvent;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1089
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_40

    .line 1090
    or-int/lit8 v2, v2, 0x8

    .line 1092
    :cond_40
    iget-object v3, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->startDate_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->startDate_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->access$602(Lcom/google/protos/embeds/PlusEventItem$PlusEvent;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1093
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4d

    .line 1094
    or-int/lit8 v2, v2, 0x10

    .line 1096
    :cond_4d
    iget-object v3, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->endDate_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->endDate_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->access$702(Lcom/google/protos/embeds/PlusEventItem$PlusEvent;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1097
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5a

    .line 1098
    or-int/lit8 v2, v2, 0x20

    .line 1100
    :cond_5a
    iget-object v3, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->location_:Lcom/google/protos/embed/place/PlaceItem$Place;

    #setter for: Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->location_:Lcom/google/protos/embed/place/PlaceItem$Place;
    invoke-static {v1, v3}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->access$802(Lcom/google/protos/embeds/PlusEventItem$PlusEvent;Lcom/google/protos/embed/place/PlaceItem$Place;)Lcom/google/protos/embed/place/PlaceItem$Place;

    .line 1101
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_67

    .line 1102
    or-int/lit8 v2, v2, 0x40

    .line 1104
    :cond_67
    iget-object v3, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->url_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->url_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->access$902(Lcom/google/protos/embeds/PlusEventItem$PlusEvent;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1105
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_74

    .line 1106
    or-int/lit16 v2, v2, 0x80

    .line 1108
    :cond_74
    iget-object v3, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->eventOptions_:Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;

    #setter for: Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->eventOptions_:Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;
    invoke-static {v1, v3}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->access$1002(Lcom/google/protos/embeds/PlusEventItem$PlusEvent;Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;)Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;

    .line 1109
    and-int/lit16 v3, v0, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_81

    .line 1110
    or-int/lit16 v2, v2, 0x100

    .line 1112
    :cond_81
    iget-object v3, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->startTime_:Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;

    #setter for: Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->startTime_:Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;
    invoke-static {v1, v3}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->access$1102(Lcom/google/protos/embeds/PlusEventItem$PlusEvent;Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;)Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;

    .line 1113
    and-int/lit16 v3, v0, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_8e

    .line 1114
    or-int/lit16 v2, v2, 0x200

    .line 1116
    :cond_8e
    iget-object v3, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->endTime_:Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;

    #setter for: Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->endTime_:Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;
    invoke-static {v1, v3}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->access$1202(Lcom/google/protos/embeds/PlusEventItem$PlusEvent;Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;)Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;

    .line 1117
    and-int/lit16 v3, v0, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_9b

    .line 1118
    or-int/lit16 v2, v2, 0x400

    .line 1120
    :cond_9b
    iget-object v3, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->creatorObfuscatedId_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->creatorObfuscatedId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->access$1302(Lcom/google/protos/embeds/PlusEventItem$PlusEvent;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1121
    and-int/lit16 v3, v0, 0x800

    const/16 v4, 0x800

    if-ne v3, v4, :cond_a8

    .line 1122
    or-int/lit16 v2, v2, 0x800

    .line 1124
    :cond_a8
    iget-object v3, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->creator_:Lcom/google/protos/embed/PersonItem$Person;

    #setter for: Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->creator_:Lcom/google/protos/embed/PersonItem$Person;
    invoke-static {v1, v3}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->access$1402(Lcom/google/protos/embeds/PlusEventItem$PlusEvent;Lcom/google/protos/embed/PersonItem$Person;)Lcom/google/protos/embed/PersonItem$Person;

    .line 1125
    and-int/lit16 v3, v0, 0x1000

    const/16 v4, 0x1000

    if-ne v3, v4, :cond_b5

    .line 1126
    or-int/lit16 v2, v2, 0x1000

    .line 1128
    :cond_b5
    iget-object v3, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->displayContent_:Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;

    #setter for: Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->displayContent_:Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;
    invoke-static {v1, v3}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->access$1502(Lcom/google/protos/embeds/PlusEventItem$PlusEvent;Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;)Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;

    .line 1129
    iget v3, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    and-int/lit16 v3, v3, 0x2000

    const/16 v4, 0x2000

    if-ne v3, v4, :cond_d0

    .line 1130
    iget-object v3, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->inviteeSummary_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->inviteeSummary_:Ljava/util/List;

    .line 1131
    iget v3, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    and-int/lit16 v3, v3, -0x2001

    iput v3, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    .line 1133
    :cond_d0
    iget-object v3, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->inviteeSummary_:Ljava/util/List;

    #setter for: Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->inviteeSummary_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->access$1602(Lcom/google/protos/embeds/PlusEventItem$PlusEvent;Ljava/util/List;)Ljava/util/List;

    .line 1134
    and-int/lit16 v3, v0, 0x4000

    const/16 v4, 0x4000

    if-ne v3, v4, :cond_dd

    .line 1135
    or-int/lit16 v2, v2, 0x2000

    .line 1137
    :cond_dd
    iget-object v3, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->theme_:Lcom/google/apps/people/events/proto/EventsCommonData$Theme;

    #setter for: Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->theme_:Lcom/google/apps/people/events/proto/EventsCommonData$Theme;
    invoke-static {v1, v3}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->access$1702(Lcom/google/protos/embeds/PlusEventItem$PlusEvent;Lcom/google/apps/people/events/proto/EventsCommonData$Theme;)Lcom/google/apps/people/events/proto/EventsCommonData$Theme;

    .line 1138
    and-int v3, v0, v5

    if-ne v3, v5, :cond_e8

    .line 1139
    or-int/lit16 v2, v2, 0x4000

    .line 1141
    :cond_e8
    iget-object v3, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->themeSpecification_:Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;

    #setter for: Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->themeSpecification_:Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;
    invoke-static {v1, v3}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->access$1802(Lcom/google/protos/embeds/PlusEventItem$PlusEvent;Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;)Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;

    .line 1142
    and-int v3, v0, v6

    if-ne v3, v6, :cond_f2

    .line 1143
    or-int/2addr v2, v5

    .line 1145
    :cond_f2
    iget-object v3, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->thirdPartyInfo_:Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;

    #setter for: Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->thirdPartyInfo_:Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;
    invoke-static {v1, v3}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->access$1902(Lcom/google/protos/embeds/PlusEventItem$PlusEvent;Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;)Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;

    .line 1146
    and-int v3, v0, v7

    if-ne v3, v7, :cond_fc

    .line 1147
    or-int/2addr v2, v6

    .line 1149
    :cond_fc
    iget-object v3, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->hangoutInfo_:Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;

    #setter for: Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->hangoutInfo_:Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;
    invoke-static {v1, v3}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->access$2002(Lcom/google/protos/embeds/PlusEventItem$PlusEvent;Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;)Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;

    .line 1150
    and-int v3, v0, v8

    if-ne v3, v8, :cond_106

    .line 1151
    or-int/2addr v2, v7

    .line 1153
    :cond_106
    iget-object v3, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->viewerInfo_:Lcom/google/protos/embeds/PlusEventItem$Invitee;

    #setter for: Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->viewerInfo_:Lcom/google/protos/embeds/PlusEventItem$Invitee;
    invoke-static {v1, v3}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->access$2102(Lcom/google/protos/embeds/PlusEventItem$PlusEvent;Lcom/google/protos/embeds/PlusEventItem$Invitee;)Lcom/google/protos/embeds/PlusEventItem$Invitee;

    .line 1154
    and-int v3, v0, v9

    if-ne v3, v9, :cond_110

    .line 1155
    or-int/2addr v2, v8

    .line 1157
    :cond_110
    iget-boolean v3, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->isBroadcastView_:Z

    #setter for: Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->isBroadcastView_:Z
    invoke-static {v1, v3}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->access$2202(Lcom/google/protos/embeds/PlusEventItem$PlusEvent;Z)Z

    .line 1158
    const/high16 v3, 0x10

    and-int/2addr v3, v0

    const/high16 v4, 0x10

    if-ne v3, v4, :cond_11d

    .line 1159
    or-int/2addr v2, v9

    .line 1161
    :cond_11d
    iget-boolean v3, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->isPublic_:Z

    #setter for: Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->isPublic_:Z
    invoke-static {v1, v3}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->access$2302(Lcom/google/protos/embeds/PlusEventItem$PlusEvent;Z)Z

    .line 1162
    const/high16 v3, 0x20

    and-int/2addr v3, v0

    const/high16 v4, 0x20

    if-ne v3, v4, :cond_12c

    .line 1163
    const/high16 v3, 0x10

    or-int/2addr v2, v3

    .line 1165
    :cond_12c
    iget-object v3, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->abuseStatus_:Lcom/google/protos/embeds/PlusEventItem$PlusEvent$AbuseStatus;

    #setter for: Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->abuseStatus_:Lcom/google/protos/embeds/PlusEventItem$PlusEvent$AbuseStatus;
    invoke-static {v1, v3}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->access$2402(Lcom/google/protos/embeds/PlusEventItem$PlusEvent;Lcom/google/protos/embeds/PlusEventItem$PlusEvent$AbuseStatus;)Lcom/google/protos/embeds/PlusEventItem$PlusEvent$AbuseStatus;

    .line 1166
    iget v3, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    const/high16 v4, 0x40

    and-int/2addr v3, v4

    const/high16 v4, 0x40

    if-ne v3, v4, :cond_14a

    .line 1167
    iget-object v3, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->photoContributor_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->photoContributor_:Ljava/util/List;

    .line 1168
    iget v3, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    const v4, -0x400001

    and-int/2addr v3, v4

    iput v3, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    .line 1170
    :cond_14a
    iget-object v3, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->photoContributor_:Ljava/util/List;

    #setter for: Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->photoContributor_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->access$2502(Lcom/google/protos/embeds/PlusEventItem$PlusEvent;Ljava/util/List;)Ljava/util/List;

    .line 1171
    const/high16 v3, 0x80

    and-int/2addr v3, v0

    const/high16 v4, 0x80

    if-ne v3, v4, :cond_159

    .line 1172
    const/high16 v3, 0x20

    or-int/2addr v2, v3

    .line 1174
    :cond_159
    iget-object v3, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->deprecated6_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->deprecated6_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->access$2602(Lcom/google/protos/embeds/PlusEventItem$PlusEvent;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1175
    iget v3, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    const/high16 v4, 0x100

    and-int/2addr v3, v4

    const/high16 v4, 0x100

    if-ne v3, v4, :cond_177

    .line 1176
    iget-object v3, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->deprecated9_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->deprecated9_:Ljava/util/List;

    .line 1177
    iget v3, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    const v4, -0x1000001

    and-int/2addr v3, v4

    iput v3, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    .line 1179
    :cond_177
    iget-object v3, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->deprecated9_:Ljava/util/List;

    #setter for: Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->deprecated9_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->access$2702(Lcom/google/protos/embeds/PlusEventItem$PlusEvent;Ljava/util/List;)Ljava/util/List;

    .line 1180
    const/high16 v3, 0x200

    and-int/2addr v3, v0

    const/high16 v4, 0x200

    if-ne v3, v4, :cond_186

    .line 1181
    const/high16 v3, 0x40

    or-int/2addr v2, v3

    .line 1183
    :cond_186
    iget-object v3, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->deprecated11_:Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;

    #setter for: Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->deprecated11_:Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;
    invoke-static {v1, v3}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->access$2802(Lcom/google/protos/embeds/PlusEventItem$PlusEvent;Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;)Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;

    .line 1184
    #setter for: Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->access$2902(Lcom/google/protos/embeds/PlusEventItem$PlusEvent;I)I

    .line 1185
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 975
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->clear()Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 975
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->clear()Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 991
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 992
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->id_:Ljava/lang/Object;

    .line 993
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    .line 994
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->name_:Ljava/lang/Object;

    .line 995
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    .line 996
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->description_:Ljava/lang/Object;

    .line 997
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    .line 998
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->startDate_:Ljava/lang/Object;

    .line 999
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    .line 1000
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->endDate_:Ljava/lang/Object;

    .line 1001
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    .line 1002
    invoke-static {}, Lcom/google/protos/embed/place/PlaceItem$Place;->getDefaultInstance()Lcom/google/protos/embed/place/PlaceItem$Place;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->location_:Lcom/google/protos/embed/place/PlaceItem$Place;

    .line 1003
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    .line 1004
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->url_:Ljava/lang/Object;

    .line 1005
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    .line 1006
    invoke-static {}, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;->getDefaultInstance()Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->eventOptions_:Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;

    .line 1007
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    .line 1008
    invoke-static {}, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;->getDefaultInstance()Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->startTime_:Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;

    .line 1009
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    .line 1010
    invoke-static {}, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;->getDefaultInstance()Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->endTime_:Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;

    .line 1011
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    .line 1012
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->creatorObfuscatedId_:Ljava/lang/Object;

    .line 1013
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    .line 1014
    invoke-static {}, Lcom/google/protos/embed/PersonItem$Person;->getDefaultInstance()Lcom/google/protos/embed/PersonItem$Person;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->creator_:Lcom/google/protos/embed/PersonItem$Person;

    .line 1015
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    .line 1016
    invoke-static {}, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;->getDefaultInstance()Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->displayContent_:Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;

    .line 1017
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    .line 1018
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->inviteeSummary_:Ljava/util/List;

    .line 1019
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    .line 1020
    invoke-static {}, Lcom/google/apps/people/events/proto/EventsCommonData$Theme;->getDefaultInstance()Lcom/google/apps/people/events/proto/EventsCommonData$Theme;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->theme_:Lcom/google/apps/people/events/proto/EventsCommonData$Theme;

    .line 1021
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    .line 1022
    invoke-static {}, Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;->getDefaultInstance()Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->themeSpecification_:Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;

    .line 1023
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    .line 1024
    invoke-static {}, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;->getDefaultInstance()Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->thirdPartyInfo_:Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;

    .line 1025
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    .line 1026
    invoke-static {}, Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;->getDefaultInstance()Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->hangoutInfo_:Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;

    .line 1027
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    .line 1028
    invoke-static {}, Lcom/google/protos/embeds/PlusEventItem$Invitee;->getDefaultInstance()Lcom/google/protos/embeds/PlusEventItem$Invitee;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->viewerInfo_:Lcom/google/protos/embeds/PlusEventItem$Invitee;

    .line 1029
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    .line 1030
    iput-boolean v2, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->isBroadcastView_:Z

    .line 1031
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    .line 1032
    iput-boolean v2, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->isPublic_:Z

    .line 1033
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    const v1, -0x100001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    .line 1034
    sget-object v0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$AbuseStatus;->NOT_REPORTED:Lcom/google/protos/embeds/PlusEventItem$PlusEvent$AbuseStatus;

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->abuseStatus_:Lcom/google/protos/embeds/PlusEventItem$PlusEvent$AbuseStatus;

    .line 1035
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    const v1, -0x200001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    .line 1036
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->photoContributor_:Ljava/util/List;

    .line 1037
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    const v1, -0x400001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    .line 1038
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->deprecated6_:Ljava/lang/Object;

    .line 1039
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    const v1, -0x800001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    .line 1040
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->deprecated9_:Ljava/util/List;

    .line 1041
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    const v1, -0x1000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    .line 1042
    invoke-static {}, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;->getDefaultInstance()Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->deprecated11_:Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;

    .line 1043
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    const v1, -0x2000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    .line 1044
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 975
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->clone()Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 975
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->clone()Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;
    .registers 3

    .prologue
    .line 1048
    invoke-static {}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->create()Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->buildPartial()Lcom/google/protos/embeds/PlusEventItem$PlusEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->mergeFrom(Lcom/google/protos/embeds/PlusEventItem$PlusEvent;)Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;

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
    .line 975
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->clone()Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCreator()Lcom/google/protos/embed/PersonItem$Person;
    .registers 2

    .prologue
    .line 1934
    iget-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->creator_:Lcom/google/protos/embed/PersonItem$Person;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 975
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->getDefaultInstanceForType()Lcom/google/protos/embeds/PlusEventItem$PlusEvent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 975
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->getDefaultInstanceForType()Lcom/google/protos/embeds/PlusEventItem$PlusEvent;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/embeds/PlusEventItem$PlusEvent;
    .registers 2

    .prologue
    .line 1052
    invoke-static {}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->getDefaultInstance()Lcom/google/protos/embeds/PlusEventItem$PlusEvent;

    move-result-object v0

    return-object v0
.end method

.method public getDeprecated11()Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2604
    iget-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->deprecated11_:Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;

    return-object v0
.end method

.method public getDisplayContent()Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;
    .registers 2

    .prologue
    .line 1977
    iget-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->displayContent_:Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;

    return-object v0
.end method

.method public getEndTime()Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;
    .registers 2

    .prologue
    .line 1855
    iget-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->endTime_:Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;

    return-object v0
.end method

.method public getEventOptions()Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;
    .registers 2

    .prologue
    .line 1769
    iget-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->eventOptions_:Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;

    return-object v0
.end method

.method public getHangoutInfo()Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;
    .registers 2

    .prologue
    .line 2238
    iget-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->hangoutInfo_:Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;

    return-object v0
.end method

.method public getLocation()Lcom/google/protos/embed/place/PlaceItem$Place;
    .registers 2

    .prologue
    .line 1690
    iget-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->location_:Lcom/google/protos/embed/place/PlaceItem$Place;

    return-object v0
.end method

.method public getStartTime()Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;
    .registers 2

    .prologue
    .line 1812
    iget-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->startTime_:Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;

    return-object v0
.end method

.method public getTheme()Lcom/google/apps/people/events/proto/EventsCommonData$Theme;
    .registers 2

    .prologue
    .line 2109
    iget-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->theme_:Lcom/google/apps/people/events/proto/EventsCommonData$Theme;

    return-object v0
.end method

.method public getThemeSpecification()Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;
    .registers 2

    .prologue
    .line 2152
    iget-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->themeSpecification_:Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;

    return-object v0
.end method

.method public getThirdPartyInfo()Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;
    .registers 2

    .prologue
    .line 2195
    iget-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->thirdPartyInfo_:Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;

    return-object v0
.end method

.method public getViewerInfo()Lcom/google/protos/embeds/PlusEventItem$Invitee;
    .registers 2

    .prologue
    .line 2281
    iget-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->viewerInfo_:Lcom/google/protos/embeds/PlusEventItem$Invitee;

    return-object v0
.end method

.method public hasCreator()Z
    .registers 3

    .prologue
    .line 1931
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

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

.method public hasDeprecated11()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/high16 v1, 0x200

    .line 2601
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasDisplayContent()Z
    .registers 3

    .prologue
    .line 1974
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

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

.method public hasEndTime()Z
    .registers 3

    .prologue
    .line 1852
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

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

.method public hasEventOptions()Z
    .registers 3

    .prologue
    .line 1766
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

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

.method public hasHangoutInfo()Z
    .registers 3

    .prologue
    const/high16 v1, 0x2

    .line 2235
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasLocation()Z
    .registers 3

    .prologue
    .line 1687
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

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

.method public hasStartTime()Z
    .registers 3

    .prologue
    .line 1809
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

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

.method public hasTheme()Z
    .registers 3

    .prologue
    .line 2106
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

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

.method public hasThemeSpecification()Z
    .registers 3

    .prologue
    const v1, 0x8000

    .line 2149
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasThirdPartyInfo()Z
    .registers 3

    .prologue
    const/high16 v1, 0x1

    .line 2192
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasViewerInfo()Z
    .registers 3

    .prologue
    const/high16 v1, 0x4

    .line 2278
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 1293
    const/4 v0, 0x1

    return v0
.end method

.method public mergeCreator(Lcom/google/protos/embed/PersonItem$Person;)Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 1953
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->creator_:Lcom/google/protos/embed/PersonItem$Person;

    invoke-static {}, Lcom/google/protos/embed/PersonItem$Person;->getDefaultInstance()Lcom/google/protos/embed/PersonItem$Person;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 1955
    iget-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->creator_:Lcom/google/protos/embed/PersonItem$Person;

    invoke-static {v0}, Lcom/google/protos/embed/PersonItem$Person;->newBuilder(Lcom/google/protos/embed/PersonItem$Person;)Lcom/google/protos/embed/PersonItem$Person$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protos/embed/PersonItem$Person$Builder;->mergeFrom(Lcom/google/protos/embed/PersonItem$Person;)Lcom/google/protos/embed/PersonItem$Person$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/embed/PersonItem$Person$Builder;->buildPartial()Lcom/google/protos/embed/PersonItem$Person;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->creator_:Lcom/google/protos/embed/PersonItem$Person;

    .line 1961
    :goto_20
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    .line 1962
    return-object p0

    .line 1958
    :cond_27
    iput-object p1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->creator_:Lcom/google/protos/embed/PersonItem$Person;

    goto :goto_20
.end method

.method public mergeDeprecated11(Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;)Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;
    .registers 5
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/high16 v2, 0x200

    .line 2623
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->deprecated11_:Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;

    invoke-static {}, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;->getDefaultInstance()Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 2625
    iget-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->deprecated11_:Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;

    invoke-static {v0}, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;->newBuilder(Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;)Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Builder;->mergeFrom(Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;)Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Builder;->buildPartial()Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->deprecated11_:Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;

    .line 2631
    :goto_1f
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    .line 2632
    return-object p0

    .line 2628
    :cond_25
    iput-object p1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->deprecated11_:Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;

    goto :goto_1f
.end method

.method public mergeDisplayContent(Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;)Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 1996
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->displayContent_:Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;

    invoke-static {}, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;->getDefaultInstance()Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 1998
    iget-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->displayContent_:Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;

    invoke-static {v0}, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;->newBuilder(Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;)Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;->mergeFrom(Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;)Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;->buildPartial()Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->displayContent_:Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;

    .line 2004
    :goto_20
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    .line 2005
    return-object p0

    .line 2001
    :cond_27
    iput-object p1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->displayContent_:Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;

    goto :goto_20
.end method

.method public mergeEndTime(Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;)Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 1874
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->endTime_:Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;

    invoke-static {}, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;->getDefaultInstance()Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 1876
    iget-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->endTime_:Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;

    invoke-static {v0}, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;->newBuilder(Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;)Lcom/google/apps/people/events/proto/EventsCommonData$EventTime$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime$Builder;->mergeFrom(Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;)Lcom/google/apps/people/events/proto/EventsCommonData$EventTime$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime$Builder;->buildPartial()Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->endTime_:Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;

    .line 1882
    :goto_20
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    .line 1883
    return-object p0

    .line 1879
    :cond_27
    iput-object p1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->endTime_:Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;

    goto :goto_20
.end method

.method public mergeEventOptions(Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;)Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 1788
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->eventOptions_:Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;

    invoke-static {}, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;->getDefaultInstance()Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 1790
    iget-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->eventOptions_:Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;

    invoke-static {v0}, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;->newBuilder(Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;)Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;->mergeFrom(Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;)Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;->buildPartial()Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->eventOptions_:Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;

    .line 1796
    :goto_20
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    .line 1797
    return-object p0

    .line 1793
    :cond_27
    iput-object p1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->eventOptions_:Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;

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
    .line 975
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 975
    check-cast p1, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->mergeFrom(Lcom/google/protos/embeds/PlusEventItem$PlusEvent;)Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;

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
    .line 975
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;
    .registers 9
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1301
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 1302
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_238

    .line 1307
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1309
    :sswitch_d
    return-object p0

    .line 1314
    :sswitch_e
    iget v4, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    .line 1315
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->id_:Ljava/lang/Object;

    goto :goto_0

    .line 1319
    :sswitch_1b
    iget v4, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    .line 1320
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->name_:Ljava/lang/Object;

    goto :goto_0

    .line 1324
    :sswitch_28
    iget v4, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    .line 1325
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->description_:Ljava/lang/Object;

    goto :goto_0

    .line 1329
    :sswitch_35
    iget v4, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    .line 1330
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->startDate_:Ljava/lang/Object;

    goto :goto_0

    .line 1334
    :sswitch_42
    iget v4, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x10

    iput v4, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    .line 1335
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->endDate_:Ljava/lang/Object;

    goto :goto_0

    .line 1339
    :sswitch_4f
    iget v4, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    const/high16 v5, 0x80

    or-int/2addr v4, v5

    iput v4, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    .line 1340
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->deprecated6_:Ljava/lang/Object;

    goto :goto_0

    .line 1344
    :sswitch_5d
    invoke-static {}, Lcom/google/protos/embed/place/PlaceItem$Place;->newBuilder()Lcom/google/protos/embed/place/PlaceItem$Place$Builder;

    move-result-object v1

    .line 1345
    .local v1, subBuilder:Lcom/google/protos/embed/place/PlaceItem$Place$Builder;
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->hasLocation()Z

    move-result v4

    if-eqz v4, :cond_6e

    .line 1346
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->getLocation()Lcom/google/protos/embed/place/PlaceItem$Place;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->mergeFrom(Lcom/google/protos/embed/place/PlaceItem$Place;)Lcom/google/protos/embed/place/PlaceItem$Place$Builder;

    .line 1348
    :cond_6e
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1349
    invoke-virtual {v1}, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->buildPartial()Lcom/google/protos/embed/place/PlaceItem$Place;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->setLocation(Lcom/google/protos/embed/place/PlaceItem$Place;)Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;

    goto :goto_0

    .line 1353
    .end local v1           #subBuilder:Lcom/google/protos/embed/place/PlaceItem$Place$Builder;
    :sswitch_79
    iget v4, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x40

    iput v4, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    .line 1354
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->url_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 1358
    :sswitch_87
    invoke-static {}, Lcom/google/protos/embeds/PlusEventItem$Invitee;->newBuilder()Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;

    move-result-object v1

    .line 1359
    .local v1, subBuilder:Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1360
    invoke-virtual {v1}, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->buildPartial()Lcom/google/protos/embeds/PlusEventItem$Invitee;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->addDeprecated9(Lcom/google/protos/embeds/PlusEventItem$Invitee;)Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;

    goto/16 :goto_0

    .line 1364
    .end local v1           #subBuilder:Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;
    :sswitch_97
    invoke-static {}, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;->newBuilder()Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;

    move-result-object v1

    .line 1365
    .local v1, subBuilder:Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->hasEventOptions()Z

    move-result v4

    if-eqz v4, :cond_a8

    .line 1366
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->getEventOptions()Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;->mergeFrom(Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;)Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;

    .line 1368
    :cond_a8
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1369
    invoke-virtual {v1}, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;->buildPartial()Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->setEventOptions(Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;)Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;

    goto/16 :goto_0

    .line 1373
    .end local v1           #subBuilder:Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;
    :sswitch_b4
    invoke-static {}, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;->newBuilder()Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Builder;

    move-result-object v1

    .line 1374
    .local v1, subBuilder:Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Builder;
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->hasDeprecated11()Z

    move-result v4

    if-eqz v4, :cond_c5

    .line 1375
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->getDeprecated11()Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Builder;->mergeFrom(Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;)Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Builder;

    .line 1377
    :cond_c5
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1378
    invoke-virtual {v1}, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Builder;->buildPartial()Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->setDeprecated11(Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;)Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;

    goto/16 :goto_0

    .line 1382
    .end local v1           #subBuilder:Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Builder;
    :sswitch_d1
    invoke-static {}, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;->newBuilder()Lcom/google/apps/people/events/proto/EventsCommonData$EventTime$Builder;

    move-result-object v1

    .line 1383
    .local v1, subBuilder:Lcom/google/apps/people/events/proto/EventsCommonData$EventTime$Builder;
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->hasStartTime()Z

    move-result v4

    if-eqz v4, :cond_e2

    .line 1384
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->getStartTime()Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime$Builder;->mergeFrom(Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;)Lcom/google/apps/people/events/proto/EventsCommonData$EventTime$Builder;

    .line 1386
    :cond_e2
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1387
    invoke-virtual {v1}, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime$Builder;->buildPartial()Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->setStartTime(Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;)Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;

    goto/16 :goto_0

    .line 1391
    .end local v1           #subBuilder:Lcom/google/apps/people/events/proto/EventsCommonData$EventTime$Builder;
    :sswitch_ee
    invoke-static {}, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;->newBuilder()Lcom/google/apps/people/events/proto/EventsCommonData$EventTime$Builder;

    move-result-object v1

    .line 1392
    .restart local v1       #subBuilder:Lcom/google/apps/people/events/proto/EventsCommonData$EventTime$Builder;
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->hasEndTime()Z

    move-result v4

    if-eqz v4, :cond_ff

    .line 1393
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->getEndTime()Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime$Builder;->mergeFrom(Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;)Lcom/google/apps/people/events/proto/EventsCommonData$EventTime$Builder;

    .line 1395
    :cond_ff
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1396
    invoke-virtual {v1}, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime$Builder;->buildPartial()Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->setEndTime(Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;)Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;

    goto/16 :goto_0

    .line 1400
    .end local v1           #subBuilder:Lcom/google/apps/people/events/proto/EventsCommonData$EventTime$Builder;
    :sswitch_10b
    iget v4, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    or-int/lit16 v4, v4, 0x400

    iput v4, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    .line 1401
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->creatorObfuscatedId_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 1405
    :sswitch_119
    invoke-static {}, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;->newBuilder()Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;

    move-result-object v1

    .line 1406
    .local v1, subBuilder:Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->hasDisplayContent()Z

    move-result v4

    if-eqz v4, :cond_12a

    .line 1407
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->getDisplayContent()Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;->mergeFrom(Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;)Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;

    .line 1409
    :cond_12a
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1410
    invoke-virtual {v1}, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;->buildPartial()Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->setDisplayContent(Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;)Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;

    goto/16 :goto_0

    .line 1414
    .end local v1           #subBuilder:Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;
    :sswitch_136
    invoke-static {}, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;->newBuilder()Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;

    move-result-object v1

    .line 1415
    .local v1, subBuilder:Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1416
    invoke-virtual {v1}, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;->buildPartial()Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->addInviteeSummary(Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;)Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;

    goto/16 :goto_0

    .line 1420
    .end local v1           #subBuilder:Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;
    :sswitch_146
    invoke-static {}, Lcom/google/apps/people/events/proto/EventsCommonData$Theme;->newBuilder()Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;

    move-result-object v1

    .line 1421
    .local v1, subBuilder:Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->hasTheme()Z

    move-result v4

    if-eqz v4, :cond_157

    .line 1422
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->getTheme()Lcom/google/apps/people/events/proto/EventsCommonData$Theme;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;->mergeFrom(Lcom/google/apps/people/events/proto/EventsCommonData$Theme;)Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;

    .line 1424
    :cond_157
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1425
    invoke-virtual {v1}, Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;->buildPartial()Lcom/google/apps/people/events/proto/EventsCommonData$Theme;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->setTheme(Lcom/google/apps/people/events/proto/EventsCommonData$Theme;)Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;

    goto/16 :goto_0

    .line 1429
    .end local v1           #subBuilder:Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;
    :sswitch_163
    invoke-static {}, Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;->newBuilder()Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification$Builder;

    move-result-object v1

    .line 1430
    .local v1, subBuilder:Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification$Builder;
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->hasThemeSpecification()Z

    move-result v4

    if-eqz v4, :cond_174

    .line 1431
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->getThemeSpecification()Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification$Builder;->mergeFrom(Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;)Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification$Builder;

    .line 1433
    :cond_174
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1434
    invoke-virtual {v1}, Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification$Builder;->buildPartial()Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->setThemeSpecification(Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;)Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;

    goto/16 :goto_0

    .line 1438
    .end local v1           #subBuilder:Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification$Builder;
    :sswitch_180
    invoke-static {}, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;->newBuilder()Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo$Builder;

    move-result-object v1

    .line 1439
    .local v1, subBuilder:Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo$Builder;
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->hasThirdPartyInfo()Z

    move-result v4

    if-eqz v4, :cond_191

    .line 1440
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->getThirdPartyInfo()Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo$Builder;->mergeFrom(Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;)Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo$Builder;

    .line 1442
    :cond_191
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1443
    invoke-virtual {v1}, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo$Builder;->buildPartial()Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->setThirdPartyInfo(Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;)Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;

    goto/16 :goto_0

    .line 1447
    .end local v1           #subBuilder:Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo$Builder;
    :sswitch_19d
    invoke-static {}, Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;->newBuilder()Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo$Builder;

    move-result-object v1

    .line 1448
    .local v1, subBuilder:Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo$Builder;
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->hasHangoutInfo()Z

    move-result v4

    if-eqz v4, :cond_1ae

    .line 1449
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->getHangoutInfo()Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo$Builder;->mergeFrom(Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;)Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo$Builder;

    .line 1451
    :cond_1ae
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1452
    invoke-virtual {v1}, Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo$Builder;->buildPartial()Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->setHangoutInfo(Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;)Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;

    goto/16 :goto_0

    .line 1456
    .end local v1           #subBuilder:Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo$Builder;
    :sswitch_1ba
    invoke-static {}, Lcom/google/protos/embeds/PlusEventItem$Invitee;->newBuilder()Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;

    move-result-object v1

    .line 1457
    .local v1, subBuilder:Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->hasViewerInfo()Z

    move-result v4

    if-eqz v4, :cond_1cb

    .line 1458
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->getViewerInfo()Lcom/google/protos/embeds/PlusEventItem$Invitee;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->mergeFrom(Lcom/google/protos/embeds/PlusEventItem$Invitee;)Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;

    .line 1460
    :cond_1cb
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1461
    invoke-virtual {v1}, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->buildPartial()Lcom/google/protos/embeds/PlusEventItem$Invitee;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->setViewerInfo(Lcom/google/protos/embeds/PlusEventItem$Invitee;)Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;

    goto/16 :goto_0

    .line 1465
    .end local v1           #subBuilder:Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;
    :sswitch_1d7
    iget v4, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    const/high16 v5, 0x10

    or-int/2addr v4, v5

    iput v4, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    .line 1466
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->isPublic_:Z

    goto/16 :goto_0

    .line 1470
    :sswitch_1e6
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 1471
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$AbuseStatus;->valueOf(I)Lcom/google/protos/embeds/PlusEventItem$PlusEvent$AbuseStatus;

    move-result-object v3

    .line 1472
    .local v3, value:Lcom/google/protos/embeds/PlusEventItem$PlusEvent$AbuseStatus;
    if-eqz v3, :cond_0

    .line 1473
    iget v4, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    const/high16 v5, 0x20

    or-int/2addr v4, v5

    iput v4, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    .line 1474
    iput-object v3, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->abuseStatus_:Lcom/google/protos/embeds/PlusEventItem$PlusEvent$AbuseStatus;

    goto/16 :goto_0

    .line 1479
    .end local v0           #rawValue:I
    .end local v3           #value:Lcom/google/protos/embeds/PlusEventItem$PlusEvent$AbuseStatus;
    :sswitch_1fb
    invoke-static {}, Lcom/google/protos/embeds/PlusEventItem$Invitee;->newBuilder()Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;

    move-result-object v1

    .line 1480
    .restart local v1       #subBuilder:Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1481
    invoke-virtual {v1}, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->buildPartial()Lcom/google/protos/embeds/PlusEventItem$Invitee;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->addPhotoContributor(Lcom/google/protos/embeds/PlusEventItem$Invitee;)Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;

    goto/16 :goto_0

    .line 1485
    .end local v1           #subBuilder:Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;
    :sswitch_20b
    invoke-static {}, Lcom/google/protos/embed/PersonItem$Person;->newBuilder()Lcom/google/protos/embed/PersonItem$Person$Builder;

    move-result-object v1

    .line 1486
    .local v1, subBuilder:Lcom/google/protos/embed/PersonItem$Person$Builder;
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->hasCreator()Z

    move-result v4

    if-eqz v4, :cond_21c

    .line 1487
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->getCreator()Lcom/google/protos/embed/PersonItem$Person;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/protos/embed/PersonItem$Person$Builder;->mergeFrom(Lcom/google/protos/embed/PersonItem$Person;)Lcom/google/protos/embed/PersonItem$Person$Builder;

    .line 1489
    :cond_21c
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1490
    invoke-virtual {v1}, Lcom/google/protos/embed/PersonItem$Person$Builder;->buildPartial()Lcom/google/protos/embed/PersonItem$Person;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->setCreator(Lcom/google/protos/embed/PersonItem$Person;)Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;

    goto/16 :goto_0

    .line 1494
    .end local v1           #subBuilder:Lcom/google/protos/embed/PersonItem$Person$Builder;
    :sswitch_228
    iget v4, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    const/high16 v5, 0x8

    or-int/2addr v4, v5

    iput v4, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    .line 1495
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->isBroadcastView_:Z

    goto/16 :goto_0

    .line 1302
    nop

    :sswitch_data_238
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1b
        0x1a -> :sswitch_28
        0x22 -> :sswitch_35
        0x2a -> :sswitch_42
        0x32 -> :sswitch_4f
        0x3a -> :sswitch_5d
        0x42 -> :sswitch_79
        0x4a -> :sswitch_87
        0x52 -> :sswitch_97
        0x5a -> :sswitch_b4
        0x62 -> :sswitch_d1
        0x6a -> :sswitch_ee
        0x72 -> :sswitch_10b
        0x7a -> :sswitch_119
        0x82 -> :sswitch_136
        0x8a -> :sswitch_146
        0x92 -> :sswitch_163
        0x9a -> :sswitch_180
        0xa2 -> :sswitch_19d
        0xaa -> :sswitch_1ba
        0xb0 -> :sswitch_1d7
        0xb8 -> :sswitch_1e6
        0xc2 -> :sswitch_1fb
        0xca -> :sswitch_20b
        0xd0 -> :sswitch_228
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/protos/embeds/PlusEventItem$PlusEvent;)Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 1189
    invoke-static {}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->getDefaultInstance()Lcom/google/protos/embeds/PlusEventItem$PlusEvent;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 1289
    :cond_6
    :goto_6
    return-object p0

    .line 1190
    :cond_7
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->hasId()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1191
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->setId(Ljava/lang/String;)Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;

    .line 1193
    :cond_14
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->hasName()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1194
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->setName(Ljava/lang/String;)Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;

    .line 1196
    :cond_21
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->hasDescription()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 1197
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->setDescription(Ljava/lang/String;)Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;

    .line 1199
    :cond_2e
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->hasStartDate()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 1200
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->getStartDate()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->setStartDate(Ljava/lang/String;)Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;

    .line 1202
    :cond_3b
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->hasEndDate()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 1203
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->getEndDate()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->setEndDate(Ljava/lang/String;)Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;

    .line 1205
    :cond_48
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->hasLocation()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 1206
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->getLocation()Lcom/google/protos/embed/place/PlaceItem$Place;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->mergeLocation(Lcom/google/protos/embed/place/PlaceItem$Place;)Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;

    .line 1208
    :cond_55
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->hasUrl()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 1209
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->setUrl(Ljava/lang/String;)Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;

    .line 1211
    :cond_62
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->hasEventOptions()Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 1212
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->getEventOptions()Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->mergeEventOptions(Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;)Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;

    .line 1214
    :cond_6f
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->hasStartTime()Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 1215
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->getStartTime()Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->mergeStartTime(Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;)Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;

    .line 1217
    :cond_7c
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->hasEndTime()Z

    move-result v0

    if-eqz v0, :cond_89

    .line 1218
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->getEndTime()Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->mergeEndTime(Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;)Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;

    .line 1220
    :cond_89
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->hasCreatorObfuscatedId()Z

    move-result v0

    if-eqz v0, :cond_96

    .line 1221
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->getCreatorObfuscatedId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->setCreatorObfuscatedId(Ljava/lang/String;)Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;

    .line 1223
    :cond_96
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->hasCreator()Z

    move-result v0

    if-eqz v0, :cond_a3

    .line 1224
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->getCreator()Lcom/google/protos/embed/PersonItem$Person;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->mergeCreator(Lcom/google/protos/embed/PersonItem$Person;)Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;

    .line 1226
    :cond_a3
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->hasDisplayContent()Z

    move-result v0

    if-eqz v0, :cond_b0

    .line 1227
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->getDisplayContent()Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->mergeDisplayContent(Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;)Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;

    .line 1229
    :cond_b0
    #getter for: Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->inviteeSummary_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->access$1600(Lcom/google/protos/embeds/PlusEventItem$PlusEvent;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_ce

    .line 1230
    iget-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->inviteeSummary_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_192

    .line 1231
    #getter for: Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->inviteeSummary_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->access$1600(Lcom/google/protos/embeds/PlusEventItem$PlusEvent;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->inviteeSummary_:Ljava/util/List;

    .line 1232
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    .line 1239
    :cond_ce
    :goto_ce
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->hasTheme()Z

    move-result v0

    if-eqz v0, :cond_db

    .line 1240
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->getTheme()Lcom/google/apps/people/events/proto/EventsCommonData$Theme;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->mergeTheme(Lcom/google/apps/people/events/proto/EventsCommonData$Theme;)Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;

    .line 1242
    :cond_db
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->hasThemeSpecification()Z

    move-result v0

    if-eqz v0, :cond_e8

    .line 1243
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->getThemeSpecification()Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->mergeThemeSpecification(Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;)Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;

    .line 1245
    :cond_e8
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->hasThirdPartyInfo()Z

    move-result v0

    if-eqz v0, :cond_f5

    .line 1246
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->getThirdPartyInfo()Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->mergeThirdPartyInfo(Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;)Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;

    .line 1248
    :cond_f5
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->hasHangoutInfo()Z

    move-result v0

    if-eqz v0, :cond_102

    .line 1249
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->getHangoutInfo()Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->mergeHangoutInfo(Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;)Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;

    .line 1251
    :cond_102
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->hasViewerInfo()Z

    move-result v0

    if-eqz v0, :cond_10f

    .line 1252
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->getViewerInfo()Lcom/google/protos/embeds/PlusEventItem$Invitee;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->mergeViewerInfo(Lcom/google/protos/embeds/PlusEventItem$Invitee;)Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;

    .line 1254
    :cond_10f
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->hasIsBroadcastView()Z

    move-result v0

    if-eqz v0, :cond_11c

    .line 1255
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->getIsBroadcastView()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->setIsBroadcastView(Z)Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;

    .line 1257
    :cond_11c
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->hasIsPublic()Z

    move-result v0

    if-eqz v0, :cond_129

    .line 1258
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->getIsPublic()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->setIsPublic(Z)Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;

    .line 1260
    :cond_129
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->hasAbuseStatus()Z

    move-result v0

    if-eqz v0, :cond_136

    .line 1261
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->getAbuseStatus()Lcom/google/protos/embeds/PlusEventItem$PlusEvent$AbuseStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->setAbuseStatus(Lcom/google/protos/embeds/PlusEventItem$PlusEvent$AbuseStatus;)Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;

    .line 1263
    :cond_136
    #getter for: Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->photoContributor_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->access$2500(Lcom/google/protos/embeds/PlusEventItem$PlusEvent;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_156

    .line 1264
    iget-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->photoContributor_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a0

    .line 1265
    #getter for: Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->photoContributor_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->access$2500(Lcom/google/protos/embeds/PlusEventItem$PlusEvent;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->photoContributor_:Ljava/util/List;

    .line 1266
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    const v1, -0x400001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    .line 1273
    :cond_156
    :goto_156
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->hasDeprecated6()Z

    move-result v0

    if-eqz v0, :cond_163

    .line 1274
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->getDeprecated6()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->setDeprecated6(Ljava/lang/String;)Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;

    .line 1276
    :cond_163
    #getter for: Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->deprecated9_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->access$2700(Lcom/google/protos/embeds/PlusEventItem$PlusEvent;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_183

    .line 1277
    iget-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->deprecated9_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1ad

    .line 1278
    #getter for: Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->deprecated9_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->access$2700(Lcom/google/protos/embeds/PlusEventItem$PlusEvent;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->deprecated9_:Ljava/util/List;

    .line 1279
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    const v1, -0x1000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    .line 1286
    :cond_183
    :goto_183
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->hasDeprecated11()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1287
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->getDeprecated11()Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->mergeDeprecated11(Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;)Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;

    goto/16 :goto_6

    .line 1234
    :cond_192
    invoke-direct {p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->ensureInviteeSummaryIsMutable()V

    .line 1235
    iget-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->inviteeSummary_:Ljava/util/List;

    #getter for: Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->inviteeSummary_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->access$1600(Lcom/google/protos/embeds/PlusEventItem$PlusEvent;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_ce

    .line 1268
    :cond_1a0
    invoke-direct {p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->ensurePhotoContributorIsMutable()V

    .line 1269
    iget-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->photoContributor_:Ljava/util/List;

    #getter for: Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->photoContributor_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->access$2500(Lcom/google/protos/embeds/PlusEventItem$PlusEvent;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_156

    .line 1281
    :cond_1ad
    invoke-direct {p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->ensureDeprecated9IsMutable()V

    .line 1282
    iget-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->deprecated9_:Ljava/util/List;

    #getter for: Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->deprecated9_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->access$2700(Lcom/google/protos/embeds/PlusEventItem$PlusEvent;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_183
.end method

.method public mergeHangoutInfo(Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;)Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const/high16 v2, 0x2

    .line 2257
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->hangoutInfo_:Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;

    invoke-static {}, Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;->getDefaultInstance()Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 2259
    iget-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->hangoutInfo_:Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;

    invoke-static {v0}, Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;->newBuilder(Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;)Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo$Builder;->mergeFrom(Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;)Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo$Builder;->buildPartial()Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->hangoutInfo_:Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;

    .line 2265
    :goto_1f
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    .line 2266
    return-object p0

    .line 2262
    :cond_25
    iput-object p1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->hangoutInfo_:Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;

    goto :goto_1f
.end method

.method public mergeLocation(Lcom/google/protos/embed/place/PlaceItem$Place;)Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 1709
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->location_:Lcom/google/protos/embed/place/PlaceItem$Place;

    invoke-static {}, Lcom/google/protos/embed/place/PlaceItem$Place;->getDefaultInstance()Lcom/google/protos/embed/place/PlaceItem$Place;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 1711
    iget-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->location_:Lcom/google/protos/embed/place/PlaceItem$Place;

    invoke-static {v0}, Lcom/google/protos/embed/place/PlaceItem$Place;->newBuilder(Lcom/google/protos/embed/place/PlaceItem$Place;)Lcom/google/protos/embed/place/PlaceItem$Place$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->mergeFrom(Lcom/google/protos/embed/place/PlaceItem$Place;)Lcom/google/protos/embed/place/PlaceItem$Place$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->buildPartial()Lcom/google/protos/embed/place/PlaceItem$Place;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->location_:Lcom/google/protos/embed/place/PlaceItem$Place;

    .line 1717
    :goto_20
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    .line 1718
    return-object p0

    .line 1714
    :cond_27
    iput-object p1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->location_:Lcom/google/protos/embed/place/PlaceItem$Place;

    goto :goto_20
.end method

.method public mergeStartTime(Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;)Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 1831
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->startTime_:Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;

    invoke-static {}, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;->getDefaultInstance()Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 1833
    iget-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->startTime_:Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;

    invoke-static {v0}, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;->newBuilder(Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;)Lcom/google/apps/people/events/proto/EventsCommonData$EventTime$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime$Builder;->mergeFrom(Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;)Lcom/google/apps/people/events/proto/EventsCommonData$EventTime$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime$Builder;->buildPartial()Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->startTime_:Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;

    .line 1839
    :goto_20
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    .line 1840
    return-object p0

    .line 1836
    :cond_27
    iput-object p1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->startTime_:Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;

    goto :goto_20
.end method

.method public mergeTheme(Lcom/google/apps/people/events/proto/EventsCommonData$Theme;)Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 2128
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->theme_:Lcom/google/apps/people/events/proto/EventsCommonData$Theme;

    invoke-static {}, Lcom/google/apps/people/events/proto/EventsCommonData$Theme;->getDefaultInstance()Lcom/google/apps/people/events/proto/EventsCommonData$Theme;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 2130
    iget-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->theme_:Lcom/google/apps/people/events/proto/EventsCommonData$Theme;

    invoke-static {v0}, Lcom/google/apps/people/events/proto/EventsCommonData$Theme;->newBuilder(Lcom/google/apps/people/events/proto/EventsCommonData$Theme;)Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;->mergeFrom(Lcom/google/apps/people/events/proto/EventsCommonData$Theme;)Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;->buildPartial()Lcom/google/apps/people/events/proto/EventsCommonData$Theme;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->theme_:Lcom/google/apps/people/events/proto/EventsCommonData$Theme;

    .line 2136
    :goto_20
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    .line 2137
    return-object p0

    .line 2133
    :cond_27
    iput-object p1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->theme_:Lcom/google/apps/people/events/proto/EventsCommonData$Theme;

    goto :goto_20
.end method

.method public mergeThemeSpecification(Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;)Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const v2, 0x8000

    .line 2171
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_26

    iget-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->themeSpecification_:Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;

    invoke-static {}, Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;->getDefaultInstance()Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 2173
    iget-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->themeSpecification_:Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;

    invoke-static {v0}, Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;->newBuilder(Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;)Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification$Builder;->mergeFrom(Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;)Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification$Builder;->buildPartial()Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->themeSpecification_:Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;

    .line 2179
    :goto_20
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    .line 2180
    return-object p0

    .line 2176
    :cond_26
    iput-object p1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->themeSpecification_:Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;

    goto :goto_20
.end method

.method public mergeThirdPartyInfo(Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;)Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const/high16 v2, 0x1

    .line 2214
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->thirdPartyInfo_:Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;

    invoke-static {}, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;->getDefaultInstance()Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 2216
    iget-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->thirdPartyInfo_:Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;

    invoke-static {v0}, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;->newBuilder(Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;)Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo$Builder;->mergeFrom(Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;)Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo$Builder;->buildPartial()Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->thirdPartyInfo_:Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;

    .line 2222
    :goto_1f
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    .line 2223
    return-object p0

    .line 2219
    :cond_25
    iput-object p1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->thirdPartyInfo_:Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;

    goto :goto_1f
.end method

.method public mergeViewerInfo(Lcom/google/protos/embeds/PlusEventItem$Invitee;)Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const/high16 v2, 0x4

    .line 2300
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->viewerInfo_:Lcom/google/protos/embeds/PlusEventItem$Invitee;

    invoke-static {}, Lcom/google/protos/embeds/PlusEventItem$Invitee;->getDefaultInstance()Lcom/google/protos/embeds/PlusEventItem$Invitee;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 2302
    iget-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->viewerInfo_:Lcom/google/protos/embeds/PlusEventItem$Invitee;

    invoke-static {v0}, Lcom/google/protos/embeds/PlusEventItem$Invitee;->newBuilder(Lcom/google/protos/embeds/PlusEventItem$Invitee;)Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->mergeFrom(Lcom/google/protos/embeds/PlusEventItem$Invitee;)Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->buildPartial()Lcom/google/protos/embeds/PlusEventItem$Invitee;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->viewerInfo_:Lcom/google/protos/embeds/PlusEventItem$Invitee;

    .line 2308
    :goto_1f
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    .line 2309
    return-object p0

    .line 2305
    :cond_25
    iput-object p1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->viewerInfo_:Lcom/google/protos/embeds/PlusEventItem$Invitee;

    goto :goto_1f
.end method

.method public setAbuseStatus(Lcom/google/protos/embeds/PlusEventItem$PlusEvent$AbuseStatus;)Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 2369
    if-nez p1, :cond_8

    .line 2370
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2372
    :cond_8
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    const/high16 v1, 0x20

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    .line 2373
    iput-object p1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->abuseStatus_:Lcom/google/protos/embeds/PlusEventItem$PlusEvent$AbuseStatus;

    .line 2375
    return-object p0
.end method

.method public setCreator(Lcom/google/protos/embed/PersonItem$Person;)Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1937
    if-nez p1, :cond_8

    .line 1938
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1940
    :cond_8
    iput-object p1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->creator_:Lcom/google/protos/embed/PersonItem$Person;

    .line 1942
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    .line 1943
    return-object p0
.end method

.method public setCreatorObfuscatedId(Ljava/lang/String;)Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1908
    if-nez p1, :cond_8

    .line 1909
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1911
    :cond_8
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    .line 1912
    iput-object p1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->creatorObfuscatedId_:Ljava/lang/Object;

    .line 1914
    return-object p0
.end method

.method public setDeprecated11(Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;)Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;
    .registers 4
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2607
    if-nez p1, :cond_8

    .line 2608
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2610
    :cond_8
    iput-object p1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->deprecated11_:Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;

    .line 2612
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    const/high16 v1, 0x200

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    .line 2613
    return-object p0
.end method

.method public setDeprecated6(Ljava/lang/String;)Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;
    .registers 4
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2489
    if-nez p1, :cond_8

    .line 2490
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2492
    :cond_8
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    const/high16 v1, 0x80

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    .line 2493
    iput-object p1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->deprecated6_:Ljava/lang/Object;

    .line 2495
    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1592
    if-nez p1, :cond_8

    .line 1593
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1595
    :cond_8
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    .line 1596
    iput-object p1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->description_:Ljava/lang/Object;

    .line 1598
    return-object p0
.end method

.method public setDisplayContent(Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;)Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1980
    if-nez p1, :cond_8

    .line 1981
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1983
    :cond_8
    iput-object p1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->displayContent_:Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;

    .line 1985
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    .line 1986
    return-object p0
.end method

.method public setEndDate(Ljava/lang/String;)Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1664
    if-nez p1, :cond_8

    .line 1665
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1667
    :cond_8
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    .line 1668
    iput-object p1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->endDate_:Ljava/lang/Object;

    .line 1670
    return-object p0
.end method

.method public setEndTime(Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;)Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1858
    if-nez p1, :cond_8

    .line 1859
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1861
    :cond_8
    iput-object p1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->endTime_:Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;

    .line 1863
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    .line 1864
    return-object p0
.end method

.method public setEventOptions(Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;)Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1772
    if-nez p1, :cond_8

    .line 1773
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1775
    :cond_8
    iput-object p1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->eventOptions_:Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;

    .line 1777
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    .line 1778
    return-object p0
.end method

.method public setHangoutInfo(Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;)Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 2241
    if-nez p1, :cond_8

    .line 2242
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2244
    :cond_8
    iput-object p1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->hangoutInfo_:Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;

    .line 2246
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    const/high16 v1, 0x2

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    .line 2247
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1520
    if-nez p1, :cond_8

    .line 1521
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1523
    :cond_8
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    .line 1524
    iput-object p1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->id_:Ljava/lang/Object;

    .line 1526
    return-object p0
.end method

.method public setIsBroadcastView(Z)Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 2327
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    const/high16 v1, 0x8

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    .line 2328
    iput-boolean p1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->isBroadcastView_:Z

    .line 2330
    return-object p0
.end method

.method public setIsPublic(Z)Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 2348
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    const/high16 v1, 0x10

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    .line 2349
    iput-boolean p1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->isPublic_:Z

    .line 2351
    return-object p0
.end method

.method public setLocation(Lcom/google/protos/embed/place/PlaceItem$Place;)Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1693
    if-nez p1, :cond_8

    .line 1694
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1696
    :cond_8
    iput-object p1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->location_:Lcom/google/protos/embed/place/PlaceItem$Place;

    .line 1698
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    .line 1699
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1556
    if-nez p1, :cond_8

    .line 1557
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1559
    :cond_8
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    .line 1560
    iput-object p1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->name_:Ljava/lang/Object;

    .line 1562
    return-object p0
.end method

.method public setStartDate(Ljava/lang/String;)Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1628
    if-nez p1, :cond_8

    .line 1629
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1631
    :cond_8
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    .line 1632
    iput-object p1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->startDate_:Ljava/lang/Object;

    .line 1634
    return-object p0
.end method

.method public setStartTime(Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;)Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1815
    if-nez p1, :cond_8

    .line 1816
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1818
    :cond_8
    iput-object p1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->startTime_:Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;

    .line 1820
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    .line 1821
    return-object p0
.end method

.method public setTheme(Lcom/google/apps/people/events/proto/EventsCommonData$Theme;)Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 2112
    if-nez p1, :cond_8

    .line 2113
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2115
    :cond_8
    iput-object p1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->theme_:Lcom/google/apps/people/events/proto/EventsCommonData$Theme;

    .line 2117
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    .line 2118
    return-object p0
.end method

.method public setThemeSpecification(Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;)Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 2155
    if-nez p1, :cond_8

    .line 2156
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2158
    :cond_8
    iput-object p1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->themeSpecification_:Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;

    .line 2160
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    .line 2161
    return-object p0
.end method

.method public setThirdPartyInfo(Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;)Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 2198
    if-nez p1, :cond_8

    .line 2199
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2201
    :cond_8
    iput-object p1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->thirdPartyInfo_:Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;

    .line 2203
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    const/high16 v1, 0x1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    .line 2204
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1743
    if-nez p1, :cond_8

    .line 1744
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1746
    :cond_8
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    .line 1747
    iput-object p1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->url_:Ljava/lang/Object;

    .line 1749
    return-object p0
.end method

.method public setViewerInfo(Lcom/google/protos/embeds/PlusEventItem$Invitee;)Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 2284
    if-nez p1, :cond_8

    .line 2285
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2287
    :cond_8
    iput-object p1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->viewerInfo_:Lcom/google/protos/embeds/PlusEventItem$Invitee;

    .line 2289
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    const/high16 v1, 0x4

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->bitField0_:I

    .line 2290
    return-object p0
.end method
