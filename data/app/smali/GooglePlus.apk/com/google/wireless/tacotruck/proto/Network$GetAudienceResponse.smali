.class public final Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetAudienceResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;

.field private static final serialVersionUID:J


# instance fields
.field private audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

.field private bitField0_:I

.field private description_:Ljava/lang/Object;

.field private hiddenAudienceCountText_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 20305
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;

    .line 20306
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->initFields()V

    .line 20307
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 19835
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 19928
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->memoizedIsInitialized:B

    .line 19951
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->memoizedSerializedSize:I

    .line 19836
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19830
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 19837
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 19928
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->memoizedIsInitialized:B

    .line 19951
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->memoizedSerializedSize:I

    .line 19837
    return-void
.end method

.method static synthetic access$27102(Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;Lcom/google/wireless/tacotruck/proto/Data$Audience;)Lcom/google/wireless/tacotruck/proto/Data$Audience;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19830
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    return-object p1
.end method

.method static synthetic access$27202(Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19830
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->description_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$27302(Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19830
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->hiddenAudienceCountText_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$27402(Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19830
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;
    .registers 1

    .prologue
    .line 19841
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;

    return-object v0
.end method

.method private getDescriptionBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 19880
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->description_:Ljava/lang/Object;

    .line 19881
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 19882
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 19884
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->description_:Ljava/lang/Object;

    .line 19887
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

.method private getHiddenAudienceCountTextBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 19912
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->hiddenAudienceCountText_:Ljava/lang/Object;

    .line 19913
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 19914
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 19916
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->hiddenAudienceCountText_:Ljava/lang/Object;

    .line 19919
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
    .line 19924
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 19925
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->description_:Ljava/lang/Object;

    .line 19926
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->hiddenAudienceCountText_:Ljava/lang/Object;

    .line 19927
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;
    .registers 1

    .prologue
    .line 20047
    #calls: Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->access$26900()Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;)Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 20050
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;)Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 19983
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;

    #calls: Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->buildParsed()Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->access$26800(Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAudience()Lcom/google/wireless/tacotruck/proto/Data$Audience;
    .registers 2

    .prologue
    .line 19856
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 19830
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;
    .registers 2

    .prologue
    .line 19845
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 5

    .prologue
    .line 19866
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->description_:Ljava/lang/Object;

    .line 19867
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 19868
    check-cast v1, Ljava/lang/String;

    .line 19876
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 19870
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 19872
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 19873
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 19874
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->description_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 19876
    goto :goto_8
.end method

.method public getHiddenAudienceCountText()Ljava/lang/String;
    .registers 5

    .prologue
    .line 19898
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->hiddenAudienceCountText_:Ljava/lang/Object;

    .line 19899
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 19900
    check-cast v1, Ljava/lang/String;

    .line 19908
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 19902
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 19904
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 19905
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 19906
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->hiddenAudienceCountText_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 19908
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 19953
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->memoizedSerializedSize:I

    .line 19954
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 19970
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 19956
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 19957
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_17

    .line 19958
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 19961
    :cond_17
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_26

    .line 19962
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->getDescriptionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 19965
    :cond_26
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_37

    .line 19966
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->getHiddenAudienceCountTextBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 19969
    :cond_37
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->memoizedSerializedSize:I

    move v1, v0

    .line 19970
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public hasAudience()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 19853
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasDescription()Z
    .registers 3

    .prologue
    .line 19863
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->bitField0_:I

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

.method public hasHiddenAudienceCountText()Z
    .registers 3

    .prologue
    .line 19895
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

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

    .line 19930
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->memoizedIsInitialized:B

    .line 19931
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 19934
    :goto_8
    return v1

    .line 19931
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 19933
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 19830
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;
    .registers 2

    .prologue
    .line 20048
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 19830
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->toBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;
    .registers 2

    .prologue
    .line 20052
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->newBuilder(Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;)Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;

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
    .line 19977
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

    .line 19939
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->getSerializedSize()I

    .line 19940
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_10

    .line 19941
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 19943
    :cond_10
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1d

    .line 19944
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->getDescriptionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 19946
    :cond_1d
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2c

    .line 19947
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->getHiddenAudienceCountTextBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 19949
    :cond_2c
    return-void
.end method
