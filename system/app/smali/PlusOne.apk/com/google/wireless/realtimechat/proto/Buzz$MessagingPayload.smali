.class public final Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Buzz.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayloadOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Buzz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MessagingPayload"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;,
        Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$PAYLOAD_TYPE;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private buzzHeader_:Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private payloadType_:I

.field private payload_:Lcom/google/protobuf/ByteString;

.field private recipient_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;",
            ">;"
        }
    .end annotation
.end field

.field private sender_:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 4430
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;

    .line 4431
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;->initFields()V

    .line 4432
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 3723
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 3849
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;->memoizedIsInitialized:B

    .line 3900
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;->memoizedSerializedSize:I

    .line 3724
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;Lcom/google/wireless/realtimechat/proto/Buzz$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3718
    invoke-direct {p0, p1}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;-><init>(Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 3725
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 3849
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;->memoizedIsInitialized:B

    .line 3900
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;->memoizedSerializedSize:I

    .line 3725
    return-void
.end method

.method static synthetic access$5500(Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 3718
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;->recipient_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$5502(Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3718
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;->recipient_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$5602(Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;)Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3718
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;->sender_:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

    return-object p1
.end method

.method static synthetic access$5702(Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3718
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;->payload_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$5802(Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3718
    iput p1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;->payloadType_:I

    return p1
.end method

.method static synthetic access$5902(Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;)Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3718
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;->buzzHeader_:Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;

    return-object p1
.end method

.method static synthetic access$6002(Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3718
    iput p1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;
    .registers 1

    .prologue
    .line 3729
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 3843
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;->recipient_:Ljava/util/List;

    .line 3844
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;->sender_:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

    .line 3845
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;->payload_:Lcom/google/protobuf/ByteString;

    .line 3846
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;->payloadType_:I

    .line 3847
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;->buzzHeader_:Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;

    .line 3848
    return-void
.end method


# virtual methods
.method public getBuzzHeader()Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;
    .registers 2

    .prologue
    .line 3839
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;->buzzHeader_:Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 3718
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;
    .registers 2

    .prologue
    .line 3733
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;

    return-object v0
.end method

.method public getPayload()Lcom/google/protobuf/ByteString;
    .registers 2

    .prologue
    .line 3819
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;->payload_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getPayloadType()I
    .registers 2

    .prologue
    .line 3829
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;->payloadType_:I

    return v0
.end method

.method public getRecipient(I)Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;
    .registers 3
    .parameter "index"

    .prologue
    .line 3795
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;->recipient_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;

    return-object v0
.end method

.method public getRecipientCount()I
    .registers 2

    .prologue
    .line 3792
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;->recipient_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getRecipientList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3785
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;->recipient_:Ljava/util/List;

    return-object v0
.end method

.method public getRecipientOrBuilder(I)Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientDataOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 3799
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;->recipient_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientDataOrBuilder;

    return-object v0
.end method

.method public getRecipientOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientDataOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3789
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;->recipient_:Ljava/util/List;

    return-object v0
.end method

.method public getSender()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;
    .registers 2

    .prologue
    .line 3809
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;->sender_:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 8

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 3902
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;->memoizedSerializedSize:I

    .line 3903
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_a

    move v2, v1

    .line 3927
    .end local v1           #size:I
    .local v2, size:I
    :goto_9
    return v2

    .line 3905
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_a
    const/4 v1, 0x0

    .line 3906
    const/4 v0, 0x0

    .local v0, i:I
    :goto_c
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;->recipient_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_24

    .line 3907
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;->recipient_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 3906
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 3910
    :cond_24
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_31

    .line 3911
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;->sender_:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

    invoke-static {v5, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 3914
    :cond_31
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v5, :cond_3f

    .line 3915
    const/4 v3, 0x3

    iget-object v4, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;->payload_:Lcom/google/protobuf/ByteString;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 3918
    :cond_3f
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-ne v3, v6, :cond_4c

    .line 3919
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;->payloadType_:I

    invoke-static {v6, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 3922
    :cond_4c
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_5c

    .line 3923
    const/4 v3, 0x5

    iget-object v4, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;->buzzHeader_:Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 3926
    :cond_5c
    iput v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;->memoizedSerializedSize:I

    move v2, v1

    .line 3927
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_9
.end method

.method public hasBuzzHeader()Z
    .registers 3

    .prologue
    .line 3836
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;->bitField0_:I

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

.method public hasPayload()Z
    .registers 3

    .prologue
    .line 3816
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;->bitField0_:I

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

.method public hasPayloadType()Z
    .registers 3

    .prologue
    .line 3826
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;->bitField0_:I

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

.method public hasSender()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 3806
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method protected writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 3934
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

    .line 3882
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;->getSerializedSize()I

    .line 3883
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;->recipient_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1d

    .line 3884
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;->recipient_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 3883
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 3886
    :cond_1d
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_28

    .line 3887
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;->sender_:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 3889
    :cond_28
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_34

    .line 3890
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;->payload_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 3892
    :cond_34
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_3f

    .line 3893
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;->payloadType_:I

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 3895
    :cond_3f
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4d

    .line 3896
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;->buzzHeader_:Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 3898
    :cond_4d
    return-void
.end method
