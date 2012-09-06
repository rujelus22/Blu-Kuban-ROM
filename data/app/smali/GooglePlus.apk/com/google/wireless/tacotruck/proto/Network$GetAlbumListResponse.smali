.class public final Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetAlbumListResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;

.field private static final serialVersionUID:J


# instance fields
.field private album_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;",
            ">;"
        }
    .end annotation
.end field

.field private bitField0_:I

.field private continuationToken_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 15398
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;

    .line 15399
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;->initFields()V

    .line 15400
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 14981
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 15030
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;->memoizedIsInitialized:B

    .line 15056
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;->memoizedSerializedSize:I

    .line 14982
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14976
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 14983
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 15030
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;->memoizedIsInitialized:B

    .line 15056
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;->memoizedSerializedSize:I

    .line 14983
    return-void
.end method

.method static synthetic access$19800(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 14976
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;->album_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$19802(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14976
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;->album_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$19902(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14976
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;->continuationToken_:I

    return p1
.end method

.method static synthetic access$20002(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14976
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;
    .registers 1

    .prologue
    .line 14987
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 15027
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;->album_:Ljava/util/List;

    .line 15028
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;->continuationToken_:I

    .line 15029
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;
    .registers 1

    .prologue
    .line 15148
    #calls: Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->access$19600()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 15151
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 15084
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;

    #calls: Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->buildParsed()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->access$19500(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAlbum(I)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;
    .registers 3
    .parameter "index"

    .prologue
    .line 15009
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;->album_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    return-object v0
.end method

.method public getAlbumCount()I
    .registers 2

    .prologue
    .line 15006
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;->album_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getAlbumList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;",
            ">;"
        }
    .end annotation

    .prologue
    .line 14999
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;->album_:Ljava/util/List;

    return-object v0
.end method

.method public getAlbumOrBuilder(I)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbumOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 15013
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;->album_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbumOrBuilder;

    return-object v0
.end method

.method public getAlbumOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbumOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 15003
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;->album_:Ljava/util/List;

    return-object v0
.end method

.method public getContinuationToken()I
    .registers 2

    .prologue
    .line 15023
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;->continuationToken_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 14976
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;
    .registers 2

    .prologue
    .line 14991
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 15058
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;->memoizedSerializedSize:I

    .line 15059
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_8

    move v2, v1

    .line 15071
    .end local v1           #size:I
    .local v2, size:I
    :goto_7
    return v2

    .line 15061
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_8
    const/4 v1, 0x0

    .line 15062
    const/4 v0, 0x0

    .local v0, i:I
    :goto_a
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;->album_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_22

    .line 15063
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;->album_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 15062
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 15066
    :cond_22
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_30

    .line 15067
    const/4 v3, 0x2

    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;->continuationToken_:I

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 15070
    :cond_30
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;->memoizedSerializedSize:I

    move v2, v1

    .line 15071
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_7
.end method

.method public hasContinuationToken()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 15020
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isInitialized()Z
    .registers 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 15032
    iget-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;->memoizedIsInitialized:B

    .line 15033
    .local v1, isInitialized:B
    const/4 v4, -0x1

    if-eq v1, v4, :cond_c

    if-ne v1, v2, :cond_a

    .line 15042
    :goto_9
    return v2

    :cond_a
    move v2, v3

    .line 15033
    goto :goto_9

    .line 15035
    :cond_c
    const/4 v0, 0x0

    .local v0, i:I
    :goto_d
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;->getAlbumCount()I

    move-result v4

    if-ge v0, v4, :cond_24

    .line 15036
    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;->getAlbum(I)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_21

    .line 15037
    iput-byte v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;->memoizedIsInitialized:B

    move v2, v3

    .line 15038
    goto :goto_9

    .line 15035
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 15041
    :cond_24
    iput-byte v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 14976
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;
    .registers 2

    .prologue
    .line 15149
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 14976
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;->toBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;
    .registers 2

    .prologue
    .line 15153
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;->newBuilder(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;

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
    .line 15078
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

    .line 15047
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;->getSerializedSize()I

    .line 15048
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;->album_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 15049
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;->album_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 15048
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 15051
    :cond_1b
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_27

    .line 15052
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;->continuationToken_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 15054
    :cond_27
    return-void
.end method
