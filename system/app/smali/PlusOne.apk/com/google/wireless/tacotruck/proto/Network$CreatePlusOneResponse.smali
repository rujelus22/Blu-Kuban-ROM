.class public final Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CreatePlusOneResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 23893
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse;

    .line 23894
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse;->initFields()V

    .line 23895
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 23603
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 23630
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse;->memoizedIsInitialized:B

    .line 23647
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse;->memoizedSerializedSize:I

    .line 23604
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23598
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 23605
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 23630
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse;->memoizedIsInitialized:B

    .line 23647
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse;->memoizedSerializedSize:I

    .line 23605
    return-void
.end method

.method static synthetic access$32702(Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse;Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23598
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    return-object p1
.end method

.method static synthetic access$32802(Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23598
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse;
    .registers 1

    .prologue
    .line 23609
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 23628
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    .line 23629
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse$Builder;
    .registers 1

    .prologue
    .line 23735
    #calls: Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse$Builder;->access$32500()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 23671
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse$Builder;

    #calls: Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse$Builder;->buildParsed()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse;
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse$Builder;->access$32400(Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse$Builder;)Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 23598
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse;
    .registers 2

    .prologue
    .line 23613
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse;

    return-object v0
.end method

.method public getPlusoneData()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    .registers 2

    .prologue
    .line 23624
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 23649
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse;->memoizedSerializedSize:I

    .line 23650
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_8

    move v1, v0

    .line 23658
    .end local v0           #size:I
    .local v1, size:I
    :goto_7
    return v1

    .line 23652
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_8
    const/4 v0, 0x0

    .line 23653
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_16

    .line 23654
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 23657
    :cond_16
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse;->memoizedSerializedSize:I

    move v1, v0

    .line 23658
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_7
.end method

.method public hasPlusoneData()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 23621
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse;->bitField0_:I

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

    .line 23632
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse;->memoizedIsInitialized:B

    .line 23633
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 23636
    :goto_8
    return v1

    .line 23633
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 23635
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse;->memoizedIsInitialized:B

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
    .line 23665
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 4
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 23641
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse;->getSerializedSize()I

    .line 23642
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_f

    .line 23643
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 23645
    :cond_f
    return-void
.end method
