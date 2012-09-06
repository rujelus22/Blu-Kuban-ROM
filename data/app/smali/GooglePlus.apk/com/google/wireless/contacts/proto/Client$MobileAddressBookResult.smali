.class public final Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResultOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MobileAddressBookResult"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult;

.field private static final serialVersionUID:J


# instance fields
.field private addressBookKey_:Ljava/lang/Object;

.field private bitField0_:I

.field private contact_:Lcom/google/wireless/contacts/proto/Contact$MobileContact;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 9839
    new-instance v0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult;->defaultInstance:Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult;

    .line 9840
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult;->defaultInstance:Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult;->initFields()V

    .line 9841
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 9459
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 9519
    iput-byte v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult;->memoizedIsInitialized:B

    .line 9539
    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult;->memoizedSerializedSize:I

    .line 9460
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult$Builder;Lcom/google/wireless/contacts/proto/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9454
    invoke-direct {p0, p1}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult;-><init>(Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 9461
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 9519
    iput-byte v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult;->memoizedIsInitialized:B

    .line 9539
    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult;->memoizedSerializedSize:I

    .line 9461
    return-void
.end method

.method static synthetic access$12902(Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9454
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult;->addressBookKey_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$13002(Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult;Lcom/google/wireless/contacts/proto/Contact$MobileContact;)Lcom/google/wireless/contacts/proto/Contact$MobileContact;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9454
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult;->contact_:Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    return-object p1
.end method

.method static synthetic access$13102(Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9454
    iput p1, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult;->bitField0_:I

    return p1
.end method

.method private getAddressBookKeyBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 9494
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult;->addressBookKey_:Ljava/lang/Object;

    .line 9495
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 9496
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 9498
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult;->addressBookKey_:Ljava/lang/Object;

    .line 9501
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

.method public static getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult;
    .registers 1

    .prologue
    .line 9465
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult;->defaultInstance:Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 9516
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult;->addressBookKey_:Ljava/lang/Object;

    .line 9517
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult;->contact_:Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    .line 9518
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult$Builder;
    .registers 1

    .prologue
    .line 9631
    #calls: Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult$Builder;->create()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult$Builder;
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult$Builder;->access$12700()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult;)Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 9634
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult;->newBuilder()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult;)Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAddressBookKey()Ljava/lang/String;
    .registers 5

    .prologue
    .line 9480
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult;->addressBookKey_:Ljava/lang/Object;

    .line 9481
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 9482
    check-cast v1, Ljava/lang/String;

    .line 9490
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 9484
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 9486
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 9487
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 9488
    iput-object v2, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult;->addressBookKey_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 9490
    goto :goto_8
.end method

.method public getContact()Lcom/google/wireless/contacts/proto/Contact$MobileContact;
    .registers 2

    .prologue
    .line 9512
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult;->contact_:Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 9454
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult;
    .registers 2

    .prologue
    .line 9469
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult;->defaultInstance:Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 9541
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult;->memoizedSerializedSize:I

    .line 9542
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 9554
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 9544
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 9545
    iget v2, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_19

    .line 9546
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult;->getAddressBookKeyBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 9549
    :cond_19
    iget v2, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_26

    .line 9550
    iget-object v2, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult;->contact_:Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 9553
    :cond_26
    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult;->memoizedSerializedSize:I

    move v1, v0

    .line 9554
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public hasAddressBookKey()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 9477
    iget v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasContact()Z
    .registers 3

    .prologue
    .line 9509
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult;->bitField0_:I

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

    .line 9521
    iget-byte v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult;->memoizedIsInitialized:B

    .line 9522
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 9525
    :goto_8
    return v1

    .line 9522
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 9524
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 9454
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult;->newBuilderForType()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult$Builder;
    .registers 2

    .prologue
    .line 9632
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult;->newBuilder()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 9454
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult;->toBuilder()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult$Builder;
    .registers 2

    .prologue
    .line 9636
    invoke-static {p0}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult;->newBuilder(Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult;)Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult$Builder;

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
    .line 9561
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

    .line 9530
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult;->getSerializedSize()I

    .line 9531
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_12

    .line 9532
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult;->getAddressBookKeyBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 9534
    :cond_12
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1d

    .line 9535
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult;->contact_:Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 9537
    :cond_1d
    return-void
.end method
