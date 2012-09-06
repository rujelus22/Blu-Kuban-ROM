.class public final Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "HangoutStartContext.java"

# interfaces
.implements Lcom/google/apps/gcomm/hangout/proto/HangoutStartContextOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$1;,
        Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;,
        Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee;,
        Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$InviteeOrBuilder;,
        Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;,
        Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarksOrBuilder;,
        Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;,
        Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$InvitationOrBuilder;,
        Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$CallbackType;,
        Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;,
        Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$InvitationType;,
        Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Type;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;

.field private static final serialVersionUID:J


# instance fields
.field private activityId_:Ljava/lang/Object;

.field private appData_:Ljava/lang/Object;

.field private appId_:Ljava/lang/Object;

.field private bitField0_:I

.field private callback_:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$CallbackType;

.field private circleId_:Ljava/lang/Object;

.field private contextId_:Ljava/lang/Object;

.field private create_:Z

.field private dEPRECATEDCallback_:Z

.field private externalKey_:Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;

.field private flippy_:Z

.field private hangoutId_:Ljava/lang/Object;

.field private hangoutType_:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Type;

.field private invitation_:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;

.field private invitee_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee;",
            ">;"
        }
    .end annotation
.end field

.field private latencyMarks_:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private nick_:Ljava/lang/Object;

.field private profileId_:Lcom/google/protobuf/LazyStringList;

.field private referringUrl_:Ljava/lang/Object;

.field private shouldAutoInvite_:Z

.field private shouldMuteVideo_:Z

.field private source_:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;

.field private topic_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 3787
    new-instance v0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;-><init>(Z)V

    sput-object v0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->defaultInstance:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;

    .line 3788
    sget-object v0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->defaultInstance:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;

    invoke-direct {v0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->initFields()V

    .line 3789
    return-void
.end method

.method private constructor <init>(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 10
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 2256
    iput-byte v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->memoizedIsInitialized:B

    .line 2362
    iput v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->memoizedSerializedSize:I

    .line 11
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5
    invoke-direct {p0, p1}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;-><init>(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 12
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2256
    iput-byte v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->memoizedIsInitialized:B

    .line 2362
    iput v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->memoizedSerializedSize:I

    .line 12
    return-void
.end method

.method static synthetic access$2702(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5
    iput-object p1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->hangoutId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2802(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Type;)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Type;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5
    iput-object p1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->hangoutType_:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Type;

    return-object p1
.end method

.method static synthetic access$2902(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5
    iput-object p1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->topic_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3002(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5
    iput-object p1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->referringUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3102(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5
    iput-object p1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->circleId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 5
    iget-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->profileId_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method static synthetic access$3202(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5
    iput-object p1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->profileId_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$3302(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5
    iput-object p1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->activityId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3402(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5
    iput-object p1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->appId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3502(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5
    iput-object p1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->appData_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3602(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5
    iput-boolean p1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->flippy_:Z

    return p1
.end method

.method static synthetic access$3702(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5
    iput-boolean p1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->dEPRECATEDCallback_:Z

    return p1
.end method

.method static synthetic access$3802(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5
    iput-object p1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->source_:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;

    return-object p1
.end method

.method static synthetic access$3902(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5
    iput-object p1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->invitation_:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;

    return-object p1
.end method

.method static synthetic access$4002(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5
    iput-boolean p1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->create_:Z

    return p1
.end method

.method static synthetic access$4102(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5
    iput-object p1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->nick_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4202(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5
    iput-object p1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->latencyMarks_:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;

    return-object p1
.end method

.method static synthetic access$4302(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$CallbackType;)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$CallbackType;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5
    iput-object p1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->callback_:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$CallbackType;

    return-object p1
.end method

.method static synthetic access$4402(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;)Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5
    iput-object p1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->externalKey_:Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;

    return-object p1
.end method

.method static synthetic access$4500(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 5
    iget-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->invitee_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4502(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5
    iput-object p1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->invitee_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$4602(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5
    iput-boolean p1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->shouldAutoInvite_:Z

    return p1
.end method

.method static synthetic access$4702(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5
    iput-object p1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->contextId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4802(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5
    iput-boolean p1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->shouldMuteVideo_:Z

    return p1
.end method

.method static synthetic access$4902(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5
    iput p1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->bitField0_:I

    return p1
.end method

.method private getActivityIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 1972
    iget-object v1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->activityId_:Ljava/lang/Object;

    .line 1973
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 1974
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1976
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->activityId_:Ljava/lang/Object;

    .line 1979
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

.method private getAppDataBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 2036
    iget-object v1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->appData_:Ljava/lang/Object;

    .line 2037
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 2038
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2040
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->appData_:Ljava/lang/Object;

    .line 2043
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

.method private getAppIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 2004
    iget-object v1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->appId_:Ljava/lang/Object;

    .line 2005
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 2006
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2008
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->appId_:Ljava/lang/Object;

    .line 2011
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

.method private getCircleIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 1926
    iget-object v1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->circleId_:Ljava/lang/Object;

    .line 1927
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 1928
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1930
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->circleId_:Ljava/lang/Object;

    .line 1933
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

.method private getContextIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 2211
    iget-object v1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->contextId_:Ljava/lang/Object;

    .line 2212
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 2213
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2215
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->contextId_:Ljava/lang/Object;

    .line 2218
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

.method public static getDefaultInstance()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;
    .registers 1

    .prologue
    .line 16
    sget-object v0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->defaultInstance:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;

    return-object v0
.end method

.method private getHangoutIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 1820
    iget-object v1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->hangoutId_:Ljava/lang/Object;

    .line 1821
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 1822
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1824
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->hangoutId_:Ljava/lang/Object;

    .line 1827
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

.method private getNickBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 2118
    iget-object v1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->nick_:Ljava/lang/Object;

    .line 2119
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 2120
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2122
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->nick_:Ljava/lang/Object;

    .line 2125
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

.method private getReferringUrlBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 1894
    iget-object v1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->referringUrl_:Ljava/lang/Object;

    .line 1895
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 1896
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1898
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->referringUrl_:Ljava/lang/Object;

    .line 1901
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

.method private getTopicBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 1862
    iget-object v1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->topic_:Ljava/lang/Object;

    .line 1863
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 1864
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1866
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->topic_:Ljava/lang/Object;

    .line 1869
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

    .line 2233
    const-string v0, ""

    iput-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->hangoutId_:Ljava/lang/Object;

    .line 2234
    sget-object v0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Type;->REGULAR:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Type;

    iput-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->hangoutType_:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Type;

    .line 2235
    const-string v0, ""

    iput-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->topic_:Ljava/lang/Object;

    .line 2236
    const-string v0, ""

    iput-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->referringUrl_:Ljava/lang/Object;

    .line 2237
    const-string v0, ""

    iput-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->circleId_:Ljava/lang/Object;

    .line 2238
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->profileId_:Lcom/google/protobuf/LazyStringList;

    .line 2239
    const-string v0, ""

    iput-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->activityId_:Ljava/lang/Object;

    .line 2240
    const-string v0, ""

    iput-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->appId_:Ljava/lang/Object;

    .line 2241
    const-string v0, ""

    iput-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->appData_:Ljava/lang/Object;

    .line 2242
    iput-boolean v1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->flippy_:Z

    .line 2243
    iput-boolean v1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->dEPRECATEDCallback_:Z

    .line 2244
    sget-object v0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;->SANDBAR:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;

    iput-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->source_:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;

    .line 2245
    invoke-static {}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;->getDefaultInstance()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->invitation_:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;

    .line 2246
    iput-boolean v1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->create_:Z

    .line 2247
    const-string v0, ""

    iput-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->nick_:Ljava/lang/Object;

    .line 2248
    invoke-static {}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;->getDefaultInstance()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;

    move-result-object v0

    iput-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->latencyMarks_:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;

    .line 2249
    sget-object v0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$CallbackType;->NONE:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$CallbackType;

    iput-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->callback_:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$CallbackType;

    .line 2250
    invoke-static {}, Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;->getDefaultInstance()Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->externalKey_:Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;

    .line 2251
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->invitee_:Ljava/util/List;

    .line 2252
    iput-boolean v1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->shouldAutoInvite_:Z

    .line 2253
    const-string v0, ""

    iput-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->contextId_:Ljava/lang/Object;

    .line 2254
    iput-boolean v1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->shouldMuteVideo_:Z

    .line 2255
    return-void
.end method

.method public static newBuilder()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;
    .registers 1

    .prologue
    .line 2539
    #calls: Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->create()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;
    invoke-static {}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->access$2500()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 2542
    invoke-static {}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->newBuilder()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;->mergeFrom(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getActivityId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1958
    iget-object v1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->activityId_:Ljava/lang/Object;

    .line 1959
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 1960
    check-cast v1, Ljava/lang/String;

    .line 1968
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 1962
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1964
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1965
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 1966
    iput-object v2, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->activityId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 1968
    goto :goto_8
.end method

.method public getAppData()Ljava/lang/String;
    .registers 5

    .prologue
    .line 2022
    iget-object v1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->appData_:Ljava/lang/Object;

    .line 2023
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 2024
    check-cast v1, Ljava/lang/String;

    .line 2032
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 2026
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2028
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 2029
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 2030
    iput-object v2, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->appData_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 2032
    goto :goto_8
.end method

.method public getAppId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1990
    iget-object v1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->appId_:Ljava/lang/Object;

    .line 1991
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 1992
    check-cast v1, Ljava/lang/String;

    .line 2000
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 1994
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1996
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1997
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 1998
    iput-object v2, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->appId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 2000
    goto :goto_8
.end method

.method public getCallback()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$CallbackType;
    .registers 2

    .prologue
    .line 2146
    iget-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->callback_:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$CallbackType;

    return-object v0
.end method

.method public getCircleId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1912
    iget-object v1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->circleId_:Ljava/lang/Object;

    .line 1913
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 1914
    check-cast v1, Ljava/lang/String;

    .line 1922
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 1916
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1918
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1919
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 1920
    iput-object v2, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->circleId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 1922
    goto :goto_8
.end method

.method public getContextId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 2197
    iget-object v1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->contextId_:Ljava/lang/Object;

    .line 2198
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 2199
    check-cast v1, Ljava/lang/String;

    .line 2207
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 2201
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2203
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 2204
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 2205
    iput-object v2, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->contextId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 2207
    goto :goto_8
.end method

.method public getCreate()Z
    .registers 2

    .prologue
    .line 2094
    iget-boolean v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->create_:Z

    return v0
.end method

.method public getDEPRECATEDCallback()Z
    .registers 2

    .prologue
    .line 2064
    iget-boolean v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->dEPRECATEDCallback_:Z

    return v0
.end method

.method public getDefaultInstanceForType()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;
    .registers 2

    .prologue
    .line 20
    sget-object v0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->defaultInstance:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 5
    invoke-virtual {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->getDefaultInstanceForType()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;

    move-result-object v0

    return-object v0
.end method

.method public getExternalKey()Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;
    .registers 2

    .prologue
    .line 2156
    iget-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->externalKey_:Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;

    return-object v0
.end method

.method public getFlippy()Z
    .registers 2

    .prologue
    .line 2054
    iget-boolean v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->flippy_:Z

    return v0
.end method

.method public getHangoutId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1806
    iget-object v1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->hangoutId_:Ljava/lang/Object;

    .line 1807
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 1808
    check-cast v1, Ljava/lang/String;

    .line 1816
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 1810
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1812
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1813
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 1814
    iput-object v2, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->hangoutId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 1816
    goto :goto_8
.end method

.method public getHangoutType()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Type;
    .registers 2

    .prologue
    .line 1838
    iget-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->hangoutType_:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Type;

    return-object v0
.end method

.method public getInvitation()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;
    .registers 2

    .prologue
    .line 2084
    iget-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->invitation_:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;

    return-object v0
.end method

.method public getInvitee(I)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee;
    .registers 3
    .parameter "index"

    .prologue
    .line 2173
    iget-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->invitee_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee;

    return-object v0
.end method

.method public getInviteeCount()I
    .registers 2

    .prologue
    .line 2170
    iget-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->invitee_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getLatencyMarks()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;
    .registers 2

    .prologue
    .line 2136
    iget-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->latencyMarks_:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;

    return-object v0
.end method

.method public getNick()Ljava/lang/String;
    .registers 5

    .prologue
    .line 2104
    iget-object v1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->nick_:Ljava/lang/Object;

    .line 2105
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 2106
    check-cast v1, Ljava/lang/String;

    .line 2114
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 2108
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2110
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 2111
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 2112
    iput-object v2, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->nick_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 2114
    goto :goto_8
.end method

.method public getProfileIdList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1942
    iget-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->profileId_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public getReferringUrl()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1880
    iget-object v1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->referringUrl_:Ljava/lang/Object;

    .line 1881
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 1882
    check-cast v1, Ljava/lang/String;

    .line 1890
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 1884
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1886
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1887
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 1888
    iput-object v2, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->referringUrl_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 1890
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 11

    .prologue
    const/16 v9, 0x10

    const/16 v8, 0x8

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 2364
    iget v2, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->memoizedSerializedSize:I

    .line 2365
    .local v2, size:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_e

    move v3, v2

    .line 2462
    .end local v2           #size:I
    .local v3, size:I
    :goto_d
    return v3

    .line 2367
    .end local v3           #size:I
    .restart local v2       #size:I
    :cond_e
    const/4 v2, 0x0

    .line 2368
    iget v4, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v5, :cond_1e

    .line 2369
    invoke-direct {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->getHangoutIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 2372
    :cond_1e
    iget v4, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v4, v6, :cond_2f

    .line 2373
    iget-object v4, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->hangoutType_:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Type;

    invoke-virtual {v4}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Type;->getNumber()I

    move-result v4

    invoke-static {v6, v4}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 2376
    :cond_2f
    iget v4, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-ne v4, v7, :cond_3f

    .line 2377
    const/4 v4, 0x3

    invoke-direct {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->getTopicBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 2380
    :cond_3f
    iget v4, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->bitField0_:I

    and-int/lit8 v4, v4, 0x8

    if-ne v4, v8, :cond_4e

    .line 2381
    invoke-direct {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->getReferringUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 2384
    :cond_4e
    iget v4, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->bitField0_:I

    and-int/lit8 v4, v4, 0x10

    if-ne v4, v9, :cond_5e

    .line 2385
    const/4 v4, 0x5

    invoke-direct {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->getCircleIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 2389
    :cond_5e
    const/4 v0, 0x0

    .line 2390
    .local v0, dataSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_60
    iget-object v4, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->profileId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v1, v4, :cond_76

    .line 2391
    iget-object v4, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->profileId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v0, v4

    .line 2390
    add-int/lit8 v1, v1, 0x1

    goto :goto_60

    .line 2394
    :cond_76
    add-int/2addr v2, v0

    .line 2395
    invoke-virtual {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->getProfileIdList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 2397
    iget v4, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->bitField0_:I

    and-int/lit8 v4, v4, 0x20

    const/16 v5, 0x20

    if-ne v4, v5, :cond_94

    .line 2398
    const/4 v4, 0x7

    invoke-direct {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->getActivityIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 2401
    :cond_94
    iget v4, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->bitField0_:I

    and-int/lit8 v4, v4, 0x40

    const/16 v5, 0x40

    if-ne v4, v5, :cond_a5

    .line 2402
    invoke-direct {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->getAppIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v8, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 2405
    :cond_a5
    iget v4, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->bitField0_:I

    and-int/lit16 v4, v4, 0x80

    const/16 v5, 0x80

    if-ne v4, v5, :cond_b8

    .line 2406
    const/16 v4, 0x9

    invoke-direct {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->getAppDataBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 2409
    :cond_b8
    iget v4, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->bitField0_:I

    and-int/lit16 v4, v4, 0x100

    const/16 v5, 0x100

    if-ne v4, v5, :cond_c9

    .line 2410
    const/16 v4, 0xa

    iget-boolean v5, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->flippy_:Z

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v2, v4

    .line 2413
    :cond_c9
    iget v4, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->bitField0_:I

    and-int/lit16 v4, v4, 0x200

    const/16 v5, 0x200

    if-ne v4, v5, :cond_da

    .line 2414
    const/16 v4, 0xb

    iget-boolean v5, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->dEPRECATEDCallback_:Z

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v2, v4

    .line 2417
    :cond_da
    iget v4, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->bitField0_:I

    and-int/lit16 v4, v4, 0x400

    const/16 v5, 0x400

    if-ne v4, v5, :cond_ef

    .line 2418
    const/16 v4, 0xc

    iget-object v5, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->source_:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;

    invoke-virtual {v5}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;->getNumber()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 2421
    :cond_ef
    iget v4, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->bitField0_:I

    and-int/lit16 v4, v4, 0x800

    const/16 v5, 0x800

    if-ne v4, v5, :cond_100

    .line 2422
    const/16 v4, 0xd

    iget-object v5, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->invitation_:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 2425
    :cond_100
    iget v4, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->bitField0_:I

    and-int/lit16 v4, v4, 0x1000

    const/16 v5, 0x1000

    if-ne v4, v5, :cond_111

    .line 2426
    const/16 v4, 0xe

    iget-boolean v5, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->create_:Z

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v2, v4

    .line 2429
    :cond_111
    iget v4, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->bitField0_:I

    and-int/lit16 v4, v4, 0x2000

    const/16 v5, 0x2000

    if-ne v4, v5, :cond_124

    .line 2430
    const/16 v4, 0xf

    invoke-direct {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->getNickBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 2433
    :cond_124
    iget v4, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->bitField0_:I

    and-int/lit16 v4, v4, 0x4000

    const/16 v5, 0x4000

    if-ne v4, v5, :cond_133

    .line 2434
    iget-object v4, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->latencyMarks_:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;

    invoke-static {v9, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 2437
    :cond_133
    iget v4, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->bitField0_:I

    const v5, 0x8000

    and-int/2addr v4, v5

    const v5, 0x8000

    if-ne v4, v5, :cond_14b

    .line 2438
    const/16 v4, 0x11

    iget-object v5, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->callback_:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$CallbackType;

    invoke-virtual {v5}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$CallbackType;->getNumber()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 2441
    :cond_14b
    iget v4, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->bitField0_:I

    const/high16 v5, 0x1

    and-int/2addr v4, v5

    const/high16 v5, 0x1

    if-ne v4, v5, :cond_15d

    .line 2442
    const/16 v4, 0x12

    iget-object v5, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->externalKey_:Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 2445
    :cond_15d
    const/4 v1, 0x0

    :goto_15e
    iget-object v4, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->invitee_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_178

    .line 2446
    const/16 v5, 0x13

    iget-object v4, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->invitee_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/MessageLite;

    invoke-static {v5, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 2445
    add-int/lit8 v1, v1, 0x1

    goto :goto_15e

    .line 2449
    :cond_178
    iget v4, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->bitField0_:I

    const/high16 v5, 0x2

    and-int/2addr v4, v5

    const/high16 v5, 0x2

    if-ne v4, v5, :cond_18a

    .line 2450
    const/16 v4, 0x14

    iget-boolean v5, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->shouldAutoInvite_:Z

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v2, v4

    .line 2453
    :cond_18a
    iget v4, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->bitField0_:I

    const/high16 v5, 0x4

    and-int/2addr v4, v5

    const/high16 v5, 0x4

    if-ne v4, v5, :cond_19e

    .line 2454
    const/16 v4, 0x15

    invoke-direct {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->getContextIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 2457
    :cond_19e
    iget v4, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->bitField0_:I

    const/high16 v5, 0x8

    and-int/2addr v4, v5

    const/high16 v5, 0x8

    if-ne v4, v5, :cond_1b0

    .line 2458
    const/16 v4, 0x16

    iget-boolean v5, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->shouldMuteVideo_:Z

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v2, v4

    .line 2461
    :cond_1b0
    iput v2, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->memoizedSerializedSize:I

    move v3, v2

    .line 2462
    .end local v2           #size:I
    .restart local v3       #size:I
    goto/16 :goto_d
.end method

.method public getShouldAutoInvite()Z
    .registers 2

    .prologue
    .line 2187
    iget-boolean v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->shouldAutoInvite_:Z

    return v0
.end method

.method public getShouldMuteVideo()Z
    .registers 2

    .prologue
    .line 2229
    iget-boolean v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->shouldMuteVideo_:Z

    return v0
.end method

.method public getSource()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;
    .registers 2

    .prologue
    .line 2074
    iget-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->source_:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;

    return-object v0
.end method

.method public getTopic()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1848
    iget-object v1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->topic_:Ljava/lang/Object;

    .line 1849
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 1850
    check-cast v1, Ljava/lang/String;

    .line 1858
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 1852
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1854
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1855
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 1856
    iput-object v2, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->topic_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 1858
    goto :goto_8
.end method

.method public hasActivityId()Z
    .registers 3

    .prologue
    .line 1955
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->bitField0_:I

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

.method public hasAppData()Z
    .registers 3

    .prologue
    .line 2019
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->bitField0_:I

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

.method public hasAppId()Z
    .registers 3

    .prologue
    .line 1987
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->bitField0_:I

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

.method public hasCallback()Z
    .registers 3

    .prologue
    const v1, 0x8000

    .line 2143
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasCircleId()Z
    .registers 3

    .prologue
    .line 1909
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->bitField0_:I

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

.method public hasContextId()Z
    .registers 3

    .prologue
    const/high16 v1, 0x4

    .line 2194
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasCreate()Z
    .registers 3

    .prologue
    .line 2091
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->bitField0_:I

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

.method public hasDEPRECATEDCallback()Z
    .registers 3

    .prologue
    .line 2061
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->bitField0_:I

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

.method public hasExternalKey()Z
    .registers 3

    .prologue
    const/high16 v1, 0x1

    .line 2153
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasFlippy()Z
    .registers 3

    .prologue
    .line 2051
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->bitField0_:I

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

.method public hasHangoutId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1803
    iget v1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasHangoutType()Z
    .registers 3

    .prologue
    .line 1835
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->bitField0_:I

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

.method public hasInvitation()Z
    .registers 3

    .prologue
    .line 2081
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->bitField0_:I

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

.method public hasLatencyMarks()Z
    .registers 3

    .prologue
    .line 2133
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->bitField0_:I

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

.method public hasNick()Z
    .registers 3

    .prologue
    .line 2101
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->bitField0_:I

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

.method public hasReferringUrl()Z
    .registers 3

    .prologue
    .line 1877
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->bitField0_:I

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

.method public hasShouldAutoInvite()Z
    .registers 3

    .prologue
    const/high16 v1, 0x2

    .line 2184
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasShouldMuteVideo()Z
    .registers 3

    .prologue
    const/high16 v1, 0x8

    .line 2226
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasSource()Z
    .registers 3

    .prologue
    .line 2071
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->bitField0_:I

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

.method public hasTopic()Z
    .registers 3

    .prologue
    .line 1845
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2258
    iget-byte v1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->memoizedIsInitialized:B

    .line 2259
    .local v1, isInitialized:B
    const/4 v4, -0x1

    if-eq v1, v4, :cond_d

    if-ne v1, v2, :cond_b

    :goto_9
    move v3, v2

    .line 2288
    :goto_a
    return v3

    :cond_b
    move v2, v3

    .line 2259
    goto :goto_9

    .line 2261
    :cond_d
    invoke-virtual {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->hasHangoutId()Z

    move-result v4

    if-nez v4, :cond_16

    .line 2262
    iput-byte v3, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->memoizedIsInitialized:B

    goto :goto_a

    .line 2265
    :cond_16
    invoke-virtual {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->hasHangoutType()Z

    move-result v4

    if-nez v4, :cond_1f

    .line 2266
    iput-byte v3, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->memoizedIsInitialized:B

    goto :goto_a

    .line 2269
    :cond_1f
    invoke-virtual {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->hasInvitation()Z

    move-result v4

    if-eqz v4, :cond_32

    .line 2270
    invoke-virtual {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->getInvitation()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_32

    .line 2271
    iput-byte v3, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->memoizedIsInitialized:B

    goto :goto_a

    .line 2275
    :cond_32
    invoke-virtual {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->hasExternalKey()Z

    move-result v4

    if-eqz v4, :cond_45

    .line 2276
    invoke-virtual {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->getExternalKey()Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_45

    .line 2277
    iput-byte v3, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->memoizedIsInitialized:B

    goto :goto_a

    .line 2281
    :cond_45
    const/4 v0, 0x0

    .local v0, i:I
    :goto_46
    invoke-virtual {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->getInviteeCount()I

    move-result v4

    if-ge v0, v4, :cond_5c

    .line 2282
    invoke-virtual {p0, v0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->getInvitee(I)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_59

    .line 2283
    iput-byte v3, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->memoizedIsInitialized:B

    goto :goto_a

    .line 2281
    :cond_59
    add-int/lit8 v0, v0, 0x1

    goto :goto_46

    .line 2287
    :cond_5c
    iput-byte v2, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->memoizedIsInitialized:B

    move v3, v2

    .line 2288
    goto :goto_a
.end method

.method public newBuilderForType()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;
    .registers 2

    .prologue
    .line 2540
    invoke-static {}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->newBuilder()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 5
    invoke-virtual {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->newBuilderForType()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;
    .registers 2

    .prologue
    .line 2544
    invoke-static {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->newBuilder(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 5
    invoke-virtual {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->toBuilder()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Builder;

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
    .line 2469
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

    .line 2293
    invoke-virtual {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->getSerializedSize()I

    .line 2294
    iget v1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_17

    .line 2295
    invoke-direct {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->getHangoutIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2297
    :cond_17
    iget v1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_26

    .line 2298
    iget-object v1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->hangoutType_:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Type;

    invoke-virtual {v1}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Type;->getNumber()I

    move-result v1

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 2300
    :cond_26
    iget v1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_34

    .line 2301
    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->getTopicBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2303
    :cond_34
    iget v1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v5, :cond_41

    .line 2304
    invoke-direct {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->getReferringUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2306
    :cond_41
    iget v1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-ne v1, v6, :cond_4f

    .line 2307
    const/4 v1, 0x5

    invoke-direct {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->getCircleIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2309
    :cond_4f
    const/4 v0, 0x0

    .local v0, i:I
    :goto_50
    iget-object v1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->profileId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_65

    .line 2310
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->profileId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2, v0}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2309
    add-int/lit8 v0, v0, 0x1

    goto :goto_50

    .line 2312
    :cond_65
    iget v1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_75

    .line 2313
    const/4 v1, 0x7

    invoke-direct {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->getActivityIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2315
    :cond_75
    iget v1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_84

    .line 2316
    invoke-direct {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->getAppIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v5, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2318
    :cond_84
    iget v1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_95

    .line 2319
    const/16 v1, 0x9

    invoke-direct {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->getAppDataBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2321
    :cond_95
    iget v1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->bitField0_:I

    and-int/lit16 v1, v1, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_a4

    .line 2322
    const/16 v1, 0xa

    iget-boolean v2, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->flippy_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 2324
    :cond_a4
    iget v1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->bitField0_:I

    and-int/lit16 v1, v1, 0x200

    const/16 v2, 0x200

    if-ne v1, v2, :cond_b3

    .line 2325
    const/16 v1, 0xb

    iget-boolean v2, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->dEPRECATEDCallback_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 2327
    :cond_b3
    iget v1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->bitField0_:I

    and-int/lit16 v1, v1, 0x400

    const/16 v2, 0x400

    if-ne v1, v2, :cond_c6

    .line 2328
    const/16 v1, 0xc

    iget-object v2, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->source_:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;

    invoke-virtual {v2}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;->getNumber()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 2330
    :cond_c6
    iget v1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->bitField0_:I

    and-int/lit16 v1, v1, 0x800

    const/16 v2, 0x800

    if-ne v1, v2, :cond_d5

    .line 2331
    const/16 v1, 0xd

    iget-object v2, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->invitation_:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 2333
    :cond_d5
    iget v1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->bitField0_:I

    and-int/lit16 v1, v1, 0x1000

    const/16 v2, 0x1000

    if-ne v1, v2, :cond_e4

    .line 2334
    const/16 v1, 0xe

    iget-boolean v2, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->create_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 2336
    :cond_e4
    iget v1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->bitField0_:I

    and-int/lit16 v1, v1, 0x2000

    const/16 v2, 0x2000

    if-ne v1, v2, :cond_f5

    .line 2337
    const/16 v1, 0xf

    invoke-direct {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->getNickBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2339
    :cond_f5
    iget v1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->bitField0_:I

    and-int/lit16 v1, v1, 0x4000

    const/16 v2, 0x4000

    if-ne v1, v2, :cond_102

    .line 2340
    iget-object v1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->latencyMarks_:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;

    invoke-virtual {p1, v6, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 2342
    :cond_102
    iget v1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->bitField0_:I

    const v2, 0x8000

    and-int/2addr v1, v2

    const v2, 0x8000

    if-ne v1, v2, :cond_118

    .line 2343
    const/16 v1, 0x11

    iget-object v2, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->callback_:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$CallbackType;

    invoke-virtual {v2}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$CallbackType;->getNumber()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 2345
    :cond_118
    iget v1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->bitField0_:I

    const/high16 v2, 0x1

    and-int/2addr v1, v2

    const/high16 v2, 0x1

    if-ne v1, v2, :cond_128

    .line 2346
    const/16 v1, 0x12

    iget-object v2, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->externalKey_:Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 2348
    :cond_128
    const/4 v0, 0x0

    :goto_129
    iget-object v1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->invitee_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_141

    .line 2349
    const/16 v2, 0x13

    iget-object v1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->invitee_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 2348
    add-int/lit8 v0, v0, 0x1

    goto :goto_129

    .line 2351
    :cond_141
    iget v1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->bitField0_:I

    const/high16 v2, 0x2

    and-int/2addr v1, v2

    const/high16 v2, 0x2

    if-ne v1, v2, :cond_151

    .line 2352
    const/16 v1, 0x14

    iget-boolean v2, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->shouldAutoInvite_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 2354
    :cond_151
    iget v1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->bitField0_:I

    const/high16 v2, 0x4

    and-int/2addr v1, v2

    const/high16 v2, 0x4

    if-ne v1, v2, :cond_163

    .line 2355
    const/16 v1, 0x15

    invoke-direct {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->getContextIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2357
    :cond_163
    iget v1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->bitField0_:I

    const/high16 v2, 0x8

    and-int/2addr v1, v2

    const/high16 v2, 0x8

    if-ne v1, v2, :cond_173

    .line 2358
    const/16 v1, 0x16

    iget-boolean v2, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->shouldMuteVideo_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 2360
    :cond_173
    return-void
.end method
