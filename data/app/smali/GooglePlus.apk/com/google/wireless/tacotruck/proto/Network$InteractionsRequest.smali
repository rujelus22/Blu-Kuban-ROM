.class public final Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InteractionsRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private interaction_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$Interaction;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private number_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 31457
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;

    .line 31458
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;->initFields()V

    .line 31459
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 31015
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 31086
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;->memoizedIsInitialized:B

    .line 31106
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;->memoizedSerializedSize:I

    .line 31016
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31010
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 31017
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 31086
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;->memoizedIsInitialized:B

    .line 31106
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;->memoizedSerializedSize:I

    .line 31017
    return-void
.end method

.method static synthetic access$43102(Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31010
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;->number_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$43200(Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31010
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;->interaction_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$43202(Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31010
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;->interaction_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$43302(Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31010
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;
    .registers 1

    .prologue
    .line 31021
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;

    return-object v0
.end method

.method private getNumberBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 31050
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;->number_:Ljava/lang/Object;

    .line 31051
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 31052
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 31054
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;->number_:Ljava/lang/Object;

    .line 31057
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
    .line 31083
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;->number_:Ljava/lang/Object;

    .line 31084
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;->interaction_:Ljava/util/List;

    .line 31085
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;
    .registers 1

    .prologue
    .line 31198
    #calls: Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;->access$42900()Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;)Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 31201
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;)Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 31010
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;
    .registers 2

    .prologue
    .line 31025
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;

    return-object v0
.end method

.method public getInteraction(I)Lcom/google/wireless/tacotruck/proto/Data$Interaction;
    .registers 3
    .parameter "index"

    .prologue
    .line 31075
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;->interaction_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$Interaction;

    return-object v0
.end method

.method public getInteractionCount()I
    .registers 2

    .prologue
    .line 31072
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;->interaction_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getInteractionList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$Interaction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31065
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;->interaction_:Ljava/util/List;

    return-object v0
.end method

.method public getInteractionOrBuilder(I)Lcom/google/wireless/tacotruck/proto/Data$InteractionOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 31079
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;->interaction_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$InteractionOrBuilder;

    return-object v0
.end method

.method public getInteractionOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/wireless/tacotruck/proto/Data$InteractionOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31069
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;->interaction_:Ljava/util/List;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .registers 5

    .prologue
    .line 31036
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;->number_:Ljava/lang/Object;

    .line 31037
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 31038
    check-cast v1, Ljava/lang/String;

    .line 31046
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 31040
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 31042
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 31043
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 31044
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;->number_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 31046
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 31108
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;->memoizedSerializedSize:I

    .line 31109
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_8

    move v2, v1

    .line 31121
    .end local v1           #size:I
    .local v2, size:I
    :goto_7
    return v2

    .line 31111
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_8
    const/4 v1, 0x0

    .line 31112
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_18

    .line 31113
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;->getNumberBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 31116
    :cond_18
    const/4 v0, 0x0

    .local v0, i:I
    :goto_19
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;->interaction_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_32

    .line 31117
    const/4 v4, 0x2

    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;->interaction_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 31116
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 31120
    :cond_32
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;->memoizedSerializedSize:I

    move v2, v1

    .line 31121
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_7
.end method

.method public hasNumber()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 31033
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;->bitField0_:I

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

    .line 31088
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;->memoizedIsInitialized:B

    .line 31089
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 31092
    :goto_8
    return v1

    .line 31089
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 31091
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 31010
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;
    .registers 2

    .prologue
    .line 31199
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 31010
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;->toBuilder()Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;
    .registers 2

    .prologue
    .line 31203
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;->newBuilder(Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;)Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;

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
    .line 31128
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

    .line 31097
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;->getSerializedSize()I

    .line 31098
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_11

    .line 31099
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;->getNumberBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 31101
    :cond_11
    const/4 v0, 0x0

    .local v0, i:I
    :goto_12
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;->interaction_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_29

    .line 31102
    const/4 v2, 0x2

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;->interaction_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 31101
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 31104
    :cond_29
    return-void
.end method
