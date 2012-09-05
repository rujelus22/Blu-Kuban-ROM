.class public final Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConversationSearchResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private conversation_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 37305
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;

    .line 37306
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;->initFields()V

    .line 37307
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 36893
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 36942
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;->memoizedIsInitialized:B

    .line 36962
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;->memoizedSerializedSize:I

    .line 36894
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36888
    invoke-direct {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;-><init>(Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 36895
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 36942
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;->memoizedIsInitialized:B

    .line 36962
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;->memoizedSerializedSize:I

    .line 36895
    return-void
.end method

.method static synthetic access$51302(Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36888
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    return-object p1
.end method

.method static synthetic access$51400(Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36888
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;->conversation_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$51402(Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36888
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;->conversation_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$51502(Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36888
    iput p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;
    .registers 1

    .prologue
    .line 36899
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 36939
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 36940
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;->conversation_:Ljava/util/List;

    .line 36941
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;
    .registers 1

    .prologue
    .line 37054
    #calls: Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;->access$51100()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;)Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 37057
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;)Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getConversation(I)Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;
    .registers 3
    .parameter "index"

    .prologue
    .line 36931
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;->conversation_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    return-object v0
.end method

.method public getConversationCount()I
    .registers 2

    .prologue
    .line 36928
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;->conversation_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getConversationList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36921
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;->conversation_:Ljava/util/List;

    return-object v0
.end method

.method public getConversationOrBuilder(I)Lcom/google/wireless/realtimechat/proto/Client$ClientConversationOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 36935
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;->conversation_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversationOrBuilder;

    return-object v0
.end method

.method public getConversationOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/wireless/realtimechat/proto/Client$ClientConversationOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36925
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;->conversation_:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 36888
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;
    .registers 2

    .prologue
    .line 36903
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 36964
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;->memoizedSerializedSize:I

    .line 36965
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_8

    move v2, v1

    .line 36977
    .end local v1           #size:I
    .local v2, size:I
    :goto_7
    return v2

    .line 36967
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_8
    const/4 v1, 0x0

    .line 36968
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_1a

    .line 36969
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    invoke-virtual {v3}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->getNumber()I

    move-result v3

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 36972
    :cond_1a
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1b
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;->conversation_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_34

    .line 36973
    const/4 v4, 0x2

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;->conversation_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 36972
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 36976
    :cond_34
    iput v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;->memoizedSerializedSize:I

    move v2, v1

    .line 36977
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_7
.end method

.method public getStatus()Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    .registers 2

    .prologue
    .line 36914
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    return-object v0
.end method

.method public hasStatus()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 36911
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;->bitField0_:I

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

    .line 36944
    iget-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;->memoizedIsInitialized:B

    .line 36945
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 36948
    :goto_8
    return v1

    .line 36945
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 36947
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;->memoizedIsInitialized:B

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
    .line 36984
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 5
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 36953
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;->getSerializedSize()I

    .line 36954
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_13

    .line 36955
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->getNumber()I

    move-result v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 36957
    :cond_13
    const/4 v0, 0x0

    .local v0, i:I
    :goto_14
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;->conversation_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2b

    .line 36958
    const/4 v2, 0x2

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;->conversation_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 36957
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 36960
    :cond_2b
    return-void
.end method
