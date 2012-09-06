.class public final Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GlobalConversationPreferencesRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;,
        Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;,
        Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModificationOrBuilder;,
        Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification;,
        Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModificationOrBuilder;,
        Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$PreferencesModificationType;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private conversationId_:Ljava/lang/Object;

.field private locationModification_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

.field private tagModification_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification;",
            ">;"
        }
    .end annotation
.end field

.field private visibilityModification_:Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 22485
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;

    .line 22486
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;->initFields()V

    .line 22487
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 21027
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 21929
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;->memoizedIsInitialized:B

    .line 21958
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;->memoizedSerializedSize:I

    .line 21028
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21022
    invoke-direct {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;-><init>(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 21029
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 21929
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;->memoizedIsInitialized:B

    .line 21958
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;->memoizedSerializedSize:I

    .line 21029
    return-void
.end method

.method static synthetic access$29802(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21022
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;->conversationId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$29902(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility;)Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21022
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;->visibilityModification_:Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility;

    return-object p1
.end method

.method static synthetic access$30000(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 21022
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;->tagModification_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$30002(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21022
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;->tagModification_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$30102(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;)Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21022
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;->locationModification_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;

    return-object p1
.end method

.method static synthetic access$30202(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21022
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    return-object p1
.end method

.method static synthetic access$30302(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21022
    iput p1, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;->bitField0_:I

    return p1
.end method

.method private getConversationIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 21860
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;->conversationId_:Ljava/lang/Object;

    .line 21861
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 21862
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 21864
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;->conversationId_:Ljava/lang/Object;

    .line 21867
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

.method public static getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;
    .registers 1

    .prologue
    .line 21033
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 21923
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;->conversationId_:Ljava/lang/Object;

    .line 21924
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility;->PUBLIC:Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;->visibilityModification_:Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility;

    .line 21925
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;->tagModification_:Ljava/util/List;

    .line 21926
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;->locationModification_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;

    .line 21927
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 21928
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;
    .registers 1

    .prologue
    .line 22062
    #calls: Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->access$29600()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;)Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 22065
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;)Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getConversationId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 21846
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;->conversationId_:Ljava/lang/Object;

    .line 21847
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 21848
    check-cast v1, Ljava/lang/String;

    .line 21856
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 21850
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 21852
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 21853
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 21854
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;->conversationId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 21856
    goto :goto_8
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 21022
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;
    .registers 2

    .prologue
    .line 21037
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;

    return-object v0
.end method

.method public getLocationModification()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;
    .registers 2

    .prologue
    .line 21909
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;->locationModification_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 8

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 21960
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;->memoizedSerializedSize:I

    .line 21961
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_a

    move v2, v1

    .line 21985
    .end local v1           #size:I
    .local v2, size:I
    :goto_9
    return v2

    .line 21963
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_a
    const/4 v1, 0x0

    .line 21964
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_1a

    .line 21965
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;->getConversationIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 21968
    :cond_1a
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v5, :cond_2b

    .line 21969
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;->visibilityModification_:Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility;

    invoke-virtual {v3}, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility;->getNumber()I

    move-result v3

    invoke-static {v5, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 21972
    :cond_2b
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2c
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;->tagModification_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_45

    .line 21973
    const/4 v4, 0x3

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;->tagModification_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 21972
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    .line 21976
    :cond_45
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-ne v3, v6, :cond_52

    .line 21977
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;->locationModification_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;

    invoke-static {v6, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 21980
    :cond_52
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_62

    .line 21981
    const/4 v3, 0x5

    iget-object v4, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 21984
    :cond_62
    iput v1, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;->memoizedSerializedSize:I

    move v2, v1

    .line 21985
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_9
.end method

.method public getStubbyInfo()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;
    .registers 2

    .prologue
    .line 21919
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    return-object v0
.end method

.method public getTagModification(I)Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification;
    .registers 3
    .parameter "index"

    .prologue
    .line 21895
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;->tagModification_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification;

    return-object v0
.end method

.method public getTagModificationCount()I
    .registers 2

    .prologue
    .line 21892
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;->tagModification_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getTagModificationList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification;",
            ">;"
        }
    .end annotation

    .prologue
    .line 21885
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;->tagModification_:Ljava/util/List;

    return-object v0
.end method

.method public getTagModificationOrBuilder(I)Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModificationOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 21899
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;->tagModification_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModificationOrBuilder;

    return-object v0
.end method

.method public getTagModificationOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModificationOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 21889
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;->tagModification_:Ljava/util/List;

    return-object v0
.end method

.method public getVisibilityModification()Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility;
    .registers 2

    .prologue
    .line 21878
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;->visibilityModification_:Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility;

    return-object v0
.end method

.method public hasConversationId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 21843
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasLocationModification()Z
    .registers 3

    .prologue
    .line 21906
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;->bitField0_:I

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
    .line 21916
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;->bitField0_:I

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

.method public hasVisibilityModification()Z
    .registers 3

    .prologue
    .line 21875
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;->bitField0_:I

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

    .line 21931
    iget-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;->memoizedIsInitialized:B

    .line 21932
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 21935
    :goto_8
    return v1

    .line 21932
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 21934
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 21022
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;->newBuilderForType()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;
    .registers 2

    .prologue
    .line 22063
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 21022
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;->toBuilder()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;
    .registers 2

    .prologue
    .line 22067
    invoke-static {p0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;)Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;

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
    .line 21992
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 7
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 21940
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;->getSerializedSize()I

    .line 21941
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_13

    .line 21942
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;->getConversationIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 21944
    :cond_13
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_22

    .line 21945
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;->visibilityModification_:Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility;

    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility;->getNumber()I

    move-result v1

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 21947
    :cond_22
    const/4 v0, 0x0

    .local v0, i:I
    :goto_23
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;->tagModification_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3a

    .line 21948
    const/4 v2, 0x3

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;->tagModification_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 21947
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 21950
    :cond_3a
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_45

    .line 21951
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;->locationModification_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 21953
    :cond_45
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_53

    .line 21954
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 21956
    :cond_53
    return-void
.end method
