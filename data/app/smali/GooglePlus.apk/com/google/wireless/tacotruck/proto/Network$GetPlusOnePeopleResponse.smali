.class public final Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetPlusOnePeopleResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private person_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$Person;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 26785
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;

    .line 26786
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;->initFields()V

    .line 26787
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 26436
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 26473
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;->memoizedIsInitialized:B

    .line 26490
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;->memoizedSerializedSize:I

    .line 26437
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26431
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 26438
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 26473
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;->memoizedIsInitialized:B

    .line 26490
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;->memoizedSerializedSize:I

    .line 26438
    return-void
.end method

.method static synthetic access$36900(Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 26431
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;->person_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$36902(Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26431
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;->person_:Ljava/util/List;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;
    .registers 1

    .prologue
    .line 26442
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 26471
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;->person_:Ljava/util/List;

    .line 26472
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;
    .registers 1

    .prologue
    .line 26578
    #calls: Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->access$36700()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;)Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 26581
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;)Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 26514
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;

    #calls: Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->buildParsed()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->access$36600(Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 26431
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;
    .registers 2

    .prologue
    .line 26446
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;

    return-object v0
.end method

.method public getPerson(I)Lcom/google/wireless/tacotruck/proto/Data$Person;
    .registers 3
    .parameter "index"

    .prologue
    .line 26463
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;->person_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$Person;

    return-object v0
.end method

.method public getPersonCount()I
    .registers 2

    .prologue
    .line 26460
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;->person_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPersonList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$Person;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26453
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;->person_:Ljava/util/List;

    return-object v0
.end method

.method public getPersonOrBuilder(I)Lcom/google/wireless/tacotruck/proto/Data$PersonOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 26467
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;->person_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$PersonOrBuilder;

    return-object v0
.end method

.method public getPersonOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/wireless/tacotruck/proto/Data$PersonOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26457
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;->person_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    .line 26492
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;->memoizedSerializedSize:I

    .line 26493
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_7

    move v2, v1

    .line 26501
    .end local v1           #size:I
    .local v2, size:I
    :goto_6
    return v2

    .line 26495
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_7
    const/4 v1, 0x0

    .line 26496
    const/4 v0, 0x0

    .local v0, i:I
    :goto_9
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;->person_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_22

    .line 26497
    const/4 v4, 0x1

    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;->person_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 26496
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 26500
    :cond_22
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;->memoizedSerializedSize:I

    move v2, v1

    .line 26501
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_6
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 26475
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;->memoizedIsInitialized:B

    .line 26476
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 26479
    :goto_8
    return v1

    .line 26476
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 26478
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 26431
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;
    .registers 2

    .prologue
    .line 26579
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 26431
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;->toBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;
    .registers 2

    .prologue
    .line 26583
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;->newBuilder(Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;)Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;

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
    .line 26508
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
    .line 26484
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;->getSerializedSize()I

    .line 26485
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;->person_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 26486
    const/4 v2, 0x1

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;->person_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 26485
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 26488
    :cond_1b
    return-void
.end method
