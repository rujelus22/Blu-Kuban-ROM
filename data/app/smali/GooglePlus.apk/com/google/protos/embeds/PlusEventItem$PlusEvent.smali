.class public final Lcom/google/protos/embeds/PlusEventItem$PlusEvent;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "PlusEventItem.java"

# interfaces
.implements Lcom/google/protos/embeds/PlusEventItem$PlusEventOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/embeds/PlusEventItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlusEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;,
        Lcom/google/protos/embeds/PlusEventItem$PlusEvent$AbuseStatus;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/protos/embeds/PlusEventItem$PlusEvent;

.field public static final plusEvent:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension",
            "<",
            "Lcom/google/protos/embed/EmbedClient$EmbedClientItem;",
            "Lcom/google/protos/embeds/PlusEventItem$PlusEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


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

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

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
.method static constructor <clinit>()V
    .registers 6

    .prologue
    .line 2645
    new-instance v0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;-><init>(Z)V

    sput-object v0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->defaultInstance:Lcom/google/protos/embeds/PlusEventItem$PlusEvent;

    .line 2646
    sget-object v0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->defaultInstance:Lcom/google/protos/embeds/PlusEventItem$PlusEvent;

    invoke-direct {v0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->initFields()V

    .line 2654
    invoke-static {}, Lcom/google/protos/embed/EmbedClient$EmbedClientItem;->getDefaultInstance()Lcom/google/protos/embed/EmbedClient$EmbedClientItem;

    move-result-object v0

    invoke-static {}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->getDefaultInstance()Lcom/google/protos/embeds/PlusEventItem$PlusEvent;

    move-result-object v1

    invoke-static {}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->getDefaultInstance()Lcom/google/protos/embeds/PlusEventItem$PlusEvent;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0x1990e63

    sget-object v5, Lcom/google/protobuf/WireFormat$FieldType;->MESSAGE:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/GeneratedMessageLite;->newSingularGeneratedExtension(Lcom/google/protobuf/MessageLite;Ljava/lang/Object;Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/Internal$EnumLiteMap;ILcom/google/protobuf/WireFormat$FieldType;)Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v0

    sput-object v0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->plusEvent:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    return-void
.end method

.method private constructor <init>(Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 130
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 688
    iput-byte v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->memoizedIsInitialized:B

    .line 780
    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->memoizedSerializedSize:I

    .line 131
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;Lcom/google/protos/embeds/PlusEventItem$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;-><init>(Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 132
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 688
    iput-byte v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->memoizedIsInitialized:B

    .line 780
    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->memoizedSerializedSize:I

    .line 132
    return-void
.end method

.method static synthetic access$1002(Lcom/google/protos/embeds/PlusEventItem$PlusEvent;Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;)Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->eventOptions_:Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/google/protos/embeds/PlusEventItem$PlusEvent;Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;)Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->startTime_:Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/google/protos/embeds/PlusEventItem$PlusEvent;Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;)Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->endTime_:Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/google/protos/embeds/PlusEventItem$PlusEvent;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->creatorObfuscatedId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/google/protos/embeds/PlusEventItem$PlusEvent;Lcom/google/protos/embed/PersonItem$Person;)Lcom/google/protos/embed/PersonItem$Person;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->creator_:Lcom/google/protos/embed/PersonItem$Person;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/google/protos/embeds/PlusEventItem$PlusEvent;Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;)Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->displayContent_:Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/google/protos/embeds/PlusEventItem$PlusEvent;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->inviteeSummary_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/google/protos/embeds/PlusEventItem$PlusEvent;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->inviteeSummary_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1702(Lcom/google/protos/embeds/PlusEventItem$PlusEvent;Lcom/google/apps/people/events/proto/EventsCommonData$Theme;)Lcom/google/apps/people/events/proto/EventsCommonData$Theme;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->theme_:Lcom/google/apps/people/events/proto/EventsCommonData$Theme;

    return-object p1
.end method

.method static synthetic access$1802(Lcom/google/protos/embeds/PlusEventItem$PlusEvent;Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;)Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->themeSpecification_:Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;

    return-object p1
.end method

.method static synthetic access$1902(Lcom/google/protos/embeds/PlusEventItem$PlusEvent;Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;)Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->thirdPartyInfo_:Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;

    return-object p1
.end method

.method static synthetic access$2002(Lcom/google/protos/embeds/PlusEventItem$PlusEvent;Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;)Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->hangoutInfo_:Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;

    return-object p1
.end method

.method static synthetic access$2102(Lcom/google/protos/embeds/PlusEventItem$PlusEvent;Lcom/google/protos/embeds/PlusEventItem$Invitee;)Lcom/google/protos/embeds/PlusEventItem$Invitee;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->viewerInfo_:Lcom/google/protos/embeds/PlusEventItem$Invitee;

    return-object p1
.end method

.method static synthetic access$2202(Lcom/google/protos/embeds/PlusEventItem$PlusEvent;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput-boolean p1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->isBroadcastView_:Z

    return p1
.end method

.method static synthetic access$2302(Lcom/google/protos/embeds/PlusEventItem$PlusEvent;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput-boolean p1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->isPublic_:Z

    return p1
.end method

.method static synthetic access$2402(Lcom/google/protos/embeds/PlusEventItem$PlusEvent;Lcom/google/protos/embeds/PlusEventItem$PlusEvent$AbuseStatus;)Lcom/google/protos/embeds/PlusEventItem$PlusEvent$AbuseStatus;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->abuseStatus_:Lcom/google/protos/embeds/PlusEventItem$PlusEvent$AbuseStatus;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/google/protos/embeds/PlusEventItem$PlusEvent;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->photoContributor_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/google/protos/embeds/PlusEventItem$PlusEvent;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->photoContributor_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2602(Lcom/google/protos/embeds/PlusEventItem$PlusEvent;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->deprecated6_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/google/protos/embeds/PlusEventItem$PlusEvent;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->deprecated9_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/google/protos/embeds/PlusEventItem$PlusEvent;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->deprecated9_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2802(Lcom/google/protos/embeds/PlusEventItem$PlusEvent;Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;)Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->deprecated11_:Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;

    return-object p1
.end method

.method static synthetic access$2902(Lcom/google/protos/embeds/PlusEventItem$PlusEvent;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput p1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->bitField0_:I

    return p1
.end method

.method static synthetic access$302(Lcom/google/protos/embeds/PlusEventItem$PlusEvent;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->id_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$402(Lcom/google/protos/embeds/PlusEventItem$PlusEvent;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$502(Lcom/google/protos/embeds/PlusEventItem$PlusEvent;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->description_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$602(Lcom/google/protos/embeds/PlusEventItem$PlusEvent;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->startDate_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$702(Lcom/google/protos/embeds/PlusEventItem$PlusEvent;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->endDate_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$802(Lcom/google/protos/embeds/PlusEventItem$PlusEvent;Lcom/google/protos/embed/place/PlaceItem$Place;)Lcom/google/protos/embed/place/PlaceItem$Place;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->location_:Lcom/google/protos/embed/place/PlaceItem$Place;

    return-object p1
.end method

.method static synthetic access$902(Lcom/google/protos/embeds/PlusEventItem$PlusEvent;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->url_:Ljava/lang/Object;

    return-object p1
.end method

.method private getCreatorObfuscatedIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 444
    iget-object v1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->creatorObfuscatedId_:Ljava/lang/Object;

    .line 445
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 446
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 448
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->creatorObfuscatedId_:Ljava/lang/Object;

    .line 451
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

.method public static getDefaultInstance()Lcom/google/protos/embeds/PlusEventItem$PlusEvent;
    .registers 1

    .prologue
    .line 136
    sget-object v0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->defaultInstance:Lcom/google/protos/embeds/PlusEventItem$PlusEvent;

    return-object v0
.end method

.method private getDeprecated6Bytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 618
    iget-object v1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->deprecated6_:Ljava/lang/Object;

    .line 619
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 620
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 622
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->deprecated6_:Ljava/lang/Object;

    .line 625
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

.method private getDescriptionBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 276
    iget-object v1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->description_:Ljava/lang/Object;

    .line 277
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 278
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 280
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->description_:Ljava/lang/Object;

    .line 283
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

.method private getEndDateBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 340
    iget-object v1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->endDate_:Ljava/lang/Object;

    .line 341
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 342
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 344
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->endDate_:Ljava/lang/Object;

    .line 347
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

.method private getIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 212
    iget-object v1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->id_:Ljava/lang/Object;

    .line 213
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 214
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 216
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->id_:Ljava/lang/Object;

    .line 219
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

.method private getNameBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 244
    iget-object v1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->name_:Ljava/lang/Object;

    .line 245
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 246
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 248
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->name_:Ljava/lang/Object;

    .line 251
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

.method private getStartDateBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 308
    iget-object v1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->startDate_:Ljava/lang/Object;

    .line 309
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 310
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 312
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->startDate_:Ljava/lang/Object;

    .line 315
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

.method private getUrlBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 382
    iget-object v1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->url_:Ljava/lang/Object;

    .line 383
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 384
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 386
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->url_:Ljava/lang/Object;

    .line 389
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
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 661
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->id_:Ljava/lang/Object;

    .line 662
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->name_:Ljava/lang/Object;

    .line 663
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->description_:Ljava/lang/Object;

    .line 664
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->startDate_:Ljava/lang/Object;

    .line 665
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->endDate_:Ljava/lang/Object;

    .line 666
    invoke-static {}, Lcom/google/protos/embed/place/PlaceItem$Place;->getDefaultInstance()Lcom/google/protos/embed/place/PlaceItem$Place;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->location_:Lcom/google/protos/embed/place/PlaceItem$Place;

    .line 667
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->url_:Ljava/lang/Object;

    .line 668
    invoke-static {}, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;->getDefaultInstance()Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->eventOptions_:Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;

    .line 669
    invoke-static {}, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;->getDefaultInstance()Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->startTime_:Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;

    .line 670
    invoke-static {}, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;->getDefaultInstance()Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->endTime_:Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;

    .line 671
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->creatorObfuscatedId_:Ljava/lang/Object;

    .line 672
    invoke-static {}, Lcom/google/protos/embed/PersonItem$Person;->getDefaultInstance()Lcom/google/protos/embed/PersonItem$Person;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->creator_:Lcom/google/protos/embed/PersonItem$Person;

    .line 673
    invoke-static {}, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;->getDefaultInstance()Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->displayContent_:Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;

    .line 674
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->inviteeSummary_:Ljava/util/List;

    .line 675
    invoke-static {}, Lcom/google/apps/people/events/proto/EventsCommonData$Theme;->getDefaultInstance()Lcom/google/apps/people/events/proto/EventsCommonData$Theme;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->theme_:Lcom/google/apps/people/events/proto/EventsCommonData$Theme;

    .line 676
    invoke-static {}, Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;->getDefaultInstance()Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->themeSpecification_:Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;

    .line 677
    invoke-static {}, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;->getDefaultInstance()Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->thirdPartyInfo_:Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;

    .line 678
    invoke-static {}, Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;->getDefaultInstance()Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->hangoutInfo_:Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;

    .line 679
    invoke-static {}, Lcom/google/protos/embeds/PlusEventItem$Invitee;->getDefaultInstance()Lcom/google/protos/embeds/PlusEventItem$Invitee;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->viewerInfo_:Lcom/google/protos/embeds/PlusEventItem$Invitee;

    .line 680
    iput-boolean v1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->isBroadcastView_:Z

    .line 681
    iput-boolean v1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->isPublic_:Z

    .line 682
    sget-object v0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$AbuseStatus;->NOT_REPORTED:Lcom/google/protos/embeds/PlusEventItem$PlusEvent$AbuseStatus;

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->abuseStatus_:Lcom/google/protos/embeds/PlusEventItem$PlusEvent$AbuseStatus;

    .line 683
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->photoContributor_:Ljava/util/List;

    .line 684
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->deprecated6_:Ljava/lang/Object;

    .line 685
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->deprecated9_:Ljava/util/List;

    .line 686
    invoke-static {}, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;->getDefaultInstance()Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->deprecated11_:Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;

    .line 687
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;
    .registers 1

    .prologue
    .line 968
    #calls: Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->create()Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;
    invoke-static {}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->access$100()Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/embeds/PlusEventItem$PlusEvent;)Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 971
    invoke-static {}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->newBuilder()Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->mergeFrom(Lcom/google/protos/embeds/PlusEventItem$PlusEvent;)Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAbuseStatus()Lcom/google/protos/embeds/PlusEventItem$PlusEvent$AbuseStatus;
    .registers 2

    .prologue
    .line 573
    iget-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->abuseStatus_:Lcom/google/protos/embeds/PlusEventItem$PlusEvent$AbuseStatus;

    return-object v0
.end method

.method public getCreator()Lcom/google/protos/embed/PersonItem$Person;
    .registers 2

    .prologue
    .line 462
    iget-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->creator_:Lcom/google/protos/embed/PersonItem$Person;

    return-object v0
.end method

.method public getCreatorObfuscatedId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 430
    iget-object v1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->creatorObfuscatedId_:Ljava/lang/Object;

    .line 431
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 432
    check-cast v1, Ljava/lang/String;

    .line 440
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 434
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 436
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 437
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 438
    iput-object v2, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->creatorObfuscatedId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 440
    goto :goto_8
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->getDefaultInstanceForType()Lcom/google/protos/embeds/PlusEventItem$PlusEvent;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/embeds/PlusEventItem$PlusEvent;
    .registers 2

    .prologue
    .line 140
    sget-object v0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->defaultInstance:Lcom/google/protos/embeds/PlusEventItem$PlusEvent;

    return-object v0
.end method

.method public getDeprecated11()Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 657
    iget-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->deprecated11_:Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;

    return-object v0
.end method

.method public getDeprecated6()Ljava/lang/String;
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 604
    iget-object v1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->deprecated6_:Ljava/lang/Object;

    .line 605
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 606
    check-cast v1, Ljava/lang/String;

    .line 614
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 608
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 610
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 611
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 612
    iput-object v2, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->deprecated6_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 614
    goto :goto_8
.end method

.method public getDescription()Ljava/lang/String;
    .registers 5

    .prologue
    .line 262
    iget-object v1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->description_:Ljava/lang/Object;

    .line 263
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 264
    check-cast v1, Ljava/lang/String;

    .line 272
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 266
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 268
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 269
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 270
    iput-object v2, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->description_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 272
    goto :goto_8
.end method

.method public getDisplayContent()Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;
    .registers 2

    .prologue
    .line 472
    iget-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->displayContent_:Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;

    return-object v0
.end method

.method public getEndDate()Ljava/lang/String;
    .registers 5

    .prologue
    .line 326
    iget-object v1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->endDate_:Ljava/lang/Object;

    .line 327
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 328
    check-cast v1, Ljava/lang/String;

    .line 336
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 330
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 332
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 333
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 334
    iput-object v2, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->endDate_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 336
    goto :goto_8
.end method

.method public getEndTime()Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;
    .registers 2

    .prologue
    .line 420
    iget-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->endTime_:Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;

    return-object v0
.end method

.method public getEventOptions()Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;
    .registers 2

    .prologue
    .line 400
    iget-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->eventOptions_:Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;

    return-object v0
.end method

.method public getHangoutInfo()Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;
    .registers 2

    .prologue
    .line 533
    iget-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->hangoutInfo_:Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 198
    iget-object v1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->id_:Ljava/lang/Object;

    .line 199
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 200
    check-cast v1, Ljava/lang/String;

    .line 208
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 202
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 204
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 205
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 206
    iput-object v2, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->id_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 208
    goto :goto_8
.end method

.method public getInviteeSummaryCount()I
    .registers 2

    .prologue
    .line 486
    iget-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->inviteeSummary_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getInviteeSummaryList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;",
            ">;"
        }
    .end annotation

    .prologue
    .line 479
    iget-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->inviteeSummary_:Ljava/util/List;

    return-object v0
.end method

.method public getIsBroadcastView()Z
    .registers 2

    .prologue
    .line 553
    iget-boolean v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->isBroadcastView_:Z

    return v0
.end method

.method public getIsPublic()Z
    .registers 2

    .prologue
    .line 563
    iget-boolean v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->isPublic_:Z

    return v0
.end method

.method public getLocation()Lcom/google/protos/embed/place/PlaceItem$Place;
    .registers 2

    .prologue
    .line 358
    iget-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->location_:Lcom/google/protos/embed/place/PlaceItem$Place;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 5

    .prologue
    .line 230
    iget-object v1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->name_:Ljava/lang/Object;

    .line 231
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 232
    check-cast v1, Ljava/lang/String;

    .line 240
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 234
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 236
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 237
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 238
    iput-object v2, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->name_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 240
    goto :goto_8
.end method

.method public getPhotoContributorCount()I
    .registers 2

    .prologue
    .line 587
    iget-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->photoContributor_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSerializedSize()I
    .registers 10

    .prologue
    const/16 v8, 0x10

    const/16 v7, 0x8

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 782
    iget v1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->memoizedSerializedSize:I

    .line 783
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_e

    move v2, v1

    .line 891
    .end local v1           #size:I
    .local v2, size:I
    :goto_d
    return v2

    .line 785
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_e
    const/4 v1, 0x0

    .line 786
    iget v3, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_1e

    .line 787
    invoke-direct {p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 790
    :cond_1e
    iget v3, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v5, :cond_2d

    .line 791
    invoke-direct {p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 794
    :cond_2d
    iget v3, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-ne v3, v6, :cond_3d

    .line 795
    const/4 v3, 0x3

    invoke-direct {p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->getDescriptionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 798
    :cond_3d
    iget v3, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    if-ne v3, v7, :cond_4c

    .line 799
    invoke-direct {p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->getStartDateBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 802
    :cond_4c
    iget v3, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    if-ne v3, v8, :cond_5c

    .line 803
    const/4 v3, 0x5

    invoke-direct {p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->getEndDateBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 806
    :cond_5c
    iget v3, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->bitField0_:I

    const/high16 v4, 0x20

    and-int/2addr v3, v4

    const/high16 v4, 0x20

    if-ne v3, v4, :cond_6f

    .line 807
    const/4 v3, 0x6

    invoke-direct {p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->getDeprecated6Bytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 810
    :cond_6f
    iget v3, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_7f

    .line 811
    const/4 v3, 0x7

    iget-object v4, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->location_:Lcom/google/protos/embed/place/PlaceItem$Place;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 814
    :cond_7f
    iget v3, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->bitField0_:I

    and-int/lit8 v3, v3, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_90

    .line 815
    invoke-direct {p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->getUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 818
    :cond_90
    const/4 v0, 0x0

    .local v0, i:I
    :goto_91
    iget-object v3, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->deprecated9_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_ab

    .line 819
    const/16 v4, 0x9

    iget-object v3, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->deprecated9_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 818
    add-int/lit8 v0, v0, 0x1

    goto :goto_91

    .line 822
    :cond_ab
    iget v3, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->bitField0_:I

    and-int/lit16 v3, v3, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_bc

    .line 823
    const/16 v3, 0xa

    iget-object v4, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->eventOptions_:Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 826
    :cond_bc
    iget v3, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->bitField0_:I

    const/high16 v4, 0x40

    and-int/2addr v3, v4

    const/high16 v4, 0x40

    if-ne v3, v4, :cond_ce

    .line 827
    const/16 v3, 0xb

    iget-object v4, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->deprecated11_:Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 830
    :cond_ce
    iget v3, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->bitField0_:I

    and-int/lit16 v3, v3, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_df

    .line 831
    const/16 v3, 0xc

    iget-object v4, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->startTime_:Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 834
    :cond_df
    iget v3, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->bitField0_:I

    and-int/lit16 v3, v3, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_f0

    .line 835
    const/16 v3, 0xd

    iget-object v4, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->endTime_:Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 838
    :cond_f0
    iget v3, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->bitField0_:I

    and-int/lit16 v3, v3, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_103

    .line 839
    const/16 v3, 0xe

    invoke-direct {p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->getCreatorObfuscatedIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 842
    :cond_103
    iget v3, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->bitField0_:I

    and-int/lit16 v3, v3, 0x1000

    const/16 v4, 0x1000

    if-ne v3, v4, :cond_114

    .line 843
    const/16 v3, 0xf

    iget-object v4, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->displayContent_:Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 846
    :cond_114
    const/4 v0, 0x0

    :goto_115
    iget-object v3, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->inviteeSummary_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_12d

    .line 847
    iget-object v3, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->inviteeSummary_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v8, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 846
    add-int/lit8 v0, v0, 0x1

    goto :goto_115

    .line 850
    :cond_12d
    iget v3, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->bitField0_:I

    and-int/lit16 v3, v3, 0x2000

    const/16 v4, 0x2000

    if-ne v3, v4, :cond_13e

    .line 851
    const/16 v3, 0x11

    iget-object v4, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->theme_:Lcom/google/apps/people/events/proto/EventsCommonData$Theme;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 854
    :cond_13e
    iget v3, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->bitField0_:I

    and-int/lit16 v3, v3, 0x4000

    const/16 v4, 0x4000

    if-ne v3, v4, :cond_14f

    .line 855
    const/16 v3, 0x12

    iget-object v4, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->themeSpecification_:Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 858
    :cond_14f
    iget v3, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->bitField0_:I

    const v4, 0x8000

    and-int/2addr v3, v4

    const v4, 0x8000

    if-ne v3, v4, :cond_163

    .line 859
    const/16 v3, 0x13

    iget-object v4, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->thirdPartyInfo_:Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 862
    :cond_163
    iget v3, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->bitField0_:I

    const/high16 v4, 0x1

    and-int/2addr v3, v4

    const/high16 v4, 0x1

    if-ne v3, v4, :cond_175

    .line 863
    const/16 v3, 0x14

    iget-object v4, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->hangoutInfo_:Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 866
    :cond_175
    iget v3, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->bitField0_:I

    const/high16 v4, 0x2

    and-int/2addr v3, v4

    const/high16 v4, 0x2

    if-ne v3, v4, :cond_187

    .line 867
    const/16 v3, 0x15

    iget-object v4, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->viewerInfo_:Lcom/google/protos/embeds/PlusEventItem$Invitee;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 870
    :cond_187
    iget v3, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->bitField0_:I

    const/high16 v4, 0x8

    and-int/2addr v3, v4

    const/high16 v4, 0x8

    if-ne v3, v4, :cond_199

    .line 871
    const/16 v3, 0x16

    iget-boolean v4, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->isPublic_:Z

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v1, v3

    .line 874
    :cond_199
    iget v3, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->bitField0_:I

    const/high16 v4, 0x10

    and-int/2addr v3, v4

    const/high16 v4, 0x10

    if-ne v3, v4, :cond_1af

    .line 875
    const/16 v3, 0x17

    iget-object v4, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->abuseStatus_:Lcom/google/protos/embeds/PlusEventItem$PlusEvent$AbuseStatus;

    invoke-virtual {v4}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$AbuseStatus;->getNumber()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 878
    :cond_1af
    const/4 v0, 0x0

    :goto_1b0
    iget-object v3, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->photoContributor_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1ca

    .line 879
    const/16 v4, 0x18

    iget-object v3, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->photoContributor_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 878
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b0

    .line 882
    :cond_1ca
    iget v3, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->bitField0_:I

    and-int/lit16 v3, v3, 0x800

    const/16 v4, 0x800

    if-ne v3, v4, :cond_1db

    .line 883
    const/16 v3, 0x19

    iget-object v4, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->creator_:Lcom/google/protos/embed/PersonItem$Person;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 886
    :cond_1db
    iget v3, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->bitField0_:I

    const/high16 v4, 0x4

    and-int/2addr v3, v4

    const/high16 v4, 0x4

    if-ne v3, v4, :cond_1ed

    .line 887
    const/16 v3, 0x1a

    iget-boolean v4, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->isBroadcastView_:Z

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v1, v3

    .line 890
    :cond_1ed
    iput v1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->memoizedSerializedSize:I

    move v2, v1

    .line 891
    .end local v1           #size:I
    .restart local v2       #size:I
    goto/16 :goto_d
.end method

.method public getStartDate()Ljava/lang/String;
    .registers 5

    .prologue
    .line 294
    iget-object v1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->startDate_:Ljava/lang/Object;

    .line 295
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 296
    check-cast v1, Ljava/lang/String;

    .line 304
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 298
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 300
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 301
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 302
    iput-object v2, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->startDate_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 304
    goto :goto_8
.end method

.method public getStartTime()Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;
    .registers 2

    .prologue
    .line 410
    iget-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->startTime_:Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;

    return-object v0
.end method

.method public getTheme()Lcom/google/apps/people/events/proto/EventsCommonData$Theme;
    .registers 2

    .prologue
    .line 503
    iget-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->theme_:Lcom/google/apps/people/events/proto/EventsCommonData$Theme;

    return-object v0
.end method

.method public getThemeSpecification()Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;
    .registers 2

    .prologue
    .line 513
    iget-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->themeSpecification_:Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;

    return-object v0
.end method

.method public getThirdPartyInfo()Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;
    .registers 2

    .prologue
    .line 523
    iget-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->thirdPartyInfo_:Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 5

    .prologue
    .line 368
    iget-object v1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->url_:Ljava/lang/Object;

    .line 369
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 370
    check-cast v1, Ljava/lang/String;

    .line 378
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 372
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 374
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 375
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 376
    iput-object v2, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->url_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 378
    goto :goto_8
.end method

.method public getViewerInfo()Lcom/google/protos/embeds/PlusEventItem$Invitee;
    .registers 2

    .prologue
    .line 543
    iget-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->viewerInfo_:Lcom/google/protos/embeds/PlusEventItem$Invitee;

    return-object v0
.end method

.method public hasAbuseStatus()Z
    .registers 3

    .prologue
    const/high16 v1, 0x10

    .line 570
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasCreator()Z
    .registers 3

    .prologue
    .line 459
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->bitField0_:I

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

.method public hasCreatorObfuscatedId()Z
    .registers 3

    .prologue
    .line 427
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->bitField0_:I

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

.method public hasDeprecated11()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/high16 v1, 0x40

    .line 654
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasDeprecated6()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/high16 v1, 0x20

    .line 601
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasDescription()Z
    .registers 3

    .prologue
    .line 259
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->bitField0_:I

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

.method public hasDisplayContent()Z
    .registers 3

    .prologue
    .line 469
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->bitField0_:I

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

.method public hasEndDate()Z
    .registers 3

    .prologue
    .line 323
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->bitField0_:I

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

.method public hasEndTime()Z
    .registers 3

    .prologue
    .line 417
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->bitField0_:I

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
    .line 397
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->bitField0_:I

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
    const/high16 v1, 0x1

    .line 530
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 195
    iget v1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasIsBroadcastView()Z
    .registers 3

    .prologue
    const/high16 v1, 0x4

    .line 550
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasIsPublic()Z
    .registers 3

    .prologue
    const/high16 v1, 0x8

    .line 560
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->bitField0_:I

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
    .line 355
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->bitField0_:I

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

.method public hasName()Z
    .registers 3

    .prologue
    .line 227
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->bitField0_:I

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

.method public hasStartDate()Z
    .registers 3

    .prologue
    .line 291
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->bitField0_:I

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

.method public hasStartTime()Z
    .registers 3

    .prologue
    .line 407
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->bitField0_:I

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
    .line 500
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->bitField0_:I

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

.method public hasThemeSpecification()Z
    .registers 3

    .prologue
    .line 510
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->bitField0_:I

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

.method public hasThirdPartyInfo()Z
    .registers 3

    .prologue
    const v1, 0x8000

    .line 520
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasUrl()Z
    .registers 3

    .prologue
    .line 365
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->bitField0_:I

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

.method public hasViewerInfo()Z
    .registers 3

    .prologue
    const/high16 v1, 0x2

    .line 540
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->bitField0_:I

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
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 690
    iget-byte v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->memoizedIsInitialized:B

    .line 691
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 694
    :goto_8
    return v1

    .line 691
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 693
    :cond_b
    iput-byte v1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->newBuilderForType()Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;
    .registers 2

    .prologue
    .line 969
    invoke-static {}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->newBuilder()Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->toBuilder()Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;
    .registers 2

    .prologue
    .line 973
    invoke-static {p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->newBuilder(Lcom/google/protos/embeds/PlusEventItem$PlusEvent;)Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 898
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 9
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x10

    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 699
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->getSerializedSize()I

    .line 700
    iget v1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_17

    .line 701
    invoke-direct {p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 703
    :cond_17
    iget v1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_24

    .line 704
    invoke-direct {p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 706
    :cond_24
    iget v1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_32

    .line 707
    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->getDescriptionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 709
    :cond_32
    iget v1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v5, :cond_3f

    .line 710
    invoke-direct {p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->getStartDateBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 712
    :cond_3f
    iget v1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-ne v1, v6, :cond_4d

    .line 713
    const/4 v1, 0x5

    invoke-direct {p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->getEndDateBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 715
    :cond_4d
    iget v1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->bitField0_:I

    const/high16 v2, 0x20

    and-int/2addr v1, v2

    const/high16 v2, 0x20

    if-ne v1, v2, :cond_5e

    .line 716
    const/4 v1, 0x6

    invoke-direct {p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->getDeprecated6Bytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 718
    :cond_5e
    iget v1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_6c

    .line 719
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->location_:Lcom/google/protos/embed/place/PlaceItem$Place;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 721
    :cond_6c
    iget v1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_7b

    .line 722
    invoke-direct {p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->getUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v5, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 724
    :cond_7b
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7c
    iget-object v1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->deprecated9_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_94

    .line 725
    const/16 v2, 0x9

    iget-object v1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->deprecated9_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 724
    add-int/lit8 v0, v0, 0x1

    goto :goto_7c

    .line 727
    :cond_94
    iget v1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_a3

    .line 728
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->eventOptions_:Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 730
    :cond_a3
    iget v1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->bitField0_:I

    const/high16 v2, 0x40

    and-int/2addr v1, v2

    const/high16 v2, 0x40

    if-ne v1, v2, :cond_b3

    .line 731
    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->deprecated11_:Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 733
    :cond_b3
    iget v1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->bitField0_:I

    and-int/lit16 v1, v1, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_c2

    .line 734
    const/16 v1, 0xc

    iget-object v2, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->startTime_:Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 736
    :cond_c2
    iget v1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->bitField0_:I

    and-int/lit16 v1, v1, 0x200

    const/16 v2, 0x200

    if-ne v1, v2, :cond_d1

    .line 737
    const/16 v1, 0xd

    iget-object v2, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->endTime_:Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 739
    :cond_d1
    iget v1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->bitField0_:I

    and-int/lit16 v1, v1, 0x400

    const/16 v2, 0x400

    if-ne v1, v2, :cond_e2

    .line 740
    const/16 v1, 0xe

    invoke-direct {p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->getCreatorObfuscatedIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 742
    :cond_e2
    iget v1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->bitField0_:I

    and-int/lit16 v1, v1, 0x1000

    const/16 v2, 0x1000

    if-ne v1, v2, :cond_f1

    .line 743
    const/16 v1, 0xf

    iget-object v2, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->displayContent_:Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 745
    :cond_f1
    const/4 v0, 0x0

    :goto_f2
    iget-object v1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->inviteeSummary_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_108

    .line 746
    iget-object v1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->inviteeSummary_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v6, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 745
    add-int/lit8 v0, v0, 0x1

    goto :goto_f2

    .line 748
    :cond_108
    iget v1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->bitField0_:I

    and-int/lit16 v1, v1, 0x2000

    const/16 v2, 0x2000

    if-ne v1, v2, :cond_117

    .line 749
    const/16 v1, 0x11

    iget-object v2, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->theme_:Lcom/google/apps/people/events/proto/EventsCommonData$Theme;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 751
    :cond_117
    iget v1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->bitField0_:I

    and-int/lit16 v1, v1, 0x4000

    const/16 v2, 0x4000

    if-ne v1, v2, :cond_126

    .line 752
    const/16 v1, 0x12

    iget-object v2, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->themeSpecification_:Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 754
    :cond_126
    iget v1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->bitField0_:I

    const v2, 0x8000

    and-int/2addr v1, v2

    const v2, 0x8000

    if-ne v1, v2, :cond_138

    .line 755
    const/16 v1, 0x13

    iget-object v2, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->thirdPartyInfo_:Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 757
    :cond_138
    iget v1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->bitField0_:I

    const/high16 v2, 0x1

    and-int/2addr v1, v2

    const/high16 v2, 0x1

    if-ne v1, v2, :cond_148

    .line 758
    const/16 v1, 0x14

    iget-object v2, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->hangoutInfo_:Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 760
    :cond_148
    iget v1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->bitField0_:I

    const/high16 v2, 0x2

    and-int/2addr v1, v2

    const/high16 v2, 0x2

    if-ne v1, v2, :cond_158

    .line 761
    const/16 v1, 0x15

    iget-object v2, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->viewerInfo_:Lcom/google/protos/embeds/PlusEventItem$Invitee;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 763
    :cond_158
    iget v1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->bitField0_:I

    const/high16 v2, 0x8

    and-int/2addr v1, v2

    const/high16 v2, 0x8

    if-ne v1, v2, :cond_168

    .line 764
    const/16 v1, 0x16

    iget-boolean v2, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->isPublic_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 766
    :cond_168
    iget v1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->bitField0_:I

    const/high16 v2, 0x10

    and-int/2addr v1, v2

    const/high16 v2, 0x10

    if-ne v1, v2, :cond_17c

    .line 767
    const/16 v1, 0x17

    iget-object v2, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->abuseStatus_:Lcom/google/protos/embeds/PlusEventItem$PlusEvent$AbuseStatus;

    invoke-virtual {v2}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$AbuseStatus;->getNumber()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 769
    :cond_17c
    const/4 v0, 0x0

    :goto_17d
    iget-object v1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->photoContributor_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_195

    .line 770
    const/16 v2, 0x18

    iget-object v1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->photoContributor_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 769
    add-int/lit8 v0, v0, 0x1

    goto :goto_17d

    .line 772
    :cond_195
    iget v1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->bitField0_:I

    and-int/lit16 v1, v1, 0x800

    const/16 v2, 0x800

    if-ne v1, v2, :cond_1a4

    .line 773
    const/16 v1, 0x19

    iget-object v2, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->creator_:Lcom/google/protos/embed/PersonItem$Person;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 775
    :cond_1a4
    iget v1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->bitField0_:I

    const/high16 v2, 0x4

    and-int/2addr v1, v2

    const/high16 v2, 0x4

    if-ne v1, v2, :cond_1b4

    .line 776
    const/16 v1, 0x1a

    iget-boolean v2, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->isBroadcastView_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 778
    :cond_1b4
    return-void
.end method
