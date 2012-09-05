.class public final Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConversationSearchRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private contentQuery_:Ljava/lang/Object;

.field private conversationQuery_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes;",
            ">;"
        }
    .end annotation
.end field

.field private fromQuery_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;",
            ">;"
        }
    .end annotation
.end field

.field private hasPhotoQuery_:Z

.field private locationQuery_:Lcom/google/wireless/realtimechat/proto/Data$Location;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

.field private timeRangeQuery_:Lcom/google/wireless/realtimechat/proto/Data$TimeRange;

.field private toQuery_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;",
            ">;"
        }
    .end annotation
.end field

.field private unstructuredQuery_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 35907
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;

    .line 35908
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->initFields()V

    .line 35909
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 34803
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 34995
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->memoizedIsInitialized:B

    .line 35036
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->memoizedSerializedSize:I

    .line 34804
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34798
    invoke-direct {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;-><init>(Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 34805
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 34995
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->memoizedIsInitialized:B

    .line 35036
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->memoizedSerializedSize:I

    .line 34805
    return-void
.end method

.method static synthetic access$48802(Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34798
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->unstructuredQuery_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$48900(Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34798
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->fromQuery_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$48902(Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34798
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->fromQuery_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$49000(Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34798
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->toQuery_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$49002(Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34798
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->toQuery_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$49100(Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34798
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->conversationQuery_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$49102(Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34798
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->conversationQuery_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$49202(Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34798
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->contentQuery_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$49302(Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;Lcom/google/wireless/realtimechat/proto/Data$Location;)Lcom/google/wireless/realtimechat/proto/Data$Location;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34798
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->locationQuery_:Lcom/google/wireless/realtimechat/proto/Data$Location;

    return-object p1
.end method

.method static synthetic access$49402(Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34798
    iput-boolean p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->hasPhotoQuery_:Z

    return p1
.end method

.method static synthetic access$49502(Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;Lcom/google/wireless/realtimechat/proto/Data$TimeRange;)Lcom/google/wireless/realtimechat/proto/Data$TimeRange;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34798
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->timeRangeQuery_:Lcom/google/wireless/realtimechat/proto/Data$TimeRange;

    return-object p1
.end method

.method static synthetic access$49602(Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34798
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    return-object p1
.end method

.method static synthetic access$49702(Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34798
    iput p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->bitField0_:I

    return p1
.end method

.method private getContentQueryBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 34933
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->contentQuery_:Ljava/lang/Object;

    .line 34934
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 34935
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 34937
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->contentQuery_:Ljava/lang/Object;

    .line 34940
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

.method public static getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;
    .registers 1

    .prologue
    .line 34809
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;

    return-object v0
.end method

.method private getUnstructuredQueryBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 34838
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->unstructuredQuery_:Ljava/lang/Object;

    .line 34839
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 34840
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 34842
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->unstructuredQuery_:Ljava/lang/Object;

    .line 34845
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
    .line 34985
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->unstructuredQuery_:Ljava/lang/Object;

    .line 34986
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->fromQuery_:Ljava/util/List;

    .line 34987
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->toQuery_:Ljava/util/List;

    .line 34988
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->conversationQuery_:Ljava/util/List;

    .line 34989
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->contentQuery_:Ljava/lang/Object;

    .line 34990
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$Location;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->locationQuery_:Lcom/google/wireless/realtimechat/proto/Data$Location;

    .line 34991
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->hasPhotoQuery_:Z

    .line 34992
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$TimeRange;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$TimeRange;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->timeRangeQuery_:Lcom/google/wireless/realtimechat/proto/Data$TimeRange;

    .line 34993
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 34994
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;
    .registers 1

    .prologue
    .line 35156
    #calls: Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->access$48600()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;)Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 35159
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;)Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getContentQuery()Ljava/lang/String;
    .registers 5

    .prologue
    .line 34919
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->contentQuery_:Ljava/lang/Object;

    .line 34920
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 34921
    check-cast v1, Ljava/lang/String;

    .line 34929
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 34923
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 34925
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 34926
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 34927
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->contentQuery_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 34929
    goto :goto_8
.end method

.method public getConversationQuery(I)Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes;
    .registers 3
    .parameter "index"

    .prologue
    .line 34905
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->conversationQuery_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes;

    return-object v0
.end method

.method public getConversationQueryCount()I
    .registers 2

    .prologue
    .line 34902
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->conversationQuery_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getConversationQueryList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34895
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->conversationQuery_:Ljava/util/List;

    return-object v0
.end method

.method public getConversationQueryOrBuilder(I)Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributesOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 34909
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->conversationQuery_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributesOrBuilder;

    return-object v0
.end method

.method public getConversationQueryOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributesOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34899
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->conversationQuery_:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 34798
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;
    .registers 2

    .prologue
    .line 34813
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;

    return-object v0
.end method

.method public getFromQuery(I)Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;
    .registers 3
    .parameter "index"

    .prologue
    .line 34863
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->fromQuery_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;

    return-object v0
.end method

.method public getFromQueryCount()I
    .registers 2

    .prologue
    .line 34860
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->fromQuery_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFromQueryList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34853
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->fromQuery_:Ljava/util/List;

    return-object v0
.end method

.method public getFromQueryOrBuilder(I)Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributesOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 34867
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->fromQuery_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributesOrBuilder;

    return-object v0
.end method

.method public getFromQueryOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributesOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34857
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->fromQuery_:Ljava/util/List;

    return-object v0
.end method

.method public getHasPhotoQuery()Z
    .registers 2

    .prologue
    .line 34961
    iget-boolean v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->hasPhotoQuery_:Z

    return v0
.end method

.method public getLocationQuery()Lcom/google/wireless/realtimechat/proto/Data$Location;
    .registers 2

    .prologue
    .line 34951
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->locationQuery_:Lcom/google/wireless/realtimechat/proto/Data$Location;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 9

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 35038
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->memoizedSerializedSize:I

    .line 35039
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_c

    move v2, v1

    .line 35079
    .end local v1           #size:I
    .local v2, size:I
    :goto_b
    return v2

    .line 35041
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_c
    const/4 v1, 0x0

    .line 35042
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_1c

    .line 35043
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->getUnstructuredQueryBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 35046
    :cond_1c
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1d
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->fromQuery_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_35

    .line 35047
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->fromQuery_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v5, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 35046
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 35050
    :cond_35
    const/4 v0, 0x0

    :goto_36
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->toQuery_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_4f

    .line 35051
    const/4 v4, 0x3

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->toQuery_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 35050
    add-int/lit8 v0, v0, 0x1

    goto :goto_36

    .line 35054
    :cond_4f
    const/4 v0, 0x0

    :goto_50
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->conversationQuery_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_68

    .line 35055
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->conversationQuery_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v6, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 35054
    add-int/lit8 v0, v0, 0x1

    goto :goto_50

    .line 35058
    :cond_68
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v5, :cond_78

    .line 35059
    const/4 v3, 0x5

    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->getContentQueryBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 35062
    :cond_78
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-ne v3, v6, :cond_86

    .line 35063
    const/4 v3, 0x6

    iget-object v4, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->locationQuery_:Lcom/google/wireless/realtimechat/proto/Data$Location;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 35066
    :cond_86
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    if-ne v3, v7, :cond_94

    .line 35067
    const/4 v3, 0x7

    iget-boolean v4, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->hasPhotoQuery_:Z

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v1, v3

    .line 35070
    :cond_94
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_a3

    .line 35071
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->timeRangeQuery_:Lcom/google/wireless/realtimechat/proto/Data$TimeRange;

    invoke-static {v7, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 35074
    :cond_a3
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_b4

    .line 35075
    const/16 v3, 0x9

    iget-object v4, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 35078
    :cond_b4
    iput v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->memoizedSerializedSize:I

    move v2, v1

    .line 35079
    .end local v1           #size:I
    .restart local v2       #size:I
    goto/16 :goto_b
.end method

.method public getStubbyInfo()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;
    .registers 2

    .prologue
    .line 34981
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    return-object v0
.end method

.method public getTimeRangeQuery()Lcom/google/wireless/realtimechat/proto/Data$TimeRange;
    .registers 2

    .prologue
    .line 34971
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->timeRangeQuery_:Lcom/google/wireless/realtimechat/proto/Data$TimeRange;

    return-object v0
.end method

.method public getToQuery(I)Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;
    .registers 3
    .parameter "index"

    .prologue
    .line 34884
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->toQuery_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;

    return-object v0
.end method

.method public getToQueryCount()I
    .registers 2

    .prologue
    .line 34881
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->toQuery_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getToQueryList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34874
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->toQuery_:Ljava/util/List;

    return-object v0
.end method

.method public getToQueryOrBuilder(I)Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributesOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 34888
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->toQuery_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributesOrBuilder;

    return-object v0
.end method

.method public getToQueryOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributesOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34878
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->toQuery_:Ljava/util/List;

    return-object v0
.end method

.method public getUnstructuredQuery()Ljava/lang/String;
    .registers 5

    .prologue
    .line 34824
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->unstructuredQuery_:Ljava/lang/Object;

    .line 34825
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 34826
    check-cast v1, Ljava/lang/String;

    .line 34834
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 34828
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 34830
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 34831
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 34832
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->unstructuredQuery_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 34834
    goto :goto_8
.end method

.method public hasContentQuery()Z
    .registers 3

    .prologue
    .line 34916
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->bitField0_:I

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

.method public hasHasPhotoQuery()Z
    .registers 3

    .prologue
    .line 34958
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->bitField0_:I

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

.method public hasLocationQuery()Z
    .registers 3

    .prologue
    .line 34948
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->bitField0_:I

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

.method public hasStubbyInfo()Z
    .registers 3

    .prologue
    .line 34978
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->bitField0_:I

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

.method public hasTimeRangeQuery()Z
    .registers 3

    .prologue
    .line 34968
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->bitField0_:I

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

.method public hasUnstructuredQuery()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 34821
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 34997
    iget-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->memoizedIsInitialized:B

    .line 34998
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 35001
    :goto_8
    return v1

    .line 34998
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 35000
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method protected writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 35086
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
    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 35006
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->getSerializedSize()I

    .line 35007
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_15

    .line 35008
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->getUnstructuredQueryBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 35010
    :cond_15
    const/4 v0, 0x0

    .local v0, i:I
    :goto_16
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->fromQuery_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2c

    .line 35011
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->fromQuery_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 35010
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 35013
    :cond_2c
    const/4 v0, 0x0

    :goto_2d
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->toQuery_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_44

    .line 35014
    const/4 v2, 0x3

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->toQuery_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 35013
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    .line 35016
    :cond_44
    const/4 v0, 0x0

    :goto_45
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->conversationQuery_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5b

    .line 35017
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->conversationQuery_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 35016
    add-int/lit8 v0, v0, 0x1

    goto :goto_45

    .line 35019
    :cond_5b
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_69

    .line 35020
    const/4 v1, 0x5

    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->getContentQueryBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 35022
    :cond_69
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_75

    .line 35023
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->locationQuery_:Lcom/google/wireless/realtimechat/proto/Data$Location;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 35025
    :cond_75
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v5, :cond_81

    .line 35026
    const/4 v1, 0x7

    iget-boolean v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->hasPhotoQuery_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 35028
    :cond_81
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_8e

    .line 35029
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->timeRangeQuery_:Lcom/google/wireless/realtimechat/proto/Data$TimeRange;

    invoke-virtual {p1, v5, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 35031
    :cond_8e
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_9d

    .line 35032
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 35034
    :cond_9d
    return-void
.end method
