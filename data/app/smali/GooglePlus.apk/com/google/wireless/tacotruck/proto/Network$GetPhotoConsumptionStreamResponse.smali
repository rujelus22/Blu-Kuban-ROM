.class public final Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetPhotoConsumptionStreamResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse;

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private photo_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 30990
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse;

    .line 30991
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse;->initFields()V

    .line 30992
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 30629
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 30666
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse;->memoizedIsInitialized:B

    .line 30689
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse;->memoizedSerializedSize:I

    .line 30630
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30624
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 30631
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 30666
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse;->memoizedIsInitialized:B

    .line 30689
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse;->memoizedSerializedSize:I

    .line 30631
    return-void
.end method

.method static synthetic access$42700(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 30624
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse;->photo_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$42702(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30624
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse;->photo_:Ljava/util/List;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse;
    .registers 1

    .prologue
    .line 30635
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 30664
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse;->photo_:Ljava/util/List;

    .line 30665
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse$Builder;
    .registers 1

    .prologue
    .line 30777
    #calls: Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse$Builder;->access$42500()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 30780
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 30713
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse$Builder;

    #calls: Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse$Builder;->buildParsed()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse;
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse$Builder;->access$42400(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 30624
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse;
    .registers 2

    .prologue
    .line 30639
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse;

    return-object v0
.end method

.method public getPhoto(I)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
    .registers 3
    .parameter "index"

    .prologue
    .line 30656
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse;->photo_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    return-object v0
.end method

.method public getPhotoCount()I
    .registers 2

    .prologue
    .line 30653
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse;->photo_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPhotoList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30646
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse;->photo_:Ljava/util/List;

    return-object v0
.end method

.method public getPhotoOrBuilder(I)Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 30660
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse;->photo_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoOrBuilder;

    return-object v0
.end method

.method public getPhotoOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30650
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse;->photo_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    .line 30691
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse;->memoizedSerializedSize:I

    .line 30692
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_7

    move v2, v1

    .line 30700
    .end local v1           #size:I
    .local v2, size:I
    :goto_6
    return v2

    .line 30694
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_7
    const/4 v1, 0x0

    .line 30695
    const/4 v0, 0x0

    .local v0, i:I
    :goto_9
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse;->photo_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_22

    .line 30696
    const/4 v4, 0x1

    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse;->photo_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 30695
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 30699
    :cond_22
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse;->memoizedSerializedSize:I

    move v2, v1

    .line 30700
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_6
.end method

.method public final isInitialized()Z
    .registers 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 30668
    iget-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse;->memoizedIsInitialized:B

    .line 30669
    .local v1, isInitialized:B
    const/4 v4, -0x1

    if-eq v1, v4, :cond_c

    if-ne v1, v2, :cond_a

    .line 30678
    :goto_9
    return v2

    :cond_a
    move v2, v3

    .line 30669
    goto :goto_9

    .line 30671
    :cond_c
    const/4 v0, 0x0

    .local v0, i:I
    :goto_d
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse;->getPhotoCount()I

    move-result v4

    if-ge v0, v4, :cond_24

    .line 30672
    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse;->getPhoto(I)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_21

    .line 30673
    iput-byte v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse;->memoizedIsInitialized:B

    move v2, v3

    .line 30674
    goto :goto_9

    .line 30671
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 30677
    :cond_24
    iput-byte v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 30624
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse$Builder;
    .registers 2

    .prologue
    .line 30778
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 30624
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse;->toBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse$Builder;
    .registers 2

    .prologue
    .line 30782
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse;->newBuilder(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse$Builder;

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
    .line 30707
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
    .line 30683
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse;->getSerializedSize()I

    .line 30684
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse;->photo_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 30685
    const/4 v2, 0x1

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse;->photo_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 30684
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 30687
    :cond_1b
    return-void
.end method
