.class public final Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetPhotosOfUserResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;

.field private static final serialVersionUID:J


# instance fields
.field private approvedPhoto_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private unapprovedPhoto_:Ljava/util/List;
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
    .line 36622
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;

    .line 36623
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->initFields()V

    .line 36624
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 36108
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 36167
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->memoizedIsInitialized:B

    .line 36199
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->memoizedSerializedSize:I

    .line 36109
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36103
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 36110
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 36167
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->memoizedIsInitialized:B

    .line 36199
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->memoizedSerializedSize:I

    .line 36110
    return-void
.end method

.method static synthetic access$50500(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36103
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->approvedPhoto_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$50502(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36103
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->approvedPhoto_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$50600(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36103
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->unapprovedPhoto_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$50602(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36103
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->unapprovedPhoto_:Ljava/util/List;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;
    .registers 1

    .prologue
    .line 36114
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 36164
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->approvedPhoto_:Ljava/util/List;

    .line 36165
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->unapprovedPhoto_:Ljava/util/List;

    .line 36166
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;
    .registers 1

    .prologue
    .line 36291
    #calls: Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->access$50300()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 36294
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 36227
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;

    #calls: Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->buildParsed()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->access$50200(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getApprovedPhoto(I)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
    .registers 3
    .parameter "index"

    .prologue
    .line 36135
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->approvedPhoto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    return-object v0
.end method

.method public getApprovedPhotoCount()I
    .registers 2

    .prologue
    .line 36132
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->approvedPhoto_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getApprovedPhotoList()Ljava/util/List;
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
    .line 36125
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->approvedPhoto_:Ljava/util/List;

    return-object v0
.end method

.method public getApprovedPhotoOrBuilder(I)Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 36139
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->approvedPhoto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoOrBuilder;

    return-object v0
.end method

.method public getApprovedPhotoOrBuilderList()Ljava/util/List;
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
    .line 36129
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->approvedPhoto_:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 36103
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;
    .registers 2

    .prologue
    .line 36118
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    .line 36201
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->memoizedSerializedSize:I

    .line 36202
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_7

    move v2, v1

    .line 36214
    .end local v1           #size:I
    .local v2, size:I
    :goto_6
    return v2

    .line 36204
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_7
    const/4 v1, 0x0

    .line 36205
    const/4 v0, 0x0

    .local v0, i:I
    :goto_9
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->approvedPhoto_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_22

    .line 36206
    const/4 v4, 0x1

    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->approvedPhoto_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 36205
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 36209
    :cond_22
    const/4 v0, 0x0

    :goto_23
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->unapprovedPhoto_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3c

    .line 36210
    const/4 v4, 0x2

    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->unapprovedPhoto_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 36209
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 36213
    :cond_3c
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->memoizedSerializedSize:I

    move v2, v1

    .line 36214
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_6
.end method

.method public getUnapprovedPhoto(I)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
    .registers 3
    .parameter "index"

    .prologue
    .line 36156
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->unapprovedPhoto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    return-object v0
.end method

.method public getUnapprovedPhotoCount()I
    .registers 2

    .prologue
    .line 36153
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->unapprovedPhoto_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getUnapprovedPhotoList()Ljava/util/List;
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
    .line 36146
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->unapprovedPhoto_:Ljava/util/List;

    return-object v0
.end method

.method public getUnapprovedPhotoOrBuilder(I)Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 36160
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->unapprovedPhoto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoOrBuilder;

    return-object v0
.end method

.method public getUnapprovedPhotoOrBuilderList()Ljava/util/List;
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
    .line 36150
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->unapprovedPhoto_:Ljava/util/List;

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 36169
    iget-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->memoizedIsInitialized:B

    .line 36170
    .local v1, isInitialized:B
    const/4 v4, -0x1

    if-eq v1, v4, :cond_c

    if-ne v1, v2, :cond_a

    .line 36185
    :goto_9
    return v2

    :cond_a
    move v2, v3

    .line 36170
    goto :goto_9

    .line 36172
    :cond_c
    const/4 v0, 0x0

    .local v0, i:I
    :goto_d
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->getApprovedPhotoCount()I

    move-result v4

    if-ge v0, v4, :cond_24

    .line 36173
    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->getApprovedPhoto(I)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_21

    .line 36174
    iput-byte v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->memoizedIsInitialized:B

    move v2, v3

    .line 36175
    goto :goto_9

    .line 36172
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 36178
    :cond_24
    const/4 v0, 0x0

    :goto_25
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->getUnapprovedPhotoCount()I

    move-result v4

    if-ge v0, v4, :cond_3c

    .line 36179
    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->getUnapprovedPhoto(I)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_39

    .line 36180
    iput-byte v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->memoizedIsInitialized:B

    move v2, v3

    .line 36181
    goto :goto_9

    .line 36178
    :cond_39
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    .line 36184
    :cond_3c
    iput-byte v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 36103
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;
    .registers 2

    .prologue
    .line 36292
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 36103
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->toBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;
    .registers 2

    .prologue
    .line 36296
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->newBuilder(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;

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
    .line 36221
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
    .line 36190
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->getSerializedSize()I

    .line 36191
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->approvedPhoto_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 36192
    const/4 v2, 0x1

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->approvedPhoto_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 36191
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 36194
    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->unapprovedPhoto_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_33

    .line 36195
    const/4 v2, 0x2

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->unapprovedPhoto_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 36194
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 36197
    :cond_33
    return-void
.end method
