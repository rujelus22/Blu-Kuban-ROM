.class public final Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRenameOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GroupConversationRename"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private conversationId_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private newDisplayName_:Ljava/lang/Object;

.field private recipientId_:Lcom/google/protobuf/LazyStringList;

.field private senderId_:Ljava/lang/Object;

.field private timestamp_:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 14491
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    .line 14492
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->initFields()V

    .line 14493
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 13851
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 13992
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->memoizedIsInitialized:B

    .line 14021
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->memoizedSerializedSize:I

    .line 13852
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13846
    invoke-direct {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;-><init>(Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 13853
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 13992
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->memoizedIsInitialized:B

    .line 14021
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->memoizedSerializedSize:I

    .line 13853
    return-void
.end method

.method static synthetic access$19002(Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13846
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->conversationId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$19102(Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13846
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->senderId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$19202(Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13846
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->newDisplayName_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$19300(Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 13846
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->recipientId_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method static synthetic access$19302(Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13846
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->recipientId_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$19402(Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13846
    iput-wide p1, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->timestamp_:J

    return-wide p1
.end method

.method static synthetic access$19502(Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13846
    iput p1, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->bitField0_:I

    return p1
.end method

.method private getConversationIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 13886
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->conversationId_:Ljava/lang/Object;

    .line 13887
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 13888
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 13890
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->conversationId_:Ljava/lang/Object;

    .line 13893
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

.method public static getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;
    .registers 1

    .prologue
    .line 13857
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    return-object v0
.end method

.method private getNewDisplayNameBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 13950
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->newDisplayName_:Ljava/lang/Object;

    .line 13951
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 13952
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 13954
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->newDisplayName_:Ljava/lang/Object;

    .line 13957
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

.method private getSenderIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 13918
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->senderId_:Ljava/lang/Object;

    .line 13919
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 13920
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 13922
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->senderId_:Ljava/lang/Object;

    .line 13925
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
    .line 13986
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->conversationId_:Ljava/lang/Object;

    .line 13987
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->senderId_:Ljava/lang/Object;

    .line 13988
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->newDisplayName_:Ljava/lang/Object;

    .line 13989
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->recipientId_:Lcom/google/protobuf/LazyStringList;

    .line 13990
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->timestamp_:J

    .line 13991
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;
    .registers 1

    .prologue
    .line 14130
    #calls: Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->access$18800()Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;)Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 14133
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;)Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getConversationId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 13872
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->conversationId_:Ljava/lang/Object;

    .line 13873
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 13874
    check-cast v1, Ljava/lang/String;

    .line 13882
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 13876
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 13878
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 13879
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 13880
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->conversationId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 13882
    goto :goto_8
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 13846
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;
    .registers 2

    .prologue
    .line 13861
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    return-object v0
.end method

.method public getNewDisplayName()Ljava/lang/String;
    .registers 5

    .prologue
    .line 13936
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->newDisplayName_:Ljava/lang/Object;

    .line 13937
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 13938
    check-cast v1, Ljava/lang/String;

    .line 13946
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 13940
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 13942
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 13943
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 13944
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->newDisplayName_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 13946
    goto :goto_8
.end method

.method public getRecipientId(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 13972
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->recipientId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getRecipientIdCount()I
    .registers 2

    .prologue
    .line 13969
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->recipientId_:Lcom/google/protobuf/LazyStringList;

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
    .line 13966
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->recipientId_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public getSenderId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 13904
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->senderId_:Ljava/lang/Object;

    .line 13905
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 13906
    check-cast v1, Ljava/lang/String;

    .line 13914
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 13908
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 13910
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 13911
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 13912
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->senderId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 13914
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 8

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 14023
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->memoizedSerializedSize:I

    .line 14024
    .local v2, size:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_9

    move v3, v2

    .line 14053
    .end local v2           #size:I
    .local v3, size:I
    :goto_8
    return v3

    .line 14026
    .end local v3           #size:I
    .restart local v2       #size:I
    :cond_9
    const/4 v2, 0x0

    .line 14027
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v5, :cond_19

    .line 14028
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->getConversationIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 14031
    :cond_19
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v4, v6, :cond_28

    .line 14032
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->getSenderIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 14035
    :cond_28
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_39

    .line 14036
    const/4 v4, 0x3

    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->getNewDisplayNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 14040
    :cond_39
    const/4 v0, 0x0

    .line 14041
    .local v0, dataSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3b
    iget-object v4, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->recipientId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v1, v4, :cond_51

    .line 14042
    iget-object v4, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->recipientId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v0, v4

    .line 14041
    add-int/lit8 v1, v1, 0x1

    goto :goto_3b

    .line 14045
    :cond_51
    add-int/2addr v2, v0

    .line 14046
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->getRecipientIdList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 14048
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->bitField0_:I

    and-int/lit8 v4, v4, 0x8

    const/16 v5, 0x8

    if-ne v4, v5, :cond_6d

    .line 14049
    const/4 v4, 0x5

    iget-wide v5, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->timestamp_:J

    invoke-static {v4, v5, v6}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v4

    add-int/2addr v2, v4

    .line 14052
    :cond_6d
    iput v2, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->memoizedSerializedSize:I

    move v3, v2

    .line 14053
    .end local v2           #size:I
    .restart local v3       #size:I
    goto :goto_8
.end method

.method public getTimestamp()J
    .registers 3

    .prologue
    .line 13982
    iget-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->timestamp_:J

    return-wide v0
.end method

.method public hasConversationId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 13869
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->bitField0_:I

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
    .line 13933
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->bitField0_:I

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

.method public hasSenderId()Z
    .registers 3

    .prologue
    .line 13901
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->bitField0_:I

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

.method public hasTimestamp()Z
    .registers 3

    .prologue
    .line 13979
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 13994
    iget-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->memoizedIsInitialized:B

    .line 13995
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 13998
    :goto_8
    return v1

    .line 13995
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 13997
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 13846
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->newBuilderForType()Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;
    .registers 2

    .prologue
    .line 14131
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 13846
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->toBuilder()Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;
    .registers 2

    .prologue
    .line 14135
    invoke-static {p0}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;)Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;

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
    .line 14060
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

    .line 14003
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->getSerializedSize()I

    .line 14004
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_13

    .line 14005
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->getConversationIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 14007
    :cond_13
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_20

    .line 14008
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->getSenderIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 14010
    :cond_20
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_2e

    .line 14011
    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->getNewDisplayNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 14013
    :cond_2e
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2f
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->recipientId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_43

    .line 14014
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->recipientId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1, v0}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 14013
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .line 14016
    :cond_43
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_51

    .line 14017
    const/4 v1, 0x5

    iget-wide v2, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->timestamp_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 14019
    :cond_51
    return-void
.end method
