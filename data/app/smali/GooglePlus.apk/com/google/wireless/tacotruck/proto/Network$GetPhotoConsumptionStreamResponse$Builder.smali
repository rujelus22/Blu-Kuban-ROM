.class public final Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse;",
        "Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

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
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 30789
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 30898
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse$Builder;->photo_:Ljava/util/List;

    .line 30790
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse$Builder;->maybeForceBuilderInitialization()V

    .line 30791
    return-void
.end method

.method static synthetic access$42400(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 30784
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse$Builder;->buildParsed()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$42500()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse$Builder;
    .registers 1

    .prologue
    .line 30784
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 30824
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse;

    move-result-object v0

    .line 30825
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 30826
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 30829
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse$Builder;
    .registers 1

    .prologue
    .line 30796
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse$Builder;-><init>()V

    return-object v0
.end method

.method private ensurePhotoIsMutable()V
    .registers 3

    .prologue
    .line 30901
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    .line 30902
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse$Builder;->photo_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse$Builder;->photo_:Ljava/util/List;

    .line 30903
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse$Builder;->bitField0_:I

    .line 30905
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 30794
    return-void
.end method


# virtual methods
.method public addAllPhoto(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;",
            ">;)",
            "Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse$Builder;"
        }
    .end annotation

    .prologue
    .line 30968
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse$Builder;->ensurePhotoIsMutable()V

    .line 30969
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse$Builder;->photo_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 30971
    return-object p0
.end method

.method public addPhoto(ILcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 30961
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse$Builder;->ensurePhotoIsMutable()V

    .line 30962
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse$Builder;->photo_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 30964
    return-object p0
.end method

.method public addPhoto(ILcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 30944
    if-nez p2, :cond_8

    .line 30945
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 30947
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse$Builder;->ensurePhotoIsMutable()V

    .line 30948
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse$Builder;->photo_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 30950
    return-object p0
.end method

.method public addPhoto(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 30954
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse$Builder;->ensurePhotoIsMutable()V

    .line 30955
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse$Builder;->photo_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30957
    return-object p0
.end method

.method public addPhoto(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 30934
    if-nez p1, :cond_8

    .line 30935
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 30937
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse$Builder;->ensurePhotoIsMutable()V

    .line 30938
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse$Builder;->photo_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30940
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 30784
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse;
    .registers 3

    .prologue
    .line 30815
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse;

    move-result-object v0

    .line 30816
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 30817
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 30819
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 30784
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse;
    .registers 5

    .prologue
    .line 30833
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 30834
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse$Builder;->bitField0_:I

    .line 30835
    .local v0, from_bitField0_:I
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1d

    .line 30836
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse$Builder;->photo_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse$Builder;->photo_:Ljava/util/List;

    .line 30837
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse$Builder;->bitField0_:I

    .line 30839
    :cond_1d
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse$Builder;->photo_:Ljava/util/List;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse;->photo_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse;->access$42702(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse;Ljava/util/List;)Ljava/util/List;

    .line 30840
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 30784
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 30784
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse$Builder;
    .registers 2

    .prologue
    .line 30800
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 30801
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse$Builder;->photo_:Ljava/util/List;

    .line 30802
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse$Builder;->bitField0_:I

    .line 30803
    return-object p0
.end method

.method public clearPhoto()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse$Builder;
    .registers 2

    .prologue
    .line 30974
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse$Builder;->photo_:Ljava/util/List;

    .line 30975
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse$Builder;->bitField0_:I

    .line 30977
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 30784
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 30784
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse$Builder;
    .registers 3

    .prologue
    .line 30807
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 30784
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 30784
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 30784
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse;
    .registers 2

    .prologue
    .line 30811
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse;

    move-result-object v0

    return-object v0
.end method

.method public getPhoto(I)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
    .registers 3
    .parameter "index"

    .prologue
    .line 30914
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse$Builder;->photo_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    return-object v0
.end method

.method public getPhotoCount()I
    .registers 2

    .prologue
    .line 30911
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse$Builder;->photo_:Ljava/util/List;

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
    .line 30908
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse$Builder;->photo_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .prologue
    .line 30859
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse$Builder;->getPhotoCount()I

    move-result v1

    if-ge v0, v1, :cond_16

    .line 30860
    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse$Builder;->getPhoto(I)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 30862
    const/4 v1, 0x0

    .line 30865
    :goto_12
    return v1

    .line 30859
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 30865
    :cond_16
    const/4 v1, 0x1

    goto :goto_12
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30784
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 30784
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30784
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30873
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 30874
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_1e

    .line 30879
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 30881
    :sswitch_d
    return-object p0

    .line 30886
    :sswitch_e
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    move-result-object v0

    .line 30887
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 30888
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse$Builder;->addPhoto(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse$Builder;

    goto :goto_0

    .line 30874
    nop

    :sswitch_data_1e
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 30844
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 30855
    :cond_6
    :goto_6
    return-object p0

    .line 30845
    :cond_7
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse;->photo_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse;->access$42700(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 30846
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse$Builder;->photo_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 30847
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse;->photo_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse;->access$42700(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse$Builder;->photo_:Ljava/util/List;

    .line 30848
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse$Builder;->bitField0_:I

    goto :goto_6

    .line 30850
    :cond_26
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse$Builder;->ensurePhotoIsMutable()V

    .line 30851
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse$Builder;->photo_:Ljava/util/List;

    #getter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse;->photo_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse;->access$42700(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_6
.end method

.method public setPhoto(ILcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 30928
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse$Builder;->ensurePhotoIsMutable()V

    .line 30929
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse$Builder;->photo_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 30931
    return-object p0
.end method

.method public setPhoto(ILcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 30918
    if-nez p2, :cond_8

    .line 30919
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 30921
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse$Builder;->ensurePhotoIsMutable()V

    .line 30922
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse$Builder;->photo_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 30924
    return-object p0
.end method
