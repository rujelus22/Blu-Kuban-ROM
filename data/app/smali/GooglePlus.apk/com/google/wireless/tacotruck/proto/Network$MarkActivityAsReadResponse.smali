.class public final Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MarkActivityAsReadResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse;

.field private static final serialVersionUID:J


# instance fields
.field private activityId_:Lcom/google/protobuf/LazyStringList;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 35148
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse;

    .line 35149
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse;->initFields()V

    .line 35150
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 34834
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 34864
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse;->memoizedIsInitialized:B

    .line 34881
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse;->memoizedSerializedSize:I

    .line 34835
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34829
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 34836
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 34864
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse;->memoizedIsInitialized:B

    .line 34881
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse;->memoizedSerializedSize:I

    .line 34836
    return-void
.end method

.method static synthetic access$48700(Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34829
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse;->activityId_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method static synthetic access$48702(Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34829
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse;->activityId_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse;
    .registers 1

    .prologue
    .line 34840
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 34862
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse;->activityId_:Lcom/google/protobuf/LazyStringList;

    .line 34863
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse$Builder;
    .registers 1

    .prologue
    .line 34974
    #calls: Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse$Builder;->access$48500()Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse;)Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 34977
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse;)Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 34910
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse$Builder;

    #calls: Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse$Builder;->buildParsed()Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse;
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse$Builder;->access$48400(Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse$Builder;)Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getActivityId(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 34858
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse;->activityId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getActivityIdCount()I
    .registers 2

    .prologue
    .line 34855
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse;->activityId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getActivityIdList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34852
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse;->activityId_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 34829
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse;
    .registers 2

    .prologue
    .line 34844
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    .line 34883
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse;->memoizedSerializedSize:I

    .line 34884
    .local v2, size:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_7

    move v3, v2

    .line 34897
    .end local v2           #size:I
    .local v3, size:I
    :goto_6
    return v3

    .line 34886
    .end local v3           #size:I
    .restart local v2       #size:I
    :cond_7
    const/4 v2, 0x0

    .line 34888
    const/4 v0, 0x0

    .line 34889
    .local v0, dataSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_a
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse;->activityId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v1, v4, :cond_20

    .line 34890
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse;->activityId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v0, v4

    .line 34889
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 34893
    :cond_20
    add-int/2addr v2, v0

    .line 34894
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse;->getActivityIdList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 34896
    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse;->memoizedSerializedSize:I

    move v3, v2

    .line 34897
    .end local v2           #size:I
    .restart local v3       #size:I
    goto :goto_6
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 34866
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse;->memoizedIsInitialized:B

    .line 34867
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 34870
    :goto_8
    return v1

    .line 34867
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 34869
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 34829
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse$Builder;
    .registers 2

    .prologue
    .line 34975
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 34829
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse;->toBuilder()Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse$Builder;
    .registers 2

    .prologue
    .line 34979
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse;->newBuilder(Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse;)Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse$Builder;

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
    .line 34904
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
    .line 34875
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse;->getSerializedSize()I

    .line 34876
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse;->activityId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_19

    .line 34877
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse;->activityId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2, v0}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 34876
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 34879
    :cond_19
    return-void
.end method
