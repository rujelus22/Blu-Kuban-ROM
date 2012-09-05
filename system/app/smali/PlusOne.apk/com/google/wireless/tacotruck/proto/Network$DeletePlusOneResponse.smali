.class public final Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DeletePlusOneResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse;

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
    .line 24680
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse;

    .line 24681
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse;->initFields()V

    .line 24682
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 24390
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 24417
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse;->memoizedIsInitialized:B

    .line 24434
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse;->memoizedSerializedSize:I

    .line 24391
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24385
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 24392
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 24417
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse;->memoizedIsInitialized:B

    .line 24434
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse;->memoizedSerializedSize:I

    .line 24392
    return-void
.end method

.method static synthetic access$33902(Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse;Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24385
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    return-object p1
.end method

.method static synthetic access$34002(Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24385
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse;
    .registers 1

    .prologue
    .line 24396
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 24415
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    .line 24416
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse$Builder;
    .registers 1

    .prologue
    .line 24522
    #calls: Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse$Builder;->access$33700()Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 24458
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse$Builder;

    #calls: Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse$Builder;->buildParsed()Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse;
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse$Builder;->access$33600(Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse$Builder;)Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 24385
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse;
    .registers 2

    .prologue
    .line 24400
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse;

    return-object v0
.end method

.method public getPlusoneData()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    .registers 2

    .prologue
    .line 24411
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 24436
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse;->memoizedSerializedSize:I

    .line 24437
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_8

    move v1, v0

    .line 24445
    .end local v0           #size:I
    .local v1, size:I
    :goto_7
    return v1

    .line 24439
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_8
    const/4 v0, 0x0

    .line 24440
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_16

    .line 24441
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 24444
    :cond_16
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse;->memoizedSerializedSize:I

    move v1, v0

    .line 24445
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_7
.end method

.method public hasPlusoneData()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 24408
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse;->bitField0_:I

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

    .line 24419
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse;->memoizedIsInitialized:B

    .line 24420
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 24423
    :goto_8
    return v1

    .line 24420
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 24422
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse;->memoizedIsInitialized:B

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
    .line 24452
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

    .line 24428
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse;->getSerializedSize()I

    .line 24429
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_f

    .line 24430
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 24432
    :cond_f
    return-void
.end method
