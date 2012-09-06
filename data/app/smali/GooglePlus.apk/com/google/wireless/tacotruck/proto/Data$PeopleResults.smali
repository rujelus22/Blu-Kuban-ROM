.class public final Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$PeopleResultsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PeopleResults"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private peopleResult_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;",
            ">;"
        }
    .end annotation
.end field

.field private shownPeopleBlob_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 41979
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;

    .line 41980
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;->initFields()V

    .line 41981
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 41537
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 41608
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;->memoizedIsInitialized:B

    .line 41628
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;->memoizedSerializedSize:I

    .line 41538
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41532
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;-><init>(Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 41539
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 41608
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;->memoizedIsInitialized:B

    .line 41628
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;->memoizedSerializedSize:I

    .line 41539
    return-void
.end method

.method static synthetic access$56300(Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41532
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;->peopleResult_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$56302(Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41532
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;->peopleResult_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$56402(Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41532
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;->shownPeopleBlob_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$56502(Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41532
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;
    .registers 1

    .prologue
    .line 41543
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;

    return-object v0
.end method

.method private getShownPeopleBlobBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 41593
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;->shownPeopleBlob_:Ljava/lang/Object;

    .line 41594
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 41595
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 41597
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;->shownPeopleBlob_:Ljava/lang/Object;

    .line 41600
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
    .line 41605
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;->peopleResult_:Ljava/util/List;

    .line 41606
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;->shownPeopleBlob_:Ljava/lang/Object;

    .line 41607
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;
    .registers 1

    .prologue
    .line 41720
    #calls: Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->access$56100()Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;)Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 41723
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;)Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 41532
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;
    .registers 2

    .prologue
    .line 41547
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;

    return-object v0
.end method

.method public getPeopleResult(I)Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;
    .registers 3
    .parameter "index"

    .prologue
    .line 41565
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;->peopleResult_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;

    return-object v0
.end method

.method public getPeopleResultCount()I
    .registers 2

    .prologue
    .line 41562
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;->peopleResult_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPeopleResultList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41555
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;->peopleResult_:Ljava/util/List;

    return-object v0
.end method

.method public getPeopleResultOrBuilder(I)Lcom/google/wireless/tacotruck/proto/Data$PeopleResultOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 41569
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;->peopleResult_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResultOrBuilder;

    return-object v0
.end method

.method public getPeopleResultOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/wireless/tacotruck/proto/Data$PeopleResultOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41559
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;->peopleResult_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 41630
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;->memoizedSerializedSize:I

    .line 41631
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_8

    move v2, v1

    .line 41643
    .end local v1           #size:I
    .local v2, size:I
    :goto_7
    return v2

    .line 41633
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_8
    const/4 v1, 0x0

    .line 41634
    const/4 v0, 0x0

    .local v0, i:I
    :goto_a
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;->peopleResult_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_22

    .line 41635
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;->peopleResult_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 41634
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 41638
    :cond_22
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_32

    .line 41639
    const/4 v3, 0x2

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;->getShownPeopleBlobBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 41642
    :cond_32
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;->memoizedSerializedSize:I

    move v2, v1

    .line 41643
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_7
.end method

.method public getShownPeopleBlob()Ljava/lang/String;
    .registers 5

    .prologue
    .line 41579
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;->shownPeopleBlob_:Ljava/lang/Object;

    .line 41580
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 41581
    check-cast v1, Ljava/lang/String;

    .line 41589
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 41583
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 41585
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 41586
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 41587
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;->shownPeopleBlob_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 41589
    goto :goto_8
.end method

.method public hasShownPeopleBlob()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 41576
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;->bitField0_:I

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

    .line 41610
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;->memoizedIsInitialized:B

    .line 41611
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 41614
    :goto_8
    return v1

    .line 41611
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 41613
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 41532
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;
    .registers 2

    .prologue
    .line 41721
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 41532
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;->toBuilder()Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;
    .registers 2

    .prologue
    .line 41725
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;)Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;

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
    .line 41650
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

    .line 41619
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;->getSerializedSize()I

    .line 41620
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;->peopleResult_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 41621
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;->peopleResult_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 41620
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 41623
    :cond_1b
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_29

    .line 41624
    const/4 v1, 0x2

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;->getShownPeopleBlobBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 41626
    :cond_29
    return-void
.end method
