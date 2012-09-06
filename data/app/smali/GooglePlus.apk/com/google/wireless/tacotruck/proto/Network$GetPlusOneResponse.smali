.class public final Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetPlusOneResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse;

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
    .line 26095
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse;

    .line 26096
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse;->initFields()V

    .line 26097
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 25805
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 25832
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse;->memoizedIsInitialized:B

    .line 25849
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse;->memoizedSerializedSize:I

    .line 25806
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25800
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 25807
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 25832
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse;->memoizedIsInitialized:B

    .line 25849
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse;->memoizedSerializedSize:I

    .line 25807
    return-void
.end method

.method static synthetic access$35902(Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse;Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25800
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    return-object p1
.end method

.method static synthetic access$36002(Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25800
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse;
    .registers 1

    .prologue
    .line 25811
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 25830
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    .line 25831
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse$Builder;
    .registers 1

    .prologue
    .line 25937
    #calls: Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse$Builder;->access$35700()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse;)Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 25940
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse;)Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 25873
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse$Builder;

    #calls: Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse$Builder;->buildParsed()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse;
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse$Builder;->access$35600(Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 25800
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse;
    .registers 2

    .prologue
    .line 25815
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse;

    return-object v0
.end method

.method public getPlusoneData()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    .registers 2

    .prologue
    .line 25826
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 25851
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse;->memoizedSerializedSize:I

    .line 25852
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_8

    move v1, v0

    .line 25860
    .end local v0           #size:I
    .local v1, size:I
    :goto_7
    return v1

    .line 25854
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_8
    const/4 v0, 0x0

    .line 25855
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_16

    .line 25856
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 25859
    :cond_16
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse;->memoizedSerializedSize:I

    move v1, v0

    .line 25860
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_7
.end method

.method public hasPlusoneData()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 25823
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse;->bitField0_:I

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

    .line 25834
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse;->memoizedIsInitialized:B

    .line 25835
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 25838
    :goto_8
    return v1

    .line 25835
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 25837
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 25800
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse$Builder;
    .registers 2

    .prologue
    .line 25938
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 25800
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse;->toBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse$Builder;
    .registers 2

    .prologue
    .line 25942
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse;->newBuilder(Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse;)Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse$Builder;

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
    .line 25867
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

    .line 25843
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse;->getSerializedSize()I

    .line 25844
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_f

    .line 25845
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 25847
    :cond_f
    return-void
.end method
