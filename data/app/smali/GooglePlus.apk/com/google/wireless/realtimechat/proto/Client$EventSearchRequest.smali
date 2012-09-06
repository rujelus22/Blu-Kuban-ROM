.class public final Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EventSearchRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private contentQuery_:Ljava/lang/Object;

.field private conversationId_:Ljava/lang/Object;

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

.field private unstructuredQuery_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 36868
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;

    .line 36869
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->initFields()V

    .line 36870
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 35956
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 36137
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->memoizedIsInitialized:B

    .line 36175
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->memoizedSerializedSize:I

    .line 35957
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35951
    invoke-direct {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;-><init>(Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 35958
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 36137
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->memoizedIsInitialized:B

    .line 36175
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->memoizedSerializedSize:I

    .line 35958
    return-void
.end method

.method static synthetic access$50102(Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35951
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->conversationId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$50202(Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35951
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->unstructuredQuery_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$50300(Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 35951
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->fromQuery_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$50302(Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35951
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->fromQuery_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$50402(Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35951
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->contentQuery_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$50502(Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;Lcom/google/wireless/realtimechat/proto/Data$Location;)Lcom/google/wireless/realtimechat/proto/Data$Location;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35951
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->locationQuery_:Lcom/google/wireless/realtimechat/proto/Data$Location;

    return-object p1
.end method

.method static synthetic access$50602(Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35951
    iput-boolean p1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->hasPhotoQuery_:Z

    return p1
.end method

.method static synthetic access$50702(Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;Lcom/google/wireless/realtimechat/proto/Data$TimeRange;)Lcom/google/wireless/realtimechat/proto/Data$TimeRange;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35951
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->timeRangeQuery_:Lcom/google/wireless/realtimechat/proto/Data$TimeRange;

    return-object p1
.end method

.method static synthetic access$50802(Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35951
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    return-object p1
.end method

.method static synthetic access$50902(Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35951
    iput p1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->bitField0_:I

    return p1
.end method

.method private getContentQueryBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 36076
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->contentQuery_:Ljava/lang/Object;

    .line 36077
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 36078
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 36080
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->contentQuery_:Ljava/lang/Object;

    .line 36083
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

.method private getConversationIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 35991
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->conversationId_:Ljava/lang/Object;

    .line 35992
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 35993
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 35995
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->conversationId_:Ljava/lang/Object;

    .line 35998
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

.method public static getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;
    .registers 1

    .prologue
    .line 35962
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;

    return-object v0
.end method

.method private getUnstructuredQueryBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 36023
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->unstructuredQuery_:Ljava/lang/Object;

    .line 36024
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 36025
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 36027
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->unstructuredQuery_:Ljava/lang/Object;

    .line 36030
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
    .line 36128
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->conversationId_:Ljava/lang/Object;

    .line 36129
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->unstructuredQuery_:Ljava/lang/Object;

    .line 36130
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->fromQuery_:Ljava/util/List;

    .line 36131
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->contentQuery_:Ljava/lang/Object;

    .line 36132
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$Location;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->locationQuery_:Lcom/google/wireless/realtimechat/proto/Data$Location;

    .line 36133
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->hasPhotoQuery_:Z

    .line 36134
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$TimeRange;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$TimeRange;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->timeRangeQuery_:Lcom/google/wireless/realtimechat/proto/Data$TimeRange;

    .line 36135
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 36136
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;
    .registers 1

    .prologue
    .line 36291
    #calls: Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->access$49900()Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;)Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 36294
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;)Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getContentQuery()Ljava/lang/String;
    .registers 5

    .prologue
    .line 36062
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->contentQuery_:Ljava/lang/Object;

    .line 36063
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 36064
    check-cast v1, Ljava/lang/String;

    .line 36072
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 36066
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 36068
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 36069
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 36070
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->contentQuery_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 36072
    goto :goto_8
.end method

.method public getConversationId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 35977
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->conversationId_:Ljava/lang/Object;

    .line 35978
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 35979
    check-cast v1, Ljava/lang/String;

    .line 35987
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 35981
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 35983
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 35984
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 35985
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->conversationId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 35987
    goto :goto_8
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 35951
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;
    .registers 2

    .prologue
    .line 35966
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;

    return-object v0
.end method

.method public getFromQuery(I)Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;
    .registers 3
    .parameter "index"

    .prologue
    .line 36048
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->fromQuery_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;

    return-object v0
.end method

.method public getFromQueryCount()I
    .registers 2

    .prologue
    .line 36045
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->fromQuery_:Ljava/util/List;

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
    .line 36038
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->fromQuery_:Ljava/util/List;

    return-object v0
.end method

.method public getFromQueryOrBuilder(I)Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributesOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 36052
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->fromQuery_:Ljava/util/List;

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
    .line 36042
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->fromQuery_:Ljava/util/List;

    return-object v0
.end method

.method public getHasPhotoQuery()Z
    .registers 2

    .prologue
    .line 36104
    iget-boolean v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->hasPhotoQuery_:Z

    return v0
.end method

.method public getLocationQuery()Lcom/google/wireless/realtimechat/proto/Data$Location;
    .registers 2

    .prologue
    .line 36094
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->locationQuery_:Lcom/google/wireless/realtimechat/proto/Data$Location;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 9

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 36177
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->memoizedSerializedSize:I

    .line 36178
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_c

    move v2, v1

    .line 36214
    .end local v1           #size:I
    .local v2, size:I
    :goto_b
    return v2

    .line 36180
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_c
    const/4 v1, 0x0

    .line 36181
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_1c

    .line 36182
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->getConversationIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 36185
    :cond_1c
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v5, :cond_2b

    .line 36186
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->getUnstructuredQueryBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 36189
    :cond_2b
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2c
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->fromQuery_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_45

    .line 36190
    const/4 v4, 0x3

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->fromQuery_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 36189
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    .line 36193
    :cond_45
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-ne v3, v6, :cond_54

    .line 36194
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->getContentQueryBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 36197
    :cond_54
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    if-ne v3, v7, :cond_62

    .line 36198
    const/4 v3, 0x5

    iget-object v4, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->locationQuery_:Lcom/google/wireless/realtimechat/proto/Data$Location;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 36201
    :cond_62
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_72

    .line 36202
    const/4 v3, 0x6

    iget-boolean v4, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->hasPhotoQuery_:Z

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v1, v3

    .line 36205
    :cond_72
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_82

    .line 36206
    const/4 v3, 0x7

    iget-object v4, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->timeRangeQuery_:Lcom/google/wireless/realtimechat/proto/Data$TimeRange;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 36209
    :cond_82
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_91

    .line 36210
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    invoke-static {v7, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 36213
    :cond_91
    iput v1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->memoizedSerializedSize:I

    move v2, v1

    .line 36214
    .end local v1           #size:I
    .restart local v2       #size:I
    goto/16 :goto_b
.end method

.method public getStubbyInfo()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;
    .registers 2

    .prologue
    .line 36124
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    return-object v0
.end method

.method public getTimeRangeQuery()Lcom/google/wireless/realtimechat/proto/Data$TimeRange;
    .registers 2

    .prologue
    .line 36114
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->timeRangeQuery_:Lcom/google/wireless/realtimechat/proto/Data$TimeRange;

    return-object v0
.end method

.method public getUnstructuredQuery()Ljava/lang/String;
    .registers 5

    .prologue
    .line 36009
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->unstructuredQuery_:Ljava/lang/Object;

    .line 36010
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 36011
    check-cast v1, Ljava/lang/String;

    .line 36019
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 36013
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 36015
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 36016
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 36017
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->unstructuredQuery_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 36019
    goto :goto_8
.end method

.method public hasContentQuery()Z
    .registers 3

    .prologue
    .line 36059
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->bitField0_:I

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

.method public hasConversationId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 35974
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasHasPhotoQuery()Z
    .registers 3

    .prologue
    .line 36101
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->bitField0_:I

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

.method public hasLocationQuery()Z
    .registers 3

    .prologue
    .line 36091
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->bitField0_:I

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

.method public hasStubbyInfo()Z
    .registers 3

    .prologue
    .line 36121
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->bitField0_:I

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

.method public hasTimeRangeQuery()Z
    .registers 3

    .prologue
    .line 36111
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->bitField0_:I

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

.method public hasUnstructuredQuery()Z
    .registers 3

    .prologue
    .line 36006
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 36139
    iget-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->memoizedIsInitialized:B

    .line 36140
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 36143
    :goto_8
    return v1

    .line 36140
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 36142
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 35951
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->newBuilderForType()Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;
    .registers 2

    .prologue
    .line 36292
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 35951
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->toBuilder()Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;
    .registers 2

    .prologue
    .line 36296
    invoke-static {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;)Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;

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
    .line 36221
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

    .line 36148
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->getSerializedSize()I

    .line 36149
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_15

    .line 36150
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->getConversationIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 36152
    :cond_15
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_22

    .line 36153
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->getUnstructuredQueryBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 36155
    :cond_22
    const/4 v0, 0x0

    .local v0, i:I
    :goto_23
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->fromQuery_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3a

    .line 36156
    const/4 v2, 0x3

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->fromQuery_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 36155
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 36158
    :cond_3a
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_47

    .line 36159
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->getContentQueryBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 36161
    :cond_47
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v5, :cond_53

    .line 36162
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->locationQuery_:Lcom/google/wireless/realtimechat/proto/Data$Location;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 36164
    :cond_53
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_61

    .line 36165
    const/4 v1, 0x6

    iget-boolean v2, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->hasPhotoQuery_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 36167
    :cond_61
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_6f

    .line 36168
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->timeRangeQuery_:Lcom/google/wireless/realtimechat/proto/Data$TimeRange;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 36170
    :cond_6f
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_7c

    .line 36171
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    invoke-virtual {p1, v5, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 36173
    :cond_7c
    return-void
.end method
