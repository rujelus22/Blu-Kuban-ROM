.class public final Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConversationRenameRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private conversationId_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private newDisplayName_:Ljava/lang/Object;

.field private recipientId_:Lcom/google/protobuf/LazyStringList;

.field private stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 13468
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;

    .line 13469
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;->initFields()V

    .line 13470
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 12892
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 13000
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;->memoizedIsInitialized:B

    .line 13026
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;->memoizedSerializedSize:I

    .line 12893
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12887
    invoke-direct {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;-><init>(Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 12894
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 13000
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;->memoizedIsInitialized:B

    .line 13026
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;->memoizedSerializedSize:I

    .line 12894
    return-void
.end method

.method static synthetic access$17602(Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12887
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;->conversationId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$17702(Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12887
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;->newDisplayName_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$17800(Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 12887
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;->recipientId_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method static synthetic access$17802(Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12887
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;->recipientId_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$17902(Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12887
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    return-object p1
.end method

.method static synthetic access$18002(Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12887
    iput p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;->bitField0_:I

    return p1
.end method

.method private getConversationIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 12927
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;->conversationId_:Ljava/lang/Object;

    .line 12928
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 12929
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 12931
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;->conversationId_:Ljava/lang/Object;

    .line 12934
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

.method public static getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;
    .registers 1

    .prologue
    .line 12898
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;

    return-object v0
.end method

.method private getNewDisplayNameBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 12959
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;->newDisplayName_:Ljava/lang/Object;

    .line 12960
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 12961
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 12963
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;->newDisplayName_:Ljava/lang/Object;

    .line 12966
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
    .line 12995
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;->conversationId_:Ljava/lang/Object;

    .line 12996
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;->newDisplayName_:Ljava/lang/Object;

    .line 12997
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;->recipientId_:Lcom/google/protobuf/LazyStringList;

    .line 12998
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 12999
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;
    .registers 1

    .prologue
    .line 13131
    #calls: Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->access$17400()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;)Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 13134
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;)Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getConversationId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 12913
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;->conversationId_:Ljava/lang/Object;

    .line 12914
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 12915
    check-cast v1, Ljava/lang/String;

    .line 12923
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 12917
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 12919
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 12920
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 12921
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;->conversationId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 12923
    goto :goto_8
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 12887
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;
    .registers 2

    .prologue
    .line 12902
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;

    return-object v0
.end method

.method public getNewDisplayName()Ljava/lang/String;
    .registers 5

    .prologue
    .line 12945
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;->newDisplayName_:Ljava/lang/Object;

    .line 12946
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 12947
    check-cast v1, Ljava/lang/String;

    .line 12955
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 12949
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 12951
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 12952
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 12953
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;->newDisplayName_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 12955
    goto :goto_8
.end method

.method public getRecipientId(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 12981
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;->recipientId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getRecipientIdCount()I
    .registers 2

    .prologue
    .line 12978
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;->recipientId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getRecipientIdList()Ljava/util/List;
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
    .line 12975
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;->recipientId_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 9

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 13028
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;->memoizedSerializedSize:I

    .line 13029
    .local v2, size:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_a

    move v3, v2

    .line 13054
    .end local v2           #size:I
    .local v3, size:I
    :goto_9
    return v3

    .line 13031
    .end local v3           #size:I
    .restart local v2       #size:I
    :cond_a
    const/4 v2, 0x0

    .line 13032
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v5, :cond_1a

    .line 13033
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;->getConversationIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 13036
    :cond_1a
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v4, v6, :cond_29

    .line 13037
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;->getNewDisplayNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 13041
    :cond_29
    const/4 v0, 0x0

    .line 13042
    .local v0, dataSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2b
    iget-object v4, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;->recipientId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v1, v4, :cond_41

    .line 13043
    iget-object v4, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;->recipientId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v0, v4

    .line 13042
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    .line 13046
    :cond_41
    add-int/2addr v2, v0

    .line 13047
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;->getRecipientIdList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 13049
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-ne v4, v7, :cond_5a

    .line 13050
    iget-object v4, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    invoke-static {v7, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 13053
    :cond_5a
    iput v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;->memoizedSerializedSize:I

    move v3, v2

    .line 13054
    .end local v2           #size:I
    .restart local v3       #size:I
    goto :goto_9
.end method

.method public getStubbyInfo()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;
    .registers 2

    .prologue
    .line 12991
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    return-object v0
.end method

.method public hasConversationId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 12910
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasNewDisplayName()Z
    .registers 3

    .prologue
    .line 12942
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;->bitField0_:I

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

.method public hasStubbyInfo()Z
    .registers 3

    .prologue
    .line 12988
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;->bitField0_:I

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
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 13002
    iget-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;->memoizedIsInitialized:B

    .line 13003
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 13006
    :goto_8
    return v1

    .line 13003
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 13005
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;->memoizedIsInitialized:B

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
    .line 13061
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

    .line 13011
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;->getSerializedSize()I

    .line 13012
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_13

    .line 13013
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;->getConversationIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 13015
    :cond_13
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_20

    .line 13016
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;->getNewDisplayNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 13018
    :cond_20
    const/4 v0, 0x0

    .local v0, i:I
    :goto_21
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;->recipientId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_36

    .line 13019
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;->recipientId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2, v0}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 13018
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 13021
    :cond_36
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_41

    .line 13022
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 13024
    :cond_41
    return-void
.end method
