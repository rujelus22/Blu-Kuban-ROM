.class public final Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetEditableContentResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private editableContent_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private mention_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$Mention;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 53766
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;

    .line 53767
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;->initFields()V

    .line 53768
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 53324
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 53395
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;->memoizedIsInitialized:B

    .line 53415
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;->memoizedSerializedSize:I

    .line 53325
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53319
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 53326
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 53395
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;->memoizedIsInitialized:B

    .line 53415
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;->memoizedSerializedSize:I

    .line 53326
    return-void
.end method

.method static synthetic access$75602(Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53319
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;->editableContent_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$75700(Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53319
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;->mention_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$75702(Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53319
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;->mention_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$75802(Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53319
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;
    .registers 1

    .prologue
    .line 53330
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;

    return-object v0
.end method

.method private getEditableContentBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 53359
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;->editableContent_:Ljava/lang/Object;

    .line 53360
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 53361
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 53363
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;->editableContent_:Ljava/lang/Object;

    .line 53366
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
    .line 53392
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;->editableContent_:Ljava/lang/Object;

    .line 53393
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;->mention_:Ljava/util/List;

    .line 53394
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;
    .registers 1

    .prologue
    .line 53507
    #calls: Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;->access$75400()Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;)Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 53510
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;)Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 53443
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;

    #calls: Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;->buildParsed()Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;->access$75300(Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 53319
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;
    .registers 2

    .prologue
    .line 53334
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;

    return-object v0
.end method

.method public getEditableContent()Ljava/lang/String;
    .registers 5

    .prologue
    .line 53345
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;->editableContent_:Ljava/lang/Object;

    .line 53346
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 53347
    check-cast v1, Ljava/lang/String;

    .line 53355
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 53349
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 53351
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 53352
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 53353
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;->editableContent_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 53355
    goto :goto_8
.end method

.method public getMention(I)Lcom/google/wireless/tacotruck/proto/Data$Mention;
    .registers 3
    .parameter "index"

    .prologue
    .line 53384
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;->mention_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$Mention;

    return-object v0
.end method

.method public getMentionCount()I
    .registers 2

    .prologue
    .line 53381
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;->mention_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMentionList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$Mention;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53374
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;->mention_:Ljava/util/List;

    return-object v0
.end method

.method public getMentionOrBuilder(I)Lcom/google/wireless/tacotruck/proto/Data$MentionOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 53388
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;->mention_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$MentionOrBuilder;

    return-object v0
.end method

.method public getMentionOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/wireless/tacotruck/proto/Data$MentionOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53378
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;->mention_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 53417
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;->memoizedSerializedSize:I

    .line 53418
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_8

    move v2, v1

    .line 53430
    .end local v1           #size:I
    .local v2, size:I
    :goto_7
    return v2

    .line 53420
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_8
    const/4 v1, 0x0

    .line 53421
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_18

    .line 53422
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;->getEditableContentBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 53425
    :cond_18
    const/4 v0, 0x0

    .local v0, i:I
    :goto_19
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;->mention_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_32

    .line 53426
    const/4 v4, 0x2

    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;->mention_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 53425
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 53429
    :cond_32
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;->memoizedSerializedSize:I

    move v2, v1

    .line 53430
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_7
.end method

.method public hasEditableContent()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 53342
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;->bitField0_:I

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

    .line 53397
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;->memoizedIsInitialized:B

    .line 53398
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 53401
    :goto_8
    return v1

    .line 53398
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 53400
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 53319
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;
    .registers 2

    .prologue
    .line 53508
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 53319
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;->toBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;
    .registers 2

    .prologue
    .line 53512
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;->newBuilder(Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;)Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse$Builder;

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
    .line 53437
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

    .line 53406
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;->getSerializedSize()I

    .line 53407
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_11

    .line 53408
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;->getEditableContentBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 53410
    :cond_11
    const/4 v0, 0x0

    .local v0, i:I
    :goto_12
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;->mention_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_29

    .line 53411
    const/4 v2, 0x2

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;->mention_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 53410
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 53413
    :cond_29
    return-void
.end method
