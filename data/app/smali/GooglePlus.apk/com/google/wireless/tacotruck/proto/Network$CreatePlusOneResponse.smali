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
    .line 24501
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse;

    .line 24502
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse;->initFields()V

    .line 24503
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 24211
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 24238
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse;->memoizedIsInitialized:B

    .line 24255
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse;->memoizedSerializedSize:I

    .line 24212
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24206
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 24213
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 24238
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse;->memoizedIsInitialized:B

    .line 24255
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse;->memoizedSerializedSize:I

    .line 24213
    return-void
.end method

.method static synthetic access$33402(Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse;Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24206
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    return-object p1
.end method

.method static synthetic access$33502(Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24206
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse;
    .registers 1

    .prologue
    .line 24217
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 24236
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    .line 24237
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse$Builder;
    .registers 1

    .prologue
    .line 24343
    #calls: Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse$Builder;->access$33200()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse;)Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 24346
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse;)Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse$Builder;

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
    .line 24279
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse$Builder;

    #calls: Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse$Builder;->buildParsed()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse;
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse$Builder;->access$33100(Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse$Builder;)Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 24206
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse;
    .registers 2

    .prologue
    .line 24221
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse;

    return-object v0
.end method

.method public getPlusoneData()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    .registers 2

    .prologue
    .line 24232
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 24257
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse;->memoizedSerializedSize:I

    .line 24258
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_8

    move v1, v0

    .line 24266
    .end local v0           #size:I
    .local v1, size:I
    :goto_7
    return v1

    .line 24260
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_8
    const/4 v0, 0x0

    .line 24261
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_16

    .line 24262
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 24265
    :cond_16
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse;->memoizedSerializedSize:I

    move v1, v0

    .line 24266
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_7
.end method

.method public hasPlusoneData()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 24229
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

    .line 24240
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse;->memoizedIsInitialized:B

    .line 24241
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 24244
    :goto_8
    return v1

    .line 24241
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 24243
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 24206
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse$Builder;
    .registers 2

    .prologue
    .line 24344
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 24206
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse;->toBuilder()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse$Builder;
    .registers 2

    .prologue
    .line 24348
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse;->newBuilder(Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse;)Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse$Builder;

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
    .line 24273
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

    .line 24249
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse;->getSerializedSize()I

    .line 24250
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_f

    .line 24251
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 24253
    :cond_f
    return-void
.end method
