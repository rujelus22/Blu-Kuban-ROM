.class public final Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$SearchResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SearchResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;

.field private static final serialVersionUID:J


# instance fields
.field private activityResults_:Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;

.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private peopleResults_:Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 48630
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;

    .line 48631
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;->initFields()V

    .line 48632
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 48249
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 48287
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;->memoizedIsInitialized:B

    .line 48313
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;->memoizedSerializedSize:I

    .line 48250
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48244
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 48251
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 48287
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;->memoizedIsInitialized:B

    .line 48313
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;->memoizedSerializedSize:I

    .line 48251
    return-void
.end method

.method static synthetic access$68302(Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;)Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48244
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;->peopleResults_:Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;

    return-object p1
.end method

.method static synthetic access$68402(Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;)Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48244
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;->activityResults_:Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;

    return-object p1
.end method

.method static synthetic access$68502(Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48244
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;
    .registers 1

    .prologue
    .line 48255
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 48284
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;->peopleResults_:Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;

    .line 48285
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;->activityResults_:Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;

    .line 48286
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;
    .registers 1

    .prologue
    .line 48405
    #calls: Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->access$68100()Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 48341
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;

    #calls: Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->buildParsed()Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->access$68000(Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;)Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getActivityResults()Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;
    .registers 2

    .prologue
    .line 48280
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;->activityResults_:Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 48244
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;
    .registers 2

    .prologue
    .line 48259
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;

    return-object v0
.end method

.method public getPeopleResults()Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;
    .registers 2

    .prologue
    .line 48270
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;->peopleResults_:Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 48315
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;->memoizedSerializedSize:I

    .line 48316
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 48328
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 48318
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 48319
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_17

    .line 48320
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;->peopleResults_:Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 48323
    :cond_17
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_24

    .line 48324
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;->activityResults_:Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 48327
    :cond_24
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;->memoizedSerializedSize:I

    move v1, v0

    .line 48328
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public hasActivityResults()Z
    .registers 3

    .prologue
    .line 48277
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;->bitField0_:I

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

.method public hasPeopleResults()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 48267
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isInitialized()Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 48289
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;->memoizedIsInitialized:B

    .line 48290
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_c

    if-ne v0, v1, :cond_a

    .line 48299
    :goto_9
    return v1

    :cond_a
    move v1, v2

    .line 48290
    goto :goto_9

    .line 48292
    :cond_c
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;->hasActivityResults()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 48293
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;->getActivityResults()Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_20

    .line 48294
    iput-byte v2, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;->memoizedIsInitialized:B

    move v1, v2

    .line 48295
    goto :goto_9

    .line 48298
    :cond_20
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method protected writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 48335
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

    .line 48304
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;->getSerializedSize()I

    .line 48305
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_10

    .line 48306
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;->peopleResults_:Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 48308
    :cond_10
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1b

    .line 48309
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;->activityResults_:Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 48311
    :cond_1b
    return-void
.end method
