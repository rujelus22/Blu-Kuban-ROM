.class public final Lcom/google/wireless/contacts/proto/Client$ProfileRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/contacts/proto/Client$ProfileRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProfileRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;,
        Lcom/google/wireless/contacts/proto/Client$ProfileRequest$ProfileSize;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/contacts/proto/Client$ProfileRequest;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private id_:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private profileRequestMask_:Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;

.field private profileSize_:Lcom/google/wireless/contacts/proto/Client$ProfileRequest$ProfileSize;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 5995
    new-instance v0, Lcom/google/wireless/contacts/proto/Client$ProfileRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/contacts/proto/Client$ProfileRequest;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Client$ProfileRequest;->defaultInstance:Lcom/google/wireless/contacts/proto/Client$ProfileRequest;

    .line 5996
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$ProfileRequest;->defaultInstance:Lcom/google/wireless/contacts/proto/Client$ProfileRequest;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Client$ProfileRequest;->initFields()V

    .line 5997
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 5522
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 5615
    iput-byte v0, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequest;->memoizedIsInitialized:B

    .line 5638
    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequest;->memoizedSerializedSize:I

    .line 5523
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;Lcom/google/wireless/contacts/proto/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5517
    invoke-direct {p0, p1}, Lcom/google/wireless/contacts/proto/Client$ProfileRequest;-><init>(Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 5524
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 5615
    iput-byte v0, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequest;->memoizedIsInitialized:B

    .line 5638
    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequest;->memoizedSerializedSize:I

    .line 5524
    return-void
.end method

.method static synthetic access$7402(Lcom/google/wireless/contacts/proto/Client$ProfileRequest;Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;)Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5517
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequest;->id_:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    return-object p1
.end method

.method static synthetic access$7502(Lcom/google/wireless/contacts/proto/Client$ProfileRequest;Lcom/google/wireless/contacts/proto/Client$ProfileRequest$ProfileSize;)Lcom/google/wireless/contacts/proto/Client$ProfileRequest$ProfileSize;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5517
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequest;->profileSize_:Lcom/google/wireless/contacts/proto/Client$ProfileRequest$ProfileSize;

    return-object p1
.end method

.method static synthetic access$7602(Lcom/google/wireless/contacts/proto/Client$ProfileRequest;Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;)Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5517
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequest;->profileRequestMask_:Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;

    return-object p1
.end method

.method static synthetic access$7702(Lcom/google/wireless/contacts/proto/Client$ProfileRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5517
    iput p1, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$ProfileRequest;
    .registers 1

    .prologue
    .line 5528
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$ProfileRequest;->defaultInstance:Lcom/google/wireless/contacts/proto/Client$ProfileRequest;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 5611
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequest;->id_:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    .line 5612
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$ProfileSize;->FULL:Lcom/google/wireless/contacts/proto/Client$ProfileRequest$ProfileSize;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequest;->profileSize_:Lcom/google/wireless/contacts/proto/Client$ProfileRequest$ProfileSize;

    .line 5613
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequest;->profileRequestMask_:Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;

    .line 5614
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;
    .registers 1

    .prologue
    .line 5734
    #calls: Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;->create()Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;->access$7200()Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/contacts/proto/Client$ProfileRequest;)Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 5737
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$ProfileRequest;->newBuilder()Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Client$ProfileRequest;)Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 5517
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$ProfileRequest;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$ProfileRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$ProfileRequest;
    .registers 2

    .prologue
    .line 5532
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$ProfileRequest;->defaultInstance:Lcom/google/wireless/contacts/proto/Client$ProfileRequest;

    return-object v0
.end method

.method public getId()Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;
    .registers 2

    .prologue
    .line 5587
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequest;->id_:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    return-object v0
.end method

.method public getProfileRequestMask()Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;
    .registers 2

    .prologue
    .line 5607
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequest;->profileRequestMask_:Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;

    return-object v0
.end method

.method public getProfileSize()Lcom/google/wireless/contacts/proto/Client$ProfileRequest$ProfileSize;
    .registers 2

    .prologue
    .line 5597
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequest;->profileSize_:Lcom/google/wireless/contacts/proto/Client$ProfileRequest$ProfileSize;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 5640
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequest;->memoizedSerializedSize:I

    .line 5641
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 5657
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 5643
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 5644
    iget v2, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_17

    .line 5645
    iget-object v2, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequest;->id_:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 5648
    :cond_17
    iget v2, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_28

    .line 5649
    iget-object v2, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequest;->profileSize_:Lcom/google/wireless/contacts/proto/Client$ProfileRequest$ProfileSize;

    invoke-virtual {v2}, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$ProfileSize;->getNumber()I

    move-result v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 5652
    :cond_28
    iget v2, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_37

    .line 5653
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequest;->profileRequestMask_:Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 5656
    :cond_37
    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 5657
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public hasId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 5584
    iget v1, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasProfileRequestMask()Z
    .registers 3

    .prologue
    .line 5604
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequest;->bitField0_:I

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

.method public hasProfileSize()Z
    .registers 3

    .prologue
    .line 5594
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequest;->bitField0_:I

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

    .line 5617
    iget-byte v0, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequest;->memoizedIsInitialized:B

    .line 5618
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 5621
    :goto_8
    return v1

    .line 5618
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 5620
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequest;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 5517
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$ProfileRequest;->newBuilderForType()Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;
    .registers 2

    .prologue
    .line 5735
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$ProfileRequest;->newBuilder()Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 5517
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$ProfileRequest;->toBuilder()Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;
    .registers 2

    .prologue
    .line 5739
    invoke-static {p0}, Lcom/google/wireless/contacts/proto/Client$ProfileRequest;->newBuilder(Lcom/google/wireless/contacts/proto/Client$ProfileRequest;)Lcom/google/wireless/contacts/proto/Client$ProfileRequest$Builder;

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
    .line 5664
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
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 5626
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$ProfileRequest;->getSerializedSize()I

    .line 5627
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_10

    .line 5628
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequest;->id_:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 5630
    :cond_10
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1f

    .line 5631
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequest;->profileSize_:Lcom/google/wireless/contacts/proto/Client$ProfileRequest$ProfileSize;

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Client$ProfileRequest$ProfileSize;->getNumber()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 5633
    :cond_1f
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2c

    .line 5634
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequest;->profileRequestMask_:Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 5636
    :cond_2c
    return-void
.end method
