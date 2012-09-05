.class public final Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetActivityResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;

.field private static final serialVersionUID:J


# instance fields
.field private activity_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private missingActivity_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 5526
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;

    .line 5527
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->initFields()V

    .line 5528
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 5024
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 5083
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->memoizedIsInitialized:B

    .line 5109
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->memoizedSerializedSize:I

    .line 5025
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5019
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 5026
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 5083
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->memoizedIsInitialized:B

    .line 5109
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->memoizedSerializedSize:I

    .line 5026
    return-void
.end method

.method static synthetic access$6700(Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 5019
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->activity_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$6702(Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5019
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->activity_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$6800(Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 5019
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->missingActivity_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$6802(Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5019
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->missingActivity_:Ljava/util/List;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;
    .registers 1

    .prologue
    .line 5030
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 5080
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->activity_:Ljava/util/List;

    .line 5081
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->missingActivity_:Ljava/util/List;

    .line 5082
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;
    .registers 1

    .prologue
    .line 5201
    #calls: Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->access$6500()Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5137
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;

    #calls: Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->buildParsed()Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->access$6400(Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getActivity(I)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;
    .registers 3
    .parameter "index"

    .prologue
    .line 5051
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->activity_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;

    return-object v0
.end method

.method public getActivityCount()I
    .registers 2

    .prologue
    .line 5048
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->activity_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getActivityList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5041
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->activity_:Ljava/util/List;

    return-object v0
.end method

.method public getActivityOrBuilder(I)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivityOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 5055
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->activity_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivityOrBuilder;

    return-object v0
.end method

.method public getActivityOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivityOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5045
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->activity_:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 5019
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;
    .registers 2

    .prologue
    .line 5034
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;

    return-object v0
.end method

.method public getMissingActivity(I)Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;
    .registers 3
    .parameter "index"

    .prologue
    .line 5072
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->missingActivity_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;

    return-object v0
.end method

.method public getMissingActivityCount()I
    .registers 2

    .prologue
    .line 5069
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->missingActivity_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMissingActivityList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5062
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->missingActivity_:Ljava/util/List;

    return-object v0
.end method

.method public getMissingActivityOrBuilder(I)Lcom/google/wireless/tacotruck/proto/Network$MissingActivityOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 5076
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->missingActivity_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Network$MissingActivityOrBuilder;

    return-object v0
.end method

.method public getMissingActivityOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/wireless/tacotruck/proto/Network$MissingActivityOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5066
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->missingActivity_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    .line 5111
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->memoizedSerializedSize:I

    .line 5112
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_7

    move v2, v1

    .line 5124
    .end local v1           #size:I
    .local v2, size:I
    :goto_6
    return v2

    .line 5114
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_7
    const/4 v1, 0x0

    .line 5115
    const/4 v0, 0x0

    .local v0, i:I
    :goto_9
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->activity_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_22

    .line 5116
    const/4 v4, 0x1

    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->activity_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 5115
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 5119
    :cond_22
    const/4 v0, 0x0

    :goto_23
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->missingActivity_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3c

    .line 5120
    const/4 v4, 0x2

    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->missingActivity_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 5119
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 5123
    :cond_3c
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->memoizedSerializedSize:I

    move v2, v1

    .line 5124
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_6
.end method

.method public final isInitialized()Z
    .registers 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 5085
    iget-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->memoizedIsInitialized:B

    .line 5086
    .local v1, isInitialized:B
    const/4 v4, -0x1

    if-eq v1, v4, :cond_c

    if-ne v1, v2, :cond_a

    .line 5095
    :goto_9
    return v2

    :cond_a
    move v2, v3

    .line 5086
    goto :goto_9

    .line 5088
    :cond_c
    const/4 v0, 0x0

    .local v0, i:I
    :goto_d
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->getActivityCount()I

    move-result v4

    if-ge v0, v4, :cond_24

    .line 5089
    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->getActivity(I)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_21

    .line 5090
    iput-byte v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->memoizedIsInitialized:B

    move v2, v3

    .line 5091
    goto :goto_9

    .line 5088
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 5094
    :cond_24
    iput-byte v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->memoizedIsInitialized:B

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
    .line 5131
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
    .line 5100
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->getSerializedSize()I

    .line 5101
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->activity_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 5102
    const/4 v2, 0x1

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->activity_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 5101
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 5104
    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->missingActivity_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_33

    .line 5105
    const/4 v2, 0x2

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->missingActivity_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 5104
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 5107
    :cond_33
    return-void
.end method
